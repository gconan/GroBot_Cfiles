################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

CG_TOOL_ROOT := c:/ti/ccsv6/tools/compiler/arm_5.1.10

ORDERED_OBJS += \
$(GEN_CMDS__FLAG) \
"./CC3200_LP.obj" \
"./empty_rom_pin_mux_config.obj" \
"./main.obj" \
"./network.obj" \
"./uart_if.obj" \
"../CC3200_LP.cmd" \
-l"libc.a" \
-l"c:/ti/tirtos_simplelink_2_01_00_03/products/CC3200_driverlib_1.0.2/driverlib/ccs/Release/driverlib.a" \

-include ../makefile.init

RM := DEL /F
RMDIR := RMDIR /S/Q

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include subdir_rules.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(S62_DEPS)),)
-include $(S62_DEPS)
endif
ifneq ($(strip $(C64_DEPS)),)
-include $(C64_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(S55_DEPS)),)
-include $(S55_DEPS)
endif
ifneq ($(strip $(C67_DEPS)),)
-include $(C67_DEPS)
endif
ifneq ($(strip $(C??_DEPS)),)
-include $(C??_DEPS)
endif
ifneq ($(strip $(CLA_DEPS)),)
-include $(CLA_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(S??_DEPS)),)
-include $(S??_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(C62_DEPS)),)
-include $(C62_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(K_DEPS)),)
-include $(K_DEPS)
endif
ifneq ($(strip $(C43_DEPS)),)
-include $(C43_DEPS)
endif
ifneq ($(strip $(S67_DEPS)),)
-include $(S67_DEPS)
endif
ifneq ($(strip $(SA_DEPS)),)
-include $(SA_DEPS)
endif
ifneq ($(strip $(S43_DEPS)),)
-include $(S43_DEPS)
endif
ifneq ($(strip $(OPT_DEPS)),)
-include $(OPT_DEPS)
endif
ifneq ($(strip $(S64_DEPS)),)
-include $(S64_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(C55_DEPS)),)
-include $(C55_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXE_OUTPUTS += \
GroBot_OS.out \

EXE_OUTPUTS__QUOTED += \
"GroBot_OS.out" \

BIN_OUTPUTS += \
GroBot_OS.hex \

BIN_OUTPUTS__QUOTED += \
"GroBot_OS.hex" \


# All Target
all: GroBot_OS.out

# Tool invocations
GroBot_OS.out: $(OBJS) $(CMD_SRCS) $(GEN_CMDS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM Linker'
	"c:/ti/ccsv6/tools/compiler/arm_5.1.10/bin/armcl" -mv7M4 --code_state=16 --abi=eabi -me -g --define=cc3200 --define=PART_CC3200 --define=ccs --define=CCWARE --display_error_number --diag_warning=225 --diag_warning=255 --diag_wrap=off -z -m"GroBot_OS.map" --heap_size=0x0 --stack_size=0x512 -i"c:/ti/ccsv6/tools/compiler/arm_5.1.10/lib" -i"c:/ti/ccsv6/tools/compiler/arm_5.1.10/include" --reread_libs --warn_sections --display_error_number --diag_wrap=off --xml_link_info="GroBot_OS_linkInfo.xml" --rom_model -o "GroBot_OS.out" $(ORDERED_OBJS)
	@echo 'Finished building target: $@'
	@echo ' '

GroBot_OS.hex: $(EXE_OUTPUTS)
	@echo 'Invoking: ARM Hex Utility'
	"c:/ti/ccsv6/tools/compiler/arm_5.1.10/bin/armhex"  -o "GroBot_OS.hex" $(EXE_OUTPUTS__QUOTED)
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(GEN_MISC_FILES__QUOTED)$(EXE_OUTPUTS__QUOTED)$(GEN_FILES__QUOTED)$(BIN_OUTPUTS__QUOTED)$(GEN_OPTS__QUOTED)$(GEN_CMDS__QUOTED)
	-$(RMDIR) $(GEN_MISC_DIRS__QUOTED)
	-$(RM) "CC3200_LP.pp" "empty_rom_pin_mux_config.pp" "main.pp" "network.pp" "uart_if.pp" 
	-$(RM) "CC3200_LP.obj" "empty_rom_pin_mux_config.obj" "main.obj" "network.obj" "uart_if.obj" 
	-@echo 'Finished clean'
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

