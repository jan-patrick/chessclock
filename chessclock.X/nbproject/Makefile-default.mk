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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/chessclock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/chessclock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=digitalIO.c ../../ce413_timer1_rtc/firmware/src/delay.s ../../ce413_timer1_rtc/firmware/src/en_sec_osc.s ../../ce413_timer1_rtc/firmware/src/hexdec.c ../../ce413_timer1_rtc/firmware/src/init_timer1.c ../../ce413_timer1_rtc/firmware/src/system_config/exp16/dspic33ep512mu810/isr_timer1.c ../../ce413_timer1_rtc/firmware/src/system_config/exp16/dspic33ep512mu810/lcd_exp16brd.c ../../ce413_timer1_rtc/firmware/src/system_config/exp16/dspic33ep512mu810/main_rtc.c ../../ce413_timer1_rtc/firmware/src/traps.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/digitalIO.o ${OBJECTDIR}/_ext/403601498/delay.o ${OBJECTDIR}/_ext/403601498/en_sec_osc.o ${OBJECTDIR}/_ext/403601498/hexdec.o ${OBJECTDIR}/_ext/403601498/init_timer1.o ${OBJECTDIR}/_ext/21930316/isr_timer1.o ${OBJECTDIR}/_ext/21930316/lcd_exp16brd.o ${OBJECTDIR}/_ext/21930316/main_rtc.o ${OBJECTDIR}/_ext/403601498/traps.o
POSSIBLE_DEPFILES=${OBJECTDIR}/digitalIO.o.d ${OBJECTDIR}/_ext/403601498/delay.o.d ${OBJECTDIR}/_ext/403601498/en_sec_osc.o.d ${OBJECTDIR}/_ext/403601498/hexdec.o.d ${OBJECTDIR}/_ext/403601498/init_timer1.o.d ${OBJECTDIR}/_ext/21930316/isr_timer1.o.d ${OBJECTDIR}/_ext/21930316/lcd_exp16brd.o.d ${OBJECTDIR}/_ext/21930316/main_rtc.o.d ${OBJECTDIR}/_ext/403601498/traps.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/digitalIO.o ${OBJECTDIR}/_ext/403601498/delay.o ${OBJECTDIR}/_ext/403601498/en_sec_osc.o ${OBJECTDIR}/_ext/403601498/hexdec.o ${OBJECTDIR}/_ext/403601498/init_timer1.o ${OBJECTDIR}/_ext/21930316/isr_timer1.o ${OBJECTDIR}/_ext/21930316/lcd_exp16brd.o ${OBJECTDIR}/_ext/21930316/main_rtc.o ${OBJECTDIR}/_ext/403601498/traps.o

# Source Files
SOURCEFILES=digitalIO.c ../../ce413_timer1_rtc/firmware/src/delay.s ../../ce413_timer1_rtc/firmware/src/en_sec_osc.s ../../ce413_timer1_rtc/firmware/src/hexdec.c ../../ce413_timer1_rtc/firmware/src/init_timer1.c ../../ce413_timer1_rtc/firmware/src/system_config/exp16/dspic33ep512mu810/isr_timer1.c ../../ce413_timer1_rtc/firmware/src/system_config/exp16/dspic33ep512mu810/lcd_exp16brd.c ../../ce413_timer1_rtc/firmware/src/system_config/exp16/dspic33ep512mu810/main_rtc.c ../../ce413_timer1_rtc/firmware/src/traps.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/chessclock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33EP512MU810
MP_LINKER_FILE_OPTION=,--script=p33EP512MU810.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/digitalIO.o: digitalIO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/digitalIO.o.d 
	@${RM} ${OBJECTDIR}/digitalIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  digitalIO.c  -o ${OBJECTDIR}/digitalIO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/digitalIO.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/digitalIO.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/403601498/hexdec.o: ../../ce413_timer1_rtc/firmware/src/hexdec.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/403601498" 
	@${RM} ${OBJECTDIR}/_ext/403601498/hexdec.o.d 
	@${RM} ${OBJECTDIR}/_ext/403601498/hexdec.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../ce413_timer1_rtc/firmware/src/hexdec.c  -o ${OBJECTDIR}/_ext/403601498/hexdec.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/403601498/hexdec.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/403601498/hexdec.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/403601498/init_timer1.o: ../../ce413_timer1_rtc/firmware/src/init_timer1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/403601498" 
	@${RM} ${OBJECTDIR}/_ext/403601498/init_timer1.o.d 
	@${RM} ${OBJECTDIR}/_ext/403601498/init_timer1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../ce413_timer1_rtc/firmware/src/init_timer1.c  -o ${OBJECTDIR}/_ext/403601498/init_timer1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/403601498/init_timer1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/403601498/init_timer1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/21930316/isr_timer1.o: ../../ce413_timer1_rtc/firmware/src/system_config/exp16/dspic33ep512mu810/isr_timer1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/21930316" 
	@${RM} ${OBJECTDIR}/_ext/21930316/isr_timer1.o.d 
	@${RM} ${OBJECTDIR}/_ext/21930316/isr_timer1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../ce413_timer1_rtc/firmware/src/system_config/exp16/dspic33ep512mu810/isr_timer1.c  -o ${OBJECTDIR}/_ext/21930316/isr_timer1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/21930316/isr_timer1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/21930316/isr_timer1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/21930316/lcd_exp16brd.o: ../../ce413_timer1_rtc/firmware/src/system_config/exp16/dspic33ep512mu810/lcd_exp16brd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/21930316" 
	@${RM} ${OBJECTDIR}/_ext/21930316/lcd_exp16brd.o.d 
	@${RM} ${OBJECTDIR}/_ext/21930316/lcd_exp16brd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../ce413_timer1_rtc/firmware/src/system_config/exp16/dspic33ep512mu810/lcd_exp16brd.c  -o ${OBJECTDIR}/_ext/21930316/lcd_exp16brd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/21930316/lcd_exp16brd.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/21930316/lcd_exp16brd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/21930316/main_rtc.o: ../../ce413_timer1_rtc/firmware/src/system_config/exp16/dspic33ep512mu810/main_rtc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/21930316" 
	@${RM} ${OBJECTDIR}/_ext/21930316/main_rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/21930316/main_rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../ce413_timer1_rtc/firmware/src/system_config/exp16/dspic33ep512mu810/main_rtc.c  -o ${OBJECTDIR}/_ext/21930316/main_rtc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/21930316/main_rtc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/21930316/main_rtc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/403601498/traps.o: ../../ce413_timer1_rtc/firmware/src/traps.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/403601498" 
	@${RM} ${OBJECTDIR}/_ext/403601498/traps.o.d 
	@${RM} ${OBJECTDIR}/_ext/403601498/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../ce413_timer1_rtc/firmware/src/traps.c  -o ${OBJECTDIR}/_ext/403601498/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/403601498/traps.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/403601498/traps.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/digitalIO.o: digitalIO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/digitalIO.o.d 
	@${RM} ${OBJECTDIR}/digitalIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  digitalIO.c  -o ${OBJECTDIR}/digitalIO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/digitalIO.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/digitalIO.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/403601498/hexdec.o: ../../ce413_timer1_rtc/firmware/src/hexdec.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/403601498" 
	@${RM} ${OBJECTDIR}/_ext/403601498/hexdec.o.d 
	@${RM} ${OBJECTDIR}/_ext/403601498/hexdec.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../ce413_timer1_rtc/firmware/src/hexdec.c  -o ${OBJECTDIR}/_ext/403601498/hexdec.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/403601498/hexdec.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/403601498/hexdec.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/403601498/init_timer1.o: ../../ce413_timer1_rtc/firmware/src/init_timer1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/403601498" 
	@${RM} ${OBJECTDIR}/_ext/403601498/init_timer1.o.d 
	@${RM} ${OBJECTDIR}/_ext/403601498/init_timer1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../ce413_timer1_rtc/firmware/src/init_timer1.c  -o ${OBJECTDIR}/_ext/403601498/init_timer1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/403601498/init_timer1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/403601498/init_timer1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/21930316/isr_timer1.o: ../../ce413_timer1_rtc/firmware/src/system_config/exp16/dspic33ep512mu810/isr_timer1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/21930316" 
	@${RM} ${OBJECTDIR}/_ext/21930316/isr_timer1.o.d 
	@${RM} ${OBJECTDIR}/_ext/21930316/isr_timer1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../ce413_timer1_rtc/firmware/src/system_config/exp16/dspic33ep512mu810/isr_timer1.c  -o ${OBJECTDIR}/_ext/21930316/isr_timer1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/21930316/isr_timer1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/21930316/isr_timer1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/21930316/lcd_exp16brd.o: ../../ce413_timer1_rtc/firmware/src/system_config/exp16/dspic33ep512mu810/lcd_exp16brd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/21930316" 
	@${RM} ${OBJECTDIR}/_ext/21930316/lcd_exp16brd.o.d 
	@${RM} ${OBJECTDIR}/_ext/21930316/lcd_exp16brd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../ce413_timer1_rtc/firmware/src/system_config/exp16/dspic33ep512mu810/lcd_exp16brd.c  -o ${OBJECTDIR}/_ext/21930316/lcd_exp16brd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/21930316/lcd_exp16brd.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/21930316/lcd_exp16brd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/21930316/main_rtc.o: ../../ce413_timer1_rtc/firmware/src/system_config/exp16/dspic33ep512mu810/main_rtc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/21930316" 
	@${RM} ${OBJECTDIR}/_ext/21930316/main_rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/21930316/main_rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../ce413_timer1_rtc/firmware/src/system_config/exp16/dspic33ep512mu810/main_rtc.c  -o ${OBJECTDIR}/_ext/21930316/main_rtc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/21930316/main_rtc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/21930316/main_rtc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/403601498/traps.o: ../../ce413_timer1_rtc/firmware/src/traps.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/403601498" 
	@${RM} ${OBJECTDIR}/_ext/403601498/traps.o.d 
	@${RM} ${OBJECTDIR}/_ext/403601498/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../ce413_timer1_rtc/firmware/src/traps.c  -o ${OBJECTDIR}/_ext/403601498/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/403601498/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/403601498/traps.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/403601498/delay.o: ../../ce413_timer1_rtc/firmware/src/delay.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/403601498" 
	@${RM} ${OBJECTDIR}/_ext/403601498/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/403601498/delay.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../ce413_timer1_rtc/firmware/src/delay.s  -o ${OBJECTDIR}/_ext/403601498/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,-MD,"${OBJECTDIR}/_ext/403601498/delay.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/403601498/delay.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/403601498/en_sec_osc.o: ../../ce413_timer1_rtc/firmware/src/en_sec_osc.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/403601498" 
	@${RM} ${OBJECTDIR}/_ext/403601498/en_sec_osc.o.d 
	@${RM} ${OBJECTDIR}/_ext/403601498/en_sec_osc.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../ce413_timer1_rtc/firmware/src/en_sec_osc.s  -o ${OBJECTDIR}/_ext/403601498/en_sec_osc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,-MD,"${OBJECTDIR}/_ext/403601498/en_sec_osc.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/403601498/en_sec_osc.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/403601498/delay.o: ../../ce413_timer1_rtc/firmware/src/delay.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/403601498" 
	@${RM} ${OBJECTDIR}/_ext/403601498/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/403601498/delay.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../ce413_timer1_rtc/firmware/src/delay.s  -o ${OBJECTDIR}/_ext/403601498/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,-MD,"${OBJECTDIR}/_ext/403601498/delay.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/403601498/delay.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/403601498/en_sec_osc.o: ../../ce413_timer1_rtc/firmware/src/en_sec_osc.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/403601498" 
	@${RM} ${OBJECTDIR}/_ext/403601498/en_sec_osc.o.d 
	@${RM} ${OBJECTDIR}/_ext/403601498/en_sec_osc.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../ce413_timer1_rtc/firmware/src/en_sec_osc.s  -o ${OBJECTDIR}/_ext/403601498/en_sec_osc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,-MD,"${OBJECTDIR}/_ext/403601498/en_sec_osc.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/403601498/en_sec_osc.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/chessclock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/chessclock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x1000:0x101B -mreserve=data@0x101C:0x101D -mreserve=data@0x101E:0x101F -mreserve=data@0x1020:0x1021 -mreserve=data@0x1022:0x1023 -mreserve=data@0x1024:0x1027 -mreserve=data@0x1028:0x104F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/chessclock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/chessclock.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/chessclock.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf  
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
