################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/mss_nvm/mss_nvm.c 

OBJS += \
./drivers/mss_nvm/mss_nvm.o 

C_DEPS += \
./drivers/mss_nvm/mss_nvm.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/mss_nvm/%.o: ../drivers/mss_nvm/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU C Compiler'
	arm-none-eabi-gcc -mthumb -mcpu=cortex-m3 -IC:\Actelprj\msstimer\msstimer\SoftConsole\mytimer_MSS_MSS_CM3_0\mytimer_MSS_MSS_CM3_0_hw_platform -IC:\Actelprj\msstimer\msstimer\SoftConsole\mytimer_MSS_MSS_CM3_0\mytimer_MSS_MSS_CM3_0_hw_platform\CMSIS -IC:\Actelprj\msstimer\msstimer\SoftConsole\mytimer_MSS_MSS_CM3_0\mytimer_MSS_MSS_CM3_0_hw_platform\CMSIS\startup_gcc -IC:\Actelprj\msstimer\msstimer\SoftConsole\mytimer_MSS_MSS_CM3_0\mytimer_MSS_MSS_CM3_0_hw_platform\drivers -IC:\Actelprj\msstimer\msstimer\SoftConsole\mytimer_MSS_MSS_CM3_0\mytimer_MSS_MSS_CM3_0_hw_platform\drivers\mss_gpio -IC:\Actelprj\msstimer\msstimer\SoftConsole\mytimer_MSS_MSS_CM3_0\mytimer_MSS_MSS_CM3_0_hw_platform\drivers\mss_nvm -IC:\Actelprj\msstimer\msstimer\SoftConsole\mytimer_MSS_MSS_CM3_0\mytimer_MSS_MSS_CM3_0_hw_platform\drivers\mss_pdma -IC:\Actelprj\msstimer\msstimer\SoftConsole\mytimer_MSS_MSS_CM3_0\mytimer_MSS_MSS_CM3_0_hw_platform\drivers\mss_rtc -IC:\Actelprj\msstimer\msstimer\SoftConsole\mytimer_MSS_MSS_CM3_0\mytimer_MSS_MSS_CM3_0_hw_platform\drivers\mss_timer -IC:\Actelprj\msstimer\msstimer\SoftConsole\mytimer_MSS_MSS_CM3_0\mytimer_MSS_MSS_CM3_0_hw_platform\hal -IC:\Actelprj\msstimer\msstimer\SoftConsole\mytimer_MSS_MSS_CM3_0\mytimer_MSS_MSS_CM3_0_hw_platform\hal\CortexM3 -IC:\Actelprj\msstimer\msstimer\SoftConsole\mytimer_MSS_MSS_CM3_0\mytimer_MSS_MSS_CM3_0_hw_platform\hal\CortexM3\GNU -O0 -ffunction-sections -fdata-sections -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


