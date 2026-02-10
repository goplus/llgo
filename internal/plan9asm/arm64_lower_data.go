package plan9asm

import "fmt"

func (c *arm64Ctx) lowerData(op Op, postInc bool, ins Instr) (ok bool, terminated bool, err error) {
	switch op {
	case "MOVD":
		if len(ins.Args) != 2 {
			return true, false, fmt.Errorf("arm64 MOVD expects 2 operands: %q", ins.Raw)
		}
		src, dst := ins.Args[0], ins.Args[1]
		v, err := c.eval64(src, postInc)
		if err != nil {
			return true, false, err
		}
		switch dst.Kind {
		case OpReg:
			return true, false, c.storeReg(dst.Reg, v)
		case OpMem:
			return true, false, c.storeMem(dst.Mem, 64, false, v)
		case OpFP:
			return true, false, c.storeFPResult64(dst.FPOffset, v)
		default:
			return true, false, fmt.Errorf("arm64 MOVD unsupported dst: %q", ins.Raw)
		}

	case "MOVB":
		if len(ins.Args) != 2 {
			return true, false, fmt.Errorf("arm64 MOVB expects 2 operands: %q", ins.Raw)
		}
		src, dst := ins.Args[0], ins.Args[1]
		v := ""
		var err error
		switch src.Kind {
		case OpMem:
			v, err = c.loadMem(src.Mem, 8, postInc)
		default:
			v, err = c.eval64(src, false)
		}
		if err != nil {
			return true, false, err
		}
		switch dst.Kind {
		case OpReg:
			b := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i8\n", b, v)
			z := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = zext i8 %%%s to i64\n", z, b)
			return true, false, c.storeReg(dst.Reg, "%"+z)
		case OpMem:
			return true, false, c.storeMem(dst.Mem, 8, false, v)
		case OpFP:
			return true, false, c.storeFPResult64(dst.FPOffset, v)
		default:
			return true, false, fmt.Errorf("arm64 MOVB unsupported dst: %q", ins.Raw)
		}

	case "MOVW":
		if len(ins.Args) != 2 {
			return true, false, fmt.Errorf("arm64 MOVW expects 2 operands: %q", ins.Raw)
		}
		src, dst := ins.Args[0], ins.Args[1]
		v := ""
		var err error
		switch src.Kind {
		case OpMem:
			v, err = c.loadMem(src.Mem, 32, postInc)
		default:
			v, err = c.eval64(src, false)
		}
		if err != nil {
			return true, false, err
		}
		switch dst.Kind {
		case OpReg:
			t := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", t, v)
			z := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = zext i32 %%%s to i64\n", z, t)
			return true, false, c.storeReg(dst.Reg, "%"+z)
		case OpMem:
			return true, false, c.storeMem(dst.Mem, 32, false, v)
		case OpFP:
			return true, false, c.storeFPResult64(dst.FPOffset, v)
		default:
			return true, false, fmt.Errorf("arm64 MOVW unsupported dst: %q", ins.Raw)
		}

	case "MOVWU":
		if len(ins.Args) != 2 {
			return true, false, fmt.Errorf("arm64 MOVWU expects 2 operands: %q", ins.Raw)
		}
		src, dst := ins.Args[0], ins.Args[1]
		switch dst.Kind {
		case OpReg:
			v := ""
			var err error
			switch src.Kind {
			case OpMem:
				v, err = c.loadMem(src.Mem, 32, postInc)
			case OpFP:
				v, err = c.eval64(src, false)
			default:
				return true, false, fmt.Errorf("arm64 MOVWU unsupported src: %q", ins.Raw)
			}
			if err != nil {
				return true, false, err
			}
			return true, false, c.storeReg(dst.Reg, v)
		case OpFP:
			if src.Kind != OpReg {
				return true, false, fmt.Errorf("arm64 MOVWU expects reg, fp: %q", ins.Raw)
			}
			v, err := c.loadReg(src.Reg)
			if err != nil {
				return true, false, err
			}
			return true, false, c.storeFPResult64(dst.FPOffset, v)
		default:
			return true, false, fmt.Errorf("arm64 MOVWU unsupported dst: %q", ins.Raw)
		}

	case "MOVHU":
		if len(ins.Args) != 2 || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("arm64 MOVHU expects (mem|fp), reg: %q", ins.Raw)
		}
		v := ""
		var err error
		switch ins.Args[0].Kind {
		case OpMem:
			v, err = c.loadMem(ins.Args[0].Mem, 16, postInc)
		case OpFP:
			v, err = c.eval64(ins.Args[0], false)
		default:
			return true, false, fmt.Errorf("arm64 MOVHU unsupported src: %q", ins.Raw)
		}
		if err != nil {
			return true, false, err
		}
		return true, false, c.storeReg(ins.Args[1].Reg, v)

	case "MOVBU":
		if len(ins.Args) != 2 || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("arm64 MOVBU expects (mem|fp|sym), reg: %q", ins.Raw)
		}
		v := ""
		var err error
		switch ins.Args[0].Kind {
		case OpMem:
			v, err = c.loadMem(ins.Args[0].Mem, 8, postInc)
		case OpFP:
			v, err = c.eval64(ins.Args[0], false)
		case OpSym:
			p, perr := c.ptrFromSB(ins.Args[0].Sym)
			if perr != nil {
				return true, false, perr
			}
			t := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = load i8, ptr %s\n", t, p)
			z := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = zext i8 %%%s to i64\n", z, t)
			v = "%" + z
		default:
			return true, false, fmt.Errorf("arm64 MOVBU unsupported src: %q", ins.Raw)
		}
		if err != nil {
			return true, false, err
		}
		return true, false, c.storeReg(ins.Args[1].Reg, v)

	case "LDP":
		if len(ins.Args) != 2 || ins.Args[0].Kind != OpMem || ins.Args[1].Kind != OpRegList || len(ins.Args[1].RegList) != 2 {
			return true, false, fmt.Errorf("arm64 LDP expects mem, (reg,reg): %q", ins.Raw)
		}
		mem := ins.Args[0].Mem
		addr, base, inc, err := c.addrI64(mem, postInc)
		if err != nil {
			return true, false, err
		}
		p0t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = inttoptr i64 %s to ptr\n", p0t, addr)
		v0t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = load i64, ptr %%%s\n", v0t, p0t)
		addr2t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = add i64 %s, 8\n", addr2t, addr)
		p1t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = inttoptr i64 %%%s to ptr\n", p1t, addr2t)
		v1t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = load i64, ptr %%%s\n", v1t, p1t)
		if err := c.storeReg(ins.Args[1].RegList[0], "%"+v0t); err != nil {
			return true, false, err
		}
		if err := c.storeReg(ins.Args[1].RegList[1], "%"+v1t); err != nil {
			return true, false, err
		}
		if err := c.updatePostInc(base, inc); err != nil {
			return true, false, err
		}
		return true, false, nil

	case "LDPW":
		if len(ins.Args) != 2 || ins.Args[0].Kind != OpMem || ins.Args[1].Kind != OpRegList || len(ins.Args[1].RegList) != 2 {
			return true, false, fmt.Errorf("arm64 LDPW expects mem, (reg,reg): %q", ins.Raw)
		}
		mem := ins.Args[0].Mem
		addr, base, inc, err := c.addrI64(mem, postInc)
		if err != nil {
			return true, false, err
		}
		p0t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = inttoptr i64 %s to ptr\n", p0t, addr)
		v0t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = load i32, ptr %%%s\n", v0t, p0t)
		z0t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i32 %%%s to i64\n", z0t, v0t)
		addr2t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = add i64 %s, 4\n", addr2t, addr)
		p1t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = inttoptr i64 %%%s to ptr\n", p1t, addr2t)
		v1t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = load i32, ptr %%%s\n", v1t, p1t)
		z1t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i32 %%%s to i64\n", z1t, v1t)
		if err := c.storeReg(ins.Args[1].RegList[0], "%"+z0t); err != nil {
			return true, false, err
		}
		if err := c.storeReg(ins.Args[1].RegList[1], "%"+z1t); err != nil {
			return true, false, err
		}
		if err := c.updatePostInc(base, inc); err != nil {
			return true, false, err
		}
		return true, false, nil

	case "STPW":
		if len(ins.Args) != 2 || ins.Args[0].Kind != OpRegList || len(ins.Args[0].RegList) != 2 || ins.Args[1].Kind != OpMem {
			return true, false, fmt.Errorf("arm64 STPW expects (reg,reg), mem: %q", ins.Raw)
		}
		mem := ins.Args[1].Mem
		addr, base, inc, err := c.addrI64(mem, postInc)
		if err != nil {
			return true, false, err
		}
		v0, err := c.loadReg(ins.Args[0].RegList[0])
		if err != nil {
			return true, false, err
		}
		t0 := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", t0, v0)
		p0t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = inttoptr i64 %s to ptr\n", p0t, addr)
		fmt.Fprintf(c.b, "  store i32 %%%s, ptr %%%s\n", t0, p0t)

		addr2t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = add i64 %s, 4\n", addr2t, addr)
		v1, err := c.loadReg(ins.Args[0].RegList[1])
		if err != nil {
			return true, false, err
		}
		t1 := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", t1, v1)
		p1t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = inttoptr i64 %%%s to ptr\n", p1t, addr2t)
		fmt.Fprintf(c.b, "  store i32 %%%s, ptr %%%s\n", t1, p1t)
		if err := c.updatePostInc(base, inc); err != nil {
			return true, false, err
		}
		return true, false, nil
	}
	return false, false, nil
}
