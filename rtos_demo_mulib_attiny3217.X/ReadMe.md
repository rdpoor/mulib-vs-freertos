# Overview

## sensor_task

1. Upon iniitalizatio, sets wake_up time to now + 60 seconds
2. Waits for i2c_task to be idle
3. Initiate a read of the temperature sensor (via i2c_task)
4. Waits for i2c_task callback (with temperature fetched)
5. Initiates a write of the temperature to the EEPROM
6. waits for i2c_task callback (completed write to EEPROM)
7. Waits for printer to be idle
8. Initiates a write to the printer.
9. Waits for printer_task callback (completed printing)
10. Schedule wakeup time for wake_at
11. Advance wake_up time by 60 seconds.  Go to 2.

### Platform-specific functions
- none

## printer_task

1. Start in idle state, await call to printer_task_print() to start print
2. Wait for usart tx complete interrupt to advance state
3. call user-supplied callback to advertise completion
4. Return to idle state

### Platform-specific functions:
- Initiate a write of a string.
- Receive an interrupt when last byte is sent to the usart

## ui_task

1. flush serial input, request read for 1 char
2. wait for "received char" interrupt from serial input
3. wait for i2c_task to be idle
4. read 5 bytes from eeprom
5. wait for printer_task to be idle
6. initiate a print of temperature history string
7. go to 1

### Platform-specific functions:
- Clear the serial receive buffer
- Initiate a read of 1 char
- Receive an interrupt when a char is received

## i2c_task

1. Wait for a call to read temp sensor or reead or write eeprom
2. on temperature read request: initiate i2c read for temperature
3. ... await i2c completion interrupt
4. ... convert raw temperature, notify caller, return to 1
5. on eeprom write request: initiate i2c write of 1 byte
6. ... await i2c completion interrupt
7. ... notify caller, return to 1
8. on eeprom read request: initiate i2c read of n bytes
9. ... await i2c completion interrupt
10. ... notify caller, return to 1

### Platform-specific functions
- Initiate a read or write via i2c
- Receive an interrupt when operation completes
