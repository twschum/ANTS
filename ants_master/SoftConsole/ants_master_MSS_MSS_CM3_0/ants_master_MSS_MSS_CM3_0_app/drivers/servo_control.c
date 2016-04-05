
#include "servo_control.h"

#define _servo_set(ADDR,VALUE) { *((volatile uint32_t*)ADDR) = VALUE; }

void set_x_servo_analog_pw(uint32_t new_pw) {
    static uint32_t current_pw = 0xFFFFFFFF;

    if (new_pw == current_pw) {
        return;
    }

    _servo_set(X_SET_SERVO, new_pw);
    current_pw = new_pw;
    printf("X servo set to: %d\r\n", current_pw);
}

void set_y_servo_analog_pw(uint32_t new_pw) {
    static uint32_t current_pw = 0xFFFFFFFF;

    if (new_pw == current_pw) {
        return;
    }
    _servo_set(Y_SET_SERVO, new_pw);
    current_pw = new_pw;
    printf("Y servo set to: %d\r\n", current_pw);
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
