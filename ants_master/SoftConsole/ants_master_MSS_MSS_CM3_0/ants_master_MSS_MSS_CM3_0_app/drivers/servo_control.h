/*
 * Driver for our servos module
 *
 */

#include <inttypes.h>
#include <stdio.h>

#define X_SET_SERVO       0x40050100
#define X_SET_NEUTRAL     0x40050104
#define X_SET_FORWARD     0x40050108
#define X_SET_REVERSE     0x4005010c
#define READ_FORWARD_STOP 0x40050110
#define READ_REVERSE_STOP 0x40050114

#define Y_SET_SERVO       0x40050140
#define Y_SET_NEUTRAL     0x40050144
#define Y_SET_FORWARD     0x40050148
#define Y_SET_REVERSE     0x4005014c
#define READ_UPPER_STOP   0x40050150
#define READ_LOWER_STOP   0x40050154

#define SERVO_FULL_REVERSE 100000
#define SERVO_HALF_REVERSE 125000
#define SERVO_NEUTRAL      150000
#define SERVO_HALF_FORWARD 175000
#define SERVO_FULL_FORWARD 200000

#define SERVO_DEADBAND_LOWER 147000
#define SERVO_DEADBAND_UPPER 155000

// from observation
#define Y_FORWARD_MIN 161000
#define Y_REVERSE_MIN 138000
#define X_FORWARD_MIN 164500
#define X_REVERSE_MIN 138000

// Use this marco to do all the write-triggered actions
#define servo_do(ADDR) ( *((volatile uint32_t*)ADDR) = (uint32_t)0x00000000 )

// read and write
#define servo_r(ADDR) *((volatile uint32_t*)ADDR)
#define servo_w(ADDR, VALUE) (*((volatile uint32_t*)ADDR) = (uint32_t)VALUE)

// set the x position using any value
// might map this to the analog stick
void set_x_servo_analog_pw(uint32_t new_pw);
void set_y_servo_analog_pw(uint32_t new_pw);

// Reads out the forward and reverse counts
void servos_print_counts();


