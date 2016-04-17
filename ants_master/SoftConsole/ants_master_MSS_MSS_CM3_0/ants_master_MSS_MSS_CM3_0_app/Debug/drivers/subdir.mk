################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/LCD.c \
../drivers/Pixy_SPI.c \
../drivers/dsensor_driver.c \
../drivers/n64_driver.c \
../drivers/servo_control.c \
../drivers/stats_display.c \
../drivers/timer_t.c 

OBJS += \
./drivers/LCD.o \
./drivers/Pixy_SPI.o \
./drivers/dsensor_driver.o \
./drivers/n64_driver.o \
./drivers/servo_control.o \
./drivers/stats_display.o \
./drivers/timer_t.o 

C_DEPS += \
./drivers/LCD.d \
./drivers/Pixy_SPI.d \
./drivers/dsensor_driver.d \
./drivers/n64_driver.d \
./drivers/servo_control.d \
./drivers/stats_display.d \
./drivers/timer_t.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/%.o: ../drivers/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU C Compiler'
	arm-none-eabi-gcc -mthumb -mcpu=cortex-m3 -DDNDEBUG -IC:\Users\rpokeefe\repos\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform -IC:\Users\rpokeefe\repos\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\CMSIS -IC:\Users\rpokeefe\repos\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\CMSIS\startup_gcc -IC:\Users\rpokeefe\repos\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers -IC:\Users\rpokeefe\repos\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers\mss_ace -IC:\Users\rpokeefe\repos\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers\mss_gpio -IC:\Users\rpokeefe\repos\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers\mss_nvm -IC:\Users\rpokeefe\repos\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers\mss_nvm\drivers -IC:\Users\rpokeefe\repos\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers\mss_nvm\drivers\F2DSS_NVM -IC:\Users\rpokeefe\repos\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers\mss_pdma -IC:\Users\rpokeefe\repos\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers\mss_rtc -IC:\Users\rpokeefe\repos\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers\mss_rtc\drivers -IC:\Users\rpokeefe\repos\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers\mss_rtc\drivers\mss_rtc -IC:\Users\rpokeefe\repos\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers\mss_spi -IC:\Users\rpokeefe\repos\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers\mss_spi\drivers -IC:\Users\rpokeefe\repos\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers\mss_spi\drivers\mss_spi -IC:\Users\rpokeefe\repos\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers\mss_timer -IC:\Users\rpokeefe\repos\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers\mss_uart -IC:\Users\rpokeefe\repos\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers_config -IC:\Users\rpokeefe\repos\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\drivers_config\mss_ace -IC:\Users\rpokeefe\repos\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\hal -IC:\Users\rpokeefe\repos\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\hal\CortexM3 -IC:\Users\rpokeefe\repos\373\ants_master\SoftConsole\ants_master_MSS_MSS_CM3_0\ants_master_MSS_MSS_CM3_0_hw_platform\hal\CortexM3\GNU -O0 -ffunction-sections -fdata-sections -g3 -Wall -c -fmessage-length=0 -v -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


