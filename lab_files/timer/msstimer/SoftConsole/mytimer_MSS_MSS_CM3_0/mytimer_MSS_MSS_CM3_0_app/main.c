
//use MSS hardware timer1 @100MHz and GPIO mapped to LEDS

#include "mss_timer.h"
#include "mss_gpio.h"
#include <stdlib.h>

//simple led toggle timer function
void led0() { MSS_GPIO_set_outputs(MSS_GPIO_get_outputs( )^ MSS_GPIO_0_MASK);}

//look in mss_timer.h for details
void start_hardware_timer(uint32_t period){

		MSS_TIM1_init(MSS_TIMER_ONE_SHOT_MODE);
		MSS_TIM1_load_immediate(period);
		MSS_TIM1_start();
		MSS_TIM1_enable_irq();
}

int main(){

	MSS_GPIO_init();
	MSS_GPIO_config( MSS_GPIO_0, MSS_GPIO_OUTPUT_MODE);
	MSS_GPIO_set_outputs(0xffff);
	start_hardware_timer(100000000); //initialize to 1 second


	while(1);
}
//hardware timer down counting at 100MHz
//should interrupt once a second.
void Timer1_IRQHandler( void ){

	led0();
	MSS_TIM1_clear_irq();
	MSS_TIM1_load_immediate(100000000);
	MSS_TIM1_start();
}
