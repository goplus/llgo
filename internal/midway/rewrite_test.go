package midway

import (
	"go/ast"
	"go/constant"
	"go/importer"
	"go/parser"
	"go/token"
	"go/types"
	"testing"
)

type testImporter map[string]*types.Package

func (i testImporter) Import(path string) (*types.Package, error) {
	if p := i[path]; p != nil {
		return p, nil
	}
	return importer.Default().Import(path)
}

func testInfo() *types.Info {
	return &types.Info{Types: map[ast.Expr]types.TypeAndValue{}, Defs: map[*ast.Ident]types.Object{}, Uses: map[*ast.Ident]types.Object{}, Implicits: map[ast.Node]types.Object{}, Instances: map[*ast.Ident]types.Instance{}, Selections: map[*ast.SelectorExpr]*types.Selection{}}
}

func testCheck(t *testing.T, imports testImporter, path, source string, rewrite bool) (*types.Package, *types.Info) {
	t.Helper()
	fset := token.NewFileSet()
	file, err := parser.ParseFile(fset, path+".go", source, 0)
	if err != nil {
		t.Fatal(err)
	}
	info := testInfo()
	cfg := types.Config{Importer: imports, Sizes: types.SizesFor("gc", "amd64")}
	pkg, err := cfg.Check(path, fset, []*ast.File{file}, info)
	if err != nil {
		t.Fatal(err)
	}
	if rewrite {
		changed, _, err := Rewrite(fset, pkg, info, []*ast.File{file})
		if err != nil {
			t.Fatal(err)
		}
		if !changed {
			t.Fatal("portable source was not rewritten")
		}
		info = testInfo()
		pkg, err = cfg.Check(path, fset, []*ast.File{file}, info)
		if err != nil {
			t.Fatal(err)
		}
	}
	imports[path] = pkg
	return pkg, info
}

func TestRewriteTypeIdentityAndLayout(t *testing.T) {
	imports := testImporter{}
	// Distinct layouts prove that constants and recursive aggregate types are
	// recomputed by the second checker rather than copied from the first one.
	testCheck(t, imports, simdPath, `package simd
type Uint32s struct{}
func (Uint32s) Len() int { return 4 }
func BroadcastUint32s(uint32) Uint32s { return Uint32s{} }
func Emulated() bool { return false }
func VectorBitSize() int { return 128 }
`, false)
	testCheck(t, imports, bridgePath, `package bridge
type Uint32s [8]uint32
type Uint32x4 [4]uint32
func (Uint32s) Len() int { return 8 }
func (Uint32x4) Len() int { return 4 }
func BroadcastUint32s(uint32) Uint32s { return Uint32s{} }
func BroadcastUint32x4(uint32) Uint32x4 { return Uint32x4{} }
func LLGoMidwayUnreachable() { panic("unspecialized") }
`, false)
	pkg, _ := testCheck(t, imports, "lib", `package lib
import "simd"
import "unsafe"
type Node struct { Next *Node; Peer *Peer; Value simd.Uint32s }
type Peer struct { Next *Node }
type Embedded struct { simd.Uint32s }
type Alias = simd.Uint32s
type ConstrainedAlias[T interface { simd.Uint32s }] = int
func AliasConstraint() ConstrainedAlias[simd.Uint32s] { return 1 }
type EmbeddedAlias struct { Alias }
func NewAlias() EmbeddedAlias { return EmbeddedAlias{Alias: simd.BroadcastUint32s(1)} }
func UseAlias(x EmbeddedAlias) int { return x.Alias.Len() }
func ShadowPanic(panic simd.Uint32s) simd.Uint32s { return panic }
type Box[T any] struct { Value T }
const ( Size = unsafe.Sizeof(simd.Uint32s{}) + iota; Next )
type Bytes [Size]byte
func New() Embedded { return Embedded{Uint32s: simd.BroadcastUint32s(1)} }
func Use(x Embedded) int { return x.Uint32s.Len() }
func Generic[T interface{ simd.Uint32s }](x T) T { return x }
func Recursive(x *Peer) *Peer { if x.Next != nil { return Recursive(x.Next.Peer) }; return x }
func Scalar[T ~int](_ T, xs ...T) int { var v simd.Uint32s; return v.Len()+len(xs) }
func Shadow(simd int) int { var v Alias; return v.Len()+simd }
func Dot() Box[simd.Uint32s] { return Box[simd.Uint32s]{} }
`, true)
	for _, name := range []string{"Node", "Peer", "Embedded", "Alias", "Bytes", "New", "Use", "Generic", "Recursive", "Scalar", "Shadow", "Dot"} {
		for _, width := range widths {
			if pkg.Scope().Lookup(name+suffix(width)) == nil {
				t.Errorf("missing %s%s", name, suffix(width))
			}
		}
	}
	for _, tc := range []struct {
		name  string
		value int64
	}{{"Size@simd0", 32}, {"Size@simd128", 16}, {"Next@simd0", 33}, {"Next@simd128", 17}} {
		obj := pkg.Scope().Lookup(tc.name).(*types.Const)
		if got, _ := constant.Int64Val(obj.Val()); got != tc.value {
			t.Errorf("%s = %d, want %d", tc.name, got, tc.value)
		}
	}
	testCheck(t, imports, "client", `package client
import "lib"
func RoundTrip() int { x:=lib.New(); return lib.Use(x)+x.Uint32s.Len() }
func Box() int { return lib.Dot().Value.Len() }
`, true)
}
