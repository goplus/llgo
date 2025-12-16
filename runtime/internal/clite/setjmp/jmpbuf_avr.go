//go:build avr

package setjmp

// AVR 8-bit using picolibc/newlib
// TODO: confirm size from machine/setjmp.h
const (
	SigjmpBufSize = 200
	JmpBufSize    = 200
)
