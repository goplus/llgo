package plan9asm

import "fmt"

func (c *amd64Ctx) lowerMov(op Op, ins Instr) (ok bool, terminated bool, err error) {
	switch op {
	case "MOVQ", "MOVL", "MOVB", "MOVW", "CMOVQLT":
		// ok
	default:
		return false, false, nil
	}
	if len(ins.Args) != 2 {
		return true, false, fmt.Errorf("amd64 %s expects 2 operands: %q", op, ins.Raw)
	}
	src, dst := ins.Args[0], ins.Args[1]

	// Vector moves are handled in lowerVec.
	if dst.Kind == OpReg {
		if _, ok := amd64ParseXReg(dst.Reg); ok {
			return false, false, nil
		}
		if _, ok := amd64ParseYReg(dst.Reg); ok {
			return false, false, nil
		}
	}
	if src.Kind == OpReg {
		if _, ok := amd64ParseXReg(src.Reg); ok {
			return false, false, nil
		}
		if _, ok := amd64ParseYReg(src.Reg); ok {
			return false, false, nil
		}
	}

	switch op {
	case "CMOVQLT":
		// CMOVQLT srcReg, dstReg
		if src.Kind != OpReg || dst.Kind != OpReg {
			return true, false, fmt.Errorf("amd64 CMOVQLT expects reg, reg: %q", ins.Raw)
		}
		cond := c.loadFlag(c.flagsSltSlot)
		sv, err := c.loadReg(src.Reg)
		if err != nil {
			return true, false, err
		}
		dv, err := c.loadReg(dst.Reg)
		if err != nil {
			return true, false, err
		}
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = select i1 %s, i64 %s, i64 %s\n", t, cond, sv, dv)
		return true, false, c.storeReg(dst.Reg, "%"+t)

	case "MOVB", "MOVW":
		// MOVB/MOVW src, dst
		widthTy := I8
		if op == "MOVW" {
			widthTy = I16
		}
		var small string
		switch src.Kind {
		case OpImm:
			small = fmt.Sprintf("%d", src.Imm)
		case OpReg:
			v64, err := c.loadReg(src.Reg)
			if err != nil {
				return true, false, err
			}
			tr := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to %s\n", tr, v64, widthTy)
			small = "%" + tr
		case OpFP:
			v64, err := c.evalFPToI64(src.FPOffset)
			if err != nil {
				return true, false, err
			}
			tr := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to %s\n", tr, v64, widthTy)
			small = "%" + tr
		case OpMem:
			addr, err := c.addrFromMem(src.Mem)
			if err != nil {
				return true, false, err
			}
			p := c.ptrFromAddrI64(addr)
			ld := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = load %s, ptr %s, align 1\n", ld, widthTy, p)
			small = "%" + ld
		case OpSym:
			p, err := c.ptrFromSB(src.Sym)
			if err != nil {
				return true, false, err
			}
			ld := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = load %s, ptr %s, align 1\n", ld, widthTy, p)
			small = "%" + ld
		default:
			return true, false, fmt.Errorf("amd64 %s unsupported src: %q", op, ins.Raw)
		}
		switch dst.Kind {
		case OpReg:
			z := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = zext %s %s to i64\n", z, widthTy, small)
			return true, false, c.storeReg(dst.Reg, "%"+z)
		case OpFP:
			return true, false, c.storeFPResult(dst.FPOffset, widthTy, small)
		case OpMem:
			addr, err := c.addrFromMem(dst.Mem)
			if err != nil {
				return true, false, err
			}
			p := c.ptrFromAddrI64(addr)
			fmt.Fprintf(c.b, "  store %s %s, ptr %s, align 1\n", widthTy, small, p)
			return true, false, nil
		default:
			return true, false, fmt.Errorf("amd64 %s unsupported dst: %q", op, ins.Raw)
		}

	case "MOVQ":
		// MOVQ src, dst
		switch dst.Kind {
		case OpReg:
			v, err := c.evalI64(src)
			if err != nil {
				// Allow MOVQ mem, reg.
				if src.Kind == OpMem {
					addr, err2 := c.addrFromMem(src.Mem)
					if err2 != nil {
						return true, false, err2
					}
					p := c.ptrFromAddrI64(addr)
					t := c.newTmp()
					fmt.Fprintf(c.b, "  %%%s = load i64, ptr %s, align 1\n", t, p)
					v = "%" + t
				} else if src.Kind == OpSym {
					p, err2 := c.ptrFromSB(src.Sym)
					if err2 != nil {
						return true, false, err2
					}
					t := c.newTmp()
					fmt.Fprintf(c.b, "  %%%s = load i64, ptr %s, align 1\n", t, p)
					v = "%" + t
				} else {
					return true, false, err
				}
			}
			return true, false, c.storeReg(dst.Reg, v)
		case OpFP:
			// Store low 64 bits to a return slot if present.
			v, err := c.evalI64(src)
			if err != nil {
				return true, false, err
			}
			return true, false, c.storeFPResult(dst.FPOffset, I64, v)
		case OpMem:
			// Store i64 to memory (common for writing return values via a pointer).
			v, err := c.evalI64(src)
			if err != nil {
				return true, false, err
			}
			addr, err := c.addrFromMem(dst.Mem)
			if err != nil {
				return true, false, err
			}
			p := c.ptrFromAddrI64(addr)
			fmt.Fprintf(c.b, "  store i64 %s, ptr %s, align 1\n", v, p)
			return true, false, nil
		default:
			return true, false, fmt.Errorf("amd64 MOVQ unsupported dst: %q", ins.Raw)
		}

	case "MOVL":
		// MOVL src, dst
		switch dst.Kind {
		case OpReg:
			// Zero-extend to 64-bit.
			var i32v string
			switch src.Kind {
			case OpImm:
				i32v = fmt.Sprintf("%d", int32(src.Imm))
			case OpReg, OpFP:
				v64, err := c.evalI64(src)
				if err != nil {
					return true, false, err
				}
				tr := c.newTmp()
				fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", tr, v64)
				i32v = "%" + tr
			case OpMem:
				addr, err := c.addrFromMem(src.Mem)
				if err != nil {
					return true, false, err
				}
				p := c.ptrFromAddrI64(addr)
				ld := c.newTmp()
				fmt.Fprintf(c.b, "  %%%s = load i32, ptr %s, align 1\n", ld, p)
				i32v = "%" + ld
			default:
				return true, false, fmt.Errorf("amd64 MOVL unsupported src: %q", ins.Raw)
			}
			z := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = zext i32 %s to i64\n", z, i32v)
			return true, false, c.storeReg(dst.Reg, "%"+z)

		case OpFP:
			// Store low 32 bits (common for ret slots).
			if src.Kind != OpReg {
				return true, false, fmt.Errorf("amd64 MOVL expects reg, fp for stores: %q", ins.Raw)
			}
			v64, err := c.loadReg(src.Reg)
			if err != nil {
				return true, false, err
			}
			return true, false, c.storeFPResult(dst.FPOffset, I64, v64)
		case OpMem:
			var i32v string
			switch src.Kind {
			case OpImm:
				i32v = fmt.Sprintf("%d", int32(src.Imm))
			case OpReg, OpFP:
				v64, err := c.evalI64(src)
				if err != nil {
					return true, false, err
				}
				tr := c.newTmp()
				fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", tr, v64)
				i32v = "%" + tr
			case OpMem:
				addr, err := c.addrFromMem(src.Mem)
				if err != nil {
					return true, false, err
				}
				p := c.ptrFromAddrI64(addr)
				ld := c.newTmp()
				fmt.Fprintf(c.b, "  %%%s = load i32, ptr %s, align 1\n", ld, p)
				i32v = "%" + ld
			default:
				return true, false, fmt.Errorf("amd64 MOVL unsupported src: %q", ins.Raw)
			}
			addr, err := c.addrFromMem(dst.Mem)
			if err != nil {
				return true, false, err
			}
			p := c.ptrFromAddrI64(addr)
			fmt.Fprintf(c.b, "  store i32 %s, ptr %s, align 1\n", i32v, p)
			return true, false, nil
		default:
			return true, false, fmt.Errorf("amd64 MOVL unsupported dst: %q", ins.Raw)
		}
	}
	return false, false, nil
}
