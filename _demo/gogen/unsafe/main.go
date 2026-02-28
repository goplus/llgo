//go:build go1.20
// +build go1.20

// Converted from unsafe_test.go for llgo testing
// Tests gogen's ability to generate unsafe.Slice/String code
package main

import (
	"bytes"
	"fmt"
	"go/token"
	"go/types"

	"github.com/goplus/gogen"
	"github.com/goplus/gogen/packages"
)

var (
	gblFset *token.FileSet
	gblImp  types.Importer
)

func init() {
	gblFset = token.NewFileSet()
	gblImp = packages.NewImporter(gblFset)
}

func newMainPackage() *gogen.Package {
	conf := &gogen.Config{
		Fset:     gblFset,
		Importer: gblImp,
	}
	return gogen.NewPackage("", "main", conf)
}

func domTest(pkg *gogen.Package, expected string) {
	var b bytes.Buffer
	err := gogen.WriteTo(&b, pkg, "")
	if err != nil {
		panic(fmt.Sprintf("gogen.WriteTo failed: %v", err))
	}
	result := b.String()
	if result != expected {
		panic(fmt.Sprintf("\nResult:\n%s\nExpected:\n%s\n", result, expected))
	}
}

func testUnsafeSlice() {
	fmt.Println("=== testUnsafeSlice ===")
	pkg := newMainPackage()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewVarStart(nil, "v").
		Val(1).Val(2).Val(3).ArrayLit(types.NewArray(types.Typ[types.Int], 3), 3).
		EndInit(1).
		NewVarStart(types.NewSlice(types.Typ[types.Int]), "s").
		Val(pkg.Unsafe().Ref("Slice")).VarVal("v").Val(0).Index(1, 0).UnaryOp(token.AND).Val(3).CallWith(2, 0, 0).
		EndInit(1).
		NewVarStart(types.NewPointer(types.Typ[types.Int]), "p").
		Val(pkg.Unsafe().Ref("SliceData")).VarVal("s").CallWith(1, 0, 0).
		EndInit(1).
		End()

	expected := `package main

import "unsafe"

func main() {
	var v = [3]int{1, 2, 3}
	var s []int = unsafe.Slice(&v[0], 3)
	var p *int = unsafe.SliceData(s)
}
`
	domTest(pkg, expected)
	fmt.Println("  Generated code matches expected [PASS]")
}

func testUnsafeString() {
	fmt.Println("=== testUnsafeString ===")
	pkg := newMainPackage()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewVarStart(nil, "v").
		Val('a').Val('b').Val('c').ArrayLit(types.NewArray(types.Typ[types.Byte], 3), 3).
		EndInit(1).
		NewVarStart(types.Typ[types.String], "s").
		Val(pkg.Unsafe().Ref("String")).VarVal("v").Val(0).Index(1, 0).UnaryOp(token.AND).Val(3).CallWith(2, 0, 0).
		EndInit(1).
		NewVarStart(types.NewPointer(types.Typ[types.Byte]), "p").
		Val(pkg.Unsafe().Ref("StringData")).VarVal("s").CallWith(1, 0, 0).
		EndInit(1).
		End()

	expected := `package main

import "unsafe"

func main() {
	var v = [3]uint8{'a', 'b', 'c'}
	var s string = unsafe.String(&v[0], 3)
	var p *uint8 = unsafe.StringData(s)
}
`
	domTest(pkg, expected)
	fmt.Println("  Generated code matches expected [PASS]")
}

func main() {
	fmt.Println("Running unsafe_test tests...")
	fmt.Println()

	testUnsafeSlice()
	fmt.Println()

	testUnsafeString()
	fmt.Println()

	fmt.Println("All tests PASSED!")
}
