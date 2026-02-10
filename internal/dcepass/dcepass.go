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
	"fmt"
	"strings"

	"github.com/goplus/llgo/internal/relocgraph"
	"github.com/goplus/llvm"
)

// EmitStrongTypeOverrides emits method-pruned strong ABI type symbols into dst.
//
// srcMods are package modules that contain original ABI type globals (typically
// weak symbols). For each method-bearing type symbol, this function creates or
// updates a same-name global in dst, and clears Ifn/Tfn for method indices not
// listed in reachMethods[type].
func EmitStrongTypeOverrides(dst llvm.Module, srcMods []llvm.Module, reachMethods map[relocgraph.SymID]map[int]bool) error {
	if dst.IsNil() {
		return fmt.Errorf("destination module is nil")
	}
	emitted := make(map[relocgraph.SymID]bool)
	emitter := newOverrideEmitter(dst)
	for _, src := range srcMods {
		for g := src.FirstGlobal(); !g.IsNil(); g = llvm.NextGlobal(g) {
			name := g.Name()
			if name == "" {
				continue
			}
			sym := relocgraph.SymID(name)
			if emitted[sym] {
				continue
			}
			init := g.Initializer()
			if init.IsNil() {
				continue
			}
			methodsVal, elemTy, ok := methodArray(init)
			if !ok {
				continue
			}
			// Types with zero methods don't benefit from override emission and may
			// carry platform/patch-specific ABI shape differences. Skip them.
			if methodsVal.OperandsCount() == 0 {
				continue
			}
			if err := emitter.emitTypeOverride(g, methodsVal, elemTy, reachMethods[sym]); err != nil {
				return fmt.Errorf("emit override %q: %w", name, err)
			}
			emitted[sym] = true
		}
	}
	return nil
}

type overrideEmitter struct {
	dst    llvm.Module
	values map[llvm.Value]llvm.Value
}

func newOverrideEmitter(dst llvm.Module) *overrideEmitter {
	return &overrideEmitter{
		dst:    dst,
		values: make(map[llvm.Value]llvm.Value),
	}
}

func (e *overrideEmitter) emitTypeOverride(srcType, methodsVal llvm.Value, elemTy llvm.Type, keepIdx map[int]bool) error {
	init := srcType.Initializer()
	dstType, err := e.ensureOverrideGlobal(srcType)
	if err != nil {
		return err
	}
	// Ensure self-references in cloned constants resolve to the override symbol.
	e.values[srcType] = dstType

	fieldCount := init.OperandsCount()
	fields := make([]llvm.Value, fieldCount)
	for i := 0; i < fieldCount-1; i++ {
		clone, err := e.cloneConst(init.Operand(i))
		if err != nil {
			return err
		}
		fields[i] = clone
	}

	methodCount := methodsVal.OperandsCount()
	zeroPtr := llvm.ConstPointerNull(elemTy.StructElementTypes()[1])
	methods := make([]llvm.Value, methodCount)
	for i := 0; i < methodCount; i++ {
		orig := methodsVal.Operand(i)
		if keepIdx != nil && keepIdx[i] {
			clone, err := e.cloneConst(orig)
			if err != nil {
				return err
			}
			methods[i] = clone
			continue
		}
		nameField, err := e.cloneConst(orig.Operand(0))
		if err != nil {
			return err
		}
		mtypField, err := e.cloneConst(orig.Operand(1))
		if err != nil {
			return err
		}
		methods[i] = llvm.ConstNamedStruct(elemTy, []llvm.Value{nameField, mtypField, zeroPtr, zeroPtr})
	}
	fields[fieldCount-1] = llvm.ConstArray(elemTy, methods)

	newInit := constStructOfType(init.Type(), fields)
	dstType.SetInitializer(newInit)
	dstType.SetGlobalConstant(true)
	dstType.SetLinkage(llvm.ExternalLinkage)
	copyGlobalAttrs(dstType, srcType)
	return nil
}

func (e *overrideEmitter) ensureOverrideGlobal(src llvm.Value) (llvm.Value, error) {
	name := src.Name()
	if name == "" {
		return llvm.Value{}, fmt.Errorf("type global has empty name")
	}
	dst := e.dst.NamedGlobal(name)
	if dst.IsNil() {
		dst = llvm.AddGlobal(e.dst, src.GlobalValueType(), name)
	}
	e.values[src] = dst
	return dst, nil
}

func (e *overrideEmitter) cloneConst(v llvm.Value) (llvm.Value, error) {
	if v.IsNil() {
		return llvm.Value{}, nil
	}
	if mapped, ok := e.values[v]; ok {
		return mapped, nil
	}
	if gv := v.IsAGlobalValue(); !gv.IsNil() {
		clone, err := e.cloneGlobalValue(gv)
		if err != nil {
			return llvm.Value{}, err
		}
		e.values[v] = clone
		return clone, nil
	}
	if ce := v.IsAConstantExpr(); !ce.IsNil() {
		clone, err := e.cloneConstExpr(ce)
		if err != nil {
			return llvm.Value{}, err
		}
		e.values[v] = clone
		return clone, nil
	}
	switch {
	case !v.IsAConstantStruct().IsNil():
		ops, err := e.cloneOperands(v)
		if err != nil {
			return llvm.Value{}, err
		}
		clone := constStructOfType(v.Type(), ops)
		e.values[v] = clone
		return clone, nil
	case !v.IsAConstantArray().IsNil():
		ops, err := e.cloneOperands(v)
		if err != nil {
			return llvm.Value{}, err
		}
		clone := llvm.ConstArray(v.Type().ElementType(), ops)
		e.values[v] = clone
		return clone, nil
	case !v.IsAConstantVector().IsNil():
		ops, err := e.cloneOperands(v)
		if err != nil {
			return llvm.Value{}, err
		}
		clone := llvm.ConstVector(ops, false)
		e.values[v] = clone
		return clone, nil
	}
	// Constants without nested global references can be reused as-is.
	return v, nil
}

func (e *overrideEmitter) cloneOperands(v llvm.Value) ([]llvm.Value, error) {
	n := v.OperandsCount()
	ops := make([]llvm.Value, n)
	for i := 0; i < n; i++ {
		clone, err := e.cloneConst(v.Operand(i))
		if err != nil {
			return nil, err
		}
		ops[i] = clone
	}
	return ops, nil
}

func (e *overrideEmitter) cloneConstExpr(v llvm.Value) (llvm.Value, error) {
	ops, err := e.cloneOperands(v)
	if err != nil {
		return llvm.Value{}, err
	}
	if len(ops) == 0 {
		return v, nil
	}
	switch v.Opcode() {
	case llvm.BitCast:
		return llvm.ConstBitCast(ops[0], v.Type()), nil
	case llvm.PtrToInt:
		return llvm.ConstPtrToInt(ops[0], v.Type()), nil
	case llvm.IntToPtr:
		return llvm.ConstIntToPtr(ops[0], v.Type()), nil
	case llvm.Trunc:
		return llvm.ConstTrunc(ops[0], v.Type()), nil
	case llvm.GetElementPtr:
		base := ops[0]
		baseTy := base.Type()
		if baseTy.TypeKind() != llvm.PointerTypeKind {
			return llvm.Value{}, fmt.Errorf("gep base is not pointer: %s", baseTy.String())
		}
		return llvm.ConstGEP(baseTy.ElementType(), base, ops[1:]), nil
	default:
		return llvm.Value{}, fmt.Errorf("unsupported const expr opcode: %v", v.Opcode())
	}
}

func (e *overrideEmitter) cloneGlobalValue(v llvm.Value) (llvm.Value, error) {
	if mapped, ok := e.values[v]; ok {
		return mapped, nil
	}
	if fn := v.IsAFunction(); !fn.IsNil() {
		name := fn.Name()
		if name == "" {
			return llvm.Value{}, fmt.Errorf("function ref has empty name")
		}
		dstFn := e.dst.NamedFunction(name)
		if dstFn.IsNil() {
			dstFn = llvm.AddFunction(e.dst, name, fn.GlobalValueType())
		}
		e.values[v] = dstFn
		return dstFn, nil
	}
	if gv := v.IsAGlobalVariable(); !gv.IsNil() {
		clone, err := e.cloneGlobalVariable(gv)
		if err != nil {
			return llvm.Value{}, err
		}
		e.values[v] = clone
		return clone, nil
	}
	name := v.Name()
	if name != "" {
		dstG := e.dst.NamedGlobal(name)
		if dstG.IsNil() {
			dstG = llvm.AddGlobal(e.dst, v.GlobalValueType(), name)
			dstG.SetLinkage(llvm.ExternalLinkage)
		}
		e.values[v] = dstG
		return dstG, nil
	}
	return llvm.Value{}, fmt.Errorf("unsupported global ref kind")
}

func (e *overrideEmitter) cloneGlobalVariable(src llvm.Value) (llvm.Value, error) {
	if mapped, ok := e.values[src]; ok {
		return mapped, nil
	}
	name := src.Name()
	local := name == "" || isLocalLinkage(src.Linkage())
	if !local {
		dst := e.dst.NamedGlobal(name)
		if dst.IsNil() {
			dst = llvm.AddGlobal(e.dst, src.GlobalValueType(), name)
			dst.SetLinkage(llvm.ExternalLinkage)
		}
		e.values[src] = dst
		return dst, nil
	}

	// Local globals (typically private string constants) must be copied.
	dst := llvm.AddGlobal(e.dst, src.GlobalValueType(), "")
	e.values[src] = dst
	copyGlobalAttrs(dst, src)
	dst.SetLinkage(src.Linkage())
	dst.SetGlobalConstant(src.IsGlobalConstant())
	if init := src.Initializer(); !init.IsNil() {
		cloneInit, err := e.cloneConst(init)
		if err != nil {
			return llvm.Value{}, err
		}
		dst.SetInitializer(cloneInit)
	}
	return dst, nil
}

func copyGlobalAttrs(dst, src llvm.Value) {
	dst.SetVisibility(src.Visibility())
	if sec := src.Section(); sec != "" {
		dst.SetSection(sec)
	}
	dst.SetThreadLocal(src.IsThreadLocal())
	if a := src.Alignment(); a > 0 {
		dst.SetAlignment(a)
	}
}

func isLocalLinkage(l llvm.Linkage) bool {
	return l == llvm.PrivateLinkage || l == llvm.InternalLinkage
}

func constStructOfType(typ llvm.Type, fields []llvm.Value) llvm.Value {
	if typ.StructName() != "" {
		return llvm.ConstNamedStruct(typ, fields)
	}
	return llvm.ConstStruct(fields, typ.IsStructPacked())
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
