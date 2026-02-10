package plan9asm

import "fmt"

func (c *arm64Ctx) lowerAtomic(op Op, ins Instr) (ok bool, terminated bool, err error) {
	switch op {
	case "LDARW", "LDARB", "LDAR", "LDAXRW", "LDAXRB", "LDAXR":
		if len(ins.Args) != 2 || ins.Args[0].Kind != OpMem || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("arm64 %s expects mem, reg: %q", op, ins.Raw)
		}
		ty, align := arm64AtomicLoadStoreType(op)
		ptr, err := c.atomicMemPtr(ins.Args[0].Mem)
		if err != nil {
			return true, false, err
		}
		ld := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = load atomic %s, ptr %s seq_cst, align %d\n", ld, ty, ptr, align)
		v, err := c.atomicExtendToI64("%"+ld, ty)
		if err != nil {
			return true, false, err
		}
		if op == "LDAXRW" || op == "LDAXRB" || op == "LDAXR" {
			size, err := arm64AtomicTypeSize(ty)
			if err != nil {
				return true, false, err
			}
			fmt.Fprintf(c.b, "  store i1 true, ptr %s\n", c.exclusiveValidSlot)
			fmt.Fprintf(c.b, "  store ptr %s, ptr %s\n", ptr, c.exclusivePtrSlot)
			fmt.Fprintf(c.b, "  store i8 %d, ptr %s\n", size, c.exclusiveSizeSlot)
			fmt.Fprintf(c.b, "  store i64 %s, ptr %s\n", v, c.exclusiveValueSlot)
		}
		return true, false, c.storeReg(ins.Args[1].Reg, v)

	case "STLRW", "STLRB", "STLR":
		if len(ins.Args) != 2 || ins.Args[0].Kind != OpReg || ins.Args[1].Kind != OpMem {
			return true, false, fmt.Errorf("arm64 %s expects reg, mem: %q", op, ins.Raw)
		}
		ty, align := arm64AtomicLoadStoreType(op)
		src, err := c.loadReg(ins.Args[0].Reg)
		if err != nil {
			return true, false, err
		}
		v, err := c.atomicTruncFromI64(src, ty)
		if err != nil {
			return true, false, err
		}
		ptr, err := c.atomicMemPtr(ins.Args[1].Mem)
		if err != nil {
			return true, false, err
		}
		fmt.Fprintf(c.b, "  store atomic %s %s, ptr %s seq_cst, align %d\n", ty, v, ptr, align)
		return true, false, nil

	case "STLXRW", "STLXRB", "STLXR":
		if len(ins.Args) != 3 || ins.Args[0].Kind != OpReg || ins.Args[1].Kind != OpMem || ins.Args[2].Kind != OpReg {
			return true, false, fmt.Errorf("arm64 %s expects srcReg, mem, statusReg: %q", op, ins.Raw)
		}
		ty, align := arm64AtomicStoreExclusiveType(op)
		size, err := arm64AtomicTypeSize(ty)
		if err != nil {
			return true, false, err
		}
		src, err := c.loadReg(ins.Args[0].Reg)
		if err != nil {
			return true, false, err
		}
		newv, err := c.atomicTruncFromI64(src, ty)
		if err != nil {
			return true, false, err
		}
		ptr, err := c.atomicMemPtr(ins.Args[1].Mem)
		if err != nil {
			return true, false, err
		}

		loadedValid := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = load i1, ptr %s\n", loadedValid, c.exclusiveValidSlot)
		loadedPtr := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = load ptr, ptr %s\n", loadedPtr, c.exclusivePtrSlot)
		ptrMatch := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = icmp eq ptr %%%s, %s\n", ptrMatch, loadedPtr, ptr)
		loadedSize := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = load i8, ptr %s\n", loadedSize, c.exclusiveSizeSlot)
		sizeMatch := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = icmp eq i8 %%%s, %d\n", sizeMatch, loadedSize, size)
		precond := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = and i1 %%%s, %%%s\n", precond, loadedValid, ptrMatch)
		canTry := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = and i1 %%%s, %%%s\n", canTry, precond, sizeMatch)

		id := c.newTmp()
		tryLabel := arm64LLVMBlockName("stlxr_try_" + id)
		failLabel := arm64LLVMBlockName("stlxr_fail_" + id)
		mergeLabel := arm64LLVMBlockName("stlxr_merge_" + id)

		fmt.Fprintf(c.b, "  br i1 %%%s, label %%%s, label %%%s\n", canTry, tryLabel, failLabel)

		fmt.Fprintf(c.b, "\n%s:\n", tryLabel)
		expected64 := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = load i64, ptr %s\n", expected64, c.exclusiveValueSlot)
		expected, err := c.atomicTruncFromI64("%"+expected64, ty)
		if err != nil {
			return true, false, err
		}
		cx := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = cmpxchg ptr %s, %s %s, %s %s seq_cst seq_cst, align %d\n", cx, ptr, ty, expected, ty, newv, align)
		ok := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = extractvalue {%s, i1} %%%s, 1\n", ok, ty, cx)
		failI1 := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = xor i1 %%%s, true\n", failI1, ok)
		tryStatus := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i1 %%%s to i64\n", tryStatus, failI1)
		fmt.Fprintf(c.b, "  br label %%%s\n", mergeLabel)

		fmt.Fprintf(c.b, "\n%s:\n", failLabel)
		fmt.Fprintf(c.b, "  br label %%%s\n", mergeLabel)

		fmt.Fprintf(c.b, "\n%s:\n", mergeLabel)
		status := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = phi i64 [ %%%s, %%%s ], [ 1, %%%s ]\n", status, tryStatus, tryLabel, failLabel)
		fmt.Fprintf(c.b, "  store i1 false, ptr %s\n", c.exclusiveValidSlot)
		return true, false, c.storeReg(ins.Args[2].Reg, "%"+status)

	case "SWPALB", "SWPALW", "SWPALD":
		if len(ins.Args) != 3 || ins.Args[0].Kind != OpReg || ins.Args[1].Kind != OpMem || ins.Args[2].Kind != OpReg {
			return true, false, fmt.Errorf("arm64 %s expects srcReg, mem, dstReg: %q", op, ins.Raw)
		}
		ty, err := arm64AtomicRMWType(op)
		if err != nil {
			return true, false, err
		}
		src64, err := c.loadReg(ins.Args[0].Reg)
		if err != nil {
			return true, false, err
		}
		src, err := c.atomicTruncFromI64(src64, ty)
		if err != nil {
			return true, false, err
		}
		ptr, err := c.atomicMemPtr(ins.Args[1].Mem)
		if err != nil {
			return true, false, err
		}
		old := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = atomicrmw xchg ptr %s, %s %s seq_cst\n", old, ptr, ty, src)
		old64, err := c.atomicExtendToI64("%"+old, ty)
		if err != nil {
			return true, false, err
		}
		return true, false, c.storeReg(ins.Args[2].Reg, old64)

	case "LDADDALW", "LDADDALD", "LDORALB", "LDORALW", "LDORALD", "LDCLRALB", "LDCLRALW", "LDCLRALD":
		if len(ins.Args) != 3 || ins.Args[0].Kind != OpReg || ins.Args[1].Kind != OpMem || ins.Args[2].Kind != OpReg {
			return true, false, fmt.Errorf("arm64 %s expects srcReg, mem, dstReg: %q", op, ins.Raw)
		}
		ty, err := arm64AtomicRMWType(op)
		if err != nil {
			return true, false, err
		}
		src64, err := c.loadReg(ins.Args[0].Reg)
		if err != nil {
			return true, false, err
		}
		src, err := c.atomicTruncFromI64(src64, ty)
		if err != nil {
			return true, false, err
		}
		ptr, err := c.atomicMemPtr(ins.Args[1].Mem)
		if err != nil {
			return true, false, err
		}

		rmwo := ""
		arg := src
		switch op {
		case "LDADDALW", "LDADDALD":
			rmwo = "add"
		case "LDORALB", "LDORALW", "LDORALD":
			rmwo = "or"
		case "LDCLRALB", "LDCLRALW", "LDCLRALD":
			rmwo = "and"
			// LDCLR updates memory as: mem = mem & ~src.
			t := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = xor %s %s, -1\n", t, ty, src)
			arg = "%" + t
		}

		old := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = atomicrmw %s ptr %s, %s %s seq_cst\n", old, rmwo, ptr, ty, arg)
		old64, err := c.atomicExtendToI64("%"+old, ty)
		if err != nil {
			return true, false, err
		}
		return true, false, c.storeReg(ins.Args[2].Reg, old64)

	case "CASALW", "CASALD":
		// CASAL{W,D} expectedReg, (ptrReg), newReg
		// The expected register is updated with the loaded memory value.
		if len(ins.Args) != 3 || ins.Args[0].Kind != OpReg || ins.Args[1].Kind != OpMem || ins.Args[2].Kind != OpReg {
			return true, false, fmt.Errorf("arm64 %s expects expectedReg, mem, newReg: %q", op, ins.Raw)
		}
		ty := I32
		align := 4
		if op == "CASALD" {
			ty = I64
			align = 8
		}
		exp64, err := c.loadReg(ins.Args[0].Reg)
		if err != nil {
			return true, false, err
		}
		exp, err := c.atomicTruncFromI64(exp64, ty)
		if err != nil {
			return true, false, err
		}
		new64, err := c.loadReg(ins.Args[2].Reg)
		if err != nil {
			return true, false, err
		}
		newv, err := c.atomicTruncFromI64(new64, ty)
		if err != nil {
			return true, false, err
		}
		ptr, err := c.atomicMemPtr(ins.Args[1].Mem)
		if err != nil {
			return true, false, err
		}
		cx := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = cmpxchg ptr %s, %s %s, %s %s seq_cst seq_cst, align %d\n", cx, ptr, ty, exp, ty, newv, align)
		old := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = extractvalue {%s, i1} %%%s, 0\n", old, ty, cx)
		old64, err := c.atomicExtendToI64("%"+old, ty)
		if err != nil {
			return true, false, err
		}
		return true, false, c.storeReg(ins.Args[0].Reg, old64)
	}
	return false, false, nil
}

func (c *arm64Ctx) atomicMemPtr(mem MemRef) (string, error) {
	addr, _, _, err := c.addrI64(mem, false)
	if err != nil {
		return "", err
	}
	pt := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = inttoptr i64 %s to ptr\n", pt, addr)
	return "%" + pt, nil
}

func arm64AtomicLoadStoreType(op Op) (LLVMType, int) {
	switch op {
	case "LDARB", "STLRB":
		return I8, 1
	case "LDARW", "LDAXRW", "STLRW":
		return I32, 4
	default:
		return I64, 8
	}
}

func arm64AtomicStoreExclusiveType(op Op) (LLVMType, int) {
	switch op {
	case "STLXRB":
		return I8, 1
	case "STLXRW":
		return I32, 4
	default:
		return I64, 8
	}
}

func arm64AtomicRMWType(op Op) (LLVMType, error) {
	switch op {
	case "SWPALB", "LDORALB", "LDCLRALB":
		return I8, nil
	case "SWPALW", "LDADDALW", "LDORALW", "LDCLRALW":
		return I32, nil
	case "SWPALD", "LDADDALD", "LDORALD", "LDCLRALD":
		return I64, nil
	default:
		return "", fmt.Errorf("arm64: unsupported atomic rmw op %s", op)
	}
}

func arm64AtomicTypeSize(ty LLVMType) (int, error) {
	switch ty {
	case I8:
		return 1, nil
	case I32:
		return 4, nil
	case I64:
		return 8, nil
	default:
		return 0, fmt.Errorf("arm64: unsupported atomic type size for %s", ty)
	}
}

func (c *arm64Ctx) atomicTruncFromI64(v64 string, ty LLVMType) (string, error) {
	switch ty {
	case I64:
		return v64, nil
	case I32, I16, I8, I1:
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to %s\n", t, v64, ty)
		return "%" + t, nil
	default:
		return "", fmt.Errorf("arm64: unsupported trunc target %s", ty)
	}
}

func (c *arm64Ctx) atomicExtendToI64(v string, ty LLVMType) (string, error) {
	switch ty {
	case I64:
		return v, nil
	case I32, I16, I8, I1:
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext %s %s to i64\n", t, ty, v)
		return "%" + t, nil
	default:
		return "", fmt.Errorf("arm64: unsupported extend source %s", ty)
	}
}
