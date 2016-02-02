    .equ    DEVICE_BASE_ADDR, 0x40050000

    .equ    PULSE_BASE, 90000
    .equ    PULSE_DELTA, 6667
    .equ    PULSE_MIDDLE, 150000
    .equ    PULSE_TOP, 210000

    @ Standard text section
    .text
    strHello:    .asciz "Hello, my name in Inigo Montoya...\n\r"
    strWFI:    .asciz "wait for interrupt\n\r"
    .align 2

    .global main
    .syntax unified
    .thumb
    .type   main, %function

main:
    @ Initalize MSS UART 0
    movw    r0, #:lower16:g_mss_uart0
    movt    r0, #:upper16:g_mss_uart0
    movw    r1, #:lower16:57600         @ UART Baudrate
    movt    r1, #:upper16:57600
    mov     r2, #3
    bl      MSS_UART_init

    @ print via the serial port
    movw    r0, #:lower16:strHello
    movt    r0, #:upper16:strHello
    bl printf373

    @ enable FABINT
    mov r0, #31
    bl EnableIRQ

    @ TODO
    .word enabled
    .word direction

    @ initialize the servo at middle, going up
    movw    r2, #:lower16:PULSE_MIDDLE
    movt    r2, #:upper16:PULSE_MIDDLE
    str     r2, [r0]

wfi_loop:
    movw    r0, #:lower16:strWFI
    movt    r0, #:upper16:strWFI
    bl printf373
    wfi
    b wfi_loop


@ from button interrupt TODO
toggle_enable:



@ from FABINT TODO
timer_int_action:

    @ Load DEVICE_BASE_ADDR
    movw    r0, #:lower16:DEVICE_BASE_ADDR
    movt    r0, #:upper16:DEVICE_BASE_ADDR

    @ r2 is the current pulse width
    movw    r2, #:lower16:PULSE_MIDDLE
    movt    r2, #:upper16:PULSE_MIDDLE
    str     r2, [r0]

    movw    r3, #:lower16:PULSE_BASE
    movt    r3, #:upper16:PULSE_BASE

    movw    r4, #:lower16:PULSE_DELTA
    movt    r4, #:upper16:PULSE_DELTA

    movw    r5, #:lower16:PULSE_TOP
    movt    r5, #:upper16:PULSE_TOP

poll:
    mov r6, r0
    movw    r0, #:lower16:strWFI
    movt    r0, #:upper16:strWFI
    bl printf373
    mov r0, r6
    wfi

    @ read the switches, mask bits
    ldr r1, [r0]
    and r1, r1, #3

    cmp r1, #3 @ both pressed
    beq poll

    cmp r1, #0 @ neither pressed
    beq SW_NONE

    cmp r6, #1 @ only proceed if no buttons pressed
    beq poll

    cmp r1, #2 @ SW1 pressed
    beq SW1
    cmp r1, #1 @ SW2 pressed
    beq SW2

SW_NONE:
    mov r6, #0 @ flag for posedge only (not pressed)
    b poll

SW1: @ increment position (unless max)
    cmp r2, r5
    bge poll

    add r2, r2, r4
    b write

SW2: @ decrement position (unless min)
    cmp r2, r3
    ble poll

    sub r2, r2, r4
    b write

write:
    mov r6, #1 @ flag for posedge only (pressed)
    str r2, [r0]
    b poll

    .end
