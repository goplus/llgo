/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org).
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

package dcepass

import (
	"strings"

	"github.com/goplus/llgo/cl/deadcode"
	"github.com/goplus/llgo/cl/irgraph"
	"github.com/goplus/llvm"
)

// Stats reports basic DCE pass metrics.
type Stats struct {
	Reachable           int
	DroppedFuncs        int
	DroppedGlobal       int
	DroppedMethod       int
	DroppedMethodDetail map[irgraph.SymID][]int
}

// Options controls the DCE pass behavior.
type Options struct{}

// Apply runs the DCE pass over mod using the reachability result.
// It clears unreachable method pointers in type metadata.
func Apply(mod llvm.Module, res deadcode.Result, _ Options) Stats {
	stats := Stats{
		Reachable:           len(res.Reachable),
		DroppedMethodDetail: make(map[irgraph.SymID][]int),
	}
	if mod.IsNil() {
		return stats
	}
	stats.DroppedMethod, stats.DroppedMethodDetail = clearUnreachableMethods(mod, res.ReachableMethods)
	return stats
}

// clearUnreachableMethods zeros Mtyp/Ifn/Tfn for unreachable methods in type
// metadata constants. All method slots are cleared by default; the whitelist
// reachMethods marks which (type,index) to keep.
func clearUnreachableMethods(mod llvm.Module, reachMethods map[irgraph.SymID]map[int]bool) (int, map[irgraph.SymID][]int) {
	dropped := 0
	detail := make(map[irgraph.SymID][]int)
	for g := mod.FirstGlobal(); !g.IsNil(); g = llvm.NextGlobal(g) {
		init := g.Initializer()
		if init.IsNil() {
			continue
		}
		methodsVal, elemTy, ok := methodArray(init)
		if !ok {
			continue
		}
		methodCount := methodsVal.OperandsCount()
		if methodCount == 0 {
			continue
		}
		keepIdx := reachMethods[irgraph.SymID(g.Name())]
		zeroPtr := llvm.ConstPointerNull(elemTy.StructElementTypes()[1]) // ptr type

		changed := false
		newMethods := make([]llvm.Value, methodCount)
		for i := 0; i < methodCount; i++ {
			orig := methodsVal.Operand(i)
			if keepIdx != nil && keepIdx[i] {
				newMethods[i] = orig
				continue
			}
			nameField := orig.Operand(0)
			mtypField := orig.Operand(1) // keep signature for matching
			zeroed := llvm.ConstStruct([]llvm.Value{nameField, mtypField, zeroPtr, zeroPtr}, false)
			newMethods[i] = zeroed
			changed = true
			dropped++
			detail[irgraph.SymID(g.Name())] = append(detail[irgraph.SymID(g.Name())], i)
		}
		if !changed {
			continue
		}
		newArray := llvm.ConstArray(elemTy, newMethods)
		fields := make([]llvm.Value, init.OperandsCount())
		for i := 0; i < len(fields)-1; i++ {
			fields[i] = init.Operand(i)
		}
		fields[len(fields)-1] = newArray
		newInit := llvm.ConstStruct(fields, false)
		g.SetInitializer(newInit)
	}
	return dropped, detail
}

// methodArray returns the method array value and element type if init's last
// field is an array of abi.Method.
func methodArray(init llvm.Value) (llvm.Value, llvm.Type, bool) {
	fieldCount := init.OperandsCount()
	if fieldCount == 0 {
		return llvm.Value{}, llvm.Type{}, false
	}
	methodsVal := init.Operand(fieldCount - 1)
	if methodsVal.Type().TypeKind() != llvm.ArrayTypeKind {
		return llvm.Value{}, llvm.Type{}, false
	}
	elemTy := methodsVal.Type().ElementType()
	if elemTy.TypeKind() != llvm.StructTypeKind {
		return llvm.Value{}, llvm.Type{}, false
	}
	// Heuristic: abi.Method has 4 fields and name contains "runtime/abi.Method".
	if elemTy.StructElementTypesCount() != 4 {
		return llvm.Value{}, llvm.Type{}, false
	}
	if !strings.Contains(elemTy.StructName(), "runtime/abi.Method") {
		return llvm.Value{}, llvm.Type{}, false
	}
	return methodsVal, elemTy, true
}
