//go:build !llgo
// +build !llgo

package cl

import (
	"go/token"
	"go/types"
	"testing"

	"golang.org/x/tools/go/packages"
	"golang.org/x/tools/go/ssa"
	"golang.org/x/tools/go/ssa/ssautil"
)

func loadSSAPackageMember(t *testing.T, pkgPath, member string) *ssa.Function {
	t.Helper()
	cfg := &packages.Config{
		Mode: packages.NeedName | packages.NeedTypes | packages.NeedTypesInfo |
			packages.NeedSyntax | packages.NeedDeps | packages.NeedImports |
			packages.NeedFiles | packages.NeedCompiledGoFiles,
	}
	pkgs, err := packages.Load(cfg, pkgPath)
	if err != nil {
		t.Fatal(err)
	}
	if packages.PrintErrors(pkgs) > 0 {
		t.Fatalf("load %s failed", pkgPath)
	}
	_, ssaPkgs := ssautil.AllPackages(pkgs, ssa.InstantiateGenerics)
	for _, pkg := range ssaPkgs {
		if pkg == nil || pkg.Pkg == nil || pkg.Pkg.Path() != pkgPath {
			continue
		}
		if mem, ok := pkg.Members[member]; ok {
			fn, _ := mem.(*ssa.Function)
			if fn != nil {
				return fn
			}
		}
	}
	t.Fatalf("%s.%s not found", pkgPath, member)
	return nil
}

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

func TestHiddenStaticCallShimSkipsReflectliteToType(t *testing.T) {
	toType := loadSSAPackageMember(t, "internal/reflectlite", "toType")
	var p context
	if plan := p.hiddenStaticCallShimPlanFor("internal/reflectlite.toType", toType); plan != nil {
		t.Fatalf("unexpected hidden shim plan for internal/reflectlite.toType: %+v", plan)
	}
}

func TestShouldSkipHiddenPointerRewrite(t *testing.T) {
	toType := loadSSAPackageMember(t, "internal/reflectlite", "toType")
	if !shouldSkipHiddenPointerRewrite(toType) {
		t.Fatal("expected internal/reflectlite.toType to skip hidden rewrite")
	}
	elem := loadSSAPackageMember(t, "internal/reflectlite", "elem")
	if shouldSkipHiddenPointerRewrite(elem) {
		t.Fatal("unexpected hidden rewrite skip for internal/reflectlite.elem")
	}
}

func TestIsRuntimePackagePath(t *testing.T) {
	tests := []struct {
		path string
		want bool
	}{
		{path: "runtime", want: true},
		{path: "runtime/abi", want: true},
		{path: "runtime/internal/runtime", want: true},
		{path: "github.com/goplus/llgo/runtime", want: true},
		{path: "github.com/goplus/llgo/runtime/abi", want: true},
		{path: "github.com/goplus/llgo/runtime/internal/runtime", want: true},
		{path: "github.com/goplus/llgo/runtime/internal/lib/reflect", want: true},
		{path: "example.com/foo", want: false},
	}
	for _, tt := range tests {
		if got := isRuntimePackagePath(tt.path); got != tt.want {
			t.Fatalf("isRuntimePackagePath(%q) = %v, want %v", tt.path, got, tt.want)
		}
	}
}
