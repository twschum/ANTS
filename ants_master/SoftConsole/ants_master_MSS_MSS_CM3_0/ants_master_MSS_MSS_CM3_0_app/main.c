// #include <> mss stuff and shit for UART
//

#include <stdio.h>
#include <unistd.h>
#include "drivers/mss_gpio/mss_gpio.h"

#include "drivers/n64_driver.h"
#include "drivers/trigger_solenoid_driver.h"
#include "drivers/servo_control.h"

#define PRINT_STATE 0

#define MANUAL 1
#define AUTOMATIC 0

#define GPIO_OUTPUT_CFG 0x01

void do_solenoid(n64_state_t* state, n64_state_t* last_state);
void do_servos_manual(n64_state_t* state, n64_state_t* last_state);

int main() {

    /*
     * configure GPIO_0 as an output pin
     */
    MSS_GPIO_init();
    MSS_GPIO_config(MSS_GPIO_0, MSS_GPIO_OUTPUT_MODE);
    MSS_GPIO_set_output(MSS_GPIO_0, 0);

    /*
     * Initialize the solenoid
     */
    trigger_solenoid_pin_init();

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

    printf("A.N.T.S. 3000, ready for action!\r\n");

    /* Pixy test
    int i=0, curr, prev=0;
    while (1) {
        curr = Pixy_get_start());
        if (prev && curr) // two start codes means start of new frame
            printf("%d\r\n", i++);
        prev = curr;
    }
    */


    while (1) {
        n64_get_state( &n64_buttons );

        do_solenoid( &n64_buttons, &last_buttons );

        if (mode == MANUAL) {
            do_servos_manual( &n64_buttons, &last_buttons );
        }

        /*
         * Toggle between manual and automatic modes, with the laser indicator
         */
        if (n64_buttons.A && !last_buttons.A) {
            printf("A pressed: ");

            if (mode == AUTOMATIC) {
                mode = MANUAL;
                printf("manual mode, laser on!\r\n");
                MSS_GPIO_set_output(MSS_GPIO_0, 1);
                // do thing
            }
            else if (mode == MANUAL) {
                mode = AUTOMATIC;
                printf("automatic mode, laser off :(\r\n");
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


/*
 * Checks the controller state and then triggers the solenoid
 * Also checks and adjusts the duration of the solenoid
 */
void do_solenoid(n64_state_t* state, n64_state_t* last_state) {

    static uint32_t milliseconds=200, increment=20;
    /*
     * trigger the solenoid:
     *   Z to fire
     *   C Up to increment the time
     *   C Down to decrement the itme
     */
    if (state->Z && !last_state->Z) {
        printf("Z pressed, activating trigger solenoid\r\n");
        trigger_solenoid_activate(milliseconds);
    }

    if (state->C_Up && !last_state->C_Up) {
        milliseconds += increment;
        printf("Incrementing solenoid time to: %d ms\r\n", milliseconds);
    }
    if (state->C_Down && !last_state->C_Down) {
        if (milliseconds <= increment) {
            printf("Cannot decrement solenoid time, at min: %d ms\r\n", milliseconds);
        }
        else {
            milliseconds -= increment;
            printf("Decrementing solenoid time to: %d ms\r\n", milliseconds);
        }
    }
}

/*
 * This checks the D-pad and adjusts the servos accordingly,
 * moving them for as long as the button is held
 */
void do_servos_manual(n64_state_t* state, n64_state_t* last_state) {

    // Pitch control
    if (state->Up && !last_state->Up) {
        // Up pressed
        set_y_servo(SERVO_FULL_FORWARD);
    }
    else if (!state->Up && last_state->Up) {
        // Up released
        set_y_servo(SERVO_NEUTRAL);
    }
    else if (state->Down && !last_state->Down) {
        // Down pressed
        set_y_servo(SERVO_FULL_REVERSE);
    }
    else if (!state->Down && last_state->Down) {
        // Down released
        set_y_servo(SERVO_NEUTRAL);
    }

    // Yaw control
    if (state->Left && !last_state->Left) {
        // Left pressed
        set_x_servo(SERVO_FULL_FORWARD);
    }
    else if (!state->Left && last_state->Left) {
        // Left released
        set_x_servo(SERVO_NEUTRAL);
    }
    else if (state->Right && !last_state->Right) {
        // Right pressed
        set_x_servo(SERVO_FULL_REVERSE);
    }
    else if (!state->Right && last_state->Right) {
        // Right released
        set_x_servo(SERVO_NEUTRAL);
    }
}
