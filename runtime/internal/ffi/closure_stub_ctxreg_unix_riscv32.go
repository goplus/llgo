//go:build llgo_pass_ctx_by_reg && unix && riscv32
// +build llgo_pass_ctx_by_reg,unix,riscv32

package ffi

import "unsafe"

func makeClosureStub(fn, env unsafe.Pointer, stackBytes uint32) unsafe.Pointer {
	// riscv32 ctx-reg is x27 (s11, callee-saved).
	//
	// We copy stack arguments (word by word) into a new frame to avoid
	// perturbing the callee's view of stack-passed arguments.
	if stackBytes%4 != 0 {
		return nil
	}
	argBytesAligned := rvAlignUp(stackBytes, 16)
	frameSize := uint32(argBytesAligned) + 16

	const (
		opAUIPC = 0x17
		opLOAD  = 0x03
		opSTORE = 0x23
		opIMM   = 0x13
		opOP    = 0x33
		opBR    = 0x63
		opJALR  = 0x67

		f3ADD_SUB = 0x0
		f7ADD     = 0x00
		f7SUB     = 0x20

		f3LW = 0x2
		f3SW = 0x2

		f3BEQ = 0x0
		f3BNE = 0x1

		ra = 1
		sp = 2
		x0 = 0

		s11 = 27
		t0  = 5
		t1  = 6
		t2  = 7
		t3  = 28
		t4  = 29
		t5  = 30
		t6  = 31

		nop = 0x00000013 // addi x0, x0, 0

		codeInsns = 30 // keep even for aligned literals
		codeSize  = codeInsns * 4
		litSize   = 16
		stubSize  = codeSize + litSize
		litOff    = codeSize
	)

	p := allocExec(stubSize)
	if p == nil {
		return nil
	}

	insn := make([]uint32, 0, codeInsns)
	emit := func(u uint32) { insn = append(insn, u) }

	auipc1Idx := 0
	emit(0) // auipc t0, hi (patched)
	emit(0) // lw t1, lo(t0) env
	emit(0) // lw t2, lo+4(t0) fn
	emit(0) // lw t3, lo+8(t0) stackBytes
	emit(0) // lw t4, lo+12(t0) frameSize

	emit(rvR(opOP, f3ADD_SUB, f7SUB, sp, sp, t4)) // sub sp, sp, t4
	emit(rvR(opOP, f3ADD_SUB, f7ADD, t5, sp, t4)) // add t5, sp, t4 (src=old sp)
	emit(rvI(opIMM, 0, t6, sp, 0))                // addi t6, sp, 0 (dst=new sp)
	beqzIdx := len(insn)
	emit(0) // beq t3, x0, copy_done

	loopIdx := len(insn)
	emit(rvI(opLOAD, f3LW, t0, t5, 0))  // lw t0, 0(t5)
	emit(rvS(opSTORE, f3SW, t6, t0, 0)) // sw t0, 0(t6)
	emit(rvI(opIMM, 0, t5, t5, 4))      // addi t5, t5, 4
	emit(rvI(opIMM, 0, t6, t6, 4))      // addi t6, t6, 4
	emit(rvI(opIMM, 0, t3, t3, -4))     // addi t3, t3, -4
	bnezIdx := len(insn)
	emit(0) // bne t3, x0, loop

	copyDoneIdx := len(insn)
	emit(rvI(opIMM, 0, t0, t4, -16))              // addi t0, t4, -16
	emit(rvR(opOP, f3ADD_SUB, f7ADD, t0, sp, t0)) // add t0, sp, t0
	emit(rvS(opSTORE, f3SW, t0, s11, 0))          // sw s11, 0(t0)
	emit(rvS(opSTORE, f3SW, t0, ra, 4))           // sw ra, 4(t0)
	emit(rvI(opIMM, 0, s11, t1, 0))               // addi s11, t1, 0
	emit(rvI(opJALR, 0, ra, t2, 0))               // jalr ra, 0(t2)

	auipc2Idx := len(insn)
	emit(0)                                       // auipc t0, hi (patched)
	emit(0)                                       // lw t4, lo+12(t0) frameSize
	emit(rvI(opIMM, 0, t0, t4, -16))              // addi t0, t4, -16
	emit(rvR(opOP, f3ADD_SUB, f7ADD, t0, sp, t0)) // add t0, sp, t0
	emit(rvI(opLOAD, f3LW, s11, t0, 0))           // lw s11, 0(t0)
	emit(rvI(opLOAD, f3LW, ra, t0, 4))            // lw ra, 4(t0)
	emit(rvR(opOP, f3ADD_SUB, f7ADD, sp, sp, t4)) // add sp, sp, t4
	emit(rvI(opJALR, 0, x0, ra, 0))               // ret

	emit(nop)
	if len(insn) != codeInsns {
		return nil
	}

	off1 := int32(litOff - auipc1Idx*4)
	hi1, lo1 := rvPcrelHiLo(off1)
	insn[auipc1Idx] = rvU(opAUIPC, t0, hi1)
	insn[auipc1Idx+1] = rvI(opLOAD, f3LW, t1, t0, lo1+0)
	insn[auipc1Idx+2] = rvI(opLOAD, f3LW, t2, t0, lo1+4)
	insn[auipc1Idx+3] = rvI(opLOAD, f3LW, t3, t0, lo1+8)
	insn[auipc1Idx+4] = rvI(opLOAD, f3LW, t4, t0, lo1+12)

	off2 := int32(litOff - auipc2Idx*4)
	hi2, lo2 := rvPcrelHiLo(off2)
	insn[auipc2Idx] = rvU(opAUIPC, t0, hi2)
	insn[auipc2Idx+1] = rvI(opLOAD, f3LW, t4, t0, lo2+12)

	beqOff := int32((copyDoneIdx - beqzIdx) * 4)
	insn[beqzIdx] = rvB(opBR, f3BEQ, t3, x0, beqOff)
	bneOff := int32((loopIdx - bnezIdx) * 4)
	insn[bnezIdx] = rvB(opBR, f3BNE, t3, x0, bneOff)

	copy(unsafe.Slice((*uint32)(p), len(insn)), insn)

	*(*uint32)(unsafe.Add(p, litOff+0)) = uint32(uintptr(env))
	*(*uint32)(unsafe.Add(p, litOff+4)) = uint32(uintptr(fn))
	*(*uint32)(unsafe.Add(p, litOff+8)) = stackBytes
	*(*uint32)(unsafe.Add(p, litOff+12)) = frameSize

	clearICache(p, stubSize)
	if !protectExec(p, stubSize) {
		return nil
	}
	clearICache(p, stubSize)
	return p
}
