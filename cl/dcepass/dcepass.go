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
//
// Note: This removes bodies of unreachable functions and marks them external.
// Method table/reloc-aware pruning is handled in later stages.
func Apply(mod llvm.Module, res deadcode.Result, _ Options) Stats {
	stats := Stats{
		Reachable:           len(res.Reachable),
		DroppedMethodDetail: make(map[irgraph.SymID][]int),
	}
	if mod.IsNil() {
		return stats
	}
	stats.DroppedMethod, stats.DroppedMethodDetail = clearUnreachableMethods(mod, res.ReachableMethods)
	// Remove __llgo_relocs.* tables that hold references to functions,
	// preventing LLVM's globaldce from removing unreachable functions.
	removeRelocTables(mod)
	return stats
}

// removeRelocTables deletes all @__llgo_relocs* global variables.
// These tables contain references to functions for runtime type system,
// but they prevent LLVM DCE from removing unreachable functions.
// Also updates @llvm.used to remove references to deleted globals.
func removeRelocTables(mod llvm.Module) {
	// Collect relocs to remove
	var toRemove []llvm.Value
	removeSet := make(map[string]bool)
	for g := mod.FirstGlobal(); !g.IsNil(); g = llvm.NextGlobal(g) {
		name := g.Name()
		// Match __llgo_relocs, __llgo_relocs.123, etc.
		if name == "__llgo_relocs" || strings.HasPrefix(name, "__llgo_relocs.") {
			toRemove = append(toRemove, g)
			removeSet[name] = true
		}
	}
	if len(toRemove) == 0 {
		return
	}

	// Update @llvm.used to remove references to relocs
	llvmUsed := mod.NamedGlobal("llvm.used")
	if !llvmUsed.IsNil() {
		init := llvmUsed.Initializer()
		if !init.IsNil() && init.Type().TypeKind() == llvm.ArrayTypeKind {
			count := init.OperandsCount()
			var kept []llvm.Value
			for i := 0; i < count; i++ {
				op := init.Operand(i)
				// Check if this operand references a reloc we're removing
				opName := op.Name()
				if !removeSet[opName] {
					kept = append(kept, op)
				}
			}
			if len(kept) < count {
				if len(kept) == 0 {
					// Remove llvm.used entirely if empty
					llvmUsed.EraseFromParentAsGlobal()
				} else {
					// Rebuild llvm.used with remaining entries
					elemTy := init.Type().ElementType()
					newArray := llvm.ConstArray(elemTy, kept)
					llvmUsed.SetInitializer(newArray)
				}
			}
		}
	}

	// Now safe to remove relocs
	for _, g := range toRemove {
		g.EraseFromParentAsGlobal()
	}
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
		// Skip core runtime/reflect metadata to avoid breaking fundamental operations.
		name := g.Name()
		if strings.Contains(name, "runtime/") ||
			strings.Contains(name, "reflect/") ||
			strings.Contains(name, "internal/reflectlite") ||
			strings.Contains(name, "internal/abi") ||
			strings.Contains(name, "_llgo_iface$") {
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
			keepByIdx := keepIdx != nil && keepIdx[i]
			keepByName := isErrorLike(orig)
			if keepByIdx || keepByName {
				newMethods[i] = orig
				continue
			}
			nameField := orig.Operand(0)
			mtypField := orig.Operand(1) // keep signature for matching
			// Keep Error methods intact to avoid crashing error interface calls.
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

// methodName best-effort extracts the method name from the abi.Method constant.
func methodName(method llvm.Value) (string, bool) {
	if method.IsNil() || method.OperandsCount() < 1 {
		return "", false
	}
	nameField := method.Operand(0)
	if nameField.IsNil() || nameField.OperandsCount() < 2 {
		return "", false
	}
	ptrVal := nameField.Operand(0)
	lenVal := nameField.Operand(1)
	if lenVal.IsNil() || !lenVal.IsConstant() {
		return "", false
	}
	length := int(lenVal.ZExtValue())
	// Unwrap simple const-expr wrappers (bitcast/gep).
	for !ptrVal.IsAConstantExpr().IsNil() {
		switch ptrVal.Opcode() {
		case llvm.BitCast, llvm.GetElementPtr:
			ptrVal = ptrVal.Operand(0)
		default:
			goto DONE_UNWRAP
		}
	}
DONE_UNWRAP:
	if ptrVal.IsAGlobalVariable().IsNil() {
		return "", false
	}
	ginit := ptrVal.Initializer()
	if ginit.IsNil() || ginit.Type().TypeKind() != llvm.ArrayTypeKind {
		return "", false
	}
	elemCount := ginit.OperandsCount()
	n := length
	if n > elemCount {
		n = elemCount
	}
	buf := make([]byte, n)
	for i := 0; i < n; i++ {
		c := ginit.Operand(i)
		if c.IsNil() || !c.IsConstant() {
			return "", false
		}
		buf[i] = byte(c.ZExtValue())
	}
	return string(buf), true
}

// isErrorLike reports whether the method appears to be an Error method by name,
// using multiple fallbacks to accommodate stripped/opaque constants.
func isErrorLike(method llvm.Value) bool {
	if name, ok := methodName(method); ok && (name == "Error" || strings.HasSuffix(name, ".Error")) {
		return true
	}
	// Fallback: check symbol names of Ifn/Tfn for ".Error".
	for _, idx := range []int{2, 3} {
		if method.OperandsCount() <= idx {
			continue
		}
		op := method.Operand(idx)
		if op.IsNil() {
			continue
		}
		if gn := op.Name(); gn != "" && strings.Contains(gn, ".Error") {
			return true
		}
	}
	return false
}
