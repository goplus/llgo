package plan9asm

import (
	"fmt"
	"sort"
	"strconv"
	"strings"
)

type arm64Ctx struct {
	b        *strings.Builder
	sig      FuncSig
	resolve  func(string) string
	sigs     map[string]FuncSig
	annotate bool

	tmp int

	blocks []arm64Block

	usedRegs map[Reg]bool
	regSlot  map[Reg]string // reg -> alloca name

	usedVRegs map[int]bool
	vRegSlot  map[int]string // vreg index -> alloca name (<16 x i8>)

	flagsNSlot   string
	flagsZSlot   string
	flagsCSlot   string
	flagsVSlot   string
	flagsWritten bool

	exclusiveValidSlot string
	exclusivePtrSlot   string
	exclusiveSizeSlot  string
	exclusiveValueSlot string

	fpParams       map[int64]FrameSlot // off(FP) -> slot
	fpResults      []FrameSlot         // result slots (Index is result index)
	fpResAllocaOff map[int64]string    // off(FP) -> alloca
	fpResAllocaIdx map[int]string      // result index -> alloca
}

func newARM64Ctx(b *strings.Builder, fn Func, sig FuncSig, resolve func(string) string, sigs map[string]FuncSig, annotate bool) *arm64Ctx {
	c := &arm64Ctx{
		b:              b,
		sig:            sig,
		resolve:        resolve,
		sigs:           sigs,
		annotate:       annotate,
		blocks:         arm64SplitBlocks(fn),
		usedRegs:       map[Reg]bool{},
		regSlot:        map[Reg]string{},
		usedVRegs:      map[int]bool{},
		vRegSlot:       map[int]string{},
		fpParams:       map[int64]FrameSlot{},
		fpResAllocaOff: map[int64]string{},
		fpResAllocaIdx: map[int]string{},
	}
	for _, s := range sig.Frame.Params {
		c.fpParams[s.Offset] = s
	}
	c.fpResults = append([]FrameSlot(nil), sig.Frame.Results...)
	return c
}

func (c *arm64Ctx) emitSourceComment(ins Instr) {
	if !c.annotate {
		return
	}
	emitIRSourceComment(c.b, ins.Raw)
}

func (c *arm64Ctx) newTmp() string {
	c.tmp++
	return fmt.Sprintf("t%d", c.tmp)
}

func (c *arm64Ctx) slotName(r Reg) string {
	// Make the name LLVM-label friendly to keep the IR readable.
	return "%" + arm64LLVMBlockName("reg_"+string(r))
}

func (c *arm64Ctx) vSlotName(idx int) string {
	return fmt.Sprintf("%%v%d", idx)
}

func arm64ParseVReg(r Reg) (idx int, ok bool) {
	s := strings.ToUpper(strings.TrimSpace(string(r)))
	if !strings.HasPrefix(s, "V") {
		return 0, false
	}
	// Strip optional lane suffix: V8.D[0], V5.B16, etc.
	if dot := strings.IndexByte(s, '.'); dot >= 0 {
		s = s[:dot]
	}
	n, err := strconv.Atoi(strings.TrimPrefix(s, "V"))
	if err != nil || n < 0 || n > 31 {
		return 0, false
	}
	return n, true
}

func (c *arm64Ctx) scanUsedRegs() {
	markReg := func(r Reg) {
		if r == "" {
			return
		}
		if idx, ok := arm64ParseVReg(r); ok {
			c.usedVRegs[idx] = true
			return
		}
		c.usedRegs[r] = true
	}
	markOp := func(op Operand) {
		switch op.Kind {
		case OpReg:
			markReg(op.Reg)
		case OpMem:
			markReg(op.Mem.Base)
			if op.Mem.Index != "" {
				markReg(op.Mem.Index)
			}
		case OpRegList:
			for _, r := range op.RegList {
				markReg(r)
			}
		}
	}

	for _, blk := range c.blocks {
		for _, ins := range blk.instrs {
			for _, op := range ins.Args {
				markOp(op)
			}
		}
	}
	// Ensure arg regs exist.
	if len(c.sig.ArgRegs) > 0 {
		for i := 0; i < len(c.sig.Args) && i < len(c.sig.ArgRegs); i++ {
			markReg(c.sig.ArgRegs[i])
		}
	} else {
		// Go internal ABI on arm64 uses up to 16 integer argument registers.
		// For aggregate args like {ptr,len,cap} we need registers for each word,
		// since ABIInternal asm expects those words in consecutive registers.
		n := 0
		for _, ty := range c.sig.Args {
			if fields, ok := parseLiteralStructFields(ty); ok && literalFieldsAllScalar(fields) {
				n += len(fields)
			} else {
				n++
			}
		}
		for i := 0; i < n && i < 16; i++ {
			markReg(Reg(fmt.Sprintf("R%d", i)))
		}
	}
	// Ensure return reg exists.
	markReg(Reg("R0"))
}

func (c *arm64Ctx) emitEntryAllocasAndArgInit() error {
	c.scanUsedRegs()
	regs := make([]string, 0, len(c.usedRegs))
	for r := range c.usedRegs {
		regs = append(regs, string(r))
	}
	sort.Strings(regs)

	c.b.WriteString(arm64LLVMBlockName("entry") + ":\n")
	for _, rs := range regs {
		r := Reg(rs)
		name := c.slotName(r)
		c.regSlot[r] = name
		fmt.Fprintf(c.b, "  %s = alloca i64\n", name)
		fmt.Fprintf(c.b, "  store i64 0, ptr %s\n", name)
	}

	// Vector registers: keep as <16 x i8> to cover most stdlib NEON byte ops.
	vIdx := make([]int, 0, len(c.usedVRegs))
	for i := range c.usedVRegs {
		vIdx = append(vIdx, i)
	}
	sort.Ints(vIdx)
	for _, i := range vIdx {
		name := c.vSlotName(i)
		c.vRegSlot[i] = name
		fmt.Fprintf(c.b, "  %s = alloca <16 x i8>\n", name)
		fmt.Fprintf(c.b, "  store <16 x i8> zeroinitializer, ptr %s\n", name)
	}

	// Flags state: model "last CMP/SUBS/ANDS result" as two i64 slots.
	// This avoids SSA-phi complexity across CFG edges while we bootstrap.
	// We keep the actual NZCV bits, since stdlib asm relies on carry-based
	// conditions (BLS/BHS/HI/LO) after SUBS/ADDS.
	c.flagsNSlot = "%flags_n"
	c.flagsZSlot = "%flags_z"
	c.flagsCSlot = "%flags_c"
	c.flagsVSlot = "%flags_v"
	fmt.Fprintf(c.b, "  %s = alloca i1\n", c.flagsNSlot)
	fmt.Fprintf(c.b, "  store i1 false, ptr %s\n", c.flagsNSlot)
	fmt.Fprintf(c.b, "  %s = alloca i1\n", c.flagsZSlot)
	fmt.Fprintf(c.b, "  store i1 false, ptr %s\n", c.flagsZSlot)
	fmt.Fprintf(c.b, "  %s = alloca i1\n", c.flagsCSlot)
	fmt.Fprintf(c.b, "  store i1 false, ptr %s\n", c.flagsCSlot)
	fmt.Fprintf(c.b, "  %s = alloca i1\n", c.flagsVSlot)
	fmt.Fprintf(c.b, "  store i1 false, ptr %s\n", c.flagsVSlot)

	// Exclusive monitor state for LDAXR*/STLXR* lowering.
	c.exclusiveValidSlot = "%exclusive_valid"
	c.exclusivePtrSlot = "%exclusive_ptr"
	c.exclusiveSizeSlot = "%exclusive_size"
	c.exclusiveValueSlot = "%exclusive_value"
	fmt.Fprintf(c.b, "  %s = alloca i1\n", c.exclusiveValidSlot)
	fmt.Fprintf(c.b, "  store i1 false, ptr %s\n", c.exclusiveValidSlot)
	fmt.Fprintf(c.b, "  %s = alloca ptr\n", c.exclusivePtrSlot)
	fmt.Fprintf(c.b, "  store ptr null, ptr %s\n", c.exclusivePtrSlot)
	fmt.Fprintf(c.b, "  %s = alloca i8\n", c.exclusiveSizeSlot)
	fmt.Fprintf(c.b, "  store i8 0, ptr %s\n", c.exclusiveSizeSlot)
	fmt.Fprintf(c.b, "  %s = alloca i64\n", c.exclusiveValueSlot)
	fmt.Fprintf(c.b, "  store i64 0, ptr %s\n", c.exclusiveValueSlot)

	// Frame result slots: allocate addressable storage so patterns like
	// `$ret+off(FP)` and `MOVD x, ret+off(FP)` can work.
	for _, r := range c.fpResults {
		name := fmt.Sprintf("%%fp_ret_%d", r.Index)
		c.fpResAllocaIdx[r.Index] = name
		c.fpResAllocaOff[r.Offset] = name
		fmt.Fprintf(c.b, "  %s = alloca %s\n", name, r.Type)
		fmt.Fprintf(c.b, "  store %s %s, ptr %s\n", r.Type, llvmZeroValue(r.Type), name)
	}

	// Map args -> regs (best-effort for ABIInternal-style asm, and for helper<> reg assignments).
	if len(c.sig.ArgRegs) > 0 {
		// Custom arg->reg assignment (used by helper<> bodies).
		for i := 0; i < len(c.sig.Args) && i < len(c.sig.ArgRegs); i++ {
			r := c.sig.ArgRegs[i]
			slot, ok := c.regSlot[r]
			if !ok {
				continue
			}
			arg := fmt.Sprintf("%%arg%d", i)
			argTy := c.sig.Args[i]
			v, ok, err := arm64ValueAsI64(c, argTy, arg)
			if err != nil {
				return err
			}
			if !ok {
				continue
			}
			fmt.Fprintf(c.b, "  store i64 %s, ptr %s\n", v, slot)
		}
		return nil
	}

	// Default: flatten aggregate args into consecutive argument registers
	// following the Go internal ABI word ordering.
	regIdx := 0
	for ai := 0; ai < len(c.sig.Args) && regIdx < 16; ai++ {
		arg := fmt.Sprintf("%%arg%d", ai)
		argTy := c.sig.Args[ai]
		if fields, ok := parseLiteralStructFields(argTy); ok && literalFieldsAllScalar(fields) {
			for fi, fTy := range fields {
				if regIdx >= 16 {
					break
				}
				r := Reg(fmt.Sprintf("R%d", regIdx))
				regIdx++
				slot, ok := c.regSlot[r]
				if !ok {
					continue
				}
				t := c.newTmp()
				fmt.Fprintf(c.b, "  %%%s = extractvalue %s %s, %d\n", t, argTy, arg, fi)
				v, ok, err := arm64ValueAsI64(c, fTy, "%"+t)
				if err != nil {
					return err
				}
				if !ok {
					continue
				}
				fmt.Fprintf(c.b, "  store i64 %s, ptr %s\n", v, slot)
			}
			continue
		}

		r := Reg(fmt.Sprintf("R%d", regIdx))
		regIdx++
		slot, ok := c.regSlot[r]
		if !ok {
			continue
		}
		v, ok, err := arm64ValueAsI64(c, argTy, arg)
		if err != nil {
			return err
		}
		if !ok {
			continue
		}
		fmt.Fprintf(c.b, "  store i64 %s, ptr %s\n", v, slot)
	}
	return nil
}

func arm64ValueAsI64(c *arm64Ctx, ty LLVMType, v string) (out string, ok bool, err error) {
	switch ty {
	case Ptr:
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = ptrtoint ptr %s to i64\n", t, v)
		return "%" + t, true, nil
	case I1:
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i1 %s to i64\n", t, v)
		return "%" + t, true, nil
	case I8:
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i8 %s to i64\n", t, v)
		return "%" + t, true, nil
	case I16:
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i16 %s to i64\n", t, v)
		return "%" + t, true, nil
	case I32:
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i32 %s to i64\n", t, v)
		return "%" + t, true, nil
	case I64:
		return v, true, nil
	case LLVMType("double"):
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = bitcast double %s to i64\n", t, v)
		return "%" + t, true, nil
	case LLVMType("float"):
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = bitcast float %s to i32\n", t, v)
		z := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i32 %%%s to i64\n", z, t)
		return "%" + z, true, nil
	default:
		return "", false, nil
	}
}

func parseLiteralStructFields(ty LLVMType) (fields []LLVMType, ok bool) {
	s := strings.TrimSpace(string(ty))
	if !strings.HasPrefix(s, "{") || !strings.HasSuffix(s, "}") {
		return nil, false
	}
	inner := strings.TrimSpace(strings.TrimSuffix(strings.TrimPrefix(s, "{"), "}"))
	if inner == "" {
		return nil, false
	}
	parts := strings.Split(inner, ",")
	fields = make([]LLVMType, 0, len(parts))
	for _, p := range parts {
		p = strings.TrimSpace(p)
		if p == "" {
			return nil, false
		}
		fields = append(fields, LLVMType(p))
	}
	return fields, true
}

func literalFieldsAllScalar(fields []LLVMType) bool {
	for _, ty := range fields {
		switch ty {
		case Ptr, I1, I8, I16, I32, I64:
			// ok
		default:
			return false
		}
	}
	return true
}

func llvmZeroValue(ty LLVMType) string {
	switch string(ty) {
	case "ptr":
		return "null"
	case "i1":
		return "false"
	case "i8", "i16", "i32", "i64":
		return "0"
	case "float":
		return "0.000000e+00"
	case "double":
		return "0.000000e+00"
	default:
		// Fallback for aggregates and other scalar types.
		return "zeroinitializer"
	}
}

func (c *arm64Ctx) loadReg(r Reg) (string, error) {
	slot, ok := c.regSlot[r]
	if !ok {
		return "", fmt.Errorf("arm64: unknown reg %s", r)
	}
	t := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = load i64, ptr %s\n", t, slot)
	return "%" + t, nil
}

func (c *arm64Ctx) ptrFromSB(sym string) (ptr string, err error) {
	base, off, ok := parseSBRef(sym)
	if !ok {
		return "", fmt.Errorf("invalid (SB) sym ref: %q", sym)
	}
	res := base
	if strings.Contains(base, "·") || strings.Contains(base, "/") || strings.Contains(base, ".") {
		res = c.resolve(base)
	} else {
		res = c.resolve("·" + base)
	}
	p := llvmGlobal(res)
	if off == 0 {
		return p, nil
	}
	t := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = getelementptr i8, ptr %s, i64 %d\n", t, p, off)
	return "%" + t, nil
}

func (c *arm64Ctx) storeReg(r Reg, v string) error {
	slot, ok := c.regSlot[r]
	if !ok {
		return fmt.Errorf("arm64: unknown reg %s", r)
	}
	fmt.Fprintf(c.b, "  store i64 %s, ptr %s\n", v, slot)
	return nil
}

func (c *arm64Ctx) loadVReg(r Reg) (string, error) {
	idx, ok := arm64ParseVReg(r)
	if !ok {
		return "", fmt.Errorf("arm64: not a vreg %s", r)
	}
	slot, ok := c.vRegSlot[idx]
	if !ok {
		return "", fmt.Errorf("arm64: unknown vreg %s", r)
	}
	t := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = load <16 x i8>, ptr %s\n", t, slot)
	return "%" + t, nil
}

func (c *arm64Ctx) storeVReg(r Reg, v string) error {
	idx, ok := arm64ParseVReg(r)
	if !ok {
		return fmt.Errorf("arm64: not a vreg %s", r)
	}
	slot, ok := c.vRegSlot[idx]
	if !ok {
		return fmt.Errorf("arm64: unknown vreg %s", r)
	}
	fmt.Fprintf(c.b, "  store <16 x i8> %s, ptr %s\n", v, slot)
	return nil
}
