
#include "servo_control.h"

uint32_t _set_servo(uint32_t pw, volatile uint32_t* servo_address) {

    // capture how long the servo had been running at that pulse width
    uint32_t runtime = *servo_address;

    // set the new pulse width
    *servo_address = pw;

    return runtime;
}

void set_x_servo(uint32_t new_pw) {
    static uint32_t current_pw = SERVO_NEUTRAL; // what it is currently set to

    if (new_pw == current_pw) {
        return;
    }
    _set_servo(new_pw, (volatile uint32_t*)X_SERVO_ADDR);

    current_pw = new_pw;
    printf("X servo set to: %d\r\n", current_pw);
}

void set_y_servo(uint32_t new_pw) {
    static uint32_t current_pw = SERVO_NEUTRAL;

    if (new_pw == current_pw) {
        return;
    }
    _set_servo(new_pw, (volatile uint32_t*)Y_SERVO_ADDR);

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
