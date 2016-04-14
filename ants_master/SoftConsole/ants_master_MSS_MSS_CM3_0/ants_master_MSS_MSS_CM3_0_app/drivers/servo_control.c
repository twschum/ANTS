
#include "servo_control.h"

//void servo_do(uint32_t* addr) {*addr = (uint32_t) 170000;}

void set_x_servo_analog_pw(uint32_t new_pw) {
    static uint32_t current_pw = 0xFFFFFFFF;

    if (new_pw == current_pw) {
        return;
    }

    volatile uint32_t* address = (volatile uint32_t*)X_SET_SERVO;
    *address = new_pw;

    current_pw = new_pw;
    printf("X servo set to: %d\r\n", current_pw);
}

void set_y_servo_analog_pw(uint32_t new_pw) {
    static uint32_t current_pw = 0xFFFFFFFF;

    if (new_pw == current_pw) {
        return;
    }

    volatile uint32_t* address = (volatile uint32_t*)Y_SET_SERVO;
    *address = new_pw;

    current_pw = new_pw;
    printf("Y servo set to: %d\r\n", current_pw);
}

void servos_print_counts() {
	volatile uint32_t* x_f_count = (volatile uint32_t*)X_READ_FORWARD;
	volatile uint32_t* x_r_count = (volatile uint32_t*)X_READ_REVERSE;
	volatile uint32_t* y_f_count = (volatile uint32_t*)Y_READ_FORWARD;
	volatile uint32_t* y_r_count = (volatile uint32_t*)Y_READ_REVERSE;

	printf("X Forward: %d,  X Reverse: %d\r\n", *x_f_count, *x_r_count);
	//printf("Y Forward: %d,  Y Reverse: %d\r\n", *y_f_count, *y_r_count);

}