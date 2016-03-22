
#include "n64_driver.h"

// read the current state
void n64_get_state(n64_state_t* state)
{
    volatile n64_state_t* address = (volatile n64_state_t*)N64_ADDR;
    *state = *address;
}

// send a reset signal
void n64_reset()
{
    volatile uint32_t* address = (volatile uint32_t*)N64_ADDR;
    *address = (uint32_t)N64_RESET;
}

// enable button polling
void n64_enable()
{
    volatile uint32_t* address = (volatile uint32_t*)N64_ADDR;
    *address = (uint32_t)N64_GET_BUTTONS;
}
