//go:build avr

package setjmp

// AVR 8-bit using picolibc/newlib
// https://github.com/picolibc/picolibc/blob/1.7.9/newlib/libc/include/machine/setjmp.h
const (
	SigjmpBufSize = 48
	JmpBufSize    = 48
)
