################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
CC3200_LP.obj: ../CC3200_LP.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"c:/ti/ccsv6/tools/compiler/arm_5.1.10/bin/armcl" -mv7M4 --code_state=16 --abi=eabi -me --include_path="c:/ti/ccsv6/tools/compiler/arm_5.1.10/include" --include_path="c:/ti/tirtos_simplelink_2_01_00_03/products/CC3200_driverlib_1.0.2" --include_path="c:/ti/tirtos_simplelink_2_01_00_03/products/CC3200_driverlib_1.0.2/inc" --include_path="c:/ti/tirtos_simplelink_2_01_00_03/products/CC3200_driverlib_1.0.2/driverlib" --include_path="C:/ti/CC3200SDK_1.0.0/cc3200-sdk/driverlib/" --include_path="C:/ti/CC3200SDK_1.0.0/cc3200-sdk/inc/" --include_path="C:/ti/CC3200SDK_1.0.0/cc3200-sdk/example/common" --include_path="C:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/" --include_path="C:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/source" --include_path="C:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/include" -g --define=cc3200 --define=PART_CC3200 --define=ccs --define=CCWARE --display_error_number --diag_warning=225 --diag_warning=255 --diag_wrap=off --preproc_with_compile --preproc_dependency="CC3200_LP.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

configPkg/linker.cmd: ../empty.cfg
	@echo 'Building file: $<'
	@echo 'Invoking: XDCtools'
	"c:/ti/xdctools_3_30_05_60_core/xs" --xdcpath="c:/ti/tirtos_simplelink_2_01_00_03/packages;c:/ti/tirtos_simplelink_2_01_00_03/products/bios_6_40_03_39/packages;c:/ti/tirtos_simplelink_2_01_00_03/products/uia_2_00_01_34/packages;c:/ti/ccsv6/ccs_base;" xdc.tools.configuro -o configPkg -t ti.targets.arm.elf.M4 -p ti.platforms.simplelink:CC3200 -r release -c "c:/ti/ccsv6/tools/compiler/arm_5.1.10" "$<"
	@echo 'Finished building: $<'
	@echo ' '

configPkg/compiler.opt: | configPkg/linker.cmd
configPkg/: | configPkg/linker.cmd

empty_rom_pin_mux_config.obj: ../empty_rom_pin_mux_config.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"c:/ti/ccsv6/tools/compiler/arm_5.1.10/bin/armcl" -mv7M4 --code_state=16 --abi=eabi -me --include_path="c:/ti/ccsv6/tools/compiler/arm_5.1.10/include" --include_path="c:/ti/tirtos_simplelink_2_01_00_03/products/CC3200_driverlib_1.0.2" --include_path="c:/ti/tirtos_simplelink_2_01_00_03/products/CC3200_driverlib_1.0.2/inc" --include_path="c:/ti/tirtos_simplelink_2_01_00_03/products/CC3200_driverlib_1.0.2/driverlib" --include_path="C:/ti/CC3200SDK_1.0.0/cc3200-sdk/driverlib/" --include_path="C:/ti/CC3200SDK_1.0.0/cc3200-sdk/inc/" --include_path="C:/ti/CC3200SDK_1.0.0/cc3200-sdk/example/common" --include_path="C:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/" --include_path="C:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/source" --include_path="C:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/include" -g --define=cc3200 --define=PART_CC3200 --define=ccs --define=CCWARE --display_error_number --diag_warning=225 --diag_warning=255 --diag_wrap=off --preproc_with_compile --preproc_dependency="empty_rom_pin_mux_config.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

main.obj: ../main.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"c:/ti/ccsv6/tools/compiler/arm_5.1.10/bin/armcl" -mv7M4 --code_state=16 --abi=eabi -me --include_path="c:/ti/ccsv6/tools/compiler/arm_5.1.10/include" --include_path="c:/ti/tirtos_simplelink_2_01_00_03/products/CC3200_driverlib_1.0.2" --include_path="c:/ti/tirtos_simplelink_2_01_00_03/products/CC3200_driverlib_1.0.2/inc" --include_path="c:/ti/tirtos_simplelink_2_01_00_03/products/CC3200_driverlib_1.0.2/driverlib" --include_path="C:/ti/CC3200SDK_1.0.0/cc3200-sdk/driverlib/" --include_path="C:/ti/CC3200SDK_1.0.0/cc3200-sdk/inc/" --include_path="C:/ti/CC3200SDK_1.0.0/cc3200-sdk/example/common" --include_path="C:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/" --include_path="C:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/source" --include_path="C:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/include" -g --define=cc3200 --define=PART_CC3200 --define=ccs --define=CCWARE --display_error_number --diag_warning=225 --diag_warning=255 --diag_wrap=off --preproc_with_compile --preproc_dependency="main.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

network.obj: ../network.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"c:/ti/ccsv6/tools/compiler/arm_5.1.10/bin/armcl" -mv7M4 --code_state=16 --abi=eabi -me --include_path="c:/ti/ccsv6/tools/compiler/arm_5.1.10/include" --include_path="c:/ti/tirtos_simplelink_2_01_00_03/products/CC3200_driverlib_1.0.2" --include_path="c:/ti/tirtos_simplelink_2_01_00_03/products/CC3200_driverlib_1.0.2/inc" --include_path="c:/ti/tirtos_simplelink_2_01_00_03/products/CC3200_driverlib_1.0.2/driverlib" --include_path="C:/ti/CC3200SDK_1.0.0/cc3200-sdk/driverlib/" --include_path="C:/ti/CC3200SDK_1.0.0/cc3200-sdk/inc/" --include_path="C:/ti/CC3200SDK_1.0.0/cc3200-sdk/example/common" --include_path="C:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/" --include_path="C:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/source" --include_path="C:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/include" -g --define=cc3200 --define=PART_CC3200 --define=ccs --define=CCWARE --display_error_number --diag_warning=225 --diag_warning=255 --diag_wrap=off --preproc_with_compile --preproc_dependency="network.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

uart_if.obj: C:/ti/CC3200SDK_1.0.0/cc3200-sdk/example/common/uart_if.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"c:/ti/ccsv6/tools/compiler/arm_5.1.10/bin/armcl" -mv7M4 --code_state=16 --abi=eabi -me --include_path="c:/ti/ccsv6/tools/compiler/arm_5.1.10/include" --include_path="c:/ti/tirtos_simplelink_2_01_00_03/products/CC3200_driverlib_1.0.2" --include_path="c:/ti/tirtos_simplelink_2_01_00_03/products/CC3200_driverlib_1.0.2/inc" --include_path="c:/ti/tirtos_simplelink_2_01_00_03/products/CC3200_driverlib_1.0.2/driverlib" --include_path="C:/ti/CC3200SDK_1.0.0/cc3200-sdk/driverlib/" --include_path="C:/ti/CC3200SDK_1.0.0/cc3200-sdk/inc/" --include_path="C:/ti/CC3200SDK_1.0.0/cc3200-sdk/example/common" --include_path="C:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/" --include_path="C:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/source" --include_path="C:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/include" -g --define=cc3200 --define=PART_CC3200 --define=ccs --define=CCWARE --display_error_number --diag_warning=225 --diag_warning=255 --diag_wrap=off --preproc_with_compile --preproc_dependency="uart_if.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


