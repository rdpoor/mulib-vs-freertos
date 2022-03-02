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
ifeq "$(wildcard nbproject/Makefile-local-sam_e54_xpro.mk)" "nbproject/Makefile-local-sam_e54_xpro.mk"
include nbproject/Makefile-local-sam_e54_xpro.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=sam_e54_xpro
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/getting_started_drivers_mulib_sam_e54_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/getting_started_drivers_mulib_sam_e54_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/sam_e54_xpro/peripheral/clock/plib_clock.c ../src/config/sam_e54_xpro/peripheral/cmcc/plib_cmcc.c ../src/config/sam_e54_xpro/peripheral/evsys/plib_evsys.c ../src/config/sam_e54_xpro/peripheral/nvic/plib_nvic.c ../src/config/sam_e54_xpro/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/sam_e54_xpro/peripheral/port/plib_port.c ../src/config/sam_e54_xpro/peripheral/rtc/plib_rtc_timer.c ../src/config/sam_e54_xpro/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c ../src/config/sam_e54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c ../src/config/sam_e54_xpro/stdio/xc32_monitor.c ../src/config/sam_e54_xpro/system/cache/sys_cache.c ../src/config/sam_e54_xpro/system/int/src/sys_int.c ../src/config/sam_e54_xpro/initialization.c ../src/config/sam_e54_xpro/interrupts.c ../src/config/sam_e54_xpro/exceptions.c ../src/config/sam_e54_xpro/startup_xc32.c ../src/config/sam_e54_xpro/libc_syscalls.c ../src/config/sam_e54_xpro/tasks.c ../src/third_party/rtos/mu_platform/src/mu_time.c ../src/third_party/rtos/mu_platform/src/mu_rtc.c ../src/third_party/rtos/mulib/collections/src/mu_dlist.c ../src/third_party/rtos/mulib/collections/src/mu_list.c ../src/third_party/rtos/mulib/collections/src/mu_cirq.c ../src/third_party/rtos/mulib/collections/src/mu_pstore.c ../src/third_party/rtos/mulib/collections/src/mu_vect.c ../src/third_party/rtos/mulib/collections/src/mu_queue.c ../src/third_party/rtos/mulib/collections/src/mu_bvec.c ../src/third_party/rtos/mulib/collections/src/mu_array.c ../src/third_party/rtos/mulib/log/src/mu_log.c ../src/third_party/rtos/mulib/sched/src/mu_spsc.c ../src/third_party/rtos/mulib/sched/src/mu_event.c ../src/third_party/rtos/mulib/sched/src/mu_task.c ../src/third_party/rtos/mulib/sched/src/mu_sched.c ../src/third_party/rtos/mulib/string/src/mu_str_utils.c ../src/third_party/rtos/mulib/string/src/mu_stream.c ../src/third_party/rtos/mulib/string/src/mu_strbuf.c ../src/third_party/rtos/mulib/string/src/mu_str.c ../src/third_party/rtos/mulib/utils/src/mu_random.c ../src/third_party/rtos/mulib/utils/src/mu_rfc_1123.c ../src/third_party/rtos/mulib/utils/src/mu_parse_url.c ../src/main_e54.c ../src/app.c ../src/printer_task.c ../src/sensor_task.c ../src/i2c_task.c ../src/ui_task.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2056749927/plib_clock.o ${OBJECTDIR}/_ext/349294639/plib_cmcc.o ${OBJECTDIR}/_ext/2058899413/plib_evsys.o ${OBJECTDIR}/_ext/348958103/plib_nvic.o ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o ${OBJECTDIR}/_ext/348904952/plib_port.o ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o ${OBJECTDIR}/_ext/498645085/xc32_monitor.o ${OBJECTDIR}/_ext/2098947918/sys_cache.o ${OBJECTDIR}/_ext/129427312/sys_int.o ${OBJECTDIR}/_ext/68098787/initialization.o ${OBJECTDIR}/_ext/68098787/interrupts.o ${OBJECTDIR}/_ext/68098787/exceptions.o ${OBJECTDIR}/_ext/68098787/startup_xc32.o ${OBJECTDIR}/_ext/68098787/libc_syscalls.o ${OBJECTDIR}/_ext/68098787/tasks.o ${OBJECTDIR}/_ext/340199985/mu_time.o ${OBJECTDIR}/_ext/340199985/mu_rtc.o ${OBJECTDIR}/_ext/1618706070/mu_dlist.o ${OBJECTDIR}/_ext/1618706070/mu_list.o ${OBJECTDIR}/_ext/1618706070/mu_cirq.o ${OBJECTDIR}/_ext/1618706070/mu_pstore.o ${OBJECTDIR}/_ext/1618706070/mu_vect.o ${OBJECTDIR}/_ext/1618706070/mu_queue.o ${OBJECTDIR}/_ext/1618706070/mu_bvec.o ${OBJECTDIR}/_ext/1618706070/mu_array.o ${OBJECTDIR}/_ext/1717866393/mu_log.o ${OBJECTDIR}/_ext/518675852/mu_spsc.o ${OBJECTDIR}/_ext/518675852/mu_event.o ${OBJECTDIR}/_ext/518675852/mu_task.o ${OBJECTDIR}/_ext/518675852/mu_sched.o ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o ${OBJECTDIR}/_ext/1923606554/mu_stream.o ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o ${OBJECTDIR}/_ext/1923606554/mu_str.o ${OBJECTDIR}/_ext/1863499398/mu_random.o ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o ${OBJECTDIR}/_ext/1360937237/main_e54.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/printer_task.o ${OBJECTDIR}/_ext/1360937237/sensor_task.o ${OBJECTDIR}/_ext/1360937237/i2c_task.o ${OBJECTDIR}/_ext/1360937237/ui_task.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2056749927/plib_clock.o.d ${OBJECTDIR}/_ext/349294639/plib_cmcc.o.d ${OBJECTDIR}/_ext/2058899413/plib_evsys.o.d ${OBJECTDIR}/_ext/348958103/plib_nvic.o.d ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/348904952/plib_port.o.d ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o.d ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o.d ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o.d ${OBJECTDIR}/_ext/498645085/xc32_monitor.o.d ${OBJECTDIR}/_ext/2098947918/sys_cache.o.d ${OBJECTDIR}/_ext/129427312/sys_int.o.d ${OBJECTDIR}/_ext/68098787/initialization.o.d ${OBJECTDIR}/_ext/68098787/interrupts.o.d ${OBJECTDIR}/_ext/68098787/exceptions.o.d ${OBJECTDIR}/_ext/68098787/startup_xc32.o.d ${OBJECTDIR}/_ext/68098787/libc_syscalls.o.d ${OBJECTDIR}/_ext/68098787/tasks.o.d ${OBJECTDIR}/_ext/340199985/mu_time.o.d ${OBJECTDIR}/_ext/340199985/mu_rtc.o.d ${OBJECTDIR}/_ext/1618706070/mu_dlist.o.d ${OBJECTDIR}/_ext/1618706070/mu_list.o.d ${OBJECTDIR}/_ext/1618706070/mu_cirq.o.d ${OBJECTDIR}/_ext/1618706070/mu_pstore.o.d ${OBJECTDIR}/_ext/1618706070/mu_vect.o.d ${OBJECTDIR}/_ext/1618706070/mu_queue.o.d ${OBJECTDIR}/_ext/1618706070/mu_bvec.o.d ${OBJECTDIR}/_ext/1618706070/mu_array.o.d ${OBJECTDIR}/_ext/1717866393/mu_log.o.d ${OBJECTDIR}/_ext/518675852/mu_spsc.o.d ${OBJECTDIR}/_ext/518675852/mu_event.o.d ${OBJECTDIR}/_ext/518675852/mu_task.o.d ${OBJECTDIR}/_ext/518675852/mu_sched.o.d ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o.d ${OBJECTDIR}/_ext/1923606554/mu_stream.o.d ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o.d ${OBJECTDIR}/_ext/1923606554/mu_str.o.d ${OBJECTDIR}/_ext/1863499398/mu_random.o.d ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o.d ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o.d ${OBJECTDIR}/_ext/1360937237/main_e54.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/printer_task.o.d ${OBJECTDIR}/_ext/1360937237/sensor_task.o.d ${OBJECTDIR}/_ext/1360937237/i2c_task.o.d ${OBJECTDIR}/_ext/1360937237/ui_task.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2056749927/plib_clock.o ${OBJECTDIR}/_ext/349294639/plib_cmcc.o ${OBJECTDIR}/_ext/2058899413/plib_evsys.o ${OBJECTDIR}/_ext/348958103/plib_nvic.o ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o ${OBJECTDIR}/_ext/348904952/plib_port.o ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o ${OBJECTDIR}/_ext/498645085/xc32_monitor.o ${OBJECTDIR}/_ext/2098947918/sys_cache.o ${OBJECTDIR}/_ext/129427312/sys_int.o ${OBJECTDIR}/_ext/68098787/initialization.o ${OBJECTDIR}/_ext/68098787/interrupts.o ${OBJECTDIR}/_ext/68098787/exceptions.o ${OBJECTDIR}/_ext/68098787/startup_xc32.o ${OBJECTDIR}/_ext/68098787/libc_syscalls.o ${OBJECTDIR}/_ext/68098787/tasks.o ${OBJECTDIR}/_ext/340199985/mu_time.o ${OBJECTDIR}/_ext/340199985/mu_rtc.o ${OBJECTDIR}/_ext/1618706070/mu_dlist.o ${OBJECTDIR}/_ext/1618706070/mu_list.o ${OBJECTDIR}/_ext/1618706070/mu_cirq.o ${OBJECTDIR}/_ext/1618706070/mu_pstore.o ${OBJECTDIR}/_ext/1618706070/mu_vect.o ${OBJECTDIR}/_ext/1618706070/mu_queue.o ${OBJECTDIR}/_ext/1618706070/mu_bvec.o ${OBJECTDIR}/_ext/1618706070/mu_array.o ${OBJECTDIR}/_ext/1717866393/mu_log.o ${OBJECTDIR}/_ext/518675852/mu_spsc.o ${OBJECTDIR}/_ext/518675852/mu_event.o ${OBJECTDIR}/_ext/518675852/mu_task.o ${OBJECTDIR}/_ext/518675852/mu_sched.o ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o ${OBJECTDIR}/_ext/1923606554/mu_stream.o ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o ${OBJECTDIR}/_ext/1923606554/mu_str.o ${OBJECTDIR}/_ext/1863499398/mu_random.o ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o ${OBJECTDIR}/_ext/1360937237/main_e54.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/printer_task.o ${OBJECTDIR}/_ext/1360937237/sensor_task.o ${OBJECTDIR}/_ext/1360937237/i2c_task.o ${OBJECTDIR}/_ext/1360937237/ui_task.o

# Source Files
SOURCEFILES=../src/config/sam_e54_xpro/peripheral/clock/plib_clock.c ../src/config/sam_e54_xpro/peripheral/cmcc/plib_cmcc.c ../src/config/sam_e54_xpro/peripheral/evsys/plib_evsys.c ../src/config/sam_e54_xpro/peripheral/nvic/plib_nvic.c ../src/config/sam_e54_xpro/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/sam_e54_xpro/peripheral/port/plib_port.c ../src/config/sam_e54_xpro/peripheral/rtc/plib_rtc_timer.c ../src/config/sam_e54_xpro/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c ../src/config/sam_e54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c ../src/config/sam_e54_xpro/stdio/xc32_monitor.c ../src/config/sam_e54_xpro/system/cache/sys_cache.c ../src/config/sam_e54_xpro/system/int/src/sys_int.c ../src/config/sam_e54_xpro/initialization.c ../src/config/sam_e54_xpro/interrupts.c ../src/config/sam_e54_xpro/exceptions.c ../src/config/sam_e54_xpro/startup_xc32.c ../src/config/sam_e54_xpro/libc_syscalls.c ../src/config/sam_e54_xpro/tasks.c ../src/third_party/rtos/mu_platform/src/mu_time.c ../src/third_party/rtos/mu_platform/src/mu_rtc.c ../src/third_party/rtos/mulib/collections/src/mu_dlist.c ../src/third_party/rtos/mulib/collections/src/mu_list.c ../src/third_party/rtos/mulib/collections/src/mu_cirq.c ../src/third_party/rtos/mulib/collections/src/mu_pstore.c ../src/third_party/rtos/mulib/collections/src/mu_vect.c ../src/third_party/rtos/mulib/collections/src/mu_queue.c ../src/third_party/rtos/mulib/collections/src/mu_bvec.c ../src/third_party/rtos/mulib/collections/src/mu_array.c ../src/third_party/rtos/mulib/log/src/mu_log.c ../src/third_party/rtos/mulib/sched/src/mu_spsc.c ../src/third_party/rtos/mulib/sched/src/mu_event.c ../src/third_party/rtos/mulib/sched/src/mu_task.c ../src/third_party/rtos/mulib/sched/src/mu_sched.c ../src/third_party/rtos/mulib/string/src/mu_str_utils.c ../src/third_party/rtos/mulib/string/src/mu_stream.c ../src/third_party/rtos/mulib/string/src/mu_strbuf.c ../src/third_party/rtos/mulib/string/src/mu_str.c ../src/third_party/rtos/mulib/utils/src/mu_random.c ../src/third_party/rtos/mulib/utils/src/mu_rfc_1123.c ../src/third_party/rtos/mulib/utils/src/mu_parse_url.c ../src/main_e54.c ../src/app.c ../src/printer_task.c ../src/sensor_task.c ../src/i2c_task.c ../src/ui_task.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



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

# The following macros may be used in the pre and post step lines
_/_=\\
ShExtension=.bat
Device=ATSAME54P20A
ProjectDir="C:\Users\r\Projects\mulib-vs-freertos\mulib\firmware\getting_started_drivers_mulib_sam_e54_xpro.X"
ProjectName=getting_started_drivers_mulib_sam_e54_xpro
ConfName=sam_e54_xpro
ImagePath="${DISTDIR}\getting_started_drivers_mulib_sam_e54_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="${DISTDIR}"
ImageName="getting_started_drivers_mulib_sam_e54_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-sam_e54_xpro.mk ${DISTDIR}/getting_started_drivers_mulib_sam_e54_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "User defined post-build step: [rm -rf ${ProjectDir}/../../hex && mkdir ${ProjectDir}/../../hex && cp ${ProjectDir}/${ImagePath} ${ProjectDir}/../../hex/]"
	@rm -rf ${ProjectDir}/../../hex && mkdir ${ProjectDir}/../../hex && cp ${ProjectDir}/${ImagePath} ${ProjectDir}/../../hex/
	@echo "--------------------------------------"

MP_PROCESSOR_OPTION=ATSAME54P20A
MP_LINKER_FILE_OPTION=,--script="..\src\config\sam_e54_xpro\ATSAME54P20A.ld"
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
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/2056749927/plib_clock.o: ../src/config/sam_e54_xpro/peripheral/clock/plib_clock.c  .generated_files/flags/sam_e54_xpro/9ba72fc12c5d4f91a3ff2a4837451b802f5d2255 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/2056749927" 
	@${RM} ${OBJECTDIR}/_ext/2056749927/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2056749927/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2056749927/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2056749927/plib_clock.o ../src/config/sam_e54_xpro/peripheral/clock/plib_clock.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/349294639/plib_cmcc.o: ../src/config/sam_e54_xpro/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/sam_e54_xpro/b8c4d22b4b317920417fd681e19531a3a0a709b .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/349294639" 
	@${RM} ${OBJECTDIR}/_ext/349294639/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/349294639/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/349294639/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/349294639/plib_cmcc.o ../src/config/sam_e54_xpro/peripheral/cmcc/plib_cmcc.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2058899413/plib_evsys.o: ../src/config/sam_e54_xpro/peripheral/evsys/plib_evsys.c  .generated_files/flags/sam_e54_xpro/788495e32d45f3b53c4483eeed88d4b854627720 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/2058899413" 
	@${RM} ${OBJECTDIR}/_ext/2058899413/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2058899413/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2058899413/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2058899413/plib_evsys.o ../src/config/sam_e54_xpro/peripheral/evsys/plib_evsys.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/348958103/plib_nvic.o: ../src/config/sam_e54_xpro/peripheral/nvic/plib_nvic.c  .generated_files/flags/sam_e54_xpro/ef8c6836fb3b18674775fef0795314360e9f5c25 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/348958103" 
	@${RM} ${OBJECTDIR}/_ext/348958103/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/348958103/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/348958103/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/348958103/plib_nvic.o ../src/config/sam_e54_xpro/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o: ../src/config/sam_e54_xpro/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/sam_e54_xpro/8a8efe2aba82ec36177ea287db1004f831e77200 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1986180951" 
	@${RM} ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o ../src/config/sam_e54_xpro/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/348904952/plib_port.o: ../src/config/sam_e54_xpro/peripheral/port/plib_port.c  .generated_files/flags/sam_e54_xpro/909ed5c9550d035fad2d9fb1ddef5eb7f526ce5f .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/348904952" 
	@${RM} ${OBJECTDIR}/_ext/348904952/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/348904952/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/348904952/plib_port.o.d" -o ${OBJECTDIR}/_ext/348904952/plib_port.o ../src/config/sam_e54_xpro/peripheral/port/plib_port.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o: ../src/config/sam_e54_xpro/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/sam_e54_xpro/eb24fadb7ea08ef12a281e362d35da925fb53c7f .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1950915590" 
	@${RM} ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o ../src/config/sam_e54_xpro/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o: ../src/config/sam_e54_xpro/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c  .generated_files/flags/sam_e54_xpro/cc2b722d951e61a0829acb5fc8481878155e648c .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1267767598" 
	@${RM} ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o.d" -o ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o ../src/config/sam_e54_xpro/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o: ../src/config/sam_e54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c  .generated_files/flags/sam_e54_xpro/2c02f06d0caf9a6e6194d0d33204a1bf0c2e268a .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/2060180706" 
	@${RM} ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o.d" -o ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o ../src/config/sam_e54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/498645085/xc32_monitor.o: ../src/config/sam_e54_xpro/stdio/xc32_monitor.c  .generated_files/flags/sam_e54_xpro/abe75f68448e32bfd4ae09e88f053e861eedc3ec .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/498645085" 
	@${RM} ${OBJECTDIR}/_ext/498645085/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/498645085/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/498645085/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/498645085/xc32_monitor.o ../src/config/sam_e54_xpro/stdio/xc32_monitor.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2098947918/sys_cache.o: ../src/config/sam_e54_xpro/system/cache/sys_cache.c  .generated_files/flags/sam_e54_xpro/17f3c1182656c7e800677fafab0a8ccfd03ae949 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/2098947918" 
	@${RM} ${OBJECTDIR}/_ext/2098947918/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/2098947918/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2098947918/sys_cache.o.d" -o ${OBJECTDIR}/_ext/2098947918/sys_cache.o ../src/config/sam_e54_xpro/system/cache/sys_cache.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/129427312/sys_int.o: ../src/config/sam_e54_xpro/system/int/src/sys_int.c  .generated_files/flags/sam_e54_xpro/3d4fa0acb5599d31e2d31a34aa9d257e9f07640f .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/129427312" 
	@${RM} ${OBJECTDIR}/_ext/129427312/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/129427312/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/129427312/sys_int.o.d" -o ${OBJECTDIR}/_ext/129427312/sys_int.o ../src/config/sam_e54_xpro/system/int/src/sys_int.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/initialization.o: ../src/config/sam_e54_xpro/initialization.c  .generated_files/flags/sam_e54_xpro/cda3d90e7f9b85144ef32d83cf1fb04e8b9317fa .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/initialization.o.d" -o ${OBJECTDIR}/_ext/68098787/initialization.o ../src/config/sam_e54_xpro/initialization.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/interrupts.o: ../src/config/sam_e54_xpro/interrupts.c  .generated_files/flags/sam_e54_xpro/4b0e1743209db06bb9397f5d1dbd2d6f35b40dd7 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/interrupts.o.d" -o ${OBJECTDIR}/_ext/68098787/interrupts.o ../src/config/sam_e54_xpro/interrupts.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/exceptions.o: ../src/config/sam_e54_xpro/exceptions.c  .generated_files/flags/sam_e54_xpro/652e54cb653918de96c0335ddc301917029a84f4 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/exceptions.o.d" -o ${OBJECTDIR}/_ext/68098787/exceptions.o ../src/config/sam_e54_xpro/exceptions.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/startup_xc32.o: ../src/config/sam_e54_xpro/startup_xc32.c  .generated_files/flags/sam_e54_xpro/5547e3994866a9a34095e6ee6b9136906a454ad0 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/68098787/startup_xc32.o ../src/config/sam_e54_xpro/startup_xc32.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/libc_syscalls.o: ../src/config/sam_e54_xpro/libc_syscalls.c  .generated_files/flags/sam_e54_xpro/efa61076a8810bd3a4afe179d3a10c5635e20b9d .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/68098787/libc_syscalls.o ../src/config/sam_e54_xpro/libc_syscalls.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/tasks.o: ../src/config/sam_e54_xpro/tasks.c  .generated_files/flags/sam_e54_xpro/cf6b59946cd5159a904fe3d5fccbf715d18525ec .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/tasks.o.d" -o ${OBJECTDIR}/_ext/68098787/tasks.o ../src/config/sam_e54_xpro/tasks.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/340199985/mu_time.o: ../src/third_party/rtos/mu_platform/src/mu_time.c  .generated_files/flags/sam_e54_xpro/c776febe541c5109ec6f7f73690ea3fba5dbd03b .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/340199985" 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340199985/mu_time.o.d" -o ${OBJECTDIR}/_ext/340199985/mu_time.o ../src/third_party/rtos/mu_platform/src/mu_time.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/340199985/mu_rtc.o: ../src/third_party/rtos/mu_platform/src/mu_rtc.c  .generated_files/flags/sam_e54_xpro/ae5e6c3414ee828ebf7b08a0506db5db7a4c624a .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/340199985" 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_rtc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340199985/mu_rtc.o.d" -o ${OBJECTDIR}/_ext/340199985/mu_rtc.o ../src/third_party/rtos/mu_platform/src/mu_rtc.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_dlist.o: ../src/third_party/rtos/mulib/collections/src/mu_dlist.c  .generated_files/flags/sam_e54_xpro/bd9745a9bc959789e7afef99a78e60c44777e887 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_dlist.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_dlist.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_dlist.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_dlist.o ../src/third_party/rtos/mulib/collections/src/mu_dlist.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_list.o: ../src/third_party/rtos/mulib/collections/src/mu_list.c  .generated_files/flags/sam_e54_xpro/6ee0d9f72a0ef72587284d06b9fd047a7e26adfa .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_list.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_list.o ../src/third_party/rtos/mulib/collections/src/mu_list.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_cirq.o: ../src/third_party/rtos/mulib/collections/src/mu_cirq.c  .generated_files/flags/sam_e54_xpro/734cc256efd99bf0326f1a282945564f24d1c314 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_cirq.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_cirq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_cirq.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_cirq.o ../src/third_party/rtos/mulib/collections/src/mu_cirq.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_pstore.o: ../src/third_party/rtos/mulib/collections/src/mu_pstore.c  .generated_files/flags/sam_e54_xpro/9e834cdcd4bc73dc4801ad391233c2e2823116e0 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_pstore.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_pstore.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_pstore.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_pstore.o ../src/third_party/rtos/mulib/collections/src/mu_pstore.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_vect.o: ../src/third_party/rtos/mulib/collections/src/mu_vect.c  .generated_files/flags/sam_e54_xpro/58eda6f4c52b05f67d576dbef16fc5615b5aed39 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_vect.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_vect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_vect.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_vect.o ../src/third_party/rtos/mulib/collections/src/mu_vect.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_queue.o: ../src/third_party/rtos/mulib/collections/src/mu_queue.c  .generated_files/flags/sam_e54_xpro/cdfbae7a14e9dca6c982ecbcf2b7187f7dca0266 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_queue.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_queue.o ../src/third_party/rtos/mulib/collections/src/mu_queue.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_bvec.o: ../src/third_party/rtos/mulib/collections/src/mu_bvec.c  .generated_files/flags/sam_e54_xpro/5beb715c71d8a00bdaf4c33241f592e429bc326e .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_bvec.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_bvec.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_bvec.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_bvec.o ../src/third_party/rtos/mulib/collections/src/mu_bvec.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_array.o: ../src/third_party/rtos/mulib/collections/src/mu_array.c  .generated_files/flags/sam_e54_xpro/8e9fb68e824b24004be8fdaad2b9820aefdd79c4 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_array.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_array.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_array.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_array.o ../src/third_party/rtos/mulib/collections/src/mu_array.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1717866393/mu_log.o: ../src/third_party/rtos/mulib/log/src/mu_log.c  .generated_files/flags/sam_e54_xpro/e9f0d6a2735fa367ea706ec3dcbb2660aa8899c .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1717866393" 
	@${RM} ${OBJECTDIR}/_ext/1717866393/mu_log.o.d 
	@${RM} ${OBJECTDIR}/_ext/1717866393/mu_log.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1717866393/mu_log.o.d" -o ${OBJECTDIR}/_ext/1717866393/mu_log.o ../src/third_party/rtos/mulib/log/src/mu_log.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_spsc.o: ../src/third_party/rtos/mulib/sched/src/mu_spsc.c  .generated_files/flags/sam_e54_xpro/ca14af70ed22b178c619995718f7967a169f6b1f .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_spsc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_spsc.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_spsc.o ../src/third_party/rtos/mulib/sched/src/mu_spsc.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_event.o: ../src/third_party/rtos/mulib/sched/src/mu_event.c  .generated_files/flags/sam_e54_xpro/724a9bca4e3fe0238aed2979429f6f2876d58e49 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_event.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_event.o ../src/third_party/rtos/mulib/sched/src/mu_event.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_task.o: ../src/third_party/rtos/mulib/sched/src/mu_task.c  .generated_files/flags/sam_e54_xpro/4a06c6bf0902fc8a06ba16d01b81f2a2cf8b8e6e .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_task.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_task.o ../src/third_party/rtos/mulib/sched/src/mu_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_sched.o: ../src/third_party/rtos/mulib/sched/src/mu_sched.c  .generated_files/flags/sam_e54_xpro/d264eb705483debe288706f7cb43a1a0391364cd .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_sched.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_sched.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_sched.o ../src/third_party/rtos/mulib/sched/src/mu_sched.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_str_utils.o: ../src/third_party/rtos/mulib/string/src/mu_str_utils.c  .generated_files/flags/sam_e54_xpro/26d7aea752d4cc4535b6333b44bddbfc40a4538f .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_str_utils.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o ../src/third_party/rtos/mulib/string/src/mu_str_utils.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_stream.o: ../src/third_party/rtos/mulib/string/src/mu_stream.c  .generated_files/flags/sam_e54_xpro/f1a8746b9eaeba13c987152139cdbd4c8a48d567 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_stream.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_stream.o ../src/third_party/rtos/mulib/string/src/mu_stream.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_strbuf.o: ../src/third_party/rtos/mulib/string/src/mu_strbuf.c  .generated_files/flags/sam_e54_xpro/c403ce9086e848fda8c74b214e18ea48de6e9c7b .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_strbuf.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o ../src/third_party/rtos/mulib/string/src/mu_strbuf.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_str.o: ../src/third_party/rtos/mulib/string/src/mu_str.c  .generated_files/flags/sam_e54_xpro/be2a215a30f826422508e5b9d3a0b29df9452eff .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_str.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_str.o ../src/third_party/rtos/mulib/string/src/mu_str.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1863499398/mu_random.o: ../src/third_party/rtos/mulib/utils/src/mu_random.c  .generated_files/flags/sam_e54_xpro/f5abae3ad6ec41e8a94505162caa6eb242fefa9 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1863499398" 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863499398/mu_random.o.d" -o ${OBJECTDIR}/_ext/1863499398/mu_random.o ../src/third_party/rtos/mulib/utils/src/mu_random.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o: ../src/third_party/rtos/mulib/utils/src/mu_rfc_1123.c  .generated_files/flags/sam_e54_xpro/5a3b4c9cb530eae38ea729b6e4e7cde2add9c2fe .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1863499398" 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o.d" -o ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o ../src/third_party/rtos/mulib/utils/src/mu_rfc_1123.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1863499398/mu_parse_url.o: ../src/third_party/rtos/mulib/utils/src/mu_parse_url.c  .generated_files/flags/sam_e54_xpro/765957ee5632768eb813b3a8c66330cdf945b42f .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1863499398" 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863499398/mu_parse_url.o.d" -o ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o ../src/third_party/rtos/mulib/utils/src/mu_parse_url.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main_e54.o: ../src/main_e54.c  .generated_files/flags/sam_e54_xpro/f052f519c5a4f8865adef800e532a6afe167749e .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_e54.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_e54.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main_e54.o.d" -o ${OBJECTDIR}/_ext/1360937237/main_e54.o ../src/main_e54.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/sam_e54_xpro/567a183563d5af38b206ea9601c8eb30a171db8 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/printer_task.o: ../src/printer_task.c  .generated_files/flags/sam_e54_xpro/132ce790053206eab4b5d2d55566fa17e2ee0f4f .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/printer_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/printer_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/printer_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/printer_task.o ../src/printer_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/sensor_task.o: ../src/sensor_task.c  .generated_files/flags/sam_e54_xpro/f71bdb2b63037c61d0884f25215bc6f988b428a8 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sensor_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sensor_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/sensor_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/sensor_task.o ../src/sensor_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/i2c_task.o: ../src/i2c_task.c  .generated_files/flags/sam_e54_xpro/a31d9211d5596b4021d487f82853b6dca2fab209 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/i2c_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/i2c_task.o ../src/i2c_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/ui_task.o: ../src/ui_task.c  .generated_files/flags/sam_e54_xpro/ce05093e64ef17ee79852f9b7d0adafb9d96cecf .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ui_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ui_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ui_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/ui_task.o ../src/ui_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/2056749927/plib_clock.o: ../src/config/sam_e54_xpro/peripheral/clock/plib_clock.c  .generated_files/flags/sam_e54_xpro/334eba7e4726f67b5aca1f2f1a3e0baee4c9e4ff .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/2056749927" 
	@${RM} ${OBJECTDIR}/_ext/2056749927/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2056749927/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2056749927/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2056749927/plib_clock.o ../src/config/sam_e54_xpro/peripheral/clock/plib_clock.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/349294639/plib_cmcc.o: ../src/config/sam_e54_xpro/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/sam_e54_xpro/63cbfd78e34f15cf0a21f56fa6770b013e8fca25 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/349294639" 
	@${RM} ${OBJECTDIR}/_ext/349294639/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/349294639/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/349294639/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/349294639/plib_cmcc.o ../src/config/sam_e54_xpro/peripheral/cmcc/plib_cmcc.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2058899413/plib_evsys.o: ../src/config/sam_e54_xpro/peripheral/evsys/plib_evsys.c  .generated_files/flags/sam_e54_xpro/870ea9e0640150d2cf3ef071b3a37c7cfd74296b .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/2058899413" 
	@${RM} ${OBJECTDIR}/_ext/2058899413/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2058899413/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2058899413/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2058899413/plib_evsys.o ../src/config/sam_e54_xpro/peripheral/evsys/plib_evsys.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/348958103/plib_nvic.o: ../src/config/sam_e54_xpro/peripheral/nvic/plib_nvic.c  .generated_files/flags/sam_e54_xpro/d2ec5d509e445340d909f55f6253050650508895 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/348958103" 
	@${RM} ${OBJECTDIR}/_ext/348958103/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/348958103/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/348958103/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/348958103/plib_nvic.o ../src/config/sam_e54_xpro/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o: ../src/config/sam_e54_xpro/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/sam_e54_xpro/6354dce01f3f0f38f964e0e3229f058ba6d4d4c3 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1986180951" 
	@${RM} ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o ../src/config/sam_e54_xpro/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/348904952/plib_port.o: ../src/config/sam_e54_xpro/peripheral/port/plib_port.c  .generated_files/flags/sam_e54_xpro/8a80f5b7e33e8c6d807dae3c1895061be4141f83 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/348904952" 
	@${RM} ${OBJECTDIR}/_ext/348904952/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/348904952/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/348904952/plib_port.o.d" -o ${OBJECTDIR}/_ext/348904952/plib_port.o ../src/config/sam_e54_xpro/peripheral/port/plib_port.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o: ../src/config/sam_e54_xpro/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/sam_e54_xpro/38a3c6bae17dc4eebe86eb57237845191ed8e495 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1950915590" 
	@${RM} ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o ../src/config/sam_e54_xpro/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o: ../src/config/sam_e54_xpro/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c  .generated_files/flags/sam_e54_xpro/1d1f24ddcdd936c9ded8362b31b68de3f05f96f3 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1267767598" 
	@${RM} ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o.d" -o ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o ../src/config/sam_e54_xpro/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o: ../src/config/sam_e54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c  .generated_files/flags/sam_e54_xpro/76e5f54c922e3a45a61930baae08198ba17a8e39 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/2060180706" 
	@${RM} ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o.d" -o ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o ../src/config/sam_e54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/498645085/xc32_monitor.o: ../src/config/sam_e54_xpro/stdio/xc32_monitor.c  .generated_files/flags/sam_e54_xpro/c7592bbda286e2160f5f57c29b0e7895f3984775 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/498645085" 
	@${RM} ${OBJECTDIR}/_ext/498645085/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/498645085/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/498645085/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/498645085/xc32_monitor.o ../src/config/sam_e54_xpro/stdio/xc32_monitor.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2098947918/sys_cache.o: ../src/config/sam_e54_xpro/system/cache/sys_cache.c  .generated_files/flags/sam_e54_xpro/f48974f564fd2bc4955a00ee3fb3dd855bd44bc4 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/2098947918" 
	@${RM} ${OBJECTDIR}/_ext/2098947918/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/2098947918/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2098947918/sys_cache.o.d" -o ${OBJECTDIR}/_ext/2098947918/sys_cache.o ../src/config/sam_e54_xpro/system/cache/sys_cache.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/129427312/sys_int.o: ../src/config/sam_e54_xpro/system/int/src/sys_int.c  .generated_files/flags/sam_e54_xpro/3e43d07dd9d2175be54d2229735272aa05243c2c .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/129427312" 
	@${RM} ${OBJECTDIR}/_ext/129427312/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/129427312/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/129427312/sys_int.o.d" -o ${OBJECTDIR}/_ext/129427312/sys_int.o ../src/config/sam_e54_xpro/system/int/src/sys_int.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/initialization.o: ../src/config/sam_e54_xpro/initialization.c  .generated_files/flags/sam_e54_xpro/d92061b54a6d68934a229fcff77c5f039cdf1e60 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/initialization.o.d" -o ${OBJECTDIR}/_ext/68098787/initialization.o ../src/config/sam_e54_xpro/initialization.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/interrupts.o: ../src/config/sam_e54_xpro/interrupts.c  .generated_files/flags/sam_e54_xpro/f0d3f8460141b1e92929c084410b42c7cca820e2 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/interrupts.o.d" -o ${OBJECTDIR}/_ext/68098787/interrupts.o ../src/config/sam_e54_xpro/interrupts.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/exceptions.o: ../src/config/sam_e54_xpro/exceptions.c  .generated_files/flags/sam_e54_xpro/fc510168164eedae4e3e96383a03eecdcefa71e5 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/exceptions.o.d" -o ${OBJECTDIR}/_ext/68098787/exceptions.o ../src/config/sam_e54_xpro/exceptions.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/startup_xc32.o: ../src/config/sam_e54_xpro/startup_xc32.c  .generated_files/flags/sam_e54_xpro/94fb0d762ceb5e6eebb878f15ea57ba7f7a7942f .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/68098787/startup_xc32.o ../src/config/sam_e54_xpro/startup_xc32.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/libc_syscalls.o: ../src/config/sam_e54_xpro/libc_syscalls.c  .generated_files/flags/sam_e54_xpro/c48aed570227f4dbda950d0e235d161a83c4b6b8 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/68098787/libc_syscalls.o ../src/config/sam_e54_xpro/libc_syscalls.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/tasks.o: ../src/config/sam_e54_xpro/tasks.c  .generated_files/flags/sam_e54_xpro/8b38f15f21ff6d7fced99522a1f802a0262c3d68 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/tasks.o.d" -o ${OBJECTDIR}/_ext/68098787/tasks.o ../src/config/sam_e54_xpro/tasks.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/340199985/mu_time.o: ../src/third_party/rtos/mu_platform/src/mu_time.c  .generated_files/flags/sam_e54_xpro/87b7fd74303334d4eac4893db99b0787fbb3191e .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/340199985" 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340199985/mu_time.o.d" -o ${OBJECTDIR}/_ext/340199985/mu_time.o ../src/third_party/rtos/mu_platform/src/mu_time.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/340199985/mu_rtc.o: ../src/third_party/rtos/mu_platform/src/mu_rtc.c  .generated_files/flags/sam_e54_xpro/355123bb4dbd2a41addc4b8cc6010db3049d1f00 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/340199985" 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_rtc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340199985/mu_rtc.o.d" -o ${OBJECTDIR}/_ext/340199985/mu_rtc.o ../src/third_party/rtos/mu_platform/src/mu_rtc.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_dlist.o: ../src/third_party/rtos/mulib/collections/src/mu_dlist.c  .generated_files/flags/sam_e54_xpro/8ac746b3d3bb3b11b3f413676624b4402818acfb .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_dlist.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_dlist.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_dlist.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_dlist.o ../src/third_party/rtos/mulib/collections/src/mu_dlist.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_list.o: ../src/third_party/rtos/mulib/collections/src/mu_list.c  .generated_files/flags/sam_e54_xpro/eb3f87e89bfa8fcb418c1b3041aeaf33c2521e5a .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_list.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_list.o ../src/third_party/rtos/mulib/collections/src/mu_list.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_cirq.o: ../src/third_party/rtos/mulib/collections/src/mu_cirq.c  .generated_files/flags/sam_e54_xpro/df40dcf4ad0854dba7572d9d055d75466554f1fd .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_cirq.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_cirq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_cirq.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_cirq.o ../src/third_party/rtos/mulib/collections/src/mu_cirq.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_pstore.o: ../src/third_party/rtos/mulib/collections/src/mu_pstore.c  .generated_files/flags/sam_e54_xpro/51203cf7147a73c260664b91d85405db37a982a6 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_pstore.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_pstore.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_pstore.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_pstore.o ../src/third_party/rtos/mulib/collections/src/mu_pstore.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_vect.o: ../src/third_party/rtos/mulib/collections/src/mu_vect.c  .generated_files/flags/sam_e54_xpro/f953ce26773315e26b9f179e24eafa0a3f871684 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_vect.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_vect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_vect.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_vect.o ../src/third_party/rtos/mulib/collections/src/mu_vect.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_queue.o: ../src/third_party/rtos/mulib/collections/src/mu_queue.c  .generated_files/flags/sam_e54_xpro/f08e4f03f6ebf16181e2cefffb13da8dd0e9ce12 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_queue.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_queue.o ../src/third_party/rtos/mulib/collections/src/mu_queue.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_bvec.o: ../src/third_party/rtos/mulib/collections/src/mu_bvec.c  .generated_files/flags/sam_e54_xpro/681851a40bd88fe4ab6cf1f1f63c0ef6e976d5b8 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_bvec.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_bvec.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_bvec.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_bvec.o ../src/third_party/rtos/mulib/collections/src/mu_bvec.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_array.o: ../src/third_party/rtos/mulib/collections/src/mu_array.c  .generated_files/flags/sam_e54_xpro/b2432fa9fa7a3c687f1bc40a8e918024b0063655 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_array.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_array.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_array.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_array.o ../src/third_party/rtos/mulib/collections/src/mu_array.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1717866393/mu_log.o: ../src/third_party/rtos/mulib/log/src/mu_log.c  .generated_files/flags/sam_e54_xpro/320d9a213d6d9759752961cf3fae2fc688faab48 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1717866393" 
	@${RM} ${OBJECTDIR}/_ext/1717866393/mu_log.o.d 
	@${RM} ${OBJECTDIR}/_ext/1717866393/mu_log.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1717866393/mu_log.o.d" -o ${OBJECTDIR}/_ext/1717866393/mu_log.o ../src/third_party/rtos/mulib/log/src/mu_log.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_spsc.o: ../src/third_party/rtos/mulib/sched/src/mu_spsc.c  .generated_files/flags/sam_e54_xpro/532257383782217f96e71ff9d70ff18067ca9ca5 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_spsc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_spsc.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_spsc.o ../src/third_party/rtos/mulib/sched/src/mu_spsc.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_event.o: ../src/third_party/rtos/mulib/sched/src/mu_event.c  .generated_files/flags/sam_e54_xpro/574c9834ec92555cc989321fbc5b084b978a1021 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_event.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_event.o ../src/third_party/rtos/mulib/sched/src/mu_event.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_task.o: ../src/third_party/rtos/mulib/sched/src/mu_task.c  .generated_files/flags/sam_e54_xpro/ab88220c87c2365e73f252eaa8a20a70104e089c .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_task.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_task.o ../src/third_party/rtos/mulib/sched/src/mu_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_sched.o: ../src/third_party/rtos/mulib/sched/src/mu_sched.c  .generated_files/flags/sam_e54_xpro/19a3df48bf0918098e152fd031e4794bf650b80d .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_sched.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_sched.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_sched.o ../src/third_party/rtos/mulib/sched/src/mu_sched.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_str_utils.o: ../src/third_party/rtos/mulib/string/src/mu_str_utils.c  .generated_files/flags/sam_e54_xpro/17779317c10662ca609c0f17fcae9d8b13ea2932 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_str_utils.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o ../src/third_party/rtos/mulib/string/src/mu_str_utils.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_stream.o: ../src/third_party/rtos/mulib/string/src/mu_stream.c  .generated_files/flags/sam_e54_xpro/451f8b2da69d023d7e4485ab193fc35f45c4159c .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_stream.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_stream.o ../src/third_party/rtos/mulib/string/src/mu_stream.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_strbuf.o: ../src/third_party/rtos/mulib/string/src/mu_strbuf.c  .generated_files/flags/sam_e54_xpro/e14e1d88f6776b211c2e8a59236dd659eddfcae9 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_strbuf.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o ../src/third_party/rtos/mulib/string/src/mu_strbuf.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_str.o: ../src/third_party/rtos/mulib/string/src/mu_str.c  .generated_files/flags/sam_e54_xpro/e09b937275905a8de55f5898c08acb0a5064018d .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_str.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_str.o ../src/third_party/rtos/mulib/string/src/mu_str.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1863499398/mu_random.o: ../src/third_party/rtos/mulib/utils/src/mu_random.c  .generated_files/flags/sam_e54_xpro/674ca1198b3d8fc68c37dd2ef795c5ab3af334a1 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1863499398" 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863499398/mu_random.o.d" -o ${OBJECTDIR}/_ext/1863499398/mu_random.o ../src/third_party/rtos/mulib/utils/src/mu_random.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o: ../src/third_party/rtos/mulib/utils/src/mu_rfc_1123.c  .generated_files/flags/sam_e54_xpro/95bb25f7f58473066c84827238a3b96b95615184 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1863499398" 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o.d" -o ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o ../src/third_party/rtos/mulib/utils/src/mu_rfc_1123.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1863499398/mu_parse_url.o: ../src/third_party/rtos/mulib/utils/src/mu_parse_url.c  .generated_files/flags/sam_e54_xpro/6107c01232349c5283b7403828fcdc0fba5e6d30 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1863499398" 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863499398/mu_parse_url.o.d" -o ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o ../src/third_party/rtos/mulib/utils/src/mu_parse_url.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main_e54.o: ../src/main_e54.c  .generated_files/flags/sam_e54_xpro/fa9324ef49db6d5489d50fcb1e750c4a9f77e67b .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_e54.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_e54.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main_e54.o.d" -o ${OBJECTDIR}/_ext/1360937237/main_e54.o ../src/main_e54.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/sam_e54_xpro/154d3255f7ee13602bcb6c0916a2861e047ac295 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/printer_task.o: ../src/printer_task.c  .generated_files/flags/sam_e54_xpro/bdb0e94dc822abfbbb9f292f77fe0840f65589ad .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/printer_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/printer_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/printer_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/printer_task.o ../src/printer_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/sensor_task.o: ../src/sensor_task.c  .generated_files/flags/sam_e54_xpro/62870e68f78df0e58849f8fba2ca5f469e8a4a01 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sensor_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sensor_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/sensor_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/sensor_task.o ../src/sensor_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/i2c_task.o: ../src/i2c_task.c  .generated_files/flags/sam_e54_xpro/a463318209605296bb90886dc6a28884d5c1bb28 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/i2c_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/i2c_task.o ../src/i2c_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/ui_task.o: ../src/ui_task.c  .generated_files/flags/sam_e54_xpro/86ef98533387f5f7fef051d816032d5a9bebcd88 .generated_files/flags/sam_e54_xpro/b9cf5ccd6a15c75ed9560c06dc56ae079dd33d3b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ui_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ui_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ui_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/ui_task.o ../src/ui_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/getting_started_drivers_mulib_sam_e54_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/sam_e54_xpro/ATSAME54P20A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/getting_started_drivers_mulib_sam_e54_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/getting_started_drivers_mulib_sam_e54_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/sam_e54_xpro/ATSAME54P20A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/getting_started_drivers_mulib_sam_e54_xpro.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/getting_started_drivers_mulib_sam_e54_xpro.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
