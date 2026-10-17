package cl

import (
	"go/ast"
	"go/parser"
	"go/token"
	"go/types"
	"strings"
	"testing"

	"golang.org/x/tools/go/ssa"
	"golang.org/x/tools/go/ssa/ssautil"
)

func TestMidwayRecoverDispatcherIdentity(t *testing.T) {
	fs := token.NewFileSet()
	file, err := parser.ParseFile(fs, "dispatch.go", `package fixture
 func software[T any]() {recover()}
 func hardware[T any]() {recover()}
 func entry[T any](emulated bool) {if emulated {software[T]();return};hardware[T]()}
 func trapSoftware() {}
 func trapHardware() {}
 func trap() {panic("unspecialized")}
 func partialSoftware() {}
 func partialHardware() {}
 func partial(fn func()) {fn();partialSoftware()}
 func ordinary() {entry[int](false)}
 func use() {entry[int](true);ordinary();trap();partial(nil)}
 `, 0)
	if err != nil {
		t.Fatal(err)
	}
	// Mirror the compiler-only names which cannot be written in Go source.
	names := map[string]string{"software": "entry@simd0", "hardware": "entry@simd128", "trapSoftware": "trap@simd0", "trapHardware": "trap@simd128", "partialSoftware": "partial@simd0", "partialHardware": "partial@simd128"}
	ast.Inspect(file, func(n ast.Node) bool {
		if id, ok := n.(*ast.Ident); ok {
			if name := names[id.Name]; name != "" {
				id.Name = name
			}
		}
		return true
	})
	pkg, _, err := ssautil.BuildPackage(&types.Config{}, fs, types.NewPackage("fixture", "fixture"), []*ast.File{file}, ssa.InstantiateGenerics)
	if err != nil {
		t.Fatal(err)
	}
	count := 0
	for fn := range ssautil.AllFunctions(pkg.Prog) {
		if strings.HasPrefix(fn.Name(), "entry[") {
			count++
			if !isRecoverTransparentWrapper(fn) || !newRecoverFacts().needsRecoverScope(fn) {
				t.Fatalf("generic dispatcher lost recover identity: %s", fn)
			}
		}
	}
	if count == 0 {
		t.Fatal("no instantiated dispatcher")
	}
	for _, name := range []string{"ordinary", "trap", "partial"} {
		if isRecoverTransparentWrapper(pkg.Func(name)) {
			t.Fatalf("%s must keep its own recovery frame", name)
		}
	}
	if isRecoverTransparentWrapper(nil) || isRecoverTransparentWrapper(&ssa.Function{}) {
		t.Fatal("invalid function classified as dispatcher")
	}
}
