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
    push    {lr}
    movw    r2, #:lower16:count
    movt    r2, #:upper16:count
    ldr     r1, [r2]

    add     r0, r1, #1
    str     r0, [r2]

    movw    r0, #:lower16:waitStr
    movt    r0, #:upper16:waitStr

    bl printf373

    pop    {lr}
    bx lr

@ Enable the IRQ
@ Inputs: IRQ number in r0
@ Output:
    .equ    NVIC_ISER0, 0xE000E100
    .global EnableIRQ
    .type   EnableIRQ, %function
@ void EnableIRQ(int irq_num)
EnableIRQ:
    @ Load NVIC_ISER (Set-Enable Registers) start address
    movw    r1, #:lower16:NVIC_ISER0
    movt    r1, #:upper16:NVIC_ISER0

    @ Select register to modify
    lsr     r2, r0, #5  @ modulo 32
    lsl     r2, r2, #2  @ mul 4
    add     r1, r1, r2  @ now have register

    @ Select bit to set in the register
    and     r0, r0, #0x001f

    @ Set bit
    mov     r3, #1
    lsl     r0, r3, r0
    str     r0, [r1]

    bx  lr
