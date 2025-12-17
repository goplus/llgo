//go:build xtensa

package setjmp

// Xtensa (ESP32/ESP8266) using picolibc/newlib
// _JBLEN = 17, _JBTYPE = int (default), Windowed ABI covers both ESP32 and ESP8266
// https://github.com/picolibc/picolibc/blob/1.7.9/newlib/libc/include/machine/setjmp.h
const (
	SigjmpBufSize = 17 * 4 // 17 * sizeof(int)
	JmpBufSize    = 17 * 4 // 17 * sizeof(int)
)
