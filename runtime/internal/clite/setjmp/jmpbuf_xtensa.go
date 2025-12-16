//go:build xtensa

package setjmp

// Xtensa (ESP32/ESP8266) using picolibc/newlib
// TODO: confirm size from machine/setjmp.h
const (
	SigjmpBufSize = 200
	JmpBufSize    = 200
)
