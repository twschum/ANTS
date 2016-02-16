//use MSS hardware timer1 @100MHz and GPIO mapped to LEDS

#include <stdlib.h>

#include "mss_timer.h"
#include "mss_gpio.h"

#include "timer_t.h"

// multipliers!
#define SEC  * 100000000
#define MS  * 100000

//simple led toggle timer function
void led1() { MSS_GPIO_set_outputs(MSS_GPIO_get_outputs( )^ MSS_GPIO_0_MASK);}
void led2() { MSS_GPIO_set_outputs(MSS_GPIO_get_outputs( )^ MSS_GPIO_1_MASK);}
void led3() { MSS_GPIO_set_outputs(MSS_GPIO_get_outputs( )^ MSS_GPIO_2_MASK);}
void led4() { MSS_GPIO_set_outputs(MSS_GPIO_get_outputs( )^ MSS_GPIO_3_MASK);}
void led5() { MSS_GPIO_set_outputs(MSS_GPIO_get_outputs( )^ MSS_GPIO_4_MASK);}

int main(){

	MSS_GPIO_init();
	MSS_GPIO_config( MSS_GPIO_0, MSS_GPIO_OUTPUT_MODE);
	MSS_GPIO_config( MSS_GPIO_1, MSS_GPIO_OUTPUT_MODE);
	MSS_GPIO_config( MSS_GPIO_2, MSS_GPIO_OUTPUT_MODE);
	MSS_GPIO_config( MSS_GPIO_3, MSS_GPIO_OUTPUT_MODE);
	MSS_GPIO_config( MSS_GPIO_4, MSS_GPIO_OUTPUT_MODE);
	MSS_GPIO_set_outputs(0xffff);

    add_timer_single( &led1, 1 SEC );
    add_timer_periodic( &led2, 100 MS );
    add_timer_periodic( &led3, 100 MS );
    add_timer_periodic( &led4, 250 MS );
    add_timer_periodic( &led5, 1 SEC );

	start_hardware_timer();

	while(1);
}
