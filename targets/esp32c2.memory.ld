# See "System Structure and Address Mapping" figure at
# https://www.espressif.com/sites/default/files/documentation/esp8684_technical_reference_manual_en.pdf

ICACHE_SIZE = 0x4000;
# Skip possible ICACHE area
IRAM_START_ADDRESS = 0x4037C000 + ICACHE_SIZE;
IRAM_LEN = 0x40000 - ICACHE_SIZE;

DRAM_START_ADDRESS = 0x3FCA0000;
DRAM_LEN = 0x40000;

# Docs say that:
# The default console baud rate on ESP32-C2:
#  - 115200 when a 40 MHz XTAL is used
#  - 74880 when a 26 MHz XTAL is used
#
# It seems something wrong with CPU_FREQUENCY and UART0_BAUD definitions,
# but UART0_CLKDIV_VAL == 173 gives expected baud rate 74880 on 26 MHz XTAL.
CPU_FREQUENCY = 20000000;
UART0_BAUD = 115200;

UART0_CLKDIV_REG = 0x60000014;
UART0_CLKDIV_VAL = CPU_FREQUENCY / UART0_BAUD;
UART0_STATUS = 0x6000001C;
UART0_TX_ADDR = 0x60000000;

MEMORY
{
  iram_seg  (RX) : org = IRAM_START_ADDRESS, len = IRAM_LEN
  dram_seg  (RW) : org = DRAM_START_ADDRESS, len = DRAM_LEN
}

INCLUDE "targets/esp32-riscv.app.elf.ld";
