package pullmodel

import "go/types"

// createPollMethod creates a *types.Func for the Poll method.
// Signature: func Poll(ctx *Context) Poll[T]
func (g *PullIRCodeGen) createPollMethod(resultType types.Type) *types.Func {
	ctxType := g.getAsyncContextType()
	ctxParam := types.NewVar(0, nil, "ctx", ctxType)

	pollResultType := g.getAsyncPollType(resultType)
	resultVar := types.NewVar(0, nil, "", pollResultType)

	sig := types.NewSignatureType(
		nil,
		nil, nil,
		types.NewTuple(ctxParam),
		types.NewTuple(resultVar),
		false,
	)
	return types.NewFunc(0, nil, "Poll", sig)
}
