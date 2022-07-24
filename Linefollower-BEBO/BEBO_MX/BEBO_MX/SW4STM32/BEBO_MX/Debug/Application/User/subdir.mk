################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/OneDrive/Programowanie/Roboty/Linefollower\ -\ BEBO/BEBO_MX/BEBO_MX/Src/adc.c \
D:/OneDrive/Programowanie/Roboty/Linefollower\ -\ BEBO/BEBO_MX/BEBO_MX/Src/dma.c \
D:/OneDrive/Programowanie/Roboty/Linefollower\ -\ BEBO/BEBO_MX/BEBO_MX/Src/gpio.c \
D:/OneDrive/Programowanie/Roboty/Linefollower\ -\ BEBO/BEBO_MX/BEBO_MX/Src/main.c \
D:/OneDrive/Programowanie/Roboty/Linefollower\ -\ BEBO/BEBO_MX/BEBO_MX/Src/stm32f0xx_hal_msp.c \
D:/OneDrive/Programowanie/Roboty/Linefollower\ -\ BEBO/BEBO_MX/BEBO_MX/Src/stm32f0xx_it.c \
D:/OneDrive/Programowanie/Roboty/Linefollower\ -\ BEBO/BEBO_MX/BEBO_MX/Src/tim.c \
D:/OneDrive/Programowanie/Roboty/Linefollower\ -\ BEBO/BEBO_MX/BEBO_MX/Src/usart.c 

OBJS += \
./Application/User/adc.o \
./Application/User/dma.o \
./Application/User/gpio.o \
./Application/User/main.o \
./Application/User/stm32f0xx_hal_msp.o \
./Application/User/stm32f0xx_it.o \
./Application/User/tim.o \
./Application/User/usart.o 

C_DEPS += \
./Application/User/adc.d \
./Application/User/dma.d \
./Application/User/gpio.d \
./Application/User/main.d \
./Application/User/stm32f0xx_hal_msp.d \
./Application/User/stm32f0xx_it.d \
./Application/User/tim.d \
./Application/User/usart.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/adc.o: D:/OneDrive/Programowanie/Roboty/Linefollower\ -\ BEBO/BEBO_MX/BEBO_MX/Src/adc.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F051x8 -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Inc" -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Drivers/STM32F0xx_HAL_Driver/Inc" -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Application/User/adc.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/dma.o: D:/OneDrive/Programowanie/Roboty/Linefollower\ -\ BEBO/BEBO_MX/BEBO_MX/Src/dma.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F051x8 -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Inc" -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Drivers/STM32F0xx_HAL_Driver/Inc" -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Application/User/dma.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/gpio.o: D:/OneDrive/Programowanie/Roboty/Linefollower\ -\ BEBO/BEBO_MX/BEBO_MX/Src/gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F051x8 -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Inc" -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Drivers/STM32F0xx_HAL_Driver/Inc" -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Application/User/gpio.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/main.o: D:/OneDrive/Programowanie/Roboty/Linefollower\ -\ BEBO/BEBO_MX/BEBO_MX/Src/main.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F051x8 -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Inc" -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Drivers/STM32F0xx_HAL_Driver/Inc" -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Application/User/main.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/stm32f0xx_hal_msp.o: D:/OneDrive/Programowanie/Roboty/Linefollower\ -\ BEBO/BEBO_MX/BEBO_MX/Src/stm32f0xx_hal_msp.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F051x8 -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Inc" -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Drivers/STM32F0xx_HAL_Driver/Inc" -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Application/User/stm32f0xx_hal_msp.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/stm32f0xx_it.o: D:/OneDrive/Programowanie/Roboty/Linefollower\ -\ BEBO/BEBO_MX/BEBO_MX/Src/stm32f0xx_it.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F051x8 -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Inc" -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Drivers/STM32F0xx_HAL_Driver/Inc" -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Application/User/stm32f0xx_it.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/tim.o: D:/OneDrive/Programowanie/Roboty/Linefollower\ -\ BEBO/BEBO_MX/BEBO_MX/Src/tim.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F051x8 -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Inc" -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Drivers/STM32F0xx_HAL_Driver/Inc" -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Application/User/tim.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/usart.o: D:/OneDrive/Programowanie/Roboty/Linefollower\ -\ BEBO/BEBO_MX/BEBO_MX/Src/usart.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F051x8 -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Inc" -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Drivers/STM32F0xx_HAL_Driver/Inc" -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"D:/OneDrive/Programowanie/Roboty/Linefollower - BEBO/BEBO_MX/BEBO_MX/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Application/User/usart.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


