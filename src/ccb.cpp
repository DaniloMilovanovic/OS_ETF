//
// Created by os on 5/14/24.
//



#include "../h/ccb.hpp"
#include "../h/riscv.hpp"

uint64 CCB::threadCnt = 0;

CCB *CCB::running = nullptr;

CCB *CCB::createCoroutine(Body _body,void* _arg, uint64* _stack)
{
    threadCnt++;
    return new CCB(_body, _arg, _stack);
}


void CCB::dispatch()
{
    CCB *old = running;
    if (old->isFinished()) {
        threadCnt--;
        memoryAllocator::mem_free(old);
    }
    else{
        Scheduler::put(old);
    }

    running = Scheduler::get();
    CCB::contextSwitch(&old->context, &running->context);
}

void CCB::threadWrapper() {

    Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    Riscv::popSppSpie();
    running->body(running->arg);
    running->setFinished(true);

    uint64 volatile code = 0x13;
    __asm__ volatile("mv a0, %0" :  : "r" (code));
    __asm__ volatile("ecall");
}

int CCB::getThreadCnt() {
    return threadCnt;
}

int CCB::time_sleep(time_t) {
    return 0;
}
