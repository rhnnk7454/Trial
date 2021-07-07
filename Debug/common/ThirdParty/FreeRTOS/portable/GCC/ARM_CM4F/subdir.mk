################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F/port.c 

OBJS += \
./common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F/port.o 

C_DEPS += \
./common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F/port.d 


# Each subdirectory must supply rules for building sources it contributes
common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F/port.o: D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F/port.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F446xx -DDEBUG -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/FreeRTOS/include" -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/SEGGER/Config" -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/SEGGER/OS" -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/SEGGER/SEGGER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F/port.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

