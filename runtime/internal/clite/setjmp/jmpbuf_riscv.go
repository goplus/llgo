//go:build tinygo.riscv && !tinygo.riscv32 && !tinygo.riscv64

package setjmp

// Generic RISC-V (fallback when 32/64 not specified)
// TODO: confirm size from machine/setjmp.h
const (
	SigjmpBufSize = 200
	JmpBufSize    = 200
)
