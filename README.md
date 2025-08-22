# OS_ETF

A lightweight operating system kernel prototype implemented in **C++** and **RISC-V assembly**, developed as part of the *Operating Systems 1* course at the School of Electrical Engineering, University of Belgrade (ETF). A detailed explanation of the project requirements and organisation is located in the file `Projektni zadatak 2024. v1.0.pdf`. 

## Overview

This project implements the core abstractions of a simple multitasking operating system kernel. The kernel provides:

- **Dynamic memory allocation** via a custom memory allocator  
- **Thread management** with context switching and scheduling  
- **Semaphore-based synchronization** primitives  
- **Dual API layer**: low-level **C API** and high-level **C++ API**
All components were built from scratch without relying on the host operating system. The kernel runs on a simulated **RISC-V platform** using QEMU, with support for timer interrupts and console I/O.

## Implemented Features

### Memory Allocator
- Continuous block allocator over a fixed-size heap.  
- Supports allocation and deallocation with block alignment.  
- Provides a foundation for higher-level kernel components.
- Merging of free adjacent blocks to reduce fragmentation.  

### Threads
- User-level threads with dedicated stacks.  
- Context switching and dispatcher implementation in RISC-V assembly.  
- Blocking and unblocking threads on synchronization primitives.  

### Semaphores
- Counting semaphores with support for negative values.  
- Basic operations: `sem_open`, `sem_close`, `sem_wait`, `sem_signal`.
- Queue of blocked threads for synchronization management.  
- Used to coordinate thread execution and protect shared resources.  


## How It Works Internally

### Memory Allocator
The kernel implements a **continuous block allocator** on top of a statically defined heap region (`HEAP_START_ADDR` – `HEAP_END_ADDR`).  

- **Block granularity**: All allocations are aligned to `MEM_BLOCK_SIZE` (between 64 and 1024 bytes).  
- **Free list**: The allocator maintains a linked list of free memory regions. Each free block stores its size and a pointer to the next free block.  
- **Allocation (first fit)**:
  1. Requested size is rounded up to the nearest multiple of `MEM_BLOCK_SIZE`.  
  2. The free list is scanned until the first block large enough is found.  
  3. If the block is larger than requested, it is split into two: one returned to the caller, one remaining on the free list.  
- **Deallocation**:
  1. Freed blocks are reinserted into the free list in address order.  
  2. If adjacent blocks are free, they are merged (coalescing) to reduce fragmentation.  
- **Use in the kernel**: All dynamic structures (thread stacks, control blocks, semaphores) are created using this allocator.  

This design provides predictable behavior and works without relying on any standard library functions (e.g., no `malloc`/`free`).

### Thread Management
Threads are the kernel’s primary unit of concurrency. Each thread is represented by a **Coroutine Control Block (CCB)** containing:
- Execution context (saved registers, program counter, stack pointer).  
- Pointer to the thread’s allocated stack (from the memory allocator).  
- Scheduling information (state).  

**Thread lifecycle**:  
1. **Creation**:  
   - The API allocates a stack and initializes the CCB.  
   - The starting function pointer and argument are placed at the top of the stack, preparing the thread for its first context switch.  
2. **Execution**:  
   - Threads run in user mode until they voluntarily yield (`thread_dispatch`).  
3. **Context switching**:  
   - Implemented in RISC-V assembly for efficiency.  
   - Saves the current thread’s registers to its stack and save the pc and sp to it's CCB context, restores the next thread’s CCB registers, and updates the stack pointer and program counter.  
4. **Scheduling**:  
   - Round-robin scheduling. 
5. **Termination**:  
   - Threads can explicitly call `thread_exit`.  
   - Their stack and TCB are freed back to the memory allocator.  

### Semaphores
Semaphores are implemented entirely in the kernel and are used to synchronize threads. Each semaphore structure contains:

- **Counter**: The current semaphore value.  
- **Queue of blocked threads**: Threads waiting for the semaphore when the counter is ≤ 0.  

**Operations**:  
- `wait()`:
  - Decrements the counter.  
  - If the counter is now < 0, the calling thread is blocked and added to the semaphore’s queue.  
- `signal()`:
  - Increments the counter.  
  - If there are waiting threads, one is removed from the queue and moved to the ready queue.  
- `tryWait()`:
  - Non-blocking attempt to decrement the semaphore.  
  - Returns immediately with success or failure.  

This implementation ensures **fairness** by unblocking threads in FIFO order and leverages the kernel’s scheduler to resume execution.

### API Layers
The kernel provides two layers of interaction:

1. **C API**:  
   - Procedural interface built directly on top of the kernel system calls.  
   - Examples: `mem_alloc`, `thread_create`, `sem_wait`, `time_sleep`.  
   - Designed for low-level system programming.  

2. **C++ API**:  
   - Object-oriented wrapper around the C API.  
   - Classes: `Thread`, `Semaphore`.  
   - Overloads operators `new` and `delete` to use the kernel allocator.  
   - Provides cleaner, more intuitive abstractions while keeping the same semantics as the C API.  

This dual design allows both **fine-grained control** for system-level code and **high-level abstractions** for application developers.

## Repository Structure

h/ # Project header files (c++)
src/ # Project source code (C++ and Assembly)
lib/ # Additional libraries or modules
test/ # Test suite and utilities
Makefile # Build rules and targets
.gitattributes # Line endings normalization config
LICENSE # Project licensing information
README.md # This document

## Build & Execution

Build the kernel using the included Makefile:

### Clone the repository

git clone https://github.com/DaniloMilovanovic/OS_ETF.git 

cd OS_ETF

### Build the project

make all

### Test the project

To test or boot the kernel, use an emulator like QEMU:

make qemu

The repository includes test cases under the test/ directory. These validate core functionality such as process initialization, interrupt dispatch, and memory segmentation setups.
The default execution of the project is to run the provided tests. If the user wants to run some other functions he should should write some other function to replace it and create a thread for it in the main file.
