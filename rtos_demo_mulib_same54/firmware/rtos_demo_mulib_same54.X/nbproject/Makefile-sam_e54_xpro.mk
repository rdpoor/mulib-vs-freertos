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
FINAL_IMAGE=${DISTDIR}/rtos_demo_mulib_same54.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/rtos_demo_mulib_same54.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
ProjectDir="C:\Users\r\Projects\rtos-demo\rtos_demo_mulib_same54\firmware\rtos_demo_mulib_same54.X"
ProjectName=getting_started_drivers_mulib_sam_e54_xpro
ConfName=sam_e54_xpro
ImagePath="${DISTDIR}\rtos_demo_mulib_same54.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="${DISTDIR}"
ImageName="rtos_demo_mulib_same54.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-sam_e54_xpro.mk ${DISTDIR}/rtos_demo_mulib_same54.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
${OBJECTDIR}/_ext/2056749927/plib_clock.o: ../src/config/sam_e54_xpro/peripheral/clock/plib_clock.c  .generated_files/flags/sam_e54_xpro/574e79dd58f2d6a9b90d79076c530b370f4d6b64 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/2056749927" 
	@${RM} ${OBJECTDIR}/_ext/2056749927/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2056749927/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2056749927/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2056749927/plib_clock.o ../src/config/sam_e54_xpro/peripheral/clock/plib_clock.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/349294639/plib_cmcc.o: ../src/config/sam_e54_xpro/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/sam_e54_xpro/2e42b29e6bedace157f820791aebfddf338879de .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/349294639" 
	@${RM} ${OBJECTDIR}/_ext/349294639/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/349294639/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/349294639/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/349294639/plib_cmcc.o ../src/config/sam_e54_xpro/peripheral/cmcc/plib_cmcc.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2058899413/plib_evsys.o: ../src/config/sam_e54_xpro/peripheral/evsys/plib_evsys.c  .generated_files/flags/sam_e54_xpro/90480dce713665008eec108a85ff91b17c8c6fb1 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/2058899413" 
	@${RM} ${OBJECTDIR}/_ext/2058899413/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2058899413/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2058899413/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2058899413/plib_evsys.o ../src/config/sam_e54_xpro/peripheral/evsys/plib_evsys.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/348958103/plib_nvic.o: ../src/config/sam_e54_xpro/peripheral/nvic/plib_nvic.c  .generated_files/flags/sam_e54_xpro/8c3ec0eeb0535f6788a24aeacef06077e9a6e8c5 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/348958103" 
	@${RM} ${OBJECTDIR}/_ext/348958103/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/348958103/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/348958103/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/348958103/plib_nvic.o ../src/config/sam_e54_xpro/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o: ../src/config/sam_e54_xpro/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/sam_e54_xpro/6e37747f97938e1f08c4904fb1ff932fee137796 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1986180951" 
	@${RM} ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o ../src/config/sam_e54_xpro/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/348904952/plib_port.o: ../src/config/sam_e54_xpro/peripheral/port/plib_port.c  .generated_files/flags/sam_e54_xpro/c2609a92bbe6b8e60b3499ce037a2574b8ce22c7 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/348904952" 
	@${RM} ${OBJECTDIR}/_ext/348904952/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/348904952/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/348904952/plib_port.o.d" -o ${OBJECTDIR}/_ext/348904952/plib_port.o ../src/config/sam_e54_xpro/peripheral/port/plib_port.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o: ../src/config/sam_e54_xpro/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/sam_e54_xpro/cb5c4321ec4c8d76a8c430f5d8411bc432706eb2 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1950915590" 
	@${RM} ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o ../src/config/sam_e54_xpro/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o: ../src/config/sam_e54_xpro/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c  .generated_files/flags/sam_e54_xpro/c954728beb7c9e53925e15b90758c6204d4aac6a .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1267767598" 
	@${RM} ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o.d" -o ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o ../src/config/sam_e54_xpro/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o: ../src/config/sam_e54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c  .generated_files/flags/sam_e54_xpro/fd2a8318211e1d3ee84f4c4e8d5c18026f779434 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/2060180706" 
	@${RM} ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o.d" -o ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o ../src/config/sam_e54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/498645085/xc32_monitor.o: ../src/config/sam_e54_xpro/stdio/xc32_monitor.c  .generated_files/flags/sam_e54_xpro/83a653c98605a27ed9f37081c73516755884f0f5 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/498645085" 
	@${RM} ${OBJECTDIR}/_ext/498645085/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/498645085/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/498645085/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/498645085/xc32_monitor.o ../src/config/sam_e54_xpro/stdio/xc32_monitor.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2098947918/sys_cache.o: ../src/config/sam_e54_xpro/system/cache/sys_cache.c  .generated_files/flags/sam_e54_xpro/106bf78f0100eab3e6e77716472746fecc568f01 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/2098947918" 
	@${RM} ${OBJECTDIR}/_ext/2098947918/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/2098947918/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2098947918/sys_cache.o.d" -o ${OBJECTDIR}/_ext/2098947918/sys_cache.o ../src/config/sam_e54_xpro/system/cache/sys_cache.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/129427312/sys_int.o: ../src/config/sam_e54_xpro/system/int/src/sys_int.c  .generated_files/flags/sam_e54_xpro/dd455459dc7321253829d3b1b9e90cac85ba559 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/129427312" 
	@${RM} ${OBJECTDIR}/_ext/129427312/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/129427312/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/129427312/sys_int.o.d" -o ${OBJECTDIR}/_ext/129427312/sys_int.o ../src/config/sam_e54_xpro/system/int/src/sys_int.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/initialization.o: ../src/config/sam_e54_xpro/initialization.c  .generated_files/flags/sam_e54_xpro/a194b23917318c4b7c2b594b3bd7033b5531fa7e .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/initialization.o.d" -o ${OBJECTDIR}/_ext/68098787/initialization.o ../src/config/sam_e54_xpro/initialization.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/interrupts.o: ../src/config/sam_e54_xpro/interrupts.c  .generated_files/flags/sam_e54_xpro/762d0bf6d6d73790a1d2d30ba1349a690f305319 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/interrupts.o.d" -o ${OBJECTDIR}/_ext/68098787/interrupts.o ../src/config/sam_e54_xpro/interrupts.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/exceptions.o: ../src/config/sam_e54_xpro/exceptions.c  .generated_files/flags/sam_e54_xpro/165e00d6f5f372756bc25bedfcc5d6c715ea7c9 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/exceptions.o.d" -o ${OBJECTDIR}/_ext/68098787/exceptions.o ../src/config/sam_e54_xpro/exceptions.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/startup_xc32.o: ../src/config/sam_e54_xpro/startup_xc32.c  .generated_files/flags/sam_e54_xpro/109a465594ebebbb08ecb90a45e81dcc480f19ed .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/68098787/startup_xc32.o ../src/config/sam_e54_xpro/startup_xc32.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/libc_syscalls.o: ../src/config/sam_e54_xpro/libc_syscalls.c  .generated_files/flags/sam_e54_xpro/123771e265ab99aa01057d41347bc247fcb07862 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/68098787/libc_syscalls.o ../src/config/sam_e54_xpro/libc_syscalls.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/tasks.o: ../src/config/sam_e54_xpro/tasks.c  .generated_files/flags/sam_e54_xpro/190dedff9e4f410ccf9f1148f87d040b97cd20a1 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/tasks.o.d" -o ${OBJECTDIR}/_ext/68098787/tasks.o ../src/config/sam_e54_xpro/tasks.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/340199985/mu_time.o: ../src/third_party/rtos/mu_platform/src/mu_time.c  .generated_files/flags/sam_e54_xpro/95fba03dfe7ad8d56b85cbfa4f7829134f58b724 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/340199985" 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340199985/mu_time.o.d" -o ${OBJECTDIR}/_ext/340199985/mu_time.o ../src/third_party/rtos/mu_platform/src/mu_time.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/340199985/mu_rtc.o: ../src/third_party/rtos/mu_platform/src/mu_rtc.c  .generated_files/flags/sam_e54_xpro/130410ac1a76f3c9bfa7531cc51aa6bb5ed7fbdf .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/340199985" 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_rtc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340199985/mu_rtc.o.d" -o ${OBJECTDIR}/_ext/340199985/mu_rtc.o ../src/third_party/rtos/mu_platform/src/mu_rtc.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_dlist.o: ../src/third_party/rtos/mulib/collections/src/mu_dlist.c  .generated_files/flags/sam_e54_xpro/846cb85b3776c29a13f44c1fa19eb436f6c8deee .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_dlist.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_dlist.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_dlist.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_dlist.o ../src/third_party/rtos/mulib/collections/src/mu_dlist.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_list.o: ../src/third_party/rtos/mulib/collections/src/mu_list.c  .generated_files/flags/sam_e54_xpro/b08bd5bdbabfe71eb38d272de7cd19f4bfeec8b2 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_list.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_list.o ../src/third_party/rtos/mulib/collections/src/mu_list.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_cirq.o: ../src/third_party/rtos/mulib/collections/src/mu_cirq.c  .generated_files/flags/sam_e54_xpro/cd5207fcdcc3f6de67f786789e0b4e6c464279dd .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_cirq.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_cirq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_cirq.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_cirq.o ../src/third_party/rtos/mulib/collections/src/mu_cirq.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_pstore.o: ../src/third_party/rtos/mulib/collections/src/mu_pstore.c  .generated_files/flags/sam_e54_xpro/26b11822fd89665782a16fa8d10eea779a15f829 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_pstore.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_pstore.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_pstore.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_pstore.o ../src/third_party/rtos/mulib/collections/src/mu_pstore.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_vect.o: ../src/third_party/rtos/mulib/collections/src/mu_vect.c  .generated_files/flags/sam_e54_xpro/b2267de8c5933deeffa6f4c9fc1eeb8a13154589 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_vect.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_vect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_vect.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_vect.o ../src/third_party/rtos/mulib/collections/src/mu_vect.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_queue.o: ../src/third_party/rtos/mulib/collections/src/mu_queue.c  .generated_files/flags/sam_e54_xpro/1e5fa5bade8bbfff4cb2e31b4d0817ccc4b26753 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_queue.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_queue.o ../src/third_party/rtos/mulib/collections/src/mu_queue.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_bvec.o: ../src/third_party/rtos/mulib/collections/src/mu_bvec.c  .generated_files/flags/sam_e54_xpro/ee597bf5004c7b3d3b99a1431fc10a9c6327be5f .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_bvec.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_bvec.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_bvec.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_bvec.o ../src/third_party/rtos/mulib/collections/src/mu_bvec.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_array.o: ../src/third_party/rtos/mulib/collections/src/mu_array.c  .generated_files/flags/sam_e54_xpro/20de9319e478a311f69890a95df5dcb983663c4c .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_array.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_array.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_array.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_array.o ../src/third_party/rtos/mulib/collections/src/mu_array.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1717866393/mu_log.o: ../src/third_party/rtos/mulib/log/src/mu_log.c  .generated_files/flags/sam_e54_xpro/fe601d18e0ec851410fb41cd7d620cfa2c987955 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1717866393" 
	@${RM} ${OBJECTDIR}/_ext/1717866393/mu_log.o.d 
	@${RM} ${OBJECTDIR}/_ext/1717866393/mu_log.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1717866393/mu_log.o.d" -o ${OBJECTDIR}/_ext/1717866393/mu_log.o ../src/third_party/rtos/mulib/log/src/mu_log.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_spsc.o: ../src/third_party/rtos/mulib/sched/src/mu_spsc.c  .generated_files/flags/sam_e54_xpro/41b92432aca37f451fe9a99fb2f5c95ba7e79221 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_spsc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_spsc.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_spsc.o ../src/third_party/rtos/mulib/sched/src/mu_spsc.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_event.o: ../src/third_party/rtos/mulib/sched/src/mu_event.c  .generated_files/flags/sam_e54_xpro/4c863a14c46569b94ea4029ba8a503de0c171fc0 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_event.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_event.o ../src/third_party/rtos/mulib/sched/src/mu_event.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_task.o: ../src/third_party/rtos/mulib/sched/src/mu_task.c  .generated_files/flags/sam_e54_xpro/1e2ba06f758d34aa17478eb620a6a566d13863c9 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_task.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_task.o ../src/third_party/rtos/mulib/sched/src/mu_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_sched.o: ../src/third_party/rtos/mulib/sched/src/mu_sched.c  .generated_files/flags/sam_e54_xpro/99fc30c0c4ed506ccbc5fd61df9ddf829d544855 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_sched.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_sched.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_sched.o ../src/third_party/rtos/mulib/sched/src/mu_sched.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_str_utils.o: ../src/third_party/rtos/mulib/string/src/mu_str_utils.c  .generated_files/flags/sam_e54_xpro/ba0ae7a4eaf240bf591778cc86fe084c24c97e27 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_str_utils.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o ../src/third_party/rtos/mulib/string/src/mu_str_utils.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_stream.o: ../src/third_party/rtos/mulib/string/src/mu_stream.c  .generated_files/flags/sam_e54_xpro/f43cb1f714cfcfe21621a3ab1edfed8c1ed9792e .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_stream.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_stream.o ../src/third_party/rtos/mulib/string/src/mu_stream.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_strbuf.o: ../src/third_party/rtos/mulib/string/src/mu_strbuf.c  .generated_files/flags/sam_e54_xpro/5993416ed9fd7c803b6f43ca48b0399040a2e89 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_strbuf.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o ../src/third_party/rtos/mulib/string/src/mu_strbuf.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_str.o: ../src/third_party/rtos/mulib/string/src/mu_str.c  .generated_files/flags/sam_e54_xpro/32eb6afa0eeffe670f03ecb9517398293665c680 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_str.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_str.o ../src/third_party/rtos/mulib/string/src/mu_str.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1863499398/mu_random.o: ../src/third_party/rtos/mulib/utils/src/mu_random.c  .generated_files/flags/sam_e54_xpro/943166bc2b1e4df1d8116afc1c302e0ee0b2b47 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1863499398" 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863499398/mu_random.o.d" -o ${OBJECTDIR}/_ext/1863499398/mu_random.o ../src/third_party/rtos/mulib/utils/src/mu_random.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o: ../src/third_party/rtos/mulib/utils/src/mu_rfc_1123.c  .generated_files/flags/sam_e54_xpro/d5a4617e956a431c4cfb7b8f50336771f1fc685c .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1863499398" 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o.d" -o ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o ../src/third_party/rtos/mulib/utils/src/mu_rfc_1123.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1863499398/mu_parse_url.o: ../src/third_party/rtos/mulib/utils/src/mu_parse_url.c  .generated_files/flags/sam_e54_xpro/464074f31c550ea101adadf410afd983e0a94d33 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1863499398" 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863499398/mu_parse_url.o.d" -o ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o ../src/third_party/rtos/mulib/utils/src/mu_parse_url.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main_e54.o: ../src/main_e54.c  .generated_files/flags/sam_e54_xpro/eb0db967f711875371d97c5c736a28186dc47595 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_e54.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_e54.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main_e54.o.d" -o ${OBJECTDIR}/_ext/1360937237/main_e54.o ../src/main_e54.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/sam_e54_xpro/a64c4b98ca8983724668b9d744bf67ecc623de37 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/printer_task.o: ../src/printer_task.c  .generated_files/flags/sam_e54_xpro/6a9dbe3f0381737c915575c11049142a9fc61a7a .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/printer_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/printer_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/printer_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/printer_task.o ../src/printer_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/sensor_task.o: ../src/sensor_task.c  .generated_files/flags/sam_e54_xpro/6f03c5cc6dd9710bee8fc764b759b1f6dff22284 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sensor_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sensor_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/sensor_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/sensor_task.o ../src/sensor_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/i2c_task.o: ../src/i2c_task.c  .generated_files/flags/sam_e54_xpro/a640aeffcbf037cf871a4eaee1486de3e199d513 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/i2c_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/i2c_task.o ../src/i2c_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/ui_task.o: ../src/ui_task.c  .generated_files/flags/sam_e54_xpro/567d8adf5bf71021f15226e0849723066bfb3a15 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ui_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ui_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ui_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/ui_task.o ../src/ui_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/2056749927/plib_clock.o: ../src/config/sam_e54_xpro/peripheral/clock/plib_clock.c  .generated_files/flags/sam_e54_xpro/2e9d03d0a54fba7dd9880db36e4df172191465cf .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/2056749927" 
	@${RM} ${OBJECTDIR}/_ext/2056749927/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2056749927/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2056749927/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2056749927/plib_clock.o ../src/config/sam_e54_xpro/peripheral/clock/plib_clock.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/349294639/plib_cmcc.o: ../src/config/sam_e54_xpro/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/sam_e54_xpro/16537120ec4ea8a6a10c1c76b0f67bece841b5f8 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/349294639" 
	@${RM} ${OBJECTDIR}/_ext/349294639/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/349294639/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/349294639/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/349294639/plib_cmcc.o ../src/config/sam_e54_xpro/peripheral/cmcc/plib_cmcc.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2058899413/plib_evsys.o: ../src/config/sam_e54_xpro/peripheral/evsys/plib_evsys.c  .generated_files/flags/sam_e54_xpro/849b7c4df70bac2d08af08392b746965246d5508 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/2058899413" 
	@${RM} ${OBJECTDIR}/_ext/2058899413/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2058899413/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2058899413/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2058899413/plib_evsys.o ../src/config/sam_e54_xpro/peripheral/evsys/plib_evsys.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/348958103/plib_nvic.o: ../src/config/sam_e54_xpro/peripheral/nvic/plib_nvic.c  .generated_files/flags/sam_e54_xpro/d5bc38380b79926a919b478642a2879784718448 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/348958103" 
	@${RM} ${OBJECTDIR}/_ext/348958103/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/348958103/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/348958103/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/348958103/plib_nvic.o ../src/config/sam_e54_xpro/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o: ../src/config/sam_e54_xpro/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/sam_e54_xpro/b8947862137520a28b1ea68aa6c9f995c2f21452 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1986180951" 
	@${RM} ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o ../src/config/sam_e54_xpro/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/348904952/plib_port.o: ../src/config/sam_e54_xpro/peripheral/port/plib_port.c  .generated_files/flags/sam_e54_xpro/6e77a3b8b003da1f408294f1738177191f6d48b3 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/348904952" 
	@${RM} ${OBJECTDIR}/_ext/348904952/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/348904952/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/348904952/plib_port.o.d" -o ${OBJECTDIR}/_ext/348904952/plib_port.o ../src/config/sam_e54_xpro/peripheral/port/plib_port.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o: ../src/config/sam_e54_xpro/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/sam_e54_xpro/c5851d041dd491e91113d7b0e036f48a8ce41d66 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1950915590" 
	@${RM} ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/1950915590/plib_rtc_timer.o ../src/config/sam_e54_xpro/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o: ../src/config/sam_e54_xpro/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c  .generated_files/flags/sam_e54_xpro/e1cc1c01dc3db0999cebc9227045bbf2f97a1a18 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1267767598" 
	@${RM} ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o.d" -o ${OBJECTDIR}/_ext/1267767598/plib_sercom3_i2c_master.o ../src/config/sam_e54_xpro/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o: ../src/config/sam_e54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c  .generated_files/flags/sam_e54_xpro/18d4082dc4d8c8299457dfdac7f5eada22b6875c .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/2060180706" 
	@${RM} ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o.d" -o ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o ../src/config/sam_e54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/498645085/xc32_monitor.o: ../src/config/sam_e54_xpro/stdio/xc32_monitor.c  .generated_files/flags/sam_e54_xpro/996a108d6e57f2ffd941fd70c9c91d07e42ebc7a .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/498645085" 
	@${RM} ${OBJECTDIR}/_ext/498645085/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/498645085/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/498645085/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/498645085/xc32_monitor.o ../src/config/sam_e54_xpro/stdio/xc32_monitor.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2098947918/sys_cache.o: ../src/config/sam_e54_xpro/system/cache/sys_cache.c  .generated_files/flags/sam_e54_xpro/d6cee7a03e3243778d5bb6ffccdaf07ba7fdb47a .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/2098947918" 
	@${RM} ${OBJECTDIR}/_ext/2098947918/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/2098947918/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2098947918/sys_cache.o.d" -o ${OBJECTDIR}/_ext/2098947918/sys_cache.o ../src/config/sam_e54_xpro/system/cache/sys_cache.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/129427312/sys_int.o: ../src/config/sam_e54_xpro/system/int/src/sys_int.c  .generated_files/flags/sam_e54_xpro/fce24cd3ff5e09c9c976f669155436476339ebbd .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/129427312" 
	@${RM} ${OBJECTDIR}/_ext/129427312/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/129427312/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/129427312/sys_int.o.d" -o ${OBJECTDIR}/_ext/129427312/sys_int.o ../src/config/sam_e54_xpro/system/int/src/sys_int.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/initialization.o: ../src/config/sam_e54_xpro/initialization.c  .generated_files/flags/sam_e54_xpro/f202340ec849432578d83c0dc79678151f7639c7 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/initialization.o.d" -o ${OBJECTDIR}/_ext/68098787/initialization.o ../src/config/sam_e54_xpro/initialization.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/interrupts.o: ../src/config/sam_e54_xpro/interrupts.c  .generated_files/flags/sam_e54_xpro/dfe61ce503c279bd2c67f8b10a56794a3fc33dae .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/interrupts.o.d" -o ${OBJECTDIR}/_ext/68098787/interrupts.o ../src/config/sam_e54_xpro/interrupts.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/exceptions.o: ../src/config/sam_e54_xpro/exceptions.c  .generated_files/flags/sam_e54_xpro/3ca2a812fe0b98a0795a6eb7697ecda3453931bd .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/exceptions.o.d" -o ${OBJECTDIR}/_ext/68098787/exceptions.o ../src/config/sam_e54_xpro/exceptions.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/startup_xc32.o: ../src/config/sam_e54_xpro/startup_xc32.c  .generated_files/flags/sam_e54_xpro/b2871b9550843849d4204dde463e664dc049e484 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/68098787/startup_xc32.o ../src/config/sam_e54_xpro/startup_xc32.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/libc_syscalls.o: ../src/config/sam_e54_xpro/libc_syscalls.c  .generated_files/flags/sam_e54_xpro/89b2943f6c2f9a02575ee69da92a3f4d7f23d1ed .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/68098787/libc_syscalls.o ../src/config/sam_e54_xpro/libc_syscalls.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/68098787/tasks.o: ../src/config/sam_e54_xpro/tasks.c  .generated_files/flags/sam_e54_xpro/527c15c2c1e166f2c86eb8ca71b94edcbdbeedb5 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68098787/tasks.o.d" -o ${OBJECTDIR}/_ext/68098787/tasks.o ../src/config/sam_e54_xpro/tasks.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/340199985/mu_time.o: ../src/third_party/rtos/mu_platform/src/mu_time.c  .generated_files/flags/sam_e54_xpro/bbe9a6847b2585f913661d796284a97197e579e6 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/340199985" 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340199985/mu_time.o.d" -o ${OBJECTDIR}/_ext/340199985/mu_time.o ../src/third_party/rtos/mu_platform/src/mu_time.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/340199985/mu_rtc.o: ../src/third_party/rtos/mu_platform/src/mu_rtc.c  .generated_files/flags/sam_e54_xpro/4d0e3929b5c669af462efb9602e5af0f3e710463 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/340199985" 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/340199985/mu_rtc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340199985/mu_rtc.o.d" -o ${OBJECTDIR}/_ext/340199985/mu_rtc.o ../src/third_party/rtos/mu_platform/src/mu_rtc.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_dlist.o: ../src/third_party/rtos/mulib/collections/src/mu_dlist.c  .generated_files/flags/sam_e54_xpro/445b1cfe903bab11653fb2dc7141aedd2a98964b .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_dlist.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_dlist.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_dlist.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_dlist.o ../src/third_party/rtos/mulib/collections/src/mu_dlist.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_list.o: ../src/third_party/rtos/mulib/collections/src/mu_list.c  .generated_files/flags/sam_e54_xpro/b3d2e3833cd7e7484254e3a8b3cdf2b24cc3a208 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_list.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_list.o ../src/third_party/rtos/mulib/collections/src/mu_list.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_cirq.o: ../src/third_party/rtos/mulib/collections/src/mu_cirq.c  .generated_files/flags/sam_e54_xpro/76dfa5091ba2597bd1c1a036fddc7e92ad635777 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_cirq.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_cirq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_cirq.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_cirq.o ../src/third_party/rtos/mulib/collections/src/mu_cirq.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_pstore.o: ../src/third_party/rtos/mulib/collections/src/mu_pstore.c  .generated_files/flags/sam_e54_xpro/cbac80d8cb8cb40fd9b01f96e6254b31f0794082 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_pstore.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_pstore.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_pstore.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_pstore.o ../src/third_party/rtos/mulib/collections/src/mu_pstore.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_vect.o: ../src/third_party/rtos/mulib/collections/src/mu_vect.c  .generated_files/flags/sam_e54_xpro/99db103dff02759e4f2b2852a8169bd710afe9a0 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_vect.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_vect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_vect.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_vect.o ../src/third_party/rtos/mulib/collections/src/mu_vect.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_queue.o: ../src/third_party/rtos/mulib/collections/src/mu_queue.c  .generated_files/flags/sam_e54_xpro/cbdf10c78bda5988d0210e71c74d8342fe93aaf9 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_queue.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_queue.o ../src/third_party/rtos/mulib/collections/src/mu_queue.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_bvec.o: ../src/third_party/rtos/mulib/collections/src/mu_bvec.c  .generated_files/flags/sam_e54_xpro/23a3af4e1f83c97273e1afa46a81d2958522d0f8 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_bvec.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_bvec.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_bvec.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_bvec.o ../src/third_party/rtos/mulib/collections/src/mu_bvec.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1618706070/mu_array.o: ../src/third_party/rtos/mulib/collections/src/mu_array.c  .generated_files/flags/sam_e54_xpro/c6f2c4e207bff4537cbe98eb30d5dcbc583ce309 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1618706070" 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_array.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618706070/mu_array.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1618706070/mu_array.o.d" -o ${OBJECTDIR}/_ext/1618706070/mu_array.o ../src/third_party/rtos/mulib/collections/src/mu_array.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1717866393/mu_log.o: ../src/third_party/rtos/mulib/log/src/mu_log.c  .generated_files/flags/sam_e54_xpro/b419f82137df30cab5f5cf2ccf38bba9c9bafc9d .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1717866393" 
	@${RM} ${OBJECTDIR}/_ext/1717866393/mu_log.o.d 
	@${RM} ${OBJECTDIR}/_ext/1717866393/mu_log.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1717866393/mu_log.o.d" -o ${OBJECTDIR}/_ext/1717866393/mu_log.o ../src/third_party/rtos/mulib/log/src/mu_log.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_spsc.o: ../src/third_party/rtos/mulib/sched/src/mu_spsc.c  .generated_files/flags/sam_e54_xpro/bdd20edad664e2b1e1a0f1d36af7e02eaf882c59 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_spsc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_spsc.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_spsc.o ../src/third_party/rtos/mulib/sched/src/mu_spsc.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_event.o: ../src/third_party/rtos/mulib/sched/src/mu_event.c  .generated_files/flags/sam_e54_xpro/5a95a474e303301a6c53a05884b76acc4ae9956f .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_event.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_event.o ../src/third_party/rtos/mulib/sched/src/mu_event.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_task.o: ../src/third_party/rtos/mulib/sched/src/mu_task.c  .generated_files/flags/sam_e54_xpro/8872e47525eb932b5bb89917ef63d6590ec67997 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_task.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_task.o ../src/third_party/rtos/mulib/sched/src/mu_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/518675852/mu_sched.o: ../src/third_party/rtos/mulib/sched/src/mu_sched.c  .generated_files/flags/sam_e54_xpro/f957da714815c6ab6f9c07e2250fc249cab09261 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/518675852" 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/518675852/mu_sched.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/518675852/mu_sched.o.d" -o ${OBJECTDIR}/_ext/518675852/mu_sched.o ../src/third_party/rtos/mulib/sched/src/mu_sched.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_str_utils.o: ../src/third_party/rtos/mulib/string/src/mu_str_utils.c  .generated_files/flags/sam_e54_xpro/d2e5b7307ef6b786e414fc4b58dfcf7d67dc353e .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_str_utils.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_str_utils.o ../src/third_party/rtos/mulib/string/src/mu_str_utils.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_stream.o: ../src/third_party/rtos/mulib/string/src/mu_stream.c  .generated_files/flags/sam_e54_xpro/e444eddcda55930d0db23cb18226aa01be9c118e .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_stream.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_stream.o ../src/third_party/rtos/mulib/string/src/mu_stream.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_strbuf.o: ../src/third_party/rtos/mulib/string/src/mu_strbuf.c  .generated_files/flags/sam_e54_xpro/fc53a6fe0b8cc5b7fa86f9f111cac9276778c144 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_strbuf.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_strbuf.o ../src/third_party/rtos/mulib/string/src/mu_strbuf.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923606554/mu_str.o: ../src/third_party/rtos/mulib/string/src/mu_str.c  .generated_files/flags/sam_e54_xpro/aadd55a00473096b8d09e50ff693a3b1f5ea754d .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1923606554" 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923606554/mu_str.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1923606554/mu_str.o.d" -o ${OBJECTDIR}/_ext/1923606554/mu_str.o ../src/third_party/rtos/mulib/string/src/mu_str.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1863499398/mu_random.o: ../src/third_party/rtos/mulib/utils/src/mu_random.c  .generated_files/flags/sam_e54_xpro/3a89a614c80031c7d2654a9e2a804b21d562b467 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1863499398" 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863499398/mu_random.o.d" -o ${OBJECTDIR}/_ext/1863499398/mu_random.o ../src/third_party/rtos/mulib/utils/src/mu_random.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o: ../src/third_party/rtos/mulib/utils/src/mu_rfc_1123.c  .generated_files/flags/sam_e54_xpro/6ca00f4d01ec4591425c011265ffec316191c870 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1863499398" 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o.d" -o ${OBJECTDIR}/_ext/1863499398/mu_rfc_1123.o ../src/third_party/rtos/mulib/utils/src/mu_rfc_1123.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1863499398/mu_parse_url.o: ../src/third_party/rtos/mulib/utils/src/mu_parse_url.c  .generated_files/flags/sam_e54_xpro/1bea6a447a87f06d77ba7c76a8fea3cef118c36f .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1863499398" 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863499398/mu_parse_url.o.d" -o ${OBJECTDIR}/_ext/1863499398/mu_parse_url.o ../src/third_party/rtos/mulib/utils/src/mu_parse_url.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main_e54.o: ../src/main_e54.c  .generated_files/flags/sam_e54_xpro/d65b43c8fb75afe06c071fc7bec15328a5db2f99 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_e54.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_e54.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main_e54.o.d" -o ${OBJECTDIR}/_ext/1360937237/main_e54.o ../src/main_e54.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/sam_e54_xpro/f17598514e3fce1267a50a24985b42a62fb27166 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/printer_task.o: ../src/printer_task.c  .generated_files/flags/sam_e54_xpro/c74189966e03ecd9a65d7ada093dd57a52ce4404 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/printer_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/printer_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/printer_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/printer_task.o ../src/printer_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/sensor_task.o: ../src/sensor_task.c  .generated_files/flags/sam_e54_xpro/e598f64b658cc4e13065f97a908b286d760c0579 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sensor_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sensor_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/sensor_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/sensor_task.o ../src/sensor_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/i2c_task.o: ../src/i2c_task.c  .generated_files/flags/sam_e54_xpro/9a024bfe47c4337ad67d8b4dd64c2b8ebffffa59 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/mu_platform/inc" -I"../src/third_party/rtos/mulib/collections/inc" -I"../src/third_party/rtos/mulib/log/inc" -I"../src/third_party/rtos/mulib/sched/inc" -I"../src/third_party/rtos/mulib/string/inc" -I"../src/third_party/rtos/mulib/utils/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/i2c_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/i2c_task.o ../src/i2c_task.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/ui_task.o: ../src/ui_task.c  .generated_files/flags/sam_e54_xpro/6b7ac8338207d901205e9171add01f5ada097dd1 .generated_files/flags/sam_e54_xpro/fbbc84267070fee52123817a2f4c766c86c00a78
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
${DISTDIR}/rtos_demo_mulib_same54.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/sam_e54_xpro/ATSAME54P20A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -Os -mno-device-startup-code -o ${DISTDIR}/rtos_demo_mulib_same54.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/rtos_demo_mulib_same54.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/sam_e54_xpro/ATSAME54P20A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -Os -mno-device-startup-code -o ${DISTDIR}/rtos_demo_mulib_same54.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/rtos_demo_mulib_same54.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
