################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Startup/subdir.mk
-include Src/subdir.mk
-include Drivers/STM32F4xx_HAL_Driver/Src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
EMI_Sensor.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
EMI_Sensor.list \


# All Target
all: EMI_Sensor.elf secondary-outputs

# Tool invocations
EMI_Sensor.elf: $(OBJS) $(USER_OBJS) C:\Users\97jsm\Documents\GitHub\EMI-sensor\Building\ sensor\Code\STM32\EMI_Sensor\STM32F412ZETX_FLASH.ld
	arm-none-eabi-gcc -o "EMI_Sensor.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"C:\Users\97jsm\Documents\GitHub\EMI-sensor\Building sensor\Code\STM32\EMI_Sensor\STM32F412ZETX_FLASH.ld" --specs=nosys.specs -Wl,-Map="EMI_Sensor.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

EMI_Sensor.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "EMI_Sensor.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
