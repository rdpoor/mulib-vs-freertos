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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/sam_e54_xpro/peripheral/clock/plib_clock.c ../src/config/sam_e54_xpro/peripheral/cmcc/plib_cmcc.c ../src/config/sam_e54_xpro/peripheral/evsys/plib_evsys.c ../src/config/sam_e54_xpro/peripheral/nvic/plib_nvic.c ../src/config/sam_e54_xpro/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/sam_e54_xpro/peripheral/port/plib_port.c ../src/config/sam_e54_xpro/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c ../src/config/sam_e54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c ../src/config/sam_e54_xpro/stdio/xc32_monitor.c ../src/config/sam_e54_xpro/system/cache/sys_cache.c ../src/config/sam_e54_xpro/system/int/src/sys_int.c ../src/config/sam_e54_xpro/initialization.c ../src/config/sam_e54_xpro/interrupts.c ../src/config/sam_e54_xpro/exceptions.c ../src/config/sam_e54_xpro/startup_xc32.c ../src/config/sam_e54_xpro/libc_syscalls.c ../src/config/sam_e54_xpro/tasks.c ../src/third_party/rtos/mulib/collections/src/mu_dlist.c ../src/third_party/rtos/mulib/collections/src/mu_list.c ../src/third_party/rtos/mulib/collections/src/mu_cirq.c ../src/third_party/rtos/mulib/collections/src/mu_pstore.c ../src/third_party/rtos/mulib/collections/src/mu_vect.c ../src/third_party/rtos/mulib/collections/src/mu_queue.c ../src/third_party/rtos/mulib/collections/src/mu_bvec.c ../src/third_party/rtos/mulib/collections/src/mu_array.c ../src/third_party/rtos/mulib/log/src/mu_log.c ../src/third_party/rtos/mulib/sched/src/mu_spsc.c ../src/third_party/rtos/mulib/sched/src/mu_event.c ../src/third_party/rtos/mulib/sched/src/mu_task.c ../src/third_party/rtos/mulib/sched/src/mu_sched.c ../src/third_party/rtos/mulib/string/src/mu_str_utils.c ../src/third_party/rtos/mulib/string/src/mu_stream.c ../src/third_party/rtos/mulib/string/src/mu_strbuf.c ../src/third_party/rtos/mulib/string/src/mu_str.c ../src/third_party/rtos/mulib/utils/src/mu_random.c ../src/third_party/rtos/mulib/utils/src/mu_rfc_1123.c ../src/third_party/rtos/mulib/utils/src/mu_parse_url.c ../src/main_e54.c ../src/app.c ../src/eeprom_task.c ../src/third_party/rtos/mu_platform/src/mu_time.c ../src/config/sam_e54_xpro/peripheral/rtc/plib_rtc_timer.c ../src/third_party/rtos/mu_platform/src/mu_rtc.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2056749927/plib_clock.o ${OBJECTDIR}/_ext/349294639/plib_cmcc.o ${OBJECTDIR}/_ext/2058899413/plib_evsys.o ${OBJECTDIR}/_ext/348958103/plib_nvic.o ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o ${OBJECTDIR}/_ext/348904952/plib_port.o ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o ${OBJECTDIR}/_ext/498645085/xc32_monitor.o ${OBJECTDIR}/_ext/2098947918/sys_cache.o ${OBJECTDIR}/_ext/129427312/sys_int.o ${OBJECTDIR}/_ext/68098787/initialization.o ${OBJECTDIR}/_ext/68098787/interrupts.o ${OBJECTDIR}/_ext/68098787/exceptions.o ${OBJECTDIR}/_ext/68098787/startup_xc32.o ${OBJECTDIR}/_ext/68098787/libc_syscalls.o ${OBJECTDIR}/_ext/68098787/tasks.o ${OBJECTDIR}/_ext/1618706070/mu_dlist.o ${OBJECTDIR}/_ext/1618706070/mu_list.o ${OBJECTDIR}/_ext/1618706070/mu_cirq.o ${OBJECTDIR}/_ext/1618706070/mu_pstore.o ${OBJECTDIR}/_ext/1618706070/mu_vect.o ${OBJECTDIR}/_ext/1618706070/mu_queue.o ${OBJECTDIR}/_ext/1618706070/mu_bvec.o ${OBJECTDIR}/_ext/1618706070/mu_array.o ${OBJECTDIR}/_ext/1717866393/mu_log.o ${OBJECTDIR}/_ext/518675852/mu_spsc.o ${OBJECTDIR}/_ext/518675852/mu_event.o ${OBJECTDIR}/_ext/518675852/mu_task.o ${OBJECTDIR}/_ext/518675852/mu_sched.o ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o ${OBJECTDIR}/_ext/1923606554/mu_stream.o ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o ${OBJECTDIR}/_ext/1923606554/mu_str.o ${OBJECTDIR}/_ext/1863499398/mu_random.o ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o ${OBJECTDIR}/_ext/1360937237/main_e54.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/eeprom_task.o ${OBJECTDIR}/_ext/340199985/mu_time.o ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o ${OBJECTDIR}/_ext/340199985/mu_rtc.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2056749927/plib_clock.o.d ${OBJECTDIR}/_ext/349294639/plib_cmcc.o.d ${OBJECTDIR}/_ext/2058899413/plib_evsys.o.d ${OBJECTDIR}/_ext/348958103/plib_nvic.o.d ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/348904952/plib_port.o.d ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o.d ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o.d ${OBJECTDIR}/_ext/498645085/xc32_monitor.o.d ${OBJECTDIR}/_ext/2098947918/sys_cache.o.d ${OBJECTDIR}/_ext/129427312/sys_int.o.d ${OBJECTDIR}/_ext/68098787/initialization.o.d ${OBJECTDIR}/_ext/68098787/interrupts.o.d ${OBJECTDIR}/_ext/68098787/exceptions.o.d ${OBJECTDIR}/_ext/68098787/startup_xc32.o.d ${OBJECTDIR}/_ext/68098787/libc_syscalls.o.d ${OBJECTDIR}/_ext/68098787/tasks.o.d ${OBJECTDIR}/_ext/1618706070/mu_dlist.o.d ${OBJECTDIR}/_ext/1618706070/mu_list.o.d ${OBJECTDIR}/_ext/1618706070/mu_cirq.o.d ${OBJECTDIR}/_ext/1618706070/mu_pstore.o.d ${OBJECTDIR}/_ext/1618706070/mu_vect.o.d ${OBJECTDIR}/_ext/1618706070/mu_queue.o.d ${OBJECTDIR}/_ext/1618706070/mu_bvec.o.d ${OBJECTDIR}/_ext/1618706070/mu_array.o.d ${OBJECTDIR}/_ext/1717866393/mu_log.o.d ${OBJECTDIR}/_ext/518675852/mu_spsc.o.d ${OBJECTDIR}/_ext/518675852/mu_event.o.d ${OBJECTDIR}/_ext/518675852/mu_task.o.d ${OBJECTDIR}/_ext/518675852/mu_sched.o.d ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o.d ${OBJECTDIR}/_ext/1923606554/mu_stream.o.d ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o.d ${OBJECTDIR}/_ext/1923606554/mu_str.o.d ${OBJECTDIR}/_ext/1863499398/mu_random.o.d ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o.d ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o.d ${OBJECTDIR}/_ext/1360937237/main_e54.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/eeprom_task.o.d ${OBJECTDIR}/_ext/340199985/mu_time.o.d ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o.d ${OBJECTDIR}/_ext/340199985/mu_rtc.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2056749927/plib_clock.o ${OBJECTDIR}/_ext/349294639/plib_cmcc.o ${OBJECTDIR}/_ext/2058899413/plib_evsys.o ${OBJECTDIR}/_ext/348958103/plib_nvic.o ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o ${OBJECTDIR}/_ext/348904952/plib_port.o ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o ${OBJECTDIR}/_ext/498645085/xc32_monitor.o ${OBJECTDIR}/_ext/2098947918/sys_cache.o ${OBJECTDIR}/_ext/129427312/sys_int.o ${OBJECTDIR}/_ext/68098787/initialization.o ${OBJECTDIR}/_ext/68098787/interrupts.o ${OBJECTDIR}/_ext/68098787/exceptions.o ${OBJECTDIR}/_ext/68098787/startup_xc32.o ${OBJECTDIR}/_ext/68098787/libc_syscalls.o ${OBJECTDIR}/_ext/68098787/tasks.o ${OBJECTDIR}/_ext/1618706070/mu_dlist.o ${OBJECTDIR}/_ext/1618706070/mu_list.o ${OBJECTDIR}/_ext/1618706070/mu_cirq.o ${OBJECTDIR}/_ext/1618706070/mu_pstore.o ${OBJECTDIR}/_ext/1618706070/mu_vect.o ${OBJECTDIR}/_ext/1618706070/mu_queue.o ${OBJECTDIR}/_ext/1618706070/mu_bvec.o ${OBJECTDIR}/_ext/1618706070/mu_array.o ${OBJECTDIR}/_ext/1717866393/mu_log.o ${OBJECTDIR}/_ext/518675852/mu_spsc.o ${OBJECTDIR}/_ext/518675852/mu_event.o ${OBJECTDIR}/_ext/518675852/mu_task.o ${OBJECTDIR}/_ext/518675852/mu_sched.o ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o ${OBJECTDIR}/_ext/1923606554/mu_stream.o ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o ${OBJECTDIR}/_ext/1923606554/mu_str.o ${OBJECTDIR}/_ext/1863499398/mu_random.o ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o ${OBJECTDIR}/_ext/1360937237/main_e54.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/eeprom_task.o ${OBJECTDIR}/_ext/340199985/mu_time.o ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o ${OBJECTDIR}/_ext/340199985/mu_rtc.o

# Source Files
SOURCEFILES=../src/config/sam_e54_xpro/peripheral/clock/plib_clock.c ../src/config/sam_e54_xpro/peripheral/cmcc/plib_cmcc.c ../src/config/sam_e54_xpro/peripheral/evsys/plib_evsys.c ../src/config/sam_e54_xpro/peripheral/nvic/plib_nvic.c ../src/config/sam_e54_xpro/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/sam_e54_xpro/peripheral/port/plib_port.c ../src/config/sam_e54_xpro/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c ../src/config/sam_e54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c ../src/config/sam_e54_xpro/stdio/xc32_monitor.c ../src/config/sam_e54_xpro/system/cache/sys_cache.c ../src/config/sam_e54_xpro/system/int/src/sys_int.c ../src/config/sam_e54_xpro/initialization.c ../src/config/sam_e54_xpro/interrupts.c ../src/config/sam_e54_xpro/exceptions.c ../src/config/sam_e54_xpro/startup_xc32.c ../src/config/sam_e54_xpro/libc_syscalls.c ../src/config/sam_e54_xpro/tasks.c ../src/third_party/rtos/mulib/collections/src/mu_dlist.c ../src/third_party/rtos/mulib/collections/src/mu_list.c ../src/third_party/rtos/mulib/collections/src/mu_cirq.c ../src/third_party/rtos/mulib/collections/src/mu_pstore.c ../src/third_party/rtos/mulib/collections/src/mu_vect.c ../src/third_party/rtos/mulib/collections/src/mu_queue.c ../src/third_party/rtos/mulib/collections/src/mu_bvec.c ../src/third_party/rtos/mulib/collections/src/mu_array.c ../src/third_party/rtos/mulib/log/src/mu_log.c ../src/third_party/rtos/mulib/sched/src/mu_spsc.c ../src/third_party/rtos/mulib/sched/src/mu_event.c ../src/third_party/rtos/mulib/sched/src/mu_task.c ../src/third_party/rtos/mulib/sched/src/mu_sched.c ../src/third_party/rtos/mulib/string/src/mu_str_utils.c ../src/third_party/rtos/mulib/string/src/mu_stream.c ../src/third_party/rtos/mulib/string/src/mu_strbuf.c ../src/third_party/rtos/mulib/string/src/mu_str.c ../src/third_party/rtos/mulib/utils/src/mu_random.c ../src/third_party/rtos/mulib/utils/src/mu_rfc_1123.c ../src/third_party/rtos/mulib/utils/src/mu_parse_url.c ../src/main_e54.c ../src/app.c ../src/eeprom_task.c ../src/third_party/rtos/mu_platform/src/mu_time.c ../src/config/sam_e54_xpro/peripheral/rtc/plib_rtc_timer.c ../src/third_party/rtos/mu_platform/src/mu_rtc.c

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
${OBJECTDIR}/_ext/2056749927/plib_clock.o: ../src/config/sam_e54_xpro/peripheral/clock/plib_clock.c  .generated_files/flags/sam_e54_xpro/8d084dc8e0cc4ccd2d711ff263017c6ece8546b8 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/2056749927" 
	@${RM} ${OBJECTDIR}/_ext/2056749927/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2056749927/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2056749927/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2056749927/plib_clock.o ../src/config/sam_e54_xpro/peripheral/clock/plib_clock.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/349294639/plib_cmcc.o: ../src/config/sam_e54_xpro/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/sam_e54_xpro/c06fe0ef32271795c952137c82628e83d8437440 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/349294639" 
	@${RM} ${OBJECTDIR}/_ext/349294639/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/349294639/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/349294639/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/349294639/plib_cmcc.o ../src/config/sam_e54_xpro/peripheral/cmcc/plib_cmcc.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2058899413/plib_evsys.o: ../src/config/sam_e54_xpro/peripheral/evsys/plib_evsys.c  .generated_files/flags/sam_e54_xpro/ff976af77fdacc93802fb8086f92f3cb100525ec .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/2058899413" 
	@${RM} ${OBJECTDIR}/_ext/2058899413/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2058899413/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2058899413/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2058899413/plib_evsys.o ../src/config/sam_e54_xpro/peripheral/evsys/plib_evsys.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/348958103/plib_nvic.o: ../src/config/sam_e54_xpro/peripheral/nvic/plib_nvic.c  .generated_files/flags/sam_e54_xpro/19f7c4e66dfaf2655639e97a6f90faafc94b3879 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/348958103" 
	@${RM} ${OBJECTDIR}/_ext/348958103/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/348958103/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/348958103/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/348958103/plib_nvic.o ../src/config/sam_e54_xpro/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o: ../src/config/sam_e54_xpro/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/sam_e54_xpro/1fc4e37264202721501e27eb6be186eac40933a3 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1986180951" 
	@${RM} ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o ../src/config/sam_e54_xpro/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/348904952/plib_port.o: ../src/config/sam_e54_xpro/peripheral/port/plib_port.c  .generated_files/flags/sam_e54_xpro/3a74d12e04cd5e6dc4b56bba3fb9be99d99a5be5 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/348904952" 
	@${RM} ${OBJECTDIR}/_ext/348904952/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/348904952/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/348904952/plib_port.o.d" -o ${OBJECTDIR}/_ext/348904952/plib_port.o ../src/config/sam_e54_xpro/peripheral/port/plib_port.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o: ../src/config/sam_e54_xpro/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c  .generated_files/flags/sam_e54_xpro/f4201636893d9ffb438106c48f3ae4d116d9041b .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1267767598" 
	@${RM} ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o.d" -o ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o ../src/config/sam_e54_xpro/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o: ../src/config/sam_e54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c  .generated_files/flags/sam_e54_xpro/fcbe1b4285804223c7c8d27e1b0dfc6d7137828c .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/2060180706" 
	@${RM} ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o.d" -o ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o ../src/config/sam_e54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/498645085/xc32_monitor.o: ../src/config/sam_e54_xpro/stdio/xc32_monitor.c  .generated_files/flags/sam_e54_xpro/49c934a4d94bc7ec95a45b1ea2f8e15c6b6f0c9f .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/498645085" 
	@${RM} ${OBJECTDIR}/_ext/498645085/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/498645085/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/498645085/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/498645085/xc32_monitor.o ../src/config/sam_e54_xpro/stdio/xc32_monitor.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2098947918/sys_cache.o: ../src/config/sam_e54_xpro/system/cache/sys_cache.c  .generated_files/flags/sam_e54_xpro/18f29a8f21a6b4cd1d0cb727e19b5e9a6141a138 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/2098947918" 
	@${RM} ${OBJECTDIR}/_ext/2098947918/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/2098947918/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2098947918/sys_cache.o.d" -o ${OBJECTDIR}/_ext/2098947918/sys_cache.o ../src/config/sam_e54_xpro/system/cache/sys_cache.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/129427312/sys_int.o: ../src/config/sam_e54_xpro/system/int/src/sys_int.c  .generated_files/flags/sam_e54_xpro/a2ba9821d4d5b05d452dd416722a26ff7e70bd1a .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/129427312" 
	@${RM} ${OBJECTDIR}/_ext/129427312/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/129427312/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/129427312/sys_int.o.d" -o ${OBJECTDIR}/_ext/129427312/sys_int.o ../src/config/sam_e54_xpro/system/int/src/sys_int.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/initialization.o: ../src/config/sam_e54_xpro/initialization.c  .generated_files/flags/sam_e54_xpro/980dee3449f78fffee013b8d042e142bc7334d46 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/initialization.o.d" -o ${OBJECTDIR}/_ext/68098787/initialization.o ../src/config/sam_e54_xpro/initialization.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/interrupts.o: ../src/config/sam_e54_xpro/interrupts.c  .generated_files/flags/sam_e54_xpro/f8b9270f9e0650afcc98e9af83697785435c03f5 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/interrupts.o.d" -o ${OBJECTDIR}/_ext/68098787/interrupts.o ../src/config/sam_e54_xpro/interrupts.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/exceptions.o: ../src/config/sam_e54_xpro/exceptions.c  .generated_files/flags/sam_e54_xpro/26f6981a0a23e613817a56f06e057786a74331b5 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/exceptions.o.d" -o ${OBJECTDIR}/_ext/68098787/exceptions.o ../src/config/sam_e54_xpro/exceptions.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/startup_xc32.o: ../src/config/sam_e54_xpro/startup_xc32.c  .generated_files/flags/sam_e54_xpro/5e45f7a86d379fe2ac3820f2d2a6ba47054ef504 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/68098787/startup_xc32.o ../src/config/sam_e54_xpro/startup_xc32.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/libc_syscalls.o: ../src/config/sam_e54_xpro/libc_syscalls.c  .generated_files/flags/sam_e54_xpro/4f920f12717ed97a896deecc7b536acf4f274fa4 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/68098787/libc_syscalls.o ../src/config/sam_e54_xpro/libc_syscalls.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/tasks.o: ../src/config/sam_e54_xpro/tasks.c  .generated_files/flags/sam_e54_xpro/d37a3380a97b92eaf947494c6242688a25d926d0 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/tasks.o.d" -o ${OBJECTDIR}/_ext/68098787/tasks.o ../src/config/sam_e54_xpro/tasks.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_dlist.o: ../src/third_party/rtos/mulib/collections/src/mu_dlist.c  .generated_files/flags/sam_e54_xpro/25428ec1ce816751056021d1f2effffbb3c63fea .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_dlist.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_dlist.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_dlist.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_dlist.o ../src/third_party/rtos/mulib/collections/src/mu_dlist.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_list.o: ../src/third_party/rtos/mulib/collections/src/mu_list.c  .generated_files/flags/sam_e54_xpro/33e47288fc25f9d1b81228a048cd0de9597161ba .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_list.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_list.o ../src/third_party/rtos/mulib/collections/src/mu_list.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_cirq.o: ../src/third_party/rtos/mulib/collections/src/mu_cirq.c  .generated_files/flags/sam_e54_xpro/b37817631f2900db6f105b2f123998b95b63f6fe .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_cirq.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_cirq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_cirq.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_cirq.o ../src/third_party/rtos/mulib/collections/src/mu_cirq.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_pstore.o: ../src/third_party/rtos/mulib/collections/src/mu_pstore.c  .generated_files/flags/sam_e54_xpro/aea6c6f5b3634c9bd2db7914c6876acf58987af1 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_pstore.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_pstore.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_pstore.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_pstore.o ../src/third_party/rtos/mulib/collections/src/mu_pstore.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_vect.o: ../src/third_party/rtos/mulib/collections/src/mu_vect.c  .generated_files/flags/sam_e54_xpro/168f49bf41a0d7ee591a37c8e04fe35982c84a42 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_vect.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_vect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_vect.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_vect.o ../src/third_party/rtos/mulib/collections/src/mu_vect.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_queue.o: ../src/third_party/rtos/mulib/collections/src/mu_queue.c  .generated_files/flags/sam_e54_xpro/262507df2fefeb3a85b9322e72770c54c5c36349 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_queue.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_queue.o ../src/third_party/rtos/mulib/collections/src/mu_queue.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_bvec.o: ../src/third_party/rtos/mulib/collections/src/mu_bvec.c  .generated_files/flags/sam_e54_xpro/3b94d7839e44afa2778a0dc1db29df7994bf703c .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_bvec.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_bvec.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_bvec.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_bvec.o ../src/third_party/rtos/mulib/collections/src/mu_bvec.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_array.o: ../src/third_party/rtos/mulib/collections/src/mu_array.c  .generated_files/flags/sam_e54_xpro/21659a1e880847f97fbc1517d9044c6bf528720d .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_array.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_array.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_array.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_array.o ../src/third_party/rtos/mulib/collections/src/mu_array.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1717866393/mu_log.o: ../src/third_party/rtos/mulib/log/src/mu_log.c  .generated_files/flags/sam_e54_xpro/3e6b6a9396a29b90171b92db9c06e3f697a2ab44 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1717866393" 
	@${RM} ${OBJECTDIR}/_ext/1717866393/mu_log.o.d 
	@${RM} ${OBJECTDIR}/_ext/1717866393/mu_log.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1717866393/mu_log.o.d" -o ${OBJECTDIR}/_ext/1717866393/mu_log.o ../src/third_party/rtos/mulib/log/src/mu_log.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_spsc.o: ../src/third_party/rtos/mulib/sched/src/mu_spsc.c  .generated_files/flags/sam_e54_xpro/c65167a2f7f788244115dd01aca6317dd71d75f5 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_spsc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_spsc.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_spsc.o ../src/third_party/rtos/mulib/sched/src/mu_spsc.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_event.o: ../src/third_party/rtos/mulib/sched/src/mu_event.c  .generated_files/flags/sam_e54_xpro/527fc6e768f0b99703db04b7317e6a1c00d4e6f8 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_event.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_event.o ../src/third_party/rtos/mulib/sched/src/mu_event.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_task.o: ../src/third_party/rtos/mulib/sched/src/mu_task.c  .generated_files/flags/sam_e54_xpro/de32ab4be40bb512a6d16b8b788732808d530ff4 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_task.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_task.o ../src/third_party/rtos/mulib/sched/src/mu_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_sched.o: ../src/third_party/rtos/mulib/sched/src/mu_sched.c  .generated_files/flags/sam_e54_xpro/da16bb55dc806fadc5f3763673da84009b3ee3c7 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_sched.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_sched.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_sched.o ../src/third_party/rtos/mulib/sched/src/mu_sched.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_str_utils.o: ../src/third_party/rtos/mulib/string/src/mu_str_utils.c  .generated_files/flags/sam_e54_xpro/cf73cc21b6eda40b527f6b94d965403c031aac60 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_str_utils.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o ../src/third_party/rtos/mulib/string/src/mu_str_utils.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_stream.o: ../src/third_party/rtos/mulib/string/src/mu_stream.c  .generated_files/flags/sam_e54_xpro/a984ee6b4a7f082bb01ba955a22cfb09898b5fc0 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_stream.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_stream.o ../src/third_party/rtos/mulib/string/src/mu_stream.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_strbuf.o: ../src/third_party/rtos/mulib/string/src/mu_strbuf.c  .generated_files/flags/sam_e54_xpro/e72a3598bd5dd0b627fb02ffe02d602516ac39e9 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_strbuf.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o ../src/third_party/rtos/mulib/string/src/mu_strbuf.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_str.o: ../src/third_party/rtos/mulib/string/src/mu_str.c  .generated_files/flags/sam_e54_xpro/955f704c79dbea2f01d8cf9ea793e23b88f86aae .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_str.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_str.o ../src/third_party/rtos/mulib/string/src/mu_str.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1863499398/mu_random.o: ../src/third_party/rtos/mulib/utils/src/mu_random.c  .generated_files/flags/sam_e54_xpro/e550964220aeae41fc46357165f3277913a43446 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1863499398" 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863499398/mu_random.o.d" -o ${OBJECTDIR}/_ext/1863499398/mu_random.o ../src/third_party/rtos/mulib/utils/src/mu_random.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o: ../src/third_party/rtos/mulib/utils/src/mu_rfc_1123.c  .generated_files/flags/sam_e54_xpro/fab23125fdef5992bf87019a777744377f990e4b .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1863499398" 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o.d" -o ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o ../src/third_party/rtos/mulib/utils/src/mu_rfc_1123.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1863499398/mu_parse_url.o: ../src/third_party/rtos/mulib/utils/src/mu_parse_url.c  .generated_files/flags/sam_e54_xpro/bf0ed85c7b3012d012bab3f688b512504abeffa6 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1863499398" 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863499398/mu_parse_url.o.d" -o ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o ../src/third_party/rtos/mulib/utils/src/mu_parse_url.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main_e54.o: ../src/main_e54.c  .generated_files/flags/sam_e54_xpro/559a7955691f3cf6124667d6421ba42149cf903 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_e54.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_e54.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main_e54.o.d" -o ${OBJECTDIR}/_ext/1360937237/main_e54.o ../src/main_e54.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/sam_e54_xpro/db2397514d2207324e280d9924ff07ef41d07283 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/eeprom_task.o: ../src/eeprom_task.c  .generated_files/flags/sam_e54_xpro/982d93402516c95b6735659f762d654e7deebb24 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/eeprom_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/eeprom_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/eeprom_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/eeprom_task.o ../src/eeprom_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/340199985/mu_time.o: ../src/third_party/rtos/mu_platform/src/mu_time.c  .generated_files/flags/sam_e54_xpro/6e40179125c7f42d511595f7355a1f88d8d022a6 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/340199985" 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340199985/mu_time.o.d" -o ${OBJECTDIR}/_ext/340199985/mu_time.o ../src/third_party/rtos/mu_platform/src/mu_time.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o: ../src/config/sam_e54_xpro/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/sam_e54_xpro/779ca5c8755865b314b6a67c94036ef485ce17bc .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1950915590" 
	@${RM} ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o ../src/config/sam_e54_xpro/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/340199985/mu_rtc.o: ../src/third_party/rtos/mu_platform/src/mu_rtc.c  .generated_files/flags/sam_e54_xpro/5a8e4d4c2def9b36874552796ca9523c2bc43be8 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/340199985" 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_rtc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340199985/mu_rtc.o.d" -o ${OBJECTDIR}/_ext/340199985/mu_rtc.o ../src/third_party/rtos/mu_platform/src/mu_rtc.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/2056749927/plib_clock.o: ../src/config/sam_e54_xpro/peripheral/clock/plib_clock.c  .generated_files/flags/sam_e54_xpro/67289bdadcd351a7165399b897bdf6e34b5491b0 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/2056749927" 
	@${RM} ${OBJECTDIR}/_ext/2056749927/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2056749927/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2056749927/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2056749927/plib_clock.o ../src/config/sam_e54_xpro/peripheral/clock/plib_clock.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/349294639/plib_cmcc.o: ../src/config/sam_e54_xpro/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/sam_e54_xpro/f3464a771908c48a03cda0853f599bae12f2df88 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/349294639" 
	@${RM} ${OBJECTDIR}/_ext/349294639/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/349294639/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/349294639/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/349294639/plib_cmcc.o ../src/config/sam_e54_xpro/peripheral/cmcc/plib_cmcc.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2058899413/plib_evsys.o: ../src/config/sam_e54_xpro/peripheral/evsys/plib_evsys.c  .generated_files/flags/sam_e54_xpro/ee6ac79623a8211b5a31d755a975efab41196d35 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/2058899413" 
	@${RM} ${OBJECTDIR}/_ext/2058899413/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2058899413/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2058899413/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2058899413/plib_evsys.o ../src/config/sam_e54_xpro/peripheral/evsys/plib_evsys.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/348958103/plib_nvic.o: ../src/config/sam_e54_xpro/peripheral/nvic/plib_nvic.c  .generated_files/flags/sam_e54_xpro/cb81653c093c208ec74f3a7d5998f84479b7fbe1 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/348958103" 
	@${RM} ${OBJECTDIR}/_ext/348958103/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/348958103/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/348958103/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/348958103/plib_nvic.o ../src/config/sam_e54_xpro/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o: ../src/config/sam_e54_xpro/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/sam_e54_xpro/8f5c8af4c3d3d1738aa09f12ee157e3f98fcfbb5 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1986180951" 
	@${RM} ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o ../src/config/sam_e54_xpro/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/348904952/plib_port.o: ../src/config/sam_e54_xpro/peripheral/port/plib_port.c  .generated_files/flags/sam_e54_xpro/f3a3899812f092834e839f495134246b282923d1 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/348904952" 
	@${RM} ${OBJECTDIR}/_ext/348904952/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/348904952/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/348904952/plib_port.o.d" -o ${OBJECTDIR}/_ext/348904952/plib_port.o ../src/config/sam_e54_xpro/peripheral/port/plib_port.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o: ../src/config/sam_e54_xpro/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c  .generated_files/flags/sam_e54_xpro/5b50c1f16cfda6b69516c86f4acfbb0b026ce8b4 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1267767598" 
	@${RM} ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o.d" -o ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o ../src/config/sam_e54_xpro/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o: ../src/config/sam_e54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c  .generated_files/flags/sam_e54_xpro/3387e4a3c8ece8370437ef7acd586d97b115f85a .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/2060180706" 
	@${RM} ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o.d" -o ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o ../src/config/sam_e54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/498645085/xc32_monitor.o: ../src/config/sam_e54_xpro/stdio/xc32_monitor.c  .generated_files/flags/sam_e54_xpro/5b47df7e71105561d0c89457dd7f2739e9fef3e9 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/498645085" 
	@${RM} ${OBJECTDIR}/_ext/498645085/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/498645085/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/498645085/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/498645085/xc32_monitor.o ../src/config/sam_e54_xpro/stdio/xc32_monitor.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2098947918/sys_cache.o: ../src/config/sam_e54_xpro/system/cache/sys_cache.c  .generated_files/flags/sam_e54_xpro/cf17ac953ebbd0b2d0bda56f13b0d6c4f48e2dc4 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/2098947918" 
	@${RM} ${OBJECTDIR}/_ext/2098947918/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/2098947918/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2098947918/sys_cache.o.d" -o ${OBJECTDIR}/_ext/2098947918/sys_cache.o ../src/config/sam_e54_xpro/system/cache/sys_cache.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/129427312/sys_int.o: ../src/config/sam_e54_xpro/system/int/src/sys_int.c  .generated_files/flags/sam_e54_xpro/115ddf3521b2b23dae0fbf90fa2e419f82437180 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/129427312" 
	@${RM} ${OBJECTDIR}/_ext/129427312/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/129427312/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/129427312/sys_int.o.d" -o ${OBJECTDIR}/_ext/129427312/sys_int.o ../src/config/sam_e54_xpro/system/int/src/sys_int.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/initialization.o: ../src/config/sam_e54_xpro/initialization.c  .generated_files/flags/sam_e54_xpro/db402aaf1cd9696bf10c708c8f87275b46d4acf5 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/initialization.o.d" -o ${OBJECTDIR}/_ext/68098787/initialization.o ../src/config/sam_e54_xpro/initialization.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/interrupts.o: ../src/config/sam_e54_xpro/interrupts.c  .generated_files/flags/sam_e54_xpro/effb1348918fbe2698ea38415f6723b9a10ae1d8 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/interrupts.o.d" -o ${OBJECTDIR}/_ext/68098787/interrupts.o ../src/config/sam_e54_xpro/interrupts.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/exceptions.o: ../src/config/sam_e54_xpro/exceptions.c  .generated_files/flags/sam_e54_xpro/5a1a644963fbf5bce0e7e97453facca0129d1ca7 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/exceptions.o.d" -o ${OBJECTDIR}/_ext/68098787/exceptions.o ../src/config/sam_e54_xpro/exceptions.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/startup_xc32.o: ../src/config/sam_e54_xpro/startup_xc32.c  .generated_files/flags/sam_e54_xpro/89fae63e35bdabc2d016d97305c59e7b427e073 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/68098787/startup_xc32.o ../src/config/sam_e54_xpro/startup_xc32.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/libc_syscalls.o: ../src/config/sam_e54_xpro/libc_syscalls.c  .generated_files/flags/sam_e54_xpro/401e1c7699bb2d91f4b8c8161069fc219187eb1f .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/68098787/libc_syscalls.o ../src/config/sam_e54_xpro/libc_syscalls.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/tasks.o: ../src/config/sam_e54_xpro/tasks.c  .generated_files/flags/sam_e54_xpro/b2925a67bc6897889c1356cf209aa3b3fb45e5d0 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/tasks.o.d" -o ${OBJECTDIR}/_ext/68098787/tasks.o ../src/config/sam_e54_xpro/tasks.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_dlist.o: ../src/third_party/rtos/mulib/collections/src/mu_dlist.c  .generated_files/flags/sam_e54_xpro/861d560c25cc7981b0deb9a366d29ce8c64fbe31 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_dlist.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_dlist.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_dlist.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_dlist.o ../src/third_party/rtos/mulib/collections/src/mu_dlist.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_list.o: ../src/third_party/rtos/mulib/collections/src/mu_list.c  .generated_files/flags/sam_e54_xpro/a5dfc81798f9d9d99323bbc656d2d5a36f8d7841 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_list.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_list.o ../src/third_party/rtos/mulib/collections/src/mu_list.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_cirq.o: ../src/third_party/rtos/mulib/collections/src/mu_cirq.c  .generated_files/flags/sam_e54_xpro/22f7e5fda52ce61fcb6857a1e06a0fb499049bb .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_cirq.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_cirq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_cirq.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_cirq.o ../src/third_party/rtos/mulib/collections/src/mu_cirq.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_pstore.o: ../src/third_party/rtos/mulib/collections/src/mu_pstore.c  .generated_files/flags/sam_e54_xpro/97ada90c8f415997061b3ddae2f7080a684c2 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_pstore.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_pstore.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_pstore.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_pstore.o ../src/third_party/rtos/mulib/collections/src/mu_pstore.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_vect.o: ../src/third_party/rtos/mulib/collections/src/mu_vect.c  .generated_files/flags/sam_e54_xpro/a7da406167e039f6918f79ae4d83b7e44fef31c5 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_vect.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_vect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_vect.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_vect.o ../src/third_party/rtos/mulib/collections/src/mu_vect.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_queue.o: ../src/third_party/rtos/mulib/collections/src/mu_queue.c  .generated_files/flags/sam_e54_xpro/73df8d4e63f3025f62b735e3364d3dec2339d494 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_queue.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_queue.o ../src/third_party/rtos/mulib/collections/src/mu_queue.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_bvec.o: ../src/third_party/rtos/mulib/collections/src/mu_bvec.c  .generated_files/flags/sam_e54_xpro/4e0bfcb78358ec15d87fa158a7d3d2cc23cffca4 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_bvec.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_bvec.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_bvec.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_bvec.o ../src/third_party/rtos/mulib/collections/src/mu_bvec.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_array.o: ../src/third_party/rtos/mulib/collections/src/mu_array.c  .generated_files/flags/sam_e54_xpro/9d12c4bf7522600688cfb0e8124d671e3dd6aeb5 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_array.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_array.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_array.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_array.o ../src/third_party/rtos/mulib/collections/src/mu_array.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1717866393/mu_log.o: ../src/third_party/rtos/mulib/log/src/mu_log.c  .generated_files/flags/sam_e54_xpro/1acf737a58718fb024dd4b8517a547ff2ebef61 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1717866393" 
	@${RM} ${OBJECTDIR}/_ext/1717866393/mu_log.o.d 
	@${RM} ${OBJECTDIR}/_ext/1717866393/mu_log.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1717866393/mu_log.o.d" -o ${OBJECTDIR}/_ext/1717866393/mu_log.o ../src/third_party/rtos/mulib/log/src/mu_log.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_spsc.o: ../src/third_party/rtos/mulib/sched/src/mu_spsc.c  .generated_files/flags/sam_e54_xpro/7cb1be62bbf0165fdf0363cc93f1ab36e58b4b6f .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_spsc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_spsc.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_spsc.o ../src/third_party/rtos/mulib/sched/src/mu_spsc.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_event.o: ../src/third_party/rtos/mulib/sched/src/mu_event.c  .generated_files/flags/sam_e54_xpro/5a8ed2401e397cb6d295aa10eefa3d8ffdec1f4a .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_event.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_event.o ../src/third_party/rtos/mulib/sched/src/mu_event.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_task.o: ../src/third_party/rtos/mulib/sched/src/mu_task.c  .generated_files/flags/sam_e54_xpro/63ad4ae5edcd385f1b94f8abf420998bbe37a45c .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_task.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_task.o ../src/third_party/rtos/mulib/sched/src/mu_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_sched.o: ../src/third_party/rtos/mulib/sched/src/mu_sched.c  .generated_files/flags/sam_e54_xpro/80e3ffb7779c2770dc041ce9077044b39a6757ce .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_sched.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_sched.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_sched.o ../src/third_party/rtos/mulib/sched/src/mu_sched.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_str_utils.o: ../src/third_party/rtos/mulib/string/src/mu_str_utils.c  .generated_files/flags/sam_e54_xpro/568506229093a051a142d8407792d4cef97fb39c .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_str_utils.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o ../src/third_party/rtos/mulib/string/src/mu_str_utils.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_stream.o: ../src/third_party/rtos/mulib/string/src/mu_stream.c  .generated_files/flags/sam_e54_xpro/8790ecf00e8f848ec8feeeae360b316ad17709f6 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_stream.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_stream.o ../src/third_party/rtos/mulib/string/src/mu_stream.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_strbuf.o: ../src/third_party/rtos/mulib/string/src/mu_strbuf.c  .generated_files/flags/sam_e54_xpro/9a8640dba1134aee8a7c7cb7c0fa4087137a6735 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_strbuf.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o ../src/third_party/rtos/mulib/string/src/mu_strbuf.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_str.o: ../src/third_party/rtos/mulib/string/src/mu_str.c  .generated_files/flags/sam_e54_xpro/a5da0a2aeb4064224cc2b605c3068c0446c24709 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_str.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_str.o ../src/third_party/rtos/mulib/string/src/mu_str.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1863499398/mu_random.o: ../src/third_party/rtos/mulib/utils/src/mu_random.c  .generated_files/flags/sam_e54_xpro/34e6d628fad9a99c51f082a073af77b07cbf15e7 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1863499398" 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863499398/mu_random.o.d" -o ${OBJECTDIR}/_ext/1863499398/mu_random.o ../src/third_party/rtos/mulib/utils/src/mu_random.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o: ../src/third_party/rtos/mulib/utils/src/mu_rfc_1123.c  .generated_files/flags/sam_e54_xpro/6110eccc24ce2ebded3ce9d730322f7ddbc3e4ed .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1863499398" 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o.d" -o ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o ../src/third_party/rtos/mulib/utils/src/mu_rfc_1123.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1863499398/mu_parse_url.o: ../src/third_party/rtos/mulib/utils/src/mu_parse_url.c  .generated_files/flags/sam_e54_xpro/a29797050dd58bbbd4dc89f1a58e4463b5cd5b0c .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1863499398" 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863499398/mu_parse_url.o.d" -o ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o ../src/third_party/rtos/mulib/utils/src/mu_parse_url.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main_e54.o: ../src/main_e54.c  .generated_files/flags/sam_e54_xpro/9dd5acd86822de344f2b7324f5ed8fdbc000d888 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_e54.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_e54.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main_e54.o.d" -o ${OBJECTDIR}/_ext/1360937237/main_e54.o ../src/main_e54.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/sam_e54_xpro/42991a2e7d7b8b7fa8fdb1fdbbca7c4ca8a4c2ee .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/eeprom_task.o: ../src/eeprom_task.c  .generated_files/flags/sam_e54_xpro/804af9c48a5633b4289fab28d16d326dd39f94b .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/eeprom_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/eeprom_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/eeprom_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/eeprom_task.o ../src/eeprom_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/340199985/mu_time.o: ../src/third_party/rtos/mu_platform/src/mu_time.c  .generated_files/flags/sam_e54_xpro/5a502008dafcf0a382bebe8d617082c5e2e47bce .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/340199985" 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340199985/mu_time.o.d" -o ${OBJECTDIR}/_ext/340199985/mu_time.o ../src/third_party/rtos/mu_platform/src/mu_time.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o: ../src/config/sam_e54_xpro/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/sam_e54_xpro/882ace5b023678969eeb1c93a061eb1e10b1dabf .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/1950915590" 
	@${RM} ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o ../src/config/sam_e54_xpro/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/340199985/mu_rtc.o: ../src/third_party/rtos/mu_platform/src/mu_rtc.c  .generated_files/flags/sam_e54_xpro/823e5de580609f02fe756bd0d0c5f4bd5c658281 .generated_files/flags/sam_e54_xpro/f571ea54c59cdfcdabffa8326ab4c832ae83255f
	@${MKDIR} "${OBJECTDIR}/_ext/340199985" 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_rtc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340199985/mu_rtc.o.d" -o ${OBJECTDIR}/_ext/340199985/mu_rtc.o ../src/third_party/rtos/mu_platform/src/mu_rtc.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
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
