//go:build !llgo
// +build !llgo

package ssa

import (
	"go/token"
	"go/types"
	"strings"
	"testing"
)

func nilCheckRuntimePkg() *types.Package {
	pkg := types.NewPackage(PkgRuntime, "runtime")
	param := types.NewVar(0, pkg, "b", types.Typ[types.Bool])
	sig := types.NewSignatureType(nil, nil, nil, types.NewTuple(param), nil, false)
	pkg.Scope().Insert(types.NewFunc(0, pkg, "AssertNilDeref", sig))
	return pkg
}

func buildNilCheckIR(t *testing.T, prog Program) string {
	t.Helper()
	pkg := prog.NewPackage("bar", "foo/bar")
	params := types.NewTuple(types.NewVar(0, nil, "p", types.NewPointer(types.Typ[types.Int])))
	rets := types.NewTuple(types.NewVar(0, nil, "", types.Typ[types.Int]))
	sig := types.NewSignatureType(nil, nil, nil, params, rets, false)
	fn := pkg.NewFunc("fn", sig, InGo)
	b := fn.MakeBody(1)
	b.Return(b.UnOp(token.MUL, fn.Param(0)))
	return pkg.String()
}

func TestHostNilCheckUsesRuntimeAssertByDefault(t *testing.T) {
	prog := NewProgram(nil)
	prog.SetRuntime(nilCheckRuntimePkg())

	ir := buildNilCheckIR(t, prog)
	if !strings.Contains(ir, `AssertNilDeref`) {
		t.Fatalf("expected runtime nil-deref helper in IR:\n%s", ir)
	}
	if strings.Contains(ir, `load volatile i8`) {
		t.Fatalf("unexpected host faulting nilcheck in default IR:\n%s", ir)
	}
}

func TestHostNilCheckUsesFaultingLoadWhenEnabled(t *testing.T) {
	prog := NewProgram(nil)
	prog.SetFaultNilChecks(true)

	ir := buildNilCheckIR(t, prog)
	if !strings.Contains(ir, `load volatile i8`) {
		t.Fatalf("expected faulting volatile load nilcheck in IR:\n%s", ir)
	}
	if strings.Contains(ir, `AssertNilDeref`) {
		t.Fatalf("unexpected runtime nil-deref helper in host IR:\n%s", ir)
	}
}

func TestEmbeddedNilCheckKeepsRuntimeAssert(t *testing.T) {
	prog := NewProgram(nil)
	prog.Target().Target = "esp32"
	prog.SetFaultNilChecks(true)
	prog.SetRuntime(nilCheckRuntimePkg())

	ir := buildNilCheckIR(t, prog)
	if !strings.Contains(ir, `AssertNilDeref`) {
		t.Fatalf("expected runtime nil-deref helper for embedded IR:\n%s", ir)
	}
	if strings.Contains(ir, `load volatile i8`) {
		t.Fatalf("unexpected host faulting nilcheck in embedded IR:\n%s", ir)
	}
}
