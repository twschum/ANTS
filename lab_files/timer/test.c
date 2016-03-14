#include "timer_t.h"

#include <assert.h>
#include <stdlib.h>
#include <stdio.h>

#define SEC  * 100000000
#define MS  * 100000

void led0() { printf("Toggle led 0\n"); };

int main() {


    add_timer_single( &led0, 1 SEC );
    add_timer_periodic( &led0, 100 MS );
    add_timer_periodic( &led0, 100 MS );
    add_timer_periodic( &led0, 250 MS );
    add_timer_periodic( &led0, 1 SEC );

    return 0;
}
