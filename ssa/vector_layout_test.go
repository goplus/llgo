//go:build !llgo

package ssa

import (
	"fmt"
	"go/token"
	"go/types"
	"testing"
)

// Ordinary Go types must not add allocations beyond the original Go sizes hooks.
func TestOrdinarySourceLayoutAllocations(t *testing.T) {
	prog := NewProgram(&Target{GOOS: "linux", GOARCH: "amd64"})
	defer prog.Dispose()
	base := types.SizesFor("gc", "amd64")
	sizes := prog.TypeSizes(base)
	field := types.NewField(token.NoPos, nil, "x", types.Typ[types.Int64], false)
	nested := types.NewStruct([]*types.Var{field}, nil)
	fields := make([]*types.Var, 128)
	for i := range fields {
		fields[i] = types.NewField(token.NoPos, nil, fmt.Sprintf("f%d", i), nested, false)
	}
	ordinary := types.NewStruct(fields, nil)
	for _, tc := range []struct {
		name string
		call func(types.Sizes)
	}{
		{"size", func(s types.Sizes) {
			if s.Sizeof(ordinary) != 1024 {
				t.Fatal("size")
			}
		}},
		{"alignment", func(s types.Sizes) {
			if s.Alignof(ordinary) != 8 {
				t.Fatal("alignment")
			}
		}},
		{"offsets", func(s types.Sizes) {
			if s.Offsetsof(fields)[127] != 1016 {
				t.Fatal("offset")
			}
		}},
	} {
		t.Run(tc.name, func(t *testing.T) {
			want := testing.AllocsPerRun(10, func() { tc.call(base) })
			if got := testing.AllocsPerRun(10, func() { tc.call(sizes) }); got != want {
				t.Fatalf("allocations = %g, baseline = %g", got, want)
			}
		})
	}
}
