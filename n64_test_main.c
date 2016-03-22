// #include <> mss stuff and shit for UART
//

#include <stdio.h>
#include <unistd.h>
#include "drivers/n64_driver.h"

int main() {

    n64_state_t n64_buttons;

    n64_reset();
    n64_enable();


    while (1) {
        n64_get_state( &n64_buttons );
        printf("A: %d    B: %d    Z: %d    Start: %d    Up: %d    Down: %d    Left: %d    Right: %d    L: %d    R: %d    C_Up: %d    C_Down: %d    C_Left: %d    C_Right: %d    X_axis: %3d    Y_axis: %3d\r\n",
                n64_buttons.A,
                n64_buttons.B,
                n64_buttons.Z,
                n64_buttons.Start,
                n64_buttons.Up,
                n64_buttons.Down,
                n64_buttons.Left,
                n64_buttons.Right,
                n64_buttons.L,
                n64_buttons.R,
                n64_buttons.C_Up,
                n64_buttons.C_Down,
                n64_buttons.C_Left,
                n64_buttons.C_Right,
                n64_buttons.X_axis,
                n64_buttons.Y_axis );
        sleep(1);
    }

}
