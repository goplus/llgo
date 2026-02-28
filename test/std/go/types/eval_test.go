package types_test

import (
	"go/types"
	"testing"
)

func TestEvalAndConstantFolding(t *testing.T) {
	src := `package evalpkg

const Pi = 3.0

func Twice[T ~float64](v T) T {
    return v + v
}`

	info := &types.Info{}
	checked := typeCheck(t, src, info)

	pos := checked.file.Package
	tvConst, err := types.Eval(checked.fset, checked.pkg, pos, "Pi + 1")
	if err != nil {
		t.Fatalf("Eval constant failed: %v", err)
	}
	if tvConst.Type == nil {
		t.Fatal("expected a type from constant Eval result")
	}
	if got, want := tvConst.Type.String(), "untyped float"; got != want {
		t.Fatalf("Eval constant type = %s, want %s", got, want)
	}
	if tvConst.Value == nil {
		t.Fatal("expected constant value from Eval result")
	}
	if got, want := tvConst.Value.String(), "4"; got != want {
		t.Fatalf("Eval constant value = %s, want %s", got, want)
	}

	tvGeneric, err := types.Eval(checked.fset, checked.pkg, pos, "Twice(1.5)")
	if err != nil {
		t.Fatalf("Eval generic failed: %v", err)
	}
	if tvGeneric.Type != nil {
		if got, want := tvGeneric.Type.String(), "float64"; got != want {
			t.Fatalf("Eval generic type = %s, want %s", got, want)
		}
	}
}
