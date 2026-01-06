package pullmodel

import (
	"go/types"
)

// createPollMethod creates a *types.Func for the Poll method.
// Signature: func Poll(ctx *Context) Poll[T]
func (g *LLSSACodeGen) createPollMethod(resultType types.Type) *types.Func {
	// Context parameter
	ctxType := g.getAsyncContextType()
	ctxParam := types.NewVar(0, nil, "ctx", ctxType)

	// Result type: Poll[T]
	pollResultType := g.createPollType(resultType)
	resultVar := types.NewVar(0, nil, "", pollResultType)

	// Create signature
	sig := types.NewSignatureType(
		nil, // no receiver in signature (it's a method)
		nil, nil,
		types.NewTuple(ctxParam),
		types.NewTuple(resultVar),
		false,
	)

	return types.NewFunc(0, nil, "Poll", sig)
}
