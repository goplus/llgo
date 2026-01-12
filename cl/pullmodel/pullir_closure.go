package pullmodel

import (
	"go/token"
	"go/types"

	llssa "github.com/goplus/llgo/ssa"
	"golang.org/x/tools/go/ssa"
)

// signatureWithCtx adds the hidden closure context parameter when free vars exist.
func (g *PullIRCodeGen) signatureWithCtx(sig *types.Signature) *types.Signature {
	ctx := g.closureCtxParam()
	if ctx == nil {
		return sig
	}
	return llssa.FuncAddCtx(ctx, sig)
}

// closureCtxParam builds the synthetic __llgo_ctx parameter for closures.
func (g *PullIRCodeGen) closureCtxParam() *types.Var {
	fn := g.pullIR.Original
	if len(fn.FreeVars) == 0 {
		return nil
	}
	fields := make([]*types.Var, len(fn.FreeVars))
	for i, fv := range fn.FreeVars {
		fields[i] = types.NewField(token.NoPos, nil, fv.Name(), fv.Type(), false)
	}
	ctxStruct := types.NewStruct(fields, nil)
	ctxPtr := types.NewPointer(ctxStruct)
	return types.NewParam(token.NoPos, nil, "__llgo_ctx", ctxPtr)
}

func (g *PullIRCodeGen) freeVarIndex(fv *ssa.FreeVar) int {
	if fv == nil {
		return -1
	}
	for i, v := range g.pullIR.Original.FreeVars {
		if v == fv {
			return i
		}
	}
	return -1
}
