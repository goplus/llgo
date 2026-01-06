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

package pullmodel

import (
	"fmt"
	"go/token"
	"go/types"

	"golang.org/x/tools/go/ssa"
)

// CodeGen generates SSA code for a state machine.
type CodeGen struct {
	prog *ssa.Program
	pkg  *ssa.Package
	sm   *StateMachine
}

// NewCodeGen creates a new code generator for a state machine.
func NewCodeGen(prog *ssa.Program, pkg *ssa.Package, sm *StateMachine) *CodeGen {
	return &CodeGen{
		prog: prog,
		pkg:  pkg,
		sm:   sm,
	}
}

// GenerateStateStruct generates the state machine struct type.
// Returns the struct type that will hold the state machine's data.
func (g *CodeGen) GenerateStateStruct() *types.Struct {
	var fields []*types.Var

	// Add state field (int8)
	fields = append(fields, types.NewField(
		token.NoPos,
		g.pkg.Pkg,
		"state",
		types.Typ[types.Int8],
		false,
	))

	// Add parameter fields
	for i, param := range g.sm.Original.Params {
		fields = append(fields, types.NewField(
			token.NoPos,
			g.pkg.Pkg,
			fmt.Sprintf("param%d", i),
			param.Type(),
			false,
		))
	}

	// Add cross-suspend variable fields
	for i, v := range g.sm.CrossVars {
		fields = append(fields, types.NewField(
			token.NoPos,
			g.pkg.Pkg,
			fmt.Sprintf("var%d", i),
			v.Type(),
			false,
		))
	}

	// Add sub-future fields (concrete types, not interfaces)
	for i, futType := range g.sm.SubFutures {
		fields = append(fields, types.NewField(
			token.NoPos,
			g.pkg.Pkg,
			fmt.Sprintf("sub%d", i),
			futType,
			false,
		))
	}

	return types.NewStruct(fields, nil)
}

// GenerateConstructor generates the constructor function that initializes the state machine.
// This replaces the original async function.
func (g *CodeGen) GenerateConstructor() *ssa.Function {
	// Create function signature: func(params...) StateStruct
	stateStruct := g.GenerateStateStruct()
	sig := types.NewSignature(
		nil, // no receiver
		g.sm.Original.Signature.Params(),
		types.NewTuple(types.NewVar(token.NoPos, g.pkg.Pkg, "", stateStruct)),
		false,
	)

	// Create function
	fn := g.pkg.Prog.NewFunction(
		g.sm.Original.Name()+"_ctor",
		sig,
		"constructor for "+g.sm.Original.Name(),
	)

	return fn
}

// StateVarMapping tracks how original SSA values map to state struct fields.
type StateVarMapping struct {
	// ParamIndices maps original parameters to their field indices in the state struct
	ParamIndices map[*ssa.Parameter]int
	// CrossVarIndices maps cross-suspend variables to their field indices
	CrossVarIndices map[ssa.Value]int
	// SubFutureIndices maps suspend points to their sub-future field indices
	SubFutureIndices map[*SuspendPoint]int
}

// BuildVarMapping creates a mapping from original SSA values to state struct fields.
func (g *CodeGen) BuildVarMapping() *StateVarMapping {
	mapping := &StateVarMapping{
		ParamIndices:     make(map[*ssa.Parameter]int),
		CrossVarIndices:  make(map[ssa.Value]int),
		SubFutureIndices: make(map[*SuspendPoint]int),
	}

	// Map parameters
	for i, param := range g.sm.Original.Params {
		mapping.ParamIndices[param] = i
	}

	// Map cross-suspend variables
	for i, v := range g.sm.CrossVars {
		mapping.CrossVarIndices[v] = i
	}

	// Map sub-futures to suspend points
	for i, state := range g.sm.States {
		if state.SuspendPoint != nil {
			mapping.SubFutureIndices[state.SuspendPoint] = i
		}
	}

	return mapping
}

// GeneratePollMethod generates the Poll method for the state machine.
// This is the core of the transformation - it implements the state machine logic.
func (g *CodeGen) GeneratePollMethod(stateStruct *types.Struct) *ssa.Function {
	// Create Poll method signature:
	// func (s *StateStruct) Poll(ctx *Context) Poll[T]

	// Get Context type from async package
	ctxType := g.getContextType()
	pollType := g.getPollType(g.sm.ResultType)

	recv := types.NewVar(token.NoPos, g.pkg.Pkg, "s", types.NewPointer(stateStruct))
	params := types.NewTuple(types.NewVar(token.NoPos, g.pkg.Pkg, "ctx", ctxType))
	results := types.NewTuple(types.NewVar(token.NoPos, g.pkg.Pkg, "", pollType))

	sig := types.NewSignature(recv, params, results, false)

	// Create method
	fn := g.pkg.Prog.NewFunction(
		"(*"+g.sm.Original.Name()+"_State).Poll",
		sig,
		"Poll method for "+g.sm.Original.Name(),
	)

	return fn
}

// getContextType returns the async.Context type.
func (g *CodeGen) getContextType() types.Type {
	// Look up async package
	asyncPkg := g.prog.ImportedPackage(FuturePkgPath)
	if asyncPkg == nil {
		// Return a placeholder - in real implementation this should be an error
		return types.NewPointer(types.NewStruct(nil, nil))
	}

	// Look up Context type
	obj := asyncPkg.Pkg.Scope().Lookup("Context")
	if obj == nil {
		return types.NewPointer(types.NewStruct(nil, nil))
	}

	return types.NewPointer(obj.Type())
}

// getPollType returns the async.Poll[T] type for the given result type.
func (g *CodeGen) getPollType(resultType types.Type) types.Type {
	// Look up async package
	asyncPkg := g.prog.ImportedPackage(FuturePkgPath)
	if asyncPkg == nil {
		// Return a placeholder
		return types.NewStruct(nil, nil)
	}

	// Look up Poll type
	obj := asyncPkg.Pkg.Scope().Lookup("Poll")
	if obj == nil {
		return types.NewStruct(nil, nil)
	}

	// Instantiate Poll[T] with the result type
	pollNamed := obj.Type().(*types.Named)
	// For now, return the generic Poll type
	// In full implementation, we'd instantiate with resultType
	return pollNamed
}

// GeneratePollBody generates the body of the Poll method.
// This creates the switch/case state machine logic.
//
// NOTE: This is a placeholder for the full implementation.
// The actual implementation would generate SSA instructions for:
// 1. Loading the state field
// 2. Switch on state value
// 3. For each state:
//   - Execute instructions from the original function
//   - If suspend point: poll sub-future, return Pending if not ready
//   - If terminal: return Ready(result)
//   - Otherwise: update state and continue to next state
func (g *CodeGen) GeneratePollBody(fn *ssa.Function, mapping *StateVarMapping) {
	// Placeholder - full implementation would generate SSA instructions
	// For now, we just ensure the function has a body marker
	fn.Synthetic = "generated state machine"
}

// Generate performs the full code generation for the state machine.
// Returns the state struct type and variable mapping.
func (g *CodeGen) Generate() (*types.Struct, *StateVarMapping, error) {
	// Generate state struct type
	stateStruct := g.GenerateStateStruct()

	// Build variable mapping
	mapping := g.BuildVarMapping()

	// Note: Full implementation would also generate:
	// - Constructor function
	// - Poll method with switch/case logic
	// - Integration with the compiler's SSA builder

	return stateStruct, mapping, nil
}
