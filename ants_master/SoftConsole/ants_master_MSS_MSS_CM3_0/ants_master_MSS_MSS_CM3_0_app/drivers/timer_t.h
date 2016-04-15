// timer_t.h virtual timer firmware

#ifndef TIMER_T_H
#define TIMER_T_H

#include <inttypes.h>
#include <stdlib.h>

#include "mss_timer.h"

void Timer1_IRQHandler(void);


// declare function pointer type taking a void ptr argument
typedef void (*handler_t)(void*);

// virtual down Timer
struct Timer {
  handler_t handler;    // function pointer (called after timer period)
  uint32_t time_left;   // time remaining for this counter
  uint32_t period;      // period
  uint32_t mode; // continuous or one shot timer
  struct Timer* next;   // points to next timer
  void *arg;
};

struct Handler {
    handler_t handler;
    struct Handler* next;
    void *arg;
};


// used to initialize hardware
// using MSS_TIM1
void start_hardware_timer();

// add a continuous (periodic) timer to linked list.
void add_timer_periodic(handler_t handler, void *arg, uint32_t period);

// add a one shot timer to the linked list.
void add_timer_single(handler_t handler, void *arg, uint32_t period);

void set_clk(uint32_t clk_hz);

uint32_t to_ticks(uint32_t dur_ms);

// update down count with elapsed time, call fnc if timer zero,
// update continuous timers with new down count
struct Handler* update_timers(void);

// uses a poor man's lock and busy wait to implement ms sleep
// (don't worry, we've taken 482............ and were out other of ideas)
// will act as a sequential block or sleep() in code, while not
// blocking other timer events
void use_me_carefully_ms_delay_timer(uint32_t ms);

#endif // TIMER_T_H
