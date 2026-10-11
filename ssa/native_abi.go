package ssa

import (
	"fmt"
	"go/token"
	"go/types"

	"github.com/xgo-dev/llvm"
)

var (
	nativeSignExtKind = llvm.AttributeKindID("signext")
	nativeZeroExtKind = llvm.AttributeKindID("zeroext")
)

var nativeIntegerAttributeKinds = [...]uint{nativeSignExtKind, nativeZeroExtKind}

// nativeIntegerAttrs emits LLVM ABI parameter attributes while the Go signature
// still carries signedness. LLVM integer types alone do not distinguish signed
// from unsigned C values. These attributes tell LLVM codegen how to extend
// arguments at the call boundary; no separate integer-extension pass is needed.
// Apple arm64, SysV amd64, x86-32 and WebAssembly require extension
// attributes for narrow arguments. Native Windows amd64 only requires zeroext
// for bool; other arm64 ABIs leave argument extension to the callee.
// Return attributes require Go-to-native callback adapters: a native function
// pointer can currently refer to an unadapted Go entry.
func (p Program) nativeIntegerAttrs(sig *types.Signature, ft llvm.Type, add func(int, llvm.Attribute)) {
	if !p.nativeIntegerExtensionRequired() {
		return
	}
	// This runs during SSA codegen, before cabi.TransformModule can reorder or
	// expand parameters. toLLVMFuncBackground preserves signature order and
	// only omits the trailing __llgo_va_list from the fixed LLVM prototype.
	physicalParams := ft.ParamTypes()
	fixedCount := sig.Params().Len()
	if HasNameValist(sig) {
		fixedCount--
	}
	if len(physicalParams) != fixedCount {
		panic("ssa: native integer attributes require the unlowered function signature")
	}
	target := p.Target()
	windowsAMD64 := target.effectiveGOARCH() == "amd64" && target.effectiveGOOS() == "windows"
	addInteger := func(index int, raw types.Type, physical llvm.Type) {
		basic, ok := raw.Underlying().(*types.Basic)
		if !ok || physical.TypeKind() != llvm.IntegerTypeKind || physical.IntTypeWidth() >= 32 {
			return
		}
		if windowsAMD64 && basic.Info()&types.IsBoolean == 0 {
			return
		}
		kind := nativeSignExtKind
		if basic.Info()&(types.IsUnsigned|types.IsBoolean) != 0 {
			kind = nativeZeroExtKind
		}
		add(index, p.ctx.CreateEnumAttribute(kind, 0))
	}
	// The LLVM prototype omits __llgo_va_list. Only fixed parameters carry
	// extension attributes; callers supply the promoted ellipsis argument types.
	for i, physical := range physicalParams {
		addInteger(i+1, sig.Params().At(i).Type(), physical)
	}
}

func (p Program) nativeIntegerExtensionRequired() bool {
	target := p.Target()
	switch target.effectiveGOARCH() {
	case "amd64", "386", "wasm":
		return true
	case "arm64":
		return target.effectiveGOOS() == "darwin"
	}
	return false
}

func (b Builder) setNativeIntegerCallAttrs(call llvm.Value, fn Expr, sig *types.Signature) {
	if !b.Prog.nativeIntegerExtensionRequired() {
		return
	}
	if fn.kind == vkFuncPtr {
		b.Prog.nativeIntegerAttrs(sig, call.CalledFunctionType(), call.AddCallSiteAttribute)
		return
	}
	// Direct C declarations already carry their ABI attributes. Copy them onto
	// the call too: LLVM requires matching attributes at both ends of the boundary.
	if direct := fn.impl.IsAFunction(); !direct.IsNil() {
		copyInteger := func(i int, physical llvm.Type) {
			if physical.TypeKind() != llvm.IntegerTypeKind || physical.IntTypeWidth() >= 32 {
				return
			}
			for _, kind := range nativeIntegerAttributeKinds {
				if attr := direct.GetEnumAttributeAtIndex(i, kind); !attr.IsNil() {
					call.AddCallSiteAttribute(i, attr)
				}
			}
		}
		ft := call.CalledFunctionType()
		for i, physical := range ft.ParamTypes() {
			copyInteger(i+1, physical)
		}
	}
}

// needsNativeIntegerFuncval identifies C entries whose argument extension is
// absent from the Go funcval ABI. The adapter keeps that distinction at the
// conversion boundary instead of changing calls through arbitrary Go values.
func (b Builder) needsNativeIntegerFuncval(fn Expr) bool {
	if !b.Prog.nativeIntegerExtensionRequired() {
		return false
	}
	switch fn.kind {
	case vkFuncPtr:
		sig := fn.raw.Type.Underlying().(*types.Signature)
		needed := false
		b.Prog.nativeIntegerAttrs(sig, b.Prog.FuncDecl(sig, InC).ll, func(int, llvm.Attribute) {
			needed = true
		})
		return needed
	case vkFuncDecl:
		if direct := fn.impl.IsAFunction(); !direct.IsNil() {
			for i := range fn.ll.ParamTypes() {
				for _, kind := range nativeIntegerAttributeKinds {
					if !direct.GetEnumAttributeAtIndex(i+1, kind).IsNil() {
						return true
					}
				}
			}
		}
	}
	return false
}

// nativeFuncval adapts a native function pointer to LLGo's ordinary funcval
// representation. Its environment holds the native pointer directly, and the
// Go entry calls that pointer with the native ABI. This avoids an allocation
// while preserving nil: a nil native pointer produces a
// funcval with a nil code pointer.
func (b Builder) nativeFuncval(dst Type, fn Expr, callConv llvm.CallConv, abi string) Expr {
	closure, ok := types.Unalias(dst.raw.Type).Underlying().(*types.Struct)
	if !ok || !IsClosure(closure) {
		panic(fmt.Errorf("native funcval target must be a Go function, got %s", dst.raw.Type))
	}
	goSig := closure.Field(0).Type().(*types.Signature)
	nativeSig := types.Unalias(fn.raw.Type).Underlying().(*types.Signature)
	// A Go variadic slice cannot forward an arbitrary C ellipsis tail. Keep
	// those calls on the native function-pointer path, where the caller knows
	// the concrete promoted argument types.
	if HasNameValist(nativeSig) {
		panic("C variadic functions require a native function pointer; use //llgo:type C")
	}
	wrapperName := b.Pkg.Path() + ".__llgo_" + abi + "_funcval$" + b.Prog.abi.FuncName(goSig)
	wrapper := b.Pkg.FuncOf(wrapperName)
	if wrapper == nil {
		env := types.NewVar(token.NoPos, nil, "$env", types.Typ[types.UnsafePointer])
		wrapper = b.Pkg.NewEnvFunc(wrapperName, goSig, InGo, env, false)
		wrapper.impl.SetLinkage(llvm.InternalLinkage)
		body := wrapper.MakeBody(1)
		args := make([]Expr, goSig.Params().Len())
		for i := range args {
			args[i] = wrapper.Param(i)
		}
		native := Expr{wrapper.Env().impl, b.Prog.rawType(nativeSig)}
		result := body.Call(native, args...)
		if callConv != llvm.CCallConv {
			result.impl.SetInstructionCallConv(callConv)
		}
		switch n := goSig.Results().Len(); n {
		case 0:
			body.Return()
		case 1:
			body.Return(result)
		default:
			results := make([]Expr, n)
			for i := range results {
				results[i] = body.Extract(result, i)
			}
			body.Return(results...)
		}
	}

	isNil := llvm.CreateICmp(b.impl, llvm.IntEQ, fn.impl, llvm.ConstNull(fn.impl.Type()))
	code := llvm.CreateSelect(b.impl, isNil, llvm.ConstNull(wrapper.impl.Type()), wrapper.impl)
	return b.aggregateValue(dst, code, fn.impl)
}
