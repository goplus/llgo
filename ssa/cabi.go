package ssa

import (
	"go/token"
	"go/types"
)

func (p Program) cabiCvtType(t Type) (Type, bool) {
	if t == p.Void() {
		return t, false
	}
	if p.SizeOf(t) >= 16 {
		return p.Pointer(t), true
	}
	return t, false
}

func (p Program) cabiCvtDeclSig(sig *types.Signature) *types.Signature {
	paramVars := make([]*types.Var, 0, sig.Params().Len()+2)
	retVars := make([]*types.Var, 0, 1)
	if sig.Results().Len() > 0 {
		ty, cvt := p.cabiCvtType(p.retType(sig))
		if cvt {
			paramVars = append(paramVars, types.NewParam(token.NoPos, nil, "ret", ty.RawType()))
		} else {
			retVars = append(retVars, types.NewParam(token.NoPos, nil, "", ty.RawType()))
		}
	}
	if recv := sig.Recv(); recv != nil {
		ty, _ := p.cabiCvtType(p.toType(recv.Type()))
		paramVars = append(paramVars, types.NewParam(token.NoPos, nil, "recv", ty.RawType()))
	}
	_, paramTypes, _ := newParams(p.toType(sig), p)
	for i := 0; i < len(paramTypes); i++ {
		v := sig.Params().At(i)
		ty, _ := p.cabiCvtType(p.toType(v.Type()))
		paramVars = append(paramVars, types.NewParam(token.NoPos, nil, v.Name(), ty.RawType()))
	}
	variadic := hasNameValist(sig)
	if variadic {
		paramVars = append(paramVars, types.NewParam(token.NoPos, nil, "...", sig.Params().At(len(paramTypes)).Type()))
	}
	params := types.NewTuple(paramVars...)
	rets := types.NewTuple(retVars...)
	return types.NewSignatureType(nil, nil, nil, params, rets, variadic)
}

func (p Program) cabiCvtCallSig(sig *types.Signature) *types.Signature {
	paramVars := make([]*types.Var, 0, sig.Params().Len()+2)
	retVars := make([]*types.Var, 0, 1)
	if sig.Results().Len() > 0 {
		ty, cvt := p.cabiCvtType(p.retType(sig))
		if cvt {
			paramVars = append(paramVars, types.NewParam(token.NoPos, nil, "ret", ty.RawType()))
		} else {
			retVars = append(retVars, types.NewParam(token.NoPos, nil, "", ty.RawType()))
		}
	}
	if recv := sig.Recv(); recv != nil {
		paramVars = append(paramVars, types.NewParam(token.NoPos, nil, "recv", recv.Type()))
	}
	_, paramTypes, _ := newParams(p.toType(sig), p)
	for i := 0; i < len(paramTypes); i++ {
		v := sig.Params().At(i)
		paramVars = append(paramVars, types.NewParam(token.NoPos, nil, v.Name(), v.Type()))
	}
	variadic := hasNameValist(sig)
	params := types.NewTuple(paramVars...)
	rets := types.NewTuple(retVars...)
	return types.NewSignatureType(nil, nil, nil, params, rets, variadic)
}
