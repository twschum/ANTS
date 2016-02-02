@ string to pass to printf
waitStr:    .asciz "Handling IRQ FABINT %d\n\r"

    .align 2

@ Global variables (must be in the .data section)

    .data

count:  .word   0   @ The label count is the address to a 32 bit (word) memory locaiton initialized to zero
            @ The value of count must be passed to printf as separate argument (register)

    .text
    GPIO1intStr: .asciz "Interrupt occurred - GPIO 1 \n"
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

    bl timer_int_action
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

.global GPIO1_IRQHandler
    .type   GPIO1_IRQHandler, %function



GPIO1_IRQHandler:
    @ Pulse GPIO0 output
    push {lr}
    mov r0, #0      @ MSS_GPIO_0
    mov r1, #0x1    @ set GPIO0 output high
    bl  MSS_GPIO_set_output

    @ Print interrupt string
    @ remember to initialize the UART in the main
    movw    r0, #:lower16:GPIO1intStr @ "Interrupt occurred - GPIO 1 \n"
    movt    r0, #:upper16:GPIO1intStr
    bl  printf373

    @enable/disable servo
    bl toggle_enable

    @ Clear MSS GPIO pending
    @ While is not necessary to clear a pending interrupt in the NVIC,
    @ it is necessary to clear the respective MSS GPIO interrupting source.
    @ Be sure to do this or your interrupt will occur continuously.
    mov r0, #1
    bl  MSS_GPIO_clear_irq

    mov r0, #0      @ MSS_GPIO_0
    mov r1, #0x0    @ set GPIO0 output low
    bl  MSS_GPIO_set_output
    pop {lr}
    bx  lr
