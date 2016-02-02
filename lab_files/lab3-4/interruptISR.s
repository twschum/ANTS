    @ string to pass to printf
    waitStr:    .asciz "Handling IRQ FABINT %d\n\r"

        .align 2

    @ Global variables (must be in the .data section)

        .data

    count:  .word   0   @ The label count is the address to a 32 bit (word) memory locaiton initialized to zero
                @ The value of count must be passed to printf as separate argument (register)

        .text
        .syntax unified
        .thumb

    @ make label Fabric_IRQHandler availble to references outside of this file
    .global Fabric_IRQHandler

    @ function declaration that corresponds to week declaration in startupWithInt.s
    .type   Fabric_IRQHandler, %function

    Fabric_IRQHandler:
        movw    r2, #:lower16:count
        movt    r2, #:upper16:count
        ldr     r1, [r2]

        movw    r0, #:lower16:waitStr
        movt    r0, #:upper16:waitStr
        bl printf373

        add     r1, r1, #1
        str     r1, [r2]

        bx lr

