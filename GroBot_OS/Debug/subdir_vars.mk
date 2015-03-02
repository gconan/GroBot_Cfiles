################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CMD_SRCS += \
../CC3200_LP.cmd 

CFG_SRCS += \
../empty.cfg 

C_SRCS += \
../CC3200_LP.c \
../empty_rom_pin_mux_config.c \
../main.c \
../network.c \
C:/ti/CC3200SDK_1.0.0/cc3200-sdk/example/common/uart_if.c 

OBJS += \
./CC3200_LP.obj \
./empty_rom_pin_mux_config.obj \
./main.obj \
./network.obj \
./uart_if.obj 

C_DEPS += \
./CC3200_LP.pp \
./empty_rom_pin_mux_config.pp \
./main.pp \
./network.pp \
./uart_if.pp 

GEN_MISC_DIRS += \
./configPkg/ 

GEN_CMDS += \
./configPkg/linker.cmd 

GEN_OPTS += \
./configPkg/compiler.opt 

GEN_FILES += \
./configPkg/linker.cmd \
./configPkg/compiler.opt 

GEN_FILES__QUOTED += \
"configPkg\linker.cmd" \
"configPkg\compiler.opt" 

GEN_MISC_DIRS__QUOTED += \
"configPkg\" 

C_DEPS__QUOTED += \
"CC3200_LP.pp" \
"empty_rom_pin_mux_config.pp" \
"main.pp" \
"network.pp" \
"uart_if.pp" 

OBJS__QUOTED += \
"CC3200_LP.obj" \
"empty_rom_pin_mux_config.obj" \
"main.obj" \
"network.obj" \
"uart_if.obj" 

C_SRCS__QUOTED += \
"../CC3200_LP.c" \
"../empty_rom_pin_mux_config.c" \
"../main.c" \
"../network.c" \
"C:/ti/CC3200SDK_1.0.0/cc3200-sdk/example/common/uart_if.c" 

GEN_CMDS__FLAG += \
-l"./configPkg/linker.cmd" 

GEN_OPTS__FLAG += \
--cmd_file="./configPkg/compiler.opt" 


