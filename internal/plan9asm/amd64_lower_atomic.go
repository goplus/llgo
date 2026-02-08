package plan9asm

import "fmt"

func (c *amd64Ctx) lowerAtomic(op Op, ins Instr) (ok bool, terminated bool, err error) {
	switch op {
	case "LOCK":
		// LOCK is a prefix in Plan 9 syntax. Our lowering emits atomic IR for
		// the following memory RMW instruction, so the prefix itself is a no-op.
		return true, false, nil

	case "CMPXCHGL", "CMPXCHGQ":
		if len(ins.Args) != 2 || ins.Args[1].Kind != OpMem {
			return true, false, fmt.Errorf("amd64 %s expects src, mem: %q", op, ins.Raw)
		}
		ty := I32
		align := 4
		if op == "CMPXCHGQ" {
			ty = I64
			align = 8
		}

		expAX, err := c.loadReg(AX)
		if err != nil {
			return true, false, err
		}
		exp, err := c.amd64AtomicTruncFromI64(expAX, ty)
		if err != nil {
			return true, false, err
		}
		newv64, err := c.evalI64(ins.Args[0])
		if err != nil {
			return true, false, err
		}
		newv, err := c.amd64AtomicTruncFromI64(newv64, ty)
		if err != nil {
			return true, false, err
		}
		ptr, err := c.amd64AtomicPtrFromMem(ins.Args[1].Mem)
		if err != nil {
			return true, false, err
		}
		cx := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = cmpxchg ptr %s, %s %s, %s %s seq_cst seq_cst, align %d\n", cx, ptr, ty, exp, ty, newv, align)
		old := c.newTmp()
		okv := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = extractvalue {%s, i1} %%%s, 0\n", old, ty, cx)
		fmt.Fprintf(c.b, "  %%%s = extractvalue {%s, i1} %%%s, 1\n", okv, ty, cx)
		old64, err := c.amd64AtomicExtendToI64("%"+old, ty)
		if err != nil {
			return true, false, err
		}
		if err := c.storeReg(AX, old64); err != nil {
			return true, false, err
		}
		fmt.Fprintf(c.b, "  store i1 %%%s, ptr %s\n", okv, c.flagsZSlot)
		return true, false, nil

	case "XADDL", "XADDQ":
		if len(ins.Args) != 2 || ins.Args[1].Kind != OpMem {
			return true, false, fmt.Errorf("amd64 %s expects srcReg, mem: %q", op, ins.Raw)
		}
		srcReg := ins.Args[0]
		if srcReg.Kind != OpReg {
			return true, false, fmt.Errorf("amd64 %s expects register src: %q", op, ins.Raw)
		}
		ty := I32
		if op == "XADDQ" {
			ty = I64
		}
		src64, err := c.loadReg(srcReg.Reg)
		if err != nil {
			return true, false, err
		}
		src, err := c.amd64AtomicTruncFromI64(src64, ty)
		if err != nil {
			return true, false, err
		}
		ptr, err := c.amd64AtomicPtrFromMem(ins.Args[1].Mem)
		if err != nil {
			return true, false, err
		}
		old := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = atomicrmw add ptr %s, %s %s seq_cst\n", old, ptr, ty, src)
		old64, err := c.amd64AtomicExtendToI64("%"+old, ty)
		if err != nil {
			return true, false, err
		}
		return true, false, c.storeReg(srcReg.Reg, old64)

	case "XCHGB", "XCHGL", "XCHGQ":
		if len(ins.Args) != 2 || ins.Args[1].Kind != OpMem {
			return true, false, fmt.Errorf("amd64 %s expects srcReg, mem: %q", op, ins.Raw)
		}
		srcReg := ins.Args[0]
		if srcReg.Kind != OpReg {
			return true, false, fmt.Errorf("amd64 %s expects register src: %q", op, ins.Raw)
		}
		ty := I8
		switch op {
		case "XCHGL":
			ty = I32
		case "XCHGQ":
			ty = I64
		}
		src64, err := c.loadReg(srcReg.Reg)
		if err != nil {
			return true, false, err
		}
		src, err := c.amd64AtomicTruncFromI64(src64, ty)
		if err != nil {
			return true, false, err
		}
		ptr, err := c.amd64AtomicPtrFromMem(ins.Args[1].Mem)
		if err != nil {
			return true, false, err
		}
		old := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = atomicrmw xchg ptr %s, %s %s seq_cst\n", old, ptr, ty, src)
		old64, err := c.amd64AtomicExtendToI64("%"+old, ty)
		if err != nil {
			return true, false, err
		}
		return true, false, c.storeReg(srcReg.Reg, old64)

	case "ORB", "ANDB", "ORL", "ANDL", "ORQ", "ANDQ":
		if len(ins.Args) != 2 || ins.Args[1].Kind != OpMem {
			return false, false, nil
		}
		ty := I8
		switch op {
		case "ORL", "ANDL":
			ty = I32
		case "ORQ", "ANDQ":
			ty = I64
		}
		src64, err := c.evalI64(ins.Args[0])
		if err != nil {
			return true, false, err
		}
		src, err := c.amd64AtomicTruncFromI64(src64, ty)
		if err != nil {
			return true, false, err
		}
		ptr, err := c.amd64AtomicPtrFromMem(ins.Args[1].Mem)
		if err != nil {
			return true, false, err
		}
		rmw := "or"
		if op == "ANDB" || op == "ANDL" || op == "ANDQ" {
			rmw = "and"
		}
		tmp := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = atomicrmw %s ptr %s, %s %s seq_cst\n", tmp, rmw, ptr, ty, src)
		return true, false, nil
	}
	return false, false, nil
}

func (c *amd64Ctx) amd64AtomicPtrFromMem(mem MemRef) (string, error) {
	addr, err := c.addrFromMem(mem)
	if err != nil {
		return "", err
	}
	return c.ptrFromAddrI64(addr), nil
}

func (c *amd64Ctx) amd64AtomicTruncFromI64(v64 string, ty LLVMType) (string, error) {
	switch ty {
	case I64:
		return v64, nil
	case I32, I16, I8, I1:
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to %s\n", t, v64, ty)
		return "%" + t, nil
	default:
		return "", fmt.Errorf("amd64: unsupported trunc target %s", ty)
	}
}

func (c *amd64Ctx) amd64AtomicExtendToI64(v string, ty LLVMType) (string, error) {
	switch ty {
	case I64:
		return v, nil
	case I32, I16, I8, I1:
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext %s %s to i64\n", t, ty, v)
		return "%" + t, nil
	default:
		return "", fmt.Errorf("amd64: unsupported extend source %s", ty)
	}
}
