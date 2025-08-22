//
// Created by marko on 20.4.22..
//

#ifndef OSPROJECT_SCHEDULER_HPP
#define OSPROJECT_SCHEDULER_HPP

#include "list.hpp"

class CCB;

class Scheduler
{
private:
    static List<CCB> readyCoroutineQueue;

public:
    static CCB *get();

    static void put(CCB *ccb);

};

#endif //OSPROJECT_SCHEDULER_HPP
