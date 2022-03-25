void app_task() {
  start_periodic_task();
  start_kbhit_task();
}

void app_step() {
  mu_sched_step();
}

void periodic_task() {
  start_temperature_read();
  await_temperature_read();
  start_eeprom_write();
  await_eeprom_write();
  start_serial_print();
  await_serial_print();
}

void kbhit_task() {
  await_serial_rx();
  start_eeprom_read();
  await_eeprom_read();
  start_serial_print();
  await_serial_print();
}

void temperature_read_task() {
  request_i2c_access();
  start_i2c_read();
  await_i2c_read();
  release_i2c_access();
  notify_caller();
}

void eeprom_write_task() {
  request_i2c_access();
  start_i2c_read();
  await_i2c_read();
  release_i2c_access();
  notify_caller();
}

void eeprom_write_task() {
  request_i2c_access();
  start_i2c_write();
  await_i2c_write();
  release_i2c_access();
  notify_caller();
}

void serial_print_task() {
  request_serial_tx_access();
  start_serial_tx();
  await_serial_tx();
  release_serial_tx_access();
  notify_caller();
}

// file: app_task.h

void APP_Initialize (void);
void APP_Tasks(void);

// file: periodic_task.h

void periodic_task_init(void);
mu_task_t *periodic_task();

// file: kbhit_task.h

void kbhit_task_init(void);
mu_task_t *kbhit_task();

// file: temperature_reader.h

void temperature_reader_init(void);
void temperature_reader_read(int8_t *fahrenheit, mu_task_t *on_completion);

// file: eeprom_io.h

void eeprom_io_init(void);
void eeprom_io_read(int8_t *result, size_t n_bytes, mu_task_t *on_completion);
void eeprom_io_write(int8_t byte, size_t addr, mu_task_t *on_completion);

// file: serial_io.h

void serial_io_init(void);
void serial_io_tx(int8_t *buf, size_t n_bytes, mu_task_t *on_completion);
void serial_io_rx(int8_t *buf, mu_task_t *on_completion);

// file: i2c_access.h

void i2c_access_init(void);
void i2c_access_request(mu_task_t *task);
void i2c_access_release(mu_task_t *task);
bool i2c_access_has_ownership(mu_task_t *task);
