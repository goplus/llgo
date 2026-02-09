package plan9asm

import (
	"fmt"
	"strconv"
	"strings"
)

func (c *arm64Ctx) imm64(n int64) string {
	return strconv.FormatInt(n, 10)
}

// addrI64 computes an i64 address from a MemRef.
// If postInc is true, mem.Off is treated as post-increment (address displacement is 0).
func (c *arm64Ctx) addrI64(mem MemRef, postInc bool) (addr string, base Reg, inc int64, err error) {
	base = mem.Base
	baseVal, err := c.loadReg(base)
	if err != nil {
		return "", "", 0, err
	}
	off := mem.Off
	if postInc {
		inc = off
		off = 0
	}
	sum := baseVal
	if mem.Index != "" {
		idxVal, err := c.loadReg(mem.Index)
		if err != nil {
			return "", "", 0, err
		}
		if mem.Scale != 0 && mem.Scale != 1 {
			t := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = mul i64 %s, %s\n", t, idxVal, c.imm64(mem.Scale))
			idxVal = "%" + t
		}
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = add i64 %s, %s\n", t, sum, idxVal)
		sum = "%" + t
	}
	if off != 0 {
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = add i64 %s, %s\n", t, sum, c.imm64(off))
		sum = "%" + t
	}
	return sum, base, inc, nil
}

func (c *arm64Ctx) updatePostInc(base Reg, inc int64) error {
	if inc == 0 {
		return nil
	}
	baseVal, err := c.loadReg(base)
	if err != nil {
		return err
	}
	t := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = add i64 %s, %s\n", t, baseVal, c.imm64(inc))
	return c.storeReg(base, "%"+t)
}

func (c *arm64Ctx) loadMem(mem MemRef, bits int, postInc bool) (string, error) {
	addr, base, inc, err := c.addrI64(mem, postInc)
	if err != nil {
		return "", err
	}
	pt := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = inttoptr i64 %s to ptr\n", pt, addr)
	ptr := "%" + pt

	switch bits {
	case 64:
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = load i64, ptr %s\n", t, ptr)
		if err := c.updatePostInc(base, inc); err != nil {
			return "", err
		}
		return "%" + t, nil
	case 32:
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = load i32, ptr %s\n", t, ptr)
		z := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i32 %%%s to i64\n", z, t)
		if err := c.updatePostInc(base, inc); err != nil {
			return "", err
		}
		return "%" + z, nil
	case 16:
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = load i16, ptr %s\n", t, ptr)
		z := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i16 %%%s to i64\n", z, t)
		if err := c.updatePostInc(base, inc); err != nil {
			return "", err
		}
		return "%" + z, nil
	case 8:
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = load i8, ptr %s\n", t, ptr)
		z := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i8 %%%s to i64\n", z, t)
		if err := c.updatePostInc(base, inc); err != nil {
			return "", err
		}
		return "%" + z, nil
	default:
		return "", fmt.Errorf("arm64: unsupported load bits %d", bits)
	}
}

func (c *arm64Ctx) storeMem(mem MemRef, bits int, postInc bool, v64 string) error {
	addr, base, inc, err := c.addrI64(mem, postInc)
	if err != nil {
		return err
	}
	pt := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = inttoptr i64 %s to ptr\n", pt, addr)
	ptr := "%" + pt

	switch bits {
	case 64:
		fmt.Fprintf(c.b, "  store i64 %s, ptr %s\n", v64, ptr)
	case 32, 16, 8, 1:
		dstTy := fmt.Sprintf("i%d", bits)
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to %s\n", t, v64, dstTy)
		fmt.Fprintf(c.b, "  store %s %%%s, ptr %s\n", dstTy, t, ptr)
	default:
		return fmt.Errorf("arm64: unsupported store bits %d", bits)
	}
	return c.updatePostInc(base, inc)
}

func (c *arm64Ctx) eval64(op Operand, postInc bool) (string, error) {
	switch op.Kind {
	case OpImm:
		return c.imm64(op.Imm), nil
	case OpReg:
		return c.loadReg(op.Reg)
	case OpRegShift:
		v, err := c.loadReg(op.Reg)
		if err != nil {
			return "", err
		}
		t := c.newTmp()
		if op.ShiftRight {
			fmt.Fprintf(c.b, "  %%%s = lshr i64 %s, %d\n", t, v, op.ShiftAmount)
		} else {
			fmt.Fprintf(c.b, "  %%%s = shl i64 %s, %d\n", t, v, op.ShiftAmount)
		}
		return "%" + t, nil
	case OpFP:
		return c.evalFPValue64(op)
	case OpFPAddr:
		return c.evalFPAddr64(op)
	case OpMem:
		return c.loadMem(op.Mem, 64, postInc)
	case OpSym:
		sym := strings.TrimSpace(op.Sym)
		if strings.HasPrefix(sym, "$") {
			sym = strings.TrimPrefix(sym, "$")
		}
		p, err := c.ptrFromSB(sym)
		if err != nil {
			return "", err
		}
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = ptrtoint ptr %s to i64\n", t, p)
		return "%" + t, nil
	default:
		return "", fmt.Errorf("arm64: unsupported operand for i64: %s", op.String())
	}
}

func (c *arm64Ctx) evalFPValue64(op Operand) (string, error) {
	slot, ok := c.fpParams[op.FPOffset]
	if !ok {
		return "", fmt.Errorf("arm64: unsupported FP param slot: %s", op.String())
	}
	idx := slot.Index
	if idx < 0 || idx >= len(c.sig.Args) {
		return "", fmt.Errorf("arm64: FP slot %s invalid arg index %d", op.String(), idx)
	}
	arg := fmt.Sprintf("%%arg%d", idx)

	ty := slot.Type
	if slot.Field >= 0 {
		aggTy := c.sig.Args[idx]
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = extractvalue %s %s, %d\n", t, aggTy, arg, slot.Field)
		arg = "%" + t
	}

	switch string(ty) {
	case "i64":
		return arg, nil
	case "i32", "i16", "i8", "i1":
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext %s %s to i64\n", t, ty, arg)
		return "%" + t, nil
	case "double":
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = bitcast double %s to i64\n", t, arg)
		return "%" + t, nil
	case "float":
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = bitcast float %s to i32\n", t, arg)
		z := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i32 %%%s to i64\n", z, t)
		return "%" + z, nil
	case "ptr":
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = ptrtoint ptr %s to i64\n", t, arg)
		return "%" + t, nil
	default:
		return "", fmt.Errorf("arm64: FP slot %s unsupported arg type %q", op.String(), ty)
	}
}

func (c *arm64Ctx) evalFPAddr64(op Operand) (string, error) {
	p, ok := c.fpResAllocaOff[op.FPOffset]
	if !ok {
		return "", fmt.Errorf("arm64: unsupported FP addr slot: %s", op.String())
	}
	t := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = ptrtoint ptr %s to i64\n", t, p)
	return "%" + t, nil
}
