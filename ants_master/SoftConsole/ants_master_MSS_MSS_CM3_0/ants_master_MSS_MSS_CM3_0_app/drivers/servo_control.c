
#include "servo_control.h"

void set_x_servo_analog_pw(uint32_t new_pw) {
    static uint32_t current_pw = 0xFFFFFFFF;

    if (new_pw == current_pw) {
        return;
    }

    servo_w(X_SET_SERVO, new_pw);

    current_pw = new_pw;
    printf("X servo set to: %d\r\n", current_pw);
}

void set_y_servo_analog_pw(uint32_t new_pw) {
    static uint32_t current_pw = 0xFFFFFFFF;

    if (new_pw == current_pw) {
        return;
    }

    servo_w(Y_SET_SERVO, new_pw);

    current_pw = new_pw;
    printf("Y servo set to: %d\r\n", current_pw);
}
