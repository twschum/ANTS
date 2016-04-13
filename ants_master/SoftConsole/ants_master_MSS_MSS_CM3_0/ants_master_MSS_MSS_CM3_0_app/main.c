
#include <stdio.h>
#include <unistd.h>
#include "drivers/mss_gpio/mss_gpio.h"

#include "drivers/n64_driver.h"
#include "drivers/trigger_solenoid_driver.h"
#include "drivers/servo_control.h"
#include "drivers/dsensor_driver.h"
#include "drivers/Pixy_SPI.h"

#define PRINT_N64_STATE 1

#define MANUAL 1
#define AUTOMATIC 0

// convenience button macros in the do_ functions
#define N64_STATE_PTR state
#define N64_LAST_STATE_PTR last_state
#define n64_pressed(BUTTON)  (N64_STATE_PTR->BUTTON && !N64_LAST_STATE_PTR->BUTTON)
#define n64_released(BUTTON)  (!N64_STATE_PTR->BUTTON && N64_LAST_STATE_PTR->BUTTON)

// make all do_ functions take the n64 args as defined to use the button macro!
void do_solenoid(n64_state_t* state, n64_state_t* last_state);
void do_servos_manual(n64_state_t* state, n64_state_t* last_state);
void do_automatic(n64_state_t* state, n64_state_t* last_state);

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
    uint8_t mode = MANUAL;

    n64_reset();
    n64_enable();

    n64_get_state(&last_buttons);

    volatile int x = 0;

    printf("A.N.T.S. 3000, ready for action!\r\n");

    /*
     * Pixy initalization
     */
    Pixy_init();


    while (1) {
        n64_get_state( &n64_buttons );

        do_solenoid( &n64_buttons, &last_buttons );

        do_servos_manual( &n64_buttons, &last_buttons );

        do_automatic( &n64_buttons, &last_buttons );

        //print_distance();

        /*
         * Toggle between manual and automatic modes, with the laser indicator
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
        */

        if (PRINT_N64_STATE) {
            n64_print_state( &n64_buttons );
            //while (x < 10000000) {
            //	x = x + 1;
            //}
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
    if (n64_pressed(Z)) {
        printf("Z pressed, activating trigger solenoid\r\n");
        trigger_solenoid_activate(milliseconds);
    }

    if (n64_pressed(C_Up)) {
        milliseconds += increment;
        printf("Incrementing solenoid time to: %d ms\r\n", milliseconds);
    }
    if (n64_pressed(C_Down)) {
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
 *
 */
void do_servos_manual(n64_state_t* state, n64_state_t* last_state) {

    // Digital Pitch control
    if (n64_pressed(Down)) {
        servo_do(Y_SET_FORWARD);
        //set_y_servo_analog_pw(SERVO_FULL_FORWARD);
        printf("servo_do Y_SET_FORWARD\r\n");
    }
    else if (n64_pressed(Up)) {
        servo_do(Y_SET_REVERSE);
        printf("servo_do Y_SET_REVERSE\r\n");
    }
    else if (n64_released(Up) || n64_released(Down)) {
        servo_do(Y_SET_NEUTRAL);
        printf("servo_do Y_SET_NEUTRAL\r\n");
    }

    // Digital Yaw control
    if (n64_pressed(Left)) {
        servo_do(X_SET_FORWARD);
        //set_x_servo_analog_pw(SERVO_FULL_FORWARD);
        printf("servo_do X_SET_FORWARD\r\n");
    }
    else if (n64_pressed(Right)) {
        servo_do(X_SET_REVERSE);
        //set_x_servo_analog_pw(SERVO_FULL_REVERSE);
        printf("servo_do X_SET_REVERSE\r\n");
    }
    else if (n64_released(Left) || n64_released(Right)) {
        servo_do(X_SET_NEUTRAL);
        //set_x_servo_analog_pw(SERVO_NEUTRAL);
        printf("servo_do X_SET_NEUTRAL\r\n");
    }

    // Read out the counts
    if (n64_pressed(C_Right)) {
    	servos_print_counts();
    }

    // Return to Zero
    if (n64_pressed(C_Left)) {
    	//servo_do(X_RETURN_TO_ZERO);
		printf("X Servo beginning Return to Zero\r\n");
    }

    // Zero the counts
    if (n64_pressed(B)) {
    	servo_do(X_SET_ZERO);
    	printf("Setting zero location for X servo\r\n");
    }

    // Analog Pitch and Yaw
    static uint8_t last_x_axis = 0;
    if (state->X_axis != last_x_axis) {
    	n64_print_state(state);
    	// mapping maths
    	//set_x_servo_analog_pw();
    	last_x_axis = state->X_axis;
    }

}

/*
 * Automated target acquisition and firing
 *
 * Pressing the R trigger will enter this mode
 * Press B to abort this mode
 *
 * This mode runs as its own decision loop, using the camera and
 * distance sensor to find the targets, and taking control of
 * the servos and trigger to accomplish this.
 */
void do_automatic(n64_state_t* state, n64_state_t* last_state) {

    if (! n64_pressed(R)) {
        return;
    }

    printf("Beginning seek-and-destroy!\r\n");

    int active = 1;
    target_pos_t target;

    uint32_t x_pw = SERVO_NEUTRAL;
    uint32_t y_pw = SERVO_NEUTRAL;
    uint8_t x_on_target = 0;
    uint8_t y_on_target = 0;

    while (active) {

        if ( Pixy_get_target_location(&target) == -1 ) {
            // start a failure timeout timer
        }
        // else, target found, coordinates valid

        // X servo adjustment
        if (target.x < (PIXY_X_CENTER - PIXY_DEADZONE)) {
            x_pw = SERVO_FULL_REVERSE; // go left
            x_on_target = 0;
        }
        else if (target.x > (PIXY_X_CENTER + PIXY_DEADZONE)) {
            x_pw = SERVO_FULL_FORWARD; // go right
            x_on_target = 0;
        }
        else {
            x_pw = SERVO_NEUTRAL;
            x_on_target = 1;
        }

        // Y servo adjustment
        if (target.y < (PIXY_Y_CENTER - PIXY_DEADZONE)) {
            y_pw = SERVO_FULL_FORWARD; // go down
            y_on_target = 0;
        }
        else if (target.y > (PIXY_Y_CENTER + PIXY_DEADZONE)) {
            y_pw = SERVO_FULL_REVERSE; // go up
            y_on_target = 0;
        }
        else {
            y_pw = SERVO_NEUTRAL;
            y_on_target = 1;
        }

        // set the servos
        set_x_servo_analog_pw(x_pw);
        set_y_servo_analog_pw(y_pw);

        // fire a dart, then exit the loop after getting n64 state
        if (x_on_target && y_on_target) {
            trigger_solenoid_activate(TRIGGER_DURATION);
            active = 0;
        }

        if (n64_pressed(B)) {
            active = 0;
            servo_do(X_SET_NEUTRAL);
            servo_do(Y_SET_NEUTRAL);
            printf("Aborting seek-and-destroy\r\n");
        }

        *last_state = *state;
        n64_get_state( state );
    }
}
