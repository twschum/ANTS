    .equ    DEVICE_BASE_ADDR, 0x40050000

    .equ    PULSE_BASE, 90000
    .equ    PULSE_DELTA, 6667
    .equ    PULSE_MIDDLE, 150000
    .equ    PULSE_TOP, 210000

    @ Standard text section
    .text
    strHello:  .asciz "Hello, my name in Inigo Montoya...\n\r"
    strWFI:    .asciz "(busy) wait for interrupt\n\r"
    .align 2
    enabled:   .word 0
    direction: .word 0
    position:  .word PULSE_MIDDLE

    .global main
    .syntax unified
    .thumb
    .type   main, %function

main:
    @ initialize the servo at middle, going up
    movw    r0, #:lower16:DEVICE_BASE_ADDR
    movt    r0, #:upper16:DEVICE_BASE_ADDR
    movw    r1, #:lower16:PULSE_MIDDLE
    movt    r1, #:upper16:PULSE_MIDDLE
    str     r1, [r0]

    @ Initalize MSS UART 0
    movw    r0, #:lower16:g_mss_uart0
    movt    r0, #:upper16:g_mss_uart0
    movw    r1, #:lower16:57600         @ UART Baudrate
    movt    r1, #:upper16:57600
    mov     r2, #3                      @ COM3
    bl      MSS_UART_init

    @ print via the serial port
    movw    r0, #:lower16:strHello
    movt    r0, #:upper16:strHello
    bl printf37

    @ enable FABINT
    mov r0, #31
    bl EnableIRQ


@ main loop for the servo
wfi_loop:
    movw    r0, #:lower16:strWFI
    movt    r0, #:upper16:strWFI
    bl printf373
busy: b bysy
    b wfi_loop


@ called by button interrupt
toggle_enable:
    movw    r0, #:lower16:enable
    movt    r0, #:upper16:enable
    ldr     r1, [r0]
    eor     r1, r1, #1
    str     r1, [r0]
    bx lr



@ from FABINT (timer interrupt)
timer_int_action:

    @ check enabled
    movw    r0, #:lower16:enabled
    movt    r0, #:upper16:enabled
    ldr     r1, [r0]
    cmp     r1, #0
    beq     return

    @ determine direction
    movw    r0, #:lower16:direction
    movt    r0, #:upper16:direction
    ldr     r1, [r0]
    cmp     r1, #0

    @ load current position
    movw    r0, #:lower16:position
    movt    r0, #:upper16:position
    ldr     r2, [r0]

    @ change position
    beq     increment_pos

decrement_pos: @ decrement position (unless min)
    movw    r3, #:lower16:PULSE_BASE
    movt    r3, #:upper16:PULSE_BASE
    cmp     r2, r3
    ble     toggle_direction

    movw    r4, #:lower16:PULSE_DELTA
    movt    r4, #:upper16:PULSE_DELTA
    sub     r2, r2, r4
    b       write

increment_pos: @ increment position (unless max)
    movw    r3, #:lower16:PULSE_TOP
    movt    r3, #:upper16:PULSE_TOP
    cmp     r2, r3
    bge     toggle_direction

    movw    r4, #:lower16:PULSE_DELTA
    movt    r4, #:upper16:PULSE_DELTA
    add     r2, r2, r4
    b       write

write: @ write pulse width to device AND memory
    movw    r0, #:lower16:DEVICE_BASE_ADDR
    movt    r0, #:upper16:DEVICE_BASE_ADDR
    str     r2, [r0]

    movw    r0, #:lower16:position
    movt    r0, #:upper16:position
    str     r2, [r0]
    b return

toggle_direction:
    movw    r0, #:lower16:direction
    movt    r0, #:upper16:direction
    ldr     r1, [r0]
    eor     r1, r1, #1
    str     r1, [r0]

return:
    bx lr

    .end
