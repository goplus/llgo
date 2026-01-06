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

// Package pullmodel implements the pull-based async/await model for LLGO.
// This file contains llssa-level code generation for state machines.
package pullmodel

import (
	"fmt"
	"go/types"
	"log"

	"golang.org/x/tools/go/ssa"

	llssa "github.com/goplus/llgo/ssa"
)

// LLSSACodeGen generates LLVM IR code for state machines using llssa API.
type LLSSACodeGen struct {
	prog   llssa.Program
	pkg    llssa.Package
	ssaPkg *ssa.Package
	sm     *StateMachine
}

// NewLLSSACodeGen creates a new llssa code generator.
func NewLLSSACodeGen(
	prog llssa.Program,
	pkg llssa.Package,
	ssaPkg *ssa.Package,
	sm *StateMachine,
) *LLSSACodeGen {
	return &LLSSACodeGen{
		prog:   prog,
		pkg:    pkg,
		ssaPkg: ssaPkg,
		sm:     sm,
	}
}

// Generate generates the complete state machine code.
// This is the main entry point for llssa code generation.
func (g *LLSSACodeGen) Generate() error {
	// Step 1: Generate state struct type
	stateType, err := g.generateStateType()
	if err != nil {
		return fmt.Errorf("failed to generate state type: %w", err)
	}

	// Step 2: Generate constructor function
	if err := g.generateConstructor(stateType); err != nil {
		return fmt.Errorf("failed to generate constructor: %w", err)
	}

	// Step 3: Generate Poll method
	if err := g.generatePollMethod(stateType); err != nil {
		return fmt.Errorf("failed to generate Poll method: %w", err)
	}

	log.Printf("[Pull Model] Successfully generated state machine for %s", g.sm.Original.Name())
	return nil
}

// generateStateType generates the state machine struct type.
func (g *LLSSACodeGen) generateStateType() (llssa.Type, error) {
	// Build field types
	var fieldTypes []llssa.Type

	// Field 0: state (int8)
	stateFieldType := g.prog.Type(types.Typ[types.Int8], llssa.InGo)
	fieldTypes = append(fieldTypes, stateFieldType)

	// Fields for parameters
	for _, param := range g.sm.Original.Params {
		paramType := g.prog.Type(param.Type(), llssa.InGo)
		fieldTypes = append(fieldTypes, paramType)
	}

	// Fields for cross-suspend variables
	for _, v := range g.sm.CrossVars {
		varType := g.prog.Type(v.Type(), llssa.InGo)
		fieldTypes = append(fieldTypes, varType)
	}

	// Fields for sub-futures
	for _, futType := range g.sm.SubFutures {
		// Sub-futures are stored as pointers to their concrete types
		subType := g.prog.Type(futType, llssa.InGo)
		fieldTypes = append(fieldTypes, subType)
	}

	// Create struct type
	stateType := g.prog.Struct(fieldTypes...)

	log.Printf("[Pull Model] Generated state struct with %d fields", len(fieldTypes))
	return stateType, nil
}

// generateConstructor generates the constructor function that initializes the state machine.
// The constructor takes the original function's parameters and returns an initialized state struct.
func (g *LLSSACodeGen) generateConstructor(stateType llssa.Type) error {
	fn := g.sm.Original

	// Build Go types.Signature for the constructor
	// Params: same as original function
	// Result: state struct type (as value, not pointer)
	origSig := fn.Signature
	paramTuple := origSig.Params()

	// Create result tuple with state struct type
	stateGoType := g.buildStateGoType()
	resultVar := types.NewVar(0, nil, "", stateGoType)
	resultTuple := types.NewTuple(resultVar)

	// Create constructor signature
	ctorSig := types.NewSignatureType(nil, nil, nil, paramTuple, resultTuple, false)

	// Create the constructor function
	ctorName := fn.Name()
	ctor := g.pkg.NewFunc(ctorName, ctorSig, llssa.InGo)

	// Create single basic block
	ctor.MakeBlocks(1)

	// Get builder and set to first block
	b := ctor.NewBuilder()
	b.SetBlock(ctor.Block(0))

	// Allocate state struct on stack
	statePtr := b.Alloc(stateType, false)

	// Initialize state field (index 0) to 0
	stateFieldPtr := b.FieldAddr(statePtr, 0)
	zero := g.prog.Val(int8(0))
	b.Store(stateFieldPtr, zero)

	// Copy parameters to state struct fields
	fieldIdx := 1 // Start after state field
	for i := range fn.Params {
		paramVal := ctor.Param(i)
		fieldPtr := b.FieldAddr(statePtr, fieldIdx)
		b.Store(fieldPtr, paramVal)
		fieldIdx++
	}

	// Initialize cross-var fields to zero values (they'll be set during execution)
	for _, v := range g.sm.CrossVars {
		fieldPtr := b.FieldAddr(statePtr, fieldIdx)
		zeroVal := g.prog.Zero(g.prog.Type(v.Type(), llssa.InGo))
		b.Store(fieldPtr, zeroVal)
		fieldIdx++
	}

	// Initialize sub-future fields to nil
	for _, futType := range g.sm.SubFutures {
		fieldPtr := b.FieldAddr(statePtr, fieldIdx)
		nilVal := g.prog.Nil(g.prog.Type(futType, llssa.InGo))
		b.Store(fieldPtr, nilVal)
		fieldIdx++
	}

	// Load and return the state struct
	stateVal := b.Load(statePtr)
	b.Return(stateVal)

	log.Printf("[Pull Model] Generated constructor for %s with %d params", fn.Name(), len(fn.Params))
	return nil
}

// buildStateGoType builds the Go types.Struct for the state machine.
func (g *LLSSACodeGen) buildStateGoType() *types.Struct {
	var fields []*types.Var
	var tags []string

	// Field 0: state (int8)
	fields = append(fields, types.NewField(0, nil, "state", types.Typ[types.Int8], false))
	tags = append(tags, "")

	// Fields for parameters
	for i, param := range g.sm.Original.Params {
		name := fmt.Sprintf("param%d", i)
		fields = append(fields, types.NewField(0, nil, name, param.Type(), false))
		tags = append(tags, "")
	}

	// Fields for cross-suspend variables
	for i, v := range g.sm.CrossVars {
		name := fmt.Sprintf("var%d", i)
		fields = append(fields, types.NewField(0, nil, name, v.Type(), false))
		tags = append(tags, "")
	}

	// Fields for sub-futures
	for i, futType := range g.sm.SubFutures {
		name := fmt.Sprintf("sub%d", i)
		fields = append(fields, types.NewField(0, nil, name, futType, false))
		tags = append(tags, "")
	}

	return types.NewStruct(fields, tags)
}

// generatePollMethod generates the Poll method for the state machine.
func (g *LLSSACodeGen) generatePollMethod(stateType llssa.Type) error {
	fn := g.sm.Original

	log.Printf("[Pull Model] Poll method generation placeholder for %s", fn.Name())
	log.Printf("  - Would create method with receiver: *%s_State", fn.Name())
	log.Printf("  - Would implement switch/case for %d states", len(g.sm.States))

	// TODO: Implement actual Poll method generation
	// This requires:
	// 1. Creating method signature: func (s *State) Poll(ctx *Context) Poll[T]
	// 2. Creating basic blocks (entry + per-state + exit)
	// 3. Implementing switch dispatcher
	// 4. For each state:
	//    - If suspend point: poll sub-future
	//    - If terminal: return Ready(result)
	//    - Otherwise: execute and transition

	return nil
}

// GenerateStateMachine is the main entry point called from compile.go.
// It performs the complete transformation from SSA function to state machine.
func GenerateStateMachine(
	prog llssa.Program,
	pkg llssa.Package,
	ssaPkg *ssa.Package,
	fn *ssa.Function,
) error {
	// Step 1: Analyze SSA and create state machine
	sm := Transform(fn)
	if sm == nil {
		return fmt.Errorf("failed to transform %s to state machine", fn.Name())
	}

	// Step 2: Generate llssa code
	codegen := NewLLSSACodeGen(prog, pkg, ssaPkg, sm)
	if err := codegen.Generate(); err != nil {
		return fmt.Errorf("failed to generate code for %s: %w", fn.Name(), err)
	}

	return nil
}

// Helper functions for type conversion

// getAsyncContextType returns the *async.Context type.
func (g *LLSSACodeGen) getAsyncContextType() *types.Pointer {
	// TODO: Import async package and get Context type
	// For now, return a placeholder
	return types.NewPointer(types.NewStruct(nil, nil))
}

// getAsyncPollType returns the async.Poll[T] type for the given result type.
func (g *LLSSACodeGen) getAsyncPollType(resultType types.Type) types.Type {
	// TODO: Instantiate Poll[T] with the result type
	// For now, return a placeholder struct
	return types.NewStruct(nil, nil)
}
