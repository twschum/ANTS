
#include "timer_t.h"

#define ONE_SHOT 1
#define PERIODIC 0

// pointer to start of linked list
struct Timer* root = NULL;

void Timer1_IRQHandler(void) {

    handler_t handler = root->handler;

    update_timers();

    MSS_TIM1_clear_irq();

    // if not empty, start the timer again
    if (root) {
        MSS_TIM1_load_immeadiate(root->time_left);
        MSS_TIM1_start();
    }

    // call the timer's handler last
    handler();
}

void start_hardware_timer() {

    MSS_TIM1_init(MSS_TIMER_ONE_SHOT_MODE);
    MSS_TIM1_load_immediate(root->time_left);
    MSS_TIM1_start();
    MSS_TIM1_enable_irq();
}

// put new timer in list maintaining order least time remaining to most
void insert_timer(struct Timer* newtimer) {

    // insert empty case
    if (root == NULL) {
        root = newtimer;
        return;
    }

    // front insert case
    if (newtimer->time_left < root->time_left) {
        newtimer->next = root;
        return;
    }

    struct Timer* pos = root;

    // pos will be the "insert after" location list_t* pos = head;
    while (pos->next != NULL && pos->next->time_left < newtimer->time_left) {
        pos = pos->next;
    }

    // insert after pos
    newtimer->next = pos->next;
    pos->next = newtimer;
}

void add_timer(handler_t handler, uint32_t period, uint32_t mode) {

    struct Timer* newtimer = malloc(sizeof(struct Timer));

    newtimer->handler = handler;
    newtimer->time_left = period;
    newtimer->period = period;
    newtimer->mode = mode;
    newtimer->next = NULL;

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
void update_timers(void) {

    // first, update all the time_left fields
    struct Timer* node = root;
    uint32_t elapsed = root->time_left;

    while (node) {
        node->time_left -= elapsed;
        node = node->next;
    }

    // second, deal with the root timer
    struct Timer* head = root;
    root = head->next;

    if (head->mode == ONE_SHOT) {
        free(head);
    }

    else {
        head->time_left = head->period;
        head->next = NULL;
        insert_timer(head);
    }
}

