/*
 * get distance
 */

#include "dsensor_driver.h"

// read current distance
float get_distance()
{
	volatile uint32_t* address = (volatile uint32_t*)DSNSR_ADDR;
	float distance_count = (float)(*address);
	return (distance_count * MULTIPLIER);
}

void print_distance()
{
	volatile uint32_t* distance_count = (volatile uint32_t*)DSNSR_ADDR;
	float distance = (*distance_count) * MULTIPLIER;
	//printf("Mult: %f\r\n", MULTIPLIER);
	printf("Distance (clk_counts): %d\r\n", *distance_count);
	printf("Distance (m): %f\r\n\r\n", distance);
}
