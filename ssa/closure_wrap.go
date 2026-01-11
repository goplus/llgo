package ssa

import (
	"go/token"
	"go/types"
	"strings"

	"github.com/goplus/llvm"
)

// removeCtx drops the leading __llgo_ctx parameter, if present.
func removeCtx(sig *types.Signature) *types.Signature {
	if closureCtxParam(sig) == nil {
		return sig
	}
	params := sig.Params()
	n := params.Len()
	args := make([]*types.Var, n-1)
	for i := 0; i < n-1; i++ {
		args[i] = params.At(i + 1)
	}
	return types.NewSignature(sig.Recv(), types.NewTuple(args...), sig.Results(), sig.Variadic())
}

// closureCtxParam returns the leading __llgo_ctx parameter if present.
func closureCtxParam(sig *types.Signature) *types.Var {
	if sig == nil {
		return nil
	}
	params := sig.Params()
	if params.Len() == 0 {
		return nil
	}
	first := params.At(0)
	if first.Name() != closureCtx {
		return nil
	}
	if _, ok := first.Type().Underlying().(*types.Pointer); !ok {
		return nil
	}
	return first
}

// closureWrapArgs returns wrapper arguments excluding the ctx parameter.
func closureWrapArgs(fn Function) []Expr {
	n := len(fn.params)
	if n <= 1 {
		return nil
	}
	args := make([]Expr, n-1)
	for i := 1; i < n; i++ {
		args[i-1] = fn.Param(i)
	}
	return args
}

// closureWrapReturn returns from wrapper, preserving tail-call eligibility.
func closureWrapReturn(b Builder, sig *types.Signature, ret Expr) {
	n := sig.Results().Len()
	if n == 0 {
		if !ret.impl.IsNil() {
			ret.impl.SetTailCall(true)
		}
		b.impl.CreateRetVoid()
		return
	}
	ret.impl.SetTailCall(true)
	b.impl.CreateRet(ret.impl)
}

// closureWrapDecl wraps a function declaration that lacks __llgo_ctx.
// It directly calls the target symbol and ignores the ctx parameter.
// In LLVM coro mode:
//   - isCoro=false: calls sync version (returns result)
//   - isCoro=true: calls the $coro version (returns handle)
func (p Package) closureWrapDecl(fn Expr, sig *types.Signature, isCoro bool) Function {
	fnName := fn.impl.Name()

	// In coro mode with suspend points, create $coro wrapper
	if IsLLVMCoroMode() && isCoro {
		coroName := fnName
		if !strings.HasSuffix(fnName, "$coro") {
			coroName = fnName + "$coro"
		}
		stubName := closureStub + coroName
		if wrap := p.FuncOf(stubName); wrap != nil {
			return wrap
		}
		ctx := types.NewParam(token.NoPos, nil, closureCtx, types.Typ[types.UnsafePointer])
		// $coro version returns ptr (coroutine handle)
		coroResults := types.NewTuple(types.NewVar(token.NoPos, nil, "", types.Typ[types.UnsafePointer]))
		coroSig := types.NewSignature(nil, sig.Params(), coroResults, sig.Variadic())
		sigCtx := FuncAddCtx(ctx, coroSig)
		wrap := p.NewFunc(stubName, sigCtx, InC)
		wrap.impl.SetLinkage(llvm.LinkOnceAnyLinkage)
		b := wrap.MakeBody(1)
		args := closureWrapArgs(wrap)
		// Get or declare the $coro function
		coroFn := p.mod.NamedFunction(coroName)
		if coroFn.IsNil() {
			coroLLType := p.Prog.FuncDecl(coroSig, InC).ll
			coroFn = llvm.AddFunction(p.mod, coroName, coroLLType)
		}
		coroExpr := Expr{coroFn, p.Prog.rawType(coroSig)}
		ret := b.Call(coroExpr, args...)
		closureWrapReturn(b, coroSig, ret)
		return wrap
	}

	// Sync wrapper: calls the function directly and returns the result
	name := closureStub + fnName
	if wrap := p.FuncOf(name); wrap != nil {
		return wrap
	}
	ctx := types.NewParam(token.NoPos, nil, closureCtx, types.Typ[types.UnsafePointer])
	sigCtx := FuncAddCtx(ctx, sig)
	wrap := p.NewFunc(name, sigCtx, InC)
	wrap.impl.SetLinkage(llvm.LinkOnceAnyLinkage)
	b := wrap.MakeBody(1)
	args := closureWrapArgs(wrap)
	ret := b.Call(fn, args...)
	closureWrapReturn(b, sig, ret)
	return wrap
}

// closureWrapPtr wraps a raw function pointer by loading it from ctx.
// The ctx parameter is treated as a pointer to a stored function pointer cell.
func (p Package) closureWrapPtr(sig *types.Signature) Function {
	name := closureStub + p.abi.FuncName(sig)
	if wrap := p.FuncOf(name); wrap != nil {
		return wrap
	}
	ctx := types.NewParam(token.NoPos, nil, closureCtx, types.Typ[types.UnsafePointer])
	sigCtx := FuncAddCtx(ctx, sig)
	wrap := p.NewFunc(name, sigCtx, InC)
	wrap.impl.SetLinkage(llvm.LinkOnceAnyLinkage)
	b := wrap.MakeBody(1)
	ctxArg := wrap.Param(0)
	fnType := p.Prog.rawType(sig)
	fnPtrType := p.Prog.Pointer(fnType)
	// ctxArg is expected to be a non-nil pointer to a stored function pointer cell.
	// We intentionally avoid runtime null checks here; invalid ctx is a compiler/user error.
	fnPtr := b.Convert(fnPtrType, ctxArg)
	fnVal := b.Load(fnPtr)
	args := closureWrapArgs(wrap)
	ret := b.Call(fnVal, args...)
	closureWrapReturn(b, sig, ret)
	return wrap
}

