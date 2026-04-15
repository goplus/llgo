//go:build !llgo
// +build !llgo

package ssa

import (
	"go/token"
	"go/types"
	"strings"
	"testing"
)

func TestEsp32Float32PredUsesSoftFloatBuiltin(t *testing.T) {
	prog := NewProgram(nil)
	prog.Target().Target = "esp32"
	pkg := prog.NewPackage("bar", "foo/bar")

	params := types.NewTuple(
		types.NewVar(0, nil, "a", types.Typ[types.Float32]),
		types.NewVar(0, nil, "b", types.Typ[types.Float32]),
	)
	rets := types.NewTuple(types.NewVar(0, nil, "", types.Typ[types.Bool]))
	sig := types.NewSignatureType(nil, nil, nil, params, rets, false)
	fn := pkg.NewFunc("fn", sig, InGo)
	b := fn.MakeBody(1)
	b.Return(b.BinOp(token.EQL, fn.Param(0), fn.Param(1)))

	ir := pkg.String()
	if !strings.Contains(ir, `declare i32 @__eqsf2(float, float)`) {
		t.Fatalf("expected __eqsf2 declaration in IR:\n%s", ir)
	}
	if !strings.Contains(ir, `call i32 @__eqsf2(`) {
		t.Fatalf("expected __eqsf2 call in IR:\n%s", ir)
	}
	if strings.Contains(ir, `fcmp oeq float`) {
		t.Fatalf("unexpected float fcmp in IR:\n%s", ir)
	}
}
