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
FINAL_IMAGE=${DISTDIR}/rtos_demo_mulib_attiny817.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/rtos_demo_mulib_attiny817.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/examples/twi0_master_example.c mcc_generated_files/src/pin_manager.c mcc_generated_files/src/twi0_master.c mcc_generated_files/src/protected_io.S mcc_generated_files/src/usart0.c mcc_generated_files/src/rtc.c mcc_generated_files/src/cpuint.c mcc_generated_files/device_config.c mcc_generated_files/mcc.c third_party/rtos/mu_platform/src/mu_rtc.c third_party/rtos/mu_platform/src/mu_time.c third_party/rtos/mulib/collections/src/mu_array.c third_party/rtos/mulib/collections/src/mu_bvec.c third_party/rtos/mulib/collections/src/mu_cirq.c third_party/rtos/mulib/collections/src/mu_dlist.c third_party/rtos/mulib/collections/src/mu_list.c third_party/rtos/mulib/collections/src/mu_pstore.c third_party/rtos/mulib/collections/src/mu_queue.c third_party/rtos/mulib/collections/src/mu_vect.c third_party/rtos/mulib/log/src/mu_log.c third_party/rtos/mulib/sched/src/mu_access_mgr.c third_party/rtos/mulib/sched/src/mu_event.c third_party/rtos/mulib/sched/src/mu_periodic.c third_party/rtos/mulib/sched/src/mu_sched.c third_party/rtos/mulib/sched/src/mu_spsc.c third_party/rtos/mulib/sched/src/mu_task.c third_party/rtos/mulib/sched/src/mu_task_list.c third_party/rtos/mulib/string/src/mu_str.c third_party/rtos/mulib/string/src/mu_strbuf.c third_party/rtos/mulib/string/src/mu_stream.c third_party/rtos/mulib/string/src/mu_str_utils.c third_party/rtos/mulib/utils/src/mu_parse_url.c third_party/rtos/mulib/utils/src/mu_random.c main.c app.c i2c_driver.c kbhit_task.c periodic_task.c usart_driver.c utils.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/src/usart0.o ${OBJECTDIR}/mcc_generated_files/src/rtc.o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o ${OBJECTDIR}/mcc_generated_files/device_config.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o ${OBJECTDIR}/main.o ${OBJECTDIR}/app.o ${OBJECTDIR}/i2c_driver.o ${OBJECTDIR}/kbhit_task.o ${OBJECTDIR}/periodic_task.o ${OBJECTDIR}/usart_driver.o ${OBJECTDIR}/utils.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d ${OBJECTDIR}/mcc_generated_files/src/usart0.o.d ${OBJECTDIR}/mcc_generated_files/src/rtc.o.d ${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d ${OBJECTDIR}/mcc_generated_files/device_config.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o.d ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o.d ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o.d ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o.d ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o.d ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o.d ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o.d ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o.d ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o.d ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o.d ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o.d ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o.d ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o.d ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o.d ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o.d ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/app.o.d ${OBJECTDIR}/i2c_driver.o.d ${OBJECTDIR}/kbhit_task.o.d ${OBJECTDIR}/periodic_task.o.d ${OBJECTDIR}/usart_driver.o.d ${OBJECTDIR}/utils.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/src/usart0.o ${OBJECTDIR}/mcc_generated_files/src/rtc.o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o ${OBJECTDIR}/mcc_generated_files/device_config.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o ${OBJECTDIR}/main.o ${OBJECTDIR}/app.o ${OBJECTDIR}/i2c_driver.o ${OBJECTDIR}/kbhit_task.o ${OBJECTDIR}/periodic_task.o ${OBJECTDIR}/usart_driver.o ${OBJECTDIR}/utils.o

# Source Files
SOURCEFILES=mcc_generated_files/examples/twi0_master_example.c mcc_generated_files/src/pin_manager.c mcc_generated_files/src/twi0_master.c mcc_generated_files/src/protected_io.S mcc_generated_files/src/usart0.c mcc_generated_files/src/rtc.c mcc_generated_files/src/cpuint.c mcc_generated_files/device_config.c mcc_generated_files/mcc.c third_party/rtos/mu_platform/src/mu_rtc.c third_party/rtos/mu_platform/src/mu_time.c third_party/rtos/mulib/collections/src/mu_array.c third_party/rtos/mulib/collections/src/mu_bvec.c third_party/rtos/mulib/collections/src/mu_cirq.c third_party/rtos/mulib/collections/src/mu_dlist.c third_party/rtos/mulib/collections/src/mu_list.c third_party/rtos/mulib/collections/src/mu_pstore.c third_party/rtos/mulib/collections/src/mu_queue.c third_party/rtos/mulib/collections/src/mu_vect.c third_party/rtos/mulib/log/src/mu_log.c third_party/rtos/mulib/sched/src/mu_access_mgr.c third_party/rtos/mulib/sched/src/mu_event.c third_party/rtos/mulib/sched/src/mu_periodic.c third_party/rtos/mulib/sched/src/mu_sched.c third_party/rtos/mulib/sched/src/mu_spsc.c third_party/rtos/mulib/sched/src/mu_task.c third_party/rtos/mulib/sched/src/mu_task_list.c third_party/rtos/mulib/string/src/mu_str.c third_party/rtos/mulib/string/src/mu_strbuf.c third_party/rtos/mulib/string/src/mu_stream.c third_party/rtos/mulib/string/src/mu_str_utils.c third_party/rtos/mulib/utils/src/mu_parse_url.c third_party/rtos/mulib/utils/src/mu_random.c main.c app.c i2c_driver.c kbhit_task.c periodic_task.c usart_driver.c utils.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/rtos_demo_mulib_attiny817.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATtiny817
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o: mcc_generated_files/examples/twi0_master_example.c  .generated_files/flags/default/e3d6289b9d913fc1c5c325175d8601dd470231d9 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/examples" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o -o ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o mcc_generated_files/examples/twi0_master_example.c 
	
${OBJECTDIR}/mcc_generated_files/src/pin_manager.o: mcc_generated_files/src/pin_manager.c  .generated_files/flags/default/e033abc4e65b76fd22ad844edcba67372bca938d .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o -o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o mcc_generated_files/src/pin_manager.c 
	
${OBJECTDIR}/mcc_generated_files/src/twi0_master.o: mcc_generated_files/src/twi0_master.c  .generated_files/flags/default/21678b1b1f5fd37ed1cdbf5c1bfc93f0eaf54bdf .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o -o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o mcc_generated_files/src/twi0_master.c 
	
${OBJECTDIR}/mcc_generated_files/src/usart0.o: mcc_generated_files/src/usart0.c  .generated_files/flags/default/4874aa04444d61f4027239bfc8f0ba4a8b516b59 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/usart0.o -o ${OBJECTDIR}/mcc_generated_files/src/usart0.o mcc_generated_files/src/usart0.c 
	
${OBJECTDIR}/mcc_generated_files/src/rtc.o: mcc_generated_files/src/rtc.c  .generated_files/flags/default/80c3434efa530adafa517b5d54c3e0556a47d972 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/rtc.o -o ${OBJECTDIR}/mcc_generated_files/src/rtc.o mcc_generated_files/src/rtc.c 
	
${OBJECTDIR}/mcc_generated_files/src/cpuint.o: mcc_generated_files/src/cpuint.c  .generated_files/flags/default/4103ee347174669dc5be0811e83c114e01a33c04 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/cpuint.o -o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o mcc_generated_files/src/cpuint.c 
	
${OBJECTDIR}/mcc_generated_files/device_config.o: mcc_generated_files/device_config.c  .generated_files/flags/default/8e3384a36b0363ae1ccc127c7b9153488ce9de81 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT ${OBJECTDIR}/mcc_generated_files/device_config.o -o ${OBJECTDIR}/mcc_generated_files/device_config.o mcc_generated_files/device_config.c 
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/a906e2aa84f09e93af5467667c873c261c96169d .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/mcc.o -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c 
	
${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o: third_party/rtos/mu_platform/src/mu_rtc.c  .generated_files/flags/default/8b96ecb8e27c5e0c1712d2bf1af6889865f1565d .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mu_platform/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o.d" -MT "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o.d" -MT ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o -o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o third_party/rtos/mu_platform/src/mu_rtc.c 
	
${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o: third_party/rtos/mu_platform/src/mu_time.c  .generated_files/flags/default/488238f1494628668aaef84639dd91058ec48d75 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mu_platform/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o.d" -MT "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o.d" -MT ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o -o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o third_party/rtos/mu_platform/src/mu_time.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o: third_party/rtos/mulib/collections/src/mu_array.c  .generated_files/flags/default/e6cabbce4dfa595e70282499e9acfd6bf0869dcd .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o third_party/rtos/mulib/collections/src/mu_array.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o: third_party/rtos/mulib/collections/src/mu_bvec.c  .generated_files/flags/default/cbab417aed448a093684c594008f1698cc3bef05 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o third_party/rtos/mulib/collections/src/mu_bvec.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o: third_party/rtos/mulib/collections/src/mu_cirq.c  .generated_files/flags/default/65275b1a330c3e0a63c92ae7c98a8ece139a8acc .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o third_party/rtos/mulib/collections/src/mu_cirq.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o: third_party/rtos/mulib/collections/src/mu_dlist.c  .generated_files/flags/default/23e88898ab62e312fa559978f0da551fb42da502 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o third_party/rtos/mulib/collections/src/mu_dlist.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o: third_party/rtos/mulib/collections/src/mu_list.c  .generated_files/flags/default/f2605080894fb8648b1c27975c176ea17794facc .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o third_party/rtos/mulib/collections/src/mu_list.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o: third_party/rtos/mulib/collections/src/mu_pstore.c  .generated_files/flags/default/e1886234436b92aaf8418e4bc2b89a25918c5a70 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o third_party/rtos/mulib/collections/src/mu_pstore.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o: third_party/rtos/mulib/collections/src/mu_queue.c  .generated_files/flags/default/d6e4f89bc45cefffaf17e3db89a3a0305c7b4942 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o third_party/rtos/mulib/collections/src/mu_queue.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o: third_party/rtos/mulib/collections/src/mu_vect.c  .generated_files/flags/default/187136f670345f31d2487fd21d12522be4ed902a .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o third_party/rtos/mulib/collections/src/mu_vect.c 
	
${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o: third_party/rtos/mulib/log/src/mu_log.c  .generated_files/flags/default/e932d0945c217d187ce7e73a0503c5c90f91e75b .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/log/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o -o ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o third_party/rtos/mulib/log/src/mu_log.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o: third_party/rtos/mulib/sched/src/mu_access_mgr.c  .generated_files/flags/default/cf9d7b8102715286f182c9308664e2711d923f2c .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o third_party/rtos/mulib/sched/src/mu_access_mgr.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o: third_party/rtos/mulib/sched/src/mu_event.c  .generated_files/flags/default/946adadcc29a98061dbb11085dd11a9924db67c8 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o third_party/rtos/mulib/sched/src/mu_event.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o: third_party/rtos/mulib/sched/src/mu_periodic.c  .generated_files/flags/default/c2c6c1ea3d2ffaaa549339fdafb30a1de0938af9 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o third_party/rtos/mulib/sched/src/mu_periodic.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o: third_party/rtos/mulib/sched/src/mu_sched.c  .generated_files/flags/default/82b62d366c5f6c4cc8c9cc5f85efa7c62bd65e1 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o third_party/rtos/mulib/sched/src/mu_sched.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o: third_party/rtos/mulib/sched/src/mu_spsc.c  .generated_files/flags/default/c4c7a5b85d5f7ef2b49fdece662f164d38fa92eb .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o third_party/rtos/mulib/sched/src/mu_spsc.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o: third_party/rtos/mulib/sched/src/mu_task.c  .generated_files/flags/default/cd4fd59184ed4abea49f32cc0cf6dbfff03f138b .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o third_party/rtos/mulib/sched/src/mu_task.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o: third_party/rtos/mulib/sched/src/mu_task_list.c  .generated_files/flags/default/1dfde271f165fd67cd0c00574789127d91db15b3 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o third_party/rtos/mulib/sched/src/mu_task_list.c 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o: third_party/rtos/mulib/string/src/mu_str.c  .generated_files/flags/default/9be827918e23ea25ddbc049e993ddff237ac8da .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o third_party/rtos/mulib/string/src/mu_str.c 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o: third_party/rtos/mulib/string/src/mu_strbuf.c  .generated_files/flags/default/9d2878cceaedda5ef2623ad0a636249bfa083610 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o third_party/rtos/mulib/string/src/mu_strbuf.c 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o: third_party/rtos/mulib/string/src/mu_stream.c  .generated_files/flags/default/2534d88660421ad691f93896a5e63c65ca0fbac6 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o third_party/rtos/mulib/string/src/mu_stream.c 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o: third_party/rtos/mulib/string/src/mu_str_utils.c  .generated_files/flags/default/f0bb80660b40cfb2e95b731444607f8cffa99d66 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o third_party/rtos/mulib/string/src/mu_str_utils.c 
	
${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o: third_party/rtos/mulib/utils/src/mu_parse_url.c  .generated_files/flags/default/10196a976c309312a1cc6f9df246396cd462aa0b .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/utils/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o -o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o third_party/rtos/mulib/utils/src/mu_parse_url.c 
	
${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o: third_party/rtos/mulib/utils/src/mu_random.c  .generated_files/flags/default/c29e3c009b05720bdb008e12d211b2f6bf88fc00 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/utils/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o -o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o third_party/rtos/mulib/utils/src/mu_random.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/ec7893cdae0b0744abbe2d32d95072c3548aaf17 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/app.o: app.c  .generated_files/flags/default/a258a54f57a046b76aeff16b13f8ea4968ea776a .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/app.o.d 
	@${RM} ${OBJECTDIR}/app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/app.o.d" -MT "${OBJECTDIR}/app.o.d" -MT ${OBJECTDIR}/app.o -o ${OBJECTDIR}/app.o app.c 
	
${OBJECTDIR}/i2c_driver.o: i2c_driver.c  .generated_files/flags/default/14e7fb33f80b4f466cacdc04a639954f457d1f0d .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_driver.o.d 
	@${RM} ${OBJECTDIR}/i2c_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/i2c_driver.o.d" -MT "${OBJECTDIR}/i2c_driver.o.d" -MT ${OBJECTDIR}/i2c_driver.o -o ${OBJECTDIR}/i2c_driver.o i2c_driver.c 
	
${OBJECTDIR}/kbhit_task.o: kbhit_task.c  .generated_files/flags/default/623c2d6e6a3468f4372f01a7ef0e968f36d57a87 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/kbhit_task.o.d 
	@${RM} ${OBJECTDIR}/kbhit_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/kbhit_task.o.d" -MT "${OBJECTDIR}/kbhit_task.o.d" -MT ${OBJECTDIR}/kbhit_task.o -o ${OBJECTDIR}/kbhit_task.o kbhit_task.c 
	
${OBJECTDIR}/periodic_task.o: periodic_task.c  .generated_files/flags/default/500fa09fedfffb242d3aa65a6d6373667e73d4fd .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/periodic_task.o.d 
	@${RM} ${OBJECTDIR}/periodic_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/periodic_task.o.d" -MT "${OBJECTDIR}/periodic_task.o.d" -MT ${OBJECTDIR}/periodic_task.o -o ${OBJECTDIR}/periodic_task.o periodic_task.c 
	
${OBJECTDIR}/usart_driver.o: usart_driver.c  .generated_files/flags/default/c4e7ce2bf35bda44dbafe2e7ba4b8aa123c22953 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usart_driver.o.d 
	@${RM} ${OBJECTDIR}/usart_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/usart_driver.o.d" -MT "${OBJECTDIR}/usart_driver.o.d" -MT ${OBJECTDIR}/usart_driver.o -o ${OBJECTDIR}/usart_driver.o usart_driver.c 
	
${OBJECTDIR}/utils.o: utils.c  .generated_files/flags/default/892874dfdd4805cf5eafca69b1a845ef60c12ea4 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/utils.o.d 
	@${RM} ${OBJECTDIR}/utils.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/utils.o.d" -MT "${OBJECTDIR}/utils.o.d" -MT ${OBJECTDIR}/utils.o -o ${OBJECTDIR}/utils.o utils.c 
	
else
${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o: mcc_generated_files/examples/twi0_master_example.c  .generated_files/flags/default/fe4e7e27e138484352814c47934dc1cf4810200b .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/examples" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o -o ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o mcc_generated_files/examples/twi0_master_example.c 
	
${OBJECTDIR}/mcc_generated_files/src/pin_manager.o: mcc_generated_files/src/pin_manager.c  .generated_files/flags/default/5ce53590b8b46269c66e15ce61f98c9a8cb49514 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o -o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o mcc_generated_files/src/pin_manager.c 
	
${OBJECTDIR}/mcc_generated_files/src/twi0_master.o: mcc_generated_files/src/twi0_master.c  .generated_files/flags/default/6ac1a733fd85c73414c738bd7d27e70426d21cba .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o -o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o mcc_generated_files/src/twi0_master.c 
	
${OBJECTDIR}/mcc_generated_files/src/usart0.o: mcc_generated_files/src/usart0.c  .generated_files/flags/default/146384494e87c06d610645eea0fa17f7af84459b .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/usart0.o -o ${OBJECTDIR}/mcc_generated_files/src/usart0.o mcc_generated_files/src/usart0.c 
	
${OBJECTDIR}/mcc_generated_files/src/rtc.o: mcc_generated_files/src/rtc.c  .generated_files/flags/default/c594e54fd7af871cdd66ffdce00ddc89597d9534 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/rtc.o -o ${OBJECTDIR}/mcc_generated_files/src/rtc.o mcc_generated_files/src/rtc.c 
	
${OBJECTDIR}/mcc_generated_files/src/cpuint.o: mcc_generated_files/src/cpuint.c  .generated_files/flags/default/c0d52008fc6502006f8ca5869bdb6a5b09fbcde0 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/cpuint.o -o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o mcc_generated_files/src/cpuint.c 
	
${OBJECTDIR}/mcc_generated_files/device_config.o: mcc_generated_files/device_config.c  .generated_files/flags/default/7920344fb59255cec9f9105a48830f526c4b755a .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT ${OBJECTDIR}/mcc_generated_files/device_config.o -o ${OBJECTDIR}/mcc_generated_files/device_config.o mcc_generated_files/device_config.c 
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/6521b4b072c7a2bf69ec54c99443b9905e0f5a8 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/mcc.o -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c 
	
${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o: third_party/rtos/mu_platform/src/mu_rtc.c  .generated_files/flags/default/254c7ee8e85b8b64ca3bdbfdd372113aa194dd6d .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mu_platform/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o.d" -MT "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o.d" -MT ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o -o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o third_party/rtos/mu_platform/src/mu_rtc.c 
	
${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o: third_party/rtos/mu_platform/src/mu_time.c  .generated_files/flags/default/db93cce5c50b29cf11cdf3b1d2dac9388f5451a1 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mu_platform/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o.d" -MT "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o.d" -MT ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o -o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o third_party/rtos/mu_platform/src/mu_time.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o: third_party/rtos/mulib/collections/src/mu_array.c  .generated_files/flags/default/e849a311e57ee0d75739195601bdc2127d78cab7 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o third_party/rtos/mulib/collections/src/mu_array.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o: third_party/rtos/mulib/collections/src/mu_bvec.c  .generated_files/flags/default/735b7e2e458a98724f7ca960da7921b040479220 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o third_party/rtos/mulib/collections/src/mu_bvec.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o: third_party/rtos/mulib/collections/src/mu_cirq.c  .generated_files/flags/default/f5ab14c658e00b65d29642dc1885933694d04406 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o third_party/rtos/mulib/collections/src/mu_cirq.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o: third_party/rtos/mulib/collections/src/mu_dlist.c  .generated_files/flags/default/57fa07897aad33aea2db28125891ee6813521628 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o third_party/rtos/mulib/collections/src/mu_dlist.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o: third_party/rtos/mulib/collections/src/mu_list.c  .generated_files/flags/default/206b6329f34ca00e7bfdfcff4a18cb0e3034233d .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o third_party/rtos/mulib/collections/src/mu_list.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o: third_party/rtos/mulib/collections/src/mu_pstore.c  .generated_files/flags/default/b467acb3fdbfd273bb73c43c772454638b7735fe .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o third_party/rtos/mulib/collections/src/mu_pstore.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o: third_party/rtos/mulib/collections/src/mu_queue.c  .generated_files/flags/default/83ff42d51aa2d3f7af96cde4be0c3c267af6e76f .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o third_party/rtos/mulib/collections/src/mu_queue.c 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o: third_party/rtos/mulib/collections/src/mu_vect.c  .generated_files/flags/default/18731ca2f9d706009eca765692a524d431cd322a .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o third_party/rtos/mulib/collections/src/mu_vect.c 
	
${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o: third_party/rtos/mulib/log/src/mu_log.c  .generated_files/flags/default/eb7001a3da7261626cebac1faeb3b48ae1989080 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/log/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o -o ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o third_party/rtos/mulib/log/src/mu_log.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o: third_party/rtos/mulib/sched/src/mu_access_mgr.c  .generated_files/flags/default/a726f895148f258c7aaba3b5d19575ae8924481f .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o third_party/rtos/mulib/sched/src/mu_access_mgr.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o: third_party/rtos/mulib/sched/src/mu_event.c  .generated_files/flags/default/ab6fc11e195f740a36d32ec8923fa012ee584a5a .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o third_party/rtos/mulib/sched/src/mu_event.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o: third_party/rtos/mulib/sched/src/mu_periodic.c  .generated_files/flags/default/d3fa6ad3b28f0d3bb97ea5b122addc3ca26bc4cf .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o third_party/rtos/mulib/sched/src/mu_periodic.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o: third_party/rtos/mulib/sched/src/mu_sched.c  .generated_files/flags/default/aefd5ea076e6828c8e742ac0424c5d96fa29841e .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o third_party/rtos/mulib/sched/src/mu_sched.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o: third_party/rtos/mulib/sched/src/mu_spsc.c  .generated_files/flags/default/ebc5933f891042c7acdb513450864a7c6b92bd02 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o third_party/rtos/mulib/sched/src/mu_spsc.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o: third_party/rtos/mulib/sched/src/mu_task.c  .generated_files/flags/default/bca31017f71153558e6209d9811a53f850ba5239 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o third_party/rtos/mulib/sched/src/mu_task.c 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o: third_party/rtos/mulib/sched/src/mu_task_list.c  .generated_files/flags/default/d3e8ce0e16cf285a812c92a77a2ed9a185f0e6ff .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o third_party/rtos/mulib/sched/src/mu_task_list.c 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o: third_party/rtos/mulib/string/src/mu_str.c  .generated_files/flags/default/f1844d9eac57de9883c2610feb3aaf693f491a19 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o third_party/rtos/mulib/string/src/mu_str.c 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o: third_party/rtos/mulib/string/src/mu_strbuf.c  .generated_files/flags/default/4c73e984c8fbf1742faf20053acabaaed792f9a8 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o third_party/rtos/mulib/string/src/mu_strbuf.c 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o: third_party/rtos/mulib/string/src/mu_stream.c  .generated_files/flags/default/445e0ac7678d53309aef618d95984123f946285f .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o third_party/rtos/mulib/string/src/mu_stream.c 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o: third_party/rtos/mulib/string/src/mu_str_utils.c  .generated_files/flags/default/bddd0153f08ecfc13c3748205c6ca5903f4c4bf7 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o third_party/rtos/mulib/string/src/mu_str_utils.c 
	
${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o: third_party/rtos/mulib/utils/src/mu_parse_url.c  .generated_files/flags/default/41f18f613cb28279ad2345b12a6a162572fa41c8 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/utils/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o -o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o third_party/rtos/mulib/utils/src/mu_parse_url.c 
	
${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o: third_party/rtos/mulib/utils/src/mu_random.c  .generated_files/flags/default/9038b2e7e2c508840b4bac8bf2424e2860bc776 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/utils/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o -o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o third_party/rtos/mulib/utils/src/mu_random.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/c40ed3fafeed7bc144344eec6818e66637288228 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/app.o: app.c  .generated_files/flags/default/b179207684650354a9b89334a1f047570af25204 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/app.o.d 
	@${RM} ${OBJECTDIR}/app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/app.o.d" -MT "${OBJECTDIR}/app.o.d" -MT ${OBJECTDIR}/app.o -o ${OBJECTDIR}/app.o app.c 
	
${OBJECTDIR}/i2c_driver.o: i2c_driver.c  .generated_files/flags/default/6e66529cc6f6fc3319a5f8acfac6614b670036e7 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_driver.o.d 
	@${RM} ${OBJECTDIR}/i2c_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/i2c_driver.o.d" -MT "${OBJECTDIR}/i2c_driver.o.d" -MT ${OBJECTDIR}/i2c_driver.o -o ${OBJECTDIR}/i2c_driver.o i2c_driver.c 
	
${OBJECTDIR}/kbhit_task.o: kbhit_task.c  .generated_files/flags/default/ad247a99c3faf117c097d7776255de33734852c .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/kbhit_task.o.d 
	@${RM} ${OBJECTDIR}/kbhit_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/kbhit_task.o.d" -MT "${OBJECTDIR}/kbhit_task.o.d" -MT ${OBJECTDIR}/kbhit_task.o -o ${OBJECTDIR}/kbhit_task.o kbhit_task.c 
	
${OBJECTDIR}/periodic_task.o: periodic_task.c  .generated_files/flags/default/57a257975953f8a97596a01f6757aac329a6d6d4 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/periodic_task.o.d 
	@${RM} ${OBJECTDIR}/periodic_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/periodic_task.o.d" -MT "${OBJECTDIR}/periodic_task.o.d" -MT ${OBJECTDIR}/periodic_task.o -o ${OBJECTDIR}/periodic_task.o periodic_task.c 
	
${OBJECTDIR}/usart_driver.o: usart_driver.c  .generated_files/flags/default/320002bce52b9411e60966461d327a1f8531b867 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usart_driver.o.d 
	@${RM} ${OBJECTDIR}/usart_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/usart_driver.o.d" -MT "${OBJECTDIR}/usart_driver.o.d" -MT ${OBJECTDIR}/usart_driver.o -o ${OBJECTDIR}/usart_driver.o usart_driver.c 
	
${OBJECTDIR}/utils.o: utils.c  .generated_files/flags/default/e550208930c0a241d53b0855100dda24eed103b9 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/utils.o.d 
	@${RM} ${OBJECTDIR}/utils.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/utils.o.d" -MT "${OBJECTDIR}/utils.o.d" -MT ${OBJECTDIR}/utils.o -o ${OBJECTDIR}/utils.o utils.c 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/src/protected_io.o: mcc_generated_files/src/protected_io.S  .generated_files/flags/default/af0cf9d7ad16c468db118b15b433cecddf41d4b6 .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  -gdwarf-3 -Wa,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1   -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o  mcc_generated_files/src/protected_io.S 
	
else
${OBJECTDIR}/mcc_generated_files/src/protected_io.o: mcc_generated_files/src/protected_io.S  .generated_files/flags/default/809cd631cd0d9675f509cc35c9098c51e22f17b .generated_files/flags/default/2f30206583c4f809513c8be76af2ac030121bed1
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -DXPRJ_default=$(CND_CONF)  -gdwarf-3 -Wa,--defsym=__MPLAB_BUILD=1   -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o  mcc_generated_files/src/protected_io.S 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/rtos_demo_mulib_attiny817.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/rtos_demo_mulib_attiny817.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"   -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -gdwarf-3     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/rtos_demo_mulib_attiny817.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/rtos_demo_mulib_attiny817.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} ${DISTDIR}/rtos_demo_mulib_attiny817.X.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/rtos_demo_mulib_attiny817.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/rtos_demo_mulib_attiny817.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"third_party/rtos/mu_platform/inc" -I"third_party/rtos/mulib/collections/inc" -I"third_party/rtos/mulib/log/inc" -I"third_party/rtos/mulib/sched/inc" -I"third_party/rtos/mulib/string/inc" -I"third_party/rtos/mulib/utils/inc" -Wall -gdwarf-3     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/rtos_demo_mulib_attiny817.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/rtos_demo_mulib_attiny817.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "${DISTDIR}/rtos_demo_mulib_attiny817.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/rtos_demo_mulib_attiny817.X.${IMAGE_TYPE}.hex"
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
