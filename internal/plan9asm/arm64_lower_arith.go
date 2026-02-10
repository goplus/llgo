package plan9asm

import "fmt"

func (c *arm64Ctx) lowerArith(op Op, ins Instr) (ok bool, terminated bool, err error) {
	switch op {
	case "MRS":
		// MRS <sysreg>, Rn
		if len(ins.Args) != 2 || ins.Args[0].Kind != OpIdent || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("arm64 MRS expects ident, reg: %q", ins.Raw)
		}
		sysreg := arm64CanonicalSysReg(ins.Args[0].Ident)
		dst := ins.Args[1].Reg
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = call i64 asm sideeffect %q, %q()\n", t, "mrs $0, "+sysreg, "=r,~{memory}")
		return true, false, c.storeReg(dst, "%"+t)

	case "MSR":
		// MSR src, <sysreg>
		if len(ins.Args) != 2 || ins.Args[1].Kind != OpIdent {
			return true, false, fmt.Errorf("arm64 MSR expects src, ident: %q", ins.Raw)
		}
		sysreg := arm64CanonicalSysReg(ins.Args[1].Ident)
		switch ins.Args[0].Kind {
		case OpImm:
			imm := ins.Args[0].Imm
			// Route immediates through a GPR so both ordinary sysregs and aliases
			// (e.g. DIT) compile on LLVM's inline asm parser.
			fmt.Fprintf(c.b, "  call void asm sideeffect %q, %q(i64 %d)\n", "msr "+sysreg+", $0", "r,~{memory}", imm)
			return true, false, nil
		case OpReg:
			v, err := c.loadReg(ins.Args[0].Reg)
			if err != nil {
				return true, false, err
			}
			fmt.Fprintf(c.b, "  call void asm sideeffect %q, %q(i64 %s)\n", "msr "+sysreg+", $0", "r,~{memory}", v)
			return true, false, nil
		default:
			return true, false, fmt.Errorf("arm64 MSR unsupported src operand: %q", ins.Raw)
		}

	case "UBFX":
		// UBFX $lsb, srcReg, $width, dstReg
		if len(ins.Args) != 4 ||
			ins.Args[0].Kind != OpImm ||
			ins.Args[1].Kind != OpReg ||
			ins.Args[2].Kind != OpImm ||
			ins.Args[3].Kind != OpReg {
			return true, false, fmt.Errorf("arm64 UBFX expects $lsb, srcReg, $width, dstReg: %q", ins.Raw)
		}
		lsb := ins.Args[0].Imm
		width := ins.Args[2].Imm
		if lsb < 0 || width <= 0 || width > 64 || lsb > 63 || lsb+width > 64 {
			return true, false, fmt.Errorf("arm64 UBFX invalid range lsb=%d width=%d: %q", lsb, width, ins.Raw)
		}
		src, err := c.loadReg(ins.Args[1].Reg)
		if err != nil {
			return true, false, err
		}
		sh := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = lshr i64 %s, %d\n", sh, src, lsb)
		mask := int64(-1)
		if width < 64 {
			mask = (int64(1) << width) - 1
		}
		out := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = and i64 %%%s, %d\n", out, sh, mask)
		return true, false, c.storeReg(ins.Args[3].Reg, "%"+out)

	case "ADD", "SUB", "ADDS":
		if len(ins.Args) != 2 && len(ins.Args) != 3 {
			return true, false, fmt.Errorf("arm64 %s expects 2 or 3 operands: %q", op, ins.Raw)
		}
		var a, bval string
		var dst Reg
		if len(ins.Args) == 2 {
			a, err = c.eval64(ins.Args[0], false)
			if err != nil {
				return true, false, err
			}
			if ins.Args[1].Kind != OpReg {
				return true, false, fmt.Errorf("arm64 %s dst must be reg: %q", op, ins.Raw)
			}
			dst = ins.Args[1].Reg
			bval, err = c.loadReg(dst)
			if err != nil {
				return true, false, err
			}
		} else {
			a, err = c.eval64(ins.Args[0], false)
			if err != nil {
				return true, false, err
			}
			bval, err = c.eval64(ins.Args[1], false)
			if err != nil {
				return true, false, err
			}
			if ins.Args[2].Kind != OpReg {
				return true, false, fmt.Errorf("arm64 %s dst must be reg: %q", op, ins.Raw)
			}
			dst = ins.Args[2].Reg
		}
		t := c.newTmp()
		if op == "ADD" || op == "ADDS" {
			fmt.Fprintf(c.b, "  %%%s = add i64 %s, %s\n", t, bval, a)
		} else {
			fmt.Fprintf(c.b, "  %%%s = sub i64 %s, %s\n", t, bval, a)
		}
		if err := c.storeReg(dst, "%"+t); err != nil {
			return true, false, err
		}
		if op == "ADDS" {
			c.setFlagsAdd(bval, a, "%"+t)
		}
		return true, false, nil

	case "ADDW":
		if len(ins.Args) != 2 && len(ins.Args) != 3 {
			return true, false, fmt.Errorf("arm64 ADDW expects 2 or 3 operands: %q", ins.Raw)
		}
		var a, bval string
		var dst Reg
		if len(ins.Args) == 2 {
			a, err = c.eval64(ins.Args[0], false)
			if err != nil {
				return true, false, err
			}
			if ins.Args[1].Kind != OpReg {
				return true, false, fmt.Errorf("arm64 ADDW dst must be reg: %q", ins.Raw)
			}
			dst = ins.Args[1].Reg
			bval, err = c.loadReg(dst)
			if err != nil {
				return true, false, err
			}
		} else {
			a, err = c.eval64(ins.Args[0], false)
			if err != nil {
				return true, false, err
			}
			bval, err = c.eval64(ins.Args[1], false)
			if err != nil {
				return true, false, err
			}
			if ins.Args[2].Kind != OpReg {
				return true, false, fmt.Errorf("arm64 ADDW dst must be reg: %q", ins.Raw)
			}
			dst = ins.Args[2].Reg
		}
		ta := c.newTmp()
		tb := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", ta, a)
		fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", tb, bval)
		sum := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = add i32 %%%s, %%%s\n", sum, tb, ta)
		z := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i32 %%%s to i64\n", z, sum)
		return true, false, c.storeReg(dst, "%"+z)

	case "AND", "ANDS", "EOR", "ORR", "ANDW", "EORW", "ORRW":
		if len(ins.Args) != 2 && len(ins.Args) != 3 {
			return true, false, fmt.Errorf("arm64 %s expects 2 or 3 operands: %q", op, ins.Raw)
		}
		var a, bval string
		var dst Reg
		if len(ins.Args) == 2 {
			a, err = c.eval64(ins.Args[0], false)
			if err != nil {
				return true, false, err
			}
			if ins.Args[1].Kind != OpReg {
				return true, false, fmt.Errorf("arm64 %s dst must be reg: %q", op, ins.Raw)
			}
			dst = ins.Args[1].Reg
			bval, err = c.loadReg(dst)
			if err != nil {
				return true, false, err
			}
		} else {
			a, err = c.eval64(ins.Args[0], false)
			if err != nil {
				return true, false, err
			}
			bval, err = c.eval64(ins.Args[1], false)
			if err != nil {
				return true, false, err
			}
			if ins.Args[2].Kind != OpReg {
				return true, false, fmt.Errorf("arm64 %s dst must be reg: %q", op, ins.Raw)
			}
			dst = ins.Args[2].Reg
		}
		isWord := op == "ANDW" || op == "EORW" || op == "ORRW"
		t := c.newTmp()
		if isWord {
			aw := c.newTmp()
			bw := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", aw, a)
			fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", bw, bval)
			switch op {
			case "ANDW":
				fmt.Fprintf(c.b, "  %%%s = and i32 %%%s, %%%s\n", t, bw, aw)
			case "EORW":
				fmt.Fprintf(c.b, "  %%%s = xor i32 %%%s, %%%s\n", t, bw, aw)
			case "ORRW":
				fmt.Fprintf(c.b, "  %%%s = or i32 %%%s, %%%s\n", t, bw, aw)
			}
			z := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = zext i32 %%%s to i64\n", z, t)
			if err := c.storeReg(dst, "%"+z); err != nil {
				return true, false, err
			}
			return true, false, nil
		}
		switch op {
		case "AND", "ANDS":
			fmt.Fprintf(c.b, "  %%%s = and i64 %s, %s\n", t, bval, a)
		case "EOR":
			fmt.Fprintf(c.b, "  %%%s = xor i64 %s, %s\n", t, bval, a)
		case "ORR":
			fmt.Fprintf(c.b, "  %%%s = or i64 %s, %s\n", t, bval, a)
		}
		if err := c.storeReg(dst, "%"+t); err != nil {
			return true, false, err
		}
		if op == "ANDS" {
			c.setFlagsLogic("%" + t)
		}
		return true, false, nil

	case "SUBS":
		if len(ins.Args) != 2 && len(ins.Args) != 3 {
			return true, false, fmt.Errorf("arm64 SUBS expects 2 or 3 operands: %q", ins.Raw)
		}
		var a, bval string
		var dst Reg
		if len(ins.Args) == 2 {
			a, err = c.eval64(ins.Args[0], false)
			if err != nil {
				return true, false, err
			}
			if ins.Args[1].Kind != OpReg {
				return true, false, fmt.Errorf("arm64 SUBS dst must be reg: %q", ins.Raw)
			}
			dst = ins.Args[1].Reg
			bval, err = c.loadReg(dst)
			if err != nil {
				return true, false, err
			}
		} else {
			a, err = c.eval64(ins.Args[0], false)
			if err != nil {
				return true, false, err
			}
			bval, err = c.eval64(ins.Args[1], false)
			if err != nil {
				return true, false, err
			}
			if ins.Args[2].Kind != OpReg {
				return true, false, fmt.Errorf("arm64 SUBS dst must be reg: %q", ins.Raw)
			}
			dst = ins.Args[2].Reg
		}
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = sub i64 %s, %s\n", t, bval, a)
		if err := c.storeReg(dst, "%"+t); err != nil {
			return true, false, err
		}
		c.setFlagsSub(bval, a, "%"+t)
		return true, false, nil

	case "BIC":
		// BIC src, src2, dst => dst = src2 & ~src
		if len(ins.Args) != 3 || ins.Args[2].Kind != OpReg {
			return true, false, fmt.Errorf("arm64 BIC expects 3 operands ending with reg: %q", ins.Raw)
		}
		src, err := c.eval64(ins.Args[0], false)
		if err != nil {
			return true, false, err
		}
		src2, err := c.eval64(ins.Args[1], false)
		if err != nil {
			return true, false, err
		}
		nt := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = xor i64 %s, -1\n", nt, src)
		at := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = and i64 %s, %%%s\n", at, src2, nt)
		return true, false, c.storeReg(ins.Args[2].Reg, "%"+at)

	case "BICW":
		// BICW src, src2, dst => dst = src2 & ~src (32-bit, zero-extended)
		if len(ins.Args) != 3 || ins.Args[2].Kind != OpReg {
			return true, false, fmt.Errorf("arm64 BICW expects 3 operands ending with reg: %q", ins.Raw)
		}
		src, err := c.eval64(ins.Args[0], false)
		if err != nil {
			return true, false, err
		}
		src2, err := c.eval64(ins.Args[1], false)
		if err != nil {
			return true, false, err
		}
		sw := c.newTmp()
		s2w := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", sw, src)
		fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", s2w, src2)
		nt := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = xor i32 %%%s, -1\n", nt, sw)
		at := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = and i32 %%%s, %%%s\n", at, s2w, nt)
		z := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i32 %%%s to i64\n", z, at)
		return true, false, c.storeReg(ins.Args[2].Reg, "%"+z)

	case "MVN":
		// MVN src, dst => dst = ~src
		if len(ins.Args) != 2 || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("arm64 MVN expects src, dstReg: %q", ins.Raw)
		}
		src, err := c.eval64(ins.Args[0], false)
		if err != nil {
			return true, false, err
		}
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = xor i64 %s, -1\n", t, src)
		return true, false, c.storeReg(ins.Args[1].Reg, "%"+t)

	case "MVNW":
		// MVNW src, dst => dst = ~src (32-bit, zero-extended)
		if len(ins.Args) != 2 || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("arm64 MVNW expects src, dstReg: %q", ins.Raw)
		}
		src, err := c.eval64(ins.Args[0], false)
		if err != nil {
			return true, false, err
		}
		sw := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", sw, src)
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = xor i32 %%%s, -1\n", t, sw)
		z := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i32 %%%s to i64\n", z, t)
		return true, false, c.storeReg(ins.Args[1].Reg, "%"+z)

	case "CRC32B", "CRC32H", "CRC32W", "CRC32X", "CRC32CB", "CRC32CH", "CRC32CW", "CRC32CX":
		// CRC32{B,H,W,X} srcReg, dstReg
		// CRC32C{B,H,W,X} srcReg, dstReg
		// Semantics: dst = crc32(dst, src)
		if len(ins.Args) != 2 || ins.Args[0].Kind != OpReg || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("arm64 %s expects reg, reg: %q", op, ins.Raw)
		}
		src64, err := c.loadReg(ins.Args[0].Reg)
		if err != nil {
			return true, false, err
		}
		dstReg := ins.Args[1].Reg
		crc64, err := c.loadReg(dstReg)
		if err != nil {
			return true, false, err
		}
		crc32t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", crc32t, crc64)

		intr := ""
		dataTy := ""
		dataVal := ""
		switch op {
		case "CRC32B":
			intr = "llvm.aarch64.crc32b"
			tb := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i8\n", tb, src64)
			zb := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = zext i8 %%%s to i32\n", zb, tb)
			dataTy, dataVal = "i32", "%"+zb
		case "CRC32H":
			intr = "llvm.aarch64.crc32h"
			th := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i16\n", th, src64)
			zh := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = zext i16 %%%s to i32\n", zh, th)
			dataTy, dataVal = "i32", "%"+zh
		case "CRC32W":
			intr = "llvm.aarch64.crc32w"
			tw := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", tw, src64)
			dataTy, dataVal = "i32", "%"+tw
		case "CRC32X":
			intr = "llvm.aarch64.crc32x"
			dataTy, dataVal = "i64", src64
		case "CRC32CB":
			intr = "llvm.aarch64.crc32cb"
			tb := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i8\n", tb, src64)
			zb := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = zext i8 %%%s to i32\n", zb, tb)
			dataTy, dataVal = "i32", "%"+zb
		case "CRC32CH":
			intr = "llvm.aarch64.crc32ch"
			th := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i16\n", th, src64)
			zh := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = zext i16 %%%s to i32\n", zh, th)
			dataTy, dataVal = "i32", "%"+zh
		case "CRC32CW":
			intr = "llvm.aarch64.crc32cw"
			tw := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", tw, src64)
			dataTy, dataVal = "i32", "%"+tw
		case "CRC32CX":
			intr = "llvm.aarch64.crc32cx"
			dataTy, dataVal = "i64", src64
		}
		if intr == "" || dataTy == "" || dataVal == "" {
			return true, false, fmt.Errorf("arm64 %s: missing intrinsic mapping", op)
		}
		rt := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = call i32 @%s(i32 %%%s, %s %s)\n", rt, intr, crc32t, dataTy, dataVal)
		z := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i32 %%%s to i64\n", z, rt)
		return true, false, c.storeReg(dstReg, "%"+z)

	case "CMP", "CMPW":
		if len(ins.Args) != 2 {
			return true, false, fmt.Errorf("arm64 %s expects 2 operands: %q", op, ins.Raw)
		}
		src, err := c.eval64(ins.Args[0], false)
		if err != nil {
			return true, false, err
		}
		dst, err := c.eval64(ins.Args[1], false)
		if err != nil {
			return true, false, err
		}
		_ = op // CMPW is treated the same as CMP for now.
		rt := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = sub i64 %s, %s\n", rt, dst, src)
		c.setFlagsSub(dst, src, "%"+rt)
		return true, false, nil

	case "CMN":
		if len(ins.Args) != 2 {
			return true, false, fmt.Errorf("arm64 CMN expects 2 operands: %q", ins.Raw)
		}
		src, err := c.eval64(ins.Args[0], false)
		if err != nil {
			return true, false, err
		}
		dst, err := c.eval64(ins.Args[1], false)
		if err != nil {
			return true, false, err
		}
		rt := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = add i64 %s, %s\n", rt, dst, src)
		c.setFlagsAdd(dst, src, "%"+rt)
		return true, false, nil

	case "NEG":
		// NEG src, dst => dst = -src
		if len(ins.Args) != 2 || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("arm64 NEG expects src, dstReg: %q", ins.Raw)
		}
		src, err := c.eval64(ins.Args[0], false)
		if err != nil {
			return true, false, err
		}
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = sub i64 0, %s\n", t, src)
		return true, false, c.storeReg(ins.Args[1].Reg, "%"+t)

	case "LSL", "LSR":
		// LSL/LSR $imm|reg, srcReg, dstReg
		if len(ins.Args) != 3 || ins.Args[1].Kind != OpReg || ins.Args[2].Kind != OpReg {
			return true, false, fmt.Errorf("arm64 %s expects shift, srcReg, dstReg: %q", op, ins.Raw)
		}
		src, err := c.loadReg(ins.Args[1].Reg)
		if err != nil {
			return true, false, err
		}
		shv := ""
		switch ins.Args[0].Kind {
		case OpImm:
			shv = c.imm64(ins.Args[0].Imm)
		case OpReg:
			shv, err = c.loadReg(ins.Args[0].Reg)
			if err != nil {
				return true, false, err
			}
			// AArch64 masks register shift amounts; LLVM shifts are poison for >= bitwidth.
			m := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = and i64 %s, 63\n", m, shv)
			shv = "%" + m
		default:
			return true, false, fmt.Errorf("arm64 %s unsupported shift operand: %q", op, ins.Raw)
		}
		t := c.newTmp()
		if op == "LSL" {
			fmt.Fprintf(c.b, "  %%%s = shl i64 %s, %s\n", t, src, shv)
		} else {
			fmt.Fprintf(c.b, "  %%%s = lshr i64 %s, %s\n", t, src, shv)
		}
		return true, false, c.storeReg(ins.Args[2].Reg, "%"+t)

	case "RORW":
		// RORW shift, dstReg  or  RORW shift, srcReg, dstReg
		if len(ins.Args) != 2 && len(ins.Args) != 3 {
			return true, false, fmt.Errorf("arm64 RORW expects 2 or 3 operands: %q", ins.Raw)
		}
		var srcReg Reg
		var dstReg Reg
		var sh Operand
		if len(ins.Args) == 2 {
			sh = ins.Args[0]
			if ins.Args[1].Kind != OpReg {
				return true, false, fmt.Errorf("arm64 RORW expects shift, dstReg: %q", ins.Raw)
			}
			srcReg = ins.Args[1].Reg
			dstReg = ins.Args[1].Reg
		} else {
			sh = ins.Args[0]
			if ins.Args[1].Kind != OpReg || ins.Args[2].Kind != OpReg {
				return true, false, fmt.Errorf("arm64 RORW expects shift, srcReg, dstReg: %q", ins.Raw)
			}
			srcReg = ins.Args[1].Reg
			dstReg = ins.Args[2].Reg
		}
		src64, err := c.loadReg(srcReg)
		if err != nil {
			return true, false, err
		}
		src32 := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", src32, src64)
		sh32 := ""
		switch sh.Kind {
		case OpImm:
			sh32 = fmt.Sprintf("%d", int64(uint32(sh.Imm)&31))
		case OpReg:
			sv, err := c.loadReg(sh.Reg)
			if err != nil {
				return true, false, err
			}
			st := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", st, sv)
			m := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = and i32 %%%s, 31\n", m, st)
			sh32 = "%" + m
		default:
			return true, false, fmt.Errorf("arm64 RORW unsupported shift operand: %q", ins.Raw)
		}
		neg := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = sub i32 32, %s\n", neg, sh32)
		nm := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = and i32 %%%s, 31\n", nm, neg)
		r := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = lshr i32 %%%s, %s\n", r, src32, sh32)
		l := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = shl i32 %%%s, %%%s\n", l, src32, nm)
		o := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = or i32 %%%s, %%%s\n", o, r, l)
		z := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i32 %%%s to i64\n", z, o)
		return true, false, c.storeReg(dstReg, "%"+z)

	case "RBIT":
		if len(ins.Args) != 2 || ins.Args[0].Kind != OpReg || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("arm64 RBIT expects reg, reg: %q", ins.Raw)
		}
		src, err := c.loadReg(ins.Args[0].Reg)
		if err != nil {
			return true, false, err
		}
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = call i64 @llvm.bitreverse.i64(i64 %s)\n", t, src)
		return true, false, c.storeReg(ins.Args[1].Reg, "%"+t)

	case "CLZ":
		if len(ins.Args) != 2 || ins.Args[0].Kind != OpReg || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("arm64 CLZ expects reg, reg: %q", ins.Raw)
		}
		src, err := c.loadReg(ins.Args[0].Reg)
		if err != nil {
			return true, false, err
		}
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = call i64 @llvm.ctlz.i64(i64 %s, i1 false)\n", t, src)
		return true, false, c.storeReg(ins.Args[1].Reg, "%"+t)

	case "REV":
		// REV src, dst (bswap)
		if len(ins.Args) != 2 || ins.Args[0].Kind != OpReg || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("arm64 REV expects reg, reg: %q", ins.Raw)
		}
		src, err := c.loadReg(ins.Args[0].Reg)
		if err != nil {
			return true, false, err
		}
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = call i64 @llvm.bswap.i64(i64 %s)\n", t, src)
		return true, false, c.storeReg(ins.Args[1].Reg, "%"+t)
	}
	return false, false, nil
}

func arm64CanonicalSysReg(name string) string {
	switch name {
	case "DIT":
		// LLVM inline-asm parser on current toolchains does not accept the DIT
		// alias directly; use its canonical system-register encoding name.
		return "S3_3_C4_C2_5"
	default:
		return name
	}
}
