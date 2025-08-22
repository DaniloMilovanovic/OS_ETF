//
// Created by marko on 20.4.22..
//

#ifndef OSPROJECT_CCB_HPP
#define OSPROJECT_CCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"
// Coroutine Control Block
class CCB
{
public:
    using Body = void (*)(void*); //function for which we want to create a thread

    ~CCB() { delete[] stack;}

    static CCB *createCoroutine(Body _body, void* _arg, uint64* _stack);

    static CCB *running; //the currently running thread

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }

    static void dispatch();//change of context

    void* operator new(size_t size){ //allocation of space for a new thread
        uint64 volatile num_of_blocks = (size + sizeof(uint64) + sizeof(void*)) / MEM_BLOCK_SIZE;
        if(size + sizeof(void*) + sizeof(uint64) % MEM_BLOCK_SIZE) num_of_blocks++;

        return memoryAllocator::mem_alloc(num_of_blocks);
    }

    void operator delete(void* p){ //deleting space of a thread
        memoryAllocator::mem_free(p);
    }

    static int getThreadCnt();


    int time_sleep (time_t);
private:
    explicit CCB(Body _body,void* _arg, uint64* _stack) : body(_body), arg(_arg), stack(_stack),
            context({body != nullptr ? (uint64) &threadWrapper : 0,
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                    }),
            finished(false)
    {
        if (body != nullptr) { Scheduler::put(this);}
    }

    friend class userSemaphore;

    struct Context
    {
        uint64 ra; //the pc of the program
        uint64 sp; //the beginning of the stack of the thread
    };

    Body body;
    void* arg;
    uint64 *stack;
    Context context;
    bool finished;

    static void contextSwitch(Context *oldContext, Context *runningContext);

    static void threadWrapper();

    static uint64 threadCnt;

};

#endif //OSPROJECT_CCB_HPP
