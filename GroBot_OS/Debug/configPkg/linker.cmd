/*
 * Do not modify this file; it is automatically generated from the template
 * linkcmd.xdt in the ti.platforms.simplelink package and will be overwritten.
 */

/*
 * put '"'s around paths because, without this, the linker
 * considers '-' as minus operator, not a file name character.
 */


-l"C:\Development\Senior Design\GroBot_CFiles\GroBot_OS\Debug\configPkg\package\cfg\empty_pem4.oem4"
-l"C:\ti\tirtos_simplelink_2_01_00_03\products\uia_2_00_01_34\packages\ti\uia\sysbios\lib\release\ti.uia.sysbios.aem4"
-l"C:\ti\tirtos_simplelink_2_01_00_03\packages\ti\drivers\lib\instrumented\gpio_ccware.aem4"
-l"C:\ti\tirtos_simplelink_2_01_00_03\products\uia_2_00_01_34\packages\ti\uia\loggers\lib\release\ti.uia.loggers.aem4"
-l"C:\Development\Senior Design\GroBot_CFiles\GroBot_OS\src\sysbios\sysbios.aem4"
-l"C:\ti\tirtos_simplelink_2_01_00_03\products\uia_2_00_01_34\packages\ti\uia\services\lib\release\ti.uia.services.aem4"
-l"C:\ti\tirtos_simplelink_2_01_00_03\products\uia_2_00_01_34\packages\ti\uia\runtime\lib\release\ti.uia.runtime.aem4"
-l"C:\ti\tirtos_simplelink_2_01_00_03\products\uia_2_00_01_34\packages\ti\uia\events\lib\release\ti.uia.events.aem4"
-l"C:\ti\tirtos_simplelink_2_01_00_03\products\bios_6_40_03_39\packages\ti\targets\arm\rtsarm\lib\ti.targets.arm.rtsarm.aem4"
-l"C:\ti\tirtos_simplelink_2_01_00_03\products\bios_6_40_03_39\packages\ti\targets\arm\rtsarm\lib\boot.aem4"
-l"C:\ti\tirtos_simplelink_2_01_00_03\products\bios_6_40_03_39\packages\ti\targets\arm\rtsarm\lib\auto_init.aem4"

--retain="*(xdc.meta)"

/* C6x Elf symbols */
--symbol_map __TI_STACK_SIZE=__STACK_SIZE
--symbol_map __TI_STACK_BASE=__stack
--symbol_map _stack=__stack


--args 0x0
-heap  0x0
-stack 0x1000

/*
 * Linker command file contributions from all loaded packages:
 */

/* Content from xdc.services.global (null): */

/* Content from xdc (null): */

/* Content from xdc.corevers (null): */

/* Content from xdc.shelf (null): */

/* Content from xdc.services.spec (null): */

/* Content from xdc.services.intern.xsr (null): */

/* Content from xdc.services.intern.gen (null): */

/* Content from xdc.services.intern.cmd (null): */

/* Content from xdc.bld (null): */

/* Content from ti.targets (null): */

/* Content from ti.targets.arm.elf (null): */

/* Content from xdc.rov (null): */

/* Content from xdc.runtime (null): */

/* Content from ti.targets.arm.rtsarm (null): */

/* Content from ti.sysbios.interfaces (null): */

/* Content from ti.sysbios.family (null): */

/* Content from ti.sysbios.family.arm (ti/sysbios/family/arm/linkcmd.xdt): */
--retain "*(.vecs)"

/* Content from xdc.services.getset (null): */

/* Content from xdc.rta (null): */

/* Content from ti.uia.events (null): */

/* Content from ti.uia.runtime (null): */

/* Content from xdc.runtime.knl (null): */

/* Content from ti.tirtos (null): */

/* Content from ti.sysbios.rts (ti/sysbios/rts/linkcmd.xdt): */

/* Content from xdc.services.io (null): */

/* Content from ti.uia.services (null): */

/* Content from xdc.platform (null): */

/* Content from ti.catalog.arm.cortexm4 (null): */

/* Content from ti.catalog (null): */

/* Content from ti.catalog.peripherals.hdvicp2 (null): */

/* Content from ti.catalog.arm.peripherals.timers (null): */

/* Content from xdc.cfg (null): */

/* Content from ti.platforms.simplelink (null): */

/* Content from ti.sysbios (null): */

/* Content from ti.uia.loggers (null): */

/* Content from ti.sysbios.hal (null): */

/* Content from ti.sysbios.knl (null): */

/* Content from ti.sysbios.syncs (null): */

/* Content from ti.drivers (null): */

/* Content from ti.sysbios.gates (null): */

/* Content from ti.sysbios.heaps (null): */

/* Content from ti.sysbios.xdcruntime (null): */

/* Content from ti.sysbios.family.arm.m3 (ti/sysbios/family/arm/m3/linkcmd.xdt): */
-u _c_int00
ti_sysbios_family_arm_m3_Hwi_nvic = 0xe000e000;

/* Content from ti.sysbios.utils (null): */

/* Content from ti.uia.sysbios (null): */

/* Content from configPkg (null): */

/* Content from ti.sysbios.family.arm.ducati (undefined): */



/*
 * symbolic aliases for static instance objects
 */
xdc_runtime_Startup__EXECFXN__C = 1;
xdc_runtime_Startup__RESETFXN__C = 1;
TSK_idle = ti_sysbios_knl_Task_Object__table__V + 76;


SECTIONS
{
    .bootVecs:  type = DSECT
    .vecs: load > 0x20004000, type = DSECT
    .resetVecs: load > 0x20004000



    xdc.meta: type = COPY
}
