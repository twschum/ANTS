	.equ GPIO_OUT_BASE, 0x40013000
	.equ GPIO_OUT, 0x40013088

	.text
	.syntax	unified
	.thumb

@ Configure the GPIOx to output
@ Inputs: GPIO number is provided in r0
@ Output:
	.global	initGPIO
	.type	initGPIO, %function
initGPIO:
	@ Load GPIO_OUT_BASE address
	movw	r1, #:lower16:GPIO_OUT_BASE
	movt	r1, #:upper16:GPIO_OUT_BASE

	@ Calculate the GPIOx register address
	@ left shift by 2 => i*4
	@ GPIO_OUT_BASE + i*4
	lsl r0, #2
	add r0, r0, r1

	@ Write 1 to config register to set GPIO as output
	mov r2, #1
	str r2, [r0]

	bx	lr @ Return

@ Set the value of all 32 GPIO output bits based on the input bits
@ Inputs: 32bit value is provided in r0
@ Output:
	.global	setGPIO
	.type	setGPIO, %function
setGPIO:
	@ Load GPIO_OUT register address
	movw	r1, #:lower16:GPIO_OUT
	movt	r1, #:upper16:GPIO_OUT

	@ Write 32bit value to GPIO output register
	str r0, [r1]

	bx	lr @ Return

