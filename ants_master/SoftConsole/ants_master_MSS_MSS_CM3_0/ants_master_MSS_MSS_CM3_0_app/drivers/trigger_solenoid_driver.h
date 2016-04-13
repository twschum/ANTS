/*
 * Driver for our solenoid which is
 * the pnuematic trigger for the launcher
 *
 */

#include <inttypes.h>
#include "drivers/mss_gpio/mss_gpio.h"


#define SOLENOID_ADDR 0x40050100
#define US_MULT 100
#define MS_MULT 100000
#define CYCLE_MULT 10000 //  TODO

#define TRIGGER_DURATION 30

void trigger_solenoid_pin_init() {
    MSS_GPIO_init();
    MSS_GPIO_config(MSS_GPIO_1, MSS_GPIO_OUTPUT_MODE);
    MSS_GPIO_set_output(MSS_GPIO_1, 0);
}

// activate the trigger for ms miliseconds
void trigger_solenoid_activate(uint32_t ms) {

	//uint32_t cycles = ms * MS_MULT;
	//volatile uint32_t* address = (volatile uint32_t *)SOLENOID_ADDR;
	//*address = cycles;

	// Use a GPIO pin and a forced loop
	MSS_GPIO_set_output(MSS_GPIO_1, 1);
	volatile uint32_t i;
	for(i = 0; i < ms * CYCLE_MULT; i++) { }
	MSS_GPIO_set_output(MSS_GPIO_1, 0);
}
