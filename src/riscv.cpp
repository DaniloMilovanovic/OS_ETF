//
// Created by os on 5/8/24.
//

#include "../h/riscv.hpp"
#include "../lib/console.h"
#include "../h/memoryAllocator.hpp"
#include "../h/ccb.hpp"
#include "../h/userSemaphore.hpp"

void Riscv::popSppSpie()
{
    __asm__ volatile ("csrw sepc, ra");//stores the pc of the previous process to the sepc of the current process so it gets loaded into pc after sret
    __asm__ volatile ("sret");  //writes spp bit of the previous state into the current state, spie bit into sie and sepc into pc
    //it enables us to get into user mode by clearing the spp bit with Riscv::mc_sstatus(Riscv::SSTATUS_SPP); before calling
    //popSppSpie. Also it sets SIE to enable interruptions because we wrote in main ms_sstatus(Riscv::SSTATUS_SIE) which enables
    //interrupts, but after calling __asm__ volatile("ecall"); we went into system mode. SIE is now 0 so by calling sret we set
    //it again to 1 which enables interruptions.
}

class sysThread;
typedef sysThread* sysThread_t;

class sysSem;
typedef sysSem* sysSem_t;

void Riscv::handleSupervisorTrap() {
    uint64 scause = r_scause();

    uint64 volatile code;
    uint64 volatile param0;
    uint64 volatile param1;
    uint64 volatile param2;
    uint64 volatile param3;

    __asm__ volatile("ld %0, 80(s0)" : "=r" (code));
    __asm__ volatile("ld %0, 88(s0)" : "=r" (param0) );
    __asm__ volatile("ld %0, 96(s0)" : "=r" (param1) );
    __asm__ volatile("ld %0, 104(s0)" : "=r" (param2) );
    __asm__ volatile("ld %0, 112(s0)" : "=r" (param3) );



    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL){

        uint64 volatile sepc = r_sepc()	+ 4;
        uint64 volatile sstatus = r_sstatus();
        void* ret_addr;
        uint64 ret_val;
        userSemaphore* currSem;

        switch(code){
            case 0x01:{
                //mem_alloc
                ret_addr = memoryAllocator::mem_alloc((size_t)param0);
                __asm__ volatile("sd %0, 80(s0)" : : "r" ((uint64)ret_addr));
                break;
            }
            case 0x02:{
                //mem_free
                ret_val = memoryAllocator::mem_free((void*)param0);
                __asm__ volatile("sd %0, 80(s0)" : : "r" ((uint64)ret_val));
                break;
            }
            case 0x11:{
                //thread_create
                /*param0 = handle
                 * param1 = start_routine
                 * param2 = arg
                 * param3 = stack_space*/
                sysThread_t* handle = (sysThread_t*)param0;
                void (*start_routine)(void*) = (void (*)(void*))param1;
                void* arg = (void*)param2;
                uint64* stack_space = (uint64*)param3;
                CCB* thr = CCB::createCoroutine(start_routine, arg, stack_space);


                if(thr != nullptr){
                    *handle = (sysThread_t)thr;
                    ret_val = 0;
                }
                else{
                    *handle = nullptr;
                    ret_val = -1;
                }

                __asm__ volatile("sd %0, 80(s0)" : : "r" ((uint64)ret_val));
                break;
            }
            case 0x12:{
                //thread_exit
                if(CCB::running->isFinished()){
                    ret_val = -1;
                }
                else {
                    ret_val = 0;
                    CCB::running->setFinished(true);
                }
                CCB::dispatch(); //this will change the sp, so when we return from the system mode we will load register values of the new process
                __asm__ volatile("sd %0, 80(s0)" : : "r" ((uint64)ret_val));
                break;
            }
            case 0x13:{
                //thread_dispatch
                CCB::dispatch();
                break;
            }
            case 0x21:{
                //sem_open(handle, init_val)
                /*param0 = handle
                 * param1 = init_val*/

                sysSem_t* handle = (sysSem_t*)param0;

                if((param0 <= 0)) {
                    ret_val = -1;
                    *handle = nullptr;
                }
                else {
                    currSem = userSemaphore::createSemaphore(param1);
                    if(currSem != nullptr){
                        ret_val = 0;
                        *handle = (sysSem_t)currSem;
                    }
                    else{
                        ret_val = -2;
                        *handle = nullptr;
                    }
                }

                __asm__ volatile("sd %0, 80(s0)" : : "r" ((uint64)ret_val));
                break;
            }
            case 0x22:{
                //sem_close()
                //param0 = sem_id
                currSem = (userSemaphore*) param0;
                delete currSem;
                ret_val = 0;

                __asm__ volatile("sd %0, 80(s0)" : : "r" ((uint64)ret_val));
                break;
            }
            case 0x23:{
                //sem_wait()
                //param0 = sem_id
                currSem = (userSemaphore*)param0;
                ret_val = currSem->wait();

                __asm__ volatile("sd %0, 80(s0)" : : "r" ((uint64)ret_val));
                break;
            }
            case 0x24:{
                //sem_signal()
                //param0 = sem_id
                currSem = (userSemaphore*)param0;
                ret_val = currSem->signal();

                __asm__ volatile("sd %0, 80(s0)" : : "r" ((uint64)ret_val));
                break;
            }

            case 0x26:{
                //sem_trywait()
                //param0 = sem_id
                currSem = (userSemaphore*)param0;
                ret_val = currSem->tryWait();
                __asm__ volatile("sd %0, 80(s0)" : : "r" ((uint64)ret_val));
                break;
            }
            case 0x41:{
                //getc()
                ret_val = (uint64)__getc();
                __asm__ volatile("sd %0, 80(s0)" : : "r" (ret_val));
                break;
            }
            case 0x42:{
                //putc()
                //param0 = ch

                __putc((char)param0);
                break;
            }
        }

        w_sstatus(sstatus);
        w_sepc(sepc);

    }
    else if(scause == 0x8000000000000001UL){
        //Interrupt from timer
        mc_sip(SIP_SSIP);
    }
    else if(scause == 0x8000000000000009UL){
        //Interrupt from console
        console_handler();
    }
    else{
        //unexpected trap cause
        //printInt(scause);
    }

}