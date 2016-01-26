	.equ	STACK_TOP, 0x20000800

	.equ	DEVICE_BASE_ADDR, 0x40050100

    .equ    PULSE_BASE, 90000
    .equ    PULSE_DELTA, 12000
    .equ    PULSE_MIDDLE, 150000
    .equ    PULSE_TOP, 210000

	.section .int_vector,"a",%progbits @ First linker code section
	.global	 _start                    @ Linker entry point _start: .word	STACK_TOP, main
	@ End of int_vector section

	@ Standard text section
	.text
	.syntax	unified
	.thumb

	.type	main, %function
main:
	@ Load DEVICE_BASE_ADDR
	movw	r0, #:lower16:DEVICE_BASE_ADDR
	movt	r0, #:upper16:DEVICE_BASE_ADDR

    @ r2 is the current pulse width
    movw    r2, #:lower16:PULSE_MIDDLE
    movt    r2, #:upper16:PULSE_MIDDLE

    movw    r3, #:lower16:PULSE_BASE
    movt    r3, #:upper16:PULSE_BASE

    movw    r4, #:lower16:PULSE_DELTA
    movt    r4, #:upper16:PULSE_DELTA

    movw    r5, #:lower16:PULSE_TOP
    movt    r5, #:upper16:PULSE_TOP

poll:
    @ read the switches, mask bits
    ldr r1, [r0]
    and r1, r1, #3

    cmp r1, #0 @ both pressed
    mov r6, #1 @ flag for posedge only (pressed)
    beq poll
    cmp r1, #3 @ neither pressed
    mov r6, #0 @ flag for posedge only (not pressed)
    beq poll

    cmp r6, #1 @ only proceed if no buttons pressed
    beq poll

    cmp r1, #2 @ SW1 pressed
    beq SW1
    cmp r1, #1 @ SW2 pressed
    beq SW2

SW1: @ increment position
    cmp r2, r5
    beq poll

    add r2, r2, r4
    b write

SW2: @ decrement position
    cmp r2, r3
    beq poll

    sub r2, r2, r4
    b write

write:
    mov r6, #1 @ flag for posedge only (pressed)
    str r2, [r0, #4]
    b poll

	.end
