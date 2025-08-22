//
// Created by os on 5/8/24.
//
#include "../lib/console.h"
#include "../h/riscv.hpp"
#include "../h/ccb.hpp"

extern void userMain();

int main(){

    CCB::running = CCB::createCoroutine(nullptr, nullptr, nullptr);
    CCB::createCoroutine((void (*)(void*))userMain, nullptr, (uint64*)memoryAllocator::mem_alloc(DEFAULT_STACK_SIZE * sizeof(uint64)));

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);


    while(CCB::getThreadCnt() > 1)
    {
        CCB::dispatch();
    }

    return 0;
}