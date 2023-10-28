#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/APP_EMBEDDED.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/APP_EMBEDDED.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=ECAL_layer/button/ecu_button.c ECAL_layer/LED.c ECAL_layer/Mcal_device_config.c ECAL_layer/PIC18f_MCAL_gpio.c ECAL_layer/Application.c ECAL_layer/DC_MOTOR/ecu_dc_motor.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/ECAL_layer/button/ecu_button.p1 ${OBJECTDIR}/ECAL_layer/LED.p1 ${OBJECTDIR}/ECAL_layer/Mcal_device_config.p1 ${OBJECTDIR}/ECAL_layer/PIC18f_MCAL_gpio.p1 ${OBJECTDIR}/ECAL_layer/Application.p1 ${OBJECTDIR}/ECAL_layer/DC_MOTOR/ecu_dc_motor.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/ECAL_layer/button/ecu_button.p1.d ${OBJECTDIR}/ECAL_layer/LED.p1.d ${OBJECTDIR}/ECAL_layer/Mcal_device_config.p1.d ${OBJECTDIR}/ECAL_layer/PIC18f_MCAL_gpio.p1.d ${OBJECTDIR}/ECAL_layer/Application.p1.d ${OBJECTDIR}/ECAL_layer/DC_MOTOR/ecu_dc_motor.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/ECAL_layer/button/ecu_button.p1 ${OBJECTDIR}/ECAL_layer/LED.p1 ${OBJECTDIR}/ECAL_layer/Mcal_device_config.p1 ${OBJECTDIR}/ECAL_layer/PIC18f_MCAL_gpio.p1 ${OBJECTDIR}/ECAL_layer/Application.p1 ${OBJECTDIR}/ECAL_layer/DC_MOTOR/ecu_dc_motor.p1

# Source Files
SOURCEFILES=ECAL_layer/button/ecu_button.c ECAL_layer/LED.c ECAL_layer/Mcal_device_config.c ECAL_layer/PIC18f_MCAL_gpio.c ECAL_layer/Application.c ECAL_layer/DC_MOTOR/ecu_dc_motor.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/APP_EMBEDDED.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F4620
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/ECAL_layer/button/ecu_button.p1: ECAL_layer/button/ecu_button.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECAL_layer/button" 
	@${RM} ${OBJECTDIR}/ECAL_layer/button/ecu_button.p1.d 
	@${RM} ${OBJECTDIR}/ECAL_layer/button/ecu_button.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECAL_layer/button/ecu_button.p1 ECAL_layer/button/ecu_button.c 
	@-${MV} ${OBJECTDIR}/ECAL_layer/button/ecu_button.d ${OBJECTDIR}/ECAL_layer/button/ecu_button.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECAL_layer/button/ecu_button.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECAL_layer/LED.p1: ECAL_layer/LED.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECAL_layer" 
	@${RM} ${OBJECTDIR}/ECAL_layer/LED.p1.d 
	@${RM} ${OBJECTDIR}/ECAL_layer/LED.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECAL_layer/LED.p1 ECAL_layer/LED.c 
	@-${MV} ${OBJECTDIR}/ECAL_layer/LED.d ${OBJECTDIR}/ECAL_layer/LED.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECAL_layer/LED.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECAL_layer/Mcal_device_config.p1: ECAL_layer/Mcal_device_config.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECAL_layer" 
	@${RM} ${OBJECTDIR}/ECAL_layer/Mcal_device_config.p1.d 
	@${RM} ${OBJECTDIR}/ECAL_layer/Mcal_device_config.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECAL_layer/Mcal_device_config.p1 ECAL_layer/Mcal_device_config.c 
	@-${MV} ${OBJECTDIR}/ECAL_layer/Mcal_device_config.d ${OBJECTDIR}/ECAL_layer/Mcal_device_config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECAL_layer/Mcal_device_config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECAL_layer/PIC18f_MCAL_gpio.p1: ECAL_layer/PIC18f_MCAL_gpio.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECAL_layer" 
	@${RM} ${OBJECTDIR}/ECAL_layer/PIC18f_MCAL_gpio.p1.d 
	@${RM} ${OBJECTDIR}/ECAL_layer/PIC18f_MCAL_gpio.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECAL_layer/PIC18f_MCAL_gpio.p1 ECAL_layer/PIC18f_MCAL_gpio.c 
	@-${MV} ${OBJECTDIR}/ECAL_layer/PIC18f_MCAL_gpio.d ${OBJECTDIR}/ECAL_layer/PIC18f_MCAL_gpio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECAL_layer/PIC18f_MCAL_gpio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECAL_layer/Application.p1: ECAL_layer/Application.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECAL_layer" 
	@${RM} ${OBJECTDIR}/ECAL_layer/Application.p1.d 
	@${RM} ${OBJECTDIR}/ECAL_layer/Application.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECAL_layer/Application.p1 ECAL_layer/Application.c 
	@-${MV} ${OBJECTDIR}/ECAL_layer/Application.d ${OBJECTDIR}/ECAL_layer/Application.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECAL_layer/Application.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECAL_layer/DC_MOTOR/ecu_dc_motor.p1: ECAL_layer/DC_MOTOR/ecu_dc_motor.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECAL_layer/DC_MOTOR" 
	@${RM} ${OBJECTDIR}/ECAL_layer/DC_MOTOR/ecu_dc_motor.p1.d 
	@${RM} ${OBJECTDIR}/ECAL_layer/DC_MOTOR/ecu_dc_motor.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECAL_layer/DC_MOTOR/ecu_dc_motor.p1 ECAL_layer/DC_MOTOR/ecu_dc_motor.c 
	@-${MV} ${OBJECTDIR}/ECAL_layer/DC_MOTOR/ecu_dc_motor.d ${OBJECTDIR}/ECAL_layer/DC_MOTOR/ecu_dc_motor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECAL_layer/DC_MOTOR/ecu_dc_motor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/ECAL_layer/button/ecu_button.p1: ECAL_layer/button/ecu_button.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECAL_layer/button" 
	@${RM} ${OBJECTDIR}/ECAL_layer/button/ecu_button.p1.d 
	@${RM} ${OBJECTDIR}/ECAL_layer/button/ecu_button.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECAL_layer/button/ecu_button.p1 ECAL_layer/button/ecu_button.c 
	@-${MV} ${OBJECTDIR}/ECAL_layer/button/ecu_button.d ${OBJECTDIR}/ECAL_layer/button/ecu_button.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECAL_layer/button/ecu_button.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECAL_layer/LED.p1: ECAL_layer/LED.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECAL_layer" 
	@${RM} ${OBJECTDIR}/ECAL_layer/LED.p1.d 
	@${RM} ${OBJECTDIR}/ECAL_layer/LED.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECAL_layer/LED.p1 ECAL_layer/LED.c 
	@-${MV} ${OBJECTDIR}/ECAL_layer/LED.d ${OBJECTDIR}/ECAL_layer/LED.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECAL_layer/LED.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECAL_layer/Mcal_device_config.p1: ECAL_layer/Mcal_device_config.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECAL_layer" 
	@${RM} ${OBJECTDIR}/ECAL_layer/Mcal_device_config.p1.d 
	@${RM} ${OBJECTDIR}/ECAL_layer/Mcal_device_config.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECAL_layer/Mcal_device_config.p1 ECAL_layer/Mcal_device_config.c 
	@-${MV} ${OBJECTDIR}/ECAL_layer/Mcal_device_config.d ${OBJECTDIR}/ECAL_layer/Mcal_device_config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECAL_layer/Mcal_device_config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECAL_layer/PIC18f_MCAL_gpio.p1: ECAL_layer/PIC18f_MCAL_gpio.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECAL_layer" 
	@${RM} ${OBJECTDIR}/ECAL_layer/PIC18f_MCAL_gpio.p1.d 
	@${RM} ${OBJECTDIR}/ECAL_layer/PIC18f_MCAL_gpio.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECAL_layer/PIC18f_MCAL_gpio.p1 ECAL_layer/PIC18f_MCAL_gpio.c 
	@-${MV} ${OBJECTDIR}/ECAL_layer/PIC18f_MCAL_gpio.d ${OBJECTDIR}/ECAL_layer/PIC18f_MCAL_gpio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECAL_layer/PIC18f_MCAL_gpio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECAL_layer/Application.p1: ECAL_layer/Application.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECAL_layer" 
	@${RM} ${OBJECTDIR}/ECAL_layer/Application.p1.d 
	@${RM} ${OBJECTDIR}/ECAL_layer/Application.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECAL_layer/Application.p1 ECAL_layer/Application.c 
	@-${MV} ${OBJECTDIR}/ECAL_layer/Application.d ${OBJECTDIR}/ECAL_layer/Application.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECAL_layer/Application.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECAL_layer/DC_MOTOR/ecu_dc_motor.p1: ECAL_layer/DC_MOTOR/ecu_dc_motor.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECAL_layer/DC_MOTOR" 
	@${RM} ${OBJECTDIR}/ECAL_layer/DC_MOTOR/ecu_dc_motor.p1.d 
	@${RM} ${OBJECTDIR}/ECAL_layer/DC_MOTOR/ecu_dc_motor.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECAL_layer/DC_MOTOR/ecu_dc_motor.p1 ECAL_layer/DC_MOTOR/ecu_dc_motor.c 
	@-${MV} ${OBJECTDIR}/ECAL_layer/DC_MOTOR/ecu_dc_motor.d ${OBJECTDIR}/ECAL_layer/DC_MOTOR/ecu_dc_motor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECAL_layer/DC_MOTOR/ecu_dc_motor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/APP_EMBEDDED.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/APP_EMBEDDED.${IMAGE_TYPE}.map  -D__DEBUG=1  -mdebugger=none  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -std=c99 -gcoff -mstack=compiled:auto:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/APP_EMBEDDED.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} ${DISTDIR}/APP_EMBEDDED.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/APP_EMBEDDED.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/APP_EMBEDDED.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -std=c99 -gcoff -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/APP_EMBEDDED.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
