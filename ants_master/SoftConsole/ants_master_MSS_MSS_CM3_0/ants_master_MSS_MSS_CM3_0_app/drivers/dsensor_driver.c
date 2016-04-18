/*
 * get distance
 */

#include "dsensor_driver.h"

// read current distance
float get_distance()
{
	volatile uint32_t* distance_count = (volatile uint32_t*)DSNSR_ADDR;
	float distance = (*distance_count) * (CENTIMETER * MULTIPLIER);
	return distance;
}

void print_distance()
{
	volatile uint32_t* distance_count = (volatile uint32_t*)DSNSR_ADDR;
	float distance = (*distance_count) * MULTIPLIER;
	printf("Distance (m): %f\r\n\r\n", distance);
}
