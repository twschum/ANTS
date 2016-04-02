
#include "servo_control.h"

void set_x_servo(uint32_t cycles) {

    volatile uint32_t* address = (volatile uint32_t*)X_SERVO_ADDR;
    *address = cycles;
}

void set_y_servo(uint32_t cycles) {

    volatile uint32_t* address = (volatile uint32_t*)Y_SERVO_ADDR;
    *address = cycles;
}
