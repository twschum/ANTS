
#include "timer_t.h"

#define ONE_SHOT 1
#define PERIODIC 0

// pointer to start of linked list
struct Timer* root = NULL;

void Timer1_IRQHandler(void) {

    struct Handler* handlers = update_timers();

    MSS_TIM1_clear_irq();

    // if not empty, start the timer again
    if (root) {
        MSS_TIM1_load_immediate(root->time_left);
        MSS_TIM1_start();
    }

    // call the timer handlers
    while (handlers) {
        handlers->handler();

        struct Handler* tmp = handlers;
        handlers = handlers->next;

        free(tmp);
    }
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
        root = newtimer;
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

void add_timer(handler_t handler, void *arg, uint32_t period, uint32_t mode) {
    struct Timer* newtimer = malloc(sizeof(struct Timer));

    newtimer->handler = handler;
    newtimer->time_left = period;
    newtimer->period = period;
    newtimer->mode = mode;
    newtimer->next = NULL;
    newtimer->arg = arg;
    insert_timer(newtimer);
}

// add a continuous (periodic) timer to linked list.
void add_timer_periodic(handler_t handler, void *arg, uint32_t period) {
    add_timer(handler, arg, period, PERIODIC);
}

// add a one shot timer to the linked list.
void add_timer_single(handler_t handler, void *arg, uint32_t period) {
    add_timer(handler, arg, period, ONE_SHOT);
}

// update down count with elapsed time, call fnc if timer zero,
// update continuous timers with new down count
struct Handler* update_timers(void) {

    // first, update all the time_left fields
    struct Timer* node = root;
    uint32_t elapsed = root->time_left;

    while (node) {
        node->time_left -= elapsed;
        node = node->next;
    }

    struct Handler* handlers_root = NULL;
    struct Handler* handlers_tail = NULL;


    // second, deal with the zeroed timer
    while (root->time_left == 0) {

        // handlers list tail insert
        struct Handler* new_handler = malloc(sizeof(struct Handler));
        new_handler->handler = NULL;
        new_handler->next = NULL;

        if (handlers_root == NULL) {
            handlers_root = new_handler;
            handlers_tail = new_handler;
        }
        else {
            handlers_tail->next = new_handler;
            handlers_tail = new_handler;
        }
        // list is set, now just use new_handler


        // deal with the front timer in that list
        struct Timer* head = root;
        root = head->next;

        new_handler->handler = head->handler;

        if (head->mode == ONE_SHOT) {
            free(head);
        }

        else {
            head->time_left = head->period;
            head->next = NULL;
            insert_timer(head);
        }
    }

    return handlers_root;
}

