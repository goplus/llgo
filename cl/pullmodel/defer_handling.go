/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// This file contains defer/panic/recovery handling for pull model.
// These methods manage deferred calls in the state machine context.

package pullmodel

import (
	"fmt"
	"go/types"
	"log"
	"strings"

	"golang.org/x/tools/go/ssa"

	llssa "github.com/goplus/llgo/ssa"
)

func (g *LLSSACodeGen) deferWrapperKey(fnType types.Type, argTypes []types.Type) string {
	qual := func(p *types.Package) string {
		if p == nil {
			return ""
		}
		return p.Path()
	}
	var b strings.Builder
	b.WriteString(types.TypeString(fnType, qual))
	for _, t := range argTypes {
		b.WriteString("|")
		b.WriteString(types.TypeString(t, qual))
	}
	return b.String()
}

func (g *LLSSACodeGen) ensureDeferWrapper(fnType types.Type, argTypes []types.Type) deferWrapperInfo {
	key := g.deferWrapperKey(fnType, argTypes)
	if info, ok := g.deferWraps[key]; ok {
		return info
	}
	fields := make([]*types.Var, 0, len(argTypes)+1)
	fields = append(fields, types.NewVar(0, nil, "fn", fnType))
	for i, t := range argTypes {
		fields = append(fields, types.NewVar(0, nil, fmt.Sprintf("a%d", i), t))
	}
	argStruct := types.NewStruct(fields, nil)
	argStructType := g.prog.Type(argStruct, llssa.InGo)
	g.deferWrapSeq++
	base := g.sm.Original.String()
	base = strings.NewReplacer(
		"*", "",
		"(", "",
		")", "",
		"/", "_",
		".", "_",
		"[", "_",
		"]", "_",
		" ", "_",
		",", "_",
	).Replace(base)
	wrapperName := fmt.Sprintf("__llgo_defer_wrap$%s$%d", base, g.deferWrapSeq)
	wrapper := g.buildDeferWrapper(wrapperName, argStruct)
	info := deferWrapperInfo{
		fn:            wrapper,
		argStruct:     argStruct,
		argStructType: argStructType,
	}
	g.deferWraps[key] = info
	return info
}

func (g *LLSSACodeGen) buildDeferWrapper(name string, argStruct *types.Struct) llssa.Function {
	sig := types.NewSignatureType(
		nil,
		nil,
		nil,
		types.NewTuple(types.NewVar(0, nil, "arg", types.Typ[types.UnsafePointer])),
		nil,
		false,
	)
	fn := g.pkg.NewFunc(name, sig, llssa.InGo)
	fn.MakeBlocks(1)
	b := fn.NewBuilder()
	b.SetBlock(fn.Block(0))

	argParam := fn.Param(0)
	argStructType := g.prog.Type(argStruct, llssa.InGo)
	argStructPtr := g.prog.Pointer(argStructType)
	argPtr := b.PtrCast(argStructPtr, argParam)

	fnVal := b.Load(b.FieldAddr(argPtr, 0))
	numFields := argStruct.NumFields()
	callArgs := make([]llssa.Expr, numFields-1)
	for i := 1; i < numFields; i++ {
		callArgs[i-1] = b.Load(b.FieldAddr(argPtr, i))
	}
	b.Call(fnVal, callArgs...)
	b.Return()
	return fn
}

// compileDeferForPullModel handles defer instructions in pull model.
// Instead of using setjmp-based defer, we push to a persistent defer list in state struct.
func (g *LLSSACodeGen) compileDeferForPullModel(b llssa.Builder, statePtr llssa.Expr, deferInstr *ssa.Defer) {
	if !g.sm.HasDefer {
		return
	}

	debugf("[Pull Model] Generating PushDefer call for %s", g.sm.Original.Name())

	// Get DeferState field base index
	deferStateIdx := g.getDeferFieldBaseIndex()
	if deferStateIdx < 0 {
		log.Printf("[Pull Model] WARNING: Cannot find defer fields")
		return
	}

	// Get pointer to DeferState embedded in state struct
	deferStatePtr := b.FieldAddr(statePtr, deferStateIdx)

	call := deferInstr.Call
	var fnExpr llssa.Expr
	if call.IsInvoke() {
		recv := g.compileValue(b, call.Value)
		fnExpr = b.Imethod(recv, call.Method)
	} else {
		fnExpr = g.compileValue(b, call.Value)
	}

	argTypes := make([]types.Type, len(call.Args))
	for i, arg := range call.Args {
		argTypes[i] = arg.Type()
	}
	wrapperInfo := g.ensureDeferWrapper(fnExpr.Type.RawType(), argTypes)

	// Allocate argument bundle on heap and capture values at defer time
	argPtr := b.Alloc(wrapperInfo.argStructType, true)
	b.Store(b.FieldAddr(argPtr, 0), fnExpr)
	for i, arg := range call.Args {
		val := g.compileValue(b, arg)
		b.Store(b.FieldAddr(argPtr, i+1), val)
	}

	unsafePtrType := g.prog.Type(types.Typ[types.UnsafePointer], llssa.InGo)
	argPtrUnsafe := b.Convert(unsafePtrType, argPtr)

	// Create function reference for async.(*DeferState).PushDefer
	// Method signature: func (*DeferState) PushDefer(fn func(unsafe.Pointer), arg unsafe.Pointer)
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
		types.NewVar(0, nil, "", deferStatePtrType), // receiver
		nil,
		nil,
		types.NewTuple(
			types.NewVar(0, nil, "fn", wrapperSig),
			types.NewVar(0, nil, "arg", types.Typ[types.UnsafePointer]),
		),
		nil,
		false,
	)

	// Generate method name
	methodName := llssa.FuncName(
		types.NewPackage("github.com/goplus/llgo/async", "async"),
		"PushDefer",
		pushDeferSig.Recv(),
		false,
	)

	// Create function reference
	pushDeferFunc := g.pkg.NewFunc(methodName, pushDeferSig, llssa.InGo)

	// Call: deferStatePtr.PushDefer(wrapperFn, argPtr)
	b.Call(pushDeferFunc.Expr, deferStatePtr, wrapperInfo.fn.Expr, argPtrUnsafe)

	debugf("[Pull Model] Generated PushDefer call successfully")
}

// compilePanicForPullModel handles panic instructions in pull model.
// Sets isPanicking flag and stores panic value in state struct.
func (g *LLSSACodeGen) compilePanicForPullModel(b llssa.Builder, statePtr llssa.Expr, panicInstr *ssa.Panic) {
	if !g.sm.HasDefer {
		// No defer, just compile normally
		if g.compileInstr != nil {
			g.compileInstr(b, panicInstr)
		}
		return
	}

	debugf("[Pull Model] Handling panic in %s", g.sm.Original.Name())

	debugf("[Pull Model] Generating DoPanic call for %s", g.sm.Original.Name())

	// Get DeferState field base index
	deferStateIdx := g.getDeferFieldBaseIndex()
	if deferStateIdx < 0 {
		log.Printf("[Pull Model] WARNING: Cannot find defer fields")
		return
	}

	// Get pointer to DeferState embedded in state struct
	deferStatePtr := b.FieldAddr(statePtr, deferStateIdx)

	// Compile panic value (interface{})
	panicVal := g.compileValue(b, panicInstr.X)

	// Create function reference for async.(*DeferState).DoPanic
	// Method signature: func (*DeferState) DoPanic(v any) bool
	deferStatePtrType := types.NewPointer(g.getDeferStateType())
	doPanicSig := types.NewSignatureType(
		types.NewVar(0, nil, "", deferStatePtrType), // receiver
		nil,
		nil,
		types.NewTuple(
			types.NewVar(0, nil, "v", types.NewInterfaceType(nil, nil)),
		),
		types.NewTuple(types.NewVar(0, nil, "", types.Typ[types.Bool])),
		false,
	)

	methodName := llssa.FuncName(
		types.NewPackage("github.com/goplus/llgo/async", "async"),
		"DoPanic",
		doPanicSig.Recv(),
		false,
	)
	doPanicFunc := g.pkg.NewFunc(methodName, doPanicSig, llssa.InGo)

	// Call: recovered := deferStatePtr.DoPanic(panicVal)
	recovered := b.Call(doPanicFunc.Expr, deferStatePtr, panicVal)

	// Branch on recovered
	recoveredBlock := b.Func.MakeBlock()
	panicBlock := b.Func.MakeBlock()
	b.If(recovered, recoveredBlock, panicBlock)

	// Recovered: mark done and return Ready with current result (zero if unset)
	b.SetBlock(recoveredBlock)
	int8Type := g.prog.Type(types.Typ[types.Int8], llssa.InGo)
	stateFieldPtr := b.FieldAddr(statePtr, 0)
	doneVal := g.prog.IntVal(uint64(g.completedStateIndex), int8Type)
	b.Store(stateFieldPtr, doneVal)
	finalValue := g.loadResultValue(b, statePtr)
	g.returnReadyPoll(b, finalValue)

	// Not recovered: fallback to runtime panic
	b.SetBlock(panicBlock)
	// Mark completed and propagate as PollError
	int8Type = g.prog.Type(types.Typ[types.Int8], llssa.InGo)
	stateFieldPtr = b.FieldAddr(statePtr, 0)
	b.Store(stateFieldPtr, g.prog.IntVal(uint64(g.completedStateIndex), int8Type))
	g.returnErrorPoll(b, panicVal)
}

// compileRunDefersForPullModel handles RunDefers instructions in pull model.
// Executes the persistent defer list stored in state struct.
func (g *LLSSACodeGen) compileRunDefersForPullModel(b llssa.Builder, statePtr llssa.Expr) {
	if !g.sm.HasDefer {
		return
	}

	debugf("[Pull Model] Generating RunDefers call for %s", g.sm.Original.Name())

	// Get DeferState field base index
	deferStateIdx := g.getDeferFieldBaseIndex()
	if deferStateIdx < 0 {
		log.Printf("[Pull Model] WARNING: Cannot find defer fields")
		return
	}

	// Get pointer to DeferState embedded in state struct
	deferStatePtr := b.FieldAddr(statePtr, deferStateIdx)

	// Create function reference for async.(*DeferState).RunDefers
	// Method signature: func (*DeferState) RunDefers()
	deferStatePtrType := types.NewPointer(g.getDeferStateType())
	runDefersSig := types.NewSignatureType(
		types.NewVar(0, nil, "", deferStatePtrType), // receiver
		nil, nil, nil, nil, false,
	)

	// Generate method name
	methodName := llssa.FuncName(
		types.NewPackage("github.com/goplus/llgo/async", "async"),
		"RunDefers",
		runDefersSig.Recv(),
		false,
	)

	// Create function reference
	runDefersFunc := g.pkg.NewFunc(methodName, runDefersSig, llssa.InGo)

	// Call: deferStatePtr.RunDefers()
	b.Call(runDefersFunc.Expr, deferStatePtr)

	debugf("[Pull Model] Generated RunDefers call successfully")
}
