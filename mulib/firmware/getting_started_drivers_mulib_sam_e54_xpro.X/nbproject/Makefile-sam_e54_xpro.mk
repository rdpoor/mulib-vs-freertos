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
${OBJECTDIR}/_ext/2056749927/plib_clock.o: ../src/config/sam_e54_xpro/peripheral/clock/plib_clock.c  .generated_files/flags/sam_e54_xpro/e1c8894675549a9d8a13575c32088379be567421 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/2056749927" 
	@${RM} ${OBJECTDIR}/_ext/2056749927/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2056749927/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2056749927/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2056749927/plib_clock.o ../src/config/sam_e54_xpro/peripheral/clock/plib_clock.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/349294639/plib_cmcc.o: ../src/config/sam_e54_xpro/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/sam_e54_xpro/3792d7e09789a56dcdccd5161e1186737e44b918 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/349294639" 
	@${RM} ${OBJECTDIR}/_ext/349294639/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/349294639/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/349294639/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/349294639/plib_cmcc.o ../src/config/sam_e54_xpro/peripheral/cmcc/plib_cmcc.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2058899413/plib_evsys.o: ../src/config/sam_e54_xpro/peripheral/evsys/plib_evsys.c  .generated_files/flags/sam_e54_xpro/424787a8ce66145745a869a266d268a18470c96e .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/2058899413" 
	@${RM} ${OBJECTDIR}/_ext/2058899413/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2058899413/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2058899413/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2058899413/plib_evsys.o ../src/config/sam_e54_xpro/peripheral/evsys/plib_evsys.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/348958103/plib_nvic.o: ../src/config/sam_e54_xpro/peripheral/nvic/plib_nvic.c  .generated_files/flags/sam_e54_xpro/7a8d1f30d32fc33fefc0ad7b5b0f2c8cd0da087e .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/348958103" 
	@${RM} ${OBJECTDIR}/_ext/348958103/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/348958103/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/348958103/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/348958103/plib_nvic.o ../src/config/sam_e54_xpro/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o: ../src/config/sam_e54_xpro/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/sam_e54_xpro/387113a0777302927373942871db074e42a2fc9a .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1986180951" 
	@${RM} ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o ../src/config/sam_e54_xpro/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/348904952/plib_port.o: ../src/config/sam_e54_xpro/peripheral/port/plib_port.c  .generated_files/flags/sam_e54_xpro/c92799fd0ca6d975ad4c3d963443a2430c984a71 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/348904952" 
	@${RM} ${OBJECTDIR}/_ext/348904952/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/348904952/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/348904952/plib_port.o.d" -o ${OBJECTDIR}/_ext/348904952/plib_port.o ../src/config/sam_e54_xpro/peripheral/port/plib_port.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o: ../src/config/sam_e54_xpro/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/sam_e54_xpro/c5ba19b9d03fa4fadeec724719ed054143a9db5 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1950915590" 
	@${RM} ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o ../src/config/sam_e54_xpro/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o: ../src/config/sam_e54_xpro/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c  .generated_files/flags/sam_e54_xpro/14e6a0dd46ee93a718a2c7174f8d99e6430ac7fc .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1267767598" 
	@${RM} ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o.d" -o ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o ../src/config/sam_e54_xpro/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o: ../src/config/sam_e54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c  .generated_files/flags/sam_e54_xpro/dd03db8bfbd2955178228c96c37bcf924f984347 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/2060180706" 
	@${RM} ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o.d" -o ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o ../src/config/sam_e54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/498645085/xc32_monitor.o: ../src/config/sam_e54_xpro/stdio/xc32_monitor.c  .generated_files/flags/sam_e54_xpro/40a5adc96d2d16cc174462ef6f3f91b466c492b8 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/498645085" 
	@${RM} ${OBJECTDIR}/_ext/498645085/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/498645085/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/498645085/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/498645085/xc32_monitor.o ../src/config/sam_e54_xpro/stdio/xc32_monitor.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2098947918/sys_cache.o: ../src/config/sam_e54_xpro/system/cache/sys_cache.c  .generated_files/flags/sam_e54_xpro/8832a95d4c549ba6632229fdc52f6c0763dd42e5 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/2098947918" 
	@${RM} ${OBJECTDIR}/_ext/2098947918/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/2098947918/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2098947918/sys_cache.o.d" -o ${OBJECTDIR}/_ext/2098947918/sys_cache.o ../src/config/sam_e54_xpro/system/cache/sys_cache.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/129427312/sys_int.o: ../src/config/sam_e54_xpro/system/int/src/sys_int.c  .generated_files/flags/sam_e54_xpro/851c0fb3f47568f3f5b34396087fb401864f5408 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/129427312" 
	@${RM} ${OBJECTDIR}/_ext/129427312/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/129427312/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/129427312/sys_int.o.d" -o ${OBJECTDIR}/_ext/129427312/sys_int.o ../src/config/sam_e54_xpro/system/int/src/sys_int.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/initialization.o: ../src/config/sam_e54_xpro/initialization.c  .generated_files/flags/sam_e54_xpro/9ec08f4729b577d3853e0828577b008d4e6ae98 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/initialization.o.d" -o ${OBJECTDIR}/_ext/68098787/initialization.o ../src/config/sam_e54_xpro/initialization.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/interrupts.o: ../src/config/sam_e54_xpro/interrupts.c  .generated_files/flags/sam_e54_xpro/ce644a076cfefc06748b55c88cc2b1a6d7d66197 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/interrupts.o.d" -o ${OBJECTDIR}/_ext/68098787/interrupts.o ../src/config/sam_e54_xpro/interrupts.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/exceptions.o: ../src/config/sam_e54_xpro/exceptions.c  .generated_files/flags/sam_e54_xpro/e4261d73c8735e6e6132f3f0946901b7484d5fed .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/exceptions.o.d" -o ${OBJECTDIR}/_ext/68098787/exceptions.o ../src/config/sam_e54_xpro/exceptions.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/startup_xc32.o: ../src/config/sam_e54_xpro/startup_xc32.c  .generated_files/flags/sam_e54_xpro/9683c89241690c3aa4b81d5f550714f0830efab8 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/68098787/startup_xc32.o ../src/config/sam_e54_xpro/startup_xc32.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/libc_syscalls.o: ../src/config/sam_e54_xpro/libc_syscalls.c  .generated_files/flags/sam_e54_xpro/c2d0f516061bef748b06e2e92a9fdf8150abcb1c .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/68098787/libc_syscalls.o ../src/config/sam_e54_xpro/libc_syscalls.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/tasks.o: ../src/config/sam_e54_xpro/tasks.c  .generated_files/flags/sam_e54_xpro/a05efd6082c0d28d339f852f3057f3abab066a75 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/tasks.o.d" -o ${OBJECTDIR}/_ext/68098787/tasks.o ../src/config/sam_e54_xpro/tasks.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/340199985/mu_time.o: ../src/third_party/rtos/mu_platform/src/mu_time.c  .generated_files/flags/sam_e54_xpro/7565f320a9f55d6f46cd21a5708711783c7dedb0 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/340199985" 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340199985/mu_time.o.d" -o ${OBJECTDIR}/_ext/340199985/mu_time.o ../src/third_party/rtos/mu_platform/src/mu_time.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/340199985/mu_rtc.o: ../src/third_party/rtos/mu_platform/src/mu_rtc.c  .generated_files/flags/sam_e54_xpro/e989930eabc37848827cf89c065468ca0900e234 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/340199985" 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_rtc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340199985/mu_rtc.o.d" -o ${OBJECTDIR}/_ext/340199985/mu_rtc.o ../src/third_party/rtos/mu_platform/src/mu_rtc.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_dlist.o: ../src/third_party/rtos/mulib/collections/src/mu_dlist.c  .generated_files/flags/sam_e54_xpro/67eac709afb1e43c4f9dba465e304fff2b32f11c .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_dlist.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_dlist.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_dlist.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_dlist.o ../src/third_party/rtos/mulib/collections/src/mu_dlist.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_list.o: ../src/third_party/rtos/mulib/collections/src/mu_list.c  .generated_files/flags/sam_e54_xpro/7deaf5a3b79c11f864357b76b10e4bb2ee2e76ef .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_list.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_list.o ../src/third_party/rtos/mulib/collections/src/mu_list.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_cirq.o: ../src/third_party/rtos/mulib/collections/src/mu_cirq.c  .generated_files/flags/sam_e54_xpro/3cb5328b4f52e4ef2d1e35fbaf3be5359c7e8d7d .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_cirq.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_cirq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_cirq.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_cirq.o ../src/third_party/rtos/mulib/collections/src/mu_cirq.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_pstore.o: ../src/third_party/rtos/mulib/collections/src/mu_pstore.c  .generated_files/flags/sam_e54_xpro/c8f3a320fcb34efae71af71fefa223e39cc3394c .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_pstore.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_pstore.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_pstore.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_pstore.o ../src/third_party/rtos/mulib/collections/src/mu_pstore.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_vect.o: ../src/third_party/rtos/mulib/collections/src/mu_vect.c  .generated_files/flags/sam_e54_xpro/2835f4424990fd653619d56ff29306cff5ce17f0 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_vect.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_vect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_vect.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_vect.o ../src/third_party/rtos/mulib/collections/src/mu_vect.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_queue.o: ../src/third_party/rtos/mulib/collections/src/mu_queue.c  .generated_files/flags/sam_e54_xpro/42e01dd224ee1bafc87cd5f53e1ae8eaba84eb41 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_queue.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_queue.o ../src/third_party/rtos/mulib/collections/src/mu_queue.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_bvec.o: ../src/third_party/rtos/mulib/collections/src/mu_bvec.c  .generated_files/flags/sam_e54_xpro/3919c277668b8602f90882cd8c60dcdd6f5b2351 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_bvec.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_bvec.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_bvec.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_bvec.o ../src/third_party/rtos/mulib/collections/src/mu_bvec.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_array.o: ../src/third_party/rtos/mulib/collections/src/mu_array.c  .generated_files/flags/sam_e54_xpro/ad3965cf420a916b3276a44349fa9e44fe89f766 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_array.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_array.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_array.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_array.o ../src/third_party/rtos/mulib/collections/src/mu_array.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1717866393/mu_log.o: ../src/third_party/rtos/mulib/log/src/mu_log.c  .generated_files/flags/sam_e54_xpro/362fcc205675e84dad899145fbd75676964a13b6 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1717866393" 
	@${RM} ${OBJECTDIR}/_ext/1717866393/mu_log.o.d 
	@${RM} ${OBJECTDIR}/_ext/1717866393/mu_log.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1717866393/mu_log.o.d" -o ${OBJECTDIR}/_ext/1717866393/mu_log.o ../src/third_party/rtos/mulib/log/src/mu_log.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_spsc.o: ../src/third_party/rtos/mulib/sched/src/mu_spsc.c  .generated_files/flags/sam_e54_xpro/39f7b8b79345796bda363a0b25d6cfbbf5998c4a .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_spsc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_spsc.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_spsc.o ../src/third_party/rtos/mulib/sched/src/mu_spsc.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_event.o: ../src/third_party/rtos/mulib/sched/src/mu_event.c  .generated_files/flags/sam_e54_xpro/92892c3a0e93e7d137a716a823d638d50309738e .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_event.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_event.o ../src/third_party/rtos/mulib/sched/src/mu_event.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_task.o: ../src/third_party/rtos/mulib/sched/src/mu_task.c  .generated_files/flags/sam_e54_xpro/9bf3de40a249e8e7d8854154a81d633e8d44e43a .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_task.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_task.o ../src/third_party/rtos/mulib/sched/src/mu_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_sched.o: ../src/third_party/rtos/mulib/sched/src/mu_sched.c  .generated_files/flags/sam_e54_xpro/fa18f290f842a0841dfb780f5c5c36c7a7474ed4 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_sched.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_sched.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_sched.o ../src/third_party/rtos/mulib/sched/src/mu_sched.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_str_utils.o: ../src/third_party/rtos/mulib/string/src/mu_str_utils.c  .generated_files/flags/sam_e54_xpro/cd27e3fdf90cded66f176b9135fd73985c8d58e7 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_str_utils.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o ../src/third_party/rtos/mulib/string/src/mu_str_utils.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_stream.o: ../src/third_party/rtos/mulib/string/src/mu_stream.c  .generated_files/flags/sam_e54_xpro/2073c7eb105c90ba1431f78ae9145c26a222448d .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_stream.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_stream.o ../src/third_party/rtos/mulib/string/src/mu_stream.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_strbuf.o: ../src/third_party/rtos/mulib/string/src/mu_strbuf.c  .generated_files/flags/sam_e54_xpro/ed3f961878ec5bdf47c295817dd1cab073b8504 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_strbuf.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o ../src/third_party/rtos/mulib/string/src/mu_strbuf.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_str.o: ../src/third_party/rtos/mulib/string/src/mu_str.c  .generated_files/flags/sam_e54_xpro/3df17851471b22406733aec8140b7b028ea951cf .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_str.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_str.o ../src/third_party/rtos/mulib/string/src/mu_str.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1863499398/mu_random.o: ../src/third_party/rtos/mulib/utils/src/mu_random.c  .generated_files/flags/sam_e54_xpro/84c06efd5d4a81c836cca3b3f4d90eddb0bfafe2 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1863499398" 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863499398/mu_random.o.d" -o ${OBJECTDIR}/_ext/1863499398/mu_random.o ../src/third_party/rtos/mulib/utils/src/mu_random.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o: ../src/third_party/rtos/mulib/utils/src/mu_rfc_1123.c  .generated_files/flags/sam_e54_xpro/de474992f9fa2205e4f2f65002ec8f1c940e0ba2 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1863499398" 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o.d" -o ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o ../src/third_party/rtos/mulib/utils/src/mu_rfc_1123.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1863499398/mu_parse_url.o: ../src/third_party/rtos/mulib/utils/src/mu_parse_url.c  .generated_files/flags/sam_e54_xpro/2541a848c086d7c15a2adaf893df7a2567a12ef1 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1863499398" 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863499398/mu_parse_url.o.d" -o ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o ../src/third_party/rtos/mulib/utils/src/mu_parse_url.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main_e54.o: ../src/main_e54.c  .generated_files/flags/sam_e54_xpro/b0b894c8bd512b3f3afaf1040745a6fea5b34e60 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_e54.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_e54.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main_e54.o.d" -o ${OBJECTDIR}/_ext/1360937237/main_e54.o ../src/main_e54.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/sam_e54_xpro/d6db1b2db86a187c86d48677cf3e0a2eef343975 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/printer_task.o: ../src/printer_task.c  .generated_files/flags/sam_e54_xpro/f7316d092086b74c6f82837258e8b14885aba679 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/printer_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/printer_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/printer_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/printer_task.o ../src/printer_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/sensor_task.o: ../src/sensor_task.c  .generated_files/flags/sam_e54_xpro/f07fbc5dc9cb91164b91eca147434d8b038545b1 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sensor_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sensor_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/sensor_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/sensor_task.o ../src/sensor_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/i2c_task.o: ../src/i2c_task.c  .generated_files/flags/sam_e54_xpro/ba73cb1e6de9707caf402e40ca8a91f6d9c5f27c .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/i2c_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/i2c_task.o ../src/i2c_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/ui_task.o: ../src/ui_task.c  .generated_files/flags/sam_e54_xpro/740288e1be190a5f4377af3c3e69b552fcdf7e99 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ui_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ui_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ui_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/ui_task.o ../src/ui_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/2056749927/plib_clock.o: ../src/config/sam_e54_xpro/peripheral/clock/plib_clock.c  .generated_files/flags/sam_e54_xpro/4dfc7587857886a83f6919519b39d50a6247d175 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/2056749927" 
	@${RM} ${OBJECTDIR}/_ext/2056749927/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2056749927/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2056749927/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2056749927/plib_clock.o ../src/config/sam_e54_xpro/peripheral/clock/plib_clock.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/349294639/plib_cmcc.o: ../src/config/sam_e54_xpro/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/sam_e54_xpro/72a4b146206a24bcdc9396283ee4d79c093a362d .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/349294639" 
	@${RM} ${OBJECTDIR}/_ext/349294639/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/349294639/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/349294639/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/349294639/plib_cmcc.o ../src/config/sam_e54_xpro/peripheral/cmcc/plib_cmcc.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2058899413/plib_evsys.o: ../src/config/sam_e54_xpro/peripheral/evsys/plib_evsys.c  .generated_files/flags/sam_e54_xpro/a18f28a52c807d8d2f642bf8889246ca193c53fb .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/2058899413" 
	@${RM} ${OBJECTDIR}/_ext/2058899413/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2058899413/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2058899413/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2058899413/plib_evsys.o ../src/config/sam_e54_xpro/peripheral/evsys/plib_evsys.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/348958103/plib_nvic.o: ../src/config/sam_e54_xpro/peripheral/nvic/plib_nvic.c  .generated_files/flags/sam_e54_xpro/99029aea0f329f84602ba19415ae03b1c117837 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/348958103" 
	@${RM} ${OBJECTDIR}/_ext/348958103/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/348958103/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/348958103/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/348958103/plib_nvic.o ../src/config/sam_e54_xpro/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o: ../src/config/sam_e54_xpro/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/sam_e54_xpro/bd2f2074aaed65b8c4e26e76f2df8c52b73fbb30 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1986180951" 
	@${RM} ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o ../src/config/sam_e54_xpro/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/348904952/plib_port.o: ../src/config/sam_e54_xpro/peripheral/port/plib_port.c  .generated_files/flags/sam_e54_xpro/a2a4a4e2b9984dc47f538c807aa9c3dfb20ca072 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/348904952" 
	@${RM} ${OBJECTDIR}/_ext/348904952/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/348904952/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/348904952/plib_port.o.d" -o ${OBJECTDIR}/_ext/348904952/plib_port.o ../src/config/sam_e54_xpro/peripheral/port/plib_port.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o: ../src/config/sam_e54_xpro/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/sam_e54_xpro/f11c0f5c7e86bdb0f19f34f73ab148a431b80af3 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1950915590" 
	@${RM} ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o ../src/config/sam_e54_xpro/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o: ../src/config/sam_e54_xpro/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c  .generated_files/flags/sam_e54_xpro/f282d85078839ead67b2f0c4cbebb6dbc43f3ec4 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1267767598" 
	@${RM} ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o.d" -o ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o ../src/config/sam_e54_xpro/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o: ../src/config/sam_e54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c  .generated_files/flags/sam_e54_xpro/aaf57e5c8504223e4102f12992158971eaf6a2e6 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/2060180706" 
	@${RM} ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o.d" -o ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o ../src/config/sam_e54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/498645085/xc32_monitor.o: ../src/config/sam_e54_xpro/stdio/xc32_monitor.c  .generated_files/flags/sam_e54_xpro/9a9db0deae85f0a525a7c0b8a0b04bc111d337db .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/498645085" 
	@${RM} ${OBJECTDIR}/_ext/498645085/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/498645085/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/498645085/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/498645085/xc32_monitor.o ../src/config/sam_e54_xpro/stdio/xc32_monitor.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2098947918/sys_cache.o: ../src/config/sam_e54_xpro/system/cache/sys_cache.c  .generated_files/flags/sam_e54_xpro/94f5db14854ccd286a94825b70569d10208914c0 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/2098947918" 
	@${RM} ${OBJECTDIR}/_ext/2098947918/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/2098947918/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2098947918/sys_cache.o.d" -o ${OBJECTDIR}/_ext/2098947918/sys_cache.o ../src/config/sam_e54_xpro/system/cache/sys_cache.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/129427312/sys_int.o: ../src/config/sam_e54_xpro/system/int/src/sys_int.c  .generated_files/flags/sam_e54_xpro/34560d607fe508cb62e06e0b3a0105880dc38405 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/129427312" 
	@${RM} ${OBJECTDIR}/_ext/129427312/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/129427312/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/129427312/sys_int.o.d" -o ${OBJECTDIR}/_ext/129427312/sys_int.o ../src/config/sam_e54_xpro/system/int/src/sys_int.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/initialization.o: ../src/config/sam_e54_xpro/initialization.c  .generated_files/flags/sam_e54_xpro/d30332144230ad341fbb561940d664305cdded98 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/initialization.o.d" -o ${OBJECTDIR}/_ext/68098787/initialization.o ../src/config/sam_e54_xpro/initialization.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/interrupts.o: ../src/config/sam_e54_xpro/interrupts.c  .generated_files/flags/sam_e54_xpro/cb02649c8f14bd3cf2abfc66b952da7deab86e05 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/interrupts.o.d" -o ${OBJECTDIR}/_ext/68098787/interrupts.o ../src/config/sam_e54_xpro/interrupts.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/exceptions.o: ../src/config/sam_e54_xpro/exceptions.c  .generated_files/flags/sam_e54_xpro/9f0cb37da53a57659f766cbdb04e70aa1944cec1 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/exceptions.o.d" -o ${OBJECTDIR}/_ext/68098787/exceptions.o ../src/config/sam_e54_xpro/exceptions.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/startup_xc32.o: ../src/config/sam_e54_xpro/startup_xc32.c  .generated_files/flags/sam_e54_xpro/1881d1fe1d9707c3479af32f4bdc6596dca45df4 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/68098787/startup_xc32.o ../src/config/sam_e54_xpro/startup_xc32.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/libc_syscalls.o: ../src/config/sam_e54_xpro/libc_syscalls.c  .generated_files/flags/sam_e54_xpro/2dd9ce65482422c532c86188b97ce7efd6a7b5a7 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/68098787/libc_syscalls.o ../src/config/sam_e54_xpro/libc_syscalls.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/tasks.o: ../src/config/sam_e54_xpro/tasks.c  .generated_files/flags/sam_e54_xpro/a9d832f50a564ab92c0074a3afd55b69d5802858 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/tasks.o.d" -o ${OBJECTDIR}/_ext/68098787/tasks.o ../src/config/sam_e54_xpro/tasks.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/340199985/mu_time.o: ../src/third_party/rtos/mu_platform/src/mu_time.c  .generated_files/flags/sam_e54_xpro/ab6c6e445c8002759ef8747036ebdd3ba6a3c1bf .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/340199985" 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340199985/mu_time.o.d" -o ${OBJECTDIR}/_ext/340199985/mu_time.o ../src/third_party/rtos/mu_platform/src/mu_time.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/340199985/mu_rtc.o: ../src/third_party/rtos/mu_platform/src/mu_rtc.c  .generated_files/flags/sam_e54_xpro/b81265f0d2ebf6bd444b5a398deef320aea2312 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/340199985" 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_rtc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340199985/mu_rtc.o.d" -o ${OBJECTDIR}/_ext/340199985/mu_rtc.o ../src/third_party/rtos/mu_platform/src/mu_rtc.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_dlist.o: ../src/third_party/rtos/mulib/collections/src/mu_dlist.c  .generated_files/flags/sam_e54_xpro/300ffe0b7d2e69ac3b800ef0d7922a63d1a9e7d2 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_dlist.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_dlist.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_dlist.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_dlist.o ../src/third_party/rtos/mulib/collections/src/mu_dlist.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_list.o: ../src/third_party/rtos/mulib/collections/src/mu_list.c  .generated_files/flags/sam_e54_xpro/103a9318c86300a57499d41aced3b4c6561749d .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_list.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_list.o ../src/third_party/rtos/mulib/collections/src/mu_list.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_cirq.o: ../src/third_party/rtos/mulib/collections/src/mu_cirq.c  .generated_files/flags/sam_e54_xpro/a5b05abe413796beff8270a7a650c996d87b5bad .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_cirq.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_cirq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_cirq.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_cirq.o ../src/third_party/rtos/mulib/collections/src/mu_cirq.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_pstore.o: ../src/third_party/rtos/mulib/collections/src/mu_pstore.c  .generated_files/flags/sam_e54_xpro/6e506096b69bdf1f7ac19b3bf448955c8152b9eb .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_pstore.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_pstore.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_pstore.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_pstore.o ../src/third_party/rtos/mulib/collections/src/mu_pstore.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_vect.o: ../src/third_party/rtos/mulib/collections/src/mu_vect.c  .generated_files/flags/sam_e54_xpro/9f41a091692a72a6dae2a66658ec0488ec90b6ce .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_vect.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_vect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_vect.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_vect.o ../src/third_party/rtos/mulib/collections/src/mu_vect.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_queue.o: ../src/third_party/rtos/mulib/collections/src/mu_queue.c  .generated_files/flags/sam_e54_xpro/fcefccc8cf70c91455eeee82dab5974033e67456 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_queue.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_queue.o ../src/third_party/rtos/mulib/collections/src/mu_queue.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_bvec.o: ../src/third_party/rtos/mulib/collections/src/mu_bvec.c  .generated_files/flags/sam_e54_xpro/dab1414631c4e312d9a25cbeb543e59735abb6b3 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_bvec.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_bvec.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_bvec.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_bvec.o ../src/third_party/rtos/mulib/collections/src/mu_bvec.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_array.o: ../src/third_party/rtos/mulib/collections/src/mu_array.c  .generated_files/flags/sam_e54_xpro/7c9aadb5ba0c7e4512546e79b7494fb7aa356c8a .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_array.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_array.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_array.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_array.o ../src/third_party/rtos/mulib/collections/src/mu_array.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1717866393/mu_log.o: ../src/third_party/rtos/mulib/log/src/mu_log.c  .generated_files/flags/sam_e54_xpro/e5149b998db7cdb5f46b1f56f95ae91c849d1925 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1717866393" 
	@${RM} ${OBJECTDIR}/_ext/1717866393/mu_log.o.d 
	@${RM} ${OBJECTDIR}/_ext/1717866393/mu_log.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1717866393/mu_log.o.d" -o ${OBJECTDIR}/_ext/1717866393/mu_log.o ../src/third_party/rtos/mulib/log/src/mu_log.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_spsc.o: ../src/third_party/rtos/mulib/sched/src/mu_spsc.c  .generated_files/flags/sam_e54_xpro/dae5bbac12e6949c42efe0a19168d92f92348820 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_spsc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_spsc.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_spsc.o ../src/third_party/rtos/mulib/sched/src/mu_spsc.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_event.o: ../src/third_party/rtos/mulib/sched/src/mu_event.c  .generated_files/flags/sam_e54_xpro/e7d11ee27ab6cb63188802fac71d1a97dd809320 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_event.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_event.o ../src/third_party/rtos/mulib/sched/src/mu_event.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_task.o: ../src/third_party/rtos/mulib/sched/src/mu_task.c  .generated_files/flags/sam_e54_xpro/1caf70a69568037baa4acbc0abd76c6d892dea9c .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_task.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_task.o ../src/third_party/rtos/mulib/sched/src/mu_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_sched.o: ../src/third_party/rtos/mulib/sched/src/mu_sched.c  .generated_files/flags/sam_e54_xpro/ddc52fa0c0a974b308eedeb1259000fc7d4c93a4 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_sched.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_sched.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_sched.o ../src/third_party/rtos/mulib/sched/src/mu_sched.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_str_utils.o: ../src/third_party/rtos/mulib/string/src/mu_str_utils.c  .generated_files/flags/sam_e54_xpro/94b3625afe1bc0ce783c841bc6a10a0264255a17 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_str_utils.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o ../src/third_party/rtos/mulib/string/src/mu_str_utils.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_stream.o: ../src/third_party/rtos/mulib/string/src/mu_stream.c  .generated_files/flags/sam_e54_xpro/a46ceb21ce5aebe057a8e8c64feacfa95e05d87 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_stream.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_stream.o ../src/third_party/rtos/mulib/string/src/mu_stream.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_strbuf.o: ../src/third_party/rtos/mulib/string/src/mu_strbuf.c  .generated_files/flags/sam_e54_xpro/36f0c8085439c8801de1758cc7fbcb751f5941fd .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_strbuf.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o ../src/third_party/rtos/mulib/string/src/mu_strbuf.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_str.o: ../src/third_party/rtos/mulib/string/src/mu_str.c  .generated_files/flags/sam_e54_xpro/a6c120d54746e15c88d1487365abd11cfdd3559e .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_str.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_str.o ../src/third_party/rtos/mulib/string/src/mu_str.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1863499398/mu_random.o: ../src/third_party/rtos/mulib/utils/src/mu_random.c  .generated_files/flags/sam_e54_xpro/5213cf7880607384112d9b4bc11a5ebbf1bea316 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1863499398" 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863499398/mu_random.o.d" -o ${OBJECTDIR}/_ext/1863499398/mu_random.o ../src/third_party/rtos/mulib/utils/src/mu_random.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o: ../src/third_party/rtos/mulib/utils/src/mu_rfc_1123.c  .generated_files/flags/sam_e54_xpro/3cbbf8033d34e8ffeda2d6c4cffbcf493bf98762 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1863499398" 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o.d" -o ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o ../src/third_party/rtos/mulib/utils/src/mu_rfc_1123.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1863499398/mu_parse_url.o: ../src/third_party/rtos/mulib/utils/src/mu_parse_url.c  .generated_files/flags/sam_e54_xpro/a97b2f3d844a421ea82feaadde59e53b8c419d62 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1863499398" 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863499398/mu_parse_url.o.d" -o ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o ../src/third_party/rtos/mulib/utils/src/mu_parse_url.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main_e54.o: ../src/main_e54.c  .generated_files/flags/sam_e54_xpro/508db65036fd3aaf3e4855e8d6128a37aaf29148 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_e54.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_e54.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main_e54.o.d" -o ${OBJECTDIR}/_ext/1360937237/main_e54.o ../src/main_e54.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/sam_e54_xpro/b4408ee54e65eda730aacd258113da28dcf187a1 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/printer_task.o: ../src/printer_task.c  .generated_files/flags/sam_e54_xpro/b374ce3752356b270d8c10a963e64904b04a8d6a .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/printer_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/printer_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/printer_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/printer_task.o ../src/printer_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/sensor_task.o: ../src/sensor_task.c  .generated_files/flags/sam_e54_xpro/57dc0e801a2ba81d6033e28d172f3d159fd653f0 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sensor_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sensor_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/sensor_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/sensor_task.o ../src/sensor_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/i2c_task.o: ../src/i2c_task.c  .generated_files/flags/sam_e54_xpro/ba14bbed28e0f867f327042ae1c66d5af581e73e .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/i2c_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/i2c_task.o ../src/i2c_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/ui_task.o: ../src/ui_task.c  .generated_files/flags/sam_e54_xpro/57f47a29c015a4e93c411530304c307c870ca188 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ui_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ui_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ui_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/ui_task.o ../src/ui_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -Os -mno-device-startup-code -o ${DISTDIR}/getting_started_drivers_mulib_sam_e54_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/getting_started_drivers_mulib_sam_e54_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/sam_e54_xpro/ATSAME54P20A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -Os -mno-device-startup-code -o ${DISTDIR}/getting_started_drivers_mulib_sam_e54_xpro.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
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
