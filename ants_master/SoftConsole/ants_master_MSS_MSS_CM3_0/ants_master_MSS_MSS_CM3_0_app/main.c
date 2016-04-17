
#include <stdio.h>
#include <unistd.h>
#include "drivers/mss_gpio/mss_gpio.h"

#include "drivers/n64_driver.h"
#include "drivers/trigger_solenoid_driver.h"
#include "drivers/servo_control.h"
#include "drivers/dsensor_driver.h"
#include "drivers/Pixy_SPI.h"
#include "drivers/sound/speaker_driver.h"
#include "drivers/timer_t.h"
#include "drivers/led_interface.h"
#include "drivers/stats_display.h"

#define PRINT_N64_STATE 0

// Use these to distinguish between rapid-fire and
// the safer single fire mode
//#define REPEATED_FIRING_MODE 0
uint8_t REPEATED_FIRING_MODE = 0;

#define DISPLAY_UPDATE_MS 30//ms
#define CLK_SPEED 100000000//hz


// convenience button macros in the do_ functions
#define N64_STATE_PTR state
#define N64_LAST_STATE_PTR last_state
#define n64_pressed(BUTTON)  (N64_STATE_PTR->BUTTON && !N64_LAST_STATE_PTR->BUTTON)
#define n64_released(BUTTON)  (!N64_STATE_PTR->BUTTON && N64_LAST_STATE_PTR->BUTTON)

upd_disp_arg_t g_disp_update_argument;

// make all do_ functions take the n64 args as defined to use the button macro!
void do_ready_live_fire(n64_state_t* state, n64_state_t* last_state);
void do_solenoid(n64_state_t* state, n64_state_t* last_state);
void do_servos_manual(n64_state_t* state, n64_state_t* last_state);
void do_automatic(n64_state_t* state, n64_state_t* last_state);
void do_manual_reload(n64_state_t* state, n64_state_t* last_state);
void _reload_motion();
void _fire_dart();

static uint8_t g_live_fire_enabled = 0;

static lcd_screen_state_t lcd_state;
static lcd_screen_state_t lcd_last_state;
static circle_t trg;
static circle_t lasttrg;

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

    n64_reset();
    n64_enable();

    n64_get_state(&last_buttons);

    /*
     * Initialize display and refresh timer
     */


    // to center y
    //_reload_motion();

    /*
     * Lights initialization
     */
    lights_init();
    lights_set(LIGHTS_IDLE);

    /*
     * Pixy initalization
     */
    Pixy_init();
    speaker_init();

    /*
     * Top-level control loop
     */
    printf("A.N.T.S. 3000, ready for action!\r\n");

    disp_init();
    set_clk(CLK_SPEED); // Only for scaling
    lcd_state.target_mode = MANUAL_MODE;
    g_disp_update_argument.lcd_state = &lcd_state;
    g_disp_update_argument.last_state = NULL;
    disp_update((void*)&g_disp_update_argument);
    start_hardware_timer();
    while (1) {

        n64_get_state( &n64_buttons );

        do_ready_live_fire( &n64_buttons, &last_buttons );

        do_solenoid( &n64_buttons, &last_buttons );

        do_servos_manual( &n64_buttons, &last_buttons );

        do_automatic( &n64_buttons, &last_buttons );

        do_manual_reload( &n64_buttons, &last_buttons );


        if (PRINT_N64_STATE) {
            n64_print_state( &n64_buttons );
        }

        last_buttons = n64_buttons;
    }
}

/*
 * Checks that the Start button has been pressed to enable
 * or diable the firing enable
 */
void do_ready_live_fire(n64_state_t* state, n64_state_t* last_state) {
	// This global only gets set here, read anywhere, cleared after firing (not repeat mode)
	if ( !g_live_fire_enabled && n64_released(Start)) {
		g_live_fire_enabled = 1;
		lights_set(LIGHTS_SAFETY_OFF);
		printf("DANGER ZONE: Live-fire enabled.\r\n");
	}
	else if (g_live_fire_enabled && n64_released(Start)) {
		g_live_fire_enabled = 0;
		lights_set(LIGHTS_IDLE);
		printf("Live-fire disabled.\r\n");
	}

	// FOR VIDEO ONLY
	if (n64_pressed(C_Left)) {
		if (REPEATED_FIRING_MODE) {
			REPEATED_FIRING_MODE = 0;
		}
		else {
			REPEATED_FIRING_MODE = 1;
		}
	}
}

/*
 * Press A to start a manual reload, then load a single dart in the chamber.
 * When finished, press A again to return to firing position
 * Allows screen to keep track of if loaded
 */
void do_manual_reload(n64_state_t* state, n64_state_t* last_state) {
	static uint8_t in_reload_position = 0;

	// From testing
	static uint32_t x_return_time = 360;
	static uint32_t y_return_time = 250;

	if (n64_pressed(A)) {

		if (in_reload_position) {
			lcd_state.chamber_status = CHAMBER_LOADED;
		    set_y_servo_analog_pw(SERVO_HALF_REVERSE);
		    set_x_servo_analog_pw(SERVO_HALF_REVERSE);
		    use_me_carefully_ms_delay_timer(y_return_time);
		    servo_do(Y_SET_NEUTRAL);
			use_me_carefully_ms_delay_timer(x_return_time - y_return_time);
			servo_do(X_SET_NEUTRAL);
			in_reload_position = 0;
			lights_set(LIGHTS_IDLE);
		}
		else {
			in_reload_position = 1;
			lights_set(LIGHTS_RELOADING);
			// go to down left limit
			set_x_servo_analog_pw(185000);
			set_y_servo_analog_pw(SERVO_HALF_FORWARD);
			while (servo_r(READ_LOWER_STOP) || servo_r(READ_FORWARD_STOP)) {
				if (!servo_r(READ_LOWER_STOP)) {
					servo_do(Y_SET_NEUTRAL);
				}
				if (!servo_r(READ_FORWARD_STOP)) {
					servo_do(X_SET_NEUTRAL);
				}
			}
			servo_do(X_SET_NEUTRAL);
			servo_do(Y_SET_NEUTRAL);
		}
	}
}

/*
 * Helper function to execute the 'reload' motion
 *
 * called by do_solenoid and the auto mode firing
 */
void _reload_motion() {
    // now go thru the 'reload' motion
    set_y_servo_analog_pw(SERVO_HALF_FORWARD);
    while (servo_r(READ_LOWER_STOP)) { }

    // magic numbers from real-world testing
    set_y_servo_analog_pw(SERVO_HALF_REVERSE);
    use_me_carefully_ms_delay_timer(250);
    set_y_servo_analog_pw(SERVO_NEUTRAL);
}
/*
 * Helper to be called in manual and automatic modes
 * to fire, reload (action), and clear g_ready_live_fire
 */
void _fire_dart() {
	if ( ! g_live_fire_enabled) {
		printf("ERROR: Attempted to fire without live fire enabledr\r\n");
		return;
	}

	lcd_state.chamber_status = CHAMBER_EMPTY;
	disp_update((void*)&g_disp_update_argument);
	start_hardware_timer();

	lights_set(LIGHTS_FIRING);
	trigger_solenoid_activate(TRIGGER_DURATION);
    _reload_motion();

    // Safer single-shot mode
    if ( ! REPEATED_FIRING_MODE) {
    	g_live_fire_enabled = 0;
    	lights_set(LIGHTS_IDLE);
    	printf("Live-fire disabled.\r\n");
    }
    else {
    	lights_set(LIGHTS_SAFETY_OFF);
    }
}

/*
 * Checks the controller state and then triggers the solenoid
 * Also checks and adjusts the duration of the solenoid
 */
void do_solenoid(n64_state_t* state, n64_state_t* last_state) {

    //static uint32_t milliseconds=TRIGGER_DURATION;//, increment=10;
    /*
     * trigger the solenoid:
     *   Z to fire
     *   C Up to increment the time
     *   C Down to decrement the time
     */
    if (g_live_fire_enabled && n64_pressed(Z)) {
        printf("Z pressed, activating trigger solenoid\r\n");
		_fire_dart();
		speaker_play(SHOT_FIRED_MANUAL);
    }

    /* DISABLED FOR EXPO
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
    */
}

/*
 * This checks the D-pad and adjusts the servos accordingly,
 * moving them for as long as the button is held
 *
 * The analog stick also works and is even better
 * for fine control of the turret
 *
 */
void do_servos_manual(n64_state_t* state, n64_state_t* last_state) {
    // Digital Pitch control
    if (n64_pressed(Down)) {
        servo_do(Y_SET_FORWARD);

        //printf("servo_do Y_SET_FORWARD\r\n");
    }
    else if (n64_pressed(Up)) {
        servo_do(Y_SET_REVERSE);
        //printf("servo_do Y_SET_REVERSE\r\n");
    }
    else if (n64_released(Up) || n64_released(Down)) {
        servo_do(Y_SET_NEUTRAL);
        //printf("servo_do Y_SET_NEUTRAL\r\n");
    }

    // Digital Yaw control
    if (n64_pressed(Left)) {
        servo_do(X_SET_FORWARD);
        //set_x_servo_analog_pw(SERVO_FULL_FORWARD);
        //printf("servo_do X_SET_FORWARD\r\n");
    }
    else if (n64_pressed(Right)) {
        servo_do(X_SET_REVERSE);
        //set_x_servo_analog_pw(SERVO_FULL_REVERSE);
        //printf("servo_do X_SET_REVERSE\r\n");
    }
    else if (n64_released(Left) || n64_released(Right)) {
        servo_do(X_SET_NEUTRAL);
        //set_x_servo_analog_pw(SERVO_NEUTRAL);
        //printf("servo_do X_SET_NEUTRAL\r\n");
    }

    // Analog Pitch and Yaw
    static n64_to_pwm_t analog_pwm_vals;
    if (state->X_axis != last_state->X_axis ||
    	state->Y_axis != last_state->Y_axis ) {

		map_n64_analog_to_servo_pwm(state, &analog_pwm_vals);
		set_x_servo_analog_pw(analog_pwm_vals.x_pwm);
		set_y_servo_analog_pw(analog_pwm_vals.y_pwm);
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

// SCALE_PW translates a numeric value to clock cycles for PW
#define X_SCALE_PW 400
#define Y_SCALE_PW 500

// amount of frames on target required before firing
#define ON_TARGET_FRAMES 10

// lambda value for the exponentially weighted moving average
#define EWMA_LAMBDA 0.15
#define EWMA_LAMBDA_INVERSE 0.85

void do_automatic(n64_state_t* state, n64_state_t* last_state) {
    if ( ! g_live_fire_enabled || ! n64_pressed(R)) {
        return;
    }
    /*lcd_state.target_mode = AUTO_MODE;*/

    printf("Beginning automated seek-and-destroy!\r\n");
    lights_set(LIGHTS_AUTO_MODE);

    // just a good idea
    servo_do(X_SET_NEUTRAL);
    servo_do(Y_SET_NEUTRAL);

    // turn on the laser
    //MSS_GPIO_set_output(MSS_GPIO_0, 1);

    int active = 1;
    target_pos_t target;

    uint32_t x_pw = SERVO_NEUTRAL;
    uint32_t y_pw = SERVO_NEUTRAL;
    uint32_t new_x_pw, new_y_pw;
    uint8_t x_on_target = 0;
    uint8_t y_on_target = 0;
    uint32_t junk_frame_count = 0;

    lcd_state.target_mode = MANUAL_MODE;
    
    speaker_play(BEGIN_AUTO);
    while (active) {

        if ( Pixy_get_target_location(&target) == -1 ) {
        	// This seems to be resetting the servos immeadiately after setting them
        	// so we might have a problem with reading too fast from the pixy...

    		//set_x_servo_analog_pw(SERVO_NEUTRAL);
    		//set_y_servo_analog_pw(SERVO_NEUTRAL);
        	//printf("x: %d\ty: %d\r\n", -1, -1);

        	// TODO use a defined value
        	use_me_carefully_ms_delay_timer(5);
        	junk_frame_count++;

        	if (junk_frame_count == 20) {
        		//servo_do(X_SET_NEUTRAL);
        		//servo_do(Y_SET_NEUTRAL);
            	set_x_servo_analog_pw(SERVO_NEUTRAL);
            	set_y_servo_analog_pw(SERVO_NEUTRAL);
        	}
        }
        // else, target found, coordinates valid
        else {
        	printf("x: %d\ty: %d\r\n", target.x, target.y);
		    junk_frame_count = 0;

        	// X servo adjustment
		    if (target.x < PIXY_X_CENTER) {
		        // go left (forward -> 2ms)
		    	new_x_pw = SERVO_DEADBAND_UPPER + X_SCALE_PW*(PIXY_X_CENTER - target.x);
		    	// upper and lower pw bounds
		    	//new_x_pw = (new_x_pw < X_FORWARD_MIN) ? X_FORWARD_MIN : new_x_pw;
		    	new_x_pw = (new_x_pw > SERVO_HALF_FORWARD) ? SERVO_HALF_FORWARD : new_x_pw;
		    }
		    else if (target.x > PIXY_X_CENTER) {
		        // go right (reverse -> 1ms)
		    	new_x_pw = SERVO_DEADBAND_LOWER - X_SCALE_PW*(target.x - PIXY_X_CENTER);
		    	// upper and lower pw bounds
		    	//new_x_pw = (new_x_pw > X_REVERSE_MIN) ? X_REVERSE_MIN : new_x_pw;
		    	new_x_pw = (new_x_pw < SERVO_HALF_REVERSE) ? SERVO_HALF_REVERSE : new_x_pw;
		    }

		    if (target.x > (PIXY_X_CENTER-PIXY_X_DEADZONE)
		    		 && target.x < (PIXY_X_CENTER+PIXY_X_DEADZONE)){
		    	x_on_target++; // use to enforce on target count before firing
		    	printf("X on target!\r\n");
		    }
		    else {
		    	x_on_target = 0; // (x_on_target > 0)? x_on_target-- : 0;
		    }
		    x_pw = (uint32_t)(EWMA_LAMBDA * new_x_pw) + (uint32_t)(EWMA_LAMBDA_INVERSE * x_pw);

		    // Y servo adjustment
		    if (target.y < PIXY_Y_CENTER) {
		        // go up (reverse -> 1ms)
		    	new_y_pw = SERVO_DEADBAND_LOWER - Y_SCALE_PW*(PIXY_Y_CENTER - target.y);
		    	// upper and lower pw bounds
		    	//new_y_pw = (new_y_pw > Y_REVERSE_MIN) ? Y_REVERSE_MIN : new_y_pw;
		    	new_y_pw = (new_y_pw < SERVO_HALF_REVERSE) ? SERVO_HALF_REVERSE : new_y_pw;
		    }
		    else if (target.y > PIXY_Y_CENTER) {
		        // go up (forward -> 2ms)
		    	new_y_pw = SERVO_DEADBAND_UPPER + Y_SCALE_PW*(target.y - PIXY_Y_CENTER);
		    	// upper and lower pw bounds
		    	//new_y_pw = (new_y_pw < Y_FORWARD_MIN) ? Y_FORWARD_MIN : new_y_pw;
		    	new_y_pw = (new_y_pw > SERVO_HALF_FORWARD) ? SERVO_HALF_FORWARD : new_y_pw;
		    }

		    if (target.y > (PIXY_Y_CENTER-PIXY_Y_DEADZONE)
		    		 && target.y < (PIXY_Y_CENTER+PIXY_Y_DEADZONE)){
		    	printf("Y on target!\r\n");
		    	y_on_target++;
		    }
		    else {
		    	y_on_target = 0;
		    }
		    y_pw = (uint32_t)(EWMA_LAMBDA * new_y_pw) + (uint32_t)(EWMA_LAMBDA_INVERSE * y_pw);

        	// set the servos
        	set_x_servo_analog_pw(x_pw);
        	set_y_servo_analog_pw(y_pw);

        	// Update the display
        	//start_hardware_timer();
        	trg.x = disp_scale_x(target.x);
        	trg.y = disp_scale_y(target.y);
        	lcd_state.target_pos = &trg;
        	lcd_last_state.target_pos = &lasttrg;
        	disp_update((void*)&g_disp_update_argument);
        	start_hardware_timer();
        	// spin lock until screen finishes updating
        	//while (g_disp_update_lock) {}

        	// fire a dart, then exit the loop after getting n64 state
        	if ((x_on_target > ON_TARGET_FRAMES) && (y_on_target > ON_TARGET_FRAMES)) {
        		printf("Target acquired, firing!\r\n");
        		_fire_dart();
        		servo_do(X_SET_NEUTRAL);
                servo_do(Y_SET_NEUTRAL);
        		active = 0;
        	}
        }
		lasttrg = trg;
        if (n64_pressed(B)) {
            active = 0;
            servo_do(X_SET_NEUTRAL);
            servo_do(Y_SET_NEUTRAL);
            g_live_fire_enabled = 0;
            printf("Aborting seek-and-destroy & disabling live-fire\r\n");
            lights_set(LIGHTS_IDLE);
        }

        *last_state = *state;
        n64_get_state( state );
    }
    lcd_state.target_mode = MANUAL_MODE;
    
    speaker_play(END_AUTO);

    // shut off the laser
    //MSS_GPIO_set_output(MSS_GPIO_0, 0);
}
