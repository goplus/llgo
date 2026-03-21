//go:build !llgo
// +build !llgo

package cl

import (
	"go/ast"
	"go/parser"
	"go/token"
	"go/types"
	"testing"

	gpackages "github.com/goplus/gogen/packages"
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

func loadSSAFromSource(t *testing.T, src, member string) *ssa.Function {
	t.Helper()
	fset := token.NewFileSet()
	file, err := parser.ParseFile(fset, "singleextract.go", src, 0)
	if err != nil {
		t.Fatalf("parse failed: %v", err)
	}
	importer := gpackages.NewImporter(fset)
	pkg, _, err := ssautil.BuildPackage(&types.Config{Importer: importer}, fset,
		types.NewPackage(file.Name.Name, file.Name.Name), []*ast.File{file}, ssa.InstantiateGenerics)
	if err != nil {
		t.Fatalf("build package failed: %v", err)
	}
	mem, ok := pkg.Members[member]
	if !ok {
		t.Fatalf("%s not found", member)
	}
	fn, ok := mem.(*ssa.Function)
	if !ok || fn == nil {
		t.Fatalf("%s is not a function", member)
	}
	return fn
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

func TestSingleExtractCallShimPlanFor(t *testing.T) {
	const src = `package foo

type T struct{ next *T }

func g(x []*T) ([]*T, []*T) { return x, x }

func f(x []*T) interface{} {
	var h, _ interface{} = g(x)
	return h
}
`
	g := loadSSAFromSource(t, src, "g")
	f := loadSSAFromSource(t, src, "f")
	var callInstr *ssa.Call
	for _, blk := range f.Blocks {
		for _, instr := range blk.Instrs {
			call, ok := instr.(*ssa.Call)
			if ok {
				callInstr = call
				break
			}
		}
		if callInstr != nil {
			break
		}
	}
	if callInstr == nil {
		t.Fatal("missing call instruction")
	}
	if idx, ok := singleExtractTupleUseIndex(callInstr); !ok || idx != 0 {
		t.Fatalf("singleExtractTupleUseIndex(call) = (%d, %v), want (0, true)", idx, ok)
	}
	var p context
	plan := p.singleExtractCallShimPlanFor("foo.g", g, 0)
	if plan == nil {
		t.Fatal("missing single-extract shim plan")
	}
	if plan.shimName != "foo.g$extract0" {
		t.Fatalf("unexpected shim name %q", plan.shimName)
	}
	if plan.shimSig == nil || plan.shimSig.Results().Len() != 1 {
		t.Fatalf("unexpected shim signature: %v", plan.shimSig)
	}
	if want := hiddenCallABIType(g.Signature.Results().At(0).Type()); !types.Identical(plan.shimSig.Results().At(0).Type(), want) {
		t.Fatalf("shim result type %v, want %v", plan.shimSig.Results().At(0).Type(), want)
	}
	if plan.outSig == nil || plan.outSig.Params().Len() < 2 {
		t.Fatalf("missing out-shim signature: %v", plan.outSig)
	}
	if plan.outName != "foo.g$extract0$out" {
		t.Fatalf("unexpected out-shim name %q", plan.outName)
	}
}

func TestCanHidePointerValueRejectsInterface(t *testing.T) {
	const src = `package foo

func f(x []int) interface{} {
	return x
}
`
	f := loadSSAFromSource(t, src, "f")
	var mi *ssa.MakeInterface
	for _, blk := range f.Blocks {
		for _, instr := range blk.Instrs {
			if v, ok := instr.(*ssa.MakeInterface); ok {
				mi = v
				break
			}
		}
		if mi != nil {
			break
		}
	}
	if mi == nil {
		t.Fatal("missing MakeInterface")
	}
	var p context
	if p.canHidePointerValue(mi) {
		t.Fatal("MakeInterface should not be lowered to hidden interface storage")
	}
}

func TestFunctionNeedsStrongPointerClobberForRuntimeFinalizerHelpers(t *testing.T) {
	const src = `package runtime

func AddCleanupValuePtr() {}

func setFinalizer() {
	AddCleanupValuePtr()
}

func SetFinalizerTypeHiddenSlotKeepalive() {
	setFinalizer()
}

func f() {
	SetFinalizerTypeHiddenSlotKeepalive()
}
`
	tests := []string{
		"setFinalizer",
		"SetFinalizerTypeHiddenSlotKeepalive",
		"f",
	}
	var p context
	for _, member := range tests {
		fn := loadSSAFromSource(t, src, member)
		if !p.functionNeedsStrongPointerClobber(fn) {
			t.Fatalf("functionNeedsStrongPointerClobber(%s) = false, want true", member)
		}
	}
}
