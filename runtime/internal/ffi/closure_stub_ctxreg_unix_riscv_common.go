//go:build llgo_pass_ctx_by_reg && unix && (riscv64 || riscv32)
// +build llgo_pass_ctx_by_reg
// +build unix
// +build riscv64 riscv32

package ffi

func rvAlignUp(v, a uint32) uint32 {
	return (v + a - 1) &^ (a - 1)
}

func rvU(opcode uint32, rd int, imm20 int32) uint32 {
	return ((uint32(imm20) & 0xfffff) << 12) | (uint32(rd&0x1f) << 7) | (opcode & 0x7f)
}

func rvI(opcode, funct3 uint32, rd, rs1 int, imm12 int32) uint32 {
	return (uint32(imm12)&0xfff)<<20 | (uint32(rs1&0x1f) << 15) | (funct3&0x7)<<12 | (uint32(rd&0x1f) << 7) | (opcode & 0x7f)
}

func rvR(opcode, funct3, funct7 uint32, rd, rs1, rs2 int) uint32 {
	return (funct7&0x7f)<<25 | (uint32(rs2&0x1f) << 20) | (uint32(rs1&0x1f) << 15) | (funct3&0x7)<<12 | (uint32(rd&0x1f) << 7) | (opcode & 0x7f)
}

func rvS(opcode, funct3 uint32, rs1, rs2 int, imm12 int32) uint32 {
	imm := uint32(imm12) & 0xfff
	immhi := (imm >> 5) & 0x7f
	immlo := imm & 0x1f
	return immhi<<25 | (uint32(rs2&0x1f) << 20) | (uint32(rs1&0x1f) << 15) | (funct3&0x7)<<12 | immlo<<7 | (opcode & 0x7f)
}

func rvB(opcode, funct3 uint32, rs1, rs2 int, imm13 int32) uint32 {
	imm := uint32(imm13) & 0x1fff
	bit12 := (imm >> 12) & 1
	bit11 := (imm >> 11) & 1
	bits10_5 := (imm >> 5) & 0x3f
	bits4_1 := (imm >> 1) & 0xf
	return bit12<<31 | bits10_5<<25 | (uint32(rs2&0x1f) << 20) | (uint32(rs1&0x1f) << 15) | (funct3&0x7)<<12 | bits4_1<<8 | bit11<<7 | (opcode & 0x7f)
}

func rvPcrelHiLo(off int32) (hi int32, lo int32) {
	// RISC-V psABI: hi is rounded so that lo is in [-2048,2047].
	hi = (off + 0x800) >> 12
	lo = off - (hi << 12)
	return
}
