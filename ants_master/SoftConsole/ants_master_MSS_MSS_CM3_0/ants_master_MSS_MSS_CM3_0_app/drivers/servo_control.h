/*
 * Driver for our servos module
 *
 */

#include <inttypes.h>
#include <stdio.h>

#define X_SERVO_ADDR 0x40050100
#define Y_SERVO_ADDR 0x40050104

#define SERVO_FULL_REVERSE 100000
#define SERVO_HALF_REVERSE 125000
#define SERVO_NEUTRAL 150000
#define SERVO_HALF_FORWARD 175000
#define SERVO_FULL_FORWARD 200000

// set the x position using the defined values
void set_x_servo(uint32_t pos);

// set the y position using the defined values
void set_y_servo(uint32_t pos);

