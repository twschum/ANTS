/*
 *
 * 	Driver for our Distance Sensor
 *
 */

#include <inttypes.h>
#include <stdio.h>

#define DSNSR_ADDR		0x40050200
#define	IN_to_METER		0.0254
#define CLK_FREQ		100000000
#define	SEC_to_IN		6802721.0884
#define SEC_to_METER	172789.115645
#define MULTIPLIER		0.00172789115

float get_distance();
void print_distance();
