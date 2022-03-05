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
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/examples/twi0_master_example.c mcc_generated_files/src/cpuint.c mcc_generated_files/src/pin_manager.c mcc_generated_files/src/rtc.c mcc_generated_files/src/usart0.c mcc_generated_files/src/protected_io.S mcc_generated_files/src/twi0_master.c mcc_generated_files/mcc.c mcc_generated_files/device_config.c third_party/rtos/mu_platform/src/mu_rtc.c third_party/rtos/mu_platform/src/mu_time.c third_party/rtos/mulib/collections/src/mu_array.c third_party/rtos/mulib/collections/src/mu_bvec.c third_party/rtos/mulib/collections/src/mu_cirq.c third_party/rtos/mulib/collections/src/mu_dlist.c third_party/rtos/mulib/collections/src/mu_list.c third_party/rtos/mulib/collections/src/mu_pstore.c third_party/rtos/mulib/collections/src/mu_queue.c third_party/rtos/mulib/collections/src/mu_vect.c third_party/rtos/mulib/log/src/mu_log.c third_party/rtos/mulib/sched/src/mu_event.c third_party/rtos/mulib/sched/src/mu_sched.c third_party/rtos/mulib/sched/src/mu_spsc.c third_party/rtos/mulib/sched/src/mu_task.c third_party/rtos/mulib/string/src/mu_str.c third_party/rtos/mulib/string/src/mu_strbuf.c third_party/rtos/mulib/string/src/mu_stream.c third_party/rtos/mulib/string/src/mu_str_utils.c third_party/rtos/mulib/utils/src/mu_parse_url.c third_party/rtos/mulib/utils/src/mu_random.c third_party/rtos/mulib/utils/src/mu_rfc_1123.c main.c app.c i2c_task.c printer_task.c sensor_task.c ui_task.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o ${OBJECTDIR}/mcc_generated_files/src/rtc.o ${OBJECTDIR}/mcc_generated_files/src/usart0.o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/device_config.o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o ${OBJECTDIR}/main.o ${OBJECTDIR}/app.o ${OBJECTDIR}/i2c_task.o ${OBJECTDIR}/printer_task.o ${OBJECTDIR}/sensor_task.o ${OBJECTDIR}/ui_task.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d ${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/src/rtc.o.d ${OBJECTDIR}/mcc_generated_files/src/usart0.o.d ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/device_config.o.d ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o.d ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o.d ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o.d ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o.d ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o.d ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o.d ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o.d ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o.d ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o.d ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o.d ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o.d ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o.d ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o.d ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/app.o.d ${OBJECTDIR}/i2c_task.o.d ${OBJECTDIR}/printer_task.o.d ${OBJECTDIR}/sensor_task.o.d ${OBJECTDIR}/ui_task.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o ${OBJECTDIR}/mcc_generated_files/src/rtc.o ${OBJECTDIR}/mcc_generated_files/src/usart0.o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/device_config.o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o ${OBJECTDIR}/main.o ${OBJECTDIR}/app.o ${OBJECTDIR}/i2c_task.o ${OBJECTDIR}/printer_task.o ${OBJECTDIR}/sensor_task.o ${OBJECTDIR}/ui_task.o

# Source Files
SOURCEFILES=mcc_generated_files/examples/twi0_master_example.c mcc_generated_files/src/cpuint.c mcc_generated_files/src/pin_manager.c mcc_generated_files/src/rtc.c mcc_generated_files/src/usart0.c mcc_generated_files/src/protected_io.S mcc_generated_files/src/twi0_master.c mcc_generated_files/mcc.c mcc_generated_files/device_config.c third_party/rtos/mu_platform/src/mu_rtc.c third_party/rtos/mu_platform/src/mu_time.c third_party/rtos/mulib/collections/src/mu_array.c third_party/rtos/mulib/collections/src/mu_bvec.c third_party/rtos/mulib/collections/src/mu_cirq.c third_party/rtos/mulib/collections/src/mu_dlist.c third_party/rtos/mulib/collections/src/mu_list.c third_party/rtos/mulib/collections/src/mu_pstore.c third_party/rtos/mulib/collections/src/mu_queue.c third_party/rtos/mulib/collections/src/mu_vect.c third_party/rtos/mulib/log/src/mu_log.c third_party/rtos/mulib/sched/src/mu_event.c third_party/rtos/mulib/sched/src/mu_sched.c third_party/rtos/mulib/sched/src/mu_spsc.c third_party/rtos/mulib/sched/src/mu_task.c third_party/rtos/mulib/string/src/mu_str.c third_party/rtos/mulib/string/src/mu_strbuf.c third_party/rtos/mulib/string/src/mu_stream.c third_party/rtos/mulib/string/src/mu_str_utils.c third_party/rtos/mulib/utils/src/mu_parse_url.c third_party/rtos/mulib/utils/src/mu_random.c third_party/rtos/mulib/utils/src/mu_rfc_1123.c main.c app.c i2c_task.c printer_task.c sensor_task.c ui_task.c



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
${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o: mcc_generated_files/examples/twi0_master_example.c  .generated_files/flags/default/4439a0b6fe508479633dfc19be199a9aa07301b8 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/examples" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o -o ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o mcc_generated_files/examples/twi0_master_example.c 
	
${OBJECTDIR}/mcc_generated_files/src/cpuint.o: mcc_generated_files/src/cpuint.c  .generated_files/flags/default/b5711d1870ccc503b2e292ba8af0973a4bff6384 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/cpuint.o -o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o mcc_generated_files/src/cpuint.c 
	
${OBJECTDIR}/mcc_generated_files/src/pin_manager.o: mcc_generated_files/src/pin_manager.c  .generated_files/flags/default/4867206d4cf5c6eeeaf945446ae72021f8f389fd .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o -o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o mcc_generated_files/src/pin_manager.c 
	
${OBJECTDIR}/mcc_generated_files/src/rtc.o: mcc_generated_files/src/rtc.c  .generated_files/flags/default/b52a5a30f3d9e8ee29bc4a820b011634810870a6 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/rtc.o -o ${OBJECTDIR}/mcc_generated_files/src/rtc.o mcc_generated_files/src/rtc.c 
	
${OBJECTDIR}/mcc_generated_files/src/usart0.o: mcc_generated_files/src/usart0.c  .generated_files/flags/default/170d8280418ea9da03ae855448f2da3f1288fa15 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/usart0.o -o ${OBJECTDIR}/mcc_generated_files/src/usart0.o mcc_generated_files/src/usart0.c 
	
${OBJECTDIR}/mcc_generated_files/src/twi0_master.o: mcc_generated_files/src/twi0_master.c  .generated_files/flags/default/aaf178781761b2ec4e9317adb1a2468c314f6e8 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o -o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o mcc_generated_files/src/twi0_master.c 
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/f0fe88f18d701d375d921166180160aabc056030 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/mcc.o -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c 
	
${OBJECTDIR}/mcc_generated_files/device_config.o: mcc_generated_files/device_config.c  .generated_files/flags/default/53dbee000bf1a351e81eac2aecfab04a4d00f7e7 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT ${OBJECTDIR}/mcc_generated_files/device_config.o -o ${OBJECTDIR}/mcc_generated_files/device_config.o mcc_generated_files/device_config.c 
	
${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o: third_party/rtos/mu_platform/src/mu_rtc.c  .generated_files/flags/default/d023683d2f290e83c05d2660c27bf297510cdf69 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mu_platform/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o.d" -MT "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o.d" -MT ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o -o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o third_party/rtos/mu_platform/src/mu_rtc.c 
	
${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o: third_party/rtos/mu_platform/src/mu_time.c  .generated_files/flags/default/f6352b256af78f057d9c6666ed0c9a859f0b2e80 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mu_platform/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o.d" -MT "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o.d" -MT ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o -o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o third_party/rtos/mu_platform/src/mu_time.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o: third_party/rtos/mulib/collections/src/mu_array.c  .generated_files/flags/default/d0d6ecac2226ef9fb1af799c21600eccc82f5c16 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o third_party/rtos/mulib/collections/src/mu_array.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o: third_party/rtos/mulib/collections/src/mu_bvec.c  .generated_files/flags/default/82e7cb0999ee17e9d247fe14061a2092909478ef .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o third_party/rtos/mulib/collections/src/mu_bvec.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o: third_party/rtos/mulib/collections/src/mu_cirq.c  .generated_files/flags/default/511575533260bc5268ccc4800a6ba4b86ea72067 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o third_party/rtos/mulib/collections/src/mu_cirq.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o: third_party/rtos/mulib/collections/src/mu_dlist.c  .generated_files/flags/default/292f9a73911930a4ead278aaa67fedaf9ca68f5e .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o third_party/rtos/mulib/collections/src/mu_dlist.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o: third_party/rtos/mulib/collections/src/mu_list.c  .generated_files/flags/default/a1dd206ee30beec5ac490895fbb6fbc90b30b20e .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o third_party/rtos/mulib/collections/src/mu_list.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o: third_party/rtos/mulib/collections/src/mu_pstore.c  .generated_files/flags/default/d11db11b9f17bb2a5364ca1419ce96440b712ec0 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o third_party/rtos/mulib/collections/src/mu_pstore.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o: third_party/rtos/mulib/collections/src/mu_queue.c  .generated_files/flags/default/d9f52e7db25c3c2e35db769415e0a4330645aca7 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o third_party/rtos/mulib/collections/src/mu_queue.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o: third_party/rtos/mulib/collections/src/mu_vect.c  .generated_files/flags/default/11b0a36ab15e9b7ff4cdf716be5fb62ccd542e63 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o third_party/rtos/mulib/collections/src/mu_vect.c 
	
${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o: third_party/rtos/mulib/log/src/mu_log.c  .generated_files/flags/default/818777abb37d29ab199c5754105939947050af75 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/log/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o -o ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o third_party/rtos/mulib/log/src/mu_log.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o: third_party/rtos/mulib/sched/src/mu_event.c  .generated_files/flags/default/24146d41032334f7b457923a252e89634b01db05 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o third_party/rtos/mulib/sched/src/mu_event.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o: third_party/rtos/mulib/sched/src/mu_sched.c  .generated_files/flags/default/29a8dd53d970c3dadc23c32a61aed9e244a8432d .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o third_party/rtos/mulib/sched/src/mu_sched.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o: third_party/rtos/mulib/sched/src/mu_spsc.c  .generated_files/flags/default/e50253c1b5e6e62f9af1464f1bc2d523b15e28be .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o third_party/rtos/mulib/sched/src/mu_spsc.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o: third_party/rtos/mulib/sched/src/mu_task.c  .generated_files/flags/default/3e5ed67039cb714e7a8db70299a091b703df3baa .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o third_party/rtos/mulib/sched/src/mu_task.c 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o: third_party/rtos/mulib/string/src/mu_str.c  .generated_files/flags/default/5f31beaf9af494c966616a9396eb9ec427815fe4 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o third_party/rtos/mulib/string/src/mu_str.c 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o: third_party/rtos/mulib/string/src/mu_strbuf.c  .generated_files/flags/default/df8bc9987b281a059ecf1176ccf32f41d8a31b0 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o third_party/rtos/mulib/string/src/mu_strbuf.c 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o: third_party/rtos/mulib/string/src/mu_stream.c  .generated_files/flags/default/7bffa094ce9e646d44c8466cc1b213e11cac4dca .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o third_party/rtos/mulib/string/src/mu_stream.c 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o: third_party/rtos/mulib/string/src/mu_str_utils.c  .generated_files/flags/default/7981036b3efdef4d2ab73100625348aba3de5931 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o third_party/rtos/mulib/string/src/mu_str_utils.c 
	
${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o: third_party/rtos/mulib/utils/src/mu_parse_url.c  .generated_files/flags/default/33d13c99ec6d87e639a69e6e4a00c97f3c898889 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/utils/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o -o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o third_party/rtos/mulib/utils/src/mu_parse_url.c 
	
${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o: third_party/rtos/mulib/utils/src/mu_random.c  .generated_files/flags/default/cc91b6f5edd012901de6a80a39544763c1ccc583 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/utils/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o -o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o third_party/rtos/mulib/utils/src/mu_random.c 
	
${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o: third_party/rtos/mulib/utils/src/mu_rfc_1123.c  .generated_files/flags/default/c26be4ee69afa5cca7d3a4fc69ab889cd409d5c9 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/utils/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o -o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o third_party/rtos/mulib/utils/src/mu_rfc_1123.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/5ecb04cc95108954d453bdb650e00144e2a98a47 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/app.o: app.c  .generated_files/flags/default/1eb447b92307737e2976e1a3a0197f035195a906 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/app.o.d 
	@${RM} ${OBJECTDIR}/app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/app.o.d" -MT "${OBJECTDIR}/app.o.d" -MT ${OBJECTDIR}/app.o -o ${OBJECTDIR}/app.o app.c 
	
${OBJECTDIR}/i2c_task.o: i2c_task.c  .generated_files/flags/default/f7ffaf7284defd0806afcd6504a98b4dbd0e06f5 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_task.o.d 
	@${RM} ${OBJECTDIR}/i2c_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/i2c_task.o.d" -MT "${OBJECTDIR}/i2c_task.o.d" -MT ${OBJECTDIR}/i2c_task.o -o ${OBJECTDIR}/i2c_task.o i2c_task.c 
	
${OBJECTDIR}/printer_task.o: printer_task.c  .generated_files/flags/default/7bba7afc7f3aeaaca5ad68c00c5292199ca89ec4 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/printer_task.o.d 
	@${RM} ${OBJECTDIR}/printer_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/printer_task.o.d" -MT "${OBJECTDIR}/printer_task.o.d" -MT ${OBJECTDIR}/printer_task.o -o ${OBJECTDIR}/printer_task.o printer_task.c 
	
${OBJECTDIR}/sensor_task.o: sensor_task.c  .generated_files/flags/default/35155da8a36487dc822d29fb8f0938e1d24481ea .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/sensor_task.o.d 
	@${RM} ${OBJECTDIR}/sensor_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/sensor_task.o.d" -MT "${OBJECTDIR}/sensor_task.o.d" -MT ${OBJECTDIR}/sensor_task.o -o ${OBJECTDIR}/sensor_task.o sensor_task.c 
	
${OBJECTDIR}/ui_task.o: ui_task.c  .generated_files/flags/default/ed9da7fa18546eb31416b5829dba399befacd722 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ui_task.o.d 
	@${RM} ${OBJECTDIR}/ui_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/ui_task.o.d" -MT "${OBJECTDIR}/ui_task.o.d" -MT ${OBJECTDIR}/ui_task.o -o ${OBJECTDIR}/ui_task.o ui_task.c 
	
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
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/src/protected_io.o: mcc_generated_files/src/protected_io.S  .generated_files/flags/default/6c8b8e2977f6be2b692dca80f5df0be8d5536561 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  -gdwarf-3 -Wa,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1   -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o  mcc_generated_files/src/protected_io.S 
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/mu_tiny.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"   -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -gdwarf-3     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/mu_tiny.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/mu_tiny.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
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
