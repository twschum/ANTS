// #include <> mss stuff and shit for UART
//

#include <stdio.h>
#include <unistd.h>
#include "n64_driver.h"
#include "trigger_solenoid_driver.h"
#include "drivers/mss_gpio/mss_gpio.h"

#define PRINT_STATE 0

#define MANUAL 1
#define AUTOMATIC 0

#define GPIO_OUTPUT_CFG 0x01

int main() {


    /*
     * configure GPIO_0 as an output pin
     */
    MSS_GPIO_init();
    MSS_GPIO_config(MSS_GPIO_0, MSS_GPIO_OUTPUT_MODE);
    MSS_GPIO_set_output(MSS_GPIO_0, 0);

    /*
     * n64 controller state
     */
    n64_state_t n64_buttons;
    n64_state_t last_buttons;
    uint8_t mode = AUTOMATIC;

    n64_reset();
    n64_enable();

    n64_get_state(&last_buttons);

    volatile int x = 0;

    int milliseconds = 200;
    int increment = 50;

    while (1) {
        n64_get_state( &n64_buttons );

        /*
         * trigger the solenoid:
         *   Z to fire
         *   C Up to increment the time
         *   C Down to decrement the itme
         */
        if (n64_buttons.Z && !last_buttons.Z) {
            printf("Z pressed, activating trigger solenoid\n");
            trigger_solenoid_activate(milliseconds);
        }

        if (n64_buttons.C_Up && !last_buttons.C_Up) {
            milliseconds += increment;
            printf("Incrementing solenoid time to: %d ms", milliseconds);
        }
        if (n64_buttons.C_Down && !last_buttons.C_Down) {
            if (milliseconds <= increment) {
                printf("Cannot decrement solenoid time, at min: %d ms", milliseconds);
            }
            else {
                milliseconds += increment;
                printf("Decrementing solenoid time to: %d ms", milliseconds);
            }
        }

        /*
         * Toggle between manual and automatic modes, with the laser indicator
         */
        if (n64_buttons.A && !last_buttons.A) {
            printf("A pressed: ");

            if (mode == AUTOMATIC) {
                mode = MANUAL;
                printf("manual mode, laser on!\n");
                MSS_GPIO_set_output(MSS_GPIO_0, 1);
                // do thing
            }
            else if (mode == MANUAL) {
                mode = AUTOMATIC;
                printf("automatic mode, laser off :(\n");
                MSS_GPIO_set_output(MSS_GPIO_0, 0);
            }
        }



        if (PRINT_STATE) {
            n64_print_state( &n64_buttons );
            while (x < 10000000) {
            	x = x + 1;
            }
            x = 0;
        }

        last_buttons = n64_buttons;
    }

}
