//
// Created by os on 5/8/24.
//

#ifndef OSPROJECT_SYSCALL_CPP_H
#define OSPROJECT_SYSCALL_CPP_H

#include "syscall_c.h"

void* operator new (size_t);
void operator delete (void*);

class Thread {
public:
    Thread (void (*body)(void*), void* arg);
    virtual ~Thread ();
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
private:
    void (*body)(void*);
    void* arg;
    thread_t myHandle;

    static void threadBase(void *arg);
};



class Semaphore {
public:
    Semaphore (unsigned init = 1);
    virtual ~Semaphore ();
    int wait ();
    int signal ();
    //int timedWait (time_t);
    int tryWait();
private:
    sem_t myHandle;
};

class Console {
public:
    static char getc ();
    static void putc (char);
};

#endif //OSPROJECT_SYSCALL_CPP_H
