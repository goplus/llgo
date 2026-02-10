package plan9asm

import (
	"fmt"
	"math"
	"strconv"
	"strings"
)

func (c *arm64Ctx) lowerFP(op Op, ins Instr) (ok bool, terminated bool, err error) {
	switch op {
	case "FMOVD":
		if len(ins.Args) != 2 {
			return true, false, fmt.Errorf("arm64 FMOVD expects 2 operands: %q", ins.Raw)
		}
		bits, err := c.evalFMOVDBits(ins.Args[0])
		if err != nil {
			return true, false, err
		}
		switch ins.Args[1].Kind {
		case OpReg:
			return true, false, c.storeReg(ins.Args[1].Reg, bits)
		case OpFP:
			return true, false, c.storeFPResult64(ins.Args[1].FPOffset, bits)
		default:
			return true, false, fmt.Errorf("arm64 FMOVD unsupported dst: %q", ins.Raw)
		}

	case "FCMPD":
		// FCMPD src, dst => compare dst ? src (same operand order convention as CMP/SUB).
		if len(ins.Args) != 2 {
			return true, false, fmt.Errorf("arm64 FCMPD expects 2 operands: %q", ins.Raw)
		}
		src, err := c.evalF64(ins.Args[0])
		if err != nil {
			return true, false, err
		}
		dst, err := c.evalF64(ins.Args[1])
		if err != nil {
			return true, false, err
		}
		eq := c.newTmp()
		lt := c.newTmp()
		gt := c.newTmp()
		uno := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = fcmp oeq double %s, %s\n", eq, dst, src)
		fmt.Fprintf(c.b, "  %%%s = fcmp olt double %s, %s\n", lt, dst, src)
		fmt.Fprintf(c.b, "  %%%s = fcmp ogt double %s, %s\n", gt, dst, src)
		fmt.Fprintf(c.b, "  %%%s = fcmp uno double %s, %s\n", uno, dst, src)
		// AArch64 FCMP flags model:
		// - unordered: N=0 Z=0 C=1 V=1
		// - lt: N=1 Z=0 C=0 V=0
		// - eq: N=0 Z=1 C=1 V=0
		// - gt: N=0 Z=0 C=1 V=0
		c01 := c.newTmp()
		cf := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = or i1 %%%s, %%%s\n", c01, gt, eq)
		fmt.Fprintf(c.b, "  %%%s = or i1 %%%s, %%%s\n", cf, c01, uno)
		fmt.Fprintf(c.b, "  store i1 %%%s, ptr %s\n", lt, c.flagsNSlot)
		fmt.Fprintf(c.b, "  store i1 %%%s, ptr %s\n", eq, c.flagsZSlot)
		fmt.Fprintf(c.b, "  store i1 %%%s, ptr %s\n", cf, c.flagsCSlot)
		fmt.Fprintf(c.b, "  store i1 %%%s, ptr %s\n", uno, c.flagsVSlot)
		c.flagsWritten = true
		return true, false, nil

	case "FCSELD":
		// FCSELD cond, a, b, dst
		if len(ins.Args) != 4 || ins.Args[0].Kind != OpIdent {
			return true, false, fmt.Errorf("arm64 FCSELD expects cond, a, b, dst: %q", ins.Raw)
		}
		a, err := c.evalF64(ins.Args[1])
		if err != nil {
			return true, false, err
		}
		bv, err := c.evalF64(ins.Args[2])
		if err != nil {
			return true, false, err
		}
		cv, err := c.condValue(ins.Args[0].Ident)
		if err != nil {
			return true, false, err
		}
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = select i1 %s, double %s, double %s\n", t, cv, a, bv)
		return true, false, c.storeF64(ins.Args[3], "%"+t)

	case "FADDD", "FSUBD", "FMULD", "FDIVD", "FMAXD", "FMIND":
		var src, dst string
		var dstOp Operand
		switch len(ins.Args) {
		case 2:
			src, err = c.evalF64(ins.Args[0])
			if err != nil {
				return true, false, err
			}
			dst, err = c.evalF64(ins.Args[1])
			if err != nil {
				return true, false, err
			}
			dstOp = ins.Args[1]
		case 3:
			src, err = c.evalF64(ins.Args[0])
			if err != nil {
				return true, false, err
			}
			dst, err = c.evalF64(ins.Args[1])
			if err != nil {
				return true, false, err
			}
			dstOp = ins.Args[2]
		default:
			return true, false, fmt.Errorf("arm64 %s expects 2 or 3 operands: %q", op, ins.Raw)
		}
		t := c.newTmp()
		switch op {
		case "FADDD":
			fmt.Fprintf(c.b, "  %%%s = fadd double %s, %s\n", t, dst, src)
		case "FSUBD":
			fmt.Fprintf(c.b, "  %%%s = fsub double %s, %s\n", t, dst, src)
		case "FMULD":
			fmt.Fprintf(c.b, "  %%%s = fmul double %s, %s\n", t, dst, src)
		case "FDIVD":
			fmt.Fprintf(c.b, "  %%%s = fdiv double %s, %s\n", t, dst, src)
		case "FMAXD":
			fmt.Fprintf(c.b, "  %%%s = call double @llvm.maxnum.f64(double %s, double %s)\n", t, dst, src)
		case "FMIND":
			fmt.Fprintf(c.b, "  %%%s = call double @llvm.minnum.f64(double %s, double %s)\n", t, dst, src)
		}
		return true, false, c.storeF64(dstOp, "%"+t)

	case "FMADDD", "FMSUBD", "FNMSUBD":
		// {FMA,FMSUB,FNMSUB}D a, b, c, dst
		if len(ins.Args) != 4 {
			return true, false, fmt.Errorf("arm64 %s expects 4 operands: %q", op, ins.Raw)
		}
		a, err := c.evalF64(ins.Args[0])
		if err != nil {
			return true, false, err
		}
		b, err := c.evalF64(ins.Args[1])
		if err != nil {
			return true, false, err
		}
		cv, err := c.evalF64(ins.Args[2])
		if err != nil {
			return true, false, err
		}
		m := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = fmul double %s, %s\n", m, a, cv)
		t := c.newTmp()
		switch op {
		case "FMADDD":
			// b + a*c
			fmt.Fprintf(c.b, "  %%%s = fadd double %s, %%%s\n", t, b, m)
		case "FMSUBD":
			// b - a*c
			fmt.Fprintf(c.b, "  %%%s = fsub double %s, %%%s\n", t, b, m)
		case "FNMSUBD":
			// a*c - b
			fmt.Fprintf(c.b, "  %%%s = fsub double %%%s, %s\n", t, m, b)
		}
		return true, false, c.storeF64(ins.Args[3], "%"+t)

	case "FNMULD":
		// FNMULD src, dst (or src1, src2, dst): dst = -(dst*src) or -(src2*src1).
		var src, dst string
		var dstOp Operand
		switch len(ins.Args) {
		case 2:
			src, err = c.evalF64(ins.Args[0])
			if err != nil {
				return true, false, err
			}
			dst, err = c.evalF64(ins.Args[1])
			if err != nil {
				return true, false, err
			}
			dstOp = ins.Args[1]
		case 3:
			src, err = c.evalF64(ins.Args[0])
			if err != nil {
				return true, false, err
			}
			dst, err = c.evalF64(ins.Args[1])
			if err != nil {
				return true, false, err
			}
			dstOp = ins.Args[2]
		default:
			return true, false, fmt.Errorf("arm64 FNMULD expects 2 or 3 operands: %q", ins.Raw)
		}
		m := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = fmul double %s, %s\n", m, dst, src)
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = fneg double %%%s\n", t, m)
		return true, false, c.storeF64(dstOp, "%"+t)

	case "FABSD":
		if len(ins.Args) != 2 {
			return true, false, fmt.Errorf("arm64 FABSD expects 2 operands: %q", ins.Raw)
		}
		src, err := c.evalF64(ins.Args[0])
		if err != nil {
			return true, false, err
		}
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = call double @llvm.fabs.f64(double %s)\n", t, src)
		return true, false, c.storeF64(ins.Args[1], "%"+t)

	case "FRINTZD", "FRINTMD", "FRINTPD":
		if len(ins.Args) != 2 {
			return true, false, fmt.Errorf("arm64 %s expects 2 operands: %q", op, ins.Raw)
		}
		src, err := c.evalF64(ins.Args[0])
		if err != nil {
			return true, false, err
		}
		t := c.newTmp()
		switch op {
		case "FRINTZD":
			fmt.Fprintf(c.b, "  %%%s = call double @llvm.trunc.f64(double %s)\n", t, src)
		case "FRINTMD":
			fmt.Fprintf(c.b, "  %%%s = call double @llvm.floor.f64(double %s)\n", t, src)
		case "FRINTPD":
			fmt.Fprintf(c.b, "  %%%s = call double @llvm.ceil.f64(double %s)\n", t, src)
		}
		return true, false, c.storeF64(ins.Args[1], "%"+t)

	case "FCVTZSD":
		// FCVTZSD src, dstReg
		if len(ins.Args) != 2 || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("arm64 FCVTZSD expects src, dstReg: %q", ins.Raw)
		}
		src, err := c.evalF64(ins.Args[0])
		if err != nil {
			return true, false, err
		}
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = fptosi double %s to i64\n", t, src)
		return true, false, c.storeReg(ins.Args[1].Reg, "%"+t)

	case "SCVTFD":
		// SCVTFD srcReg, dst
		if len(ins.Args) != 2 || ins.Args[0].Kind != OpReg {
			return true, false, fmt.Errorf("arm64 SCVTFD expects srcReg, dst: %q", ins.Raw)
		}
		src, err := c.loadReg(ins.Args[0].Reg)
		if err != nil {
			return true, false, err
		}
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = sitofp i64 %s to double\n", t, src)
		return true, false, c.storeF64(ins.Args[1], "%"+t)
	}
	return false, false, nil
}

func (c *arm64Ctx) evalFMOVDBits(op Operand) (string, error) {
	if op.Kind == OpSym && strings.HasPrefix(op.Sym, "$") {
		if fv, ok := arm64ParseDollarFloat(op.Sym); ok {
			u := math.Float64bits(fv)
			return strconv.FormatInt(int64(u), 10), nil
		}
		if iv, ok := arm64ParseDollarInt64(op.Sym); ok {
			return strconv.FormatInt(iv, 10), nil
		}
	}
	return c.eval64(op, false)
}

func (c *arm64Ctx) evalF64(op Operand) (string, error) {
	switch op.Kind {
	case OpReg:
		v64, err := c.loadReg(op.Reg)
		if err != nil {
			return "", err
		}
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = bitcast i64 %s to double\n", t, v64)
		return "%" + t, nil
	case OpImm:
		return formatLLVMFloat64Literal(float64(op.Imm)), nil
	case OpSym:
		if strings.HasPrefix(op.Sym, "$") {
			if fv, ok := arm64ParseDollarFloat(op.Sym); ok {
				return formatLLVMFloat64Literal(fv), nil
			}
			if iv, ok := arm64ParseDollarInt64(op.Sym); ok {
				return formatLLVMFloat64Literal(float64(iv)), nil
			}
		}
		return "", fmt.Errorf("arm64: unsupported f64 immediate %q", op.String())
	case OpFP:
		slot, ok := c.fpParams[op.FPOffset]
		if !ok {
			return "", fmt.Errorf("arm64: unsupported FP param slot: %s", op.String())
		}
		idx := slot.Index
		if idx < 0 || idx >= len(c.sig.Args) {
			return "", fmt.Errorf("arm64: FP slot %s invalid arg index %d", op.String(), idx)
		}
		arg := fmt.Sprintf("%%arg%d", idx)
		if slot.Field >= 0 {
			aggTy := c.sig.Args[idx]
			t := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = extractvalue %s %s, %d\n", t, aggTy, arg, slot.Field)
			arg = "%" + t
		}
		switch slot.Type {
		case LLVMType("double"):
			return arg, nil
		case LLVMType("float"):
			t := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = fpext float %s to double\n", t, arg)
			return "%" + t, nil
		case I64:
			t := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = bitcast i64 %s to double\n", t, arg)
			return "%" + t, nil
		case I32, I16, I8, I1:
			t := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = zext %s %s to i64\n", t, slot.Type, arg)
			b := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = bitcast i64 %%%s to double\n", b, t)
			return "%" + b, nil
		case Ptr:
			t := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = ptrtoint ptr %s to i64\n", t, arg)
			b := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = bitcast i64 %%%s to double\n", b, t)
			return "%" + b, nil
		default:
			return "", fmt.Errorf("arm64: unsupported FP slot type %s", slot.Type)
		}
	default:
		return "", fmt.Errorf("arm64: unsupported f64 operand %s", op.String())
	}
}

func (c *arm64Ctx) storeF64(dst Operand, v string) error {
	switch dst.Kind {
	case OpReg:
		b := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = bitcast double %s to i64\n", b, v)
		return c.storeReg(dst.Reg, "%"+b)
	case OpFP:
		b := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = bitcast double %s to i64\n", b, v)
		return c.storeFPResult64(dst.FPOffset, "%"+b)
	default:
		return fmt.Errorf("arm64: unsupported f64 dst operand %s", dst.String())
	}
}

func arm64ParseDollarFloat(sym string) (float64, bool) {
	if !strings.HasPrefix(sym, "$") {
		return 0, false
	}
	s := strings.TrimSpace(strings.TrimPrefix(sym, "$"))
	if s == "" {
		return 0, false
	}
	// Integer-looking immediates are handled by arm64ParseDollarInt64.
	if strings.HasPrefix(s, "0x") || strings.HasPrefix(s, "0X") {
		return 0, false
	}
	// Heuristic: require decimal/exponent marker.
	if !strings.ContainsAny(s, ".eE") {
		return 0, false
	}
	v, err := strconv.ParseFloat(s, 64)
	if err != nil {
		return 0, false
	}
	return v, true
}

func arm64ParseDollarInt64(sym string) (int64, bool) {
	if !strings.HasPrefix(sym, "$") {
		return 0, false
	}
	s := strings.TrimSpace(strings.TrimPrefix(sym, "$"))
	if s == "" {
		return 0, false
	}
	if v, err := strconv.ParseInt(s, 0, 64); err == nil {
		return v, true
	}
	if uv, err := strconv.ParseUint(s, 0, 64); err == nil {
		return int64(uv), true
	}
	return 0, false
}
