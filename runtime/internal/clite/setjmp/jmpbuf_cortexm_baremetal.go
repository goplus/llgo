//go:build cortexm

package setjmp

// ARM Cortex-M using picolibc/newlib
// https://github.com/picolibc/picolibc/blob/1.7.9/newlib/libc/include/machine/setjmp.h
const (
	SigjmpBufSize = 160
	JmpBufSize    = 160
)
