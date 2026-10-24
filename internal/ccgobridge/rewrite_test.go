package ccgobridge

import (
	"bytes"
	"go/ast"
	"go/format"
	"go/importer"
	"go/parser"
	"go/token"
	"go/types"
	"strings"
	"testing"
)

const exportHelper = `
func __ccgo_fp(f interface{}) uintptr {
	type iface [2]uintptr
	return (*iface)(unsafe.Pointer(&f))[1]
}
`

func rewriteSource(t *testing.T, source string) (string, Stats, error) {
	t.Helper()
	fset := token.NewFileSet()
	f, err := parser.ParseFile(fset, "fixture.go", source, parser.ParseComments)
	if err != nil {
		t.Fatal(err)
	}
	info := &types.Info{
		Types:      make(map[ast.Expr]types.TypeAndValue),
		Defs:       make(map[*ast.Ident]types.Object),
		Uses:       make(map[*ast.Ident]types.Object),
		Selections: make(map[*ast.SelectorExpr]*types.Selection),
	}
	pkg, err := (&types.Config{Importer: importer.Default()}).Check("fixture", fset, []*ast.File{f}, info)
	if err != nil {
		t.Fatal(err)
	}
	stats, rewriteErr := Rewrite(fset, pkg, info, []*ast.File{f})
	var out bytes.Buffer
	if err := format.Node(&out, fset, f); err != nil {
		t.Fatal(err)
	}
	if rewriteErr == nil {
		// Check fresh syntax, not stale types.Info from before the rewrite.
		checkSet := token.NewFileSet()
		checkFile, err := parser.ParseFile(checkSet, "rewritten.go", out.Bytes(), 0)
		if err != nil {
			t.Fatal(err)
		}
		if _, err := (&types.Config{Importer: importer.Default()}).Check("fixture", checkSet, []*ast.File{checkFile}, nil); err != nil {
			t.Fatalf("rewritten source does not type-check: %v\n%s", err, out.String())
		}
	}
	return out.String(), stats, rewriteErr
}

func TestStaticBoxAndConsumer(t *testing.T) {
	out, stats, err := rewriteSource(t, `package fixture
import "unsafe"
`+exportHelper+`
func twice(n int) int { return n*2 }
var first = __ccgo_fp(twice)
var second = __ccgo_fp(twice)
func call(p uintptr) int {
	return (*(*func(int) int)(unsafe.Pointer(&struct{ uintptr }{p})))(21)
}
`)
	if err != nil {
		t.Fatal(err)
	}
	if stats.StaticBoxes != 1 || stats.Exports != 2 || stats.Imports != 1 {
		t.Fatalf("unexpected counts: %+v", stats)
	}
	if !strings.Contains(out, "var __llgo_ccgo_box_0 __llgo_ccgo_staticBox[func(n int) int]") ||
		strings.Count(out, "__llgo_ccgo_export(&__llgo_ccgo_box_0, twice)") != 2 ||
		!strings.Contains(out, "(*func(int) int)(unsafe.Pointer(p))") {
		t.Fatalf("not a full typed box round trip:\n%s", out)
	}
}

func TestGenericStaticExporter(t *testing.T) {
	out, stats, err := rewriteSource(t, `package fixture
import "unsafe"
func cFuncPointer[T any](f T) uintptr {
	return *(*uintptr)(unsafe.Pointer(&struct{ f T }{f}))
}

func callback() {}
var p = cFuncPointer(callback)
`)
	if err != nil || stats.Exports != 1 || !strings.Contains(out, "__llgo_ccgo_export(&__llgo_ccgo_box_0, callback)") {
		t.Fatalf("generic exporter: %+v, %v\n%s", stats, err, out)
	}
}

func TestStaticBoxDoesNotIntroduceInitializationCycle(t *testing.T) {
	_, _, err := rewriteSource(t, `package fixture
import "unsafe"
`+exportHelper+`
func recursive() uintptr { return __ccgo_fp(recursive) }
`)
	if err != nil {
		t.Fatal(err)
	}
}

func TestRejectUnprovenExport(t *testing.T) {
	for _, value := range []string{"func() {}", "fn", "object.method"} {
		t.Run(value, func(t *testing.T) {
			_, _, err := rewriteSource(t, `package fixture
import "unsafe"
`+exportHelper+`
type receiver struct{}
func (receiver) method() {}
var object receiver
var fn = func() {}
var p = __ccgo_fp(`+value+`)
`)
			if err == nil || !strings.Contains(err.Error(), "static function declaration") {
				t.Fatalf("unproven export accepted: %v", err)
			}
		})
	}
}

func TestRejectChangedHelperAndEscapedHelper(t *testing.T) {
	for _, source := range []string{
		`func __ccgo_fp(f interface{}) uintptr { return 1 }; var p = __ccgo_fp(callback)`,
		exportHelper + `var exported = __ccgo_fp; var p = exported(callback)`,
	} {
		_, _, err := rewriteSource(t, `package fixture
import "unsafe"
var _ unsafe.Pointer
func callback() {}
`+source)
		if err == nil {
			t.Fatal("unvalidated helper accepted")
		}
	}
}

func TestUnrelatedUnsafeConversionUnchanged(t *testing.T) {
	out, stats, err := rewriteSource(t, `package fixture
import "unsafe"
func raw(p *uintptr) uintptr { return *(*uintptr)(unsafe.Pointer(p)) }
`)
	if err != nil || stats != (Stats{}) || !strings.Contains(out, "*(*uintptr)(unsafe.Pointer(p))") {
		t.Fatalf("ordinary unsafe changed: %+v, %v\n%s", stats, err, out)
	}
}
