//
// Created by os on 5/16/24.
//
#include "../h/userSemaphore.hpp"

int userSemaphore::wait() {
    if(--val < 0) block();
    return 0;

}

int userSemaphore::tryWait() {
    if(--val < 0) return 0;
    if(val >= 0) return 1;
    return -1;
}

int userSemaphore::signal() {
    if(++val <= 0) unblock();
    return 0;

}

void userSemaphore::block() {
    CCB *old = CCB::running;
    blocked.addLast(old);
    CCB::running = Scheduler::get();
    CCB::contextSwitch(&old->context, &CCB::running->context);

}

void userSemaphore::unblock() {
    CCB* thread = blocked.removeFirst();
    Scheduler::put(thread);
}

userSemaphore *userSemaphore::createSemaphore(int val) {
    return new userSemaphore(val);
}

userSemaphore::~userSemaphore() {

    while(blocked.peekFirst()){
        Scheduler::put(blocked.removeFirst());
    }
}


