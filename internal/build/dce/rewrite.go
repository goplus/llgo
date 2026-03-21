package dce

import (
	"fmt"
	"sort"

	llvm "github.com/goplus/llvm"
)

// EmitStrongTypeOverrides copies method-bearing ABI type globals into dst as
// strong definitions and clears dead abi.Method slots according to result.
// Linking the resulting module ahead of package archives lets these strong
// symbols override the original weak definitions.
func EmitStrongTypeOverrides(dst llvm.Module, srcMods []llvm.Module, result Result) error {
	if dst.IsNil() {
		return fmt.Errorf("destination module is nil")
	}
	if len(result) == 0 {
		return nil
	}

	srcTypes := make(map[string]llvm.Value)
	for _, mod := range srcMods {
		for g := mod.FirstGlobal(); !g.IsNil(); g = llvm.NextGlobal(g) {
			name := g.Name()
			if name == "" {
				continue
			}
			if _, ok := srcTypes[name]; ok {
				continue
			}
			srcTypes[name] = g
		}
	}

	typeNames := make([]string, 0, len(result))
	for typeName := range result {
		typeNames = append(typeNames, typeName)
	}
	sort.Strings(typeNames)

	emitter := newOverrideEmitter(dst)
	for _, typeName := range typeNames {
		if shouldSkipOverride(typeName) {
			continue
		}
		srcType := srcTypes[typeName]
		if srcType.IsNil() {
			return fmt.Errorf("missing source type global %q", typeName)
		}
		methodsVal, elemTy, ok := methodArray(srcType.Initializer())
		if !ok {
			return fmt.Errorf("type global %q has no abi.Method array", typeName)
		}
		if methodsVal.OperandsCount() == 0 {
			continue
		}
		if err := emitter.emitTypeOverride(srcType, methodsVal, elemTy, result[typeName]); err != nil {
			return fmt.Errorf("emit override %q: %w", typeName, err)
		}
	}
	return nil
}

func shouldSkipOverride(typeName string) bool {
	// reflect.Type values use *rtype identity as part of interface/map-key
	// behavior. Overriding these concrete type symbols in the entry module can
	// split identity across weak/original and strong/override copies, which
	// breaks lookups such as map[reflect.Type]bool in testing/fuzz support.
	switch typeName {
	case "_llgo_reflect.rtype", "*_llgo_reflect.rtype",
		"_llgo_internal/reflectlite.rtype", "*_llgo_internal/reflectlite.rtype":
		return true
	}
	return false
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

func (e *overrideEmitter) emitTypeOverride(srcType, methodsVal llvm.Value, elemTy llvm.Type, keepIdx map[int]struct{}) error {
	init := srcType.Initializer()
	dstType, err := e.ensureOverrideGlobal(srcType)
	if err != nil {
		return err
	}
	e.values[srcType] = dstType

	fields := make([]llvm.Value, init.OperandsCount())
	for i := 0; i < init.OperandsCount()-1; i++ {
		clone, err := e.cloneConst(init.Operand(i))
		if err != nil {
			return err
		}
		fields[i] = clone
	}

	methodCount := methodsVal.OperandsCount()
	methods := make([]llvm.Value, methodCount)
	zeroText := llvm.ConstPointerNull(elemTy.StructElementTypes()[2])
	for i := 0; i < methodCount; i++ {
		orig := methodsVal.Operand(i)
		if _, ok := keepIdx[i]; ok {
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
		methods[i] = llvm.ConstNamedStruct(elemTy, []llvm.Value{nameField, mtypField, zeroText, zeroText})
	}
	fields[len(fields)-1] = llvm.ConstArray(elemTy, methods)

	dstType.SetInitializer(constStructOfType(init.Type(), fields))
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
	switch {
	case !v.IsAGlobalValue().IsNil():
		clone, err := e.cloneGlobalValue(v)
		if err != nil {
			return llvm.Value{}, err
		}
		e.values[v] = clone
		return clone, nil
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
	}
	return v, nil
}

func (e *overrideEmitter) cloneOperands(v llvm.Value) ([]llvm.Value, error) {
	ops := make([]llvm.Value, v.OperandsCount())
	for i := 0; i < v.OperandsCount(); i++ {
		clone, err := e.cloneConst(v.Operand(i))
		if err != nil {
			return nil, err
		}
		ops[i] = clone
	}
	return ops, nil
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
	if align := src.Alignment(); align > 0 {
		dst.SetAlignment(align)
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

func methodArray(init llvm.Value) (llvm.Value, llvm.Type, bool) {
	if init.IsNil() || init.OperandsCount() == 0 {
		return llvm.Value{}, llvm.Type{}, false
	}
	methodsVal := init.Operand(init.OperandsCount() - 1)
	if methodsVal.Type().TypeKind() != llvm.ArrayTypeKind {
		return llvm.Value{}, llvm.Type{}, false
	}
	elemTy := methodsVal.Type().ElementType()
	if elemTy.TypeKind() != llvm.StructTypeKind {
		return llvm.Value{}, llvm.Type{}, false
	}
	if elemTy.StructName() != runtimeABIPrefix+"Method" {
		return llvm.Value{}, llvm.Type{}, false
	}
	if elemTy.StructElementTypesCount() != 4 {
		return llvm.Value{}, llvm.Type{}, false
	}
	return methodsVal, elemTy, true
}
