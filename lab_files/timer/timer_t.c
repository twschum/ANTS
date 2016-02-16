
#include "timer_t.h"

#define ONE_SHOT 1
#define PERIODIC 0

// pointer to start of linked list
timer_t *root = NULL;

void start_hardware_timer(uint32_t period) {

    MSS_TIM1_init(MSS_TIMER_ONE_SHOT_MODE);
    MSS_TIM1_load_immediate(period);
    MSS_TIM1_start();
    MSS_TIM1_enable_irq();
}

// put new timer in list maintaining order least time remaining to most
void insert_timer(Timer* newtimer) {

    if (root == NULL) {
        root = newtimer;
        return;
    }

    // front insert case
    if (newtimer->index < root->index) {
        newtimer->next = head;
        return;
    }

    // pos will be the "insert after" location list_t* pos = head;

    while (pos->next != NULL && pos->next->index < newtimer->index) {

        pos = pos->next;
    }

    // insert after pos
    newtimer->next = pos->next;
    pos->next = newtimer;

    return head;
}

void add_timer(handler_t handler, uint32_t period, uint32_t mode) {

    Timer* newtimer = malloc(sizeof(Timer));

    newtimer->handler = handler;
    newtimer->time_left = period;
    newtimer->period = period;
    newtimer->mode = mode;

    insert_timer(newtimer);
}

// add a continuous (periodic) timer to linked list.
void add_timer_periodic(handler_t handler, uint32_t period) {
    add_timer(handler, period, PERIODIC);
}

// add a one shot timer to the linked list.
void add_timer_single(handler_t handler, uint32_t period) {
    add_timer(handler, period, ONE_SHOT);
}



// update down count with elapsed time, call fnc if timer zero,
// update continuous timers with new down count
void update_timers(void) {};
