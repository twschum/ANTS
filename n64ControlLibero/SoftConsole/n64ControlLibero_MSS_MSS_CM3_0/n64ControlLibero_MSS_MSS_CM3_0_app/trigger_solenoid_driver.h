/*
 * Driver for our solenoid which is
 * the pnuematic trigger for the launcher
 *
 */

#include <inttypes.h>

#ifdef DDEBUG
#include <stdio.h>
#endif

#define SOLENOID_ADDR 0x40050100
#define US_MULT 100
#define MS_MULT 1000

// activate the trigger for ms miliseconds
void trigger_solenoid_activate(uint32_t ms) {

    uint32_t cycles = ms * MS_MULT;
    volatile uint32_t* address = (volatile uint32_t *)SOLENOID_ADDR;
    *address = cycles;

#ifdef DDEBUG
    printf("Activating trigger pin for %d ms == %d cycles\r\n", ms, cycles);
#endif
}

