package plan9asm

import "fmt"

func (c *amd64Ctx) lowerArith(op Op, ins Instr) (ok bool, terminated bool, err error) {
	switch op {
	case "PUSHQ":
		// Stack-manipulation appears in syscall asm stubs (e.g. preserve return
		// address register around SYSCALL). Lower to the local virtual stack.
		if len(ins.Args) != 1 {
			return true, false, fmt.Errorf("amd64 PUSHQ expects src: %q", ins.Raw)
		}
		v, err := c.evalI64(ins.Args[0])
		if err != nil {
			return true, false, err
		}
		c.pushI64(v)
		return true, false, nil
	case "POPQ":
		if len(ins.Args) != 1 || ins.Args[0].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 POPQ expects dstReg: %q", ins.Raw)
		}
		v := c.popI64()
		if err := c.storeReg(ins.Args[0].Reg, v); err != nil {
			return true, false, err
		}
		return true, false, nil

	case "ADDQ", "SUBQ", "XORQ", "ANDQ", "ORQ":
		if len(ins.Args) != 2 || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 %s expects src, dstReg: %q", op, ins.Raw)
		}
		src, err := c.evalI64(ins.Args[0])
		if err != nil {
			return true, false, err
		}
		dst := ins.Args[1].Reg
		dv, err := c.loadReg(dst)
		if err != nil {
			return true, false, err
		}
		t := c.newTmp()
		switch op {
		case "ADDQ":
			fmt.Fprintf(c.b, "  %%%s = add i64 %s, %s\n", t, dv, src)
		case "SUBQ":
			fmt.Fprintf(c.b, "  %%%s = sub i64 %s, %s\n", t, dv, src)
		case "XORQ":
			fmt.Fprintf(c.b, "  %%%s = xor i64 %s, %s\n", t, dv, src)
		case "ANDQ":
			fmt.Fprintf(c.b, "  %%%s = and i64 %s, %s\n", t, dv, src)
		case "ORQ":
			fmt.Fprintf(c.b, "  %%%s = or i64 %s, %s\n", t, dv, src)
		}
		r := "%" + t
		if err := c.storeReg(dst, r); err != nil {
			return true, false, err
		}
		switch op {
		case "ADDQ":
			cf := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = icmp ult i64 %s, %s\n", cf, r, dv)
			fmt.Fprintf(c.b, "  store i1 %%%s, ptr %s\n", cf, c.flagsCFSlot)
		case "SUBQ":
			cf := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = icmp ult i64 %s, %s\n", cf, dv, src)
			fmt.Fprintf(c.b, "  store i1 %%%s, ptr %s\n", cf, c.flagsCFSlot)
		default:
			fmt.Fprintf(c.b, "  store i1 false, ptr %s\n", c.flagsCFSlot)
		}
		c.setZSFlagsFromI64(r)
		return true, false, nil

	case "ADDL", "SUBL", "XORL", "ANDL", "ORL":
		// 32-bit arithmetic/logical ops: src, dstReg (result zero-extended to i64).
		if len(ins.Args) != 2 || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 %s expects src, dstReg: %q", op, ins.Raw)
		}
		dst := ins.Args[1].Reg
		dv64, err := c.loadReg(dst)
		if err != nil {
			return true, false, err
		}
		dtr := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", dtr, dv64)
		var s32 string
		switch ins.Args[0].Kind {
		case OpImm:
			s32 = fmt.Sprintf("%d", int32(ins.Args[0].Imm))
		case OpReg, OpFP:
			v64, err := c.evalI64(ins.Args[0])
			if err != nil {
				return true, false, err
			}
			tr := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", tr, v64)
			s32 = "%" + tr
		default:
			return true, false, fmt.Errorf("amd64 %s unsupported src: %q", op, ins.Raw)
		}
		x := c.newTmp()
		switch op {
		case "ADDL":
			fmt.Fprintf(c.b, "  %%%s = add i32 %%%s, %s\n", x, dtr, s32)
		case "SUBL":
			fmt.Fprintf(c.b, "  %%%s = sub i32 %%%s, %s\n", x, dtr, s32)
		case "XORL":
			fmt.Fprintf(c.b, "  %%%s = xor i32 %%%s, %s\n", x, dtr, s32)
		case "ANDL":
			fmt.Fprintf(c.b, "  %%%s = and i32 %%%s, %s\n", x, dtr, s32)
		case "ORL":
			fmt.Fprintf(c.b, "  %%%s = or i32 %%%s, %s\n", x, dtr, s32)
		}
		z := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i32 %%%s to i64\n", z, x)
		out := "%" + z
		if err := c.storeReg(dst, out); err != nil {
			return true, false, err
		}
		switch op {
		case "ADDL":
			cf := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = icmp ult i32 %%%s, %%%s\n", cf, x, dtr)
			fmt.Fprintf(c.b, "  store i1 %%%s, ptr %s\n", cf, c.flagsCFSlot)
		case "SUBL":
			cf := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = icmp ult i32 %%%s, %s\n", cf, dtr, s32)
			fmt.Fprintf(c.b, "  store i1 %%%s, ptr %s\n", cf, c.flagsCFSlot)
		default:
			fmt.Fprintf(c.b, "  store i1 false, ptr %s\n", c.flagsCFSlot)
		}
		c.setZSFlagsFromI32("%" + x)
		return true, false, nil

	case "INCQ", "DECQ":
		if len(ins.Args) != 1 || ins.Args[0].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 %s expects reg: %q", op, ins.Raw)
		}
		r := ins.Args[0].Reg
		v, err := c.loadReg(r)
		if err != nil {
			return true, false, err
		}
		t := c.newTmp()
		if op == "INCQ" {
			fmt.Fprintf(c.b, "  %%%s = add i64 %s, 1\n", t, v)
		} else {
			fmt.Fprintf(c.b, "  %%%s = sub i64 %s, 1\n", t, v)
		}
		out := "%" + t
		if err := c.storeReg(r, out); err != nil {
			return true, false, err
		}
		c.setZSFlagsFromI64(out)
		return true, false, nil

	case "LEAQ", "LEAL":
		// LEA{Q,L} srcAddr, dstReg
		if len(ins.Args) != 2 || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 %s expects srcAddr, dstReg: %q", op, ins.Raw)
		}
		dst := ins.Args[1].Reg
		storeLEA := func(addr string) error {
			if op == "LEAL" {
				t := c.newTmp()
				fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", t, addr)
				z := c.newTmp()
				fmt.Fprintf(c.b, "  %%%s = zext i32 %%%s to i64\n", z, t)
				return c.storeReg(dst, "%"+z)
			}
			return c.storeReg(dst, addr)
		}
		switch ins.Args[0].Kind {
		case OpMem:
			addr, err := c.addrFromMem(ins.Args[0].Mem)
			if err != nil {
				return true, false, err
			}
			return true, false, storeLEA(addr)
		case OpFP:
			// LEA of a return slot, e.g. "LEAQ ret+32(FP), R8".
			alloca, _, ok := c.fpResultAlloca(ins.Args[0].FPOffset)
			if !ok {
				return true, false, fmt.Errorf("amd64 %s unsupported FP slot: %q", op, ins.Raw)
			}
			c.markFPResultAddrTaken(ins.Args[0].FPOffset)
			t := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = ptrtoint ptr %s to i64\n", t, alloca)
			return true, false, storeLEA("%" + t)
		case OpFPAddr:
			// Address of a return slot alloca.
			alloca, _, ok := c.fpResultAlloca(ins.Args[0].FPOffset)
			if !ok {
				return true, false, fmt.Errorf("amd64 %s unsupported FP addr: %q", op, ins.Raw)
			}
			c.markFPResultAddrTaken(ins.Args[0].FPOffset)
			t := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = ptrtoint ptr %s to i64\n", t, alloca)
			return true, false, storeLEA("%" + t)
		case OpSym:
			p, err := c.ptrFromSB(ins.Args[0].Sym)
			if err != nil {
				return true, false, err
			}
			t := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = ptrtoint ptr %s to i64\n", t, p)
			return true, false, storeLEA("%" + t)
		default:
			return true, false, fmt.Errorf("amd64 %s unsupported src: %q", op, ins.Raw)
		}

	case "POPCNTL", "POPCNTQ":
		// POPCNT{L,Q} srcReg, dstReg (count bits; L is 32-bit, Q is 64-bit).
		if len(ins.Args) != 2 || ins.Args[0].Kind != OpReg || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 %s expects srcReg, dstReg: %q", op, ins.Raw)
		}
		srcv, err := c.loadReg(ins.Args[0].Reg)
		if err != nil {
			return true, false, err
		}
		dst := ins.Args[1].Reg
		if op == "POPCNTL" {
			tr := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", tr, srcv)
			call := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = call i32 @llvm.ctpop.i32(i32 %%%s)\n", call, tr)
			z := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = zext i32 %%%s to i64\n", z, call)
			return true, false, c.storeReg(dst, "%"+z)
		}
		call := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = call i64 @llvm.ctpop.i64(i64 %s)\n", call, srcv)
		return true, false, c.storeReg(dst, "%"+call)

	case "BSFQ", "BSRQ", "BSWAPQ", "BSFL", "BSRL":
		// Bit scan/byte swap ops (reg, reg).
		src := Reg("")
		dst := Reg("")
		switch len(ins.Args) {
		case 1:
			if op != "BSWAPQ" || ins.Args[0].Kind != OpReg {
				return true, false, fmt.Errorf("amd64 %s expects reg or srcReg,dstReg: %q", op, ins.Raw)
			}
			src = ins.Args[0].Reg
			dst = ins.Args[0].Reg
		case 2:
			if ins.Args[0].Kind != OpReg || ins.Args[1].Kind != OpReg {
				return true, false, fmt.Errorf("amd64 %s expects srcReg, dstReg: %q", op, ins.Raw)
			}
			src = ins.Args[0].Reg
			dst = ins.Args[1].Reg
		default:
			return true, false, fmt.Errorf("amd64 %s expects 1 or 2 operands: %q", op, ins.Raw)
		}
		sv, err := c.loadReg(src)
		if err != nil {
			return true, false, err
		}
		switch op {
		case "BSFQ":
			// ZF is set when src == 0.
			zf := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = icmp eq i64 %s, 0\n", zf, sv)
			fmt.Fprintf(c.b, "  store i1 %%%s, ptr %s\n", zf, c.flagsZSlot)
			// dst = cttz(src). Use non-poison form for src==0.
			call := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = call i64 @llvm.cttz.i64(i64 %s, i1 false)\n", call, sv)
			return true, false, c.storeReg(dst, "%"+call)
		case "BSRQ":
			// ZF is set when src == 0.
			zf := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = icmp eq i64 %s, 0\n", zf, sv)
			fmt.Fprintf(c.b, "  store i1 %%%s, ptr %s\n", zf, c.flagsZSlot)
			// dst = 63 - ctlz(src). Use non-poison form for src==0.
			clz := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = call i64 @llvm.ctlz.i64(i64 %s, i1 false)\n", clz, sv)
			sub := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = sub i64 63, %%%s\n", sub, clz)
			return true, false, c.storeReg(dst, "%"+sub)
		case "BSWAPQ":
			call := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = call i64 @llvm.bswap.i64(i64 %s)\n", call, sv)
			return true, false, c.storeReg(dst, "%"+call)
		case "BSFL":
			// ZF is set when low 32-bit src == 0.
			tr := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", tr, sv)
			zf := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = icmp eq i32 %%%s, 0\n", zf, tr)
			fmt.Fprintf(c.b, "  store i1 %%%s, ptr %s\n", zf, c.flagsZSlot)
			// dst = zext(cttz(trunc32(src))). Use non-poison form for src==0.
			call := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = call i32 @llvm.cttz.i32(i32 %%%s, i1 false)\n", call, tr)
			z := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = zext i32 %%%s to i64\n", z, call)
			return true, false, c.storeReg(dst, "%"+z)
		case "BSRL":
			// ZF is set when low 32-bit src == 0.
			tr := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", tr, sv)
			zf := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = icmp eq i32 %%%s, 0\n", zf, tr)
			fmt.Fprintf(c.b, "  store i1 %%%s, ptr %s\n", zf, c.flagsZSlot)
			// dst = zext(31 - ctlz(trunc32(src))). Use non-poison form for src==0.
			clz := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = call i32 @llvm.ctlz.i32(i32 %%%s, i1 false)\n", clz, tr)
			sub := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = sub i32 31, %%%s\n", sub, clz)
			z := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = zext i32 %%%s to i64\n", z, sub)
			return true, false, c.storeReg(dst, "%"+z)
		}
		return true, false, fmt.Errorf("amd64: unsupported bit op %s", op)

	case "SETEQ", "SETGT", "SETHI":
		// SETcc dst: set byte based on flags.
		// We support register destinations and FP result slots.
		if len(ins.Args) != 1 {
			return true, false, fmt.Errorf("amd64 %s expects one destination: %q", op, ins.Raw)
		}
		cond := ""
		switch op {
		case "SETEQ":
			cond = c.loadFlag(c.flagsZSlot)
		case "SETGT":
			// signed >
			slt := c.loadFlag(c.flagsSltSlot)
			z := c.loadFlag(c.flagsZSlot)
			t1 := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = or i1 %s, %s\n", t1, slt, z)
			t2 := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = xor i1 %%%s, true\n", t2, t1)
			cond = "%" + t2
		case "SETHI":
			// unsigned >
			cf := c.loadFlag(c.flagsCFSlot)
			z := c.loadFlag(c.flagsZSlot)
			t1 := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = or i1 %s, %s\n", t1, cf, z)
			t2 := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = xor i1 %%%s, true\n", t2, t1)
			cond = "%" + t2
		}
		switch ins.Args[0].Kind {
		case OpReg:
			sel := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = select i1 %s, i64 1, i64 0\n", sel, cond)
			return true, false, c.storeReg(ins.Args[0].Reg, "%"+sel)
		case OpFP:
			return true, false, c.storeFPResult(ins.Args[0].FPOffset, I1, cond)
		default:
			return true, false, fmt.Errorf("amd64 %s expects reg or fp destination: %q", op, ins.Raw)
		}

	case "SHRQ", "SHLQ", "SARQ", "SHLL", "SHRL", "SALQ", "SALL":
		// Shift ops: srcAmt, dstReg
		if len(ins.Args) != 2 || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 %s expects srcAmt, dstReg: %q", op, ins.Raw)
		}
		dst := ins.Args[1].Reg
		dv, err := c.loadReg(dst)
		if err != nil {
			return true, false, err
		}
		amtMask := int64(63)
		valTy := I64
		if op == "SHLL" || op == "SHRL" || op == "SALL" {
			amtMask = 31
			valTy = I32
		}
		amtI64 := ""
		switch ins.Args[0].Kind {
		case OpImm:
			amtI64 = fmt.Sprintf("%d", ins.Args[0].Imm&amtMask)
		case OpReg:
			av, err := c.loadReg(ins.Args[0].Reg)
			if err != nil {
				return true, false, err
			}
			m := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = and i64 %s, %d\n", m, av, amtMask)
			amtI64 = "%" + m
		default:
			return true, false, fmt.Errorf("amd64 %s unsupported shift amt: %q", op, ins.Raw)
		}

		if valTy == I64 {
			t := c.newTmp()
			switch op {
			case "SHRQ":
				fmt.Fprintf(c.b, "  %%%s = lshr i64 %s, %s\n", t, dv, amtI64)
			case "SHLQ", "SALQ":
				fmt.Fprintf(c.b, "  %%%s = shl i64 %s, %s\n", t, dv, amtI64)
			case "SARQ":
				fmt.Fprintf(c.b, "  %%%s = ashr i64 %s, %s\n", t, dv, amtI64)
			}
			return true, false, c.storeReg(dst, "%"+t)
		}

		// 32-bit shifts: operate on low 32, zero-extend to 64.
		tr := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", tr, dv)
		amt32 := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", amt32, amtI64)
		sh := c.newTmp()
		if op == "SHLL" || op == "SALL" {
			fmt.Fprintf(c.b, "  %%%s = shl i32 %%%s, %%%s\n", sh, tr, amt32)
		} else {
			fmt.Fprintf(c.b, "  %%%s = lshr i32 %%%s, %%%s\n", sh, tr, amt32)
		}
		z := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i32 %%%s to i64\n", z, sh)
		return true, false, c.storeReg(dst, "%"+z)

	case "ROLL":
		// 32-bit rotate-left: count, dstReg.
		if len(ins.Args) != 2 || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 ROLL expects count, dstReg: %q", ins.Raw)
		}
		dst := ins.Args[1].Reg
		dv64, err := c.loadReg(dst)
		if err != nil {
			return true, false, err
		}
		dv32 := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", dv32, dv64)

		var cnt32 string
		switch ins.Args[0].Kind {
		case OpImm:
			cnt32 = fmt.Sprintf("%d", uint32(ins.Args[0].Imm))
		case OpReg:
			cv64, err := c.loadReg(ins.Args[0].Reg)
			if err != nil {
				return true, false, err
			}
			tr := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", tr, cv64)
			cnt32 = "%" + tr
		default:
			return true, false, fmt.Errorf("amd64 ROLL unsupported count: %q", ins.Raw)
		}

		cm := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = and i32 %s, 31\n", cm, cnt32)
		neg := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = sub i32 32, %%%s\n", neg, cm)
		nm := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = and i32 %%%s, 31\n", nm, neg)
		lhs := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = shl i32 %%%s, %%%s\n", lhs, dv32, cm)
		rhs := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = lshr i32 %%%s, %%%s\n", rhs, dv32, nm)
		rot := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = or i32 %%%s, %%%s\n", rot, lhs, rhs)
		z := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i32 %%%s to i64\n", z, rot)
		return true, false, c.storeReg(dst, "%"+z)

	case "NOTL":
		// 32-bit bitwise NOT, result zero-extended to 64-bit.
		if len(ins.Args) != 1 || ins.Args[0].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 NOTL expects reg: %q", ins.Raw)
		}
		r := ins.Args[0].Reg
		v64, err := c.loadReg(r)
		if err != nil {
			return true, false, err
		}
		tr := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", tr, v64)
		x := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = xor i32 %%%s, -1\n", x, tr)
		z := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i32 %%%s to i64\n", z, x)
		return true, false, c.storeReg(r, "%"+z)

	case "NEGQ":
		// NEGQ reg
		if len(ins.Args) != 1 || ins.Args[0].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 NEGQ expects reg: %q", ins.Raw)
		}
		r := ins.Args[0].Reg
		v, err := c.loadReg(r)
		if err != nil {
			return true, false, err
		}
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = sub i64 0, %s\n", t, v)
		out := "%" + t
		if err := c.storeReg(r, out); err != nil {
			return true, false, err
		}
		cf := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = icmp ne i64 %s, 0\n", cf, v)
		fmt.Fprintf(c.b, "  store i1 %%%s, ptr %s\n", cf, c.flagsCFSlot)
		c.setZSFlagsFromI64(out)
		return true, false, nil
	}
	return false, false, nil
}
