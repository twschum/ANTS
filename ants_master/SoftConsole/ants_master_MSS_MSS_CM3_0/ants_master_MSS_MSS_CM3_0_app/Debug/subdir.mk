################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../main.c 

OBJS += \
./main.o 

C_DEPS += \
./main.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU C Compiler'
	arm-none-eabi-gcc -mthumb -mcpu=cortex-m3 -IC:\Users\twschum\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform -IC:\Users\twschum\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\CMSIS -IC:\Users\twschum\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\CMSIS\startup_gcc -IC:\Users\twschum\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers -IC:\Users\twschum\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers\mss_ace -IC:\Users\twschum\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers\mss_gpio -IC:\Users\twschum\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers\mss_nvm -IC:\Users\twschum\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers\mss_nvm\drivers -IC:\Users\twschum\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers\mss_nvm\drivers\F2DSS_NVM -IC:\Users\twschum\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers\mss_pdma -IC:\Users\twschum\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers\mss_rtc -IC:\Users\twschum\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers\mss_rtc\drivers -IC:\Users\twschum\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers\mss_rtc\drivers\mss_rtc -IC:\Users\twschum\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers\mss_spi -IC:\Users\twschum\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers\mss_spi\drivers -IC:\Users\twschum\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers\mss_spi\drivers\mss_spi -IC:\Users\twschum\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers\mss_timer -IC:\Users\twschum\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers\mss_uart -IC:\Users\twschum\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers_config -IC:\Users\twschum\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers_config\mss_ace -IC:\Users\twschum\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\hal -IC:\Users\twschum\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\hal\CortexM3 -IC:\Users\twschum\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\hal\CortexM3\GNU -O0 -ffunction-sections -fdata-sections -g3 -Wall -c -fmessage-length=0 -v -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


