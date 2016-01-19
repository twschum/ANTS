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

	mov	r0, #24 @bits 24 - 31 are mapped to LEDS 0-7 respectively or D1-D8 on the kit
	bl	initGPIO @ Call initGPIO in gpio.s to initalize GPIO 24

	mov	r0, #0
	bl	setGPIO @ Call setGPIO in gpio.s to write 0 to GPIO output register

	movw r3, #:lower16:DELAY_CYCLES
	movt r3, #:upper16:DELAY_CYCLES

loop:
	mov	r1, #1
	lsl	r1, #24
	eor	r0, r1 @ Exclusive-OR (XOR)
	bl	setGPIO
	mov r2, #0
delay:
	add r2, r2, #1
	cmp r2, r3
	blt delay

	b loop
	.end
