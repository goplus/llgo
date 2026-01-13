// Package pullmodel implements the pull-based async/await transformation.
// This file implements Pull IR → LLVM code generation.
//
// This is a simplified version that can be incrementally enhanced.
// For full implementation, see llssa_codegen.go patterns.

package pullmodel

import (
	"fmt"
	"go/token"
	"go/types"
	"strings"

	llssa "github.com/goplus/llgo/ssa"
	"golang.org/x/tools/go/ssa"
)

// =============================================================================
// Pull IR Code Generator
// =============================================================================

// PullIRCodeGen generates LLVM IR from Pull IR.
type PullIRCodeGen struct {
	prog   llssa.Program
	pkg    llssa.Package
	ssaPkg *ssa.Package
	pullIR *PullIR

	// Type caches
	pollLLType llssa.Type
	stateNamed *types.Named

	// Code generation state
	statePtr      llssa.Expr
	temps         []llssa.Expr // Temps for current state
	poll          llssa.Function
	concrete      llssa.Function // $Concrete wrapper function
	loopBlock     llssa.BasicBlock
	int8Type      llssa.Type
	completedIdx  int
	deferFieldIdx int
	panicFieldIdx int

	// Stack allocation handling
	stackAllocSlots map[*Slot]struct{}
	stackAllocPtrs  map[*Slot]llssa.Expr

	// Defer wrapper cache
	deferWraps   map[string]deferWrapperInfo
	deferWrapSeq int

	// Callbacks
	compileValue CompileValueFunc
	compileInstr CompileInstrFunc
}

// NewPullIRCodeGen creates a new Pull IR code generator.
func NewPullIRCodeGen(
	prog llssa.Program,
	pkg llssa.Package,
	ssaPkg *ssa.Package,
	pullIR *PullIR,
) *PullIRCodeGen {
	gen := &PullIRCodeGen{
		prog:   prog,
		pkg:    pkg,
		ssaPkg: ssaPkg,
		pullIR: pullIR,
	}
	gen.stackAllocSlots = make(map[*Slot]struct{})
	gen.stackAllocPtrs = make(map[*Slot]llssa.Expr)
	gen.deferWraps = make(map[string]deferWrapperInfo)
	for _, slot := range pullIR.Slots {
		if slot.StackAlloc {
			gen.stackAllocSlots[slot] = struct{}{}
		}
	}
	return gen
}

// SetCallbacks sets the compiler callbacks.
func (g *PullIRCodeGen) SetCallbacks(
	compileValue CompileValueFunc,
	compileInstr CompileInstrFunc,
) {
	g.compileValue = compileValue
	g.compileInstr = compileInstr
}

// Generate generates all code for the async function.
func (g *PullIRCodeGen) Generate() error {
	// Step 1: Generate state struct type
	stateType, err := g.generateStateType()
	if err != nil {
		return fmt.Errorf("generate state type: %w", err)
	}
	debugf("[PullIR] Generated state struct with %d fields", g.pullIR.NumFields())

	// Step 2: Generate $Concrete wrapper (creates state struct)
	if err := g.generateConcreteWrapper(stateType); err != nil {
		return fmt.Errorf("generate concrete wrapper: %w", err)
	}

	// Step 3: Generate Poll method
	if err := g.generatePollMethod(stateType); err != nil {
		return fmt.Errorf("generate poll method: %w", err)
	}

	// Step 4: Generate interface wrapper
	if err := g.generateInterfaceWrapper(); err != nil {
		return fmt.Errorf("generate interface wrapper: %w", err)
	}

	debugf("[PullIR] Successfully generated code for %s", g.pullIR.FuncName)
	return nil
}

// =============================================================================
// State Struct Generation
// =============================================================================

func (g *PullIRCodeGen) generateStateType() (llssa.Type, error) {
	fn := g.pullIR.Original

	// Build struct fields
	var fields []*types.Var
	fields = append(fields, types.NewField(0, nil, "state", types.Typ[types.Int8], false))

	for _, slot := range g.pullIR.Slots {
		name := slot.Name
		if name == "" {
			name = fmt.Sprintf("field%d", slot.FieldIdx)
		}
		fields = append(fields, types.NewField(0, nil, name, slot.Type, false))
	}

	g.deferFieldIdx = -1
	if g.pullIR.HasDefer {
		g.deferFieldIdx = len(fields)
		deferStateType := g.getDeferStateType()
		fields = append(fields, types.NewField(0, nil, "deferState", deferStateType, false))
	}

	// Always include panicErr to persist panic across polls.
	g.panicFieldIdx = len(fields)
	panicType := types.NewInterfaceType(nil, nil)
	fields = append(fields, types.NewField(0, nil, "panicErr", panicType, false))

	structType := types.NewStruct(fields, nil)

	// Create named type
	var pkg *types.Package
	if fn.Pkg != nil && fn.Pkg.Pkg != nil {
		pkg = fn.Pkg.Pkg
	}
	typeName := fn.Name() + "$State"
	typeObj := types.NewTypeName(0, pkg, typeName, nil)
	g.stateNamed = types.NewNamed(typeObj, structType, nil)

	// Insert into package scope
	if pkg != nil && pkg.Scope() != nil {
		pkg.Scope().Insert(typeObj)
	}

	// Build Poll method signature and add to named type
	g.addPollMethod(pkg, fn)

	// Get LLVM type
	stateType := g.prog.Type(g.stateNamed, llssa.InGo)

	// Build Poll result type
	g.pollLLType = g.buildPollLLType()

	return stateType, nil
}

func (g *PullIRCodeGen) addPollMethod(pkg *types.Package, fn *ssa.Function) {
	if g.stateNamed == nil {
		return
	}

	recvVar := types.NewVar(0, pkg, "s", types.NewPointer(g.stateNamed))

	resultType := g.pullIR.ResultType
	if resultType == nil {
		resultType = types.NewStruct(nil, nil)
	}

	// Get Poll[T] return type from async package (with proper scope)
	pollResultType := g.getAsyncPollType(resultType)
	pollResults := types.NewTuple(types.NewVar(0, nil, "", pollResultType))

	// Get Context type from async package (with proper scope)
	ctxType := g.getAsyncContextType()
	ctxParam := types.NewVar(0, nil, "ctx", ctxType)
	params := types.NewTuple(ctxParam)

	pollSig := types.NewSignatureType(recvVar, nil, nil, params, pollResults, false)
	pollMethod := types.NewFunc(0, pkg, "Poll", pollSig)
	g.stateNamed.AddMethod(pollMethod)
}

func (g *PullIRCodeGen) buildPollLLType() llssa.Type {
	resultType := g.pullIR.ResultType
	if resultType == nil {
		resultType = types.NewStruct(nil, nil)
	}
	// Use the actual async.Poll[T] definition so field layout matches runtime.
	pollGoType := g.getAsyncPollType(resultType)
	return g.prog.Type(pollGoType, llssa.InGo)
}

func (g *PullIRCodeGen) getAsyncPackage() *types.Package {
	fn := g.pullIR.Original
	if fn.Pkg != nil && fn.Pkg.Pkg != nil {
		for _, imp := range fn.Pkg.Pkg.Imports() {
			if imp.Path() == FuturePkgPath {
				return imp
			}
		}
	}
	return types.NewPackage(FuturePkgPath, "async")
}

// getAsyncContextType returns the *async.Context type from the async package.
// This retrieves the actual type with proper scope for ABI type name generation.
func (g *PullIRCodeGen) getAsyncContextType() *types.Pointer {
	fn := g.pullIR.Original
	if fn.Pkg != nil && fn.Pkg.Pkg != nil {
		for _, imp := range fn.Pkg.Pkg.Imports() {
			if imp.Path() == FuturePkgPath {
				ctxObj := imp.Scope().Lookup("Context")
				if ctxObj != nil {
					if ctxNamed, ok := ctxObj.Type().(*types.Named); ok {
						return types.NewPointer(ctxNamed)
					}
				}
				break
			}
		}
	}
	// Fallback
	return types.NewPointer(types.NewStruct(nil, nil))
}

// getAsyncPollType creates the Poll[T] type using the async package's Poll type.
func (g *PullIRCodeGen) getAsyncPollType(resultType types.Type) types.Type {
	fn := g.pullIR.Original
	if fn.Pkg != nil && fn.Pkg.Pkg != nil {
		for _, imp := range fn.Pkg.Pkg.Imports() {
			if imp.Path() == FuturePkgPath {
				pollObj := imp.Scope().Lookup("Poll")
				if pollObj != nil {
					if pollNamed, ok := pollObj.Type().(*types.Named); ok {
						// Instantiate Poll[T] with resultType
						typeParams := pollNamed.TypeParams()
						if typeParams != nil && typeParams.Len() > 0 {
							inst, err := types.Instantiate(nil, pollNamed, []types.Type{resultType}, false)
							if err == nil {
								return inst
							}
						}
					}
				}
				break
			}
		}
	}
	// Fallback: create anonymous struct
	pollFields := []*types.Var{
		types.NewVar(0, nil, "ready", types.Typ[types.Bool]),
		types.NewVar(0, nil, "value", resultType),
	}
	return types.NewStruct(pollFields, nil)
}

// =============================================================================
// Concrete Wrapper Generation
// =============================================================================

func (g *PullIRCodeGen) generateConcreteWrapper(stateType llssa.Type) error {
	fn := g.pullIR.Original
	wrapperName := llssa.FuncName(fn.Pkg.Pkg, fn.Name()+"$Concrete", nil, false)

	// Return type is *State
	ptrType := types.NewPointer(g.stateNamed)
	sig := types.NewSignatureType(nil, nil, nil, g.signatureWithCtx(fn.Signature).Params(),
		types.NewTuple(types.NewVar(0, nil, "", ptrType)), false)

	wrapper := g.pkg.NewFunc(wrapperName, sig, llssa.InGo)
	wrapper.MakeBody(1)
	b := wrapper.NewBuilder()
	b.SetBlock(wrapper.Block(0))

	// Allocate state struct (heap)
	statePtr := b.Alloc(stateType, true)

	// Initialize state to 0
	g.int8Type = g.prog.Type(types.Typ[types.Int8], llssa.InGo)
	stateFieldPtr := b.FieldAddr(statePtr, 0)
	b.Store(stateFieldPtr, g.prog.IntVal(0, g.int8Type))

	// Copy parameters (skip closure ctx when present)
	paramOffset := 0
	var ctxParam llssa.Expr
	if g.closureCtxParam() != nil {
		ctxParam = wrapper.Param(0)
		paramOffset = 1
	}
	for i, slot := range g.pullIR.Params {
		if slot.FieldIdx > 0 {
			fieldPtr := b.FieldAddr(statePtr, slot.FieldIdx)
			b.Store(fieldPtr, wrapper.Param(i+paramOffset))
		}
	}

	// Initialize captured free vars from closure context.
	if !ctxParam.IsNil() {
		for _, slot := range g.pullIR.Slots {
			fv, ok := slot.SSAValue.(*ssa.FreeVar)
			if !ok || slot.FieldIdx < 0 {
				continue
			}
			idx := g.freeVarIndex(fv)
			if idx < 0 {
				continue
			}
			fvPtr := b.FieldAddr(ctxParam, idx)
			fvVal := b.Load(fvPtr)
			b.Store(b.FieldAddr(statePtr, slot.FieldIdx), fvVal)
		}
	}

	b.Return(statePtr)

	// Save reference for interface wrapper
	g.concrete = wrapper

	debugf("[PullIR] Generated $Concrete wrapper for %s", fn.Name())
	return nil
}

// =============================================================================
// Poll Method Generation
// =============================================================================

func (g *PullIRCodeGen) generatePollMethod(stateType llssa.Type) error {
	fn := g.pullIR.Original
	numStates := len(g.pullIR.States)

	// Get Poll method signature
	pollMethod := g.stateNamed.Method(0) // Poll is the first (only) method
	sig := pollMethod.Type().(*types.Signature)
	pkgPath := ""
	if fn.Pkg != nil && fn.Pkg.Pkg != nil {
		pkgPath = fn.Pkg.Pkg.Path()
	}
	methodName := llssa.FuncName(fn.Pkg.Pkg, "Poll", sig.Recv(), false)
	if pkgPath != "" && !strings.Contains(methodName, pkgPath) {
		// Ensure fully-qualified symbol with package path.
		methodName = fmt.Sprintf("%s.(*%s$State).Poll", pkgPath, fn.Name())
	}
	poll := g.pkg.NewFunc(methodName, sig, llssa.InGo)
	g.poll = poll

	// Blocks: entry, loop, states..., done, default
	numBlocks := 4 + numStates
	poll.MakeBody(numBlocks)
	b := poll.NewBuilder()

	g.statePtr = poll.Param(0)
	g.completedIdx = numStates

	entryBlock := poll.Block(0)
	loopBlock := poll.Block(1)
	doneBlock := poll.Block(2 + numStates)
	defaultBlock := poll.Block(3 + numStates)
	g.loopBlock = loopBlock
	var stateFieldPtr llssa.Expr
	var stateVal llssa.Expr

	// Entry: jump to loop
	b.SetBlock(entryBlock)
	g.prepareStackAllocPtrs(b)
	b.Jump(loopBlock)

	// Loop: switch on state
	b.SetBlock(loopBlock)
	stateFieldPtr = b.FieldAddr(g.statePtr, 0)
	stateVal = b.Load(stateFieldPtr)

	sw := b.Switch(stateVal, defaultBlock)
	for i := 0; i < numStates; i++ {
		sw.Case(g.prog.IntVal(uint64(i), g.int8Type), poll.Block(2+i))
	}
	sw.Case(g.prog.IntVal(uint64(g.completedIdx), g.int8Type), doneBlock)
	sw.End(b)

	// Generate state blocks
	for i, state := range g.pullIR.States {
		b.SetBlock(poll.Block(2 + i))
		g.generateStateBlock(b, state, i)
	}

	// Done block
	b.SetBlock(doneBlock)
	g.generateDoneBlock(b)

	// Default block
	b.SetBlock(defaultBlock)
	b.Return(g.createZeroPoll())

	debugf("[PullIR] Generated Poll method for %s (%d states)", fn.Name(), numStates)
	return nil
}

func (g *PullIRCodeGen) generateStateBlock(b llssa.Builder, state *PullState, stateIdx int) {
	g.temps = nil
	g.restoreStackAllocState(b)

	// If this state contains an Await, split initialization so the sub-future
	// is created only once and reused across polls.
	awaitIdx := -1
	var awaitInstr *Await
	for i, instr := range state.Instructions {
		if a, ok := instr.(*Await); ok {
			awaitIdx = i
			awaitInstr = a
			break
		}
	}
	if awaitIdx >= 0 && awaitInstr != nil && awaitInstr.SubFuture.Kind == VarRefSlot && awaitInstr.SubFuture.Slot != nil && awaitInstr.SubFuture.Slot.FieldIdx >= 0 {
		slot := awaitInstr.SubFuture.Slot
		var cur llssa.Expr
		if g.isStackAllocSlot(slot) {
			cur = b.Load(g.ensureStackAllocPtr(b, slot))
		} else {
			cur = b.Load(b.FieldAddr(g.statePtr, slot.FieldIdx))
		}
		zero := g.prog.Zero(cur.Type)
		needsInit := b.BinOp(token.EQL, cur, zero)

		initBlock := g.poll.MakeBlock()
		pollBlock := g.poll.MakeBlock()
		b.If(needsInit, initBlock, pollBlock)

		b.SetBlock(initBlock)
		for i := 0; i < awaitIdx; i++ {
			g.generateInstr(b, state.Instructions[i], stateIdx)
		}
		b.Jump(pollBlock)

		b.SetBlock(pollBlock)
		g.temps = nil
		for i := awaitIdx; i < len(state.Instructions); i++ {
			g.generateInstr(b, state.Instructions[i], stateIdx)
		}
		return
	}

	for _, instr := range state.Instructions {
		g.generateInstr(b, instr, stateIdx)
	}
}

func (g *PullIRCodeGen) generateInstr(b llssa.Builder, instr PullInstr, stateIdx int) {
	switch v := instr.(type) {
	case *LoadSlot:
		if v.Src != nil && v.Src.FieldIdx >= 0 {
			if g.isStackAllocSlot(v.Src) {
				ptr := g.ensureStackAllocPtr(b, v.Src)
				g.temps = append(g.temps, b.Load(ptr))
			} else {
				fieldPtr := b.FieldAddr(g.statePtr, v.Src.FieldIdx)
				g.temps = append(g.temps, b.Load(fieldPtr))
			}
		}

	case *StoreSlot:
		if v.Dst != nil && v.Dst.FieldIdx >= 0 {
			val := g.slotValue(b, v.Value)
			if g.isStackAllocSlot(v.Dst) {
				if ptr := g.ensureStackAllocPtr(b, v.Dst); !ptr.IsNil() {
					b.Store(ptr, val)
				}
			} else {
				fieldPtr := b.FieldAddr(g.statePtr, v.Dst.FieldIdx)
				// Defensive check: avoid LLVM crash on nil/opaque values during debugging.
				if fieldPtr.IsNil() || val.IsNil() {
					panic(fmt.Sprintf("StoreSlot nil ptr/val: dst=%v idx=%d ptrNil=%v valNil=%v", v.Dst.Name, v.Dst.FieldIdx, fieldPtr.IsNil(), val.IsNil()))
				}
				if val.Type.RawType().String() == "invalid type" {
					panic(fmt.Sprintf("StoreSlot invalid val type in %s dst=%s idx=%d ref=%+v", g.pullIR.Original.String(), v.Dst.Name, v.Dst.FieldIdx, v.Value))
				}
				b.Store(fieldPtr, val)
			}
		}

	case *PullBinOp:
		x := g.getExpr(b, v.X)
		y := g.getExpr(b, v.Y)
		g.temps = append(g.temps, b.BinOp(v.Op, x, y))

	case *PullUnOp:
		// Special handling for channel receive to make it non-blocking in pull model.
		if v.Op == token.ARROW {
			ch := g.getExpr(b, v.X)
			waker := g.loadWaker(b)
			// Build a non-blocking select with single recv case.
			state := llssa.SelectState{Chan: ch, Send: false}
			sel := b.SelectWithWaker([]*llssa.SelectState{&state}, waker)
			chosen := b.Field(sel, 0)
			ready := b.BinOp(token.NEQ, chosen, g.prog.Val(-1))

			readyBlock := g.poll.MakeBlock()
			pendingBlock := g.poll.MakeBlock()
			b.If(ready, readyBlock, pendingBlock)

			// Pending -> return Pending[T]
			b.SetBlock(pendingBlock)
			g.flushStackAllocState(b)
			b.Return(g.createZeroPoll())

			// Ready -> extract value (and ok if comma-ok)
			b.SetBlock(readyBlock)
			val := b.Field(sel, 2) // first recv value
			var result llssa.Expr
			if v.CommaOk {
				ok := b.Field(sel, 1) // recvOK
				t := g.prog.Type(v.ResultType, llssa.InGo)
				result = b.AggregateExpr(t, val, ok)
			} else {
				result = val
			}
			g.temps = append(g.temps, result)
			break
		}
		x := g.getExpr(b, v.X)
		g.temps = append(g.temps, b.UnOp(v.Op, x))

	case *PullAlloc:
		// Allocate memory for the element type
		elemType := g.prog.Type(v.Type, llssa.InGo)
		ptr := b.Alloc(elemType, v.Heap)
		g.temps = append(g.temps, ptr)

	case *PullMakeChan:
		chType := g.prog.Type(v.ChanType, llssa.InGo)
		size := g.getExpr(b, v.Size)
		if size.IsNil() {
			size = g.prog.IntVal(0, g.prog.Int())
		}
		g.temps = append(g.temps, b.MakeChan(chType, size))

	case *PullMakeSlice:
		sliceType := g.prog.Type(v.SliceType, llssa.InGo)
		lenExpr := g.getExpr(b, v.Len)
		if lenExpr.IsNil() {
			lenExpr = g.prog.IntVal(0, g.prog.Int())
		}
		capExpr := g.getExpr(b, v.Cap)
		if capExpr.IsNil() {
			capExpr = lenExpr
		}
		g.temps = append(g.temps, b.MakeSlice(sliceType, lenExpr, capExpr))

	case *PullMakeMap:
		mapType := g.prog.Type(v.MapType, llssa.InGo)
		reserve := g.getExpr(b, v.Reserve)
		if reserve.IsNil() {
			reserve = g.prog.IntVal(0, g.prog.Int())
		}
		g.temps = append(g.temps, b.MakeMap(mapType, reserve))

	case *PullMakeInterface:
		// Create interface from concrete value
		ifaceType := g.prog.Type(v.IfaceType, llssa.InGo)
		concrete := g.getExpr(b, v.Value)
		iface := b.MakeInterface(ifaceType, concrete)
		g.temps = append(g.temps, iface)

	case *PullMakeClosure:
		fnExpr := g.getExpr(b, VarRef{Kind: VarRefConst, Const: v.Func})
		if fnExpr.IsNil() && g.compileValue != nil {
			fnExpr = g.compileValue(b, v.Func)
		}
		if fnExpr.IsNil() {
			panic(fmt.Sprintf("MakeClosure nil fn in %s: %v", g.pullIR.FuncName, v.Func))
		}
		bindings := make([]llssa.Expr, len(v.Bindings))
		for i, bind := range v.Bindings {
			bindings[i] = g.slotValue(b, bind)
		}
		closure := b.MakeClosure(fnExpr, bindings)
		g.temps = append(g.temps, closure)

	case *PullLookup:
		// Map lookup: value, ok = m[key]
		mapVal := g.getExpr(b, v.Map)
		keyVal := g.getExpr(b, v.Key)
		result := b.Lookup(mapVal, keyVal, v.CommaOk)
		g.temps = append(g.temps, result)

	case *PullRange:
		// Range creates iterator for collection
		x := g.getExpr(b, v.X)
		iter := b.Range(x)
		g.temps = append(g.temps, iter)

	case *PullSlice:
		base := g.getExpr(b, v.Base)
		low := g.getExpr(b, v.Low)
		high := g.getExpr(b, v.High)
		ret := b.Slice(base, low, high, llssa.Expr{})
		g.temps = append(g.temps, ret)

	case *PullExtract:
		tuple := g.getExpr(b, v.Tuple)
		g.temps = append(g.temps, b.Field(tuple, v.Index))

	case *PullIndex:
		base := g.getExpr(b, v.Base)
		idx := g.getExpr(b, v.Index)
		ptr := b.IndexAddr(base, idx)
		g.temps = append(g.temps, ptr)

	case *PullFieldAddr:
		base := g.getExpr(b, v.Base)
		ptr := b.FieldAddr(base, v.Field)
		g.temps = append(g.temps, ptr)

	case *PullLoad:
		addr := g.getExpr(b, v.Addr)
		g.temps = append(g.temps, b.Load(addr))

	case *PullStore:
		addr := g.getExpr(b, v.Addr)
		val := g.getExpr(b, v.Value)
		b.Store(addr, val)

	case *PullSend:
		// Non-blocking send using TrySelect with single send case.
		ch := g.getExpr(b, v.Chan)
		val := g.getExpr(b, v.Value)
		waker := g.loadWaker(b)
		state := llssa.SelectState{Chan: ch, Value: val, Send: true}
		sel := b.SelectWithWaker([]*llssa.SelectState{&state}, waker)
		chosen := b.Field(sel, 0)
		ready := b.BinOp(token.NEQ, chosen, g.prog.Val(-1))
		readyBlock := g.poll.MakeBlock()
		pendingBlock := g.poll.MakeBlock()
		b.If(ready, readyBlock, pendingBlock)

		b.SetBlock(pendingBlock)
		g.flushStackAllocState(b)
		b.Return(g.createZeroPoll())

		b.SetBlock(readyBlock)
	// send has no result, just proceed

	case *PullSelect:
		var states []*llssa.SelectState
		for i := range v.States {
			st := v.States[i]
			ch := g.getExpr(b, st.Chan)
			var val llssa.Expr
			if st.Send {
				val = g.getExpr(b, st.Value)
			}
			states = append(states, &llssa.SelectState{Chan: ch, Value: val, Send: st.Send})
		}
		waker := g.loadWaker(b)
		sel := b.SelectWithWaker(states, waker)
		if v.Blocking {
			chosen := b.Field(sel, 0)
			ready := b.BinOp(token.NEQ, chosen, g.prog.Val(-1))
			readyBlock := g.poll.MakeBlock()
			pendingBlock := g.poll.MakeBlock()
			b.If(ready, readyBlock, pendingBlock)

			b.SetBlock(pendingBlock)
			g.flushStackAllocState(b)
			b.Return(g.createZeroPoll())

			b.SetBlock(readyBlock)
		}
		g.temps = append(g.temps, sel)

	case *PullGo:
		var args []llssa.Expr
		for _, a := range v.Args {
			args = append(args, g.getExpr(b, a))
		}
		var fnExpr llssa.Expr
		if v.IsInvoke {
			recv := g.slotValue(b, v.Func)
			fnExpr = b.Imethod(recv, v.Method)
		} else {
			fnExpr = g.slotValue(b, v.Func)
		}
		if fnExpr.IsNil() {
			return
		}
		b.Go(fnExpr, args...)

	case *PullCall:
		var args []llssa.Expr
		for _, a := range v.Args {
			args = append(args, g.getExpr(b, a))
		}
		// Builtin fast paths (len only for now)
		if bi, ok := v.Func.(*ssa.Builtin); ok && bi.Name() == "len" && len(args) == 1 {
			ret := b.SliceLen(args[0])
			g.temps = append(g.temps, ret)
			return
		}

		var fnExpr llssa.Expr
		if slot := g.findSlotBySSA(v.Func); slot != nil {
			fnExpr = g.getExpr(b, NewSlotRef(slot))
		} else {
			fnExpr = g.getExpr(b, VarRef{Kind: VarRefConst, Const: v.Func}) // fallback
			if g.compileValue != nil {
				if _, ok := v.Func.(*ssa.Builtin); !ok {
					if compiled := g.compileValue(b, v.Func); !compiled.IsNil() {
						fnExpr = compiled
					}
				}
			}
		}
		if _, ok := v.Func.(*ssa.Builtin); !ok {
			switch rt := fnExpr.Type.RawType().Underlying().(type) {
			case *types.Signature:
				// ok
			case *types.Struct:
				// closures are represented as structs
				if !llssa.IsClosure(rt) {
					panic(fmt.Sprintf("PullCall fn not callable in %s: %v raw=%T", g.pullIR.FuncName, v.Func, fnExpr.Type.RawType()))
				}
			default:
				panic(fmt.Sprintf("PullCall fn not callable in %s: %v raw=%T", g.pullIR.FuncName, v.Func, fnExpr.Type.RawType()))
			}
		}
		ret := b.Call(fnExpr, args...)
		if v.HasValue {
			funcName := v.Func.String()
			if strings.HasPrefix(funcName, FuturePkgPath+".Return") {
				if g.pullIR.ResultSlot != nil && g.pullIR.ResultSlot.FieldIdx >= 0 && len(args) == 1 {
					argVal := g.slotValue(b, v.Args[0])
					b.Store(b.FieldAddr(g.statePtr, g.pullIR.ResultSlot.FieldIdx), argVal)
				}
			}
			g.temps = append(g.temps, ret)
		}

	case *PullDefer:
		g.emitDefer(b, v)

	case *PullConvert:
		val := g.getExpr(b, v.Value)
		t := g.prog.Type(v.Type, llssa.InGo)
		g.temps = append(g.temps, b.Convert(t, val))

	case *PullNext:
		// Next advances iterator and returns (key, value, ok)
		iter := g.getExpr(b, v.Iter)
		elemType := g.prog.Type(v.ElemType, llssa.InGo)
		result := b.Next(elemType, iter, v.IsString)
		g.temps = append(g.temps, result)

	case *PullPanic:
		panicVal := g.getExpr(b, v.Value)
		g.emitPanic(b, panicVal)

	case *PullRunDefers:
		g.emitRunDefers(b)

	case *Await:
		// Poll the sub-future: if pending -> return Pending; if ready -> store result and continue.
		subFuture := g.getExpr(b, v.SubFuture)

		// Build Poll method for the sub-future receiver.
		resultType := v.ResultSlot.Type
		pollMethod := g.createPollMethod(resultType)
		ctxParam := g.poll.Param(1)
		goSubFutType := subFuture.Type.RawType()
		_, isInterface := goSubFutType.Underlying().(*types.Interface)

		var pollResult llssa.Expr
		if isInterface {
			pollClosure := b.Imethod(subFuture, pollMethod)
			pollResult = b.Call(pollClosure, ctxParam)
		} else {
			mset := types.NewMethodSet(goSubFutType)
			var pollSel *types.Selection
			for i := 0; i < mset.Len(); i++ {
				sel := mset.At(i)
				if sel.Obj().Name() == "Poll" {
					pollSel = sel
					break
				}
			}
			if pollSel == nil {
				g.flushStackAllocState(b)
				b.Return(g.createZeroPoll())
				return
			}
			pollMethodObj := pollSel.Obj().(*types.Func)
			methodSig := pollMethodObj.Type().(*types.Signature)
			methodName := llssa.FuncName(pollMethodObj.Pkg(), "Poll", methodSig.Recv(), false)
			methodFunc := g.pkg.NewFunc(methodName, methodSig, llssa.InGo)
			pollResult = b.Call(methodFunc.Expr, subFuture, ctxParam)
		}

		ready := b.Field(pollResult, 0)
		readyBlock := g.poll.MakeBlock()
		pendingBlock := g.poll.MakeBlock()
		b.If(ready, readyBlock, pendingBlock)

		// Pending: return Pending for outer Poll[T]
		b.SetBlock(pendingBlock)
		g.flushStackAllocState(b)
		b.Return(g.createZeroPoll())

		// Ready: extract value, store, update state, jump loop
		b.SetBlock(readyBlock)
		if st, ok := g.pollLLType.RawType().Underlying().(*types.Struct); ok && st.NumFields() > 2 {
			errVal := b.Field(pollResult, 2)
			zeroErr := g.prog.Zero(errVal.Type)
			hasErr := b.BinOp(token.NEQ, errVal, zeroErr)

			errBlock := g.poll.MakeBlock()
			continueBlock := g.poll.MakeBlock()
			b.If(hasErr, errBlock, continueBlock)

			b.SetBlock(errBlock)
			g.emitPanic(b, errVal)

			b.SetBlock(continueBlock)
		}
		value := b.Field(pollResult, 1)
		if v.ResultSlot != nil && v.ResultSlot.FieldIdx >= 0 {
			fieldPtr := b.FieldAddr(g.statePtr, v.ResultSlot.FieldIdx)
			b.Store(fieldPtr, value)
		}
		// Reset sub-future slot so next iteration re-creates it.
		if v.SubFuture.Kind == VarRefSlot && v.SubFuture.Slot != nil && v.SubFuture.Slot.FieldIdx >= 0 {
			slot := v.SubFuture.Slot
			zero := g.prog.Zero(g.prog.Type(slot.Type, llssa.InGo))
			if g.isStackAllocSlot(slot) {
				if ptr := g.ensureStackAllocPtr(b, slot); !ptr.IsNil() {
					b.Store(ptr, zero)
				}
			} else {
				fieldPtr := b.FieldAddr(g.statePtr, slot.FieldIdx)
				b.Store(fieldPtr, zero)
			}
		}
		// Advance state and continue dispatch
		stateFieldPtr := b.FieldAddr(g.statePtr, 0)
		b.Store(stateFieldPtr, g.prog.IntVal(uint64(v.NextState), g.int8Type))
		g.flushStackAllocState(b)
		b.Jump(g.loopBlock)

	case *Branch:
		cond := g.getExpr(b, v.Cond)
		trueBlock := g.poll.MakeBlock()
		falseBlock := g.poll.MakeBlock()
		b.If(cond, trueBlock, falseBlock)

		b.SetBlock(trueBlock)
		g.generateEdgeWrites(b, stateIdx, v.TrueState)
		stateFieldPtr := b.FieldAddr(g.statePtr, 0)
		b.Store(stateFieldPtr, g.prog.IntVal(uint64(v.TrueState), g.int8Type))
		g.flushStackAllocState(b)
		b.Jump(g.loopBlock)

		b.SetBlock(falseBlock)
		g.generateEdgeWrites(b, stateIdx, v.FalseState)
		stateFieldPtr = b.FieldAddr(g.statePtr, 0)
		b.Store(stateFieldPtr, g.prog.IntVal(uint64(v.FalseState), g.int8Type))
		g.flushStackAllocState(b)
		b.Jump(g.loopBlock)

	case *Jump:
		g.generateEdgeWrites(b, stateIdx, v.Target)
		stateFieldPtr := b.FieldAddr(g.statePtr, 0)
		b.Store(stateFieldPtr, g.prog.IntVal(uint64(v.Target), g.int8Type))
		g.flushStackAllocState(b)
		b.Jump(g.loopBlock)

	case *Return:
		var val llssa.Expr
		if g.pullIR.ResultSlot != nil && g.pullIR.ResultSlot.FieldIdx >= 0 {
			val = b.Load(b.FieldAddr(g.statePtr, g.pullIR.ResultSlot.FieldIdx))
		} else {
			val = g.slotValue(b, v.Value)
		}
		g.flushStackAllocState(b)
		g.storeResult(b, val)
		g.returnReady(b, val)
	}
}

func (g *PullIRCodeGen) generateEdgeWrites(b llssa.Builder, fromState, toState int) {
	if fromState < 0 || fromState >= len(g.pullIR.States) {
		return
	}
	for _, ew := range g.pullIR.States[fromState].EdgeWrites[toState] {
		if ew.Dst == nil || ew.Dst.FieldIdx < 0 {
			continue
		}
		val := g.slotValue(b, ew.Value)
		if ew.Dst.StackAlloc {
			if ptr := g.ensureStackAllocPtr(b, ew.Dst); !ptr.IsNil() {
				b.Store(ptr, val)
			}
		}
		fieldPtr := b.FieldAddr(g.statePtr, ew.Dst.FieldIdx)
		b.Store(fieldPtr, val)
	}
}

// =============================================================================
// Helpers
// =============================================================================

func (g *PullIRCodeGen) emitDefer(b llssa.Builder, v *PullDefer) {
	if !g.pullIR.HasDefer || g.deferFieldIdx < 0 {
		return
	}
	deferStatePtr := b.FieldAddr(g.statePtr, g.deferFieldIdx)

	var fnExpr llssa.Expr
	if v.IsInvoke {
		recv := g.slotValue(b, v.Func)
		fnExpr = b.Imethod(recv, v.Method)
	} else {
		fnExpr = g.slotValue(b, v.Func)
	}
	if fnExpr.IsNil() {
		return
	}

	wrapperInfo := g.ensureDeferWrapper(fnExpr.Type.RawType(), v.ArgTypes)

	// Allocate argument bundle on heap and capture values at defer time.
	argPtr := b.Alloc(wrapperInfo.argStructType, true)
	b.Store(b.FieldAddr(argPtr, 0), fnExpr)
	for i, arg := range v.Args {
		val := g.slotValue(b, arg)
		b.Store(b.FieldAddr(argPtr, i+1), val)
	}

	unsafePtrType := g.prog.Type(types.Typ[types.UnsafePointer], llssa.InGo)
	argPtrUnsafe := b.Convert(unsafePtrType, argPtr)

	// Create function reference for async.(*DeferState).PushDefer
	deferStatePtrType := types.NewPointer(g.getDeferStateType())
	wrapperSig := types.NewSignatureType(
		nil,
		nil,
		nil,
		types.NewTuple(types.NewVar(0, nil, "arg", types.Typ[types.UnsafePointer])),
		nil,
		false,
	)
	pushDeferSig := types.NewSignatureType(
		types.NewVar(0, nil, "", deferStatePtrType),
		nil,
		nil,
		types.NewTuple(
			types.NewVar(0, nil, "fn", wrapperSig),
			types.NewVar(0, nil, "arg", types.Typ[types.UnsafePointer]),
		),
		nil,
		false,
	)
	methodName := llssa.FuncName(
		types.NewPackage(FuturePkgPath, "async"),
		"PushDefer",
		pushDeferSig.Recv(),
		false,
	)
	pushDeferFunc := g.pkg.NewFunc(methodName, pushDeferSig, llssa.InGo)
	b.Call(pushDeferFunc.Expr, deferStatePtr, wrapperInfo.fn.Expr, argPtrUnsafe)
}

func (g *PullIRCodeGen) emitPanic(b llssa.Builder, panicVal llssa.Expr) {
	if !g.pullIR.HasDefer || g.deferFieldIdx < 0 {
		g.markCompleted(b)
		g.storePanicValue(b, panicVal)
		g.flushStackAllocState(b)
		g.returnError(b, panicVal)
		return
	}

	deferStatePtr := b.FieldAddr(g.statePtr, g.deferFieldIdx)
	deferStatePtrType := types.NewPointer(g.getDeferStateType())
	doPanicSig := types.NewSignatureType(
		types.NewVar(0, nil, "", deferStatePtrType),
		nil,
		nil,
		types.NewTuple(types.NewVar(0, nil, "v", types.NewInterfaceType(nil, nil))),
		types.NewTuple(types.NewVar(0, nil, "", types.Typ[types.Bool])),
		false,
	)
	methodName := llssa.FuncName(
		types.NewPackage(FuturePkgPath, "async"),
		"DoPanic",
		doPanicSig.Recv(),
		false,
	)
	doPanicFunc := g.pkg.NewFunc(methodName, doPanicSig, llssa.InGo)
	recovered := b.Call(doPanicFunc.Expr, deferStatePtr, panicVal)

	recoveredBlock := b.Func.MakeBlock()
	panicBlock := b.Func.MakeBlock()
	b.If(recovered, recoveredBlock, panicBlock)

	b.SetBlock(recoveredBlock)
	g.markCompleted(b)
	g.clearPanicValue(b)
	finalValue := g.loadResultValue(b)
	g.flushStackAllocState(b)
	g.returnReady(b, finalValue)

	b.SetBlock(panicBlock)
	g.markCompleted(b)
	g.storePanicValue(b, panicVal)
	g.flushStackAllocState(b)
	g.returnError(b, panicVal)
}

func (g *PullIRCodeGen) emitRunDefers(b llssa.Builder) {
	if !g.pullIR.HasDefer || g.deferFieldIdx < 0 {
		return
	}
	deferStatePtr := b.FieldAddr(g.statePtr, g.deferFieldIdx)

	deferStatePtrType := types.NewPointer(g.getDeferStateType())
	runDefersSig := types.NewSignatureType(
		types.NewVar(0, nil, "", deferStatePtrType),
		nil, nil, nil, nil, false,
	)
	methodName := llssa.FuncName(
		types.NewPackage(FuturePkgPath, "async"),
		"RunDefers",
		runDefersSig.Recv(),
		false,
	)
	runDefersFunc := g.pkg.NewFunc(methodName, runDefersSig, llssa.InGo)
	b.Call(runDefersFunc.Expr, deferStatePtr)

	deferStateType := g.getDeferStateType()
	deferStatePtrType = types.NewPointer(deferStateType)
	deferStateLLType := g.prog.Type(deferStatePtrType, llssa.InGo)
	isPanickingPtr := b.FieldAddr(b.Convert(deferStateLLType, deferStatePtr), 2)
	recoveredPtr := b.FieldAddr(b.Convert(deferStateLLType, deferStatePtr), 3)
	panicValPtr := b.FieldAddr(b.Convert(deferStateLLType, deferStatePtr), 1)

	isPanicking := b.Load(isPanickingPtr)
	contBlock := b.Func.MakeBlock()
	checkRecovered := b.Func.MakeBlock()
	b.If(isPanicking, checkRecovered, contBlock)

	b.SetBlock(checkRecovered)
	recovered := b.Load(recoveredPtr)
	propagateIfNotRec := b.Func.MakeBlock()
	b.If(b.BinOp(token.EQL, recovered, g.prog.BoolVal(false)), propagateIfNotRec, contBlock)

	b.SetBlock(propagateIfNotRec)
	panicVal := b.Load(panicValPtr)
	g.markCompleted(b)
	g.storePanicValue(b, panicVal)
	g.flushStackAllocState(b)
	g.returnError(b, panicVal)

	b.SetBlock(contBlock)
}

func (g *PullIRCodeGen) isStackAllocSlot(slot *Slot) bool {
	if slot == nil {
		return false
	}
	_, ok := g.stackAllocSlots[slot]
	return ok
}

func (g *PullIRCodeGen) ensureStackAllocPtr(b llssa.Builder, slot *Slot) llssa.Expr {
	if ptr, ok := g.stackAllocPtrs[slot]; ok && !ptr.IsNil() {
		return ptr
	}
	if slot == nil || !g.isStackAllocSlot(slot) {
		return llssa.Expr{}
	}
	elemType := g.prog.Type(slot.Type, llssa.InGo)
	ptr := b.Alloc(elemType, false)
	g.stackAllocPtrs[slot] = ptr
	return ptr
}

func (g *PullIRCodeGen) prepareStackAllocPtrs(b llssa.Builder) {
	if len(g.stackAllocSlots) == 0 {
		return
	}
	for slot := range g.stackAllocSlots {
		g.ensureStackAllocPtr(b, slot)
	}
}

func (g *PullIRCodeGen) restoreStackAllocState(b llssa.Builder) {
	if len(g.stackAllocSlots) == 0 {
		return
	}
	for slot := range g.stackAllocSlots {
		if slot.FieldIdx < 0 {
			continue
		}
		ptr := g.ensureStackAllocPtr(b, slot)
		if ptr.IsNil() {
			continue
		}
		val := b.Load(b.FieldAddr(g.statePtr, slot.FieldIdx))
		b.Store(ptr, val)
	}
}

func (g *PullIRCodeGen) flushStackAllocState(b llssa.Builder) {
	if len(g.stackAllocSlots) == 0 {
		return
	}
	for slot := range g.stackAllocSlots {
		if slot.FieldIdx < 0 {
			continue
		}
		ptr := g.ensureStackAllocPtr(b, slot)
		if ptr.IsNil() {
			continue
		}
		val := b.Load(ptr)
		b.Store(b.FieldAddr(g.statePtr, slot.FieldIdx), val)
	}
}

// loadWaker returns ctx.Waker for the current Poll invocation.
// The Context layout is defined in async.Context: field 0 is Waker.
func (g *PullIRCodeGen) loadWaker(b llssa.Builder) llssa.Expr {
	if g.poll == nil {
		return llssa.Expr{}
	}
	ctx := g.poll.Param(1)
	return b.Load(b.FieldAddr(ctx, 0))
}

func (g *PullIRCodeGen) findSlotBySSA(v ssa.Value) *Slot {
	if v == nil || g.pullIR == nil {
		return nil
	}
	for _, slot := range g.pullIR.Slots {
		if slot.SSAValue == v {
			return slot
		}
	}
	return nil
}

// slotValue returns the value of a VarRef, loading from stack-alloc pointers when needed.
func (g *PullIRCodeGen) slotValue(b llssa.Builder, ref VarRef) llssa.Expr {
	// Fast path: const/temp handled by getExpr
	if ref.Kind != VarRefSlot || ref.Slot == nil {
		return g.getExpr(b, ref)
	}
	expr := g.getExpr(b, ref)
	if expr.Type.RawType().String() == "invalid type" {
		panic(fmt.Sprintf("slotValue invalid type: refKind=%v slot=%v", ref.Kind, ref.Slot))
	}
	if g.isStackAllocSlot(ref.Slot) {
		return b.Load(expr)
	}
	return expr
}

func (g *PullIRCodeGen) getExpr(b llssa.Builder, ref VarRef) llssa.Expr {
	switch ref.Kind {
	case VarRefSlot:
		if ref.Slot != nil && ref.Slot.FieldIdx >= 0 {
			if g.isStackAllocSlot(ref.Slot) {
				// Use per-poll stack slot
				return g.ensureStackAllocPtr(b, ref.Slot)
			}
			return b.Load(b.FieldAddr(g.statePtr, ref.Slot.FieldIdx))
		}
	case VarRefConst:
		if ref.Const == nil {
			// Represents an omitted slice bound or len default.
			return llssa.Expr{}
		}
		if bi, ok := ref.Const.(*ssa.Builtin); ok {
			return llssa.Builtin(bi.Name())
		}
		if g.compileValue != nil {
			if val := g.compileValue(b, ref.Const); !val.IsNil() {
				return val
			}
		}
		if c, ok := ref.Const.(*ssa.Const); ok {
			return g.prog.Zero(g.prog.Type(c.Type(), llssa.InGo))
		}
		debugf("[PullIR] Warning: non-const VarRef %v (%T) - should be accessed via slot", ref.Const, ref.Const)
	case VarRefTemp:
		if ref.Temp >= 0 && ref.Temp < len(g.temps) {
			return g.temps[ref.Temp]
		}
		// Debug: temp index out of range
		debugf("[PullIR] Warning: temp index %d out of range (have %d temps)", ref.Temp, len(g.temps))
	}
	panic(fmt.Sprintf("getExpr could not resolve VarRef %+v", ref))
}

func (g *PullIRCodeGen) storeResult(b llssa.Builder, val llssa.Expr) {
	if g.pullIR.ResultSlot != nil && g.pullIR.ResultSlot.FieldIdx >= 0 {
		b.Store(b.FieldAddr(g.statePtr, g.pullIR.ResultSlot.FieldIdx), val)
	}
}

func (g *PullIRCodeGen) loadResultValue(b llssa.Builder) llssa.Expr {
	if g.pullIR.ResultSlot == nil || g.pullIR.ResultSlot.FieldIdx < 0 {
		return llssa.Expr{}
	}
	return b.Load(b.FieldAddr(g.statePtr, g.pullIR.ResultSlot.FieldIdx))
}

func (g *PullIRCodeGen) markCompleted(b llssa.Builder) {
	stateFieldPtr := b.FieldAddr(g.statePtr, 0)
	b.Store(stateFieldPtr, g.prog.IntVal(uint64(g.completedIdx), g.int8Type))
}

func (g *PullIRCodeGen) storePanicValue(b llssa.Builder, value llssa.Expr) {
	if g.panicFieldIdx < 0 || value.IsNil() {
		return
	}
	fieldPtr := b.FieldAddr(g.statePtr, g.panicFieldIdx)
	b.Store(fieldPtr, value)
}

func (g *PullIRCodeGen) clearPanicValue(b llssa.Builder) {
	if g.panicFieldIdx < 0 {
		return
	}
	fieldPtr := b.FieldAddr(g.statePtr, g.panicFieldIdx)
	cur := b.Load(fieldPtr)
	zero := g.prog.Zero(cur.Type)
	b.Store(fieldPtr, zero)
}

func (g *PullIRCodeGen) loadPanicValue(b llssa.Builder) llssa.Expr {
	if g.panicFieldIdx < 0 {
		return llssa.Expr{}
	}
	fieldPtr := b.FieldAddr(g.statePtr, g.panicFieldIdx)
	return b.Load(fieldPtr)
}

func (g *PullIRCodeGen) returnReady(b llssa.Builder, val llssa.Expr) {
	trueVal := g.prog.BoolVal(true)
	zeroPoll := g.createZeroPoll()
	if val.IsNil() {
		val = b.Field(zeroPoll, 1)
	}
	fields := []llssa.Expr{trueVal, val}
	if st, ok := g.pollLLType.RawType().Underlying().(*types.Struct); ok && st.NumFields() > 2 {
		fields = append(fields, b.Field(zeroPoll, 2))
	}
	pollVal := b.AggregateExpr(g.pollLLType, fields...)
	b.Return(pollVal)
}

func (g *PullIRCodeGen) returnError(b llssa.Builder, panicVal llssa.Expr) {
	trueVal := g.prog.BoolVal(true)
	zeroPoll := g.createZeroPoll()
	value := b.Field(zeroPoll, 1)
	fields := []llssa.Expr{trueVal, value}
	if st, ok := g.pollLLType.RawType().Underlying().(*types.Struct); ok && st.NumFields() > 2 {
		errZero := b.Field(zeroPoll, 2)
		errVal := errZero
		if !panicVal.IsNil() && panicVal.Type == errZero.Type {
			errVal = panicVal
		}
		fields = append(fields, errVal)
	}
	pollVal := b.AggregateExpr(g.pollLLType, fields...)
	b.Return(pollVal)
}

func (g *PullIRCodeGen) createZeroPoll() llssa.Expr {
	return g.prog.Nil(g.pollLLType)
}

func (g *PullIRCodeGen) generateDoneBlock(b llssa.Builder) {
	if g.panicFieldIdx >= 0 {
		errVal := b.Load(b.FieldAddr(g.statePtr, g.panicFieldIdx))
		zeroErr := g.prog.Zero(errVal.Type)
		hasErr := b.BinOp(token.NEQ, errVal, zeroErr)

		errBlock := b.Func.MakeBlock()
		okBlock := b.Func.MakeBlock()
		b.If(hasErr, errBlock, okBlock)

		b.SetBlock(errBlock)
		g.returnError(b, errVal)

		b.SetBlock(okBlock)
	}
	if g.pullIR.ResultSlot != nil && g.pullIR.ResultSlot.FieldIdx >= 0 {
		val := b.Load(b.FieldAddr(g.statePtr, g.pullIR.ResultSlot.FieldIdx))
		g.returnReady(b, val)
	} else {
		b.Return(g.createZeroPoll())
	}
}

// =============================================================================
// Interface Wrapper
// =============================================================================

func (g *PullIRCodeGen) generateInterfaceWrapper() error {
	fn := g.pullIR.Original
	origSig := g.signatureWithCtx(fn.Signature)

	// Create wrapper with original function signature (returns Future[T] interface)
	wrapperName := llssa.FuncName(fn.Pkg.Pkg, fn.Name(), nil, false)
	wrapper := g.pkg.NewFunc(wrapperName, origSig, llssa.InGo)
	wrapper.MakeBlocks(1)

	b := wrapper.NewBuilder()
	b.SetBlock(wrapper.Block(0))

	// Collect parameters (include closure ctx when present)
	paramTuple := g.signatureWithCtx(fn.Signature).Params()
	args := make([]llssa.Expr, paramTuple.Len())
	for i := 0; i < paramTuple.Len(); i++ {
		args[i] = wrapper.Param(i)
	}

	// Call $Concrete wrapper (which returns *State)
	concreteResult := b.Call(g.concrete.Expr, args...)

	// Convert *State to Future[T] interface using MakeInterface
	// The Named type with Poll method enables proper itab generation
	origRetType := origSig.Results().At(0).Type()
	ifaceType := g.prog.Type(origRetType, llssa.InGo)
	ifaceVal := b.MakeInterface(ifaceType, concreteResult)

	b.Return(ifaceVal)

	debugf("[PullIR] Generated interface wrapper for %s", fn.Name())
	return nil
}
