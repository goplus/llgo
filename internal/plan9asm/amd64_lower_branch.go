package plan9asm

import (
	"fmt"
	"strings"
)

func (c *amd64Ctx) lowerBranch(bi int, op Op, ins Instr, emitBr amd64EmitBr, emitCondBr amd64EmitCondBr) (ok bool, terminated bool, err error) {
	switch op {
	case "JMP",
		"JE", "JEQ", "JZ", "JNE", "JNZ",
		"JL", "JLT", "JLE", "JGE",
		"JA", "JAE", "JB", "JBE",
		"JC", "JNC":
		// ok
	default:
		return false, false, nil
	}
	if len(ins.Args) != 1 {
		return true, false, fmt.Errorf("amd64 %s expects 1 operand: %q", op, ins.Raw)
	}
	target := ""
	pcRel := false
	pcOff := int64(0)
	switch ins.Args[0].Kind {
	case OpIdent:
		target = ins.Args[0].Ident
	case OpSym:
		s := strings.TrimSpace(ins.Args[0].Sym)
		// Treat JMP foo(SB) as a tailcall to another TEXT (common in stdlib asm).
		if op == "JMP" && strings.HasSuffix(s, "(SB)") {
			if err := c.tailCallAndRet(ins.Args[0]); err != nil {
				return true, false, err
			}
			return true, true, nil
		}
		// Local labels sometimes appear with "<>" or (SB) suffix.
		s = strings.TrimSuffix(strings.TrimSuffix(s, "(SB)"), "<>")
		target = s
	case OpMem:
		// PC-relative branches like "JEQ 2(PC)" are used as a compact way to skip
		// the next instruction. Handle them by mapping the offset to our block
		// sequence (blocks are split at terminators, so the pattern works well).
		if strings.EqualFold(string(ins.Args[0].Mem.Base), "PC") {
			pcRel = true
			pcOff = ins.Args[0].Mem.Off
			break
		}
		fallthrough
	default:
		return true, false, fmt.Errorf("amd64 %s invalid target: %q", op, ins.Raw)
	}
	if !pcRel && target == "" {
		return true, false, fmt.Errorf("amd64 %s empty target: %q", op, ins.Raw)
	}

	if op == "JMP" {
		emitBr(target)
		return true, true, nil
	}

	// Conditional branch: fallthrough to the next basic block.
	if bi+1 >= len(c.blocks) {
		return true, false, fmt.Errorf("amd64 %s has no fallthrough block: %q", op, ins.Raw)
	}
	fall := c.blocks[bi+1].name
	if pcRel {
		tbi := bi + int(pcOff)
		if tbi < 0 || tbi >= len(c.blocks) {
			return true, false, fmt.Errorf("amd64 %s invalid PC-relative target %d(PC): %q", op, pcOff, ins.Raw)
		}
		target = c.blocks[tbi].name
	}

	cond := ""
	switch op {
	case "JE", "JEQ", "JZ":
		cond = c.loadFlag(c.flagsZSlot)
	case "JNE", "JNZ":
		z := c.loadFlag(c.flagsZSlot)
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = xor i1 %s, true\n", t, z)
		cond = "%" + t
	case "JL", "JLT":
		cond = c.loadFlag(c.flagsSltSlot)
	case "JGE":
		slt := c.loadFlag(c.flagsSltSlot)
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = xor i1 %s, true\n", t, slt)
		cond = "%" + t
	case "JLE":
		slt := c.loadFlag(c.flagsSltSlot)
		z := c.loadFlag(c.flagsZSlot)
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = or i1 %s, %s\n", t, slt, z)
		cond = "%" + t
	case "JB":
		cond = c.loadFlag(c.flagsCFSlot)
	case "JC":
		cond = c.loadFlag(c.flagsCFSlot)
	case "JNC":
		cf := c.loadFlag(c.flagsCFSlot)
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = xor i1 %s, true\n", t, cf)
		cond = "%" + t
	case "JAE":
		cf := c.loadFlag(c.flagsCFSlot)
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = xor i1 %s, true\n", t, cf)
		cond = "%" + t
	case "JBE":
		cf := c.loadFlag(c.flagsCFSlot)
		z := c.loadFlag(c.flagsZSlot)
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = or i1 %s, %s\n", t, cf, z)
		cond = "%" + t
	case "JA":
		cf := c.loadFlag(c.flagsCFSlot)
		z := c.loadFlag(c.flagsZSlot)
		t1 := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = or i1 %s, %s\n", t1, cf, z)
		t2 := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = xor i1 %%%s, true\n", t2, t1)
		cond = "%" + t2
	default:
		return true, false, fmt.Errorf("amd64: unsupported branch %s", op)
	}

	if err := emitCondBr(cond, target, fall); err != nil {
		return true, false, err
	}
	return true, true, nil
}

func (c *amd64Ctx) tailCallAndRet(symOp Operand) error {
	if symOp.Kind != OpSym {
		return fmt.Errorf("amd64 tailcall expects sym operand, got %s", symOp.String())
	}
	s := strings.TrimSpace(symOp.Sym)
	if !strings.HasSuffix(s, "(SB)") {
		return fmt.Errorf("amd64 tailcall expects (SB) symbol, got %q", s)
	}
	s = strings.TrimSuffix(s, "(SB)")
	callee := c.resolve(s)
	csig, ok := c.sigs[callee]
	if !ok {
		// Cross-package trampoline (e.g. sync/atomic -> internal/runtime/atomic).
		// If we don't have an explicit signature, fall back to caller signature.
		csig = c.sig
		csig.Name = callee
	}

	args := make([]string, 0, len(csig.Args))
	for i := 0; i < len(csig.Args); i++ {
		// If ArgRegs is empty, default to register-based passing (ABIInternal-ish)
		// because most intra-asm tailcalls depend on explicit register setup.
		//
		// Exception: for tailcalls to Go functions with an identical signature,
		// use the current function's LLVM args. This matches stdlib patterns like
		// "JMP ·countGeneric(SB)" that happen before any register shuffling and
		// are stack-ABI tailcalls in the original asm.
		useLLVMArgs := false
		if len(csig.ArgRegs) == 0 && len(csig.Args) == len(c.sig.Args) && csig.Ret == c.sig.Ret {
			same := true
			for j := 0; j < len(csig.Args); j++ {
				if csig.Args[j] != c.sig.Args[j] {
					same = false
					break
				}
			}
			useLLVMArgs = same
		}
		if useLLVMArgs {
			if i >= len(c.sig.Args) {
				return fmt.Errorf("amd64 tailcall %q: need %d args, caller has %d", callee, len(csig.Args), len(c.sig.Args))
			}
			fromTy := c.sig.Args[i]
			fromVal := fmt.Sprintf("%%arg%d", i)
			toTy := csig.Args[i]
			if fromTy == toTy {
				args = append(args, fmt.Sprintf("%s %s", toTy, fromVal))
				continue
			}
			t := c.newTmp()
			switch {
			case fromTy == I64 && (toTy == I1 || toTy == I8 || toTy == I16 || toTy == I32):
				fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to %s\n", t, fromVal, toTy)
				args = append(args, fmt.Sprintf("%s %%%s", toTy, t))
			case (fromTy == I1 || fromTy == I8 || fromTy == I16 || fromTy == I32) && toTy == I64:
				fmt.Fprintf(c.b, "  %%%s = zext %s %s to i64\n", t, fromTy, fromVal)
				args = append(args, fmt.Sprintf("i64 %%%s", t))
			case fromTy == I64 && toTy == Ptr:
				fmt.Fprintf(c.b, "  %%%s = inttoptr i64 %s to ptr\n", t, fromVal)
				args = append(args, fmt.Sprintf("ptr %%%s", t))
			case fromTy == Ptr && toTy == I64:
				fmt.Fprintf(c.b, "  %%%s = ptrtoint ptr %s to i64\n", t, fromVal)
				args = append(args, fmt.Sprintf("i64 %%%s", t))
			default:
				return fmt.Errorf("amd64 tailcall %q: unsupported arg cast %s -> %s", callee, fromTy, toTy)
			}
			continue
		}

		r := Reg("")
		if i < len(csig.ArgRegs) {
			r = csig.ArgRegs[i]
		} else {
			// Default SysV-ish register order: DI, SI, DX, CX, R8, R9.
			x86 := []Reg{DI, SI, DX, CX, Reg("R8"), Reg("R9")}
			if i >= len(x86) {
				return fmt.Errorf("amd64 tailcall: missing arg reg for %q arg %d", callee, i)
			}
			r = x86[i]
		}
		v, err := c.loadReg(r)
		if err != nil {
			return err
		}
		switch csig.Args[i] {
		case I64:
			args = append(args, "i64 "+v)
		case I1:
			t := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i1\n", t, v)
			args = append(args, "i1 %"+t)
		case I8:
			t := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i8\n", t, v)
			args = append(args, "i8 %"+t)
		case I16:
			t := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i16\n", t, v)
			args = append(args, "i16 %"+t)
		case I32:
			t := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", t, v)
			args = append(args, "i32 %"+t)
		case Ptr:
			t := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = inttoptr i64 %s to ptr\n", t, v)
			args = append(args, "ptr %"+t)
		default:
			return fmt.Errorf("amd64 tailcall unsupported arg type %q", csig.Args[i])
		}
	}

	if csig.Ret == Void {
		fmt.Fprintf(c.b, "  call void %s(%s)\n", llvmGlobal(callee), strings.Join(args, ", "))
		// If caller returns via classic FP result slots, return from those after the call.
		if len(c.fpResults) > 0 {
			return c.lowerRET()
		}
		if c.sig.Ret == Void {
			c.b.WriteString("  ret void\n")
			return nil
		}
		return fmt.Errorf("amd64 tailcall to %q returns void but caller expects %s", callee, c.sig.Ret)
	}

	t := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = call %s %s(%s)\n", t, csig.Ret, llvmGlobal(callee), strings.Join(args, ", "))
	if c.sig.Ret != csig.Ret {
		return fmt.Errorf("amd64 tailcall return type mismatch for %q: caller %s, callee %s", callee, c.sig.Ret, csig.Ret)
	}
	fmt.Fprintf(c.b, "  ret %s %%%s\n", c.sig.Ret, t)
	return nil
}
