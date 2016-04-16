/*
 *
 * 	Driver for our Distance Sensor
 *
 */

#include <inttypes.h>
#include <stdio.h>

#define DSNSR_ADDR		0x40050200
#define MULTIPLIER		0.00000172789115

float get_distance();
void print_distance();
