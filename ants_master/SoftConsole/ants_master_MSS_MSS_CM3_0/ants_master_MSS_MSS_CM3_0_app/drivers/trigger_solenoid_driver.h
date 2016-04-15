/*
 * Driver for our solenoid which is
 * the pnuematic trigger for the launcher
 *
 */

#include <inttypes.h>
#include "drivers/mss_gpio/mss_gpio.h"
#include "timer_t.h"

#define TRIGGER_DURATION 250
#define AFTER_FIRING_DELAY 500

void trigger_solenoid_pin_init() {
    MSS_GPIO_init();
    MSS_GPIO_config(MSS_GPIO_1, MSS_GPIO_OUTPUT_MODE);
    MSS_GPIO_set_output(MSS_GPIO_1, 0);
}

// activate the trigger for ms miliseconds
void trigger_solenoid_activate(uint32_t ms) {

	// Use a GPIO pin and a delay
	MSS_GPIO_set_output(MSS_GPIO_1, 1);
	use_me_carefully_ms_delay_timer(ms);

	//volatile uint32_t i;
	//for(i = 0; i < ms * CYCLE_MULT; i++) { }
	MSS_GPIO_set_output(MSS_GPIO_1, 0);

    // second delay for safety
	use_me_carefully_ms_delay_timer(AFTER_FIRING_DELAY);
}
