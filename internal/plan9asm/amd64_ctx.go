package plan9asm

import (
	"fmt"
	"sort"
	"strconv"
	"strings"
)

type amd64Ctx struct {
	b   *strings.Builder
	sig FuncSig

	resolve func(string) string
	sigs    map[string]FuncSig

	tmp int

	blocks []amd64Block

	usedRegs map[Reg]bool
	regSlot  map[Reg]string // gp reg -> alloca name

	usedXRegs map[int]bool
	xRegSlot  map[int]string // xmm reg index -> alloca name (<16 x i8>)

	usedYRegs map[int]bool
	yRegSlot  map[int]string // ymm reg index -> alloca name (<32 x i8>)

	flagsZSlot   string
	flagsSltSlot string // last signed-less-than from CMPQ
	flagsCFSlot  string // last "carry"/below from CMPQ/BTQ
	flagsWritten bool

	fpParams       map[int64]FrameSlot // off(FP) -> slot
	fpResults      []FrameSlot
	fpResAllocaOff map[int64]string // off(FP) -> alloca
	fpResAllocaIdx map[int]string   // result index -> alloca
}

func newAMD64Ctx(b *strings.Builder, fn Func, sig FuncSig, resolve func(string) string, sigs map[string]FuncSig) *amd64Ctx {
	c := &amd64Ctx{
		b:              b,
		sig:            sig,
		resolve:        resolve,
		sigs:           sigs,
		blocks:         amd64SplitBlocks(fn),
		usedRegs:       map[Reg]bool{},
		regSlot:        map[Reg]string{},
		usedXRegs:      map[int]bool{},
		xRegSlot:       map[int]string{},
		usedYRegs:      map[int]bool{},
		yRegSlot:       map[int]string{},
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

func (c *amd64Ctx) newTmp() string {
	c.tmp++
	return fmt.Sprintf("t%d", c.tmp)
}

func (c *amd64Ctx) slotName(r Reg) string {
	return "%" + amd64LLVMBlockName("reg_"+string(r))
}

func (c *amd64Ctx) xSlotName(i int) string {
	return fmt.Sprintf("%%x%d", i)
}

func amd64ParseXReg(r Reg) (idx int, ok bool) {
	s := strings.ToUpper(strings.TrimSpace(string(r)))
	if !strings.HasPrefix(s, "X") {
		return 0, false
	}
	n, err := strconv.Atoi(strings.TrimPrefix(s, "X"))
	if err != nil || n < 0 || n > 31 {
		return 0, false
	}
	return n, true
}

func amd64ParseYReg(r Reg) (idx int, ok bool) {
	s := strings.ToUpper(strings.TrimSpace(string(r)))
	if !strings.HasPrefix(s, "Y") {
		return 0, false
	}
	n, err := strconv.Atoi(strings.TrimPrefix(s, "Y"))
	if err != nil || n < 0 || n > 31 {
		return 0, false
	}
	return n, true
}

func (c *amd64Ctx) scanUsedRegs() {
	markReg := func(r Reg) {
		if r == "" {
			return
		}
		if idx, ok := amd64ParseXReg(r); ok {
			c.usedXRegs[idx] = true
			return
		}
		if idx, ok := amd64ParseYReg(r); ok {
			c.usedYRegs[idx] = true
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

	// Ensure a few common regs exist even if only used implicitly by helpers.
	markReg(AX)

	// Ensure arg regs exist for ABIInternal-style stdlib asm. This matters for:
	//   - functions like runtime·cmpstring<ABIInternal> that tail-call helpers
	//     without touching all argument regs (e.g. BX), and
	//   - helpers that expect words of an aggregate arg (slice/string) in
	//     consecutive registers.
	if len(c.sig.ArgRegs) > 0 {
		for i := 0; i < len(c.sig.Args) && i < len(c.sig.ArgRegs); i++ {
			markReg(c.sig.ArgRegs[i])
		}
		return
	}
	goABI := []Reg{AX, BX, CX, DI, SI, Reg("R8"), Reg("R9"), Reg("R10"), Reg("R11")}
	n := 0
	for _, ty := range c.sig.Args {
		if fields, ok := parseLiteralStructFields(ty); ok && literalFieldsAllScalar(fields) {
			n += len(fields)
		} else {
			n++
		}
	}
	for i := 0; i < n && i < len(goABI); i++ {
		markReg(goABI[i])
	}
}

func (c *amd64Ctx) emitEntryAllocas() error {
	c.scanUsedRegs()

	regs := make([]string, 0, len(c.usedRegs))
	for r := range c.usedRegs {
		regs = append(regs, string(r))
	}
	sort.Strings(regs)

	c.b.WriteString(amd64LLVMBlockName("entry") + ":\n")
	for _, rs := range regs {
		r := Reg(rs)
		name := c.slotName(r)
		c.regSlot[r] = name
		fmt.Fprintf(c.b, "  %s = alloca i64\n", name)
		fmt.Fprintf(c.b, "  store i64 0, ptr %s\n", name)
	}

	xIdx := make([]int, 0, len(c.usedXRegs))
	for i := range c.usedXRegs {
		xIdx = append(xIdx, i)
	}
	sort.Ints(xIdx)
	for _, i := range xIdx {
		name := c.xSlotName(i)
		c.xRegSlot[i] = name
		fmt.Fprintf(c.b, "  %s = alloca <16 x i8>\n", name)
		fmt.Fprintf(c.b, "  store <16 x i8> zeroinitializer, ptr %s\n", name)
	}

	yIdx := make([]int, 0, len(c.usedYRegs))
	for i := range c.usedYRegs {
		yIdx = append(yIdx, i)
	}
	sort.Ints(yIdx)
	for _, i := range yIdx {
		name := fmt.Sprintf("%%y%d", i)
		c.yRegSlot[i] = name
		fmt.Fprintf(c.b, "  %s = alloca <32 x i8>\n", name)
		fmt.Fprintf(c.b, "  store <32 x i8> zeroinitializer, ptr %s\n", name)
	}

	c.flagsZSlot = "%flags_z"
	c.flagsSltSlot = "%flags_slt"
	c.flagsCFSlot = "%flags_cf"
	fmt.Fprintf(c.b, "  %s = alloca i1\n", c.flagsZSlot)
	fmt.Fprintf(c.b, "  store i1 false, ptr %s\n", c.flagsZSlot)
	fmt.Fprintf(c.b, "  %s = alloca i1\n", c.flagsSltSlot)
	fmt.Fprintf(c.b, "  store i1 false, ptr %s\n", c.flagsSltSlot)
	fmt.Fprintf(c.b, "  %s = alloca i1\n", c.flagsCFSlot)
	fmt.Fprintf(c.b, "  store i1 false, ptr %s\n", c.flagsCFSlot)

	for _, r := range c.fpResults {
		name := fmt.Sprintf("%%fp_ret_%d", r.Index)
		c.fpResAllocaIdx[r.Index] = name
		c.fpResAllocaOff[r.Offset] = name
		fmt.Fprintf(c.b, "  %s = alloca %s\n", name, r.Type)
		fmt.Fprintf(c.b, "  store %s %s, ptr %s\n", r.Type, llvmZeroValue(r.Type), name)
	}

	// Map LLVM args -> simulated registers for ABIInternal-ish entrypoints and
	// for helper<> bodies with explicit ArgRegs.
	if len(c.sig.ArgRegs) > 0 {
		for i := 0; i < len(c.sig.Args) && i < len(c.sig.ArgRegs); i++ {
			r := c.sig.ArgRegs[i]
			slot, ok := c.regSlot[r]
			if !ok {
				continue
			}
			arg := fmt.Sprintf("%%arg%d", i)
			v, ok, err := amd64ValueAsI64(c, c.sig.Args[i], arg)
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

	// Default Go internal ABI integer argument registers (ssa/opGen.go).
	goABI := []Reg{AX, BX, CX, DI, SI, Reg("R8"), Reg("R9"), Reg("R10"), Reg("R11")}
	regIdx := 0
	for ai := 0; ai < len(c.sig.Args) && regIdx < len(goABI); ai++ {
		arg := fmt.Sprintf("%%arg%d", ai)
		argTy := c.sig.Args[ai]
		if fields, ok := parseLiteralStructFields(argTy); ok && literalFieldsAllScalar(fields) {
			for fi, fTy := range fields {
				if regIdx >= len(goABI) {
					break
				}
				r := goABI[regIdx]
				regIdx++
				slot, ok := c.regSlot[r]
				if !ok {
					continue
				}
				t := c.newTmp()
				fmt.Fprintf(c.b, "  %%%s = extractvalue %s %s, %d\n", t, argTy, arg, fi)
				v, ok, err := amd64ValueAsI64(c, fTy, "%"+t)
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

		r := goABI[regIdx]
		regIdx++
		slot, ok := c.regSlot[r]
		if !ok {
			continue
		}
		v, ok, err := amd64ValueAsI64(c, argTy, arg)
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

func amd64ValueAsI64(c *amd64Ctx, ty LLVMType, v string) (out string, ok bool, err error) {
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
	default:
		return "", false, nil
	}
}

func (c *amd64Ctx) loadReg(r Reg) (string, error) {
	// Model low-byte aliases used by stdlib asm.
	// We treat writes/reads of AL/BL/CL/DL as operating on the full AX/BX/CX/DX,
	// returning the masked low byte as a zero-extended i64.
	alias := func(rr Reg) (base Reg, mask int64, ok bool) {
		switch rr {
		case AL:
			return AX, 0xff, true
		case BL:
			return BX, 0xff, true
		case CL:
			return CX, 0xff, true
		case DL:
			return DX, 0xff, true
		default:
			return "", 0, false
		}
	}
	if base, mask, ok := alias(r); ok {
		v, err := c.loadReg(base)
		if err != nil {
			return "", err
		}
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = and i64 %s, %d\n", t, v, mask)
		return "%" + t, nil
	}
	slot, ok := c.regSlot[r]
	if !ok {
		return "0", nil
	}
	t := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = load i64, ptr %s\n", t, slot)
	return "%" + t, nil
}

func (c *amd64Ctx) storeReg(r Reg, v string) error {
	// See loadReg for alias handling.
	switch r {
	case AL:
		r = AX
	case BL:
		r = BX
	case CL:
		r = CX
	case DL:
		r = DX
	}
	slot, ok := c.regSlot[r]
	if !ok {
		return nil
	}
	fmt.Fprintf(c.b, "  store i64 %s, ptr %s\n", v, slot)
	return nil
}

func (c *amd64Ctx) loadX(r Reg) (string, error) {
	idx, ok := amd64ParseXReg(r)
	if !ok {
		return "", fmt.Errorf("not an X reg: %s", r)
	}
	slot, ok := c.xRegSlot[idx]
	if !ok {
		return "<16 x i8> zeroinitializer", nil
	}
	t := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = load <16 x i8>, ptr %s\n", t, slot)
	return "%" + t, nil
}

func (c *amd64Ctx) storeX(r Reg, v string) error {
	idx, ok := amd64ParseXReg(r)
	if !ok {
		return fmt.Errorf("not an X reg: %s", r)
	}
	slot, ok := c.xRegSlot[idx]
	if !ok {
		return nil
	}
	fmt.Fprintf(c.b, "  store <16 x i8> %s, ptr %s\n", v, slot)
	return nil
}

func (c *amd64Ctx) loadY(r Reg) (string, error) {
	idx, ok := amd64ParseYReg(r)
	if !ok {
		return "", fmt.Errorf("not a Y reg: %s", r)
	}
	slot, ok := c.yRegSlot[idx]
	if !ok {
		return "<32 x i8> zeroinitializer", nil
	}
	t := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = load <32 x i8>, ptr %s\n", t, slot)
	return "%" + t, nil
}

func (c *amd64Ctx) storeY(r Reg, v string) error {
	idx, ok := amd64ParseYReg(r)
	if !ok {
		return fmt.Errorf("not a Y reg: %s", r)
	}
	slot, ok := c.yRegSlot[idx]
	if !ok {
		return nil
	}
	fmt.Fprintf(c.b, "  store <32 x i8> %s, ptr %s\n", v, slot)
	return nil
}

func (c *amd64Ctx) setZFlagFromI64(v string) {
	t := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = icmp eq i64 %s, 0\n", t, v)
	fmt.Fprintf(c.b, "  store i1 %%%s, ptr %s\n", t, c.flagsZSlot)
}

func (c *amd64Ctx) setCmpFlags(a, b string) {
	// Store Z (eq), signed-lt, and CF (unsigned-lt) derived from CMPQ a,b.
	zt := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = icmp eq i64 %s, %s\n", zt, a, b)
	fmt.Fprintf(c.b, "  store i1 %%%s, ptr %s\n", zt, c.flagsZSlot)
	slt := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = icmp slt i64 %s, %s\n", slt, a, b)
	fmt.Fprintf(c.b, "  store i1 %%%s, ptr %s\n", slt, c.flagsSltSlot)
	ult := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = icmp ult i64 %s, %s\n", ult, a, b)
	fmt.Fprintf(c.b, "  store i1 %%%s, ptr %s\n", ult, c.flagsCFSlot)
}

func (c *amd64Ctx) loadFlag(slot string) string {
	t := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = load i1, ptr %s\n", t, slot)
	return "%" + t
}

func (c *amd64Ctx) fpParam(off int64) (slot FrameSlot, ok bool) {
	s, ok := c.fpParams[off]
	if !ok {
		return FrameSlot{}, false
	}
	return s, true
}

func (c *amd64Ctx) fpResultAlloca(off int64) (string, LLVMType, bool) {
	s, ok := c.fpParams[off]
	_ = s
	name, ok := c.fpResAllocaOff[off]
	if !ok {
		return "", "", false
	}
	// Find the slot type.
	for _, r := range c.fpResults {
		if r.Offset == off {
			return name, r.Type, true
		}
	}
	return name, "", true
}

func (c *amd64Ctx) evalFPToI64(off int64) (string, error) {
	slot, ok := c.fpParam(off)
	if !ok {
		return "", fmt.Errorf("unsupported FP read slot: +%d(FP)", off)
	}
	idx := slot.Index
	if idx < 0 || idx >= len(c.sig.Args) {
		return "", fmt.Errorf("FP read slot: invalid arg index %d at +%d(FP)", idx, off)
	}
	arg := fmt.Sprintf("%%arg%d", idx)

	// If this FP slot refers to a field within an aggregate argument (string/slice),
	// extract that field first.
	ty := slot.Type
	if slot.Field >= 0 {
		aggTy := c.sig.Args[idx]
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = extractvalue %s %s, %d\n", t, aggTy, arg, slot.Field)
		arg = "%" + t
	}
	switch ty {
	case Ptr:
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = ptrtoint ptr %s to i64\n", t, arg)
		return "%" + t, nil
	case I1:
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i1 %s to i64\n", t, arg)
		return "%" + t, nil
	case I8:
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i8 %s to i64\n", t, arg)
		return "%" + t, nil
	case I16:
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i16 %s to i64\n", t, arg)
		return "%" + t, nil
	case I32:
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i32 %s to i64\n", t, arg)
		return "%" + t, nil
	case I64:
		return arg, nil
	default:
		return "", fmt.Errorf("FP read unsupported type %q at +%d(FP)", ty, off)
	}
}

func (c *amd64Ctx) storeFPResult(off int64, ty LLVMType, v string) error {
	alloca, slotTy, ok := c.fpResultAlloca(off)
	if !ok {
		return fmt.Errorf("unsupported FP write slot: +%d(FP)", off)
	}
	if slotTy != "" && slotTy != ty {
		// Cast integer sizes when needed (common: i64 reg -> i32 return slot).
		switch {
		case ty == I64 && slotTy == I32:
			t := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", t, v)
			fmt.Fprintf(c.b, "  store i32 %%%s, ptr %s\n", t, alloca)
			return nil
		case ty == I64 && slotTy == I64:
			// ok
		default:
			return fmt.Errorf("FP write type mismatch: have %s want %s at +%d(FP)", ty, slotTy, off)
		}
	}
	fmt.Fprintf(c.b, "  store %s %s, ptr %s\n", ty, v, alloca)
	return nil
}

func (c *amd64Ctx) loadFPResult(slot FrameSlot) (string, error) {
	alloca, ok := c.fpResAllocaIdx[slot.Index]
	if !ok {
		return "", fmt.Errorf("missing fp result alloca for index %d", slot.Index)
	}
	t := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = load %s, ptr %s\n", t, slot.Type, alloca)
	return "%" + t, nil
}

func parseSBRef(sym string) (base string, off int64, ok bool) {
	// Examples:
	//   r2r1<>+0(SB)
	//   runtime·memequal(SB)
	sym = strings.TrimSpace(sym)
	if !strings.HasSuffix(sym, "(SB)") {
		return "", 0, false
	}
	s := strings.TrimSpace(strings.TrimSuffix(sym, "(SB)"))
	if s == "" {
		return "", 0, false
	}
	base, off = splitSymPlusOff(s)
	return base, off, true
}

func (c *amd64Ctx) addrFromMem(mem MemRef) (addrI64 string, err error) {
	base, err := c.loadReg(mem.Base)
	if err != nil {
		return "", err
	}
	cur := base
	if mem.Index != "" {
		idx, err := c.loadReg(mem.Index)
		if err != nil {
			return "", err
		}
		if mem.Scale == 0 {
			mem.Scale = 1
		}
		mul := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = mul i64 %s, %d\n", mul, idx, mem.Scale)
		add := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = add i64 %s, %%%s\n", add, cur, mul)
		cur = "%" + add
	}
	if mem.Off != 0 {
		add := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = add i64 %s, %d\n", add, cur, mem.Off)
		cur = "%" + add
	}
	return cur, nil
}

func (c *amd64Ctx) ptrFromAddrI64(addrI64 string) string {
	t := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = inttoptr i64 %s to ptr\n", t, addrI64)
	return "%" + t
}

func (c *amd64Ctx) ptrFromSB(sym string) (ptr string, err error) {
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
