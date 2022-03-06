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
FINAL_IMAGE=${DISTDIR}/mu_tiny.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/mu_tiny.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/examples/twi0_master_example.c mcc_generated_files/src/cpuint.c mcc_generated_files/src/pin_manager.c mcc_generated_files/src/rtc.c mcc_generated_files/src/usart0.c mcc_generated_files/src/protected_io.S mcc_generated_files/src/twi0_master.c mcc_generated_files/mcc.c mcc_generated_files/device_config.c third_party/rtos/mu_platform/src/mu_rtc.c third_party/rtos/mu_platform/src/mu_time.c third_party/rtos/mulib/collections/src/mu_array.c third_party/rtos/mulib/collections/src/mu_bvec.c third_party/rtos/mulib/collections/src/mu_cirq.c third_party/rtos/mulib/collections/src/mu_dlist.c third_party/rtos/mulib/collections/src/mu_list.c third_party/rtos/mulib/collections/src/mu_pstore.c third_party/rtos/mulib/collections/src/mu_queue.c third_party/rtos/mulib/collections/src/mu_vect.c third_party/rtos/mulib/log/src/mu_log.c third_party/rtos/mulib/sched/src/mu_event.c third_party/rtos/mulib/sched/src/mu_sched.c third_party/rtos/mulib/sched/src/mu_spsc.c third_party/rtos/mulib/sched/src/mu_task.c third_party/rtos/mulib/string/src/mu_str.c third_party/rtos/mulib/string/src/mu_strbuf.c third_party/rtos/mulib/string/src/mu_stream.c third_party/rtos/mulib/string/src/mu_str_utils.c third_party/rtos/mulib/utils/src/mu_parse_url.c third_party/rtos/mulib/utils/src/mu_random.c third_party/rtos/mulib/utils/src/mu_rfc_1123.c main.c app.c i2c_task.c printer_task.c sensor_task.c ui_task.c i2c_platform.c printer_platform.c sensor_platform.c ui_platform.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o ${OBJECTDIR}/mcc_generated_files/src/rtc.o ${OBJECTDIR}/mcc_generated_files/src/usart0.o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/device_config.o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o ${OBJECTDIR}/main.o ${OBJECTDIR}/app.o ${OBJECTDIR}/i2c_task.o ${OBJECTDIR}/printer_task.o ${OBJECTDIR}/sensor_task.o ${OBJECTDIR}/ui_task.o ${OBJECTDIR}/i2c_platform.o ${OBJECTDIR}/printer_platform.o ${OBJECTDIR}/sensor_platform.o ${OBJECTDIR}/ui_platform.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d ${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/src/rtc.o.d ${OBJECTDIR}/mcc_generated_files/src/usart0.o.d ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/device_config.o.d ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o.d ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o.d ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o.d ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o.d ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o.d ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o.d ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o.d ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o.d ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o.d ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o.d ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o.d ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o.d ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o.d ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/app.o.d ${OBJECTDIR}/i2c_task.o.d ${OBJECTDIR}/printer_task.o.d ${OBJECTDIR}/sensor_task.o.d ${OBJECTDIR}/ui_task.o.d ${OBJECTDIR}/i2c_platform.o.d ${OBJECTDIR}/printer_platform.o.d ${OBJECTDIR}/sensor_platform.o.d ${OBJECTDIR}/ui_platform.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o ${OBJECTDIR}/mcc_generated_files/src/rtc.o ${OBJECTDIR}/mcc_generated_files/src/usart0.o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/device_config.o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o ${OBJECTDIR}/main.o ${OBJECTDIR}/app.o ${OBJECTDIR}/i2c_task.o ${OBJECTDIR}/printer_task.o ${OBJECTDIR}/sensor_task.o ${OBJECTDIR}/ui_task.o ${OBJECTDIR}/i2c_platform.o ${OBJECTDIR}/printer_platform.o ${OBJECTDIR}/sensor_platform.o ${OBJECTDIR}/ui_platform.o

# Source Files
SOURCEFILES=mcc_generated_files/examples/twi0_master_example.c mcc_generated_files/src/cpuint.c mcc_generated_files/src/pin_manager.c mcc_generated_files/src/rtc.c mcc_generated_files/src/usart0.c mcc_generated_files/src/protected_io.S mcc_generated_files/src/twi0_master.c mcc_generated_files/mcc.c mcc_generated_files/device_config.c third_party/rtos/mu_platform/src/mu_rtc.c third_party/rtos/mu_platform/src/mu_time.c third_party/rtos/mulib/collections/src/mu_array.c third_party/rtos/mulib/collections/src/mu_bvec.c third_party/rtos/mulib/collections/src/mu_cirq.c third_party/rtos/mulib/collections/src/mu_dlist.c third_party/rtos/mulib/collections/src/mu_list.c third_party/rtos/mulib/collections/src/mu_pstore.c third_party/rtos/mulib/collections/src/mu_queue.c third_party/rtos/mulib/collections/src/mu_vect.c third_party/rtos/mulib/log/src/mu_log.c third_party/rtos/mulib/sched/src/mu_event.c third_party/rtos/mulib/sched/src/mu_sched.c third_party/rtos/mulib/sched/src/mu_spsc.c third_party/rtos/mulib/sched/src/mu_task.c third_party/rtos/mulib/string/src/mu_str.c third_party/rtos/mulib/string/src/mu_strbuf.c third_party/rtos/mulib/string/src/mu_stream.c third_party/rtos/mulib/string/src/mu_str_utils.c third_party/rtos/mulib/utils/src/mu_parse_url.c third_party/rtos/mulib/utils/src/mu_random.c third_party/rtos/mulib/utils/src/mu_rfc_1123.c main.c app.c i2c_task.c printer_task.c sensor_task.c ui_task.c i2c_platform.c printer_platform.c sensor_platform.c ui_platform.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/mu_tiny.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATtiny3217
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o: mcc_generated_files/examples/twi0_master_example.c  .generated_files/flags/default/9181b0accaac05fffb9ac68da992c77a0496b1b1 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/examples" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o -o ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o mcc_generated_files/examples/twi0_master_example.c 
	
${OBJECTDIR}/mcc_generated_files/src/cpuint.o: mcc_generated_files/src/cpuint.c  .generated_files/flags/default/244f3eb85e23e5f5bb521c3f4bd13311a4142ee0 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/cpuint.o -o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o mcc_generated_files/src/cpuint.c 
	
${OBJECTDIR}/mcc_generated_files/src/pin_manager.o: mcc_generated_files/src/pin_manager.c  .generated_files/flags/default/bea1d67f58d033cec675f0e381550d07c586b8a2 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o -o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o mcc_generated_files/src/pin_manager.c 
	
${OBJECTDIR}/mcc_generated_files/src/rtc.o: mcc_generated_files/src/rtc.c  .generated_files/flags/default/2d872a8ae510978612dbe667cecced2183301864 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/rtc.o -o ${OBJECTDIR}/mcc_generated_files/src/rtc.o mcc_generated_files/src/rtc.c 
	
${OBJECTDIR}/mcc_generated_files/src/usart0.o: mcc_generated_files/src/usart0.c  .generated_files/flags/default/3b3fe4e616b6db7a77535afa2b1d580d365ac5b2 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/usart0.o -o ${OBJECTDIR}/mcc_generated_files/src/usart0.o mcc_generated_files/src/usart0.c 
	
${OBJECTDIR}/mcc_generated_files/src/twi0_master.o: mcc_generated_files/src/twi0_master.c  .generated_files/flags/default/72c7e316048ad30fa9079f61158e295b8f25ead0 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o -o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o mcc_generated_files/src/twi0_master.c 
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/eaf64c45cdeea4e5b5e6b8967d1cf6ebfe593348 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/mcc.o -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c 
	
${OBJECTDIR}/mcc_generated_files/device_config.o: mcc_generated_files/device_config.c  .generated_files/flags/default/1a393526cbc8f57b257e2f91c8e23253b44e5c4a .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT ${OBJECTDIR}/mcc_generated_files/device_config.o -o ${OBJECTDIR}/mcc_generated_files/device_config.o mcc_generated_files/device_config.c 
	
${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o: third_party/rtos/mu_platform/src/mu_rtc.c  .generated_files/flags/default/baa7ba303cc08bd362b5899d89f2acd236dd05b .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mu_platform/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o.d" -MT "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o.d" -MT ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o -o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o third_party/rtos/mu_platform/src/mu_rtc.c 
	
${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o: third_party/rtos/mu_platform/src/mu_time.c  .generated_files/flags/default/f192c1f7bf55ab3f3152e0529e7efc800f78cf2 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mu_platform/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o.d" -MT "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o.d" -MT ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o -o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o third_party/rtos/mu_platform/src/mu_time.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o: third_party/rtos/mulib/collections/src/mu_array.c  .generated_files/flags/default/4f1739d7e8cd7e31414a4837b3b5dfc0a094da05 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o third_party/rtos/mulib/collections/src/mu_array.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o: third_party/rtos/mulib/collections/src/mu_bvec.c  .generated_files/flags/default/e1b366d5031589dc2e2cad157694d3a51905e83 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o third_party/rtos/mulib/collections/src/mu_bvec.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o: third_party/rtos/mulib/collections/src/mu_cirq.c  .generated_files/flags/default/99fba973a290b4d7232e633b3566e14a0d012db3 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o third_party/rtos/mulib/collections/src/mu_cirq.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o: third_party/rtos/mulib/collections/src/mu_dlist.c  .generated_files/flags/default/ac682c6153bbc14d2ddf65d08cd30c05fb5efb3c .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o third_party/rtos/mulib/collections/src/mu_dlist.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o: third_party/rtos/mulib/collections/src/mu_list.c  .generated_files/flags/default/f5905c717c84d91afc771c82e1bc32c7c56fb69 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o third_party/rtos/mulib/collections/src/mu_list.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o: third_party/rtos/mulib/collections/src/mu_pstore.c  .generated_files/flags/default/8bd87a95b1a788c37b8e4c19eeaadcf1125023b7 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o third_party/rtos/mulib/collections/src/mu_pstore.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o: third_party/rtos/mulib/collections/src/mu_queue.c  .generated_files/flags/default/6d87bbac94c3c84b89deb09e4d16dff0f2d52ba7 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o third_party/rtos/mulib/collections/src/mu_queue.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o: third_party/rtos/mulib/collections/src/mu_vect.c  .generated_files/flags/default/17438a4c479ff3eaccbca697813baac40570072d .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o third_party/rtos/mulib/collections/src/mu_vect.c 
	
${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o: third_party/rtos/mulib/log/src/mu_log.c  .generated_files/flags/default/910cd0b4feacf942fd1bee8c9658e767fdfd1699 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/log/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o -o ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o third_party/rtos/mulib/log/src/mu_log.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o: third_party/rtos/mulib/sched/src/mu_event.c  .generated_files/flags/default/e7467c073b0bcbbe9988634c610fe17c94c03831 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o third_party/rtos/mulib/sched/src/mu_event.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o: third_party/rtos/mulib/sched/src/mu_sched.c  .generated_files/flags/default/ae2f09bda2c7026b05a32f9e25e1fafc49ad2739 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o third_party/rtos/mulib/sched/src/mu_sched.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o: third_party/rtos/mulib/sched/src/mu_spsc.c  .generated_files/flags/default/d9cfb7d190e6e4ea236095ac64f0fe01fcea3ef7 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o third_party/rtos/mulib/sched/src/mu_spsc.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o: third_party/rtos/mulib/sched/src/mu_task.c  .generated_files/flags/default/38586fe3f06d2da32dc6cd26d7a59ad404609354 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o third_party/rtos/mulib/sched/src/mu_task.c 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o: third_party/rtos/mulib/string/src/mu_str.c  .generated_files/flags/default/4f0f220aae87ae3f6d889a23f9f82487fd1e5a27 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o third_party/rtos/mulib/string/src/mu_str.c 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o: third_party/rtos/mulib/string/src/mu_strbuf.c  .generated_files/flags/default/3c7368dbc2d65d13ea183fbf3c0a06510d013773 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o third_party/rtos/mulib/string/src/mu_strbuf.c 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o: third_party/rtos/mulib/string/src/mu_stream.c  .generated_files/flags/default/21263526c06c1e581967b3cd66a5b92d6de24d57 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o third_party/rtos/mulib/string/src/mu_stream.c 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o: third_party/rtos/mulib/string/src/mu_str_utils.c  .generated_files/flags/default/5ae90d675f3d71fd906ba55bf478ddb0a1ed33cc .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o third_party/rtos/mulib/string/src/mu_str_utils.c 
	
${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o: third_party/rtos/mulib/utils/src/mu_parse_url.c  .generated_files/flags/default/f722fe3f952766f7697c1a8d3733a9f54efb8fad .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/utils/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o -o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o third_party/rtos/mulib/utils/src/mu_parse_url.c 
	
${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o: third_party/rtos/mulib/utils/src/mu_random.c  .generated_files/flags/default/592c8455b211ce046d0e8775158e85d191897f3c .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/utils/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o -o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o third_party/rtos/mulib/utils/src/mu_random.c 
	
${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o: third_party/rtos/mulib/utils/src/mu_rfc_1123.c  .generated_files/flags/default/85a013c63411949957f22f161920a542a0c1dd24 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/utils/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o -o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o third_party/rtos/mulib/utils/src/mu_rfc_1123.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/1fe680982f995ac11ff466db2452a0986fd9b1a1 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/app.o: app.c  .generated_files/flags/default/30ea6f3c4c5a62c6ce7dc89393813df7157d2821 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/app.o.d 
	@${RM} ${OBJECTDIR}/app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/app.o.d" -MT "${OBJECTDIR}/app.o.d" -MT ${OBJECTDIR}/app.o -o ${OBJECTDIR}/app.o app.c 
	
${OBJECTDIR}/i2c_task.o: i2c_task.c  .generated_files/flags/default/f80c607d1b98c6417bbf787bc339d5052fe453ef .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_task.o.d 
	@${RM} ${OBJECTDIR}/i2c_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/i2c_task.o.d" -MT "${OBJECTDIR}/i2c_task.o.d" -MT ${OBJECTDIR}/i2c_task.o -o ${OBJECTDIR}/i2c_task.o i2c_task.c 
	
${OBJECTDIR}/printer_task.o: printer_task.c  .generated_files/flags/default/1b8d93113bbb0f5ffcce961564f9a16f03b1d37b .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/printer_task.o.d 
	@${RM} ${OBJECTDIR}/printer_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/printer_task.o.d" -MT "${OBJECTDIR}/printer_task.o.d" -MT ${OBJECTDIR}/printer_task.o -o ${OBJECTDIR}/printer_task.o printer_task.c 
	
${OBJECTDIR}/sensor_task.o: sensor_task.c  .generated_files/flags/default/63b3ff737f3a2f84a73f3ed784d95acf6d9f772c .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/sensor_task.o.d 
	@${RM} ${OBJECTDIR}/sensor_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/sensor_task.o.d" -MT "${OBJECTDIR}/sensor_task.o.d" -MT ${OBJECTDIR}/sensor_task.o -o ${OBJECTDIR}/sensor_task.o sensor_task.c 
	
${OBJECTDIR}/ui_task.o: ui_task.c  .generated_files/flags/default/a237d06bf535c52e41bb09e61c6873a30927eed7 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ui_task.o.d 
	@${RM} ${OBJECTDIR}/ui_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/ui_task.o.d" -MT "${OBJECTDIR}/ui_task.o.d" -MT ${OBJECTDIR}/ui_task.o -o ${OBJECTDIR}/ui_task.o ui_task.c 
	
${OBJECTDIR}/i2c_platform.o: i2c_platform.c  .generated_files/flags/default/e9532fe7b67048ef8e5241ad1b955e6d1209af47 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_platform.o.d 
	@${RM} ${OBJECTDIR}/i2c_platform.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/i2c_platform.o.d" -MT "${OBJECTDIR}/i2c_platform.o.d" -MT ${OBJECTDIR}/i2c_platform.o -o ${OBJECTDIR}/i2c_platform.o i2c_platform.c 
	
${OBJECTDIR}/printer_platform.o: printer_platform.c  .generated_files/flags/default/7de777bff73e2d1d83ea0b1f043d8b19a1b3dc63 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/printer_platform.o.d 
	@${RM} ${OBJECTDIR}/printer_platform.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/printer_platform.o.d" -MT "${OBJECTDIR}/printer_platform.o.d" -MT ${OBJECTDIR}/printer_platform.o -o ${OBJECTDIR}/printer_platform.o printer_platform.c 
	
${OBJECTDIR}/sensor_platform.o: sensor_platform.c  .generated_files/flags/default/772434c5a88be5dc0b4f3fa535a6d3bf3a7ad2f .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/sensor_platform.o.d 
	@${RM} ${OBJECTDIR}/sensor_platform.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/sensor_platform.o.d" -MT "${OBJECTDIR}/sensor_platform.o.d" -MT ${OBJECTDIR}/sensor_platform.o -o ${OBJECTDIR}/sensor_platform.o sensor_platform.c 
	
${OBJECTDIR}/ui_platform.o: ui_platform.c  .generated_files/flags/default/9525a25d6dbbb76c23291d520145118ec0de07e0 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ui_platform.o.d 
	@${RM} ${OBJECTDIR}/ui_platform.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/ui_platform.o.d" -MT "${OBJECTDIR}/ui_platform.o.d" -MT ${OBJECTDIR}/ui_platform.o -o ${OBJECTDIR}/ui_platform.o ui_platform.c 
	
else
${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o: mcc_generated_files/examples/twi0_master_example.c  .generated_files/flags/default/726fdf7c09cfc7c310e231654f653495a06cf12 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/examples" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o -o ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o mcc_generated_files/examples/twi0_master_example.c 
	
${OBJECTDIR}/mcc_generated_files/src/cpuint.o: mcc_generated_files/src/cpuint.c  .generated_files/flags/default/24fff37b52c066df5f4dbe4e32c613647b1fc38b .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/cpuint.o -o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o mcc_generated_files/src/cpuint.c 
	
${OBJECTDIR}/mcc_generated_files/src/pin_manager.o: mcc_generated_files/src/pin_manager.c  .generated_files/flags/default/3a0011eec62cfebf32fe10a6a4716121691ef3a2 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o -o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o mcc_generated_files/src/pin_manager.c 
	
${OBJECTDIR}/mcc_generated_files/src/rtc.o: mcc_generated_files/src/rtc.c  .generated_files/flags/default/14fc34448ff492301bc6ae331b0b5f9c5736594b .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/rtc.o -o ${OBJECTDIR}/mcc_generated_files/src/rtc.o mcc_generated_files/src/rtc.c 
	
${OBJECTDIR}/mcc_generated_files/src/usart0.o: mcc_generated_files/src/usart0.c  .generated_files/flags/default/e89d12d7c760ad32d530deaaa0dd6b1b7f04ac4c .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/usart0.o -o ${OBJECTDIR}/mcc_generated_files/src/usart0.o mcc_generated_files/src/usart0.c 
	
${OBJECTDIR}/mcc_generated_files/src/twi0_master.o: mcc_generated_files/src/twi0_master.c  .generated_files/flags/default/93de83876c5855d337d34f30f1d91e40aefec6c .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o -o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o mcc_generated_files/src/twi0_master.c 
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/d24dc56521e68fa109c5edd00461ca56f4881e85 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/mcc.o -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c 
	
${OBJECTDIR}/mcc_generated_files/device_config.o: mcc_generated_files/device_config.c  .generated_files/flags/default/37e14f37b569193a4f13a549531fe3b0c95e914 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT ${OBJECTDIR}/mcc_generated_files/device_config.o -o ${OBJECTDIR}/mcc_generated_files/device_config.o mcc_generated_files/device_config.c 
	
${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o: third_party/rtos/mu_platform/src/mu_rtc.c  .generated_files/flags/default/fabc9fdbb4cc60bae22bad94527055344e92a25c .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mu_platform/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o.d" -MT "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o.d" -MT ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o -o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o third_party/rtos/mu_platform/src/mu_rtc.c 
	
${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o: third_party/rtos/mu_platform/src/mu_time.c  .generated_files/flags/default/1cd6973ec090af7727417dfeb99e6209545b0578 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mu_platform/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o.d" -MT "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o.d" -MT ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o -o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o third_party/rtos/mu_platform/src/mu_time.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o: third_party/rtos/mulib/collections/src/mu_array.c  .generated_files/flags/default/ab2cb079ba1aee8fda050cac8cf8e890177e15a0 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o third_party/rtos/mulib/collections/src/mu_array.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o: third_party/rtos/mulib/collections/src/mu_bvec.c  .generated_files/flags/default/d2d4ca4d0092880cf97a9d4647838d0e781e1f22 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o third_party/rtos/mulib/collections/src/mu_bvec.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o: third_party/rtos/mulib/collections/src/mu_cirq.c  .generated_files/flags/default/30a125840cab2a42520913c32e55339298901dd4 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o third_party/rtos/mulib/collections/src/mu_cirq.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o: third_party/rtos/mulib/collections/src/mu_dlist.c  .generated_files/flags/default/93041975532f525696611d3f44c2e36b7bfe193 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o third_party/rtos/mulib/collections/src/mu_dlist.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o: third_party/rtos/mulib/collections/src/mu_list.c  .generated_files/flags/default/d2cdf57c14d8e9995d830b34964eb59a1a8af05d .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o third_party/rtos/mulib/collections/src/mu_list.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o: third_party/rtos/mulib/collections/src/mu_pstore.c  .generated_files/flags/default/49324a5d9091f4ef45895a29383b3df3d9c7592c .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o third_party/rtos/mulib/collections/src/mu_pstore.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o: third_party/rtos/mulib/collections/src/mu_queue.c  .generated_files/flags/default/a8280775b0a0d0e715d6bc538759385f026733eb .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o third_party/rtos/mulib/collections/src/mu_queue.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o: third_party/rtos/mulib/collections/src/mu_vect.c  .generated_files/flags/default/df72ab39032618ea896cfe300b760cd4b2ffe97d .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o third_party/rtos/mulib/collections/src/mu_vect.c 
	
${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o: third_party/rtos/mulib/log/src/mu_log.c  .generated_files/flags/default/507fe116d9b2d5247e9c05f6c9596b6ee57758a8 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/log/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o -o ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o third_party/rtos/mulib/log/src/mu_log.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o: third_party/rtos/mulib/sched/src/mu_event.c  .generated_files/flags/default/8122653fd94ff1e7a9af446c0e3f0ce28888995e .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o third_party/rtos/mulib/sched/src/mu_event.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o: third_party/rtos/mulib/sched/src/mu_sched.c  .generated_files/flags/default/b03c4b85e97ae48f7c2acb6bc80d127543c52d1 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o third_party/rtos/mulib/sched/src/mu_sched.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o: third_party/rtos/mulib/sched/src/mu_spsc.c  .generated_files/flags/default/a32c0ff7bd2f175d5d96c64a30212b74d9dabf1d .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o third_party/rtos/mulib/sched/src/mu_spsc.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o: third_party/rtos/mulib/sched/src/mu_task.c  .generated_files/flags/default/ce3dd28a73f384a861e874d989f2db98b6a93798 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o third_party/rtos/mulib/sched/src/mu_task.c 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o: third_party/rtos/mulib/string/src/mu_str.c  .generated_files/flags/default/2c1c078f79fbc7ffedada5c56c73c2c7e6c83b9a .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o third_party/rtos/mulib/string/src/mu_str.c 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o: third_party/rtos/mulib/string/src/mu_strbuf.c  .generated_files/flags/default/549c3916ed28236e2627a832f226c952696f178c .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o third_party/rtos/mulib/string/src/mu_strbuf.c 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o: third_party/rtos/mulib/string/src/mu_stream.c  .generated_files/flags/default/aad88fd43ad65cbeff05a914a3805d628d2286f .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o third_party/rtos/mulib/string/src/mu_stream.c 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o: third_party/rtos/mulib/string/src/mu_str_utils.c  .generated_files/flags/default/fe9f204fb165edb5b8ba70445138b3f24994771b .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o third_party/rtos/mulib/string/src/mu_str_utils.c 
	
${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o: third_party/rtos/mulib/utils/src/mu_parse_url.c  .generated_files/flags/default/59e788cc15c43ae1efc9c121b4c3143fca0acce0 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/utils/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o -o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o third_party/rtos/mulib/utils/src/mu_parse_url.c 
	
${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o: third_party/rtos/mulib/utils/src/mu_random.c  .generated_files/flags/default/a45d68e12b642fbecb66557c7daabc47158c8d92 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/utils/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o -o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o third_party/rtos/mulib/utils/src/mu_random.c 
	
${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o: third_party/rtos/mulib/utils/src/mu_rfc_1123.c  .generated_files/flags/default/bc9162d96c6f84275c9dd5b34598775594ba2650 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/utils/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o -o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o third_party/rtos/mulib/utils/src/mu_rfc_1123.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/e8ea8c711a6f83df4eac308d287242fe0f4d4dec .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/app.o: app.c  .generated_files/flags/default/1e311eb7f6fb5fe9e32fc133249c8b26f7eb593f .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/app.o.d 
	@${RM} ${OBJECTDIR}/app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/app.o.d" -MT "${OBJECTDIR}/app.o.d" -MT ${OBJECTDIR}/app.o -o ${OBJECTDIR}/app.o app.c 
	
${OBJECTDIR}/i2c_task.o: i2c_task.c  .generated_files/flags/default/f3d96e76fcc5f6ebf3de9605d365782171b278b2 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_task.o.d 
	@${RM} ${OBJECTDIR}/i2c_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/i2c_task.o.d" -MT "${OBJECTDIR}/i2c_task.o.d" -MT ${OBJECTDIR}/i2c_task.o -o ${OBJECTDIR}/i2c_task.o i2c_task.c 
	
${OBJECTDIR}/printer_task.o: printer_task.c  .generated_files/flags/default/4d70d810d51b92d0f1a591f6ab3de5b3085993c7 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/printer_task.o.d 
	@${RM} ${OBJECTDIR}/printer_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/printer_task.o.d" -MT "${OBJECTDIR}/printer_task.o.d" -MT ${OBJECTDIR}/printer_task.o -o ${OBJECTDIR}/printer_task.o printer_task.c 
	
${OBJECTDIR}/sensor_task.o: sensor_task.c  .generated_files/flags/default/3b69a9d6950ed95b406ccf8322b07eaf58519962 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/sensor_task.o.d 
	@${RM} ${OBJECTDIR}/sensor_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/sensor_task.o.d" -MT "${OBJECTDIR}/sensor_task.o.d" -MT ${OBJECTDIR}/sensor_task.o -o ${OBJECTDIR}/sensor_task.o sensor_task.c 
	
${OBJECTDIR}/ui_task.o: ui_task.c  .generated_files/flags/default/71729e14031d750694ccf35366bcfaf6373a3b69 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ui_task.o.d 
	@${RM} ${OBJECTDIR}/ui_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/ui_task.o.d" -MT "${OBJECTDIR}/ui_task.o.d" -MT ${OBJECTDIR}/ui_task.o -o ${OBJECTDIR}/ui_task.o ui_task.c 
	
${OBJECTDIR}/i2c_platform.o: i2c_platform.c  .generated_files/flags/default/f8de65fb6b4616dccb72b68207ea50b8ea1cb851 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_platform.o.d 
	@${RM} ${OBJECTDIR}/i2c_platform.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/i2c_platform.o.d" -MT "${OBJECTDIR}/i2c_platform.o.d" -MT ${OBJECTDIR}/i2c_platform.o -o ${OBJECTDIR}/i2c_platform.o i2c_platform.c 
	
${OBJECTDIR}/printer_platform.o: printer_platform.c  .generated_files/flags/default/8f0cb8bd8cdc33d3f37d52ac16ae959cc897c7ed .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/printer_platform.o.d 
	@${RM} ${OBJECTDIR}/printer_platform.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/printer_platform.o.d" -MT "${OBJECTDIR}/printer_platform.o.d" -MT ${OBJECTDIR}/printer_platform.o -o ${OBJECTDIR}/printer_platform.o printer_platform.c 
	
${OBJECTDIR}/sensor_platform.o: sensor_platform.c  .generated_files/flags/default/a19d41f4338fdd724fcc76315aaf27981e96f3a0 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/sensor_platform.o.d 
	@${RM} ${OBJECTDIR}/sensor_platform.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/sensor_platform.o.d" -MT "${OBJECTDIR}/sensor_platform.o.d" -MT ${OBJECTDIR}/sensor_platform.o -o ${OBJECTDIR}/sensor_platform.o sensor_platform.c 
	
${OBJECTDIR}/ui_platform.o: ui_platform.c  .generated_files/flags/default/ca3dd6bb23b0c15d624eee2a20c791721bc2a76a .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ui_platform.o.d 
	@${RM} ${OBJECTDIR}/ui_platform.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/ui_platform.o.d" -MT "${OBJECTDIR}/ui_platform.o.d" -MT ${OBJECTDIR}/ui_platform.o -o ${OBJECTDIR}/ui_platform.o ui_platform.c 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/src/protected_io.o: mcc_generated_files/src/protected_io.S  .generated_files/flags/default/acf793ea8d07ba02441a8952d4d843323c9f6d1b .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  -gdwarf-3 -Wa,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1   -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o  mcc_generated_files/src/protected_io.S 
	
else
${OBJECTDIR}/mcc_generated_files/src/protected_io.o: mcc_generated_files/src/protected_io.S  .generated_files/flags/default/81799b9df27a3393426772e07691bbe9a7e702ae .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  -gdwarf-3 -Wa,--defsym=__MPLAB_BUILD=1   -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o  mcc_generated_files/src/protected_io.S 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/mu_tiny.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/mu_tiny.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -gdwarf-3     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/mu_tiny.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/mu_tiny.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1
	@${RM} ${DISTDIR}/mu_tiny.X.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/mu_tiny.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/mu_tiny.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -gdwarf-3     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/mu_tiny.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/mu_tiny.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "${DISTDIR}/mu_tiny.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/mu_tiny.X.${IMAGE_TYPE}.hex"
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
