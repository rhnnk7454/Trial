################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/FreeRTOS/croutine.c \
D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/FreeRTOS/event_groups.c \
D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/FreeRTOS/list.c \
D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/FreeRTOS/queue.c \
D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/FreeRTOS/stream_buffer.c \
D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/FreeRTOS/tasks.c \
D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/FreeRTOS/timers.c 

OBJS += \
./common/ThirdParty/FreeRTOS/croutine.o \
./common/ThirdParty/FreeRTOS/event_groups.o \
./common/ThirdParty/FreeRTOS/list.o \
./common/ThirdParty/FreeRTOS/queue.o \
./common/ThirdParty/FreeRTOS/stream_buffer.o \
./common/ThirdParty/FreeRTOS/tasks.o \
./common/ThirdParty/FreeRTOS/timers.o 

C_DEPS += \
./common/ThirdParty/FreeRTOS/croutine.d \
./common/ThirdParty/FreeRTOS/event_groups.d \
./common/ThirdParty/FreeRTOS/list.d \
./common/ThirdParty/FreeRTOS/queue.d \
./common/ThirdParty/FreeRTOS/stream_buffer.d \
./common/ThirdParty/FreeRTOS/tasks.d \
./common/ThirdParty/FreeRTOS/timers.d 


# Each subdirectory must supply rules for building sources it contributes
common/ThirdParty/FreeRTOS/croutine.o: D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/FreeRTOS/croutine.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F446xx -DDEBUG -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/FreeRTOS/include" -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/SEGGER/Config" -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/SEGGER/OS" -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/SEGGER/SEGGER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"common/ThirdParty/FreeRTOS/croutine.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
common/ThirdParty/FreeRTOS/event_groups.o: D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/FreeRTOS/event_groups.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F446xx -DDEBUG -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/FreeRTOS/include" -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/SEGGER/Config" -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/SEGGER/OS" -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/SEGGER/SEGGER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"common/ThirdParty/FreeRTOS/event_groups.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
common/ThirdParty/FreeRTOS/list.o: D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/FreeRTOS/list.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F446xx -DDEBUG -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/FreeRTOS/include" -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/SEGGER/Config" -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/SEGGER/OS" -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/SEGGER/SEGGER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"common/ThirdParty/FreeRTOS/list.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
common/ThirdParty/FreeRTOS/queue.o: D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/FreeRTOS/queue.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F446xx -DDEBUG -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/FreeRTOS/include" -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/SEGGER/Config" -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/SEGGER/OS" -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/SEGGER/SEGGER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"common/ThirdParty/FreeRTOS/queue.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
common/ThirdParty/FreeRTOS/stream_buffer.o: D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/FreeRTOS/stream_buffer.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F446xx -DDEBUG -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/FreeRTOS/include" -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/SEGGER/Config" -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/SEGGER/OS" -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/SEGGER/SEGGER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"common/ThirdParty/FreeRTOS/stream_buffer.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
common/ThirdParty/FreeRTOS/tasks.o: D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/FreeRTOS/tasks.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F446xx -DDEBUG -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/FreeRTOS/include" -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/SEGGER/Config" -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/SEGGER/OS" -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/SEGGER/SEGGER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"common/ThirdParty/FreeRTOS/tasks.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
common/ThirdParty/FreeRTOS/timers.o: D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/FreeRTOS/timers.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F446xx -DDEBUG -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/FreeRTOS/include" -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/SEGGER/Config" -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/SEGGER/OS" -I"D:/Workspace/Udemy/RTOS_Workspace_CUBEIDE/common/ThirdParty/SEGGER/SEGGER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"common/ThirdParty/FreeRTOS/timers.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

