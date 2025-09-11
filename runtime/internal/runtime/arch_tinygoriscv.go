//go:build riscv

package runtime

// RISC-V has a maximum alignment of 16 bytes (both for RV32 and for RV64).
// Source: https://riscv.org/wp-content/uploads/2015/01/riscv-calling.pdf
func align(ptr uintptr) uintptr {
	return (ptr + 15) &^ 15
}
