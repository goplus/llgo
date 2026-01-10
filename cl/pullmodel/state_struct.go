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

// This file contains state struct field index methods.
// These methods compute field indices for the state machine struct.

package pullmodel

import (
	"go/types"

	"golang.org/x/tools/go/ssa"
)

// getSubFutureFieldIndex returns the field index for the sub-future VALUE at given state.
// With value embedding and state-based init tracking, each sub-future has 1 field.
func (g *LLSSACodeGen) getSubFutureFieldIndex(stateIdx int) int {
	// Fields are: state(0), params..., crossVars..., sub_futures...
	baseIdx := 1 + len(g.sm.Original.Params) + len(g.sm.CrossVars)

	subFutIdx := 0
	for i := 0; i < stateIdx; i++ {
		if g.sm.States[i].SuspendPoint != nil {
			subFutIdx++
		}
	}
	// Each sub-future occupies 1 field (no init flag)
	return baseIdx + subFutIdx
}

// getCrossVarFieldIndex returns the field index for a cross-suspend variable.
// Returns -1 if the variable is not a cross-var.
func (g *LLSSACodeGen) getCrossVarFieldIndex(v ssa.Value) int {
	// Fields are: state(0), params..., crossVars..., subFutures..., [defer fields if HasDefer]
	baseIdx := 1 + len(g.sm.Original.Params)

	for i, crossVar := range g.sm.CrossVars {
		if crossVar == v {
			return baseIdx + i
		}
	}
	return -1 // Not found
}

// getDeferFieldBaseIndex returns the base index for defer-related fields.
// Returns -1 if function has no defer.
func (g *LLSSACodeGen) getDeferFieldBaseIndex() int {
	if !g.sm.HasDefer {
		return -1
	}
	// Fields are: state(0), params..., crossVars..., subFutures..., defer fields...
	// Count sub-futures: one field per state with a suspend point
	subFutCount := 0
	for _, state := range g.sm.States {
		if state.SuspendPoint != nil {
			subFutCount++
		}
	}
	return 1 + len(g.sm.Original.Params) + len(g.sm.CrossVars) + subFutCount
}

// getDeferHeadFieldIndex returns the field index for deferHead.
func (g *LLSSACodeGen) getDeferHeadFieldIndex() int {
	base := g.getDeferFieldBaseIndex()
	if base < 0 {
		return -1
	}
	return base + 0
}

// getPanicValueFieldIndex returns the field index for panicValue.
func (g *LLSSACodeGen) getPanicValueFieldIndex() int {
	base := g.getDeferFieldBaseIndex()
	if base < 0 {
		return -1
	}
	return base + 1
}

// getIsPanickingFieldIndex returns the field index for isPanicking.
func (g *LLSSACodeGen) getIsPanickingFieldIndex() int {
	base := g.getDeferFieldBaseIndex()
	if base < 0 {
		return -1
	}
	return base + 2
}

// getRecoveredFieldIndex returns the field index for recovered.
func (g *LLSSACodeGen) getRecoveredFieldIndex() int {
	base := g.getDeferFieldBaseIndex()
	if base < 0 {
		return -1
	}
	return base + 3
}

// getDeferStateType returns the types.Type for async.DeferState
func (g *LLSSACodeGen) getDeferStateType() types.Type {
	// Create a named type for async.DeferState
	asyncPkg := types.NewPackage("github.com/goplus/llgo/async", "async")

	// DeferState struct fields:
	// DeferHead unsafe.Pointer
	// PanicValue any
	// IsPanicking bool
	// Recovered bool
	unsafePkg := types.Unsafe
	fields := []*types.Var{
		types.NewField(0, asyncPkg, "DeferHead", unsafePkg.Scope().Lookup("Pointer").Type(), false),
		types.NewField(0, asyncPkg, "PanicValue", types.NewInterfaceType(nil, nil), false),
		types.NewField(0, asyncPkg, "IsPanicking", types.Typ[types.Bool], false),
		types.NewField(0, asyncPkg, "Recovered", types.Typ[types.Bool], false),
	}

	structType := types.NewStruct(fields, nil)
	return types.NewNamed(types.NewTypeName(0, asyncPkg, "DeferState", nil), structType, nil)
}
