package plan9asm

import (
	"fmt"
	"strings"
)

type arm64EmitBr func(target string)
type arm64EmitCondBr func(cond string, target string, fall string) error

func translateFuncARM64(b *strings.Builder, fn Func, sig FuncSig, resolve func(string) string, sigs map[string]FuncSig, annotateSource bool) error {
	fmt.Fprintf(b, "define %s %s(", sig.Ret, llvmGlobal(sig.Name))
	for i, t := range sig.Args {
		if i > 0 {
			b.WriteString(", ")
		}
		fmt.Fprintf(b, "%s %%arg%d", t, i)
	}
	b.WriteString(")")
	if sig.Attrs != "" {
		b.WriteString(" " + sig.Attrs)
	}
	b.WriteString(" {\n")

	c := newARM64Ctx(b, fn, sig, resolve, sigs, annotateSource)
	if err := c.emitEntryAllocasAndArgInit(); err != nil {
		return err
	}
	if err := c.lowerBlocks(); err != nil {
		return err
	}

	b.WriteString("}\n")
	return nil
}

func (c *arm64Ctx) lowerBlocks() error {
	emitBr := func(target string) {
		fmt.Fprintf(c.b, "  br label %%%s\n", arm64LLVMBlockName(target))
	}
	emitCondBr := func(cond string, target string, fall string) error {
		cv, err := c.condValue(cond)
		if err != nil {
			return err
		}
		fmt.Fprintf(c.b, "  br i1 %s, label %%%s, label %%%s\n", cv, arm64LLVMBlockName(target), arm64LLVMBlockName(fall))
		return nil
	}

	for bi := 0; bi < len(c.blocks); bi++ {
		blk := c.blocks[bi]
		if bi != 0 {
			fmt.Fprintf(c.b, "\n%s:\n", arm64LLVMBlockName(blk.name))
		}

		terminated := false
		for _, ins := range blk.instrs {
			c.emitSourceComment(ins)
			term, err := c.lowerInstr(bi, ins, emitBr, emitCondBr)
			if err != nil {
				return err
			}
			if term {
				terminated = true
				break
			}
		}

		if terminated {
			continue
		}
		// Fallthrough to next block.
		if bi+1 < len(c.blocks) {
			emitBr(c.blocks[bi+1].name)
			continue
		}
		// Last block: implicit return zero.
		c.lowerRetZero()
	}
	return nil
}

func (c *arm64Ctx) lowerInstr(bi int, ins Instr, emitBr arm64EmitBr, emitCondBr arm64EmitCondBr) (terminated bool, err error) {
	rawOp := strings.ToUpper(string(ins.Op))
	postInc := strings.Contains(rawOp, ".P")
	baseOp := rawOp
	if dot := strings.IndexByte(baseOp, '.'); dot >= 0 {
		baseOp = baseOp[:dot]
	}
	op := Op(baseOp)

	switch op {
	case OpTEXT, OpBYTE:
		return false, nil
	case OpRET:
		return true, c.lowerRET()
	case "PCALIGN":
		return false, nil
	}

	if ok, term, err := c.lowerData(op, postInc, ins); ok {
		return term, err
	}
	if ok, term, err := c.lowerAtomic(op, ins); ok {
		return term, err
	}
	if ok, term, err := c.lowerVec(op, postInc, ins); ok {
		return term, err
	}
	if ok, term, err := c.lowerArith(op, ins); ok {
		return term, err
	}
	if ok, term, err := c.lowerFP(op, ins); ok {
		return term, err
	}
	if ok, term, err := c.lowerSyscall(op, ins); ok {
		return term, err
	}
	if ok, term, err := c.lowerCond(op, ins); ok {
		return term, err
	}
	if ok, term, err := c.lowerBranch(bi, op, ins, emitBr, emitCondBr); ok {
		return term, err
	}
	return false, fmt.Errorf("arm64: unsupported instruction %s", ins.Op)
}

func (c *arm64Ctx) lowerRET() error {
	// Prefer classic Go asm return slots if present; many stdlib asm functions
	// never materialize the return value in R0 and only store to ret+off(FP).
	if len(c.fpResults) == 0 {
		r0, err := c.loadReg(Reg("R0"))
		if err != nil {
			return err
		}
		switch c.sig.Ret {
		case Void:
			c.b.WriteString("  ret void\n")
		case I1:
			t := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i1\n", t, r0)
			fmt.Fprintf(c.b, "  ret i1 %%%s\n", t)
		case I8:
			t := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i8\n", t, r0)
			fmt.Fprintf(c.b, "  ret i8 %%%s\n", t)
		case I16:
			t := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i16\n", t, r0)
			fmt.Fprintf(c.b, "  ret i16 %%%s\n", t)
		case I32:
			t := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", t, r0)
			fmt.Fprintf(c.b, "  ret i32 %%%s\n", t)
		default:
			fmt.Fprintf(c.b, "  ret %s %s\n", c.sig.Ret, r0)
		}
		return nil
	}

	// Return from stored result slots.
	if len(c.fpResults) == 1 {
		v, err := c.loadFPResult(c.fpResults[0])
		if err != nil {
			return err
		}
		fmt.Fprintf(c.b, "  ret %s %s\n", c.sig.Ret, v)
		return nil
	}

	// Aggregate return.
	cur := "undef"
	last := ""
	for _, slot := range c.fpResults {
		v, err := c.loadFPResult(slot)
		if err != nil {
			return err
		}
		name := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = insertvalue %s %s, %s %s, %d\n", name, c.sig.Ret, cur, slot.Type, v, slot.Index)
		cur = "%" + name
		last = cur
	}
	fmt.Fprintf(c.b, "  ret %s %s\n", c.sig.Ret, last)
	return nil
}

func (c *arm64Ctx) lowerRetZero() {
	switch c.sig.Ret {
	case Void:
		c.b.WriteString("  ret void\n")
	case I32:
		c.b.WriteString("  ret i32 0\n")
	default:
		fmt.Fprintf(c.b, "  ret %s 0\n", c.sig.Ret)
	}
}
