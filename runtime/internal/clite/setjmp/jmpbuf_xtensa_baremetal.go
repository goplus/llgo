//go:build xtensa

package setjmp

// Xtensa (ESP32/ESP8266) using newlib
// Windowed ABI: _JBLEN=17, jmp_buf size = 17*4 = 68 bytes
// https://github.com/goplus/newlib/blob/175b2083b1309fd2bfe31dfdc3f33fddfd159a09/newlib/libc/include/machine/setjmp.h
const (
	SigjmpBufSize = 68
	JmpBufSize    = 68
)
