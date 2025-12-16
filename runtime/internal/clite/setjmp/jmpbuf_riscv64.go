//go:build tinygo.riscv64

package setjmp

// RISC-V 64-bit using picolibc/newlib
// TODO: confirm size from machine/setjmp.h
const (
	SigjmpBufSize = 200
	JmpBufSize    = 200
)
