package ssa

import (
	"go/token"
	"go/types"

	"github.com/goplus/llvm"
)

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

func (p Package) closureWrapDecl(fn Expr, sig *types.Signature) Function {
	name := closureStub + fn.impl.Name()
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
	fnPtr := b.Convert(fnPtrType, ctxArg)
	fnVal := b.Load(fnPtr)
	args := closureWrapArgs(wrap)
	ret := b.Call(fnVal, args...)
	closureWrapReturn(b, sig, ret)
	return wrap
}
