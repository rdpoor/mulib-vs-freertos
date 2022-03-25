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
FINAL_IMAGE=${DISTDIR}/rtos_demo_mulib_attiny3217.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/rtos_demo_mulib_attiny3217.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/examples/twi0_master_example.c mcc_generated_files/src/cpuint.c mcc_generated_files/src/pin_manager.c mcc_generated_files/src/rtc.c mcc_generated_files/src/usart0.c mcc_generated_files/src/protected_io.S mcc_generated_files/src/twi0_master.c mcc_generated_files/mcc.c mcc_generated_files/device_config.c third_party/rtos/mu_platform/src/mu_rtc.c third_party/rtos/mu_platform/src/mu_time.c third_party/rtos/mulib/collections/src/mu_array.c third_party/rtos/mulib/collections/src/mu_bvec.c third_party/rtos/mulib/collections/src/mu_cirq.c third_party/rtos/mulib/collections/src/mu_dlist.c third_party/rtos/mulib/collections/src/mu_list.c third_party/rtos/mulib/collections/src/mu_pstore.c third_party/rtos/mulib/collections/src/mu_queue.c third_party/rtos/mulib/collections/src/mu_vect.c third_party/rtos/mulib/log/src/mu_log.c third_party/rtos/mulib/sched/src/mu_event.c third_party/rtos/mulib/sched/src/mu_sched.c third_party/rtos/mulib/sched/src/mu_spsc.c third_party/rtos/mulib/sched/src/mu_task.c third_party/rtos/mulib/sched/src/mu_access_mgr.c third_party/rtos/mulib/sched/src/mu_periodic.c third_party/rtos/mulib/sched/src/mu_task_list.c third_party/rtos/mulib/string/src/mu_str.c third_party/rtos/mulib/string/src/mu_strbuf.c third_party/rtos/mulib/string/src/mu_stream.c third_party/rtos/mulib/string/src/mu_str_utils.c third_party/rtos/mulib/utils/src/mu_parse_url.c third_party/rtos/mulib/utils/src/mu_random.c third_party/rtos/mulib/utils/src/mu_rfc_1123.c main.c app.c kbhit_task.c periodic_task.c usart0.c i2c0_task.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o ${OBJECTDIR}/mcc_generated_files/src/rtc.o ${OBJECTDIR}/mcc_generated_files/src/usart0.o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/device_config.o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o ${OBJECTDIR}/main.o ${OBJECTDIR}/app.o ${OBJECTDIR}/kbhit_task.o ${OBJECTDIR}/periodic_task.o ${OBJECTDIR}/usart0.o ${OBJECTDIR}/i2c0_task.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d ${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/src/rtc.o.d ${OBJECTDIR}/mcc_generated_files/src/usart0.o.d ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/device_config.o.d ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o.d ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o.d ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o.d ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o.d ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o.d ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o.d ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o.d ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o.d ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o.d ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o.d ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o.d ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o.d ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o.d ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o.d ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o.d ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o.d ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/app.o.d ${OBJECTDIR}/kbhit_task.o.d ${OBJECTDIR}/periodic_task.o.d ${OBJECTDIR}/usart0.o.d ${OBJECTDIR}/i2c0_task.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o ${OBJECTDIR}/mcc_generated_files/src/rtc.o ${OBJECTDIR}/mcc_generated_files/src/usart0.o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/device_config.o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o ${OBJECTDIR}/main.o ${OBJECTDIR}/app.o ${OBJECTDIR}/kbhit_task.o ${OBJECTDIR}/periodic_task.o ${OBJECTDIR}/usart0.o ${OBJECTDIR}/i2c0_task.o

# Source Files
SOURCEFILES=mcc_generated_files/examples/twi0_master_example.c mcc_generated_files/src/cpuint.c mcc_generated_files/src/pin_manager.c mcc_generated_files/src/rtc.c mcc_generated_files/src/usart0.c mcc_generated_files/src/protected_io.S mcc_generated_files/src/twi0_master.c mcc_generated_files/mcc.c mcc_generated_files/device_config.c third_party/rtos/mu_platform/src/mu_rtc.c third_party/rtos/mu_platform/src/mu_time.c third_party/rtos/mulib/collections/src/mu_array.c third_party/rtos/mulib/collections/src/mu_bvec.c third_party/rtos/mulib/collections/src/mu_cirq.c third_party/rtos/mulib/collections/src/mu_dlist.c third_party/rtos/mulib/collections/src/mu_list.c third_party/rtos/mulib/collections/src/mu_pstore.c third_party/rtos/mulib/collections/src/mu_queue.c third_party/rtos/mulib/collections/src/mu_vect.c third_party/rtos/mulib/log/src/mu_log.c third_party/rtos/mulib/sched/src/mu_event.c third_party/rtos/mulib/sched/src/mu_sched.c third_party/rtos/mulib/sched/src/mu_spsc.c third_party/rtos/mulib/sched/src/mu_task.c third_party/rtos/mulib/sched/src/mu_access_mgr.c third_party/rtos/mulib/sched/src/mu_periodic.c third_party/rtos/mulib/sched/src/mu_task_list.c third_party/rtos/mulib/string/src/mu_str.c third_party/rtos/mulib/string/src/mu_strbuf.c third_party/rtos/mulib/string/src/mu_stream.c third_party/rtos/mulib/string/src/mu_str_utils.c third_party/rtos/mulib/utils/src/mu_parse_url.c third_party/rtos/mulib/utils/src/mu_random.c third_party/rtos/mulib/utils/src/mu_rfc_1123.c main.c app.c kbhit_task.c periodic_task.c usart0.c i2c0_task.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/rtos_demo_mulib_attiny3217.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATtiny3217
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o: mcc_generated_files/examples/twi0_master_example.c  .generated_files/flags/default/c774cc98b589bf55c5130ca68403040aec062be0 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/examples" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o -o ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o mcc_generated_files/examples/twi0_master_example.c 
	
${OBJECTDIR}/mcc_generated_files/src/cpuint.o: mcc_generated_files/src/cpuint.c  .generated_files/flags/default/55d29fe4d514c9b0b8c393d534cbdc8511d86f3e .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/cpuint.o -o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o mcc_generated_files/src/cpuint.c 
	
${OBJECTDIR}/mcc_generated_files/src/pin_manager.o: mcc_generated_files/src/pin_manager.c  .generated_files/flags/default/ee681c3ae5717b504414e79b51e08241d68a1368 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o -o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o mcc_generated_files/src/pin_manager.c 
	
${OBJECTDIR}/mcc_generated_files/src/rtc.o: mcc_generated_files/src/rtc.c  .generated_files/flags/default/35ee4c63b4a0731b0b9e9fbd9599628fe378662d .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/rtc.o -o ${OBJECTDIR}/mcc_generated_files/src/rtc.o mcc_generated_files/src/rtc.c 
	
${OBJECTDIR}/mcc_generated_files/src/usart0.o: mcc_generated_files/src/usart0.c  .generated_files/flags/default/d6ae81a89a491e8c77c5db5ddee0b9ec798b23e0 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/usart0.o -o ${OBJECTDIR}/mcc_generated_files/src/usart0.o mcc_generated_files/src/usart0.c 
	
${OBJECTDIR}/mcc_generated_files/src/twi0_master.o: mcc_generated_files/src/twi0_master.c  .generated_files/flags/default/e2e6c8e6481634f6e224d1d15ee32143c6c7160b .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o -o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o mcc_generated_files/src/twi0_master.c 
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/f35d2480f2710b5f383e93031e03a0b2f17b8c7d .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/mcc.o -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c 
	
${OBJECTDIR}/mcc_generated_files/device_config.o: mcc_generated_files/device_config.c  .generated_files/flags/default/25e41cea6c2cde3bd29648b6fc7d4fc0ab69577c .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT ${OBJECTDIR}/mcc_generated_files/device_config.o -o ${OBJECTDIR}/mcc_generated_files/device_config.o mcc_generated_files/device_config.c 
	
${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o: third_party/rtos/mu_platform/src/mu_rtc.c  .generated_files/flags/default/a4ac4feed46ef027ce7085e74e13d4cd0304406f .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mu_platform/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o.d" -MT "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o.d" -MT ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o -o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o third_party/rtos/mu_platform/src/mu_rtc.c 
	
${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o: third_party/rtos/mu_platform/src/mu_time.c  .generated_files/flags/default/11fbc1ad4536cc68347470c3a442c2acf38eafda .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mu_platform/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o.d" -MT "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o.d" -MT ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o -o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o third_party/rtos/mu_platform/src/mu_time.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o: third_party/rtos/mulib/collections/src/mu_array.c  .generated_files/flags/default/b0f363796d2a62ad1dfaef52bc2c512c8a4b128 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o third_party/rtos/mulib/collections/src/mu_array.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o: third_party/rtos/mulib/collections/src/mu_bvec.c  .generated_files/flags/default/1e73016f0182dc9104129ad17d082fb3501ad9e8 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o third_party/rtos/mulib/collections/src/mu_bvec.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o: third_party/rtos/mulib/collections/src/mu_cirq.c  .generated_files/flags/default/a173c55a1a3094438c85f3e66afc3d5ddd616aec .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o third_party/rtos/mulib/collections/src/mu_cirq.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o: third_party/rtos/mulib/collections/src/mu_dlist.c  .generated_files/flags/default/f448913a3234103a14be55589ae71fd8f542695 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o third_party/rtos/mulib/collections/src/mu_dlist.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o: third_party/rtos/mulib/collections/src/mu_list.c  .generated_files/flags/default/1e032f64d51446149623c642056fba99210012f9 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o third_party/rtos/mulib/collections/src/mu_list.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o: third_party/rtos/mulib/collections/src/mu_pstore.c  .generated_files/flags/default/3acddde74cd4defb2fab83f9bd9c736236cba8f5 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o third_party/rtos/mulib/collections/src/mu_pstore.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o: third_party/rtos/mulib/collections/src/mu_queue.c  .generated_files/flags/default/a302cfbf4053e36f73d636b84ea3c5f6674b9684 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o third_party/rtos/mulib/collections/src/mu_queue.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o: third_party/rtos/mulib/collections/src/mu_vect.c  .generated_files/flags/default/dd2d929149d76494657386f75b6e349a15f0cbbe .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o third_party/rtos/mulib/collections/src/mu_vect.c 
	
${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o: third_party/rtos/mulib/log/src/mu_log.c  .generated_files/flags/default/8171d51133556eb2493840984410c8b168d0afab .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/log/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o -o ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o third_party/rtos/mulib/log/src/mu_log.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o: third_party/rtos/mulib/sched/src/mu_event.c  .generated_files/flags/default/4a12e8305bf04234c15bb7e28c54a2d4752bcf6b .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o third_party/rtos/mulib/sched/src/mu_event.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o: third_party/rtos/mulib/sched/src/mu_sched.c  .generated_files/flags/default/55c7d95228be05fd9b4f00da1889079a4b3028e5 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o third_party/rtos/mulib/sched/src/mu_sched.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o: third_party/rtos/mulib/sched/src/mu_spsc.c  .generated_files/flags/default/cc92efac318185d9d288cc7999afc7a5a42c0c7b .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o third_party/rtos/mulib/sched/src/mu_spsc.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o: third_party/rtos/mulib/sched/src/mu_task.c  .generated_files/flags/default/e07b7335b323a674dc8faf009a579f9160b56ff4 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o third_party/rtos/mulib/sched/src/mu_task.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o: third_party/rtos/mulib/sched/src/mu_access_mgr.c  .generated_files/flags/default/195a3b02cedbe5314808accbc4af7a8f280f722e .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o third_party/rtos/mulib/sched/src/mu_access_mgr.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o: third_party/rtos/mulib/sched/src/mu_periodic.c  .generated_files/flags/default/810888e4af774143f762662eb3ef4f061ee39505 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o third_party/rtos/mulib/sched/src/mu_periodic.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o: third_party/rtos/mulib/sched/src/mu_task_list.c  .generated_files/flags/default/ab4855f5fb3eb1c3b72061c659da299e31b8e97 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o third_party/rtos/mulib/sched/src/mu_task_list.c 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o: third_party/rtos/mulib/string/src/mu_str.c  .generated_files/flags/default/c395b9747773d91ca0ba06b9632417a99359ebf5 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o third_party/rtos/mulib/string/src/mu_str.c 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o: third_party/rtos/mulib/string/src/mu_strbuf.c  .generated_files/flags/default/643d2092329e08825606ce4112a024562675808b .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o third_party/rtos/mulib/string/src/mu_strbuf.c 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o: third_party/rtos/mulib/string/src/mu_stream.c  .generated_files/flags/default/feb770c7bb40f72ac6220173cbf03e7ff3506c36 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o third_party/rtos/mulib/string/src/mu_stream.c 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o: third_party/rtos/mulib/string/src/mu_str_utils.c  .generated_files/flags/default/5e1527b72ae0840dc4ef710980fa1034d09ebb3b .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o third_party/rtos/mulib/string/src/mu_str_utils.c 
	
${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o: third_party/rtos/mulib/utils/src/mu_parse_url.c  .generated_files/flags/default/2ef6c122726f03533614560d637c6b95beed49ec .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/utils/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o -o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o third_party/rtos/mulib/utils/src/mu_parse_url.c 
	
${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o: third_party/rtos/mulib/utils/src/mu_random.c  .generated_files/flags/default/fdc89832185b2f85a47f989c4eb13f00707811da .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/utils/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o -o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o third_party/rtos/mulib/utils/src/mu_random.c 
	
${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o: third_party/rtos/mulib/utils/src/mu_rfc_1123.c  .generated_files/flags/default/ffc56da7b09263997392cb0af21809cf3b469796 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/utils/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o -o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o third_party/rtos/mulib/utils/src/mu_rfc_1123.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/c11c1126e28ce1b2bfd392debc2b9ec945dcb6ea .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/app.o: app.c  .generated_files/flags/default/2836d846e55afed3ce017bfc71cd2d9a36a5a089 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/app.o.d 
	@${RM} ${OBJECTDIR}/app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/app.o.d" -MT "${OBJECTDIR}/app.o.d" -MT ${OBJECTDIR}/app.o -o ${OBJECTDIR}/app.o app.c 
	
${OBJECTDIR}/kbhit_task.o: kbhit_task.c  .generated_files/flags/default/d454253b259930d87fbe8bd24ba74396e554df79 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/kbhit_task.o.d 
	@${RM} ${OBJECTDIR}/kbhit_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/kbhit_task.o.d" -MT "${OBJECTDIR}/kbhit_task.o.d" -MT ${OBJECTDIR}/kbhit_task.o -o ${OBJECTDIR}/kbhit_task.o kbhit_task.c 
	
${OBJECTDIR}/periodic_task.o: periodic_task.c  .generated_files/flags/default/80bc0ed39e4f267b6b2a0130c0d59407522d9c8 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/periodic_task.o.d 
	@${RM} ${OBJECTDIR}/periodic_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/periodic_task.o.d" -MT "${OBJECTDIR}/periodic_task.o.d" -MT ${OBJECTDIR}/periodic_task.o -o ${OBJECTDIR}/periodic_task.o periodic_task.c 
	
${OBJECTDIR}/usart0.o: usart0.c  .generated_files/flags/default/5d238240162db0f561783391dd7481b7a49df5e8 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usart0.o.d 
	@${RM} ${OBJECTDIR}/usart0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/usart0.o.d" -MT "${OBJECTDIR}/usart0.o.d" -MT ${OBJECTDIR}/usart0.o -o ${OBJECTDIR}/usart0.o usart0.c 
	
${OBJECTDIR}/i2c0_task.o: i2c0_task.c  .generated_files/flags/default/787e25c7b3742e96edb070061da2bb4fa835de8d .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c0_task.o.d 
	@${RM} ${OBJECTDIR}/i2c0_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/i2c0_task.o.d" -MT "${OBJECTDIR}/i2c0_task.o.d" -MT ${OBJECTDIR}/i2c0_task.o -o ${OBJECTDIR}/i2c0_task.o i2c0_task.c 
	
else
${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o: mcc_generated_files/examples/twi0_master_example.c  .generated_files/flags/default/6d1a29b12e1adc3745ff53b85881b447f3997c53 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/examples" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o -o ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o mcc_generated_files/examples/twi0_master_example.c 
	
${OBJECTDIR}/mcc_generated_files/src/cpuint.o: mcc_generated_files/src/cpuint.c  .generated_files/flags/default/900089ee26e2e7a6f5a83805abecc6b6d494fbeb .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/cpuint.o -o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o mcc_generated_files/src/cpuint.c 
	
${OBJECTDIR}/mcc_generated_files/src/pin_manager.o: mcc_generated_files/src/pin_manager.c  .generated_files/flags/default/35644e5543d39334e7c21cd244007f4da46f8d57 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o -o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o mcc_generated_files/src/pin_manager.c 
	
${OBJECTDIR}/mcc_generated_files/src/rtc.o: mcc_generated_files/src/rtc.c  .generated_files/flags/default/43885be76231428bcedd6fcad4450b2d1ceebdfa .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/rtc.o -o ${OBJECTDIR}/mcc_generated_files/src/rtc.o mcc_generated_files/src/rtc.c 
	
${OBJECTDIR}/mcc_generated_files/src/usart0.o: mcc_generated_files/src/usart0.c  .generated_files/flags/default/acc6ede02416911ae0576971d3b5becea090d81c .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/usart0.o -o ${OBJECTDIR}/mcc_generated_files/src/usart0.o mcc_generated_files/src/usart0.c 
	
${OBJECTDIR}/mcc_generated_files/src/twi0_master.o: mcc_generated_files/src/twi0_master.c  .generated_files/flags/default/2fefadb3daf096f86744f233b7243b43faffb1b5 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o -o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o mcc_generated_files/src/twi0_master.c 
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/c60b94e6f05ee9f273af5ebcf0729787a937628d .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/mcc.o -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c 
	
${OBJECTDIR}/mcc_generated_files/device_config.o: mcc_generated_files/device_config.c  .generated_files/flags/default/edeade225479e99faf1523a907dc08a08f09a9d8 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT ${OBJECTDIR}/mcc_generated_files/device_config.o -o ${OBJECTDIR}/mcc_generated_files/device_config.o mcc_generated_files/device_config.c 
	
${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o: third_party/rtos/mu_platform/src/mu_rtc.c  .generated_files/flags/default/745af9020822b4e69160db977b33bc2f3a30cc64 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mu_platform/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o.d" -MT "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o.d" -MT ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o -o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o third_party/rtos/mu_platform/src/mu_rtc.c 
	
${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o: third_party/rtos/mu_platform/src/mu_time.c  .generated_files/flags/default/51cd7dfe137c7dfefcf18ad6aaa62390ad4963a8 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mu_platform/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o.d" -MT "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o.d" -MT ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o -o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o third_party/rtos/mu_platform/src/mu_time.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o: third_party/rtos/mulib/collections/src/mu_array.c  .generated_files/flags/default/9179b6eecd42119c0637e733e67c4a05686d0e5a .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o third_party/rtos/mulib/collections/src/mu_array.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o: third_party/rtos/mulib/collections/src/mu_bvec.c  .generated_files/flags/default/554443eb9c8d3097b8112c5ceded08f6583b95e8 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o third_party/rtos/mulib/collections/src/mu_bvec.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o: third_party/rtos/mulib/collections/src/mu_cirq.c  .generated_files/flags/default/5c6049a3cdbef4b4c97cd5c8f97841b354f72e58 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o third_party/rtos/mulib/collections/src/mu_cirq.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o: third_party/rtos/mulib/collections/src/mu_dlist.c  .generated_files/flags/default/dc30619afd5b0d67e4f304d2769ef6bb05993f0c .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o third_party/rtos/mulib/collections/src/mu_dlist.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o: third_party/rtos/mulib/collections/src/mu_list.c  .generated_files/flags/default/1af9ff58011e547ba35dbe5240f9a008d90bb271 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o third_party/rtos/mulib/collections/src/mu_list.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o: third_party/rtos/mulib/collections/src/mu_pstore.c  .generated_files/flags/default/7d2fc22b02fc16e8ade0d76ff8960bb09429a71e .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o third_party/rtos/mulib/collections/src/mu_pstore.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o: third_party/rtos/mulib/collections/src/mu_queue.c  .generated_files/flags/default/54f966625422b40880eed763d638120cf81d907b .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o third_party/rtos/mulib/collections/src/mu_queue.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o: third_party/rtos/mulib/collections/src/mu_vect.c  .generated_files/flags/default/6c086e32037683b9a3fca9611d154df5735442c9 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o third_party/rtos/mulib/collections/src/mu_vect.c 
	
${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o: third_party/rtos/mulib/log/src/mu_log.c  .generated_files/flags/default/4bdaea0e91f80133cc0551462138617573c4290b .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/log/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o -o ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o third_party/rtos/mulib/log/src/mu_log.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o: third_party/rtos/mulib/sched/src/mu_event.c  .generated_files/flags/default/6e70c5c22d2ee60416d10e540d4b5546de23bfdf .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o third_party/rtos/mulib/sched/src/mu_event.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o: third_party/rtos/mulib/sched/src/mu_sched.c  .generated_files/flags/default/330285b4a816c39ac942e12c656218fb001a03d9 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o third_party/rtos/mulib/sched/src/mu_sched.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o: third_party/rtos/mulib/sched/src/mu_spsc.c  .generated_files/flags/default/17f89019db5a7e83667f6bf4f62abd38ef3dcd66 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o third_party/rtos/mulib/sched/src/mu_spsc.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o: third_party/rtos/mulib/sched/src/mu_task.c  .generated_files/flags/default/f02bb500e6074b73ca013ff8742dbc2bf51f59ce .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o third_party/rtos/mulib/sched/src/mu_task.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o: third_party/rtos/mulib/sched/src/mu_access_mgr.c  .generated_files/flags/default/4b4020e758fd8509aa942a35d9180eb39d27a77 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o third_party/rtos/mulib/sched/src/mu_access_mgr.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o: third_party/rtos/mulib/sched/src/mu_periodic.c  .generated_files/flags/default/2cae11f09b5a333e0cee523381a0efcd1bc3522c .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o third_party/rtos/mulib/sched/src/mu_periodic.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o: third_party/rtos/mulib/sched/src/mu_task_list.c  .generated_files/flags/default/640be11dafbb659552e5cf02abf3ba9d0f9b892b .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o third_party/rtos/mulib/sched/src/mu_task_list.c 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o: third_party/rtos/mulib/string/src/mu_str.c  .generated_files/flags/default/2437305ec2b33b98e25437fda6783484839e3b59 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o third_party/rtos/mulib/string/src/mu_str.c 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o: third_party/rtos/mulib/string/src/mu_strbuf.c  .generated_files/flags/default/d8c7ed437d0cab504f76c4cdc600da312ea55dea .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o third_party/rtos/mulib/string/src/mu_strbuf.c 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o: third_party/rtos/mulib/string/src/mu_stream.c  .generated_files/flags/default/e73be389d490fe54e1698e4bc4218c42153c3d14 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o third_party/rtos/mulib/string/src/mu_stream.c 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o: third_party/rtos/mulib/string/src/mu_str_utils.c  .generated_files/flags/default/29f3412d9a66627a4333039c56c4d350d68ccc3d .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o third_party/rtos/mulib/string/src/mu_str_utils.c 
	
${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o: third_party/rtos/mulib/utils/src/mu_parse_url.c  .generated_files/flags/default/5fb1cd2c78904b0d585b9b1a4bacfa4e487ac4a5 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/utils/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o -o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o third_party/rtos/mulib/utils/src/mu_parse_url.c 
	
${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o: third_party/rtos/mulib/utils/src/mu_random.c  .generated_files/flags/default/78200d00740a4df7e5b1b42062390136efd37bc3 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/utils/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o -o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o third_party/rtos/mulib/utils/src/mu_random.c 
	
${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o: third_party/rtos/mulib/utils/src/mu_rfc_1123.c  .generated_files/flags/default/5d39e22cc60218ae8df00906c1ece09403487932 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/utils/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o -o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_rfc_1123.o third_party/rtos/mulib/utils/src/mu_rfc_1123.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/13cedefe00d847a240a001680f44765969b57aec .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/app.o: app.c  .generated_files/flags/default/52f3e41caa59e599d9585c0b0a14414b66bbc0ef .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/app.o.d 
	@${RM} ${OBJECTDIR}/app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/app.o.d" -MT "${OBJECTDIR}/app.o.d" -MT ${OBJECTDIR}/app.o -o ${OBJECTDIR}/app.o app.c 
	
${OBJECTDIR}/kbhit_task.o: kbhit_task.c  .generated_files/flags/default/1eb087453c927c5a26ad861adb9d748905acbb11 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/kbhit_task.o.d 
	@${RM} ${OBJECTDIR}/kbhit_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/kbhit_task.o.d" -MT "${OBJECTDIR}/kbhit_task.o.d" -MT ${OBJECTDIR}/kbhit_task.o -o ${OBJECTDIR}/kbhit_task.o kbhit_task.c 
	
${OBJECTDIR}/periodic_task.o: periodic_task.c  .generated_files/flags/default/4e620cc17b20137f4a7f8805f164ad9c48c1ed4 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/periodic_task.o.d 
	@${RM} ${OBJECTDIR}/periodic_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/periodic_task.o.d" -MT "${OBJECTDIR}/periodic_task.o.d" -MT ${OBJECTDIR}/periodic_task.o -o ${OBJECTDIR}/periodic_task.o periodic_task.c 
	
${OBJECTDIR}/usart0.o: usart0.c  .generated_files/flags/default/61399503e1c032acd1bfe6bc00ba2ed93bbe72d6 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usart0.o.d 
	@${RM} ${OBJECTDIR}/usart0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/usart0.o.d" -MT "${OBJECTDIR}/usart0.o.d" -MT ${OBJECTDIR}/usart0.o -o ${OBJECTDIR}/usart0.o usart0.c 
	
${OBJECTDIR}/i2c0_task.o: i2c0_task.c  .generated_files/flags/default/b617a2356ec2daeb7f0149e657cc8c110c42a8b2 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c0_task.o.d 
	@${RM} ${OBJECTDIR}/i2c0_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/i2c0_task.o.d" -MT "${OBJECTDIR}/i2c0_task.o.d" -MT ${OBJECTDIR}/i2c0_task.o -o ${OBJECTDIR}/i2c0_task.o i2c0_task.c 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/src/protected_io.o: mcc_generated_files/src/protected_io.S  .generated_files/flags/default/89bdd7ca90c5708ff988400412510c311e98c735 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  -gdwarf-3 -Wa,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1   -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o  mcc_generated_files/src/protected_io.S 
	
else
${OBJECTDIR}/mcc_generated_files/src/protected_io.o: mcc_generated_files/src/protected_io.S  .generated_files/flags/default/7938cbe2bb73639b75e949073a1b6caa3ff9aacd .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  -gdwarf-3 -Wa,--defsym=__MPLAB_BUILD=1   -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o  mcc_generated_files/src/protected_io.S 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/rtos_demo_mulib_attiny3217.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/rtos_demo_mulib_attiny3217.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"   -gdwarf-2 -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -gdwarf-3     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/rtos_demo_mulib_attiny3217.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/rtos_demo_mulib_attiny3217.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} ${DISTDIR}/rtos_demo_mulib_attiny3217.X.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/rtos_demo_mulib_attiny3217.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/rtos_demo_mulib_attiny3217.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -Og -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -gdwarf-3     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/rtos_demo_mulib_attiny3217.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/rtos_demo_mulib_attiny3217.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "${DISTDIR}/rtos_demo_mulib_attiny3217.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/rtos_demo_mulib_attiny3217.X.${IMAGE_TYPE}.hex"
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
