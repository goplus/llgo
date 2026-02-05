package ssa

import "go/types"

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
