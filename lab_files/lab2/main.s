	.equ	STACK_TOP, 0x20000800
	.equ	SYSREG_SOFT_RST_CR, 0xE0042030
	.equ 	DELAY_CYCLES, 10000000

	.section .int_vector,"a",%progbits @ First linker code section
	.global	 _start                    @ Linker entry point
_start:
	.word	STACK_TOP, main
	@ End of int_vector section

	@ Standard text section
	.text
	.syntax	unified
	.thumb

	.type	main, %function
main:
	@ Load SYSREG_SOFT_RST_CR address
	movw	r0, #:lower16:SYSREG_SOFT_RST_CR
	movt	r0, #:upper16:SYSREG_SOFT_RST_CR
	@ Reset GPIO hardware
	ldr	r1, [r0, #0]
	orr	r1, #0x4000
	str	r1, [r0, #0]
	@ Take GPIO hardware out of reset
	ldr	r1, [r0, #0]
	mvn	r2, #0x4000 @ move bitwise negation of 0x4000 into r2
	and	r1, r2
	str	r1, [r0, #0]

	@ Initialize the 8 LEDs for GPIO
	mov r5, #0  @ control flow reg
	mov r6, #8  @ number of time to loop
initloop:
	add r0, r5, #24 @bits 24 - 31 are mapped to LEDS 0-7 respectively or D1-D8 on the kit
	bl	initGPIO @ Call initGPIO in gpio.s to initalize GPIO 24
	add r5, r5, #1
	cmp r5, r6
	blt initloop

	@ Call setGPIO in gpio.s to write 1s to GPIO output register
	movw	r0, #0
	movt	r0, #&fe00
	bl	setGPIO

	@ setting delay constant
	movw r3, #:lower16:DELAY_CYCLES
	movt r3, #:upper16:DELAY_CYCLES
	@ the boundary value, for resetting the loop
	movw r4, #0
	movt r4, #&7f00
loop:

	bl setGPIO

	lsl r0, #1

	@ boundary condition
	cmp r4, r0
	beq loop

	@ shift in a one at bit 24
	mov	r1, #1
	lsl	r1, #24
	eor	r0, r1 @ XOR

delay:
	add r2, r2, #1
	cmp r2, r3
	blt delay

	b loop
	.end
