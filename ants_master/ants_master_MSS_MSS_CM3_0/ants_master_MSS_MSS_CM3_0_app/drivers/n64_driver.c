


#include "n64_driver.h"

// read the current state
void n64_get_state(n64_state_t* state)
{
    volatile n64_state_t* address = (volatile n64_state_t*)N64_ADDR;
    *state = *address;
}

// send a reset signal
void n64_reset()
{
    volatile uint32_t* address = (volatile uint32_t*)N64_ADDR;
    *address = N64_RESET;
}

// enable button polling
void n64_enable()
{
    volatile uint32_t* address = (volatile uint32_t*)N64_ADDR;
    *address = N64_GET_BUTTONS;
}

// print the state thru printf
void n64_print_state(n64_state_t* state) {

    printf("A: %d  B: %d  Z: %d  Start: %d  Up: %d  Down: %d  Left: %d  Right: %d  L: %d  R: %d  C_Up: %d  C_Down: %d  C_Left: %d  C_Right: %d  X_axis: %3d  Y_axis: %3d\r\n",
        state->A,
        state->B,
        state->Z,
        state->Start,
        state->Up,
        state->Down,
        state->Left,
        state->Right,
        state->L,
        state->R,
        state->C_Up,
        state->C_Down,
        state->C_Left,
        state->C_Right,
        state->X_axis,
        state->Y_axis
    );
}

#define SERVO_NEUTRAL 150000
uint32_t _map_n64_to_pwm_val(int8_t val) {

	// apply deadzone
	if (val < N64_ANALOG_DEADZONE && val > -N64_ANALOG_DEADZONE) {
		val = 0;
	}
	// apply upper bound
	if (val > N64_ANALOG_MAX) {
		val = N64_ANALOG_MAX;
	}
	else if (val < -N64_ANALOG_MAX) {
		val = -N64_ANALOG_MAX;
	}

	// calculate scaling factor
	int32_t scaling_factor = val * N64_ANALOG_TO_PWM_CYCLES;

	// final pwm value
	return SERVO_NEUTRAL - scaling_factor;
}


void map_n64_analog_to_servo_pwm(n64_state_t* state, n64_to_pwm_t* pwm_vals) {

	pwm_vals->x_pwm = _map_n64_to_pwm_val(state->X_axis);
	pwm_vals->y_pwm = _map_n64_to_pwm_val(state->Y_axis);
}
