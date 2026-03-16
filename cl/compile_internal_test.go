//go:build !llgo
// +build !llgo

package cl

import (
	"go/token"
	"go/types"
	"testing"
)

func TestIsRuntimeMetadataPointer(t *testing.T) {
	newPtr := func(path, name string) types.Type {
		pkg := types.NewPackage(path, "p")
		obj := types.NewTypeName(token.NoPos, pkg, name, nil)
		named := types.NewNamed(obj, types.NewStruct(nil, nil), nil)
		return types.NewPointer(named)
	}

	tests := []struct {
		typ  types.Type
		want bool
	}{
		{typ: newPtr("github.com/goplus/llgo/runtime/abi", "Type"), want: true},
		{typ: newPtr("github.com/goplus/llgo/runtime/internal/runtime", "Type"), want: true},
		{typ: newPtr("internal/abi", "Type"), want: true},
		{typ: newPtr("example.com/foo", "T"), want: false},
		{typ: types.Typ[types.Int], want: false},
	}

	for _, tt := range tests {
		if got := isRuntimeMetadataPointer(tt.typ); got != tt.want {
			t.Fatalf("isRuntimeMetadataPointer(%v) = %v, want %v", tt.typ, got, tt.want)
		}
	}
}
