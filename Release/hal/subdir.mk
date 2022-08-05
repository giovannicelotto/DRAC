################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../hal/hal_irq.c 

S_UPPER_SRCS += \
../hal/hw_reg_access.S 

OBJS += \
./hal/hal_irq.o \
./hal/hw_reg_access.o 

S_UPPER_DEPS += \
./hal/hw_reg_access.d 

C_DEPS += \
./hal/hal_irq.d 


# Each subdirectory must supply rules for building sources it contributes
hal/%.o: ../hal/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv64-unknown-elf-gcc -march=rv32ic -mabi=ilp32 -mtune=size -msmall-data-limit=8 -mstrict-align -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -I"D:\tecchio\SoftConsole_nolitefast\MyProj\drivers" -I"D:\tecchio\SoftConsole_nolitefast\MyProj\hal" -I"D:\tecchio\SoftConsole_nolitefast\MyProj\riscv_hal" -std=gnu11 -Wa,-adhlns="$@.lst" -msave-restore -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

hal/%.o: ../hal/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross Assembler'
	riscv64-unknown-elf-gcc -march=rv32ic -mabi=ilp32 -mtune=size -msmall-data-limit=8 -mstrict-align -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -x assembler-with-cpp -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


