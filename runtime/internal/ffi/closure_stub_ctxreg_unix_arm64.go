//go:build llgo_pass_ctx_by_reg && unix && arm64
// +build llgo_pass_ctx_by_reg,unix,arm64

package ffi

import "unsafe"

const (
	arm64RegSP  = 31
	arm64RegXZR = 31
)

func arm64AlignUp(v, a uint32) uint32 {
	return (v + a - 1) &^ (a - 1)
}

func arm64ADR(rd int, imm int32) uint32 {
	// ADR Xd, #imm (imm is signed 21-bit, byte granularity)
	immlo := uint32(imm) & 0x3
	immhi := (uint32(imm) >> 2) & 0x7ffff
	return 0x10000000 | (immlo << 29) | (immhi << 5) | (uint32(rd) & 0x1f)
}

func arm64LDR64Imm(rt, rn int, offsetBytes uint32) uint32 {
	// LDR Xt, [Xn, #imm] (unsigned immediate, imm scaled by 8)
	imm12 := (offsetBytes / 8) & 0xfff
	return 0xF9400000 | (imm12 << 10) | ((uint32(rn) & 0x1f) << 5) | (uint32(rt) & 0x1f)
}

func arm64STR64Imm(rt, rn int, offsetBytes uint32) uint32 {
	// STR Xt, [Xn, #imm] (unsigned immediate, imm scaled by 8)
	imm12 := (offsetBytes / 8) & 0xfff
	return 0xF9000000 | (imm12 << 10) | ((uint32(rn) & 0x1f) << 5) | (uint32(rt) & 0x1f)
}

func arm64ADDReg(rd, rn, rm int) uint32 {
	// ADD Xd, Xn, Xm, UXTX (shift=0)
	//
	// Note: When Xn is SP, the canonical encoding is the "extended register"
	// form (bit21=1). Using this form unconditionally keeps encodings correct
	// for both SP and non-SP operands.
	const optionUXTX = 3
	return 0x8B200000 | ((uint32(rm) & 0x1f) << 16) | (optionUXTX << 13) | ((uint32(rn) & 0x1f) << 5) | (uint32(rd) & 0x1f)
}

func arm64SUBReg(rd, rn, rm int) uint32 {
	// SUB Xd, Xn, Xm, UXTX (shift=0)
	const optionUXTX = 3
	return 0xCB200000 | ((uint32(rm) & 0x1f) << 16) | (optionUXTX << 13) | ((uint32(rn) & 0x1f) << 5) | (uint32(rd) & 0x1f)
}

func arm64ADDImm(rd, rn int, imm12 uint32) uint32 {
	// ADD Xd, Xn, #imm (shift=0)
	return 0x91000000 | ((imm12 & 0xfff) << 10) | ((uint32(rn) & 0x1f) << 5) | (uint32(rd) & 0x1f)
}

func arm64SUBImm(rd, rn int, imm12 uint32) uint32 {
	// SUB Xd, Xn, #imm (shift=0)
	return 0xD1000000 | ((imm12 & 0xfff) << 10) | ((uint32(rn) & 0x1f) << 5) | (uint32(rd) & 0x1f)
}

func arm64SUBSImm(rd, rn int, imm12 uint32) uint32 {
	// SUBS Xd, Xn, #imm (shift=0)
	return 0xF1000000 | ((imm12 & 0xfff) << 10) | ((uint32(rn) & 0x1f) << 5) | (uint32(rd) & 0x1f)
}

func arm64CBZ(rt int, imm19 int32) uint32 {
	// CBZ Xt, label (imm19 is signed, word offset)
	return 0xB4000000 | ((uint32(imm19) & 0x7ffff) << 5) | (uint32(rt) & 0x1f)
}

func arm64BCond(cond int, imm19 int32) uint32 {
	// B.<cond> label (imm19 is signed, word offset)
	return 0x54000000 | ((uint32(imm19) & 0x7ffff) << 5) | (uint32(cond) & 0xf)
}

func arm64BLR(rn int) uint32 {
	return 0xD63F0000 | ((uint32(rn) & 0x1f) << 5)
}

func makeClosureStub(fn, env unsafe.Pointer, stackBytes uint32) unsafe.Pointer {
	// This stub bridges libffi's C ABI call into llgo's ctx-reg closure ABI.
	//
	// On arm64 the ctx register is x26 (callee-saved), so the stub must:
	// - preserve x26 for the C caller
	// - set x26=env before calling fn
	//
	// Additionally, the stub must not perturb stack-passed arguments.
	// We handle this by allocating a new stack frame of:
	//   frameSize = alignUp(stackBytes, 16) + 16
	// copying stackBytes from the old argument area (at old sp) into the new
	// argument area (at new sp), and saving x26/x30 in the last 16 bytes.
	if stackBytes%8 != 0 {
		return nil
	}
	argBytesAligned := arm64AlignUp(stackBytes, 16)
	frameSize := uint64(argBytesAligned) + 16

	// Instruction sequence (31 insns incl. 1 NOP padding), then 4 literals:
	//   env, fn, stackBytes, frameSize
	const (
		condNE    = 1
		codeInsns = 30 // keep even so literals are 8-byte aligned
		codeSize  = codeInsns * 4
		litSize   = 32
		stubSize  = codeSize + litSize
		litOff    = codeSize
		litEnvOff = litOff + 0
		litFnOff  = litOff + 8
		litSBOff  = litOff + 16
		litFSOff  = litOff + 24
	)

	p := allocExec(stubSize)
	if p == nil {
		return nil
	}

	// Registers used:
	// - x0..x8 are preserved (arguments/hidden sret).
	// - x9..x17 are scratch.
	const (
		x9  = 9
		x10 = 10
		x11 = 11
		x12 = 12
		x13 = 13
		x14 = 14
		x15 = 15
		x16 = 16
		x17 = 17
	)

	var (
		insn        []uint32
		adr1Idx     int
		cbzIdx      int
		loopIdx     int
		bneIdx      int
		copyDoneIdx int
		adr2Idx     int
	)

	emit := func(u uint32) {
		insn = append(insn, u)
	}

	adr1Idx = 0
	emit(0)                          // adr x9, lit (patched later)
	emit(arm64LDR64Imm(x10, x9, 0))  // ldr x10, [x9]        env
	emit(arm64LDR64Imm(x11, x9, 8))  // ldr x11, [x9, #8]    fn
	emit(arm64LDR64Imm(x12, x9, 16)) // ldr x12, [x9, #16]   stackBytes
	emit(arm64LDR64Imm(x13, x9, 24)) // ldr x13, [x9, #24]   frameSize
	emit(arm64SUBReg(arm64RegSP, arm64RegSP, x13))
	emit(arm64ADDReg(x14, arm64RegSP, x13))         // src = old sp
	emit(arm64ADDReg(x15, arm64RegSP, arm64RegXZR)) // dst = new sp
	emit(arm64ADDReg(x16, x12, arm64RegXZR))        // cnt = stackBytes
	cbzIdx = len(insn)
	emit(0) // cbz x16, copy_done (patched later)

	loopIdx = len(insn)
	emit(arm64LDR64Imm(x17, x14, 0)) // ldr x17, [x14]
	emit(arm64STR64Imm(x17, x15, 0)) // str x17, [x15]
	emit(arm64ADDImm(x14, x14, 8))   // add x14, x14, #8
	emit(arm64ADDImm(x15, x15, 8))   // add x15, x15, #8
	emit(arm64SUBSImm(x16, x16, 8))  // subs x16, x16, #8
	bneIdx = len(insn)
	emit(0) // b.ne loop (patched later)

	copyDoneIdx = len(insn)
	emit(arm64SUBImm(x9, x13, 16))          // x9 = frameSize-16 (save area offset)
	emit(arm64ADDReg(x9, arm64RegSP, x9))   // x9 = sp + offset
	emit(arm64STR64Imm(26, x9, 0))          // str x26, [x9]
	emit(arm64STR64Imm(30, x9, 8))          // str x30, [x9,#8]
	emit(arm64ADDReg(26, x10, arm64RegXZR)) // x26 = env
	emit(arm64BLR(x11))                     // blr fn

	adr2Idx = len(insn)
	emit(0)                                        // adr x9, lit (patched later)
	emit(arm64LDR64Imm(x13, x9, 24))               // ldr x13, [x9,#24] frameSize
	emit(arm64SUBImm(x9, x13, 16))                 // x9 = frameSize-16
	emit(arm64ADDReg(x9, arm64RegSP, x9))          // x9 = sp + offset
	emit(arm64LDR64Imm(26, x9, 0))                 // ldr x26, [x9]
	emit(arm64LDR64Imm(30, x9, 8))                 // ldr x30, [x9,#8]
	emit(arm64ADDReg(arm64RegSP, arm64RegSP, x13)) // add sp, sp, frameSize
	emit(0xD65F03C0)                               // ret

	if len(insn) != codeInsns {
		return nil
	}

	// Patch ADRs and branches.
	insn[adr1Idx] = arm64ADR(x9, int32(litOff-adr1Idx*4))
	insn[adr2Idx] = arm64ADR(x9, int32(litOff-adr2Idx*4))
	insn[cbzIdx] = arm64CBZ(x16, int32(copyDoneIdx-cbzIdx))
	insn[bneIdx] = arm64BCond(condNE, int32(loopIdx-bneIdx))

	copy(unsafe.Slice((*uint32)(p), len(insn)), insn)

	*(*uintptr)(unsafe.Add(p, litEnvOff)) = uintptr(env)
	*(*uintptr)(unsafe.Add(p, litFnOff)) = uintptr(fn)
	*(*uint64)(unsafe.Add(p, litSBOff)) = uint64(stackBytes)
	*(*uint64)(unsafe.Add(p, litFSOff)) = frameSize

	clearICache(p, stubSize)
	if !protectExec(p, stubSize) {
		return nil
	}
	clearICache(p, stubSize)
	return p
}
