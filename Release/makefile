################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include riscv_hal/subdir.mk
-include hal/subdir.mk
-include drivers/CoreUARTapb/subdir.mk
-include drivers/CoreSysServices_PF/subdir.mk
-include drivers/CoreSPI/subdir.mk
-include drivers/CorePWM/subdir.mk
-include drivers/CoreGPIO/subdir.mk
-include .metadata/.plugins/org.eclipse.cdt.make.core/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
MyProj.hex \

SECONDARY_LIST += \
MyProj.lst \

SECONDARY_SIZE += \
MyProj.siz \


# All Target
all: MyProj.elf secondary-outputs

# Tool invocations
MyProj.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU RISC-V Cross C Linker'
	riscv64-unknown-elf-gcc -march=rv32ic -mabi=ilp32 -mtune=size -msmall-data-limit=8 -mstrict-align -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -T "D:\tecchio\SoftConsole_nolitefast\MyProj\riscv_hal\microsemi-riscv-ram.ld" -nostartfiles -Xlinker --gc-sections -Wl,-Map,"MyProj.map" --specs=nano.specs -o "MyProj.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

MyProj.hex: MyProj.elf
	@echo 'Invoking: GNU RISC-V Cross Create Flash Image'
	riscv64-unknown-elf-objcopy -O ihex --change-section-lma *-0x80000000 "MyProj.elf"  "MyProj.hex"
	@echo 'Finished building: $@'
	@echo ' '

MyProj.lst: MyProj.elf
	@echo 'Invoking: GNU RISC-V Cross Create Listing'
	riscv64-unknown-elf-objdump --source --all-headers --demangle --debugging --disassemble --file-headers --line-numbers --syms --wide "MyProj.elf" > "MyProj.lst"
	@echo 'Finished building: $@'
	@echo ' '

MyProj.siz: MyProj.elf
	@echo 'Invoking: GNU RISC-V Cross Print Size'
	riscv64-unknown-elf-size --format=berkeley --totals "MyProj.elf"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(SECONDARY_FLASH)$(SECONDARY_LIST)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_UPPER_DEPS)$(C_DEPS) MyProj.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets
