package plan9asm

import (
	"fmt"
	"strings"
)

func (c *arm64Ctx) lowerBranch(bi int, op Op, ins Instr, emitBr arm64EmitBr, emitCondBr arm64EmitCondBr) (ok bool, terminated bool, err error) {
	switch op {
	case "BL", "CALL":
		if len(ins.Args) != 1 {
			return true, false, fmt.Errorf("arm64 %s expects 1 operand: %q", op, ins.Raw)
		}
		if ins.Args[0].Kind != OpSym || !strings.HasSuffix(ins.Args[0].Sym, "(SB)") {
			return true, false, fmt.Errorf("arm64 %s expects symbol(SB): %q", op, ins.Raw)
		}
		if err := c.callSym(ins.Args[0]); err != nil {
			return true, false, err
		}
		return true, false, nil

	case "B", "JMP":
		if len(ins.Args) != 1 {
			return true, false, fmt.Errorf("arm64 B expects 1 operand: %q", ins.Raw)
		}
		if ins.Args[0].Kind == OpSym && strings.HasSuffix(ins.Args[0].Sym, "(SB)") {
			return true, true, c.tailCallAndRet(ins.Args[0])
		}
		tgt, ok := arm64BranchTarget(ins.Args[0])
		if !ok {
			return true, false, fmt.Errorf("arm64 B invalid target: %q", ins.Raw)
		}
		emitBr(tgt)
		return true, true, nil

	case "BEQ", "BNE", "BLO", "BLT", "BHI", "BHS", "BLS", "BGE", "BGT", "BLE", "BCC":
		if len(ins.Args) != 1 {
			return true, false, fmt.Errorf("arm64 %s expects label: %q", op, ins.Raw)
		}
		tgt, ok := arm64BranchTarget(ins.Args[0])
		if !ok {
			return true, false, fmt.Errorf("arm64 %s invalid target: %q", op, ins.Raw)
		}
		fall := ""
		if bi+1 < len(c.blocks) {
			fall = c.blocks[bi+1].name
		}
		if fall == "" {
			return true, false, fmt.Errorf("arm64 %s needs fallthrough block: %q", op, ins.Raw)
		}
		cond := ""
		switch op {
		case "BEQ":
			cond = "EQ"
		case "BNE":
			cond = "NE"
		case "BLO":
			cond = "LO"
		case "BCC":
			cond = "LO"
		case "BLT":
			cond = "LT"
		case "BHI":
			cond = "HI"
		case "BHS":
			cond = "HS"
		case "BLS":
			cond = "LS"
		case "BGE":
			cond = "GE"
		case "BGT":
			cond = "GT"
		case "BLE":
			cond = "LE"
		}
		if err := emitCondBr(cond, tgt, fall); err != nil {
			return true, false, err
		}
		return true, true, nil

	case "CBZ", "CBNZ":
		if len(ins.Args) != 2 || ins.Args[0].Kind != OpReg {
			return true, false, fmt.Errorf("arm64 %s expects reg, label: %q", op, ins.Raw)
		}
		rv, err := c.loadReg(ins.Args[0].Reg)
		if err != nil {
			return true, false, err
		}
		t := c.newTmp()
		if op == "CBZ" {
			fmt.Fprintf(c.b, "  %%%s = icmp eq i64 %s, 0\n", t, rv)
		} else {
			fmt.Fprintf(c.b, "  %%%s = icmp ne i64 %s, 0\n", t, rv)
		}
		tgt, ok := arm64BranchTarget(ins.Args[1])
		if !ok {
			return true, false, fmt.Errorf("arm64 %s invalid target: %q", op, ins.Raw)
		}
		fall := ""
		if bi+1 < len(c.blocks) {
			fall = c.blocks[bi+1].name
		}
		if fall == "" {
			return true, false, fmt.Errorf("arm64 %s needs fallthrough block: %q", op, ins.Raw)
		}
		fmt.Fprintf(c.b, "  br i1 %%%s, label %%%s, label %%%s\n", t, arm64LLVMBlockName(tgt), arm64LLVMBlockName(fall))
		return true, true, nil

	case "TBZ", "TBNZ":
		if len(ins.Args) != 3 || ins.Args[0].Kind != OpImm || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("arm64 %s expects $bit, reg, label: %q", op, ins.Raw)
		}
		bit := ins.Args[0].Imm
		rv, err := c.loadReg(ins.Args[1].Reg)
		if err != nil {
			return true, false, err
		}
		sh := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = lshr i64 %s, %d\n", sh, rv, bit)
		mask := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = and i64 %%%s, 1\n", mask, sh)
		condT := c.newTmp()
		if op == "TBZ" {
			fmt.Fprintf(c.b, "  %%%s = icmp eq i64 %%%s, 0\n", condT, mask)
		} else {
			fmt.Fprintf(c.b, "  %%%s = icmp ne i64 %%%s, 0\n", condT, mask)
		}
		tgt, ok := arm64BranchTarget(ins.Args[2])
		if !ok {
			return true, false, fmt.Errorf("arm64 %s invalid target: %q", op, ins.Raw)
		}
		fall := ""
		if bi+1 < len(c.blocks) {
			fall = c.blocks[bi+1].name
		}
		if fall == "" {
			return true, false, fmt.Errorf("arm64 %s needs fallthrough block: %q", op, ins.Raw)
		}
		fmt.Fprintf(c.b, "  br i1 %%%s, label %%%s, label %%%s\n", condT, arm64LLVMBlockName(tgt), arm64LLVMBlockName(fall))
		return true, true, nil
	}
	return false, false, nil
}

func (c *arm64Ctx) callSym(symOp Operand) error {
	if symOp.Kind != OpSym {
		return fmt.Errorf("arm64 call expects sym operand, got %s", symOp.String())
	}
	s := strings.TrimSpace(symOp.Sym)
	if !strings.HasSuffix(s, "(SB)") {
		return fmt.Errorf("arm64 call expects (SB) symbol, got %q", s)
	}
	s = strings.TrimSuffix(s, "(SB)")
	callee := c.resolve(s)
	// Syscall stubs invoke runtime entersyscall/exitsyscall around SVC.
	// llgo runtime does not require these scheduler hooks at this layer.
	if callee == "runtime.entersyscall" || callee == "runtime.exitsyscall" {
		return nil
	}
	csig, ok := c.sigs[callee]
	if !ok {
		// Default for external runtime helpers not discovered in this asm file.
		csig = FuncSig{Name: callee, Ret: Void}
	}
	if len(csig.Args) != 0 {
		return fmt.Errorf("arm64 call %q with %d args not supported yet", callee, len(csig.Args))
	}
	if csig.Ret == Void {
		fmt.Fprintf(c.b, "  call void %s()\n", llvmGlobal(callee))
		return nil
	}
	t := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = call %s %s()\n", t, csig.Ret, llvmGlobal(callee))
	switch csig.Ret {
	case I64:
		return c.storeReg(Reg("R0"), "%"+t)
	case I32, I16, I8, I1:
		z := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext %s %%%s to i64\n", z, csig.Ret, t)
		return c.storeReg(Reg("R0"), "%"+z)
	case Ptr:
		p := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = ptrtoint ptr %%%s to i64\n", p, t)
		return c.storeReg(Reg("R0"), "%"+p)
	default:
		return fmt.Errorf("arm64 call %q unsupported return type %s", callee, csig.Ret)
	}
}

func (c *arm64Ctx) tailCallAndRet(symOp Operand) error {
	if symOp.Kind != OpSym {
		return fmt.Errorf("arm64 tailcall expects sym operand, got %s", symOp.String())
	}
	s := strings.TrimSpace(symOp.Sym)
	if !strings.HasSuffix(s, "(SB)") {
		return fmt.Errorf("arm64 tailcall expects (SB) symbol, got %q", s)
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
		// "B ·fooGeneric(SB)" that happen before any register shuffling and are
		// stack-ABI tailcalls in the original asm.
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
				return fmt.Errorf("arm64 tailcall %q: need %d args, caller has %d", callee, len(csig.Args), len(c.sig.Args))
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
				args = append(args, "i64 %"+t)
			case fromTy == I64 && toTy == Ptr:
				fmt.Fprintf(c.b, "  %%%s = inttoptr i64 %s to ptr\n", t, fromVal)
				args = append(args, "ptr %"+t)
			case fromTy == Ptr && toTy == I64:
				fmt.Fprintf(c.b, "  %%%s = ptrtoint ptr %s to i64\n", t, fromVal)
				args = append(args, "i64 %"+t)
			default:
				return fmt.Errorf("arm64 tailcall %q: unsupported arg cast %s -> %s", callee, fromTy, toTy)
			}
			continue
		}

		r := Reg("")
		if i < len(csig.ArgRegs) {
			r = csig.ArgRegs[i]
		} else {
			r = Reg(fmt.Sprintf("R%d", i))
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
			return fmt.Errorf("arm64 tailcall unsupported arg type %q", csig.Args[i])
		}
	}

	if csig.Ret == Void {
		fmt.Fprintf(c.b, "  call void %s(%s)\n", llvmGlobal(callee), strings.Join(args, ", "))
		// If caller returns via classic FP result slots, return from those after the call.
		if len(c.fpResults) > 0 {
			return c.lowerRET()
		}
		// Otherwise, caller must be void too.
		if c.sig.Ret != Void {
			return fmt.Errorf("arm64 tailcall void callee %q but caller returns %s (no FP results)", callee, c.sig.Ret)
		}
		c.b.WriteString("  ret void\n")
		return nil
	}

	call := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = call %s %s(%s)\n", call, csig.Ret, llvmGlobal(callee), strings.Join(args, ", "))
	if c.sig.Ret == Void {
		c.b.WriteString("  ret void\n")
		return nil
	}
	if csig.Ret != c.sig.Ret {
		return fmt.Errorf("arm64 tailcall return mismatch: caller %s callee %s", c.sig.Ret, csig.Ret)
	}
	fmt.Fprintf(c.b, "  ret %s %%%s\n", c.sig.Ret, call)
	return nil
}
