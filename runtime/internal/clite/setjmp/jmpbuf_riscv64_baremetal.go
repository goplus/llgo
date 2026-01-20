//go:build tinygo.riscv64

package setjmp

// RISC-V 64-bit using picolibc/newlib
// https://github.com/picolibc/picolibc/blob/1.7.9/newlib/libc/include/machine/setjmp.h
const (
	SigjmpBufSize = 208
	JmpBufSize    = 208
)
