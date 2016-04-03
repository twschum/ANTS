
#include "servo_control.h"

void set_x_servo(uint32_t cycles) {

    volatile uint32_t* address = (volatile uint32_t*)X_SERVO_ADDR;
    *address = cycles;

    x_servo = cycles;
    printf("X servo set to: %d\r\n", x_servo);
}

void set_y_servo(uint32_t cycles) {

    volatile uint32_t* address = (volatile uint32_t*)Y_SERVO_ADDR;
    *address = cycles;

    y_servo = cycles;
    printf("Y servo set to: %d\r\n", y_servo);
}

uint32_t increment_forward_speed(uint32_t pos) {
    if (pos == SERVO_FULL_REVERSE) {
        return SERVO_HALF_REVERSE;
    }
    else if (pos == SERVO_HALF_REVERSE) {
        return SERVO_NEUTRAL;
    }
    else if (pos == SERVO_NEUTRAL) {
        return SERVO_HALF_FORWARD;
    }
    else if (pos == SERVO_HALF_FORWARD) {
        return SERVO_FULL_FORWARD;
    }
    else if (pos == SERVO_FULL_FORWARD) {
        return SERVO_FULL_FORWARD;
    }
    else {
        return pos;
    }
}

uint32_t increment_backward_speed(uint32_t pos) {
    if (pos == SERVO_FULL_REVERSE) {
        return SERVO_FULL_REVERSE;
    }
    else if (pos == SERVO_HALF_REVERSE) {
        return SERVO_FULL_REVERSE;
    }
    else if (pos == SERVO_NEUTRAL) {
        return SERVO_HALF_REVERSE;
    }
    else if (pos == SERVO_HALF_FORWARD) {
        return SERVO_NEUTRAL;
    }
    else if (pos == SERVO_FULL_FORWARD) {
        return SERVO_HALF_FORWARD;
    }
    else {
        return pos;
    }
}
