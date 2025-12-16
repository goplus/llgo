//go:build tinygo.riscv32

package setjmp

// RISC-V 32-bit using picolibc/newlib
// TODO: confirm size from machine/setjmp.h
const (
	SigjmpBufSize = 200
	JmpBufSize    = 200
)
