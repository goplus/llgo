//go:build cortexm

package setjmp

// ARM Cortex-M using picolibc/newlib
// TODO: confirm size from machine/setjmp.h
const (
	SigjmpBufSize = 200
	JmpBufSize    = 200
)
