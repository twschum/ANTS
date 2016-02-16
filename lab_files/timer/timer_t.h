// timer_t.h virtual timer firmware

#ifndef TIMER_T_H
#define TIMER_T_H

#include <inttypes.h>
#include <stdlib.h>

#include "mss_timer.h"

void Timer1_IRQHandler(void);


// declare function pointer type
typedef void (*handler_t)(void);

// virtual down Timer
struct Timer {
  handler_t handler;    // function pointer (called after timer period)
  uint32_t time_left;   // time remaining for this counter
  uint32_t period;      // period
  uint32_t mode; // continuous or one shot timer
  struct Timer* next;   // points to next timer
};

// used to initialize hardware
// using MSS_TIM1
void start_hardware_timer();

// add a continuous (periodic) timer to linked list.
void add_timer_periodic(handler_t handler, uint32_t period);

// add a one shot timer to the linked list.
void add_timer_single(handler_t handler, uint32_t period);

// update down count with elapsed time, call fnc if timer zero,
// update continuous timers with new down count
void update_timers(void);

#endif // TIMER_T_H
