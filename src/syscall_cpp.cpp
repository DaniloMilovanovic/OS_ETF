//
// Created by os on 6/24/24.
//
#include "../h/syscall_cpp.h"

//MEMORY
void* operator new (size_t size){
    return mem_alloc(size);
}

void operator delete (void* p){
    mem_free(p);
}

//SEMAPHORE

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}
Semaphore::~Semaphore() {
    sem_close(myHandle);
}

int Semaphore::wait() {
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}

int Semaphore::tryWait() {
    return sem_trywait(myHandle);
}


//THREADS
Thread::Thread(void (*body)(void *), void *arg) : body(body), arg(arg), myHandle(nullptr){

}

Thread::~Thread() {
}

int Thread::start() {
    thread_create(&myHandle, threadBase, this);
    return 0;
}

void Thread::threadBase(void* arg){
    Thread* currThread = (Thread*)arg;
    if(currThread->body != nullptr){
        //putc('1');
        currThread->body(currThread->arg);
    }
    else{
        //putc('2');
        currThread->run();
    }
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::sleep(time_t) {
    return 0;
}

Thread::Thread() : body(nullptr), arg(nullptr), myHandle(nullptr){

}

//CONSOLE
char Console::getc() {
    return ::getc();
}

void Console::putc(char ch) {
    ::putc(ch);
}


