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
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=sam_e54_xpro
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/getting_started_drivers_mulib_sam_e54_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/getting_started_drivers_mulib_sam_e54_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/sam_e54_xpro/peripheral/clock/plib_clock.c ../src/config/sam_e54_xpro/peripheral/cmcc/plib_cmcc.c ../src/config/sam_e54_xpro/peripheral/evsys/plib_evsys.c ../src/config/sam_e54_xpro/peripheral/nvic/plib_nvic.c ../src/config/sam_e54_xpro/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/sam_e54_xpro/peripheral/port/plib_port.c ../src/config/sam_e54_xpro/peripheral/rtc/plib_rtc_timer.c ../src/config/sam_e54_xpro/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c ../src/config/sam_e54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c ../src/config/sam_e54_xpro/stdio/xc32_monitor.c ../src/config/sam_e54_xpro/system/cache/sys_cache.c ../src/config/sam_e54_xpro/system/int/src/sys_int.c ../src/config/sam_e54_xpro/initialization.c ../src/config/sam_e54_xpro/interrupts.c ../src/config/sam_e54_xpro/exceptions.c ../src/config/sam_e54_xpro/startup_xc32.c ../src/config/sam_e54_xpro/libc_syscalls.c ../src/config/sam_e54_xpro/tasks.c ../src/third_party/rtos/mu_platform/src/mu_time.c ../src/third_party/rtos/mu_platform/src/mu_rtc.c ../src/third_party/rtos/mulib/collections/src/mu_dlist.c ../src/third_party/rtos/mulib/collections/src/mu_list.c ../src/third_party/rtos/mulib/collections/src/mu_cirq.c ../src/third_party/rtos/mulib/collections/src/mu_pstore.c ../src/third_party/rtos/mulib/collections/src/mu_vect.c ../src/third_party/rtos/mulib/collections/src/mu_queue.c ../src/third_party/rtos/mulib/collections/src/mu_bvec.c ../src/third_party/rtos/mulib/collections/src/mu_array.c ../src/third_party/rtos/mulib/log/src/mu_log.c ../src/third_party/rtos/mulib/sched/src/mu_spsc.c ../src/third_party/rtos/mulib/sched/src/mu_event.c ../src/third_party/rtos/mulib/sched/src/mu_task.c ../src/third_party/rtos/mulib/sched/src/mu_sched.c ../src/third_party/rtos/mulib/string/src/mu_str_utils.c ../src/third_party/rtos/mulib/string/src/mu_stream.c ../src/third_party/rtos/mulib/string/src/mu_strbuf.c ../src/third_party/rtos/mulib/string/src/mu_str.c ../src/third_party/rtos/mulib/utils/src/mu_random.c ../src/third_party/rtos/mulib/utils/src/mu_rfc_1123.c ../src/third_party/rtos/mulib/utils/src/mu_parse_url.c ../src/main_e54.c ../src/app.c ../src/eeprom_task.c ../src/printer_task.c ../src/sensor_task.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2056749927/plib_clock.o ${OBJECTDIR}/_ext/349294639/plib_cmcc.o ${OBJECTDIR}/_ext/2058899413/plib_evsys.o ${OBJECTDIR}/_ext/348958103/plib_nvic.o ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o ${OBJECTDIR}/_ext/348904952/plib_port.o ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o ${OBJECTDIR}/_ext/498645085/xc32_monitor.o ${OBJECTDIR}/_ext/2098947918/sys_cache.o ${OBJECTDIR}/_ext/129427312/sys_int.o ${OBJECTDIR}/_ext/68098787/initialization.o ${OBJECTDIR}/_ext/68098787/interrupts.o ${OBJECTDIR}/_ext/68098787/exceptions.o ${OBJECTDIR}/_ext/68098787/startup_xc32.o ${OBJECTDIR}/_ext/68098787/libc_syscalls.o ${OBJECTDIR}/_ext/68098787/tasks.o ${OBJECTDIR}/_ext/340199985/mu_time.o ${OBJECTDIR}/_ext/340199985/mu_rtc.o ${OBJECTDIR}/_ext/1618706070/mu_dlist.o ${OBJECTDIR}/_ext/1618706070/mu_list.o ${OBJECTDIR}/_ext/1618706070/mu_cirq.o ${OBJECTDIR}/_ext/1618706070/mu_pstore.o ${OBJECTDIR}/_ext/1618706070/mu_vect.o ${OBJECTDIR}/_ext/1618706070/mu_queue.o ${OBJECTDIR}/_ext/1618706070/mu_bvec.o ${OBJECTDIR}/_ext/1618706070/mu_array.o ${OBJECTDIR}/_ext/1717866393/mu_log.o ${OBJECTDIR}/_ext/518675852/mu_spsc.o ${OBJECTDIR}/_ext/518675852/mu_event.o ${OBJECTDIR}/_ext/518675852/mu_task.o ${OBJECTDIR}/_ext/518675852/mu_sched.o ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o ${OBJECTDIR}/_ext/1923606554/mu_stream.o ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o ${OBJECTDIR}/_ext/1923606554/mu_str.o ${OBJECTDIR}/_ext/1863499398/mu_random.o ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o ${OBJECTDIR}/_ext/1360937237/main_e54.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/eeprom_task.o ${OBJECTDIR}/_ext/1360937237/printer_task.o ${OBJECTDIR}/_ext/1360937237/sensor_task.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2056749927/plib_clock.o.d ${OBJECTDIR}/_ext/349294639/plib_cmcc.o.d ${OBJECTDIR}/_ext/2058899413/plib_evsys.o.d ${OBJECTDIR}/_ext/348958103/plib_nvic.o.d ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/348904952/plib_port.o.d ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o.d ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o.d ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o.d ${OBJECTDIR}/_ext/498645085/xc32_monitor.o.d ${OBJECTDIR}/_ext/2098947918/sys_cache.o.d ${OBJECTDIR}/_ext/129427312/sys_int.o.d ${OBJECTDIR}/_ext/68098787/initialization.o.d ${OBJECTDIR}/_ext/68098787/interrupts.o.d ${OBJECTDIR}/_ext/68098787/exceptions.o.d ${OBJECTDIR}/_ext/68098787/startup_xc32.o.d ${OBJECTDIR}/_ext/68098787/libc_syscalls.o.d ${OBJECTDIR}/_ext/68098787/tasks.o.d ${OBJECTDIR}/_ext/340199985/mu_time.o.d ${OBJECTDIR}/_ext/340199985/mu_rtc.o.d ${OBJECTDIR}/_ext/1618706070/mu_dlist.o.d ${OBJECTDIR}/_ext/1618706070/mu_list.o.d ${OBJECTDIR}/_ext/1618706070/mu_cirq.o.d ${OBJECTDIR}/_ext/1618706070/mu_pstore.o.d ${OBJECTDIR}/_ext/1618706070/mu_vect.o.d ${OBJECTDIR}/_ext/1618706070/mu_queue.o.d ${OBJECTDIR}/_ext/1618706070/mu_bvec.o.d ${OBJECTDIR}/_ext/1618706070/mu_array.o.d ${OBJECTDIR}/_ext/1717866393/mu_log.o.d ${OBJECTDIR}/_ext/518675852/mu_spsc.o.d ${OBJECTDIR}/_ext/518675852/mu_event.o.d ${OBJECTDIR}/_ext/518675852/mu_task.o.d ${OBJECTDIR}/_ext/518675852/mu_sched.o.d ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o.d ${OBJECTDIR}/_ext/1923606554/mu_stream.o.d ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o.d ${OBJECTDIR}/_ext/1923606554/mu_str.o.d ${OBJECTDIR}/_ext/1863499398/mu_random.o.d ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o.d ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o.d ${OBJECTDIR}/_ext/1360937237/main_e54.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/eeprom_task.o.d ${OBJECTDIR}/_ext/1360937237/printer_task.o.d ${OBJECTDIR}/_ext/1360937237/sensor_task.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2056749927/plib_clock.o ${OBJECTDIR}/_ext/349294639/plib_cmcc.o ${OBJECTDIR}/_ext/2058899413/plib_evsys.o ${OBJECTDIR}/_ext/348958103/plib_nvic.o ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o ${OBJECTDIR}/_ext/348904952/plib_port.o ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o ${OBJECTDIR}/_ext/498645085/xc32_monitor.o ${OBJECTDIR}/_ext/2098947918/sys_cache.o ${OBJECTDIR}/_ext/129427312/sys_int.o ${OBJECTDIR}/_ext/68098787/initialization.o ${OBJECTDIR}/_ext/68098787/interrupts.o ${OBJECTDIR}/_ext/68098787/exceptions.o ${OBJECTDIR}/_ext/68098787/startup_xc32.o ${OBJECTDIR}/_ext/68098787/libc_syscalls.o ${OBJECTDIR}/_ext/68098787/tasks.o ${OBJECTDIR}/_ext/340199985/mu_time.o ${OBJECTDIR}/_ext/340199985/mu_rtc.o ${OBJECTDIR}/_ext/1618706070/mu_dlist.o ${OBJECTDIR}/_ext/1618706070/mu_list.o ${OBJECTDIR}/_ext/1618706070/mu_cirq.o ${OBJECTDIR}/_ext/1618706070/mu_pstore.o ${OBJECTDIR}/_ext/1618706070/mu_vect.o ${OBJECTDIR}/_ext/1618706070/mu_queue.o ${OBJECTDIR}/_ext/1618706070/mu_bvec.o ${OBJECTDIR}/_ext/1618706070/mu_array.o ${OBJECTDIR}/_ext/1717866393/mu_log.o ${OBJECTDIR}/_ext/518675852/mu_spsc.o ${OBJECTDIR}/_ext/518675852/mu_event.o ${OBJECTDIR}/_ext/518675852/mu_task.o ${OBJECTDIR}/_ext/518675852/mu_sched.o ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o ${OBJECTDIR}/_ext/1923606554/mu_stream.o ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o ${OBJECTDIR}/_ext/1923606554/mu_str.o ${OBJECTDIR}/_ext/1863499398/mu_random.o ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o ${OBJECTDIR}/_ext/1360937237/main_e54.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/eeprom_task.o ${OBJECTDIR}/_ext/1360937237/printer_task.o ${OBJECTDIR}/_ext/1360937237/sensor_task.o

# Source Files
SOURCEFILES=../src/config/sam_e54_xpro/peripheral/clock/plib_clock.c ../src/config/sam_e54_xpro/peripheral/cmcc/plib_cmcc.c ../src/config/sam_e54_xpro/peripheral/evsys/plib_evsys.c ../src/config/sam_e54_xpro/peripheral/nvic/plib_nvic.c ../src/config/sam_e54_xpro/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/sam_e54_xpro/peripheral/port/plib_port.c ../src/config/sam_e54_xpro/peripheral/rtc/plib_rtc_timer.c ../src/config/sam_e54_xpro/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c ../src/config/sam_e54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c ../src/config/sam_e54_xpro/stdio/xc32_monitor.c ../src/config/sam_e54_xpro/system/cache/sys_cache.c ../src/config/sam_e54_xpro/system/int/src/sys_int.c ../src/config/sam_e54_xpro/initialization.c ../src/config/sam_e54_xpro/interrupts.c ../src/config/sam_e54_xpro/exceptions.c ../src/config/sam_e54_xpro/startup_xc32.c ../src/config/sam_e54_xpro/libc_syscalls.c ../src/config/sam_e54_xpro/tasks.c ../src/third_party/rtos/mu_platform/src/mu_time.c ../src/third_party/rtos/mu_platform/src/mu_rtc.c ../src/third_party/rtos/mulib/collections/src/mu_dlist.c ../src/third_party/rtos/mulib/collections/src/mu_list.c ../src/third_party/rtos/mulib/collections/src/mu_cirq.c ../src/third_party/rtos/mulib/collections/src/mu_pstore.c ../src/third_party/rtos/mulib/collections/src/mu_vect.c ../src/third_party/rtos/mulib/collections/src/mu_queue.c ../src/third_party/rtos/mulib/collections/src/mu_bvec.c ../src/third_party/rtos/mulib/collections/src/mu_array.c ../src/third_party/rtos/mulib/log/src/mu_log.c ../src/third_party/rtos/mulib/sched/src/mu_spsc.c ../src/third_party/rtos/mulib/sched/src/mu_event.c ../src/third_party/rtos/mulib/sched/src/mu_task.c ../src/third_party/rtos/mulib/sched/src/mu_sched.c ../src/third_party/rtos/mulib/string/src/mu_str_utils.c ../src/third_party/rtos/mulib/string/src/mu_stream.c ../src/third_party/rtos/mulib/string/src/mu_strbuf.c ../src/third_party/rtos/mulib/string/src/mu_str.c ../src/third_party/rtos/mulib/utils/src/mu_random.c ../src/third_party/rtos/mulib/utils/src/mu_rfc_1123.c ../src/third_party/rtos/mulib/utils/src/mu_parse_url.c ../src/main_e54.c ../src/app.c ../src/eeprom_task.c ../src/printer_task.c ../src/sensor_task.c

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
_/_=/
ShExtension=.sh
Device=ATSAME54P20A
ProjectDir=/Users/r/Projects/mulib-vs-freertos/mulib/firmware/getting_started_drivers_mulib_sam_e54_xpro.X
ProjectName=getting_started_drivers_mulib_sam_e54_xpro
ConfName=sam_e54_xpro
ImagePath=dist/sam_e54_xpro/${IMAGE_TYPE}/getting_started_drivers_mulib_sam_e54_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
ImageDir=dist/sam_e54_xpro/${IMAGE_TYPE}
ImageName=getting_started_drivers_mulib_sam_e54_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-sam_e54_xpro.mk dist/${CND_CONF}/${IMAGE_TYPE}/getting_started_drivers_mulib_sam_e54_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "User defined post-build step: [rm -rf ${ProjectDir}/../../hex && mkdir ${ProjectDir}/../../hex && cp ${ProjectDir}/${ImagePath} ${ProjectDir}/../../hex/]"
	@rm -rf ${ProjectDir}/../../hex && mkdir ${ProjectDir}/../../hex && cp ${ProjectDir}/${ImagePath} ${ProjectDir}/../../hex/
	@echo "--------------------------------------"

MP_PROCESSOR_OPTION=ATSAME54P20A
MP_LINKER_FILE_OPTION=,--script="../src/config/sam_e54_xpro/ATSAME54P20A.ld"
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
${OBJECTDIR}/_ext/2056749927/plib_clock.o: ../src/config/sam_e54_xpro/peripheral/clock/plib_clock.c  .generated_files/flags/sam_e54_xpro/cd2d32a7f60e5142d521d12b8ec0cbef028a418a .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/2056749927" 
	@${RM} ${OBJECTDIR}/_ext/2056749927/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2056749927/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2056749927/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2056749927/plib_clock.o ../src/config/sam_e54_xpro/peripheral/clock/plib_clock.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/349294639/plib_cmcc.o: ../src/config/sam_e54_xpro/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/sam_e54_xpro/cde6fb88946bb70252c12dad4b216bb2346ba69f .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/349294639" 
	@${RM} ${OBJECTDIR}/_ext/349294639/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/349294639/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/349294639/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/349294639/plib_cmcc.o ../src/config/sam_e54_xpro/peripheral/cmcc/plib_cmcc.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2058899413/plib_evsys.o: ../src/config/sam_e54_xpro/peripheral/evsys/plib_evsys.c  .generated_files/flags/sam_e54_xpro/6a45a340292e0e940a28f8db39e76fbdca352256 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/2058899413" 
	@${RM} ${OBJECTDIR}/_ext/2058899413/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2058899413/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2058899413/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2058899413/plib_evsys.o ../src/config/sam_e54_xpro/peripheral/evsys/plib_evsys.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/348958103/plib_nvic.o: ../src/config/sam_e54_xpro/peripheral/nvic/plib_nvic.c  .generated_files/flags/sam_e54_xpro/74a6c109a534f0a6591b9bd0dc406810e0a0f570 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/348958103" 
	@${RM} ${OBJECTDIR}/_ext/348958103/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/348958103/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/348958103/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/348958103/plib_nvic.o ../src/config/sam_e54_xpro/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o: ../src/config/sam_e54_xpro/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/sam_e54_xpro/ff67745cd7fb25e508855714295fad89a59600dc .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1986180951" 
	@${RM} ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o ../src/config/sam_e54_xpro/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/348904952/plib_port.o: ../src/config/sam_e54_xpro/peripheral/port/plib_port.c  .generated_files/flags/sam_e54_xpro/37e8e546be6a9101222e63c979d671d60d598f1d .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/348904952" 
	@${RM} ${OBJECTDIR}/_ext/348904952/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/348904952/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/348904952/plib_port.o.d" -o ${OBJECTDIR}/_ext/348904952/plib_port.o ../src/config/sam_e54_xpro/peripheral/port/plib_port.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o: ../src/config/sam_e54_xpro/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/sam_e54_xpro/e0b8caa5cba6f64bc563511d57a512ecaa9fba57 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1950915590" 
	@${RM} ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o ../src/config/sam_e54_xpro/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o: ../src/config/sam_e54_xpro/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c  .generated_files/flags/sam_e54_xpro/5503129fc6756a30c385beb2b2ad0a871724fe32 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1267767598" 
	@${RM} ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o.d" -o ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o ../src/config/sam_e54_xpro/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o: ../src/config/sam_e54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c  .generated_files/flags/sam_e54_xpro/9eac0299785af62d23ab33c8dac479da8b0405eb .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/2060180706" 
	@${RM} ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o.d" -o ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o ../src/config/sam_e54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/498645085/xc32_monitor.o: ../src/config/sam_e54_xpro/stdio/xc32_monitor.c  .generated_files/flags/sam_e54_xpro/806f0bbf50c84e4530856ab78b42565eee231195 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/498645085" 
	@${RM} ${OBJECTDIR}/_ext/498645085/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/498645085/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/498645085/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/498645085/xc32_monitor.o ../src/config/sam_e54_xpro/stdio/xc32_monitor.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2098947918/sys_cache.o: ../src/config/sam_e54_xpro/system/cache/sys_cache.c  .generated_files/flags/sam_e54_xpro/a2de19c22f09699893485469377b48e5bc365f0f .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/2098947918" 
	@${RM} ${OBJECTDIR}/_ext/2098947918/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/2098947918/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2098947918/sys_cache.o.d" -o ${OBJECTDIR}/_ext/2098947918/sys_cache.o ../src/config/sam_e54_xpro/system/cache/sys_cache.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/129427312/sys_int.o: ../src/config/sam_e54_xpro/system/int/src/sys_int.c  .generated_files/flags/sam_e54_xpro/317a2f08abcc36e593eaa35094921bd17c311b4c .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/129427312" 
	@${RM} ${OBJECTDIR}/_ext/129427312/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/129427312/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/129427312/sys_int.o.d" -o ${OBJECTDIR}/_ext/129427312/sys_int.o ../src/config/sam_e54_xpro/system/int/src/sys_int.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/initialization.o: ../src/config/sam_e54_xpro/initialization.c  .generated_files/flags/sam_e54_xpro/7c6ea8d3d68a5aa45ed491a416aec391472f27ea .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/initialization.o.d" -o ${OBJECTDIR}/_ext/68098787/initialization.o ../src/config/sam_e54_xpro/initialization.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/interrupts.o: ../src/config/sam_e54_xpro/interrupts.c  .generated_files/flags/sam_e54_xpro/28add96214182b63a812040d57b0139e12404491 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/interrupts.o.d" -o ${OBJECTDIR}/_ext/68098787/interrupts.o ../src/config/sam_e54_xpro/interrupts.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/exceptions.o: ../src/config/sam_e54_xpro/exceptions.c  .generated_files/flags/sam_e54_xpro/72ead355f15416e5c94b4d3058bfad828ba838b5 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/exceptions.o.d" -o ${OBJECTDIR}/_ext/68098787/exceptions.o ../src/config/sam_e54_xpro/exceptions.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/startup_xc32.o: ../src/config/sam_e54_xpro/startup_xc32.c  .generated_files/flags/sam_e54_xpro/1db94c7fb153700cc9f09eed3073ddd956df86e9 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/68098787/startup_xc32.o ../src/config/sam_e54_xpro/startup_xc32.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/libc_syscalls.o: ../src/config/sam_e54_xpro/libc_syscalls.c  .generated_files/flags/sam_e54_xpro/91c7d00a123b5651f7d7120c3329c8c379fd4 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/68098787/libc_syscalls.o ../src/config/sam_e54_xpro/libc_syscalls.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/tasks.o: ../src/config/sam_e54_xpro/tasks.c  .generated_files/flags/sam_e54_xpro/7727180f29f5e9540ccc3a853f5ff81979583593 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/tasks.o.d" -o ${OBJECTDIR}/_ext/68098787/tasks.o ../src/config/sam_e54_xpro/tasks.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/340199985/mu_time.o: ../src/third_party/rtos/mu_platform/src/mu_time.c  .generated_files/flags/sam_e54_xpro/8ccfab6555af003b2c415a34868805804cfeafbc .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/340199985" 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340199985/mu_time.o.d" -o ${OBJECTDIR}/_ext/340199985/mu_time.o ../src/third_party/rtos/mu_platform/src/mu_time.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/340199985/mu_rtc.o: ../src/third_party/rtos/mu_platform/src/mu_rtc.c  .generated_files/flags/sam_e54_xpro/6baae8518c305be0af731d00d1e77ab53cec2dab .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/340199985" 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_rtc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340199985/mu_rtc.o.d" -o ${OBJECTDIR}/_ext/340199985/mu_rtc.o ../src/third_party/rtos/mu_platform/src/mu_rtc.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_dlist.o: ../src/third_party/rtos/mulib/collections/src/mu_dlist.c  .generated_files/flags/sam_e54_xpro/7ce6e907c555e987a1398fc4f158ef35c016a188 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_dlist.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_dlist.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_dlist.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_dlist.o ../src/third_party/rtos/mulib/collections/src/mu_dlist.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_list.o: ../src/third_party/rtos/mulib/collections/src/mu_list.c  .generated_files/flags/sam_e54_xpro/c9344d2c74467f5657c93f80e9d1ce66f08209b2 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_list.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_list.o ../src/third_party/rtos/mulib/collections/src/mu_list.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_cirq.o: ../src/third_party/rtos/mulib/collections/src/mu_cirq.c  .generated_files/flags/sam_e54_xpro/8dcf313da02ed0f16f9bd92e3f1e03eadb4e8857 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_cirq.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_cirq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_cirq.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_cirq.o ../src/third_party/rtos/mulib/collections/src/mu_cirq.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_pstore.o: ../src/third_party/rtos/mulib/collections/src/mu_pstore.c  .generated_files/flags/sam_e54_xpro/12118997c3518f0701adf51791f00dc3574c35f7 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_pstore.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_pstore.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_pstore.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_pstore.o ../src/third_party/rtos/mulib/collections/src/mu_pstore.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_vect.o: ../src/third_party/rtos/mulib/collections/src/mu_vect.c  .generated_files/flags/sam_e54_xpro/36a7ae48378aa82741f77ded4f2458a028770279 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_vect.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_vect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_vect.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_vect.o ../src/third_party/rtos/mulib/collections/src/mu_vect.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_queue.o: ../src/third_party/rtos/mulib/collections/src/mu_queue.c  .generated_files/flags/sam_e54_xpro/fce6c77fdf70c66c70ed6bb5155ab4511a750b3b .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_queue.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_queue.o ../src/third_party/rtos/mulib/collections/src/mu_queue.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_bvec.o: ../src/third_party/rtos/mulib/collections/src/mu_bvec.c  .generated_files/flags/sam_e54_xpro/1bb3654345e91b241189703b2bb9b1cae5e4cbe .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_bvec.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_bvec.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_bvec.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_bvec.o ../src/third_party/rtos/mulib/collections/src/mu_bvec.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_array.o: ../src/third_party/rtos/mulib/collections/src/mu_array.c  .generated_files/flags/sam_e54_xpro/ccc11047a9b9ae8aaf1fd3e699efed9630d70a1d .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_array.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_array.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_array.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_array.o ../src/third_party/rtos/mulib/collections/src/mu_array.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1717866393/mu_log.o: ../src/third_party/rtos/mulib/log/src/mu_log.c  .generated_files/flags/sam_e54_xpro/ba48e701ab166acfd58c8bca219e940bbb1cf026 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1717866393" 
	@${RM} ${OBJECTDIR}/_ext/1717866393/mu_log.o.d 
	@${RM} ${OBJECTDIR}/_ext/1717866393/mu_log.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1717866393/mu_log.o.d" -o ${OBJECTDIR}/_ext/1717866393/mu_log.o ../src/third_party/rtos/mulib/log/src/mu_log.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_spsc.o: ../src/third_party/rtos/mulib/sched/src/mu_spsc.c  .generated_files/flags/sam_e54_xpro/c3a8493f061f0ddf1daa796f0d099a9e863f2afb .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_spsc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_spsc.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_spsc.o ../src/third_party/rtos/mulib/sched/src/mu_spsc.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_event.o: ../src/third_party/rtos/mulib/sched/src/mu_event.c  .generated_files/flags/sam_e54_xpro/5755f04aaa595a618ff011b2db4e33a4756963ad .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_event.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_event.o ../src/third_party/rtos/mulib/sched/src/mu_event.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_task.o: ../src/third_party/rtos/mulib/sched/src/mu_task.c  .generated_files/flags/sam_e54_xpro/68ac8e2c16d99ea12c8d798e75a9574d74d3b5be .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_task.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_task.o ../src/third_party/rtos/mulib/sched/src/mu_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_sched.o: ../src/third_party/rtos/mulib/sched/src/mu_sched.c  .generated_files/flags/sam_e54_xpro/f1fe15fc6dab96ce44910eaccb7e47c499b6b5f5 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_sched.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_sched.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_sched.o ../src/third_party/rtos/mulib/sched/src/mu_sched.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_str_utils.o: ../src/third_party/rtos/mulib/string/src/mu_str_utils.c  .generated_files/flags/sam_e54_xpro/424192251843ef56ebb0a3cb9a16318003806bcc .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_str_utils.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o ../src/third_party/rtos/mulib/string/src/mu_str_utils.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_stream.o: ../src/third_party/rtos/mulib/string/src/mu_stream.c  .generated_files/flags/sam_e54_xpro/fdd7a05cb49ca379cc1a3f6fe01acfa6c1997231 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_stream.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_stream.o ../src/third_party/rtos/mulib/string/src/mu_stream.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_strbuf.o: ../src/third_party/rtos/mulib/string/src/mu_strbuf.c  .generated_files/flags/sam_e54_xpro/75b3df5c3dbd99d64daed67494dd0cb6921427f4 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_strbuf.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o ../src/third_party/rtos/mulib/string/src/mu_strbuf.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_str.o: ../src/third_party/rtos/mulib/string/src/mu_str.c  .generated_files/flags/sam_e54_xpro/2cf0ba4435a248ea1250856d5a7742a8a2bffba7 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_str.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_str.o ../src/third_party/rtos/mulib/string/src/mu_str.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1863499398/mu_random.o: ../src/third_party/rtos/mulib/utils/src/mu_random.c  .generated_files/flags/sam_e54_xpro/6757d64e0a76a85427a492fe610e1f818bb3a3e7 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1863499398" 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863499398/mu_random.o.d" -o ${OBJECTDIR}/_ext/1863499398/mu_random.o ../src/third_party/rtos/mulib/utils/src/mu_random.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o: ../src/third_party/rtos/mulib/utils/src/mu_rfc_1123.c  .generated_files/flags/sam_e54_xpro/7007d734143c463e46a7629b32f60f4e5c237e0e .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1863499398" 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o.d" -o ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o ../src/third_party/rtos/mulib/utils/src/mu_rfc_1123.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1863499398/mu_parse_url.o: ../src/third_party/rtos/mulib/utils/src/mu_parse_url.c  .generated_files/flags/sam_e54_xpro/6e1fb4da29aae1b2eee7fe7d7807469f37e9112d .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1863499398" 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863499398/mu_parse_url.o.d" -o ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o ../src/third_party/rtos/mulib/utils/src/mu_parse_url.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main_e54.o: ../src/main_e54.c  .generated_files/flags/sam_e54_xpro/65ee88bef9c3330a9ad192eaebd1d5424ca00982 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_e54.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_e54.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main_e54.o.d" -o ${OBJECTDIR}/_ext/1360937237/main_e54.o ../src/main_e54.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/sam_e54_xpro/1bcbda74c55f5971b1fb56021035efeb55be550d .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/eeprom_task.o: ../src/eeprom_task.c  .generated_files/flags/sam_e54_xpro/a6172740a475d7d7a90a9ed662af453c2a620562 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/eeprom_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/eeprom_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/eeprom_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/eeprom_task.o ../src/eeprom_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/printer_task.o: ../src/printer_task.c  .generated_files/flags/sam_e54_xpro/82754260f445ab961dbb72756e1df6e8b12fe7ea .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/printer_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/printer_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/printer_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/printer_task.o ../src/printer_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/sensor_task.o: ../src/sensor_task.c  .generated_files/flags/sam_e54_xpro/356674332a2352ee845ef35756cfe33498a526a0 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sensor_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sensor_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/sensor_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/sensor_task.o ../src/sensor_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/2056749927/plib_clock.o: ../src/config/sam_e54_xpro/peripheral/clock/plib_clock.c  .generated_files/flags/sam_e54_xpro/2b1185139e2a49a40dd6ede9f987531320ce8357 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/2056749927" 
	@${RM} ${OBJECTDIR}/_ext/2056749927/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2056749927/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2056749927/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2056749927/plib_clock.o ../src/config/sam_e54_xpro/peripheral/clock/plib_clock.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/349294639/plib_cmcc.o: ../src/config/sam_e54_xpro/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/sam_e54_xpro/15b091528f54143303423f1fed8b6fd4122d705b .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/349294639" 
	@${RM} ${OBJECTDIR}/_ext/349294639/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/349294639/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/349294639/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/349294639/plib_cmcc.o ../src/config/sam_e54_xpro/peripheral/cmcc/plib_cmcc.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2058899413/plib_evsys.o: ../src/config/sam_e54_xpro/peripheral/evsys/plib_evsys.c  .generated_files/flags/sam_e54_xpro/d843d7efa1b2aa386d10460de8291014a483791 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/2058899413" 
	@${RM} ${OBJECTDIR}/_ext/2058899413/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2058899413/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2058899413/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2058899413/plib_evsys.o ../src/config/sam_e54_xpro/peripheral/evsys/plib_evsys.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/348958103/plib_nvic.o: ../src/config/sam_e54_xpro/peripheral/nvic/plib_nvic.c  .generated_files/flags/sam_e54_xpro/90cccb68707755307bd9d97822a1a975c90cf635 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/348958103" 
	@${RM} ${OBJECTDIR}/_ext/348958103/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/348958103/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/348958103/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/348958103/plib_nvic.o ../src/config/sam_e54_xpro/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o: ../src/config/sam_e54_xpro/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/sam_e54_xpro/3ebe12277b7a1d7b4f7550cedda485e891fac403 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1986180951" 
	@${RM} ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o ../src/config/sam_e54_xpro/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/348904952/plib_port.o: ../src/config/sam_e54_xpro/peripheral/port/plib_port.c  .generated_files/flags/sam_e54_xpro/e4c010fe5e6c87878e54f12dc6070d05e8d2761d .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/348904952" 
	@${RM} ${OBJECTDIR}/_ext/348904952/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/348904952/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/348904952/plib_port.o.d" -o ${OBJECTDIR}/_ext/348904952/plib_port.o ../src/config/sam_e54_xpro/peripheral/port/plib_port.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o: ../src/config/sam_e54_xpro/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/sam_e54_xpro/4ff36975db136f9c4e51acb7f6e3d1e8a6db2af5 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1950915590" 
	@${RM} ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o ../src/config/sam_e54_xpro/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o: ../src/config/sam_e54_xpro/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c  .generated_files/flags/sam_e54_xpro/a29f689ead8a36bb3b726ec796d31bd17bce2b25 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1267767598" 
	@${RM} ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o.d" -o ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o ../src/config/sam_e54_xpro/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o: ../src/config/sam_e54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c  .generated_files/flags/sam_e54_xpro/1f970105b8ba1203a5bbc360a613e0c1d272ec36 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/2060180706" 
	@${RM} ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o.d" -o ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o ../src/config/sam_e54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/498645085/xc32_monitor.o: ../src/config/sam_e54_xpro/stdio/xc32_monitor.c  .generated_files/flags/sam_e54_xpro/8e835357cbb19b6c8544409942d6e09681fbc707 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/498645085" 
	@${RM} ${OBJECTDIR}/_ext/498645085/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/498645085/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/498645085/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/498645085/xc32_monitor.o ../src/config/sam_e54_xpro/stdio/xc32_monitor.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2098947918/sys_cache.o: ../src/config/sam_e54_xpro/system/cache/sys_cache.c  .generated_files/flags/sam_e54_xpro/3ebc00e7b7f5818d83f4b1c03e9788c725727693 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/2098947918" 
	@${RM} ${OBJECTDIR}/_ext/2098947918/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/2098947918/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2098947918/sys_cache.o.d" -o ${OBJECTDIR}/_ext/2098947918/sys_cache.o ../src/config/sam_e54_xpro/system/cache/sys_cache.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/129427312/sys_int.o: ../src/config/sam_e54_xpro/system/int/src/sys_int.c  .generated_files/flags/sam_e54_xpro/584783f763e6fe3cc755eb737ad8b9891ebcf83d .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/129427312" 
	@${RM} ${OBJECTDIR}/_ext/129427312/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/129427312/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/129427312/sys_int.o.d" -o ${OBJECTDIR}/_ext/129427312/sys_int.o ../src/config/sam_e54_xpro/system/int/src/sys_int.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/initialization.o: ../src/config/sam_e54_xpro/initialization.c  .generated_files/flags/sam_e54_xpro/2d6f60f21cc9bed953f0d5ff29125d78d5676000 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/initialization.o.d" -o ${OBJECTDIR}/_ext/68098787/initialization.o ../src/config/sam_e54_xpro/initialization.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/interrupts.o: ../src/config/sam_e54_xpro/interrupts.c  .generated_files/flags/sam_e54_xpro/fa336858ea9d8f1f9e4d1720fc7d3e3dc6e8c06f .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/interrupts.o.d" -o ${OBJECTDIR}/_ext/68098787/interrupts.o ../src/config/sam_e54_xpro/interrupts.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/exceptions.o: ../src/config/sam_e54_xpro/exceptions.c  .generated_files/flags/sam_e54_xpro/d7d1c5347f06ecc07bf409f25e4d4516ddda3b33 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/exceptions.o.d" -o ${OBJECTDIR}/_ext/68098787/exceptions.o ../src/config/sam_e54_xpro/exceptions.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/startup_xc32.o: ../src/config/sam_e54_xpro/startup_xc32.c  .generated_files/flags/sam_e54_xpro/99c3cdedf131bbc99cc9ac2d9821468789395f41 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/68098787/startup_xc32.o ../src/config/sam_e54_xpro/startup_xc32.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/libc_syscalls.o: ../src/config/sam_e54_xpro/libc_syscalls.c  .generated_files/flags/sam_e54_xpro/9110fcdbde65628f2ca2db096fc54f89f4639e7c .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/68098787/libc_syscalls.o ../src/config/sam_e54_xpro/libc_syscalls.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/tasks.o: ../src/config/sam_e54_xpro/tasks.c  .generated_files/flags/sam_e54_xpro/cd522028c71de847e2dc895a97907843099991aa .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/tasks.o.d" -o ${OBJECTDIR}/_ext/68098787/tasks.o ../src/config/sam_e54_xpro/tasks.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/340199985/mu_time.o: ../src/third_party/rtos/mu_platform/src/mu_time.c  .generated_files/flags/sam_e54_xpro/592e87f187ffa303c6782c6eadd0f0711e7867cf .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/340199985" 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340199985/mu_time.o.d" -o ${OBJECTDIR}/_ext/340199985/mu_time.o ../src/third_party/rtos/mu_platform/src/mu_time.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/340199985/mu_rtc.o: ../src/third_party/rtos/mu_platform/src/mu_rtc.c  .generated_files/flags/sam_e54_xpro/65e9e0501e28cad808760bc3892c12fa65a29d28 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/340199985" 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_rtc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340199985/mu_rtc.o.d" -o ${OBJECTDIR}/_ext/340199985/mu_rtc.o ../src/third_party/rtos/mu_platform/src/mu_rtc.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_dlist.o: ../src/third_party/rtos/mulib/collections/src/mu_dlist.c  .generated_files/flags/sam_e54_xpro/6f5ff4166ee935994522c8c87dc5c29a8b990fa .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_dlist.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_dlist.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_dlist.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_dlist.o ../src/third_party/rtos/mulib/collections/src/mu_dlist.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_list.o: ../src/third_party/rtos/mulib/collections/src/mu_list.c  .generated_files/flags/sam_e54_xpro/2660f51d96e4f027c590122343d21521a08607ca .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_list.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_list.o ../src/third_party/rtos/mulib/collections/src/mu_list.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_cirq.o: ../src/third_party/rtos/mulib/collections/src/mu_cirq.c  .generated_files/flags/sam_e54_xpro/4f162032183f8152f4a0621e14253073af7bfb1d .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_cirq.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_cirq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_cirq.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_cirq.o ../src/third_party/rtos/mulib/collections/src/mu_cirq.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_pstore.o: ../src/third_party/rtos/mulib/collections/src/mu_pstore.c  .generated_files/flags/sam_e54_xpro/16f3bcb792ff4ab9996dbd23d105e1334daae1e1 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_pstore.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_pstore.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_pstore.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_pstore.o ../src/third_party/rtos/mulib/collections/src/mu_pstore.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_vect.o: ../src/third_party/rtos/mulib/collections/src/mu_vect.c  .generated_files/flags/sam_e54_xpro/5a99c1237c1f831863c0f08211cb9cf78b7b9113 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_vect.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_vect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_vect.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_vect.o ../src/third_party/rtos/mulib/collections/src/mu_vect.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_queue.o: ../src/third_party/rtos/mulib/collections/src/mu_queue.c  .generated_files/flags/sam_e54_xpro/2f80cc5f60e7fcb6587d7204fd73f51997a8363d .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_queue.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_queue.o ../src/third_party/rtos/mulib/collections/src/mu_queue.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_bvec.o: ../src/third_party/rtos/mulib/collections/src/mu_bvec.c  .generated_files/flags/sam_e54_xpro/d1a212656d627c72916a69b28756becc68e4e101 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_bvec.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_bvec.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_bvec.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_bvec.o ../src/third_party/rtos/mulib/collections/src/mu_bvec.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_array.o: ../src/third_party/rtos/mulib/collections/src/mu_array.c  .generated_files/flags/sam_e54_xpro/fa5a326edec9b034b92a2b9e052d8d4d311f21b5 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_array.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_array.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_array.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_array.o ../src/third_party/rtos/mulib/collections/src/mu_array.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1717866393/mu_log.o: ../src/third_party/rtos/mulib/log/src/mu_log.c  .generated_files/flags/sam_e54_xpro/215d9eec04546bcfe68b3c2ca20b27b2870a25ca .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1717866393" 
	@${RM} ${OBJECTDIR}/_ext/1717866393/mu_log.o.d 
	@${RM} ${OBJECTDIR}/_ext/1717866393/mu_log.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1717866393/mu_log.o.d" -o ${OBJECTDIR}/_ext/1717866393/mu_log.o ../src/third_party/rtos/mulib/log/src/mu_log.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_spsc.o: ../src/third_party/rtos/mulib/sched/src/mu_spsc.c  .generated_files/flags/sam_e54_xpro/4c3b5b5478241c34c3602adb2f9eeff82bc74deb .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_spsc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_spsc.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_spsc.o ../src/third_party/rtos/mulib/sched/src/mu_spsc.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_event.o: ../src/third_party/rtos/mulib/sched/src/mu_event.c  .generated_files/flags/sam_e54_xpro/1b478ed4c884ec250129c38293ca81c5382b86f .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_event.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_event.o ../src/third_party/rtos/mulib/sched/src/mu_event.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_task.o: ../src/third_party/rtos/mulib/sched/src/mu_task.c  .generated_files/flags/sam_e54_xpro/aea6024baa3583586c82d05dbb58772122206bdd .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_task.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_task.o ../src/third_party/rtos/mulib/sched/src/mu_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_sched.o: ../src/third_party/rtos/mulib/sched/src/mu_sched.c  .generated_files/flags/sam_e54_xpro/a6d4128a39965e81e1ee5b724804d235fbb188c0 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_sched.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_sched.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_sched.o ../src/third_party/rtos/mulib/sched/src/mu_sched.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_str_utils.o: ../src/third_party/rtos/mulib/string/src/mu_str_utils.c  .generated_files/flags/sam_e54_xpro/6f99bdc85cfb160d25dba975da001fd0511e136 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_str_utils.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o ../src/third_party/rtos/mulib/string/src/mu_str_utils.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_stream.o: ../src/third_party/rtos/mulib/string/src/mu_stream.c  .generated_files/flags/sam_e54_xpro/9efb66ce11df0197c358fae99b284921682fe78c .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_stream.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_stream.o ../src/third_party/rtos/mulib/string/src/mu_stream.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_strbuf.o: ../src/third_party/rtos/mulib/string/src/mu_strbuf.c  .generated_files/flags/sam_e54_xpro/d04ca3443b126657e1d5ac2973a6796c2972d045 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_strbuf.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o ../src/third_party/rtos/mulib/string/src/mu_strbuf.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_str.o: ../src/third_party/rtos/mulib/string/src/mu_str.c  .generated_files/flags/sam_e54_xpro/9784aaa9717cac2d700139f015e370583e0b4617 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_str.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_str.o ../src/third_party/rtos/mulib/string/src/mu_str.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1863499398/mu_random.o: ../src/third_party/rtos/mulib/utils/src/mu_random.c  .generated_files/flags/sam_e54_xpro/72ac6b56cf58b5ac74f1e367b76a36e99c1789aa .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1863499398" 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863499398/mu_random.o.d" -o ${OBJECTDIR}/_ext/1863499398/mu_random.o ../src/third_party/rtos/mulib/utils/src/mu_random.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o: ../src/third_party/rtos/mulib/utils/src/mu_rfc_1123.c  .generated_files/flags/sam_e54_xpro/c32a1f8d33291f6553a2b9c44a750a3226b1494 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1863499398" 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o.d" -o ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o ../src/third_party/rtos/mulib/utils/src/mu_rfc_1123.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1863499398/mu_parse_url.o: ../src/third_party/rtos/mulib/utils/src/mu_parse_url.c  .generated_files/flags/sam_e54_xpro/ad511692ac1e864e5661c5dba03eb5f294eab166 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1863499398" 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863499398/mu_parse_url.o.d" -o ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o ../src/third_party/rtos/mulib/utils/src/mu_parse_url.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main_e54.o: ../src/main_e54.c  .generated_files/flags/sam_e54_xpro/109b93eb1b4d98f487646dc93ebd081e51a9eb21 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_e54.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_e54.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main_e54.o.d" -o ${OBJECTDIR}/_ext/1360937237/main_e54.o ../src/main_e54.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/sam_e54_xpro/c4c531bf860eff1e02d1816dd6c5f1d8b6e6ca1 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/eeprom_task.o: ../src/eeprom_task.c  .generated_files/flags/sam_e54_xpro/804a7805edf3f5f6d39bf5454d54ecaf6f86c1a2 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/eeprom_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/eeprom_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/eeprom_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/eeprom_task.o ../src/eeprom_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/printer_task.o: ../src/printer_task.c  .generated_files/flags/sam_e54_xpro/a947946f84ff55fc70e92c3697e566a0254463c3 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/printer_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/printer_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/printer_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/printer_task.o ../src/printer_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/sensor_task.o: ../src/sensor_task.c  .generated_files/flags/sam_e54_xpro/302bcfda3769965a9fd9ec882f167282d91d3b7a .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sensor_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sensor_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/sensor_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/sensor_task.o ../src/sensor_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/getting_started_drivers_mulib_sam_e54_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/sam_e54_xpro/ATSAME54P20A.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/getting_started_drivers_mulib_sam_e54_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/getting_started_drivers_mulib_sam_e54_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/sam_e54_xpro/ATSAME54P20A.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/getting_started_drivers_mulib_sam_e54_xpro.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}/xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/getting_started_drivers_mulib_sam_e54_xpro.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/sam_e54_xpro
	${RM} -r dist/sam_e54_xpro

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
