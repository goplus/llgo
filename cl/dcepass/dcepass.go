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
	Reachable     int
	DroppedFuncs  int
	DroppedGlobal int
	DroppedMethod int
	DroppedMethodDetail map[irgraph.SymID][]int
}

// Options controls the DCE pass behavior.
type Options struct{}

// Apply runs the DCE pass over mod using the reachability result.
//
// Note: This removes bodies of unreachable functions and marks them external.
// Method table/reloc-aware pruning is handled in later stages.
func Apply(mod llvm.Module, res deadcode.Result, _ Options) Stats {
	stats := Stats{
		Reachable:            len(res.Reachable),
		DroppedMethodDetail:  make(map[irgraph.SymID][]int),
	}
	if mod.IsNil() {
		return stats
	}
	stats.DroppedMethod, stats.DroppedMethodDetail = clearUnreachableMethods(mod, res.ReachableMethods)
	for fn := mod.FirstFunction(); !fn.IsNil(); {
		next := llvm.NextFunction(fn)
		name := fn.Name()
		if name == "" {
			fn = next
			continue
		}
		if fn.IsDeclaration() {
			fn = next
			continue
		}
		if fn.IntrinsicID() != 0 || strings.HasPrefix(name, "llvm.") {
			fn = next
			continue
		}
		if res.Reachable[irgraph.SymID(name)] {
			fn = next
			continue
		}
		demoteToDecl(mod, fn)
		stats.DroppedFuncs++
		fn = next
	}
	return stats
}

func demoteToDecl(mod llvm.Module, fn llvm.Value) {
	name := fn.Name()
	ft := fn.GlobalValueType()
	fn.SetName("")
	decl := llvm.AddFunction(mod, name, ft)
	decl.SetLinkage(llvm.ExternalLinkage)
	decl.SetFunctionCallConv(fn.FunctionCallConv())
	for _, attr := range fn.GetFunctionAttributes() {
		decl.AddAttributeAtIndex(-1, attr)
	}
	if gc := fn.GC(); gc != "" {
		decl.SetGC(gc)
	}
	if sp := fn.Subprogram(); !sp.IsNil() {
		decl.SetSubprogram(sp)
	}
	fn.ReplaceAllUsesWith(decl)
	fn.EraseFromParentAsFunction()
}

// clearUnreachableMethods zeros Mtyp/Ifn/Tfn for unreachable methods in type
// metadata constants based on reach.Methods. It returns the number of cleared
// method entries.
func clearUnreachableMethods(mod llvm.Module, reachMethods map[irgraph.SymID]map[int]bool) (int, map[irgraph.SymID][]int) {
	if len(reachMethods) == 0 {
		return 0, nil
	}
	dropped := 0
	detail := make(map[irgraph.SymID][]int)
	for sym, keepIdx := range reachMethods {
		g := mod.NamedGlobal(string(sym))
		if g.IsNil() {
			continue
		}
		init := g.Initializer()
		if init.IsNil() {
			continue
		}
		fieldCount := init.OperandsCount()
		if fieldCount == 0 {
			continue
		}
		methodsVal := init.Operand(fieldCount - 1)
		if methodsVal.Type().TypeKind() != llvm.ArrayTypeKind {
			continue
		}
		elemTy := methodsVal.Type().ElementType()
		methodCount := methodsVal.OperandsCount()
		zeroPtr := llvm.ConstPointerNull(elemTy.StructElementTypes()[1]) // ptr type

		changed := false
		newMethods := make([]llvm.Value, methodCount)
		for i := 0; i < methodCount; i++ {
			orig := methodsVal.Operand(i)
			if keepIdx[i] {
				newMethods[i] = orig
				continue
			}
			// Preserve name (field 0), clear Mtyp/Ifn/Tfn.
			nameField := orig.Operand(0)
			zeroed := llvm.ConstStruct([]llvm.Value{nameField, zeroPtr, zeroPtr, zeroPtr}, false)
			newMethods[i] = zeroed
			changed = true
			dropped++
			detail[sym] = append(detail[sym], i)
		}
		if !changed {
			continue
		}
		newArray := llvm.ConstArray(elemTy, newMethods)
		fields := make([]llvm.Value, fieldCount)
		for i := 0; i < fieldCount-1; i++ {
			fields[i] = init.Operand(i)
		}
		fields[fieldCount-1] = newArray
		newInit := llvm.ConstStruct(fields, false)
		g.SetInitializer(newInit)
	}
	return dropped, detail
}
