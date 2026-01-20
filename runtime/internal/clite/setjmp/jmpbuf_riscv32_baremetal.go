//go:build tinygo.riscv32

package setjmp

// RISC-V 32-bit using picolibc/newlib
// https://github.com/picolibc/picolibc/blob/1.7.9/newlib/libc/include/machine/setjmp.h
const (
	SigjmpBufSize = 304
	JmpBufSize    = 304
)
