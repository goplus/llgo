package plan9asm

import (
	"fmt"
	"strings"
)

func (c *amd64Ctx) lowerCmpBt(op Op, ins Instr) (ok bool, terminated bool, err error) {
	switch op {
	case "CMPB", "CMPW", "CMPL", "CMPQ":
		if len(ins.Args) != 2 {
			return true, false, fmt.Errorf("amd64 CMPQ expects 2 operands: %q", ins.Raw)
		}
		ty := I64
		switch op {
		case "CMPB":
			ty = I8
		case "CMPW":
			ty = I16
		case "CMPL":
			ty = I32
		case "CMPQ":
			ty = I64
		}
		a, err := c.evalIntSized(ins.Args[0], ty)
		if err != nil {
			return true, false, err
		}
		b, err := c.evalIntSized(ins.Args[1], ty)
		if err != nil {
			return true, false, err
		}
		c.setCmpFlagsSized(ty, a, b)
		return true, false, nil

	case "TESTB", "TESTW", "TESTL", "TESTQ":
		// TEST* a,b sets flags based on (a & b) without storing the result.
		if len(ins.Args) != 2 {
			return true, false, fmt.Errorf("amd64 %s expects 2 operands: %q", op, ins.Raw)
		}
		ty := I64
		switch op {
		case "TESTB":
			ty = I8
		case "TESTW":
			ty = I16
		case "TESTL":
			ty = I32
		case "TESTQ":
			ty = I64
		}
		a, err := c.evalIntSized(ins.Args[0], ty)
		if err != nil {
			return true, false, err
		}
		b, err := c.evalIntSized(ins.Args[1], ty)
		if err != nil {
			return true, false, err
		}
		c.setTestFlagsSized(ty, a, b)
		return true, false, nil

	case "BTQ":
		// BTQ $imm, reg (sets CF to selected bit)
		if len(ins.Args) != 2 || ins.Args[0].Kind != OpImm || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 BTQ expects $imm, reg: %q", ins.Raw)
		}
		v, err := c.loadReg(ins.Args[1].Reg)
		if err != nil {
			return true, false, err
		}
		amt := ins.Args[0].Imm & 63
		sh := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = lshr i64 %s, %d\n", sh, v, amt)
		and := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = and i64 %%%s, 1\n", and, sh)
		cf := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = icmp ne i64 %%%s, 0\n", cf, and)
		fmt.Fprintf(c.b, "  store i1 %%%s, ptr %s\n", cf, c.flagsCFSlot)
		return true, false, nil
	}
	return false, false, nil
}

func (c *amd64Ctx) setCmpFlagsSized(ty LLVMType, a, b string) {
	// Store Z (eq), signed-lt, and CF (unsigned-lt) derived from CMP* a,b.
	zt := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = icmp eq %s %s, %s\n", zt, ty, a, b)
	fmt.Fprintf(c.b, "  store i1 %%%s, ptr %s\n", zt, c.flagsZSlot)
	slt := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = icmp slt %s %s, %s\n", slt, ty, a, b)
	fmt.Fprintf(c.b, "  store i1 %%%s, ptr %s\n", slt, c.flagsSltSlot)
	ult := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = icmp ult %s %s, %s\n", ult, ty, a, b)
	fmt.Fprintf(c.b, "  store i1 %%%s, ptr %s\n", ult, c.flagsCFSlot)
}

func (c *amd64Ctx) setTestFlagsSized(ty LLVMType, a, b string) {
	// Z from (a&b)==0, signed-lt from (a&b)<0, CF cleared.
	and := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = and %s %s, %s\n", and, ty, a, b)
	zt := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = icmp eq %s %%%s, 0\n", zt, ty, and)
	fmt.Fprintf(c.b, "  store i1 %%%s, ptr %s\n", zt, c.flagsZSlot)
	slt := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = icmp slt %s %%%s, 0\n", slt, ty, and)
	fmt.Fprintf(c.b, "  store i1 %%%s, ptr %s\n", slt, c.flagsSltSlot)
	fmt.Fprintf(c.b, "  store i1 false, ptr %s\n", c.flagsCFSlot)
}

func (c *amd64Ctx) evalIntSized(op Operand, ty LLVMType) (string, error) {
	switch op.Kind {
	case OpImm:
		// LLVM will interpret the literal in the destination integer width.
		return fmt.Sprintf("%d", op.Imm), nil
	case OpReg:
		v64, err := c.loadReg(op.Reg)
		if err != nil {
			return "", err
		}
		if ty == I64 {
			return v64, nil
		}
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to %s\n", t, v64, ty)
		return "%" + t, nil
	case OpFP:
		v64, err := c.evalFPToI64(op.FPOffset)
		if err != nil {
			return "", err
		}
		if ty == I64 {
			return v64, nil
		}
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to %s\n", t, v64, ty)
		return "%" + t, nil
	case OpMem:
		addr, err := c.addrFromMem(op.Mem)
		if err != nil {
			return "", err
		}
		p := c.ptrFromAddrI64(addr)
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = load %s, ptr %s, align 1\n", t, ty, p)
		return "%" + t, nil
	case OpSym:
		s := strings.TrimSpace(op.Sym)
		if strings.HasSuffix(s, "(SB)") {
			p, err := c.ptrFromSB(s)
			if err != nil {
				return "", err
			}
			t := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = load %s, ptr %s, align 1\n", t, ty, p)
			return "%" + t, nil
		}
		return "", fmt.Errorf("amd64: unsupported sym int operand: %s", op.String())
	default:
		return "", fmt.Errorf("amd64: unsupported int operand: %s", op.String())
	}
}
