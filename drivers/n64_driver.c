
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
    *address = N64_RESET;
}

// enable button polling
void n64_enable()
{
    volatile uint32_t* address = (volatile uint32_t*)N64_ADDR;
    *address = N64_GET_BUTTONS;
}

// print the state thru printf
void n64_print_state(n64_state_t* state) {

    printf("A: %d  B: %d  Z: %d  Start: %d  Up: %d  Down: %d  Left: %d  Right: %d  L: %d  R: %d  C_Up: %d  C_Down: %d  C_Left: %d  C_Right: %d  X_axis: %3d  Y_axis: %3d\r\n",
        state->A,
        state->B,
        state->Z,
        state->Start,
        state->Up,
        state->Down,
        state->Left,
        state->Right,
        state->L,
        state->R,
        state->C_Up,
        state->C_Down,
        state->C_Left,
        state->C_Right,
        state->X_axis,
        state->Y_axis
    );
}
