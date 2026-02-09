package plan9asm

import (
	"fmt"
	"strconv"
	"strings"
)

func (c *amd64Ctx) lowerFP(op Op, ins Instr) (ok bool, terminated bool, err error) {
	switch op {
	case "MOVSD", "MOVAPD", "ANDPD", "ANDNPD", "ORPD", "XORPS",
		"ADDSD", "SUBSD", "MULSD", "DIVSD", "MAXSD", "MINSD", "SQRTSD",
		"COMISD", "CMPSD", "VADDSD", "VFMADD213SD", "VFNMADD231SD",
		"CVTSD2SL", "CVTSL2SD", "CVTSQ2SD", "CVTTSD2SQ":
		// handled below
	default:
		return false, false, nil
	}

	switch op {
	case "MOVAPD", "ANDPD", "ANDNPD", "ORPD", "XORPS":
		if len(ins.Args) != 2 || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 %s expects src, Xdst: %q", op, ins.Raw)
		}
		if _, ok := amd64ParseXReg(ins.Args[1].Reg); !ok {
			return false, false, nil
		}
		dst := ins.Args[1].Reg
		srcv, err := c.loadXVecOperand(ins.Args[0])
		if err != nil {
			return true, false, err
		}
		if op == "MOVAPD" {
			return true, false, c.storeX(dst, srcv)
		}
		dstv, err := c.loadX(dst)
		if err != nil {
			return true, false, err
		}
		t := c.newTmp()
		switch op {
		case "ANDPD":
			fmt.Fprintf(c.b, "  %%%s = and <16 x i8> %s, %s\n", t, dstv, srcv)
		case "ORPD":
			fmt.Fprintf(c.b, "  %%%s = or <16 x i8> %s, %s\n", t, dstv, srcv)
		case "XORPS":
			fmt.Fprintf(c.b, "  %%%s = xor <16 x i8> %s, %s\n", t, dstv, srcv)
		case "ANDNPD":
			notv := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = xor <16 x i8> %s, %s\n", notv, dstv, llvmAllOnesI8Vec(16))
			fmt.Fprintf(c.b, "  %%%s = and <16 x i8> %%%s, %s\n", t, notv, srcv)
		}
		return true, false, c.storeX(dst, "%"+t)

	case "MOVSD":
		if len(ins.Args) != 2 {
			return true, false, fmt.Errorf("amd64 MOVSD expects src, dst: %q", ins.Raw)
		}
		v, err := c.evalF64(ins.Args[0])
		if err != nil {
			return true, false, err
		}
		switch ins.Args[1].Kind {
		case OpReg:
			if _, ok := amd64ParseXReg(ins.Args[1].Reg); !ok {
				return true, false, fmt.Errorf("amd64 MOVSD expects X-reg destination: %q", ins.Raw)
			}
			return true, false, c.storeXLowF64(ins.Args[1].Reg, v)
		case OpFP:
			return true, false, c.storeFPResult(ins.Args[1].FPOffset, LLVMType("double"), v)
		case OpMem:
			addr, err := c.addrFromMem(ins.Args[1].Mem)
			if err != nil {
				return true, false, err
			}
			p := c.ptrFromAddrI64(addr)
			fmt.Fprintf(c.b, "  store double %s, ptr %s, align 1\n", v, p)
			return true, false, nil
		case OpSym:
			p, err := c.ptrFromSB(ins.Args[1].Sym)
			if err != nil {
				return true, false, err
			}
			fmt.Fprintf(c.b, "  store double %s, ptr %s, align 1\n", v, p)
			return true, false, nil
		default:
			return true, false, fmt.Errorf("amd64 MOVSD unsupported destination: %q", ins.Raw)
		}

	case "ADDSD", "SUBSD", "MULSD", "DIVSD", "MAXSD", "MINSD":
		if len(ins.Args) != 2 || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 %s expects src, Xdst: %q", op, ins.Raw)
		}
		if _, ok := amd64ParseXReg(ins.Args[1].Reg); !ok {
			return false, false, nil
		}
		src, err := c.evalF64(ins.Args[0])
		if err != nil {
			return true, false, err
		}
		dst, err := c.loadXLowF64(ins.Args[1].Reg)
		if err != nil {
			return true, false, err
		}
		t := c.newTmp()
		switch op {
		case "ADDSD":
			fmt.Fprintf(c.b, "  %%%s = fadd double %s, %s\n", t, dst, src)
		case "SUBSD":
			fmt.Fprintf(c.b, "  %%%s = fsub double %s, %s\n", t, dst, src)
		case "MULSD":
			fmt.Fprintf(c.b, "  %%%s = fmul double %s, %s\n", t, dst, src)
		case "DIVSD":
			fmt.Fprintf(c.b, "  %%%s = fdiv double %s, %s\n", t, dst, src)
		case "MAXSD":
			cmp := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = fcmp ogt double %s, %s\n", cmp, dst, src)
			fmt.Fprintf(c.b, "  %%%s = select i1 %%%s, double %s, double %s\n", t, cmp, dst, src)
		case "MINSD":
			cmp := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = fcmp olt double %s, %s\n", cmp, dst, src)
			fmt.Fprintf(c.b, "  %%%s = select i1 %%%s, double %s, double %s\n", t, cmp, dst, src)
		}
		return true, false, c.storeXLowF64(ins.Args[1].Reg, "%"+t)

	case "SQRTSD":
		if len(ins.Args) != 2 || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 SQRTSD expects src, Xdst: %q", ins.Raw)
		}
		if _, ok := amd64ParseXReg(ins.Args[1].Reg); !ok {
			return false, false, nil
		}
		src, err := c.evalF64(ins.Args[0])
		if err != nil {
			return true, false, err
		}
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = call double @llvm.sqrt.f64(double %s)\n", t, src)
		return true, false, c.storeXLowF64(ins.Args[1].Reg, "%"+t)

	case "COMISD":
		if len(ins.Args) != 2 {
			return true, false, fmt.Errorf("amd64 COMISD expects src, dst: %q", ins.Raw)
		}
		src, err := c.evalF64(ins.Args[0])
		if err != nil {
			return true, false, err
		}
		dst, err := c.evalF64(ins.Args[1])
		if err != nil {
			return true, false, err
		}
		z := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = fcmp ueq double %s, %s\n", z, dst, src)
		fmt.Fprintf(c.b, "  store i1 %%%s, ptr %s\n", z, c.flagsZSlot)
		cf := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = fcmp ult double %s, %s\n", cf, dst, src)
		fmt.Fprintf(c.b, "  store i1 %%%s, ptr %s\n", cf, c.flagsCFSlot)
		lt := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = fcmp olt double %s, %s\n", lt, dst, src)
		fmt.Fprintf(c.b, "  store i1 %%%s, ptr %s\n", lt, c.flagsSltSlot)
		return true, false, nil

	case "CMPSD":
		if len(ins.Args) != 3 || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 CMPSD expects src, Xdst, $imm: %q", ins.Raw)
		}
		if _, ok := amd64ParseXReg(ins.Args[1].Reg); !ok {
			return false, false, nil
		}
		src, err := c.evalF64(ins.Args[0])
		if err != nil {
			return true, false, err
		}
		dst, err := c.loadXLowF64(ins.Args[1].Reg)
		if err != nil {
			return true, false, err
		}
		pred := int64(0)
		switch ins.Args[2].Kind {
		case OpImm:
			pred = ins.Args[2].Imm
		case OpSym:
			n, err := strconv.ParseInt(strings.TrimSpace(ins.Args[2].Sym), 0, 64)
			if err != nil {
				return true, false, fmt.Errorf("amd64 CMPSD invalid imm %q: %q", ins.Args[2].Sym, ins.Raw)
			}
			pred = n
		default:
			return true, false, fmt.Errorf("amd64 CMPSD expects immediate predicate: %q", ins.Raw)
		}
		pred &= 7
		cmp := c.newTmp()
		switch pred {
		case 0:
			fmt.Fprintf(c.b, "  %%%s = fcmp oeq double %s, %s\n", cmp, dst, src)
		case 1:
			fmt.Fprintf(c.b, "  %%%s = fcmp olt double %s, %s\n", cmp, dst, src)
		case 2:
			fmt.Fprintf(c.b, "  %%%s = fcmp ole double %s, %s\n", cmp, dst, src)
		case 3:
			fmt.Fprintf(c.b, "  %%%s = fcmp uno double %s, %s\n", cmp, dst, src)
		case 4:
			fmt.Fprintf(c.b, "  %%%s = fcmp une double %s, %s\n", cmp, dst, src)
		case 5:
			fmt.Fprintf(c.b, "  %%%s = fcmp uge double %s, %s\n", cmp, dst, src)
		case 6:
			fmt.Fprintf(c.b, "  %%%s = fcmp ugt double %s, %s\n", cmp, dst, src)
		case 7:
			fmt.Fprintf(c.b, "  %%%s = fcmp ord double %s, %s\n", cmp, dst, src)
		}
		mask := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = select i1 %%%s, i64 -1, i64 0\n", mask, cmp)
		return true, false, c.storeXLowI64(ins.Args[1].Reg, "%"+mask)

	case "CVTTSD2SQ":
		if len(ins.Args) != 2 || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 CVTTSD2SQ expects src, dstReg: %q", ins.Raw)
		}
		src, err := c.evalF64(ins.Args[0])
		if err != nil {
			return true, false, err
		}
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = fptosi double %s to i64\n", t, src)
		return true, false, c.storeReg(ins.Args[1].Reg, "%"+t)

	case "CVTSQ2SD":
		if len(ins.Args) != 2 || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 CVTSQ2SD expects src, Xdst: %q", ins.Raw)
		}
		if _, ok := amd64ParseXReg(ins.Args[1].Reg); !ok {
			return false, false, nil
		}
		src, err := c.evalI64(ins.Args[0])
		if err != nil {
			return true, false, err
		}
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = sitofp i64 %s to double\n", t, src)
		return true, false, c.storeXLowF64(ins.Args[1].Reg, "%"+t)

	case "CVTSD2SL":
		if len(ins.Args) != 2 || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 CVTSD2SL expects src, dstReg: %q", ins.Raw)
		}
		src, err := c.evalF64(ins.Args[0])
		if err != nil {
			return true, false, err
		}
		round := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = call double @llvm.rint.f64(double %s)\n", round, src)
		i32v := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = fptosi double %%%s to i32\n", i32v, round)
		z := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i32 %%%s to i64\n", z, i32v)
		return true, false, c.storeReg(ins.Args[1].Reg, "%"+z)

	case "CVTSL2SD":
		if len(ins.Args) != 2 || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 CVTSL2SD expects srcReg, Xdst: %q", ins.Raw)
		}
		if _, ok := amd64ParseXReg(ins.Args[1].Reg); !ok {
			return false, false, nil
		}
		src, err := c.evalI64(ins.Args[0])
		if err != nil {
			return true, false, err
		}
		i32v := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", i32v, src)
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = sitofp i32 %%%s to double\n", t, i32v)
		return true, false, c.storeXLowF64(ins.Args[1].Reg, "%"+t)

	case "VADDSD":
		if len(ins.Args) != 3 || ins.Args[2].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 VADDSD expects src1, src2, Xdst: %q", ins.Raw)
		}
		if _, ok := amd64ParseXReg(ins.Args[2].Reg); !ok {
			return false, false, nil
		}
		s1, err := c.evalF64(ins.Args[0])
		if err != nil {
			return true, false, err
		}
		s2, err := c.evalF64(ins.Args[1])
		if err != nil {
			return true, false, err
		}
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = fadd double %s, %s\n", t, s2, s1)
		return true, false, c.storeXLowF64(ins.Args[2].Reg, "%"+t)

	case "VFMADD213SD":
		if len(ins.Args) != 3 || ins.Args[2].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 VFMADD213SD expects src1, src2, Xdst: %q", ins.Raw)
		}
		if _, ok := amd64ParseXReg(ins.Args[2].Reg); !ok {
			return false, false, nil
		}
		s1, err := c.evalF64(ins.Args[0])
		if err != nil {
			return true, false, err
		}
		s2, err := c.evalF64(ins.Args[1])
		if err != nil {
			return true, false, err
		}
		dst, err := c.loadXLowF64(ins.Args[2].Reg)
		if err != nil {
			return true, false, err
		}
		mul := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = fmul double %s, %s\n", mul, dst, s2)
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = fadd double %%%s, %s\n", t, mul, s1)
		return true, false, c.storeXLowF64(ins.Args[2].Reg, "%"+t)

	case "VFNMADD231SD":
		if len(ins.Args) != 3 || ins.Args[2].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 VFNMADD231SD expects src1, src2, Xdst: %q", ins.Raw)
		}
		if _, ok := amd64ParseXReg(ins.Args[2].Reg); !ok {
			return false, false, nil
		}
		s1, err := c.evalF64(ins.Args[0])
		if err != nil {
			return true, false, err
		}
		s2, err := c.evalF64(ins.Args[1])
		if err != nil {
			return true, false, err
		}
		dst, err := c.loadXLowF64(ins.Args[2].Reg)
		if err != nil {
			return true, false, err
		}
		mul := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = fmul double %s, %s\n", mul, s1, s2)
		neg := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = fneg double %%%s\n", neg, mul)
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = fadd double %%%s, %s\n", t, neg, dst)
		return true, false, c.storeXLowF64(ins.Args[2].Reg, "%"+t)
	}
	return false, false, nil
}

func (c *amd64Ctx) loadXVecOperand(op Operand) (string, error) {
	switch op.Kind {
	case OpReg:
		if _, ok := amd64ParseXReg(op.Reg); !ok {
			return "", fmt.Errorf("amd64: expected X register operand, got %s", op.String())
		}
		return c.loadX(op.Reg)
	case OpMem:
		addr, err := c.addrFromMem(op.Mem)
		if err != nil {
			return "", err
		}
		p := c.ptrFromAddrI64(addr)
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = load <16 x i8>, ptr %s, align 1\n", t, p)
		return "%" + t, nil
	case OpSym:
		p, err := c.ptrFromSB(op.Sym)
		if err != nil {
			return "", err
		}
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = load <16 x i8>, ptr %s, align 1\n", t, p)
		return "%" + t, nil
	default:
		return "", fmt.Errorf("amd64: unsupported X-vector operand %s", op.String())
	}
}

func (c *amd64Ctx) loadXLowI64(r Reg) (string, error) {
	xv, err := c.loadX(r)
	if err != nil {
		return "", err
	}
	bc := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = bitcast <16 x i8> %s to <2 x i64>\n", bc, xv)
	lo := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = extractelement <2 x i64> %%%s, i32 0\n", lo, bc)
	return "%" + lo, nil
}

func (c *amd64Ctx) loadXLowF64(r Reg) (string, error) {
	lo, err := c.loadXLowI64(r)
	if err != nil {
		return "", err
	}
	t := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = bitcast i64 %s to double\n", t, lo)
	return "%" + t, nil
}

func (c *amd64Ctx) storeXLowI64(r Reg, low string) error {
	cur, err := c.loadX(r)
	if err != nil {
		return err
	}
	cur2 := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = bitcast <16 x i8> %s to <2 x i64>\n", cur2, cur)
	hi := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = extractelement <2 x i64> %%%s, i32 1\n", hi, cur2)
	v0 := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = insertelement <2 x i64> undef, i64 %s, i32 0\n", v0, low)
	v1 := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = insertelement <2 x i64> %%%s, i64 %%%s, i32 1\n", v1, v0, hi)
	back := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = bitcast <2 x i64> %%%s to <16 x i8>\n", back, v1)
	return c.storeX(r, "%"+back)
}

func (c *amd64Ctx) storeXLowF64(r Reg, v string) error {
	t := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = bitcast double %s to i64\n", t, v)
	return c.storeXLowI64(r, "%"+t)
}

func (c *amd64Ctx) evalF64(op Operand) (string, error) {
	switch op.Kind {
	case OpReg:
		if _, ok := amd64ParseXReg(op.Reg); !ok {
			return "", fmt.Errorf("amd64: expected X register for f64 operand, got %s", op.String())
		}
		return c.loadXLowF64(op.Reg)
	case OpImm:
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = bitcast i64 %d to double\n", t, op.Imm)
		return "%" + t, nil
	case OpFP:
		return c.evalFPToF64(op.FPOffset)
	case OpMem:
		addr, err := c.addrFromMem(op.Mem)
		if err != nil {
			return "", err
		}
		p := c.ptrFromAddrI64(addr)
		ld := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = load double, ptr %s, align 1\n", ld, p)
		return "%" + ld, nil
	case OpSym:
		p, err := c.ptrFromSB(op.Sym)
		if err != nil {
			return "", err
		}
		ld := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = load double, ptr %s, align 1\n", ld, p)
		return "%" + ld, nil
	default:
		return "", fmt.Errorf("amd64: unsupported f64 operand %s", op.String())
	}
}

func (c *amd64Ctx) evalFPToF64(off int64) (string, error) {
	slot, ok := c.fpParam(off)
	if !ok {
		return "", fmt.Errorf("unsupported FP read slot for f64: +%d(FP)", off)
	}
	idx := slot.Index
	if idx < 0 || idx >= len(c.sig.Args) {
		return "", fmt.Errorf("FP read slot for f64: invalid arg index %d at +%d(FP)", idx, off)
	}
	arg := fmt.Sprintf("%%arg%d", idx)
	ty := slot.Type
	if slot.Field >= 0 {
		aggTy := c.sig.Args[idx]
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = extractvalue %s %s, %d\n", t, aggTy, arg, slot.Field)
		arg = "%" + t
	}
	switch ty {
	case LLVMType("double"):
		return arg, nil
	case I64:
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = bitcast i64 %s to double\n", t, arg)
		return "%" + t, nil
	default:
		return "", fmt.Errorf("FP read unsupported type %q for f64 at +%d(FP)", ty, off)
	}
}
