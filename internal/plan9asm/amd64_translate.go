package plan9asm

import (
	"fmt"
	"strings"
)

type amd64EmitBr func(target string)
type amd64EmitCondBr func(cond string, target string, fall string) error

func translateFuncAMD64(b *strings.Builder, fn Func, sig FuncSig, resolve func(string) string, sigs map[string]FuncSig, annotateSource bool) error {
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

	c := newAMD64Ctx(b, fn, sig, resolve, sigs, annotateSource)
	if err := c.emitEntryAllocas(); err != nil {
		return err
	}
	if err := c.lowerBlocks(); err != nil {
		return err
	}

	b.WriteString("}\n")
	return nil
}

func (c *amd64Ctx) lowerBlocks() error {
	emitBr := func(target string) {
		fmt.Fprintf(c.b, "  br label %%%s\n", amd64LLVMBlockName(target))
	}
	emitCondBr := func(cond string, target string, fall string) error {
		fmt.Fprintf(c.b, "  br i1 %s, label %%%s, label %%%s\n", cond, amd64LLVMBlockName(target), amd64LLVMBlockName(fall))
		return nil
	}

	for bi := 0; bi < len(c.blocks); bi++ {
		blk := c.blocks[bi]
		if bi != 0 {
			fmt.Fprintf(c.b, "\n%s:\n", amd64LLVMBlockName(blk.name))
		}

		terminated := false
		for ii, ins := range blk.instrs {
			c.emitSourceComment(ins)
			term, err := c.lowerInstr(bi, ii, ins, emitBr, emitCondBr)
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
		// Fallthrough.
		if bi+1 < len(c.blocks) {
			emitBr(c.blocks[bi+1].name)
			continue
		}
		c.lowerRetZero()
	}
	return nil
}

func (c *amd64Ctx) lowerInstr(bi int, ii int, ins Instr, emitBr amd64EmitBr, emitCondBr amd64EmitCondBr) (terminated bool, err error) {
	op := strings.ToUpper(string(ins.Op))
	switch Op(op) {
	case OpTEXT, OpBYTE:
		return false, nil
	case OpRET:
		return true, c.lowerRET()
	case "PCALIGN":
		// Alignment directive emitted by stdlib asm; no semantic effect in our IR.
		return false, nil
	}

	if ok, term, err := c.lowerBranch(bi, ii, Op(op), ins, emitBr, emitCondBr); ok {
		return term, err
	}
	if ok, term, err := c.lowerCmpBt(Op(op), ins); ok {
		return term, err
	}
	if ok, term, err := c.lowerFP(Op(op), ins); ok {
		return term, err
	}
	if ok, term, err := c.lowerCrc32(Op(op), ins); ok {
		return term, err
	}
	if ok, term, err := c.lowerVec(Op(op), ins); ok {
		return term, err
	}
	if ok, term, err := c.lowerAtomic(Op(op), ins); ok {
		return term, err
	}
	if ok, term, err := c.lowerSyscall(Op(op), ins); ok {
		return term, err
	}
	if ok, term, err := c.lowerMov(Op(op), ins); ok {
		return term, err
	}
	if ok, term, err := c.lowerArith(Op(op), ins); ok {
		return term, err
	}
	return false, fmt.Errorf("amd64: unsupported instruction %s", ins.Op)
}

func (c *amd64Ctx) lowerRET() error {
	// Prefer classic Go asm return slots if present.
	if len(c.fpResults) == 0 {
		rax, err := c.loadReg(AX)
		if err != nil {
			return err
		}
		switch c.sig.Ret {
		case Void:
			c.b.WriteString("  ret void\n")
		case I1:
			t := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i1\n", t, rax)
			fmt.Fprintf(c.b, "  ret i1 %%%s\n", t)
		case I8:
			t := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i8\n", t, rax)
			fmt.Fprintf(c.b, "  ret i8 %%%s\n", t)
		case I16:
			t := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i16\n", t, rax)
			fmt.Fprintf(c.b, "  ret i16 %%%s\n", t)
		case I32:
			t := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", t, rax)
			fmt.Fprintf(c.b, "  ret i32 %%%s\n", t)
		default:
			fmt.Fprintf(c.b, "  ret %s %s\n", c.sig.Ret, rax)
		}
		return nil
	}

	if len(c.fpResults) == 1 {
		slot := c.fpResults[0]
		var v string
		var err error
		if c.fpResWritten[slot.Index] || c.fpResAddrTaken[slot.Index] {
			v, err = c.loadFPResult(slot)
		} else {
			v, err = c.loadRetSlotFallback(slot)
		}
		if err != nil {
			return err
		}
		fmt.Fprintf(c.b, "  ret %s %s\n", c.sig.Ret, v)
		return nil
	}

	cur := "undef"
	last := ""
	for _, slot := range c.fpResults {
		var v string
		var err error
		if c.fpResWritten[slot.Index] || c.fpResAddrTaken[slot.Index] {
			v, err = c.loadFPResult(slot)
		} else {
			v, err = c.loadRetSlotFallback(slot)
		}
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

func (c *amd64Ctx) lowerRetZero() {
	switch c.sig.Ret {
	case Void:
		c.b.WriteString("  ret void\n")
	case I32:
		c.b.WriteString("  ret i32 0\n")
	default:
		fmt.Fprintf(c.b, "  ret %s 0\n", c.sig.Ret)
	}
}
