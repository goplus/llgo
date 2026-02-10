package plan9asm

import (
	"fmt"
	"strings"
)

func (c *amd64Ctx) lowerBranch(bi int, ii int, op Op, ins Instr, emitBr amd64EmitBr, emitCondBr amd64EmitCondBr) (ok bool, terminated bool, err error) {
	switch op {
	case "CALL":
		if len(ins.Args) != 1 {
			return true, false, fmt.Errorf("amd64 CALL expects 1 operand: %q", ins.Raw)
		}
		switch ins.Args[0].Kind {
		case OpReg:
			// Indirect call via register (used by stdlib vdso/syscall stubs).
			addr, err := c.loadReg(ins.Args[0].Reg)
			if err != nil {
				return true, false, err
			}
			fptr := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = inttoptr i64 %s to ptr\n", fptr, addr)
			di, _ := c.loadReg(DI)
			si, _ := c.loadReg(SI)
			dx, _ := c.loadReg(DX)
			cx, _ := c.loadReg(CX)
			r8, _ := c.loadReg(Reg("R8"))
			r9, _ := c.loadReg(Reg("R9"))
			ret := c.newTmp()
			// Model as a generic C-ABI style call carrying register arguments.
			fmt.Fprintf(c.b, "  %%%s = call i64 %%%s(i64 %s, i64 %s, i64 %s, i64 %s, i64 %s, i64 %s)\n", ret, fptr, di, si, dx, cx, r8, r9)
			if err := c.storeReg(AX, "%"+ret); err != nil {
				return true, false, err
			}
			return true, false, nil
		case OpSym:
			if err := c.callSym(ins.Args[0]); err != nil {
				return true, false, err
			}
			return true, false, nil
		default:
			return true, false, fmt.Errorf("amd64 CALL expects reg or symbol(SB) target: %q", ins.Raw)
		}

	case "JMP",
		"JE", "JEQ", "JZ", "JNE", "JNZ",
		"JL", "JLT", "JLE", "JG", "JGT", "JGE",
		"JA", "JAE", "JB", "JBE", "JLS",
		"JC", "JNC", "JCC":
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
		cur := c.blockBase[bi] + ii
		tgt := cur + int(pcOff)
		tbi, ok := c.blockByIdx[tgt]
		if !ok || tbi < 0 || tbi >= len(c.blocks) {
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
	case "JG", "JGT":
		slt := c.loadFlag(c.flagsSltSlot)
		z := c.loadFlag(c.flagsZSlot)
		t1 := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = or i1 %s, %s\n", t1, slt, z)
		t2 := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = xor i1 %%%s, true\n", t2, t1)
		cond = "%" + t2
	case "JB":
		cond = c.loadFlag(c.flagsCFSlot)
	case "JC":
		cond = c.loadFlag(c.flagsCFSlot)
	case "JNC", "JCC":
		cf := c.loadFlag(c.flagsCFSlot)
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = xor i1 %s, true\n", t, cf)
		cond = "%" + t
	case "JAE":
		cf := c.loadFlag(c.flagsCFSlot)
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = xor i1 %s, true\n", t, cf)
		cond = "%" + t
	case "JBE", "JLS":
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

func (c *amd64Ctx) callSym(symOp Operand) error {
	if symOp.Kind != OpSym {
		return fmt.Errorf("amd64 call expects sym operand, got %s", symOp.String())
	}
	s := strings.TrimSpace(symOp.Sym)
	if !strings.HasSuffix(s, "(SB)") {
		return fmt.Errorf("amd64 call expects (SB) symbol, got %q", s)
	}
	s = strings.TrimSuffix(s, "(SB)")
	callee := c.resolve(s)
	// Syscall stubs invoke runtime entersyscall/exitsyscall around SYSCALL.
	// llgo runtime does not require these scheduler hooks at this layer.
	if callee == "runtime.entersyscall" || callee == "runtime.exitsyscall" {
		return nil
	}

	csig, ok := c.sigs[callee]
	if !ok {
		// Keep behavior explicit: cross-symbol CALL needs a signature unless it is
		// a known no-op runtime scheduler hook above.
		return fmt.Errorf("amd64 call missing signature for %q", callee)
	}

	args := make([]string, 0, len(csig.Args))
	for i := 0; i < len(csig.Args); i++ {
		r := Reg("")
		if i < len(csig.ArgRegs) {
			r = csig.ArgRegs[i]
		} else {
			x86 := []Reg{DI, SI, DX, CX, Reg("R8"), Reg("R9")}
			if i >= len(x86) {
				return fmt.Errorf("amd64 call: missing arg reg for %q arg %d", callee, i)
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
			return fmt.Errorf("amd64 call unsupported arg type %q", csig.Args[i])
		}
	}

	if csig.Ret == Void {
		fmt.Fprintf(c.b, "  call void %s(%s)\n", llvmGlobal(callee), strings.Join(args, ", "))
		return nil
	}

	t := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = call %s %s(%s)\n", t, csig.Ret, llvmGlobal(callee), strings.Join(args, ", "))
	switch csig.Ret {
	case I64:
		return c.storeReg(AX, "%"+t)
	case I1, I8, I16, I32:
		z := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext %s %%%s to i64\n", z, csig.Ret, t)
		return c.storeReg(AX, "%"+z)
	case Ptr:
		p := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = ptrtoint ptr %%%s to i64\n", p, t)
		return c.storeReg(AX, "%"+p)
	default:
		return fmt.Errorf("amd64 call %q unsupported return type %s", callee, csig.Ret)
	}
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
