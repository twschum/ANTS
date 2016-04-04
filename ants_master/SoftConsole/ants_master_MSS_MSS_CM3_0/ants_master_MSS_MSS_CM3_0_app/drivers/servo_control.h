/*
 * Driver for our servos module
 *
 */

#include <inttypes.h>
#include <stdio.h>

#define X_SET_SERVO      0x40050100
#define X_SET_NEUTRAL    0x40050101
#define X_SET_FORWARD    0x40050102
#define X_SET_REVERSE    0x40050103
#define X_SET_ZERO       0x40050104
#define X_RETURN_TO_ZERO 0x40050105
#define X_READ_FORWARD   0x40050108
#define X_READ_REVERSE   0x40050109

#define Y_SET_SERVO      0x40050110
#define Y_SET_NEUTRAL    0x40050111
#define Y_SET_FORWARD    0x40050112
#define Y_SET_REVERSE    0x40050113
#define Y_SET_ZERO       0x40050114
#define Y_RETURN_TO_ZERO 0x40050115
#define Y_READ_FORWARD   0x40050118
#define Y_READ_REVERSE   0x40050119

#define SERVO_FULL_REVERSE 100000
#define SERVO_HALF_REVERSE 125000
#define SERVO_NEUTRAL      150000
#define SERVO_HALF_FORWARD 175000
#define SERVO_FULL_FORWARD 200000

// Use this marco to do all the write-triggered actions
#define servo_do(ADDR) { *((volatile uint32_t*)ADDR) = 0 }

// Use this macro to get (X|Y)_READ_(FORWARD|REVERSE)
#define servo_read(ADDR,RETURN) { *RETURN = *((volatile uint32_t*)ADDR) }

// set the x position using any value
// might map this to the alalog stick
void set_x_servo_analog_pw(uint32_t new_pw);
void set_y_servo_analog_pw(uint32_t new_pw);

// move thru the servo half and full speeds
// incrementing based on last pos
// essentially depricated now...
uint32_t increment_forward_speed(uint32_t pos);
uint32_t increment_backward_speed(uint32_t pos);

