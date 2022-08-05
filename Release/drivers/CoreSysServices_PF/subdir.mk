################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/CoreSysServices_PF/core_sysservices_pf.c 

OBJS += \
./drivers/CoreSysServices_PF/core_sysservices_pf.o 

C_DEPS += \
./drivers/CoreSysServices_PF/core_sysservices_pf.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/CoreSysServices_PF/%.o: ../drivers/CoreSysServices_PF/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv64-unknown-elf-gcc -march=rv32ic -mabi=ilp32 -mtune=size -msmall-data-limit=8 -mstrict-align -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -I"D:\tecchio\SoftConsole_nolitefast\MyProj\drivers" -I"D:\tecchio\SoftConsole_nolitefast\MyProj\hal" -I"D:\tecchio\SoftConsole_nolitefast\MyProj\riscv_hal" -std=gnu11 -Wa,-adhlns="$@.lst" -msave-restore -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


