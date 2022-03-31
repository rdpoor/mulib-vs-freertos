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
COMPARISON_BUILD=
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
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/examples/twi0_master_example.c mcc_generated_files/src/pin_manager.c mcc_generated_files/src/twi0_master.c mcc_generated_files/src/protected_io.S mcc_generated_files/src/usart0.c mcc_generated_files/src/rtc.c mcc_generated_files/src/cpuint.c mcc_generated_files/device_config.c mcc_generated_files/mcc.c third_party/rtos/mu_platform/src/mu_rtc.c third_party/rtos/mu_platform/src/mu_time.c third_party/rtos/mulib/collections/src/mu_array.c third_party/rtos/mulib/collections/src/mu_bvec.c third_party/rtos/mulib/collections/src/mu_cirq.c third_party/rtos/mulib/collections/src/mu_dlist.c third_party/rtos/mulib/collections/src/mu_list.c third_party/rtos/mulib/collections/src/mu_pstore.c third_party/rtos/mulib/collections/src/mu_queue.c third_party/rtos/mulib/collections/src/mu_vect.c third_party/rtos/mulib/log/src/mu_log.c third_party/rtos/mulib/sched/src/mu_access_mgr.c third_party/rtos/mulib/sched/src/mu_event.c third_party/rtos/mulib/sched/src/mu_periodic.c third_party/rtos/mulib/sched/src/mu_sched.c third_party/rtos/mulib/sched/src/mu_spsc.c third_party/rtos/mulib/sched/src/mu_task.c third_party/rtos/mulib/sched/src/mu_task_list.c third_party/rtos/mulib/string/src/mu_str.c third_party/rtos/mulib/string/src/mu_strbuf.c third_party/rtos/mulib/string/src/mu_stream.c third_party/rtos/mulib/string/src/mu_str_utils.c third_party/rtos/mulib/utils/src/mu_parse_url.c third_party/rtos/mulib/utils/src/mu_random.c main.c app.c i2c_driver.c kbhit_task.c periodic_task.c usart_driver.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/src/usart0.o ${OBJECTDIR}/mcc_generated_files/src/rtc.o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o ${OBJECTDIR}/mcc_generated_files/device_config.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o ${OBJECTDIR}/main.o ${OBJECTDIR}/app.o ${OBJECTDIR}/i2c_driver.o ${OBJECTDIR}/kbhit_task.o ${OBJECTDIR}/periodic_task.o ${OBJECTDIR}/usart_driver.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d ${OBJECTDIR}/mcc_generated_files/src/usart0.o.d ${OBJECTDIR}/mcc_generated_files/src/rtc.o.d ${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d ${OBJECTDIR}/mcc_generated_files/device_config.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o.d ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o.d ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o.d ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o.d ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o.d ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o.d ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o.d ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o.d ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o.d ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o.d ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o.d ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o.d ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o.d ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o.d ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o.d ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o.d ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/app.o.d ${OBJECTDIR}/i2c_driver.o.d ${OBJECTDIR}/kbhit_task.o.d ${OBJECTDIR}/periodic_task.o.d ${OBJECTDIR}/usart_driver.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/src/usart0.o ${OBJECTDIR}/mcc_generated_files/src/rtc.o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o ${OBJECTDIR}/mcc_generated_files/device_config.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o ${OBJECTDIR}/main.o ${OBJECTDIR}/app.o ${OBJECTDIR}/i2c_driver.o ${OBJECTDIR}/kbhit_task.o ${OBJECTDIR}/periodic_task.o ${OBJECTDIR}/usart_driver.o

# Source Files
SOURCEFILES=mcc_generated_files/examples/twi0_master_example.c mcc_generated_files/src/pin_manager.c mcc_generated_files/src/twi0_master.c mcc_generated_files/src/protected_io.S mcc_generated_files/src/usart0.c mcc_generated_files/src/rtc.c mcc_generated_files/src/cpuint.c mcc_generated_files/device_config.c mcc_generated_files/mcc.c third_party/rtos/mu_platform/src/mu_rtc.c third_party/rtos/mu_platform/src/mu_time.c third_party/rtos/mulib/collections/src/mu_array.c third_party/rtos/mulib/collections/src/mu_bvec.c third_party/rtos/mulib/collections/src/mu_cirq.c third_party/rtos/mulib/collections/src/mu_dlist.c third_party/rtos/mulib/collections/src/mu_list.c third_party/rtos/mulib/collections/src/mu_pstore.c third_party/rtos/mulib/collections/src/mu_queue.c third_party/rtos/mulib/collections/src/mu_vect.c third_party/rtos/mulib/log/src/mu_log.c third_party/rtos/mulib/sched/src/mu_access_mgr.c third_party/rtos/mulib/sched/src/mu_event.c third_party/rtos/mulib/sched/src/mu_periodic.c third_party/rtos/mulib/sched/src/mu_sched.c third_party/rtos/mulib/sched/src/mu_spsc.c third_party/rtos/mulib/sched/src/mu_task.c third_party/rtos/mulib/sched/src/mu_task_list.c third_party/rtos/mulib/string/src/mu_str.c third_party/rtos/mulib/string/src/mu_strbuf.c third_party/rtos/mulib/string/src/mu_stream.c third_party/rtos/mulib/string/src/mu_str_utils.c third_party/rtos/mulib/utils/src/mu_parse_url.c third_party/rtos/mulib/utils/src/mu_random.c main.c app.c i2c_driver.c kbhit_task.c periodic_task.c usart_driver.c

# Pack Options 
PACK_COMPILER_OPTIONS=-I "${DFP_DIR}/include"
PACK_COMMON_OPTIONS=-B "${DFP_DIR}/gcc/dev/attiny817"



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
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/src/protected_io.o: mcc_generated_files/src/protected_io.S  .generated_files/flags/default/cc198f6d46143f9e2e302956c1fde6ca67b12356 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.ok ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.err 
	 ${MP_CC} $(MP_EXTRA_AS_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -DDEBUG  -x assembler-with-cpp -c -D__$(MP_PROCESSOR_OPTION)__  -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o mcc_generated_files/src/protected_io.S  -DXPRJ_default=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/mcc_generated_files/src/protected_io.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1
	
else
${OBJECTDIR}/mcc_generated_files/src/protected_io.o: mcc_generated_files/src/protected_io.S  .generated_files/flags/default/16ef9d9062727c6f94dad927c1abf728beced979 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.ok ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.err 
	 ${MP_CC} $(MP_EXTRA_AS_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x assembler-with-cpp -c -D__$(MP_PROCESSOR_OPTION)__  -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o mcc_generated_files/src/protected_io.S  -DXPRJ_default=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/mcc_generated_files/src/protected_io.o.asm.d"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o: mcc_generated_files/examples/twi0_master_example.c  .generated_files/flags/default/8623ae70fef86d1954c3f869021218477ea2b63c .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/examples" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o  -o ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o mcc_generated_files/examples/twi0_master_example.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/pin_manager.o: mcc_generated_files/src/pin_manager.c  .generated_files/flags/default/5657e19c0dcb48e7fe5de4d4c96f44cbf28361eb .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o  -o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o mcc_generated_files/src/pin_manager.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/twi0_master.o: mcc_generated_files/src/twi0_master.c  .generated_files/flags/default/c33529eb9d72ed03c1c6170bf70b23d903a017b7 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o  -o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o mcc_generated_files/src/twi0_master.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/usart0.o: mcc_generated_files/src/usart0.c  .generated_files/flags/default/2ed1c7d213c999cdb82f114fe61a18facf0d3bb4 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/usart0.o  -o ${OBJECTDIR}/mcc_generated_files/src/usart0.o mcc_generated_files/src/usart0.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/rtc.o: mcc_generated_files/src/rtc.c  .generated_files/flags/default/2890b6ca78944669ace9b95072730c20f76bdf5a .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/rtc.o  -o ${OBJECTDIR}/mcc_generated_files/src/rtc.o mcc_generated_files/src/rtc.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/cpuint.o: mcc_generated_files/src/cpuint.c  .generated_files/flags/default/20dad172e85fe29b8e226c746f3d9528e84d2ade .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/cpuint.o  -o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o mcc_generated_files/src/cpuint.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/device_config.o: mcc_generated_files/device_config.c  .generated_files/flags/default/9b0d41f4b04af5c61d45a4c576b15053a57b000e .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT ${OBJECTDIR}/mcc_generated_files/device_config.o  -o ${OBJECTDIR}/mcc_generated_files/device_config.o mcc_generated_files/device_config.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/3cd44e7d794924f7493c19caf6c549088287b813 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/mcc.o  -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o: third_party/rtos/mu_platform/src/mu_rtc.c  .generated_files/flags/default/5325c16c9ff3096d0dac7998c7b992983af432c5 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mu_platform/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o.d" -MT "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o.d" -MT ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o  -o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o third_party/rtos/mu_platform/src/mu_rtc.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o: third_party/rtos/mu_platform/src/mu_time.c  .generated_files/flags/default/163c1c4963abe467c1d29b7304d157c3484aaef2 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mu_platform/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o.d" -MT "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o.d" -MT ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o  -o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o third_party/rtos/mu_platform/src/mu_time.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o: third_party/rtos/mulib/collections/src/mu_array.c  .generated_files/flags/default/9a6d7e137eacc65a6bbca5f15eb14494d6ba1c2e .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o  -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o third_party/rtos/mulib/collections/src/mu_array.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o: third_party/rtos/mulib/collections/src/mu_bvec.c  .generated_files/flags/default/f9991beb77a587776ed169f8f322b26adb3e6758 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o  -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o third_party/rtos/mulib/collections/src/mu_bvec.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o: third_party/rtos/mulib/collections/src/mu_cirq.c  .generated_files/flags/default/d5edc9f2e7a90293497952e06f6b42106b0f7e31 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o  -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o third_party/rtos/mulib/collections/src/mu_cirq.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o: third_party/rtos/mulib/collections/src/mu_dlist.c  .generated_files/flags/default/899b99a0469e1004ce076260334cc9d756e2b964 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o  -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o third_party/rtos/mulib/collections/src/mu_dlist.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o: third_party/rtos/mulib/collections/src/mu_list.c  .generated_files/flags/default/9d6cd9a156860b1e7f3f29a49a57eb05671b7279 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o  -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o third_party/rtos/mulib/collections/src/mu_list.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o: third_party/rtos/mulib/collections/src/mu_pstore.c  .generated_files/flags/default/b3598125b7fa0b00b8def6be0772eda60618e8eb .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o  -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o third_party/rtos/mulib/collections/src/mu_pstore.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o: third_party/rtos/mulib/collections/src/mu_queue.c  .generated_files/flags/default/47818f32782988bd5c43abc9f9ac1b478f9faff1 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o  -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o third_party/rtos/mulib/collections/src/mu_queue.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o: third_party/rtos/mulib/collections/src/mu_vect.c  .generated_files/flags/default/16f3ee8440828d18c24ef5fa939780185d007b90 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o  -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o third_party/rtos/mulib/collections/src/mu_vect.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o: third_party/rtos/mulib/log/src/mu_log.c  .generated_files/flags/default/57850938423a4a8c61cac04dc0969f642013b8b7 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/log/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o  -o ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o third_party/rtos/mulib/log/src/mu_log.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o: third_party/rtos/mulib/sched/src/mu_access_mgr.c  .generated_files/flags/default/ae289cb7fe0c15e3f5a38388a8f3b7e5fe63c022 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o  -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o third_party/rtos/mulib/sched/src/mu_access_mgr.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o: third_party/rtos/mulib/sched/src/mu_event.c  .generated_files/flags/default/8f5892b195f2f115b1b76380b434db93373fd97e .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o  -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o third_party/rtos/mulib/sched/src/mu_event.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o: third_party/rtos/mulib/sched/src/mu_periodic.c  .generated_files/flags/default/fa128d96184ab66384980293ec505ed82c109465 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o  -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o third_party/rtos/mulib/sched/src/mu_periodic.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o: third_party/rtos/mulib/sched/src/mu_sched.c  .generated_files/flags/default/61e32b5d50b5c7b4d306ba60b7c5c516731f302e .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o  -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o third_party/rtos/mulib/sched/src/mu_sched.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o: third_party/rtos/mulib/sched/src/mu_spsc.c  .generated_files/flags/default/a28d585393f48b4e20d7b7f13069dc6736f3a141 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o  -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o third_party/rtos/mulib/sched/src/mu_spsc.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o: third_party/rtos/mulib/sched/src/mu_task.c  .generated_files/flags/default/c56db946c5217c08d2e2e1c9f91c6b097983347d .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o  -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o third_party/rtos/mulib/sched/src/mu_task.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o: third_party/rtos/mulib/sched/src/mu_task_list.c  .generated_files/flags/default/45a6cf1d9e21d25dff91ae9a63a85330f2aaab14 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o  -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o third_party/rtos/mulib/sched/src/mu_task_list.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o: third_party/rtos/mulib/string/src/mu_str.c  .generated_files/flags/default/f3a7c533705dfbdc9709459d9ea8a8c0038e0f59 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o  -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o third_party/rtos/mulib/string/src/mu_str.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o: third_party/rtos/mulib/string/src/mu_strbuf.c  .generated_files/flags/default/754080cb7a28a80852767be4ebd9854d6b1b7e77 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o  -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o third_party/rtos/mulib/string/src/mu_strbuf.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o: third_party/rtos/mulib/string/src/mu_stream.c  .generated_files/flags/default/45772cad49cd3bb8aa298ac58e6763893204f573 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o  -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o third_party/rtos/mulib/string/src/mu_stream.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o: third_party/rtos/mulib/string/src/mu_str_utils.c  .generated_files/flags/default/608b0627dfed1d89d7f0b92839a617963ba24db5 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o  -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o third_party/rtos/mulib/string/src/mu_str_utils.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o: third_party/rtos/mulib/utils/src/mu_parse_url.c  .generated_files/flags/default/a377e0b39a5587dbedabc5c4b17a78eb4b97d26b .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/utils/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o  -o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o third_party/rtos/mulib/utils/src/mu_parse_url.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o: third_party/rtos/mulib/utils/src/mu_random.c  .generated_files/flags/default/a1afd34499262b8a20cafc659e855f2b454570 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/utils/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o  -o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o third_party/rtos/mulib/utils/src/mu_random.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/c6f2a9c45ef4871a4a69fc07a739880099083fca .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o  -o ${OBJECTDIR}/main.o main.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/app.o: app.c  .generated_files/flags/default/813468f8c2baba29c2dfb8484d54902ec88969e7 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/app.o.d 
	@${RM} ${OBJECTDIR}/app.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/app.o.d" -MT "${OBJECTDIR}/app.o.d" -MT ${OBJECTDIR}/app.o  -o ${OBJECTDIR}/app.o app.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/i2c_driver.o: i2c_driver.c  .generated_files/flags/default/2e72cb06748fae6260ef1cd7bcba215ee0ab8915 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_driver.o.d 
	@${RM} ${OBJECTDIR}/i2c_driver.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/i2c_driver.o.d" -MT "${OBJECTDIR}/i2c_driver.o.d" -MT ${OBJECTDIR}/i2c_driver.o  -o ${OBJECTDIR}/i2c_driver.o i2c_driver.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/kbhit_task.o: kbhit_task.c  .generated_files/flags/default/fac9ed5889ae1af700a396f604880913f2a261bf .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/kbhit_task.o.d 
	@${RM} ${OBJECTDIR}/kbhit_task.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/kbhit_task.o.d" -MT "${OBJECTDIR}/kbhit_task.o.d" -MT ${OBJECTDIR}/kbhit_task.o  -o ${OBJECTDIR}/kbhit_task.o kbhit_task.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/periodic_task.o: periodic_task.c  .generated_files/flags/default/5b1650102dd8bd28b083a09d20a395a9be20cc06 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/periodic_task.o.d 
	@${RM} ${OBJECTDIR}/periodic_task.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/periodic_task.o.d" -MT "${OBJECTDIR}/periodic_task.o.d" -MT ${OBJECTDIR}/periodic_task.o  -o ${OBJECTDIR}/periodic_task.o periodic_task.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/usart_driver.o: usart_driver.c  .generated_files/flags/default/93c3841aa41833552e66e68c5cb8f768aafe7428 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usart_driver.o.d 
	@${RM} ${OBJECTDIR}/usart_driver.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/usart_driver.o.d" -MT "${OBJECTDIR}/usart_driver.o.d" -MT ${OBJECTDIR}/usart_driver.o  -o ${OBJECTDIR}/usart_driver.o usart_driver.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o: mcc_generated_files/examples/twi0_master_example.c  .generated_files/flags/default/bdc4f8dc9809a2e4bde3adc155d421985cae635c .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/examples" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o  -o ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o mcc_generated_files/examples/twi0_master_example.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/pin_manager.o: mcc_generated_files/src/pin_manager.c  .generated_files/flags/default/4b5d56c31dbe62236cfdaee5f021d21daab0aefe .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o  -o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o mcc_generated_files/src/pin_manager.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/twi0_master.o: mcc_generated_files/src/twi0_master.c  .generated_files/flags/default/3a4a2b6b513b2109c8d5d40e2ecc18b7ef97c9c0 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o  -o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o mcc_generated_files/src/twi0_master.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/usart0.o: mcc_generated_files/src/usart0.c  .generated_files/flags/default/7149696d4ed97b049bded30073a544a171df05b0 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/usart0.o  -o ${OBJECTDIR}/mcc_generated_files/src/usart0.o mcc_generated_files/src/usart0.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/rtc.o: mcc_generated_files/src/rtc.c  .generated_files/flags/default/72aa1e330619542772e0b891b84a361707802a7c .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/rtc.o  -o ${OBJECTDIR}/mcc_generated_files/src/rtc.o mcc_generated_files/src/rtc.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/cpuint.o: mcc_generated_files/src/cpuint.c  .generated_files/flags/default/5eeec366da198a29deb32d619ec691e433ef7f06 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/cpuint.o  -o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o mcc_generated_files/src/cpuint.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/device_config.o: mcc_generated_files/device_config.c  .generated_files/flags/default/ad5adf08a0f9b949c5fd1a1875839df79c2e6787 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT ${OBJECTDIR}/mcc_generated_files/device_config.o  -o ${OBJECTDIR}/mcc_generated_files/device_config.o mcc_generated_files/device_config.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/9e0c247828656562113d639b29975f447f77405b .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/mcc.o  -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o: third_party/rtos/mu_platform/src/mu_rtc.c  .generated_files/flags/default/8dedd0f32ac6080613551bc11ed3710a375ef481 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mu_platform/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o.d" -MT "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o.d" -MT ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o  -o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_rtc.o third_party/rtos/mu_platform/src/mu_rtc.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o: third_party/rtos/mu_platform/src/mu_time.c  .generated_files/flags/default/6fb2f63a70937b01b2f316ff7955ec9d4657a2df .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mu_platform/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o.d" -MT "${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o.d" -MT ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o  -o ${OBJECTDIR}/third_party/rtos/mu_platform/src/mu_time.o third_party/rtos/mu_platform/src/mu_time.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o: third_party/rtos/mulib/collections/src/mu_array.c  .generated_files/flags/default/52f0ecfb9a08790506a9883b1d1dcd5bdd24f89e .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o  -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_array.o third_party/rtos/mulib/collections/src/mu_array.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o: third_party/rtos/mulib/collections/src/mu_bvec.c  .generated_files/flags/default/960c6f3ea807f8c937f8ea4e1f249b7a3a8a90e8 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o  -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_bvec.o third_party/rtos/mulib/collections/src/mu_bvec.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o: third_party/rtos/mulib/collections/src/mu_cirq.c  .generated_files/flags/default/1270ce91e94f45c4aabffff614340cac3768cddc .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o  -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_cirq.o third_party/rtos/mulib/collections/src/mu_cirq.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o: third_party/rtos/mulib/collections/src/mu_dlist.c  .generated_files/flags/default/8b198826a96f1cdd9eca3da520f3ddd28184261 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o  -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_dlist.o third_party/rtos/mulib/collections/src/mu_dlist.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o: third_party/rtos/mulib/collections/src/mu_list.c  .generated_files/flags/default/303d22a3ff3e9859539e8d40679ccda0b9fda114 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o  -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_list.o third_party/rtos/mulib/collections/src/mu_list.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o: third_party/rtos/mulib/collections/src/mu_pstore.c  .generated_files/flags/default/4165dc73d22ff6b6a9466841925e1f97009ef74e .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o  -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_pstore.o third_party/rtos/mulib/collections/src/mu_pstore.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o: third_party/rtos/mulib/collections/src/mu_queue.c  .generated_files/flags/default/b3d64c88b41d688d7153723fa05336452fc9a905 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o  -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_queue.o third_party/rtos/mulib/collections/src/mu_queue.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o: third_party/rtos/mulib/collections/src/mu_vect.c  .generated_files/flags/default/4040d94d4246f3a560002e9ccd0c7fdda474e8b6 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/collections/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o  -o ${OBJECTDIR}/third_party/rtos/mulib/collections/src/mu_vect.o third_party/rtos/mulib/collections/src/mu_vect.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o: third_party/rtos/mulib/log/src/mu_log.c  .generated_files/flags/default/32be793218a36619911aaec1b6d21558886ce18a .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/log/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o  -o ${OBJECTDIR}/third_party/rtos/mulib/log/src/mu_log.o third_party/rtos/mulib/log/src/mu_log.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o: third_party/rtos/mulib/sched/src/mu_access_mgr.c  .generated_files/flags/default/fa9711d847c3cc676955d29795aa4f759135a104 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o  -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_access_mgr.o third_party/rtos/mulib/sched/src/mu_access_mgr.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o: third_party/rtos/mulib/sched/src/mu_event.c  .generated_files/flags/default/15642c47182e3d90ab63866937d3cf07a8c48443 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o  -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_event.o third_party/rtos/mulib/sched/src/mu_event.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o: third_party/rtos/mulib/sched/src/mu_periodic.c  .generated_files/flags/default/e25be1d514eb6adbc8a8bcdd156fe6f8637ab34f .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o  -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_periodic.o third_party/rtos/mulib/sched/src/mu_periodic.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o: third_party/rtos/mulib/sched/src/mu_sched.c  .generated_files/flags/default/9c925292be32d07b3678ea2f962c0f3f1e9355ce .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o  -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_sched.o third_party/rtos/mulib/sched/src/mu_sched.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o: third_party/rtos/mulib/sched/src/mu_spsc.c  .generated_files/flags/default/6147ab372f3f86969dd7ed519b608aa0a19d1ffb .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o  -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_spsc.o third_party/rtos/mulib/sched/src/mu_spsc.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o: third_party/rtos/mulib/sched/src/mu_task.c  .generated_files/flags/default/fb6e84c36f60e4adddc298b364ee440cf59c8e3e .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o  -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task.o third_party/rtos/mulib/sched/src/mu_task.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o: third_party/rtos/mulib/sched/src/mu_task_list.c  .generated_files/flags/default/fe91be8d363ba2ec29b67bc98c2519b90467f55f .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/sched/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o  -o ${OBJECTDIR}/third_party/rtos/mulib/sched/src/mu_task_list.o third_party/rtos/mulib/sched/src/mu_task_list.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o: third_party/rtos/mulib/string/src/mu_str.c  .generated_files/flags/default/9255ea72f47761290b28db3137e9bd0b152971c7 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o  -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str.o third_party/rtos/mulib/string/src/mu_str.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o: third_party/rtos/mulib/string/src/mu_strbuf.c  .generated_files/flags/default/5ddb41dca647dc51895f1d6ae2fc43c2554a1d1f .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o  -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_strbuf.o third_party/rtos/mulib/string/src/mu_strbuf.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o: third_party/rtos/mulib/string/src/mu_stream.c  .generated_files/flags/default/2f078f9f9e6131df7294e3771ed689521bf9d66d .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o  -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_stream.o third_party/rtos/mulib/string/src/mu_stream.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o: third_party/rtos/mulib/string/src/mu_str_utils.c  .generated_files/flags/default/20c1ab3beefa8795343fd2ff0a42f36018a2194d .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/string/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o  -o ${OBJECTDIR}/third_party/rtos/mulib/string/src/mu_str_utils.o third_party/rtos/mulib/string/src/mu_str_utils.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o: third_party/rtos/mulib/utils/src/mu_parse_url.c  .generated_files/flags/default/555fe84398ced440112fbc66f499c7cb7455a53e .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/utils/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o  -o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_parse_url.o third_party/rtos/mulib/utils/src/mu_parse_url.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o: third_party/rtos/mulib/utils/src/mu_random.c  .generated_files/flags/default/9ebd1e44e9d8d9592db8d41609fe1ea5ebd78003 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/third_party/rtos/mulib/utils/src" 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o.d 
	@${RM} ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o.d" -MT "${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o.d" -MT ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o  -o ${OBJECTDIR}/third_party/rtos/mulib/utils/src/mu_random.o third_party/rtos/mulib/utils/src/mu_random.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/623125084abc25f05d6d56c1842338d7761329d4 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o  -o ${OBJECTDIR}/main.o main.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/app.o: app.c  .generated_files/flags/default/862852f3c40373393865febd3c490b373d31c42c .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/app.o.d 
	@${RM} ${OBJECTDIR}/app.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/app.o.d" -MT "${OBJECTDIR}/app.o.d" -MT ${OBJECTDIR}/app.o  -o ${OBJECTDIR}/app.o app.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/i2c_driver.o: i2c_driver.c  .generated_files/flags/default/aac47c4b2d6b20fc119d883f37ff72cdb4c90dd5 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_driver.o.d 
	@${RM} ${OBJECTDIR}/i2c_driver.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/i2c_driver.o.d" -MT "${OBJECTDIR}/i2c_driver.o.d" -MT ${OBJECTDIR}/i2c_driver.o  -o ${OBJECTDIR}/i2c_driver.o i2c_driver.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/kbhit_task.o: kbhit_task.c  .generated_files/flags/default/d99c419ec1a0e857540d068acc25d6b7c4eca109 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/kbhit_task.o.d 
	@${RM} ${OBJECTDIR}/kbhit_task.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/kbhit_task.o.d" -MT "${OBJECTDIR}/kbhit_task.o.d" -MT ${OBJECTDIR}/kbhit_task.o  -o ${OBJECTDIR}/kbhit_task.o kbhit_task.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/periodic_task.o: periodic_task.c  .generated_files/flags/default/c1912c468983618f7c7fa5bd39f810690098f446 .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/periodic_task.o.d 
	@${RM} ${OBJECTDIR}/periodic_task.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/periodic_task.o.d" -MT "${OBJECTDIR}/periodic_task.o.d" -MT ${OBJECTDIR}/periodic_task.o  -o ${OBJECTDIR}/periodic_task.o periodic_task.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/usart_driver.o: usart_driver.c  .generated_files/flags/default/71286f6703c971798273e38a672594ef1caa166f .generated_files/flags/default/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usart_driver.o.d 
	@${RM} ${OBJECTDIR}/usart_driver.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "third_party/rtos/mu_platform/inc" -I "third_party/rtos/mulib/collections/inc" -I "third_party/rtos/mulib/log/inc" -I "third_party/rtos/mulib/sched/inc" -I "third_party/rtos/mulib/string/inc" -I "third_party/rtos/mulib/utils/inc" -Wall -MD -MP -MF "${OBJECTDIR}/usart_driver.o.d" -MT "${OBJECTDIR}/usart_driver.o.d" -MT ${OBJECTDIR}/usart_driver.o  -o ${OBJECTDIR}/usart_driver.o usart_driver.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/rtos_demo_mulib_attiny817.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mmcu=attiny817 ${PACK_COMMON_OPTIONS}   -gdwarf-2 -D__$(MP_PROCESSOR_OPTION)__  -Wl,-Map="${DISTDIR}\rtos_demo_mulib_attiny817.X.${IMAGE_TYPE}.map"    -o ${DISTDIR}/rtos_demo_mulib_attiny817.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1 -Wl,--gc-sections -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	
	
	
	
	
	
else
${DISTDIR}/rtos_demo_mulib_attiny817.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mmcu=attiny817 ${PACK_COMMON_OPTIONS}  -D__$(MP_PROCESSOR_OPTION)__  -Wl,-Map="${DISTDIR}\rtos_demo_mulib_attiny817.X.${IMAGE_TYPE}.map"    -o ${DISTDIR}/rtos_demo_mulib_attiny817.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION) -Wl,--gc-sections -Wl,--start-group  -Wl,-lm -Wl,--end-group 
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
