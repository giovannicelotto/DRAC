################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/CoreUARTapb/core_uart_apb.c 

OBJS += \
./drivers/CoreUARTapb/core_uart_apb.o 

C_DEPS += \
./drivers/CoreUARTapb/core_uart_apb.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/CoreUARTapb/%.o: ../drivers/CoreUARTapb/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv64-unknown-elf-gcc -march=rv32ic -mabi=ilp32 -mtune=size -msmall-data-limit=8 -mstrict-align -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -I"D:\tecchio\SoftConsole_nolitefast\MyProj\drivers" -I"D:\tecchio\SoftConsole_nolitefast\MyProj\hal" -I"D:\tecchio\SoftConsole_nolitefast\MyProj\riscv_hal" -std=gnu11 -Wa,-adhlns="$@.lst" -msave-restore -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


