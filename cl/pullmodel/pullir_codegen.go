// Package pullmodel implements the pull-based async/await transformation.
// This file implements Pull IR → LLVM code generation.
//
// This is a simplified version that can be incrementally enhanced.
// For full implementation, see llssa_codegen.go patterns.

package pullmodel

import (
	"fmt"
	"go/types"
	"log"

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
	statePtr     llssa.Expr
	temps        []llssa.Expr // Temps for current state
	poll         llssa.Function
	concrete     llssa.Function // $Concrete wrapper function
	loopBlock    llssa.BasicBlock
	int8Type     llssa.Type
	completedIdx int

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
	return &PullIRCodeGen{
		prog:   prog,
		pkg:    pkg,
		ssaPkg: ssaPkg,
		pullIR: pullIR,
	}
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
	log.Printf("[PullIR] Generated state struct with %d fields", g.pullIR.NumFields())

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

	log.Printf("[PullIR] Successfully generated code for %s", g.pullIR.FuncName)
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

	// Build Poll[T] struct type
	pollFields := []*types.Var{
		types.NewVar(0, nil, "ready", types.Typ[types.Bool]),
		types.NewVar(0, nil, "value", resultType),
	}
	pollStructType := types.NewStruct(pollFields, nil)

	// Get Context type
	asyncPkg := g.getAsyncPackage()
	ctxType := types.NewPointer(types.NewNamed(
		types.NewTypeName(0, asyncPkg, "Context", nil),
		types.NewStruct(nil, nil), nil,
	))

	pollSig := types.NewSignatureType(
		recvVar, nil, nil,
		types.NewTuple(types.NewVar(0, nil, "ctx", ctxType)),
		types.NewTuple(types.NewVar(0, nil, "", pollStructType)),
		false,
	)
	pollMethod := types.NewFunc(0, pkg, "Poll", pollSig)
	g.stateNamed.AddMethod(pollMethod)
}

func (g *PullIRCodeGen) buildPollLLType() llssa.Type {
	resultType := g.pullIR.ResultType
	if resultType == nil {
		resultType = types.NewStruct(nil, nil)
	}
	pollFields := []*types.Var{
		types.NewVar(0, nil, "ready", types.Typ[types.Bool]),
		types.NewVar(0, nil, "value", resultType),
	}
	return g.prog.Type(types.NewStruct(pollFields, nil), llssa.InGo)
}

func (g *PullIRCodeGen) getAsyncPackage() *types.Package {
	if g.ssaPkg != nil && g.ssaPkg.Pkg != nil {
		for _, imp := range g.ssaPkg.Pkg.Imports() {
			if imp.Path() == FuturePkgPath {
				return imp
			}
		}
	}
	return types.NewPackage(FuturePkgPath, "async")
}

// =============================================================================
// Concrete Wrapper Generation
// =============================================================================

func (g *PullIRCodeGen) generateConcreteWrapper(stateType llssa.Type) error {
	fn := g.pullIR.Original
	wrapperName := llssa.FuncName(fn.Pkg.Pkg, fn.Name()+"$Concrete", nil, false)

	// Return type is *State
	ptrType := types.NewPointer(g.stateNamed)
	sig := types.NewSignatureType(nil, nil, nil, fn.Signature.Params(),
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

	// Copy parameters
	for i, slot := range g.pullIR.Params {
		if slot.FieldIdx > 0 {
			fieldPtr := b.FieldAddr(statePtr, slot.FieldIdx)
			b.Store(fieldPtr, wrapper.Param(i))
		}
	}

	b.Return(statePtr)

	// Save reference for interface wrapper
	g.concrete = wrapper

	log.Printf("[PullIR] Generated $Concrete wrapper for %s", fn.Name())
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
	poll := g.pkg.NewFunc(
		fmt.Sprintf("(*%s$State).Poll", fn.Name()),
		pollMethod.Type().(*types.Signature),
		llssa.InGo,
	)
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

	// Entry: jump to loop
	b.SetBlock(entryBlock)
	b.Jump(loopBlock)

	// Loop: switch on state
	b.SetBlock(loopBlock)
	stateFieldPtr := b.FieldAddr(g.statePtr, 0)
	stateVal := b.Load(stateFieldPtr)

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

	log.Printf("[PullIR] Generated Poll method for %s (%d states)", fn.Name(), numStates)
	return nil
}

func (g *PullIRCodeGen) generateStateBlock(b llssa.Builder, state *PullState, stateIdx int) {
	g.temps = nil
	for _, instr := range state.Instructions {
		g.generateInstr(b, instr, stateIdx)
	}
}

func (g *PullIRCodeGen) generateInstr(b llssa.Builder, instr PullInstr, stateIdx int) {
	switch v := instr.(type) {
	case *LoadSlot:
		if v.Src != nil && v.Src.FieldIdx >= 0 {
			fieldPtr := b.FieldAddr(g.statePtr, v.Src.FieldIdx)
			g.temps = append(g.temps, b.Load(fieldPtr))
		}

	case *StoreSlot:
		if v.Dst != nil && v.Dst.FieldIdx >= 0 {
			fieldPtr := b.FieldAddr(g.statePtr, v.Dst.FieldIdx)
			b.Store(fieldPtr, g.getExpr(b, v.Value))
		}

	case *PullBinOp:
		x := g.getExpr(b, v.X)
		y := g.getExpr(b, v.Y)
		g.temps = append(g.temps, b.BinOp(v.Op, x, y))

	case *PullUnOp:
		x := g.getExpr(b, v.X)
		g.temps = append(g.temps, b.UnOp(v.Op, x))

	case *PullAlloc:
		// Allocate memory for the element type
		elemType := g.prog.Type(v.Type, llssa.InGo)
		ptr := b.Alloc(elemType, v.Heap)
		g.temps = append(g.temps, ptr)

	case *PullMakeInterface:
		// Create interface from concrete value
		ifaceType := g.prog.Type(v.IfaceType, llssa.InGo)
		concrete := g.getExpr(b, v.Value)
		iface := b.MakeInterface(ifaceType, concrete)
		g.temps = append(g.temps, iface)

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

	case *PullNext:
		// Next advances iterator and returns (key, value, ok)
		iter := g.getExpr(b, v.Iter)
		elemType := g.prog.Type(v.ElemType, llssa.InGo)
		result := b.Next(elemType, iter, v.IsString)
		g.temps = append(g.temps, result)

	case *Await:
		// Simplified: just transition to next state
		stateFieldPtr := b.FieldAddr(g.statePtr, 0)
		b.Store(stateFieldPtr, g.prog.IntVal(uint64(v.NextState), g.int8Type))
		b.Jump(g.loopBlock)

	case *Branch:
		cond := g.getExpr(b, v.Cond)
		g.generateEdgeWrites(b, stateIdx, v.TrueState)
		// Note: for proper branch, we'd need separate blocks for edge writes
		trueBlock := g.poll.Block(2 + v.TrueState)
		falseBlock := g.poll.Block(2 + v.FalseState)
		b.If(cond, trueBlock, falseBlock)

	case *Jump:
		g.generateEdgeWrites(b, stateIdx, v.Target)
		stateFieldPtr := b.FieldAddr(g.statePtr, 0)
		b.Store(stateFieldPtr, g.prog.IntVal(uint64(v.Target), g.int8Type))
		b.Jump(g.loopBlock)

	case *Return:
		val := g.getExpr(b, v.Value)
		g.storeResult(b, val)
		g.returnReady(b, val)
	}
}

func (g *PullIRCodeGen) generateEdgeWrites(b llssa.Builder, fromState, toState int) {
	if fromState < 0 || fromState >= len(g.pullIR.States) {
		return
	}
	for _, ew := range g.pullIR.States[fromState].EdgeWrites[toState] {
		if ew.Dst != nil && ew.Dst.FieldIdx >= 0 {
			fieldPtr := b.FieldAddr(g.statePtr, ew.Dst.FieldIdx)
			b.Store(fieldPtr, g.getExpr(b, ew.Value))
		}
	}
}

// =============================================================================
// Helpers
// =============================================================================

func (g *PullIRCodeGen) getExpr(b llssa.Builder, ref VarRef) llssa.Expr {
	switch ref.Kind {
	case VarRefSlot:
		if ref.Slot != nil && ref.Slot.FieldIdx >= 0 {
			return b.Load(b.FieldAddr(g.statePtr, ref.Slot.FieldIdx))
		}
	case VarRefConst:
		if ref.Const != nil {
			// Only use compileValue for actual *ssa.Const values
			// Other SSA values would trigger complex compilation that needs bvals
			if c, ok := ref.Const.(*ssa.Const); ok {
				if g.compileValue != nil {
					return g.compileValue(b, c)
				}
				// Fallback: use Zero for the type
				return g.prog.Zero(g.prog.Type(c.Type(), llssa.InGo))
			}
			// For non-const SSA values, just return nil - they should be in slots
			log.Printf("[PullIR] Warning: non-const VarRef %v (%T) - should be accessed via slot", ref.Const, ref.Const)
		}
	case VarRefTemp:
		if ref.Temp >= 0 && ref.Temp < len(g.temps) {
			return g.temps[ref.Temp]
		}
		// Debug: temp index out of range
		log.Printf("[PullIR] Warning: temp index %d out of range (have %d temps)", ref.Temp, len(g.temps))
	}
	return g.prog.Nil(g.pollLLType)
}

func (g *PullIRCodeGen) storeResult(b llssa.Builder, val llssa.Expr) {
	if g.pullIR.ResultSlot != nil && g.pullIR.ResultSlot.FieldIdx >= 0 {
		b.Store(b.FieldAddr(g.statePtr, g.pullIR.ResultSlot.FieldIdx), val)
	}
}

func (g *PullIRCodeGen) returnReady(b llssa.Builder, val llssa.Expr) {
	trueVal := g.prog.BoolVal(true)
	if val.IsNil() {
		val = b.Field(g.createZeroPoll(), 1)
	}
	pollVal := b.AggregateExpr(g.pollLLType, trueVal, val)
	b.Return(pollVal)
}

func (g *PullIRCodeGen) createZeroPoll() llssa.Expr {
	return g.prog.Nil(g.pollLLType)
}

func (g *PullIRCodeGen) generateDoneBlock(b llssa.Builder) {
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
	// TODO: Fix interface wrapper - requires deep ABI/scope investigation
	// The issue is that MakeInterface needs proper type scope registration,
	// but the Future[T] interface type lacks scope info, causing nil pointer
	// in ssa/abi.TypeName -> scopeIndex -> scope.Parent()
	//
	// For now, skip interface wrapper - code generation works, user code
	// needs to use $Concrete wrapper directly or await the concrete type.
	fn := g.pullIR.Original
	log.Printf("[PullIR] Skipping interface wrapper for %s (ABI scope issue)", fn.Name())
	return nil

	// Below is the intended implementation once scope issue is fixed:
	/*
		origSig := fn.Signature

		wrapperName := llssa.FuncName(fn.Pkg.Pkg, fn.Name(), nil, false)
		wrapper := g.pkg.NewFunc(wrapperName, origSig, llssa.InGo)
		wrapper.MakeBlocks(1)

		b := wrapper.NewBuilder()
		b.SetBlock(wrapper.Block(0))

		args := make([]llssa.Expr, len(fn.Params))
		for i := range fn.Params {
			args[i] = wrapper.Param(i)
		}

		concreteResult := b.Call(g.concrete.Expr, args...)

		origRetType := origSig.Results().At(0).Type()
		ifaceType := g.prog.Type(origRetType, llssa.InGo)
		ifaceVal := b.MakeInterface(ifaceType, concreteResult)

		b.Return(ifaceVal)
		log.Printf("[PullIR] Generated interface wrapper for %s", fn.Name())
	*/
}
