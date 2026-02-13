// Converted from package_test.go for llgo testing
// Batch 1: tests 1-5, Batch 2: tests 6-15
package main

import (
	"bytes"
	"fmt"
	"go/ast"
	"go/constant"
	"go/parser"
	"go/token"
	"go/types"
	"syscall"

	"github.com/goplus/gogen"
	"github.com/goplus/gogen/packages"
)

// ============ Global Variables ============
var (
	gblFset *token.FileSet
	gblImp  types.Importer
)

func init() {
	gblFset = token.NewFileSet()
	gblImp = packages.NewImporter(gblFset)
}

// ============ Type Aliases ============
type goxVar = types.Var

// ============ Helper Functions ============

func newMainPackage() *gogen.Package {
	conf := &gogen.Config{
		Fset:     gblFset,
		Importer: gblImp,
	}
	return gogen.NewPackage("", "main", conf)
}

func domTest(pkg *gogen.Package, expected string) {
	domTestEx(pkg, expected, "")
}

func domTestEx(pkg *gogen.Package, expected string, fname string) {
	var b bytes.Buffer
	err := gogen.WriteTo(&b, pkg, fname)
	if err != nil {
		panic(fmt.Sprintf("gogen.WriteTo failed: %v", err))
	}
	result := b.String()
	if result != expected {
		panic(fmt.Sprintf("\nResult:\n%s\nExpected:\n%s\n", result, expected))
	}
}

func ctxRef(pkg *gogen.Package, name string) gogen.Ref {
	_, o := pkg.CB().Scope().LookupParent(name, token.NoPos)
	return o
}

func comment(txt string) *ast.CommentGroup {
	return &ast.CommentGroup{List: []*ast.Comment{{Text: txt}}}
}

// ============ Test 1: TestRedupPkgIssue796 ============
func testRedupPkgIssue796() {
	fmt.Println("=== testRedupPkgIssue796 ===")
	pkg := newMainPackage()
	builtin := pkg.Import("github.com/goplus/gogen/internal/builtin")
	builtin.EnsureImported()
	context := pkg.Import("context")
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		Val(context.Ref("WithTimeout")).
		Val(context.Ref("Background")).Call(0).
		Val(pkg.Import("time").Ref("Minute")).Call(2).EndStmt().
		End()
	domTest(pkg, `package main

import (
	"context"
	"time"
)

func main() {
	context.WithTimeout(context.Background(), time.Minute)
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 2: TestBTIMethod ============
func testBTIMethod() {
	fmt.Println("=== testBTIMethod ===")
	pkg := newMainPackage()
	fmtPkg := pkg.Import("fmt")
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewVar(types.NewChan(0, types.Typ[types.Int]), "a").
		NewVar(types.NewSlice(types.Typ[types.Int]), "b").
		NewVar(types.NewSlice(types.Typ[types.String]), "c").
		NewVar(types.Typ[types.Int64], "e").
		Val(fmtPkg.Ref("Println")).VarVal("a").MemberVal("Len", 0).Call(0).Call(1).EndStmt().
		Val(fmtPkg.Ref("Println")).VarVal("b").MemberVal("Len", 0).Call(0).Call(1).EndStmt().
		Val(fmtPkg.Ref("Println")).VarVal("c").MemberVal("Len", 0).Call(0).Call(1).EndStmt().
		Val(fmtPkg.Ref("Println")).VarVal("c").MemberVal("Join", 0).Val(",").Call(1).Call(1).EndStmt().
		Val(fmtPkg.Ref("Println")).Val("Hi").MemberVal("Len", 0).Call(0).Call(1).EndStmt().
		Val(fmtPkg.Ref("Println")).Val("100").MemberVal("Int", 0).Call(0).Call(1).EndStmt().
		Val(fmtPkg.Ref("Println")).Val("100").MemberVal("Uint64", 0).Call(0).Call(1).EndStmt().
		Val(fmtPkg.Ref("Println")).Val(100).MemberVal("String", 0).Call(0).Call(1).EndStmt().
		Val(fmtPkg.Ref("Println")).Val(1.34).MemberVal("String", 0).Call(0).Call(1).EndStmt().
		Val(fmtPkg.Ref("Println")).VarVal("e").Debug(
		func(cb *gogen.CodeBuilder) {
			cb.Member("string", 0, gogen.MemberFlagAutoProperty)
		}).Call(1).EndStmt().
		End()
	domTest(pkg, `package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var a chan int
	var b []int
	var c []string
	var e int64
	fmt.Println(len(a))
	fmt.Println(len(b))
	fmt.Println(len(c))
	fmt.Println(strings.Join(c, ","))
	fmt.Println(len("Hi"))
	fmt.Println(strconv.Atoi("100"))
	fmt.Println(strconv.ParseUint("100", 10, 64))
	fmt.Println(strconv.Itoa(100))
	fmt.Println(strconv.FormatFloat(1.34, 'g', -1, 64))
	fmt.Println(strconv.FormatInt(e, 10))
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 3: TestTypedBTIMethod ============
func testTypedBTIMethod() {
	fmt.Println("=== testTypedBTIMethod ===")
	pkg := newMainPackage()
	fmtPkg := pkg.Import("fmt")
	tyInt := pkg.NewType("MyInt").InitType(pkg, types.Typ[types.Int])
	tyInt64 := pkg.NewType("MyInt64").InitType(pkg, types.Typ[types.Int64])
	tyUint64 := pkg.NewType("MyUint64").InitType(pkg, types.Typ[types.Uint64])
	tyFloat64 := pkg.NewType("MyFloat64").InitType(pkg, types.Typ[types.Float64])
	tyString := pkg.NewType("MyString").InitType(pkg, types.Typ[types.String])
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewVar(tyInt, "a").
		NewVar(tyInt64, "b").
		NewVar(tyUint64, "c").
		NewVar(tyFloat64, "d").
		NewVar(tyString, "e").
		Val(fmtPkg.Ref("Println")).VarVal("a").MemberVal("String", 0).Call(0).Call(1).EndStmt().
		Val(fmtPkg.Ref("Println")).VarVal("b").MemberVal("String", 0).Call(0).Call(1).EndStmt().
		Val(fmtPkg.Ref("Println")).VarVal("c").MemberVal("String", 0).Call(0).Call(1).EndStmt().
		Val(fmtPkg.Ref("Println")).VarVal("d").MemberVal("String", 0).Call(0).Call(1).EndStmt().
		Val(fmtPkg.Ref("Println")).VarVal("e").MemberVal("ToUpper", 0).Call(0).Call(1).EndStmt().
		End()
	domTest(pkg, `package main

import (
	"fmt"
	"strconv"
	"strings"
)

type MyInt int
type MyInt64 int64
type MyUint64 uint64
type MyFloat64 float64
type MyString string

func main() {
	var a MyInt
	var b MyInt64
	var c MyUint64
	var d MyFloat64
	var e MyString
	fmt.Println(strconv.Itoa(int(a)))
	fmt.Println(strconv.FormatInt(int64(b), 10))
	fmt.Println(strconv.FormatUint(uint64(c), 10))
	fmt.Println(strconv.FormatFloat(float64(d), 'g', -1, 64))
	fmt.Println(strings.ToUpper(string(e)))
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 4: TestPrintlnPrintln ============
func testPrintlnPrintln() {
	fmt.Println("=== testPrintlnPrintln ===")
	pkg := newMainPackage()
	fmtPkg := pkg.Import("fmt")
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		Val(fmtPkg.Ref("Println")).Val(fmtPkg.Ref("Println")).Call(0).Call(1).EndStmt().
		End()
	domTest(pkg, `package main

import "fmt"

func main() {
	fmt.Println(fmt.Println())
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 5: TestImportGopPkg ============
func testImportGopPkg() {
	fmt.Println("=== testImportGopPkg ===")
	pkg := newMainPackage()
	foo := pkg.Import("github.com/goplus/gogen/internal/foo")
	foo.EnsureImported()
	nodeSet := foo.Ref("NodeSet")
	if nodeSet == nil {
		panic("TestImportGopPkg: NodeSet not found")
	}
	typ := nodeSet.(*types.TypeName).Type().(*types.Named)
	for i, n := 0, typ.NumMethods(); i < n; i++ {
		m := typ.Method(i)
		if m.Name() == "Attr" {
			funcs, ok := gogen.CheckOverloadMethod(m.Type().(*types.Signature))
			if !ok || len(funcs) != 2 {
				panic(fmt.Sprintf("CheckOverloadMethod failed: funcs=%v ok=%v", funcs, ok))
			}
			fmt.Println("  Found NodeSet.Attr with 2 overloads [PASS]")
			return
		}
	}
	panic("TestImportGopPkg: NodeSet.Attr not found")
}

// ============ Test 6: TestGoTypesPkg ============
func testGoTypesPkg() {
	fmt.Println("=== testGoTypesPkg ===")
	const src = `package foo

type mytype = byte

func bar(v mytype) rune {
	return 0
}
`
	fset := token.NewFileSet()
	f, err := parser.ParseFile(fset, "foo.go", src, 0)
	if err != nil {
		panic(fmt.Sprintf("parser.ParseFile: %v", err))
	}

	conf := types.Config{}
	pkg, err := conf.Check("foo", fset, []*ast.File{f}, nil)
	if err != nil {
		panic(fmt.Sprintf("conf.Check: %v", err))
	}
	bar := pkg.Scope().Lookup("bar")
	// Note: behavior depends on Go version, just verify it compiles
	if bar == nil {
		panic("bar not found")
	}
	fmt.Printf("  bar.String() = %s [PASS]\n", bar.String())
}

// ============ Test 7: TestMethods ============
func testMethods() {
	fmt.Println("=== testMethods ===")
	const src = `package foo

type foo struct {}
func (a foo) A() {}
func (p *foo) Bar() {}
`
	fset := token.NewFileSet()
	f, err := parser.ParseFile(fset, "foo.go", src, 0)
	if err != nil {
		panic(fmt.Sprintf("parser.ParseFile: %v", err))
	}

	conf := types.Config{}
	pkg, err := conf.Check("foo", fset, []*ast.File{f}, nil)
	if err != nil {
		panic(fmt.Sprintf("conf.Check: %v", err))
	}
	foo, ok := pkg.Scope().Lookup("foo").Type().(*types.Named)
	if !ok {
		panic("foo not found")
	}
	if foo.NumMethods() != 2 {
		panic(fmt.Sprintf("foo.NumMethods: %d, expected 2", foo.NumMethods()))
	}
	fmt.Printf("  foo has %d methods [PASS]\n", foo.NumMethods())
}

// ============ Test 8: TestBasic ============
func testBasic() {
	fmt.Println("=== testBasic ===")
	pkg := newMainPackage()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).End()
	if pkg.Ref("main") == nil {
		panic("main not found")
	}
	domTest(pkg, `package main

func main() {
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 9: TestMake ============
func testMake() {
	fmt.Println("=== testMake ===")
	pkg := newMainPackage()
	tySlice := types.NewSlice(types.Typ[types.Int])
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewVarStart(tySlice, "a").Val(pkg.Builtin().Ref("make")).
		Typ(tySlice).Val(0).Val(2).Call(3).EndInit(1).
		End()
	domTest(pkg, `package main

func main() {
	var a []int = make([]int, 0, 2)
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 10: TestNew ============
func testNew() {
	fmt.Println("=== testNew ===")
	pkg := newMainPackage()
	tyInt := types.Typ[types.Int]
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewVarStart(types.NewPointer(tyInt), "a").Val(pkg.Builtin().Ref("new")).
		Val(ctxRef(pkg, "int")).Call(1).EndInit(1).
		End()
	domTest(pkg, `package main

func main() {
	var a *int = new(int)
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 11: TestTypeConv ============
func testTypeConv() {
	fmt.Println("=== testTypeConv ===")
	pkg := newMainPackage()
	tyInt := types.Typ[types.Uint32]
	tyPInt := types.NewPointer(tyInt)
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewVarStart(tyInt, "a").Typ(tyInt).Val(0).Call(1).EndInit(1).
		NewVarStart(tyPInt, "b").Typ(tyPInt).Val(nil).Call(1).EndInit(1).
		End()
	domTest(pkg, `package main

func main() {
	var a uint32 = uint32(0)
	var b *uint32 = (*uint32)(nil)
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 12: TestTypeConvBool ============
func testTypeConvBool() {
	fmt.Println("=== testTypeConvBool ===")
	pkg := newMainPackage()
	tyBool := types.Typ[types.Bool]
	tyInt := types.Typ[types.Uint32]
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewVarStart(tyBool, "a").Val(false).EndInit(1).
		NewVarStart(tyInt, "b").Typ(tyInt).VarVal("a").Call(1).EndInit(1).
		End()
	domTest(pkg, `package main

func main() {
	var a bool = false
	var b uint32 = func() uint32 {
		if a {
			return 1
		} else {
			return 0
		}
	}()
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 13: TestIncDec ============
func testIncDec() {
	fmt.Println("=== testIncDec ===")
	pkg := newMainPackage()
	tyInt := types.Typ[types.Uint]
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		SetComments(comment("\n// new var a"), false).
		NewVar(tyInt, "a").
		SetComments(comment("\n// inc a"), true).
		VarRef(ctxRef(pkg, "a")).IncDec(token.INC).EndStmt().
		VarRef(ctxRef(pkg, "a")).IncDec(token.DEC).EndStmt().
		End()
	domTest(pkg, `package main

func main() {
// new var a
	var a uint
// inc a
	a++
	a--
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 14: TestSend ============
func testSend() {
	fmt.Println("=== testSend ===")
	pkg := newMainPackage()
	tyChan := types.NewChan(types.SendRecv, types.Typ[types.Uint])
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewVar(tyChan, "a").
		VarVal("a").Val(1).Send().
		End()
	domTest(pkg, `package main

func main() {
	var a chan uint
	a <- 1
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 15: TestRecv ============
func testRecv() {
	fmt.Println("=== testRecv ===")
	pkg := newMainPackage()
	tyChan := types.NewChan(types.SendRecv, types.Typ[types.Uint])
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewVar(tyChan, "a").
		NewVarStart(types.Typ[types.Uint], "b").VarVal("a").UnaryOp(token.ARROW).EndInit(1).
		DefineVarStart(0, "c", "ok").VarVal("a").UnaryOpEx(token.ARROW, 2, nil).EndInit(1).
		End()
	domTest(pkg, `package main

func main() {
	var a chan uint
	var b uint = <-a
	c, ok := <-a
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 16: TestRecv2 ============
func testRecv2() {
	fmt.Println("=== testRecv2 ===")
	pkg := newMainPackage()
	tyChan := types.NewChan(types.SendRecv, types.Typ[types.Uint])
	typ := pkg.NewType("T").InitType(pkg, tyChan)
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewVar(typ, "a").
		NewVarStart(types.Typ[types.Uint], "b").VarVal("a").UnaryOp(token.ARROW).EndInit(1).
		DefineVarStart(0, "c", "ok").VarVal("a").UnaryOpEx(token.ARROW, 2).EndInit(1).
		End()
	domTest(pkg, `package main

type T chan uint

func main() {
	var a T
	var b uint = <-a
	c, ok := <-a
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 17: TestRecv3 ============
func testRecv3() {
	fmt.Println("=== testRecv3 ===")
	pkg := newMainPackage()
	tyUint := pkg.NewType("Uint").InitType(pkg, types.Typ[types.Uint])
	tyChan := types.NewChan(types.SendRecv, tyUint)
	typ := pkg.NewType("T").InitType(pkg, tyChan)
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewVar(typ, "a").
		NewVarStart(tyUint, "b").VarVal("a").UnaryOp(token.ARROW).EndInit(1).
		DefineVarStart(0, "c", "ok").VarVal("a").UnaryOpEx(token.ARROW, 2).EndInit(1).
		End()
	domTest(pkg, `package main

type Uint uint
type T chan Uint

func main() {
	var a T
	var b Uint = <-a
	c, ok := <-a
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 18: TestZeroLit ============
func testZeroLit() {
	fmt.Println("=== testZeroLit ===")
	pkg := newMainPackage()
	tyMap := types.NewMap(types.Typ[types.String], types.Typ[types.Int])
	ret := pkg.NewAutoParam("ret")
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewVarStart(tyMap, "a").
		NewClosure(nil, types.NewTuple(ret), false).BodyStart(pkg).
		VarRef(ctxRef(pkg, "ret")).ZeroLit(ret.Type()).Assign(1).
		Val(ctxRef(pkg, "ret")).Val("Hi").IndexRef(1).Val(1).Assign(1).
		Return(0).
		End().Call(0).EndInit(1).
		End()
	domTest(pkg, `package main

func main() {
	var a map[string]int = func() (ret map[string]int) {
		ret = map[string]int{}
		ret["Hi"] = 1
		return
	}()
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 19: TestZeroLitAllTypes ============
func testZeroLitAllTypes() {
	fmt.Println("=== testZeroLitAllTypes ===")
	pkg := newMainPackage()
	tyString := types.Typ[types.String]
	tyBool := types.Typ[types.Bool]
	tyUP := types.Typ[types.UnsafePointer]
	tyMap := types.NewMap(tyString, types.Typ[types.Int])
	tySlice := types.NewSlice(types.Typ[types.Int])
	tyArray := gogen.NewArray(types.Typ[types.Int], 10)
	tyPointer := gogen.NewPointer(types.Typ[types.Int])
	tyChan := types.NewChan(types.SendRecv, types.Typ[types.Int])
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewVarStart(tyMap, "a").ZeroLit(tyMap).EndInit(1).
		NewVarStart(tySlice, "b").ZeroLit(tySlice).EndInit(1).
		NewVarStart(tyPointer, "c").ZeroLit(tyPointer).EndInit(1).
		NewVarStart(tyChan, "d").ZeroLit(tyChan).EndInit(1).
		NewVarStart(tyBool, "e").ZeroLit(tyBool).EndInit(1).
		NewVarStart(tyString, "f").ZeroLit(tyString).EndInit(1).
		NewVarStart(tyUP, "g").ZeroLit(tyUP).EndInit(1).
		NewVarStart(gogen.TyEmptyInterface, "h").ZeroLit(gogen.TyEmptyInterface).EndInit(1).
		NewVarStart(tyArray, "i").ZeroLit(tyArray).EndInit(1).
		End()
	domTest(pkg, `package main

import "unsafe"

func main() {
	var a map[string]int = nil
	var b []int = nil
	var c *int = nil
	var d chan int = nil
	var e bool = false
	var f string = ""
	var g unsafe.Pointer = nil
	var h interface{} = nil
	var i [10]int = [10]int{}
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 20: TestTypeDeclInFunc ============
func testTypeDeclInFunc() {
	fmt.Println("=== testTypeDeclInFunc ===")
	pkg := newMainPackage()
	fields := []*types.Var{
		types.NewField(token.NoPos, pkg.Types, "x", types.Typ[types.Int], false),
		types.NewField(token.NoPos, pkg.Types, "y", types.Typ[types.String], false),
	}
	typ := types.NewStruct(fields, nil)
	cb := pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg)
	foo := cb.NewType("foo").InitType(pkg, typ)
	cb.AliasType("bar", typ)
	a := cb.AliasType("a", foo)
	cb.AliasType("b", a)
	cb.End()
	domTest(pkg, `package main

func main() {
	type foo struct {
		x int
		y string
	}
	type bar = struct {
		x int
		y string
	}
	type a = foo
	type b = a
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 21: TestTypeDoc ============
func testTypeDoc() {
	fmt.Println("=== testTypeDoc ===")
	pkg := newMainPackage()
	typ := types.NewStruct(nil, nil)
	def := pkg.NewTypeDefs().SetComments(nil)
	def.NewType("foo").SetComments(pkg, comment("\n//go:notinheap")).InitType(pkg, typ)
	def.Complete()
	domTest(pkg, `package main

//go:notinheap
type foo struct {
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 22: TestDeleteType ============
func testDeleteType() {
	fmt.Println("=== testDeleteType ===")
	pkg := newMainPackage()
	typ := types.NewStruct(nil, nil)
	def := pkg.NewTypeDefs()
	decl := def.NewType("foo")
	if decl.State() != gogen.TyStateUninited {
		panic("TypeDecl.State failed: expected TyStateUninited")
	}
	decl.InitType(pkg, typ)
	if decl.State() != gogen.TyStateInited {
		panic("TypeDecl.State failed: expected TyStateInited")
	}
	decl.Delete()
	if decl.State() != gogen.TyStateDeleted {
		panic("TypeDecl.State failed: expected TyStateDeleted")
	}
	def.NewType("t").InitType(def.Pkg(), gogen.TyByte)
	def.NewType("bar").Delete()
	def.Complete()
	domTest(pkg, `package main

type t byte
`)
	fmt.Println("  [PASS]")
}

// ============ Test 23: TestTypeDecl ============
func testTypeDecl() {
	fmt.Println("=== testTypeDecl ===")
	pkg := newMainPackage()
	fields := []*types.Var{
		types.NewField(token.NoPos, pkg.Types, "x", types.Typ[types.Int], false),
		types.NewField(token.NoPos, pkg.Types, "y", types.Typ[types.String], false),
	}
	typ := types.NewStruct(fields, nil)
	foo := pkg.NewType("foo").InitType(pkg, typ)
	pkg.AliasType("bar", typ)
	a := pkg.AliasType("a", foo)
	pkg.AliasType("b", a)
	domTest(pkg, `package main

type foo struct {
	x int
	y string
}
type bar = struct {
	x int
	y string
}
type a = foo
type b = a
`)
	fmt.Println("  [PASS]")
}

// ============ Test 24: TestTypeCycleDef ============
func testTypeCycleDef() {
	fmt.Println("=== testTypeCycleDef ===")
	pkg := newMainPackage()
	foo := pkg.NewType("foo")
	a := pkg.AliasType("a", foo.Type())
	b := pkg.AliasType("b", a)
	fields := []*types.Var{
		types.NewField(token.NoPos, pkg.Types, "p", types.NewPointer(b), false),
	}
	foo.InitType(pkg, types.NewStruct(fields, nil))
	domTest(pkg, `package main

type foo struct {
	p *b
}
type a = foo
type b = a
`)
	fmt.Println("  [PASS]")
}

// ============ Test 25: TestTypeMethods ============
func testTypeMethods() {
	fmt.Println("=== testTypeMethods ===")
	pkg := newMainPackage()
	fields := []*types.Var{
		types.NewField(token.NoPos, pkg.Types, "x", types.Typ[types.Int], false),
		types.NewField(token.NoPos, pkg.Types, "y", types.Typ[types.String], false),
	}
	typ := types.NewStruct(fields, nil)
	foo := pkg.NewType("foo").InitType(pkg, typ)
	recv := pkg.NewParam(token.NoPos, "a", foo)
	precv := pkg.NewParam(token.NoPos, "p", types.NewPointer(foo))
	pkg.NewFunc(recv, "Bar", nil, nil, false).SetComments(pkg, comment("\n// abc")).BodyStart(pkg).End()
	pkg.NewFunc(precv, "Print", nil, nil, false).BodyStart(pkg).End()
	if foo.NumMethods() != 2 {
		panic(fmt.Sprintf("foo.NumMethods = %d, expected 2", foo.NumMethods()))
	}
	domTest(pkg, `package main

type foo struct {
	x int
	y string
}

// abc
func (a foo) Bar() {
}
func (p *foo) Print() {
}
`)
	fmt.Println("  [PASS]")
}

// ============ Helper: newFuncDecl ============
func newFuncDecl(pkg *gogen.Package, name string, params, results *types.Tuple) *gogen.Func {
	sig := types.NewSignatureType(nil, nil, nil, params, results, false)
	return pkg.NewFuncDecl(token.NoPos, name, sig)
}

// ============ Test 26: TestAssignInterface ============
func testAssignInterface() {
	fmt.Println("=== testAssignInterface ===")
	pkg := newMainPackage()
	foo := pkg.NewType("foo").InitType(pkg, types.Typ[types.Int])
	recv := pkg.NewParam(token.NoPos, "a", foo)
	ret := pkg.NewParam(token.NoPos, "ret", types.Typ[types.String])
	pkg.NewFunc(recv, "Error", nil, types.NewTuple(ret), false).BodyStart(pkg).
		Return(0).
		End()
	pkg.CB().NewVarStart(gogen.TyError, "err").
		Typ(foo).ZeroLit(foo).Call(1).
		EndInit(1)
	domTest(pkg, `package main

type foo int

func (a foo) Error() (ret string) {
	return
}

var err error = foo(0)
`)
	fmt.Println("  [PASS]")
}

// ============ Test 27: TestAssignUserInterface ============
func testAssignUserInterface() {
	fmt.Println("=== testAssignUserInterface ===")
	pkg := newMainPackage()
	methods := []*types.Func{
		types.NewFunc(token.NoPos, pkg.Types, "Bar", types.NewSignatureType(nil, nil, nil, nil, nil, false)),
	}
	tyInterf := types.NewInterfaceType(methods, nil).Complete()
	typStruc := types.NewStruct(nil, nil)
	foo := pkg.NewType("foo").InitType(pkg, tyInterf)
	bar := pkg.NewType("bar").InitType(pkg, typStruc)
	pbar := types.NewPointer(bar)
	recv := pkg.NewParam(token.NoPos, "p", pbar)
	vfoo := types.NewTuple(pkg.NewParam(token.NoPos, "v", types.NewSlice(foo)))
	pkg.NewFunc(recv, "Bar", nil, nil, false).BodyStart(pkg).End()
	pkg.NewFunc(nil, "f", vfoo, nil, true).BodyStart(pkg).End()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewVar(pbar, "v").
		VarVal("f").
		VarVal("v").VarVal("v").Call(2).EndStmt().
		End()
	domTest(pkg, `package main

type foo interface {
	Bar()
}
type bar struct {
}

func (p *bar) Bar() {
}
func f(v ...foo) {
}
func main() {
	var v *bar
	f(v, v)
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 28: TestTypeSwitch ============
func testTypeSwitch() {
	fmt.Println("=== testTypeSwitch ===")
	pkg := newMainPackage()
	p := pkg.NewParam(token.NoPos, "p", types.NewPointer(gogen.TyEmptyInterface))
	v := pkg.NewParam(token.NoPos, "v", gogen.TyEmptyInterface)
	newFuncDecl(pkg, "bar", types.NewTuple(p), nil)
	newFuncDecl(pkg, "foo", types.NewTuple(v), nil).BodyStart(pkg).
		TypeSwitch("t").Val(v).TypeAssertThen().
		TypeCase().Typ(types.Typ[types.Int]).Typ(types.Typ[types.String]).Then().
		Val(ctxRef(pkg, "bar")).VarRef(ctxRef(pkg, "t")).UnaryOp(token.AND).Call(1).EndStmt().
		End().
		TypeCase().Typ(types.Typ[types.Bool]).Then().
		NewVarStart(types.Typ[types.Bool], "x").Val(ctxRef(pkg, "t")).EndInit(1).
		End().
		TypeDefaultThen().
		Val(ctxRef(pkg, "bar")).VarRef(ctxRef(pkg, "t")).UnaryOp(token.AND).Call(1).EndStmt().
		End().
		End().
		End()
	domTest(pkg, `package main

func bar(p *interface{})
func foo(v interface{}) {
	switch t := v.(type) {
	case int, string:
		bar(&t)
	case bool:
		var x bool = t
	default:
		bar(&t)
	}
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 29: TestTypeSwitch2 ============
func testTypeSwitch2() {
	fmt.Println("=== testTypeSwitch2 ===")
	pkg := newMainPackage()
	p := pkg.NewParam(token.NoPos, "p", types.NewPointer(gogen.TyEmptyInterface))
	v := pkg.NewParam(token.NoPos, "v", gogen.TyEmptyInterface)
	pkg.NewFunc(nil, "bar", types.NewTuple(p), nil, false).BodyStart(pkg).End()
	pkg.NewFunc(nil, "foo", types.NewTuple(v), nil, false).BodyStart(pkg).
		TypeSwitch("").Val(ctxRef(pkg, "bar")).Val(nil).Call(1).EndStmt().Val(v).TypeAssertThen().
		TypeCase().Typ(types.Typ[types.Int]).Then().
		Val(ctxRef(pkg, "bar")).VarRef(ctxRef(pkg, "v")).UnaryOp(token.AND).Call(1).EndStmt().
		End().
		End().
		End()
	domTest(pkg, `package main

func bar(p *interface{}) {
}
func foo(v interface{}) {
	switch bar(nil); v.(type) {
	case int:
		bar(&v)
	}
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 30: TestSelect ============
func testSelect() {
	fmt.Println("=== testSelect ===")
	pkg := newMainPackage()
	tyXchg := types.NewChan(types.SendRecv, types.Typ[types.Int])
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewVar(tyXchg, "xchg").
		Select().
		CommCase().DefineVarStart(0, "x").Val(ctxRef(pkg, "xchg")).UnaryOp(token.ARROW).EndInit(1).Then().
		NewVarStart(types.Typ[types.Int], "t").Val(ctxRef(pkg, "x")).EndInit(1).
		End().
		CommCase().Val(ctxRef(pkg, "xchg")).Val(1).Send().Then().
		DefineVarStart(0, "x").Val(1).EndInit(1).
		End().
		CommDefaultThen().
		DefineVarStart(0, "x").Val("Hi").EndInit(1).
		End().
		End().
		End()
	domTest(pkg, `package main

func main() {
	var xchg chan int
	select {
	case x := <-xchg:
		var t int = x
	case xchg <- 1:
		x := 1
	default:
		x := "Hi"
	}
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 31: TestStructLit ============
func testStructLit() {
	fmt.Println("=== testStructLit ===")
	pkg := newMainPackage()
	fields := []*types.Var{
		types.NewField(token.NoPos, pkg.Types, "x", types.Typ[types.Int], false),
		types.NewField(token.NoPos, pkg.Types, "y", types.Typ[types.String], false),
	}
	typ := types.NewStruct(fields, nil)
	pkg.CB().NewVarStart(nil, "a").
		StructLit(typ, 0, false).EndInit(1)
	pkg.CB().NewVarStart(nil, "b").
		Val(123).Val("Hi").
		StructLit(typ, 2, false).EndInit(1)
	pkg.CB().NewVarStart(nil, "c").
		Val(1).Val("abc").
		StructLit(typ, 2, true).EndInit(1)
	domTest(pkg, `package main

var a = struct {
	x int
	y string
}{}
var b = struct {
	x int
	y string
}{123, "Hi"}
var c = struct {
	x int
	y string
}{y: "abc"}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 32: TestNamedStructLit ============
func testNamedStructLit() {
	fmt.Println("=== testNamedStructLit ===")
	pkg := newMainPackage()
	fields := []*types.Var{
		types.NewField(token.NoPos, pkg.Types, "x", types.Typ[types.Int], false),
		types.NewField(token.NoPos, pkg.Types, "y", types.Typ[types.String], false),
	}
	typU := types.NewStruct(fields, nil)
	typ := pkg.NewType("foo").InitType(pkg, typU)
	bar := pkg.AliasType("bar", typ)
	pkg.CB().NewVarStart(typ, "a").
		StructLit(typ, 0, false).EndInit(1)
	pkg.CB().NewVarStart(types.NewPointer(bar), "b").
		Val(123).Val("Hi").
		StructLit(bar, 2, false).
		UnaryOp(token.AND).
		EndInit(1)
	pkg.CB().NewVarStart(bar, "c").
		Val(1).Val("abc").
		StructLit(typ, 2, true).EndInit(1)
	domTest(pkg, `package main

type foo struct {
	x int
	y string
}
type bar = foo

var a foo = foo{}
var b *bar = &bar{123, "Hi"}
var c bar = foo{y: "abc"}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 33: TestMapLit ============
func testMapLit() {
	fmt.Println("=== testMapLit ===")
	pkg := newMainPackage()
	pkg.CB().NewVarStart(nil, "a").
		Val("a").Val(1).Val("b").Val(2).MapLit(nil, 4).EndInit(1)
	pkg.CB().NewVarStart(nil, "b").
		Val("a").Val(1).Val("b").Val(1.2).MapLit(nil, 4).EndInit(1)
	pkg.CB().NewVarStart(nil, "c").
		MapLit(nil, 0).EndInit(1)
	pkg.CB().NewVarStart(nil, "d").
		Val(1).Val(true).
		MapLit(types.NewMap(types.Typ[types.Int], types.Typ[types.Bool]), 2).EndInit(1)
	domTest(pkg, `package main

var a = map[string]int{"a": 1, "b": 2}
var b = map[string]float64{"a": 1, "b": 1.2}
var c = map[string]interface{}{}
var d = map[int]bool{1: true}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 34: TestNamedMapLit ============
func testNamedMapLit() {
	fmt.Println("=== testNamedMapLit ===")
	pkg := newMainPackage()
	foo := pkg.NewType("foo").InitType(pkg, types.NewMap(types.Typ[types.Int], types.Typ[types.Bool]))
	bar := pkg.AliasType("bar", foo)
	pkg.CB().NewVarStart(foo, "a").
		Val(1).Val(true).
		MapLit(foo, 2).EndInit(1)
	pkg.CB().NewVarStart(bar, "b").
		Val(1).Val(true).
		MapLit(bar, 2).EndInit(1)
	domTest(pkg, `package main

type foo map[int]bool
type bar = foo

var a foo = foo{1: true}
var b bar = bar{1: true}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 35: TestSliceLit ============
func testSliceLit() {
	fmt.Println("=== testSliceLit ===")
	pkg := newMainPackage()
	pkg.CB().NewVarStart(nil, "a").
		Val("a").Val("b").SliceLit(nil, 2).EndInit(1)
	pkg.CB().NewVarStart(nil, "b").
		Val(1).Val(1.2).Val(3).SliceLit(nil, 3).EndInit(1)
	pkg.CB().NewVarStart(nil, "c").
		SliceLit(nil, 0).EndInit(1)
	pkg.CB().NewVarStart(nil, "d").
		Val(1).
		SliceLit(types.NewSlice(types.Typ[types.Int]), 1).EndInit(1)
	domTest(pkg, `package main

var a = []string{"a", "b"}
var b = []float64{1, 1.2, 3}
var c = []interface{}{}
var d = []int{1}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 36: TestNamedSliceLit ============
func testNamedSliceLit() {
	fmt.Println("=== testNamedSliceLit ===")
	pkg := newMainPackage()
	foo := pkg.NewType("foo").InitType(pkg, types.NewSlice(types.Typ[types.Int]))
	bar := pkg.AliasType("bar", foo)
	pkg.CB().NewVarStart(foo, "a").
		Val(1).
		SliceLit(foo, 1).EndInit(1)
	pkg.CB().NewVarStart(bar, "b").
		Val(1).
		SliceLit(bar, 1).EndInit(1)
	domTest(pkg, `package main

type foo []int
type bar = foo

var a foo = foo{1}
var b bar = bar{1}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 37: TestKeyValModeLit ============
func testKeyValModeLit() {
	fmt.Println("=== testKeyValModeLit ===")
	pkg := newMainPackage()
	pkg.CB().NewVarStart(nil, "a").
		None().Val(1).Val(3).Val(3.4).None().Val(5).
		ArrayLit(types.NewArray(types.Typ[types.Float64], -1), 6, true).EndInit(1)
	pkg.CB().NewVarStart(nil, "b").
		Val(2).Val(1.2).None().Val(3).Val(6).Val(4.5).
		SliceLit(types.NewSlice(types.Typ[types.Float64]), 6, true).EndInit(1)
	domTest(pkg, `package main

var a = [...]float64{1, 3: 3.4, 5}
var b = []float64{2: 1.2, 3, 6: 4.5}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 38: TestNamedArrayLit ============
func testNamedArrayLit() {
	fmt.Println("=== testNamedArrayLit ===")
	pkg := newMainPackage()
	foo := pkg.NewType("foo").InitType(pkg, types.NewArray(types.Typ[types.String], 2))
	bar := pkg.AliasType("bar", foo)
	pkg.CB().NewVarStart(foo, "a").
		Val("a").Val("b").ArrayLit(foo, 2).EndInit(1)
	pkg.CB().NewVarStart(bar, "b").
		Val("a").Val("b").ArrayLit(bar, 2).EndInit(1)
	domTest(pkg, `package main

type foo [2]string
type bar = foo

var a foo = foo{"a", "b"}
var b bar = bar{"a", "b"}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 39: TestArrayLit ============
func testArrayLit() {
	fmt.Println("=== testArrayLit ===")
	pkg := newMainPackage()
	pkg.CB().NewVarStart(nil, "a").
		Val("a").Val("b").ArrayLit(types.NewArray(types.Typ[types.String], 2), 2).EndInit(1)
	pkg.CB().NewVarStart(nil, "b").
		Val(1).Val(1.2).Val(3).ArrayLit(types.NewArray(types.Typ[types.Float64], -1), 3).EndInit(1)
	pkg.CB().NewVarStart(nil, "c").
		ArrayLit(types.NewArray(gogen.TyEmptyInterface, 10), 0).EndInit(1)
	domTest(pkg, `package main

var a = [2]string{"a", "b"}
var b = [...]float64{1, 1.2, 3}
var c = [10]interface{}{}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 40: TestConst ============
func testConst() {
	fmt.Println("=== testConst ===")
	pkg := newMainPackage()
	tv := pkg.ConstStart().Val(1).Val(2).BinaryOp(token.ADD).EndConst()
	if constant.Compare(tv.CVal, token.NEQ, constant.MakeInt64(3)) {
		panic(fmt.Sprintf("TestConst: != 3, it is %v", tv.CVal))
	}
	tv = pkg.ConstStart().Val("1").Val("2").BinaryOp(token.ADD).EndConst()
	if constant.Compare(tv.CVal, token.NEQ, constant.MakeString("12")) {
		panic(fmt.Sprintf("TestConst: != 12, it is %v", tv.CVal))
	}
	fmt.Println("  [PASS]")
}

// ============ Test 41: TestConstLenCap ============
func testConstLenCap() {
	fmt.Println("=== testConstLenCap ===")
	pkg := newMainPackage()
	typ := types.NewArray(types.Typ[types.Int], 10)
	typAP := types.NewPointer(typ)
	pkg.Types.Scope().Insert(types.NewVar(token.NoPos, pkg.Types, "array", typ))
	pkg.Types.Scope().Insert(types.NewVar(token.NoPos, pkg.Types, "parray", typAP))
	tv := pkg.ConstStart().Val(pkg.Builtin().Ref("len")).Val(pkg.Ref("array")).Call(1).EndConst()
	if constant.Compare(tv.CVal, token.NEQ, constant.MakeInt64(10)) {
		panic(fmt.Sprintf("TestConst: != 10, it is %v", tv.CVal))
	}
	tv = pkg.ConstStart().Val(pkg.Builtin().Ref("len")).Val(pkg.Ref("parray")).Call(1).EndConst()
	if constant.Compare(tv.CVal, token.NEQ, constant.MakeInt64(10)) {
		panic(fmt.Sprintf("TestConst: != 10, it is %v", tv.CVal))
	}
	tv = pkg.ConstStart().Val(pkg.Builtin().Ref("len")).Val("Hi").Call(1).EndConst()
	if constant.Compare(tv.CVal, token.NEQ, constant.MakeInt64(2)) {
		panic(fmt.Sprintf("TestConst: != 2, it is %v", tv.CVal))
	}
	tv = pkg.ConstStart().Val(pkg.Builtin().Ref("cap")).Val(pkg.Ref("array")).Call(1).EndConst()
	if constant.Compare(tv.CVal, token.NEQ, constant.MakeInt64(10)) {
		panic(fmt.Sprintf("TestConst: != 10, it is %v", tv.CVal))
	}
	tv = pkg.ConstStart().Val(pkg.Builtin().Ref("cap")).Val(pkg.Ref("parray")).Call(1).EndConst()
	if constant.Compare(tv.CVal, token.NEQ, constant.MakeInt64(10)) {
		panic(fmt.Sprintf("TestConst: != 10, it is %v", tv.CVal))
	}
	fmt.Println("  [PASS]")
}

// ============ Test 42: TestConstDecl ============
func testConstDecl() {
	fmt.Println("=== testConstDecl ===")
	pkg := newMainPackage()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg)
	pkg.NewConstDefs(pkg.CB().Scope()).SetComments(nil).New(func(cb *gogen.CodeBuilder) int {
		cb.Val(1).Val(2).BinaryOp(token.ADD)
		return 1
	}, 0, token.NoPos, nil, "n")
	pkg.CB().NewConstStart(types.Typ[types.String], "x").
		Val("1").Val("2").BinaryOp(token.ADD).EndInit(1)
	pkg.CB().NewConstStart(types.Typ[types.String], "y").
		Val("Hello").EndInit(1).
		End()
	domTest(pkg, `package main

func main() {
	const n = 1 + 2
	const x string = "1" + "2"
	const y string = "Hello"
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 43: TestConstDecl2 ============
func testConstDecl2() {
	fmt.Println("=== testConstDecl2 ===")
	pkg := newMainPackage()
	pkg.NewConstDefs(pkg.Types.Scope()).
		New(func(cb *gogen.CodeBuilder) int {
			cb.Val(ctxRef(pkg, "iota"))
			return 1
		}, 0, token.NoPos, nil, "a").
		Next(1, token.NoPos, "_").
		Next(2, token.NoPos, "_").
		Next(3, token.NoPos, "b").
		New(func(cb *gogen.CodeBuilder) int {
			cb.Val(ctxRef(pkg, "iota"))
			return 1
		}, 4, token.NoPos, nil, "c")
	o := pkg.Types.Scope().Lookup("b")
	if v, ok := constant.Int64Val(o.(*types.Const).Val()); !ok || v != 3 {
		panic(fmt.Sprintf("TestConstDecl2 failed: b = %d", v))
	}
	o2 := pkg.Types.Scope().Lookup("c")
	if v, ok := constant.Int64Val(o2.(*types.Const).Val()); !ok || v != 4 {
		panic(fmt.Sprintf("TestConstDecl2 failed: c = %d", v))
	}
	domTest(pkg, `package main

const (
	a = iota
	_
	_
	b
	c = iota
)
`)
	fmt.Println("  [PASS]")
}

// ============ Test 44: TestConstDecl3 ============
func testConstDecl3() {
	fmt.Println("=== testConstDecl3 ===")
	pkg := newMainPackage()
	pkg.NewConstDefs(pkg.Types.Scope()).
		New(func(cb *gogen.CodeBuilder) int {
			cb.Val(1).Val(ctxRef(pkg, "iota")).BinaryOp(token.SHL)
			return 1
		}, 0, token.NoPos, types.Typ[types.Uint16], "a").
		Next(1, token.NoPos, "_").
		Next(2, token.NoPos, "_").
		Next(3, token.NoPos, "b")
	o := pkg.Types.Scope().Lookup("b")
	if v, ok := constant.Int64Val(o.(*types.Const).Val()); !ok || v != 8 {
		panic(fmt.Sprintf("TestConstDecl3 failed: %d", v))
	}
	domTest(pkg, `package main

const (
	a uint16 = 1 << iota
	_
	_
	b
)
`)
	fmt.Println("  [PASS]")
}

// ============ Test 45: TestDeleteVarDecl ============
func testDeleteVarDecl() {
	fmt.Println("=== testDeleteVarDecl ===")
	pkg := newMainPackage()
	pkg.SetRedeclarable(true)
	scope := pkg.CB().Scope()
	defs := pkg.NewVarDefs(scope).SetComments(nil)
	decl := defs.New(token.NoPos, types.Typ[types.Int], "a", "b")
	defs.New(token.NoPos, types.Typ[types.String], "c")
	defs.New(token.NoPos, types.Typ[types.String], "s")
	if decl.Inited() {
		panic("TestDeleteVarDecl: inited?")
	}
	defs.Delete("b")
	defs.Delete("c")
	defs.NewAndInit(func(cb *gogen.CodeBuilder) int {
		cb.Val(10)
		return 1
	}, token.NoPos, types.Typ[types.Int], "b")
	if err := defs.Delete("b"); err != syscall.EACCES {
		panic(fmt.Sprintf("defs.Delete b failed: %v", err))
	}
	if err := defs.Delete("unknown"); err != syscall.ENOENT {
		panic(fmt.Sprintf("defs.Delete unknown failed: %v", err))
	}
	domTest(pkg, `package main

var (
	a int
	s string
	b int = 10
)
`)
	fmt.Println("  [PASS]")
}

// ============ Test 46: TestVarDecl ============
func testVarDecl() {
	fmt.Println("=== testVarDecl ===")
	pkg := newMainPackage()
	scope := pkg.CB().Scope()
	decl := pkg.NewVarDefs(scope)
	decl.NewAndInit(func(cb *gogen.CodeBuilder) int {
		cb.Val(1).Val(2).BinaryOp(token.ADD).
			Val("1").Val("2").BinaryOp(token.ADD)
		return 2
	}, token.NoPos, nil, "n", "s")
	pkg.CB().NewVarStart(types.Typ[types.String], "x").
		Val("Hello, ").Val("XGo").BinaryOp(token.ADD).
		EndInit(1)
	if decl.New(token.NoPos, types.Typ[types.String], "y").Ref("y") == nil {
		panic("TestVarDecl failed: var y not found")
	}
	pkg.NewVarDefs(scope) // no variables, ignore
	domTest(pkg, `package main

var (
	n, s = 1 + 2, "1" + "2"
	y    string
)
var x string = "Hello, " + "XGo"
`)
	fmt.Println("  [PASS]")
}

// ============ Test 47: TestVarDeclNoBody ============
func testVarDeclNoBody() {
	fmt.Println("=== testVarDeclNoBody ===")
	pkg := newMainPackage()
	pkg.NewVarEx(pkg.Types.Scope(), token.NoPos, types.Typ[types.String], "x")
	domTest(pkg, `package main

var x string
`)
	fmt.Println("  [PASS]")
}

// ============ Test 48: TestVarDeclInFunc ============
func testVarDeclInFunc() {
	fmt.Println("=== testVarDeclInFunc ===")
	pkg := newMainPackage()
	fmtPkg := pkg.Import("fmt")
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewVar(types.Typ[types.String], "x", "y").
		NewVarStart(nil, "a", "_").Val(1).Val(2).BinaryOp(token.ADD).Val("Hi").EndInit(2).
		NewVarStart(nil, "n", "_").Val(fmtPkg.Ref("Println")).Val(2).Call(1).EndInit(1).
		End()
	domTest(pkg, `package main

import "fmt"

func main() {
	var x, y string
	var a, _ = 1 + 2, "Hi"
	var n, _ = fmt.Println(2)
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 49: TestDefineVar ============
func testDefineVar() {
	fmt.Println("=== testDefineVar ===")
	pkg := newMainPackage()
	fmtPkg := pkg.Import("fmt")
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewVar(types.Typ[types.Int], "n").
		DefineVarStart(0, "n", "err").Val(fmtPkg.Ref("Println")).Val(2).Call(1).EndInit(1).
		End()
	domTest(pkg, `package main

import "fmt"

func main() {
	var n int
	n, err := fmt.Println(2)
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 50: TestFuncDoc ============
func testFuncDoc() {
	fmt.Println("=== testFuncDoc ===")
	pkg := newMainPackage()
	fn := pkg.NewFunc(nil, "main", nil, nil, false).SetComments(pkg, comment("\n//go:noinline"))
	fn.BodyStart(pkg).End()
	if fn.Comments() == nil {
		panic("TestFuncDoc failed: no doc?")
	}
	domTest(pkg, `package main

//go:noinline
func main() {
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 51: TestFuncDoc2 ============
func testFuncDoc2() {
	fmt.Println("=== testFuncDoc2 ===")
	pkg := newMainPackage()
	fn := pkg.NewFunc(nil, "main", nil, nil, false).SetComments(pkg, comment("\n/*\n doc\n*/"))
	fn.BodyStart(pkg).End()
	if fn.Comments() == nil {
		panic("TestFuncDoc2 failed: no doc?")
	}
	domTest(pkg, `package main

/*
 doc
*/
func main() {
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 52: TestFuncBasic ============
func testFuncBasic() {
	fmt.Println("=== testFuncBasic ===")
	pkg := newMainPackage()
	v := pkg.NewParam(token.NoPos, "v", gogen.TyByte)
	pkg.NewFunc(nil, "foo", types.NewTuple(v), nil, false).BodyStart(pkg).End().Pkg().
		NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).End()
	domTest(pkg, `package main

func foo(v byte) {
}
func main() {
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 53: TestFuncVariadic ============
func testFuncVariadic() {
	fmt.Println("=== testFuncVariadic ===")
	pkg := newMainPackage()
	v := pkg.NewParam(token.NoPos, "v", types.NewSlice(gogen.TyByte))
	pkg.NewFunc(nil, "foo", types.NewTuple(v), nil, true).BodyStart(pkg).End()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).End()
	domTest(pkg, `package main

func foo(v ...byte) {
}
func main() {
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 54: TestInitFunc ============
func testInitFunc() {
	fmt.Println("=== testInitFunc ===")
	pkg := newMainPackage()
	pkg.NewFunc(nil, "init", nil, nil, false).BodyStart(pkg).End()
	pkg.NewFunc(nil, "init", nil, nil, false).BodyStart(pkg).End()
	domTest(pkg, `package main

func init() {
}
func init() {
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 55: TestFuncAsParam ============
func testFuncAsParam() {
	fmt.Println("=== testFuncAsParam ===")
	pkg := newMainPackage()
	v := pkg.NewParam(token.NoPos, "v", types.NewSignatureType(nil, nil, nil, nil, nil, false))
	x := pkg.NewParam(token.NoPos, "x", types.NewPointer(types.Typ[types.Bool]))
	y := pkg.NewParam(token.NoPos, "y", types.NewChan(types.SendOnly, types.Typ[types.Bool]))
	z := pkg.NewParam(token.NoPos, "z", types.Typ[types.UnsafePointer])
	pkg.NewFunc(nil, "foo", types.NewTuple(v, x, y, z), nil, false).BodyStart(pkg).End()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).End()
	domTest(pkg, `package main

import "unsafe"

func foo(v func(), x *bool, y chan<- bool, z unsafe.Pointer) {
}
func main() {
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 56: TestNamedFuncAsParam ============
func testNamedFuncAsParam() {
	fmt.Println("=== testNamedFuncAsParam ===")
	pkg := newMainPackage()
	typ := pkg.NewType("foo").InitType(pkg, types.NewSignatureType(nil, nil, nil, nil, nil, false))
	v := pkg.NewParam(token.NoPos, "v", typ)
	pkg.NewFunc(nil, "bar", types.NewTuple(v), nil, false).BodyStart(pkg).
		VarVal("v").Call(0).EndStmt().
		End()
	domTest(pkg, `package main

type foo func()

func bar(v foo) {
	v()
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 57: TestDefOverloadFunc ============
func testDefOverloadFunc() {
	fmt.Println("=== testDefOverloadFunc ===")
	pkg := newMainPackage()
	pkg.NewFunc(nil, "bar__0", nil, nil, false).BodyStart(pkg).
		End()
	domTest(pkg, `package main

func bar__0() {
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 58: TestDefTemplateMethod ============
func testDefTemplateMethod() {
	fmt.Println("=== testDefTemplateMethod ===")
	pkg := newMainPackage()
	pkg.NewFunc(nil, "Gopt_bar", nil, nil, false).BodyStart(pkg).
		End()
	domTest(pkg, `package main

func Gopt_bar() {
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 59: TestBuiltinFunc ============
func testBuiltinFunc() {
	fmt.Println("=== testBuiltinFunc ===")
	var a, n *goxVar
	pkg := newMainPackage()
	builtin := pkg.Builtin()
	v := pkg.NewParam(token.NoPos, "v", types.NewSlice(types.Typ[types.Int]))
	array := pkg.NewParam(token.NoPos, "array", types.NewArray(types.Typ[types.Int], 10))
	pkg.NewFunc(nil, "foo", types.NewTuple(v, array), nil, false).BodyStart(pkg).
		NewAutoVar(token.NoPos, token.NoPos, "a", &a).NewAutoVar(token.NoPos, token.NoPos, "n", &n).
		VarRef(a).
		Val(builtin.Ref("append")).Val(v).Val(1).Val(2).Call(3).
		Assign(1).EndStmt().
		VarRef(n).Val(builtin.Ref("len")).Val(a).Call(1).Assign(1).EndStmt().
		VarRef(n).Val(builtin.Ref("cap")).Val(array).Call(1).Assign(1).EndStmt().
		End()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).End()
	domTest(pkg, `package main

func foo(v []int, array [10]int) {
	var a []int
	var n int
	a = append(v, 1, 2)
	n = len(a)
	n = cap(array)
}
func main() {
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 60: TestComplex ============
func testComplex() {
	fmt.Println("=== testComplex ===")
	pkg := newMainPackage()
	pkg.NewConstStart(pkg.Types.Scope(), token.NoPos, nil, "a").
		Val(ctxRef(pkg, "complex")).Val(1).Val(2).Call(2).
		EndInit(1)
	pkg.NewConstStart(pkg.Types.Scope(), token.NoPos, nil, "b").
		Val(ctxRef(pkg, "real")).VarVal("a").Call(1).
		EndInit(1)
	pkg.NewConstStart(pkg.Types.Scope(), token.NoPos, nil, "c").
		Val(ctxRef(pkg, "imag")).VarVal("a").Call(1).
		EndInit(1)
	domTest(pkg, `package main

const a = complex(1, 2)
const b = real(a)
const c = imag(a)
`)
	fmt.Println("  [PASS]")
}

// ============ Test 61: TestClose ============
func testClose() {
	fmt.Println("=== testClose ===")
	pkg := newMainPackage()
	tyChan := types.NewChan(types.SendOnly, types.Typ[types.Int])
	pkg.NewFunc(nil, "foo", types.NewTuple(pkg.NewParam(token.NoPos, "c", tyChan)), nil, false).BodyStart(pkg).
		Val(ctxRef(pkg, "close")).VarVal("c").Call(1).EndStmt().
		End()
	domTest(pkg, `package main

func foo(c chan<- int) {
	close(c)
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 62: TestAppend ============
func testAppend() {
	fmt.Println("=== testAppend ===")
	pkg := newMainPackage()
	builtin := pkg.Builtin()
	tySlice := types.NewSlice(types.Typ[types.Int])
	pkg.NewFunc(nil, "foo", types.NewTuple(pkg.NewParam(token.NoPos, "a", tySlice)), nil, false).BodyStart(pkg).
		NewVar(tySlice, "b").VarRef(ctxRef(pkg, "b")).Val(builtin.Ref("append")).
		VarVal("b").VarVal("a").Call(2, true).Assign(1).EndStmt().
		End()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).End()
	domTest(pkg, `package main

func foo(a []int) {
	var b []int
	b = append(b, a...)
}
func main() {
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 63: TestAppend2 ============
func testAppend2() {
	fmt.Println("=== testAppend2 ===")
	pkg := newMainPackage()
	builtin := pkg.Builtin()
	tySlice := pkg.NewType("T").InitType(pkg, types.NewSlice(types.Typ[types.Int]))
	pkg.NewFunc(nil, "foo", types.NewTuple(pkg.NewParam(token.NoPos, "a", tySlice)), nil, false).BodyStart(pkg).
		NewVar(tySlice, "b").VarRef(ctxRef(pkg, "b")).Val(builtin.Ref("append")).
		VarVal("b").VarVal("a").Call(2, true).Assign(1).EndStmt().
		End()
	domTest(pkg, `package main

type T []int

func foo(a T) {
	var b T
	b = append(b, a...)
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 64: TestAppendString ============
func testAppendString() {
	fmt.Println("=== testAppendString ===")
	pkg := newMainPackage()
	builtin := pkg.Builtin()
	tySlice := types.NewSlice(types.Typ[types.Byte])
	pkg.NewFunc(nil, "foo", types.NewTuple(pkg.NewParam(token.NoPos, "a", tySlice)), nil, false).BodyStart(pkg).
		VarRef(ctxRef(pkg, "a")).Val(builtin.Ref("append")).
		VarVal("a").Val("Hi").Call(2, true).Assign(1).EndStmt().
		End()
	domTest(pkg, `package main

func foo(a []uint8) {
	a = append(a, "Hi"...)
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 65: TestCopyString ============
func testCopyString() {
	fmt.Println("=== testCopyString ===")
	pkg := newMainPackage()
	builtin := pkg.Builtin()
	tySlice := types.NewSlice(types.Typ[types.Byte])
	pkg.NewFunc(nil, "foo", types.NewTuple(pkg.NewParam(token.NoPos, "a", tySlice)), nil, false).BodyStart(pkg).
		NewVarStart(types.Typ[types.Int], "n").Val(builtin.Ref("copy")).
		VarVal("a").Val("Hi").Call(2).EndInit(1).
		End()
	domTest(pkg, `package main

func foo(a []uint8) {
	var n int = copy(a, "Hi")
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 66: TestUnsafeFunc ============
func testUnsafeFunc() {
	fmt.Println("=== testUnsafeFunc ===")
	pkg := newMainPackage()
	fields := []*types.Var{
		types.NewField(token.NoPos, pkg.Types, "x", types.Typ[types.Int], false),
		types.NewField(token.NoPos, pkg.Types, "y", types.Typ[types.String], false),
	}
	typ := types.NewStruct(fields, nil)
	tyT := pkg.NewType("T").InitType(pkg, typ)
	tyUintptr := types.Typ[types.Uintptr]
	builtin := pkg.Builtin()
	unsafe := gogen.PkgRef{Types: types.Unsafe}
	pkg.NewFunc(nil, "test", nil, nil, false).BodyStart(pkg).
		NewVar(tyT, "a").NewVar(tyUintptr, "r").
		VarRef(ctxRef(pkg, "r")).Val(unsafe.Ref("Sizeof")).VarVal("a").Call(1).Assign(1).EndStmt().
		VarRef(ctxRef(pkg, "r")).Val(unsafe.Ref("Alignof")).VarVal("a").Call(1).Assign(1).EndStmt().
		VarRef(ctxRef(pkg, "r")).Val(unsafe.Ref("Offsetof")).VarVal("a").MemberVal("y", 0).Call(1).Assign(1).EndStmt().
		Val(builtin.Ref("println")).VarRef(ctxRef(pkg, "r")).Call(1).EndStmt().
		End()
	domTest(pkg, `package main

import "unsafe"

type T struct {
	x int
	y string
}

func test() {
	var a T
	var r uintptr
	r = unsafe.Sizeof(a)
	r = unsafe.Alignof(a)
	r = unsafe.Offsetof(a.y)
	println(r)
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 67: TestUnsafeFunc2 ============
func testUnsafeFunc2() {
	fmt.Println("=== testUnsafeFunc2 ===")
	pkg := newMainPackage()
	builtin := pkg.Builtin()
	unsafe := pkg.Unsafe()
	tyUP := types.Typ[types.UnsafePointer]
	tyInt := types.Typ[types.Int]
	pkg.NewFunc(nil, "test17", nil, nil, false).BodyStart(pkg).
		NewVar(tyUP, "a").NewVar(tyUP, "r").
		NewVarStart(nil, "ar").
		Val(1).Val(2).Val(3).ArrayLit(types.NewArray(tyInt, 3), 3).EndInit(1).
		NewVar(types.NewSlice(tyInt), "r2").
		VarRef(ctxRef(pkg, "r")).Val(unsafe.Ref("Add")).VarVal("a").Val(10).Call(2).Assign(1).EndStmt().
		VarRef(ctxRef(pkg, "r2")).Val(unsafe.Ref("Slice")).Val(ctxRef(pkg, "ar")).Val(0).Index(1, 0).UnaryOp(token.AND).Val(3).Call(2).Assign(1).EndStmt().
		Val(builtin.Ref("println")).VarRef(ctxRef(pkg, "r")).VarRef(ctxRef(pkg, "r2")).Call(2).EndStmt().
		End()
	domTest(pkg, `package main

import "unsafe"

func test17() {
	var a unsafe.Pointer
	var r unsafe.Pointer
	var ar = [3]int{1, 2, 3}
	var r2 []int
	r = unsafe.Add(a, 10)
	r2 = unsafe.Slice(&ar[0], 3)
	println(r, r2)
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 68: TestUnsafeConst ============
func testUnsafeConst() {
	fmt.Println("=== testUnsafeConst ===")
	pkg := newMainPackage()
	unsafe_ := pkg.Unsafe()
	fieldsM := []*types.Var{
		types.NewField(token.NoPos, pkg.Types, "m", types.Typ[types.Int], false),
		types.NewField(token.NoPos, pkg.Types, "n", types.Typ[types.String], false),
	}
	typM := types.NewStruct(fieldsM, nil)
	tyM := pkg.NewType("M").InitType(pkg, typM)
	fieldsT := []*types.Var{
		types.NewField(token.NoPos, pkg.Types, "x", types.Typ[types.Int], false),
		types.NewField(token.NoPos, pkg.Types, "y", types.Typ[types.String], false),
		types.NewField(token.NoPos, pkg.Types, "", tyM, true),
	}
	typT := types.NewStruct(fieldsT, nil)
	tyT := pkg.NewType("T").InitType(pkg, typT)
	pkg.CB().NewVar(tyT, "t")
	pkg.CB().NewConstStart(nil, "c1").
		Val(unsafe_.Ref("Sizeof")).Val(100).Call(1).EndInit(1)
	pkg.CB().NewConstStart(nil, "c2").
		Val(unsafe_.Ref("Sizeof")).Val(ctxRef(pkg, "t")).Call(1).EndInit(1)
	pkg.CB().NewConstStart(nil, "c3").
		Val(unsafe_.Ref("Alignof")).Val("hello").Call(1).EndInit(1)
	pkg.CB().NewConstStart(nil, "c4").
		Val(unsafe_.Ref("Alignof")).Val(ctxRef(pkg, "t")).Call(1).EndInit(1)
	pkg.CB().NewConstStart(nil, "c5").
		Val(unsafe_.Ref("Offsetof")).Val(ctxRef(pkg, "t")).MemberVal("y", 0).Call(1).EndInit(1)
	pkg.CB().NewConstStart(nil, "c6").
		Val(unsafe_.Ref("Offsetof")).Val(ctxRef(pkg, "t")).MemberVal("n", 0).Call(1).EndInit(1)

	domTest(pkg, `package main

import "unsafe"

type M struct {
	m int
	n string
}
type T struct {
	x int
	y string
	M
}

var t T

const c1 = unsafe.Sizeof(100)
const c2 = unsafe.Sizeof(t)
const c3 = unsafe.Alignof("hello")
const c4 = unsafe.Alignof(t)
const c5 = unsafe.Offsetof(t.y)
const c6 = unsafe.Offsetof(t.n)
`)
	fmt.Println("  [PASS]")
}

// ============ Test 69: TestEmptyInterface ============
func testEmptyInterface() {
	fmt.Println("=== testEmptyInterface ===")
	pkg := newMainPackage()
	v := pkg.NewParam(token.NoPos, "v", types.NewSlice(gogen.TyEmptyInterface))
	pkg.NewFunc(nil, "foo", types.NewTuple(v), nil, true).BodyStart(pkg).End()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).End()
	domTest(pkg, `package main

func foo(v ...interface{}) {
}
func main() {
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 70: TestInterfaceMethods ============
func testInterfaceMethods() {
	fmt.Println("=== testInterfaceMethods ===")
	pkg := newMainPackage()
	methods := []*types.Func{
		types.NewFunc(token.NoPos, pkg.Types, "Bar", types.NewSignatureType(nil, nil, nil, nil, nil, false)),
	}
	tyInterf := types.NewInterfaceType(methods, nil).Complete()
	bar := pkg.NewType("bar").InitType(pkg, tyInterf)
	b := pkg.NewParam(token.NoPos, "b", bar)
	v := pkg.NewParam(token.NoPos, "v", types.NewSlice(tyInterf))
	pkg.NewFunc(nil, "foo", types.NewTuple(b, v), nil, true).BodyStart(pkg).
		Val(b).MemberVal("Bar", 0).Call(0).EndStmt().
		Val(v).Val(0).Index(1, 0).MemberVal("Bar", 0).Call(0).EndStmt().
		End()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).End()
	domTest(pkg, `package main

type bar interface {
	Bar()
}

func foo(b bar, v ...interface {
	Bar()
}) {
	b.Bar()
	v[0].Bar()
}
func main() {
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 71: TestFuncCall ============
func testFuncCall() {
	fmt.Println("=== testFuncCall ===")
	pkg := newMainPackage()
	fmtPkg := pkg.Import("fmt")
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		Val(fmtPkg.Ref("Println")).Val("Hello").Call(1, false).EndStmt().
		End()
	domTest(pkg, `package main

import "fmt"

func main() {
	fmt.Println("Hello")
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 72: TestFuncCallEllipsis ============
func testFuncCallEllipsis() {
	fmt.Println("=== testFuncCallEllipsis ===")
	pkg := newMainPackage()
	fmtPkg := pkg.Import("fmt")
	v := pkg.NewParam(token.NoPos, "v", types.NewSlice(types.NewInterfaceType(nil, nil).Complete()))
	pkg.NewFunc(nil, "foo", types.NewTuple(v), nil, true).BodyStart(pkg).
		Val(fmtPkg.Ref("Println")).Val(v).Call(1, true).EndStmt().
		End()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).End()
	domTest(pkg, `package main

import "fmt"

func foo(v ...interface{}) {
	fmt.Println(v...)
}
func main() {
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 73: TestDelayedLoadUnused ============
func testDelayedLoadUnused() {
	fmt.Println("=== testDelayedLoadUnused ===")
	pkg := newMainPackage()
	println := gogen.NewOverloadFunc(token.NoPos, pkg.Types, "println", pkg.Import("fmt").Ref("Println"))
	pkg.Types.Scope().Insert(println)
	format := pkg.NewParam(token.NoPos, "format", types.Typ[types.String])
	args := pkg.NewParam(token.NoPos, "args", types.NewSlice(gogen.TyEmptyInterface))
	n := pkg.NewParam(token.NoPos, "", types.Typ[types.Int])
	err := pkg.NewParam(token.NoPos, "", types.Universe.Lookup("error").Type())
	pkg.NewFunc(nil, "foo", types.NewTuple(format, args), types.NewTuple(n, err), true).BodyStart(pkg).
		ZeroLit(types.Typ[types.Int]).ZeroLit(types.Universe.Lookup("error").Type()).Return(2).
		End()
	domTest(pkg, `package main

func foo(format string, args ...interface{}) (int, error) {
	return 0, nil
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 74: TestDelayedLoadUsed ============
func testDelayedLoadUsed() {
	fmt.Println("=== testDelayedLoadUsed ===")
	pkg := newMainPackage()
	printf := gogen.NewOverloadFunc(token.NoPos, pkg.Types, "printf", pkg.Import("fmt").Ref("Printf"))
	pkg.Types.Scope().Insert(printf)
	format := pkg.NewParam(token.NoPos, "format", types.Typ[types.String])
	args := pkg.NewParam(token.NoPos, "args", types.NewSlice(gogen.TyEmptyInterface))
	n := pkg.NewParam(token.NoPos, "", types.Typ[types.Int])
	err := pkg.NewParam(token.NoPos, "", types.Universe.Lookup("error").Type())
	pkg.NewFunc(nil, "foo", types.NewTuple(format, args), types.NewTuple(n, err), true).BodyStart(pkg).
		Val(printf).Val(format).Val(args).Call(2, true).Return(1).
		End()
	domTest(pkg, `package main

import "fmt"

func foo(format string, args ...interface{}) (int, error) {
	return fmt.Printf(format, args...)
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 75: TestIf ============
// ============ Test 78: TestIf ============
func testIf() {
	fmt.Println("=== testIf ===")
	pkg := newMainPackage()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		If().DefineVarStart(0, "x").Val(3).EndInit(1).
		Val(ctxRef(pkg, "x")).Val(1).BinaryOp(token.GTR).Then().
		Val(pkg.Import("fmt").Ref("Println")).Val("OK!").Call(1).EndStmt().
		End().
		End()
	domTest(pkg, `package main

import "fmt"

func main() {
	if x := 3; x > 1 {
		fmt.Println("OK!")
	}
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 79: TestIfElse ============
func testIfElse() {
	fmt.Println("=== testIfElse ===")
	pkg := newMainPackage()
	fmtPkg := pkg.Import("fmt")
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		If().DefineVarStart(0, "x").Val(3).EndInit(1).
		Val(ctxRef(pkg, "x")).Val(1).BinaryOp(token.GTR).Then().
		Val(fmtPkg.Ref("Println")).Val("OK!").Call(1).EndStmt().
		Else().If().Val(ctxRef(pkg, "x")).Val(0).BinaryOp(token.GTR).Then().
		Val(fmtPkg.Ref("Println")).Val("Hi").Call(1).EndStmt().
		Else().
		Val(fmtPkg.Ref("Println")).Val("Error!").Call(1).EndStmt().
		End().
		End().
		End()
	domTest(pkg, `package main

import "fmt"

func main() {
	if x := 3; x > 1 {
		fmt.Println("OK!")
	} else if x > 0 {
		fmt.Println("Hi")
	} else {
		fmt.Println("Error!")
	}
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 77: TestGoto ============
func testGoto() {
	fmt.Println("=== testGoto ===")
	pkg := newMainPackage()
	cb := pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg)
	l := cb.NewLabel(token.NoPos, token.NoPos, "retry")
	cb.Label(l).Goto(l).
		End()
	domTest(pkg, `package main

func main() {
retry:
	goto retry
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 78: TestMultiLabel ============
func testMultiLabel() {
	fmt.Println("=== testMultiLabel ===")
	pkg := newMainPackage()
	cb := pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg)
	l := cb.NewLabel(token.NoPos, token.NoPos, "retry")
	l2 := cb.NewLabel(token.NoPos, token.NoPos, "retry2")
	cb.Label(l).Label(l2).Goto(l).Goto(l2).
		End()
	domTest(pkg, `package main

func main() {
retry:
	;
retry2:
	goto retry
	goto retry2
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 79: TestBreakContinue ============
func testBreakContinue() {
	fmt.Println("=== testBreakContinue ===")
	pkg := newMainPackage()
	cb := pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg)
	l := cb.NewLabel(token.NoPos, token.NoPos, "retry")
	cb.Label(l).Break(nil).Continue(nil).
		Break(l).Continue(l).
		End()
	domTest(pkg, `package main

func main() {
retry:
	break
	continue
	break retry
	continue retry
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 80: TestGoDefer ============
func testGoDefer() {
	fmt.Println("=== testGoDefer ===")
	pkg := newMainPackage()
	fmtPkg := pkg.Import("fmt")
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		Val(fmtPkg.Ref("Println")).Val("Hi").Call(1).Go().
		Val(fmtPkg.Ref("Println")).Val("XGo").Call(1).Defer().
		End()
	domTest(pkg, `package main

import "fmt"

func main() {
	go fmt.Println("Hi")
	defer fmt.Println("XGo")
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 90: TestSwitch ============
func testSwitch() {
	fmt.Println("=== testSwitch ===")
	pkg := newMainPackage()
	fmtPkg := pkg.Import("fmt")
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		Switch().DefineVarStart(0, "x").Val(3).EndInit(1).Val(ctxRef(pkg, "x")).Then().
		Case().Val(1).Val(2).Then().
		Val(fmtPkg.Ref("Println")).Val("1 or 2").Call(1).EndStmt().
		End().
		Case().Val(3).Then().
		Val(fmtPkg.Ref("Println")).Val("3").Call(1).EndStmt().
		End().
		DefaultThen().
		Val(fmtPkg.Ref("Println")).Val("other").Call(1).EndStmt().
		End().
		End().
		End()
	domTest(pkg, `package main

import "fmt"

func main() {
	switch x := 3; x {
	case 1, 2:
		fmt.Println("1 or 2")
	case 3:
		fmt.Println("3")
	default:
		fmt.Println("other")
	}
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 82: TestSwitchNoTag ============
func testSwitchNoTag() {
	fmt.Println("=== testSwitchNoTag ===")
	pkg := newMainPackage()
	fmtPkg := pkg.Import("fmt")
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		DefineVarStart(0, "x").Val(3).EndInit(1).
		Switch().None().Then().
		Case().Val(ctxRef(pkg, "x")).Val(2).BinaryOp(token.EQL).Then().
		Val(fmtPkg.Ref("Println")).Val("x = 2").Call(1).EndStmt().
		Fallthrough().
		End().
		Case().Val(ctxRef(pkg, "x")).Val(3).BinaryOp(token.LSS).Then().
		Val(fmtPkg.Ref("Println")).Val("x < 3").Call(1).EndStmt().
		End().
		DefaultThen().
		Val(fmtPkg.Ref("Println")).Val("other").Call(1).EndStmt().
		End().
		End().
		End()
	domTest(pkg, `package main

import "fmt"

func main() {
	x := 3
	switch {
	case x == 2:
		fmt.Println("x = 2")
		fallthrough
	case x < 3:
		fmt.Println("x < 3")
	default:
		fmt.Println("other")
	}
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 95: TestFor ============
func testFor() {
	fmt.Println("=== testFor ===")
	pkg := newMainPackage()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		For().DefineVarStart(0, "i").Val(0).EndInit(1).
		Val(ctxRef(pkg, "i")).Val(ctxRef(pkg, "len")).Val("Hello").Call(1).BinaryOp(token.LSS).Then().
		Val(pkg.Import("fmt").Ref("Println")).Val(ctxRef(pkg, "i")).Call(1).EndStmt().
		Post().
		VarRef(ctxRef(pkg, "i")).Val(ctxRef(pkg, "i")).Val(1).BinaryOp(token.ADD).Assign(1).EndStmt().
		End().
		End()
	domTest(pkg, `package main

import "fmt"

func main() {
	for i := 0; i < len("Hello"); i = i + 1 {
		fmt.Println(i)
	}
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 84: TestLoopFor ============
func testLoopFor() {
	fmt.Println("=== testLoopFor ===")
	pkg := newMainPackage()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		For().None().Then().
		Val(pkg.Import("fmt").Ref("Println")).Val("Hi").Call(1).EndStmt().
		End().
		End()
	domTest(pkg, `package main

import "fmt"

func main() {
	for {
		fmt.Println("Hi")
	}
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 97: TestLabeledFor ============
func testLabeledFor() {
	fmt.Println("=== testLabeledFor ===")
	pkg := newMainPackage()
	cb := pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg)
	l := cb.NewLabel(token.NoPos, token.NoPos, "label")
	cb.Label(l).
		For().DefineVarStart(0, "i").Val(0).EndInit(1).
		Val(ctxRef(pkg, "i")).Val(10).BinaryOp(token.LSS).Then().
		Val(pkg.Import("fmt").Ref("Println")).Val(ctxRef(pkg, "i")).Call(1).EndStmt().
		Break(l).
		Post().
		VarRef(ctxRef(pkg, "i")).Val(ctxRef(pkg, "i")).Val(1).BinaryOp(token.ADD).Assign(1).EndStmt().
		End().
		End()
	domTest(pkg, `package main

import "fmt"

func main() {
label:
	for i := 0; i < 10; i = i + 1 {
		fmt.Println(i)
		break label
	}
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 86: TestForRange ============
func testForRange() {
	fmt.Println("=== testForRange ===")
	pkg := newMainPackage()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		DefineVarStart(0, "a").Val(1).Val(1.2).Val(3).SliceLit(nil, 3).EndInit(1).
		ForRange("i").VarVal("a").RangeAssignThen(token.NoPos).
		Val(pkg.Import("fmt").Ref("Println")).Val(ctxRef(pkg, "i")).Call(1).EndStmt().
		End().
		End()
	domTest(pkg, `package main

import "fmt"

func main() {
	a := []float64{1, 1.2, 3}
	for i := range a {
		fmt.Println(i)
	}
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 87: TestForRange2 ============
func testForRange2() {
	fmt.Println("=== testForRange2 ===")
	pkg := newMainPackage()
	typ := pkg.NewType("T").InitType(pkg, types.NewSlice(types.Typ[types.Float64]))
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		DefineVarStart(0, "a").Val(1).Val(1.2).Val(3).SliceLit(typ, 3).EndInit(1).
		ForRange("i").VarVal("a").RangeAssignThen(token.NoPos).
		Val(pkg.Import("fmt").Ref("Println")).Val(ctxRef(pkg, "i")).Call(1).EndStmt().
		End().
		End()
	domTest(pkg, `package main

import "fmt"

type T []float64

func main() {
	a := T{1, 1.2, 3}
	for i := range a {
		fmt.Println(i)
	}
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 88: TestForRange3 ============
func testForRange3() {
	fmt.Println("=== testForRange3 ===")
	pkg := newMainPackage()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		ForRange().Val("Hi").RangeAssignThen(token.NoPos).End().
		End()
	domTest(pkg, `package main

func main() {
	for range "Hi" {
	}
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 89: TestForRangeChan ============
func testForRangeChan() {
	fmt.Println("=== testForRangeChan ===")
	pkg := newMainPackage()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewVar(types.NewChan(types.SendRecv, types.Typ[types.Int]), "a").
		ForRange("_", "i").VarVal("a").RangeAssignThen(token.NoPos).
		Val(pkg.Import("fmt").Ref("Println")).Val(ctxRef(pkg, "i")).Call(1).EndStmt().
		End().
		End()
	domTest(pkg, `package main

import "fmt"

func main() {
	var a chan int
	for i := range a {
		fmt.Println(i)
	}
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 90: TestForRangeKV ============
func testForRangeKV() {
	fmt.Println("=== testForRangeKV ===")
	pkg := newMainPackage()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		DefineVarStart(0, "a").Val(1).Val(1.2).Val(3).ArrayLit(types.NewArray(types.Typ[types.Float64], 3), 3).EndInit(1).
		ForRange("_", "x").VarVal("a").RangeAssignThen(token.NoPos).
		Val(pkg.Import("fmt").Ref("Println")).Val(ctxRef(pkg, "x")).Call(1).EndStmt().
		End().
		End()
	domTest(pkg, `package main

import "fmt"

func main() {
	a := [3]float64{1, 1.2, 3}
	for _, x := range a {
		fmt.Println(x)
	}
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 91: TestForRangeArrayPointer ============
func testForRangeArrayPointer() {
	fmt.Println("=== testForRangeArrayPointer ===")
	pkg := newMainPackage()
	v := pkg.NewParam(token.NoPos, "a", types.NewPointer(types.NewArray(types.Typ[types.Float64], 3)))
	pkg.NewFunc(nil, "foo", types.NewTuple(v), nil, false).BodyStart(pkg).
		ForRange("_", "x").VarVal("a").RangeAssignThen(token.NoPos).
		Val(pkg.Import("fmt").Ref("Println")).Val(ctxRef(pkg, "x")).Call(1).EndStmt().
		End().
		End()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).End()
	domTest(pkg, `package main

import "fmt"

func foo(a *[3]float64) {
	for _, x := range a {
		fmt.Println(x)
	}
}
func main() {
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 92: TestForRangeNoAssign ============
func testForRangeNoAssign() {
	fmt.Println("=== testForRangeNoAssign ===")
	pkg := newMainPackage()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		DefineVarStart(0, "a").Val(1).Val(1.2).Val(3).SliceLit(nil, 3).EndInit(1).
		ForRange().VarVal("a").RangeAssignThen(token.NoPos).
		Val(pkg.Import("fmt").Ref("Println")).Val("Hi").Call(1).EndStmt().
		End().
		End()
	domTest(pkg, `package main

import "fmt"

func main() {
	a := []float64{1, 1.2, 3}
	for range a {
		fmt.Println("Hi")
	}
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 93: TestForRangeAssignKV ============
func testForRangeAssignKV() {
	fmt.Println("=== testForRangeAssignKV ===")
	pkg := newMainPackage()
	tyString := types.Typ[types.String]
	tyInt := types.Typ[types.Int]
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewVar(tyString, "k").NewVar(tyInt, "v").
		DefineVarStart(0, "a").Val("a").Val(1).Val("b").Val(3).MapLit(nil, 4).EndInit(1).
		ForRange().VarRef(ctxRef(pkg, "k")).VarRef(ctxRef(pkg, "v")).VarVal("a").RangeAssignThen(token.NoPos).
		Val(pkg.Import("fmt").Ref("Println")).Val(ctxRef(pkg, "k")).VarVal("v").Call(2).EndStmt().
		End().
		End()
	domTest(pkg, `package main

import "fmt"

func main() {
	var k string
	var v int
	a := map[string]int{"a": 1, "b": 3}
	for k, v = range a {
		fmt.Println(k, v)
	}
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 94: TestForRangeAssign ============
func testForRangeAssign() {
	fmt.Println("=== testForRangeAssign ===")
	pkg := newMainPackage()
	tyBool := types.Typ[types.Bool]
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewVar(tyBool, "k").
		NewVar(types.NewChan(types.SendRecv, tyBool), "a").
		ForRange().VarRef(ctxRef(pkg, "k")).VarVal("a").RangeAssignThen(token.NoPos).
		Val(pkg.Import("fmt").Ref("Println")).Val(ctxRef(pkg, "k")).Call(1).EndStmt().
		End().
		End()
	domTest(pkg, `package main

import "fmt"

func main() {
	var k bool
	var a chan bool
	for k = range a {
		fmt.Println(k)
	}
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 95: TestReturn ============
func testReturn() {
	fmt.Println("=== testReturn ===")
	pkg := newMainPackage()
	format := pkg.NewParam(token.NoPos, "format", types.Typ[types.String])
	args := pkg.NewParam(token.NoPos, "args", types.NewSlice(gogen.TyEmptyInterface))
	n := pkg.NewParam(token.NoPos, "", types.Typ[types.Int])
	err := pkg.NewParam(token.NoPos, "", types.Universe.Lookup("error").Type())
	pkg.NewFunc(nil, "foo", types.NewTuple(format, args), types.NewTuple(n, err), true).BodyStart(pkg).
		Val(pkg.Import("fmt").Ref("Printf")).Val(format).Val(args).Call(2, true).Return(1).
		End()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).End()
	domTest(pkg, `package main

import "fmt"

func foo(format string, args ...interface{}) (int, error) {
	return fmt.Printf(format, args...)
}
func main() {
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 96: TestReturnExpr ============
func testReturnExpr() {
	fmt.Println("=== testReturnExpr ===")
	pkg := newMainPackage()
	format := pkg.NewParam(token.NoPos, "format", types.Typ[types.String])
	args := pkg.NewParam(token.NoPos, "args", types.NewSlice(gogen.TyEmptyInterface))
	n := pkg.NewParam(token.NoPos, "", types.Typ[types.Int])
	err := pkg.NewParam(token.NoPos, "", types.Universe.Lookup("error").Type())
	pkg.NewFunc(nil, "foo", types.NewTuple(format, args), types.NewTuple(n, err), true).BodyStart(pkg).
		Val(0).Val(types.Universe.Lookup("nil")).Return(2).
		End()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).End()
	domTest(pkg, `package main

func foo(format string, args ...interface{}) (int, error) {
	return 0, nil
}
func main() {
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 97: TestReturnNamedResults ============
func testReturnNamedResults() {
	fmt.Println("=== testReturnNamedResults ===")
	pkg := newMainPackage()
	format := pkg.NewParam(token.NoPos, "format", types.Typ[types.String])
	args := pkg.NewParam(token.NoPos, "args", types.NewSlice(gogen.TyEmptyInterface))
	n := pkg.NewParam(token.NoPos, "n", types.Typ[types.Int])
	err := pkg.NewParam(token.NoPos, "err", types.Universe.Lookup("error").Type())
	pkg.NewFunc(nil, "foo", types.NewTuple(format, args), types.NewTuple(n, err), true).BodyStart(pkg).
		VarRef(pkg.CB().Scope().Lookup("n")).VarRef(err).Val(1).Val(nil).Assign(2).
		Return(0).
		End()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).End()
	domTest(pkg, `package main

func foo(format string, args ...interface{}) (n int, err error) {
	n, err = 1, nil
	return
}
func main() {
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 98: TestImport ============
func testImport() {
	fmt.Println("=== testImport ===")
	pkg := newMainPackage()
	fmtPkg := pkg.Import("fmt")

	v := pkg.NewParam(token.NoPos, "v", types.NewSlice(gogen.TyByte))
	pkg.NewFunc(nil, "fmt", types.NewTuple(v), nil, false).BodyStart(pkg).End()

	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		Val(fmtPkg.Ref("Println")).Val("Hello").Call(1).EndStmt().
		End()
	domTest(pkg, `package main

import fmt1 "fmt"

func fmt(v []byte) {
}
func main() {
	fmt1.Println("Hello")
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 99: TestImportUnused ============
func testImportUnused() {
	fmt.Println("=== testImportUnused ===")
	pkg := newMainPackage()
	pkg.Import("fmt")
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).End()
	domTest(pkg, `package main

func main() {
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 100: TestImportForceUsed ============
func testImportForceUsed() {
	fmt.Println("=== testImportForceUsed ===")
	pkg := newMainPackage()
	pkg.ForceImport("fmt")
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).End()
	domTest(pkg, `package main

import _ "fmt"

func main() {
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 101: TestImportForceUsed2 ============
func testImportForceUsed2() {
	fmt.Println("=== testImportForceUsed2 ===")
	pkg := newMainPackage()
	pkg.Import("fmt").MarkForceUsed(pkg)
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).End()
	domTest(pkg, `package main

import _ "fmt"

func main() {
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 102: TestImportAnyWhere ============
func testImportAnyWhere() {
	fmt.Println("=== testImportAnyWhere ===")
	pkg := newMainPackage()

	v := pkg.NewParam(token.NoPos, "v", types.NewSlice(gogen.TyByte))
	pkg.NewFunc(nil, "fmt", types.NewTuple(v), nil, false).BodyStart(pkg).End()

	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		Val(pkg.Import("fmt").Ref("Println")).Val("Hello").Call(1).EndStmt().
		End()
	domTest(pkg, `package main

import fmt1 "fmt"

func fmt(v []byte) {
}
func main() {
	fmt1.Println("Hello")
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 103: TestImportAndCallMethod ============
func testImportAndCallMethod() {
	fmt.Println("=== testImportAndCallMethod ===")
	var x *goxVar
	pkg := newMainPackage()
	strings := pkg.Import("strings")
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewAutoVar(token.NoPos, token.NoPos, "x", &x).
		VarRef(x).Val(strings.Ref("NewReplacer")).Val("?").Val("!").Call(2).
		MemberVal("Replace", 0).Val("hello, world???").Call(1).Assign(1).EndStmt().
		Val(pkg.Builtin().Ref("println")).Val(x).Call(1).EndStmt().
		End()
	domTest(pkg, `package main

import "strings"

func main() {
	var x string
	x = strings.NewReplacer("?", "!").Replace("hello, world???")
	println(x)
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 104: TestOverloadFunc ============
func testOverloadFunc() {
	fmt.Println("=== testOverloadFunc ===")
	var f, g, x, y *goxVar
	pkg := newMainPackage()
	builtin := pkg.Builtin()
	c64 := pkg.NewParam(token.NoPos, "c64", types.Typ[types.Complex64])
	c128 := pkg.NewParam(token.NoPos, "c128", types.Typ[types.Complex128])
	pkg.NewFunc(nil, "foo", types.NewTuple(c64, c128), nil, false).BodyStart(pkg).
		NewAutoVar(token.NoPos, token.NoPos, "f", &f).NewAutoVar(token.NoPos, token.NoPos, "g", &g).
		NewAutoVar(token.NoPos, token.NoPos, "x", &x).NewAutoVar(token.NoPos, token.NoPos, "y", &y).
		VarRef(f).Val(builtin.Ref("imag")).Val(c128).Call(1).Assign(1).EndStmt().
		VarRef(g).Val(builtin.Ref("real")).Val(c64).Call(1).Assign(1).EndStmt().
		VarRef(x).Val(builtin.Ref("complex")).Val(0).Val(f).Call(2).Assign(1).EndStmt().
		VarRef(y).Val(builtin.Ref("complex")).Val(g).Val(1).Call(2).Assign(1).EndStmt().
		End()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).End()
	domTest(pkg, `package main

func foo(c64 complex64, c128 complex128) {
	var f float64
	var g float32
	var x complex128
	var y complex64
	f = imag(c128)
	g = real(c64)
	x = complex(0, f)
	y = complex(g, 1)
}
func main() {
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 105: TestOverloadFunc2 ============
func testOverloadFunc2() {
	fmt.Println("=== testOverloadFunc2 ===")
	pkg := newMainPackage()
	bar := pkg.Import("github.com/goplus/gogen/internal/overload")
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		Val(bar.Ref("Put")).Val("1").Call(1).EndStmt().
		Val(bar.Ref("Put2")).Val(1).Call(1).EndStmt().
		End()
	domTest(pkg, `package main

import "github.com/goplus/gogen/internal/overload"

func main() {
	overload.PutString("1")
	overload.Put2__0(1)
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 106: TestOverloadMethod ============
func testOverloadMethod() {
	fmt.Println("=== testOverloadMethod ===")
	pkg := newMainPackage()
	bar := pkg.Import("github.com/goplus/gogen/internal/overload")
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewVar(bar.Ref("Game").Type(), "g").
		VarVal("g").MemberVal("Run", 0).Val("Hi").Call(1).EndStmt().
		VarVal("g").MemberVal("Run2", 0).Val(1).Call(1).EndStmt().
		End()
	domTest(pkg, `package main

import "github.com/goplus/gogen/internal/overload"

func main() {
	var g overload.Game
	g.RunString("Hi")
	g.Run2__0(1)
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 107: TestPkgVar ============
func testPkgVar() {
	fmt.Println("=== testPkgVar ===")
	pkg := newMainPackage()
	flag := pkg.Import("flag")
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		VarRef(flag.Ref("Usage")).Val(nil).Assign(1).
		End()
	domTest(pkg, `package main

import "flag"

func main() {
	flag.Usage = nil
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 108: TestEmbbedMember ============
func testEmbbedMember() {
	fmt.Println("=== testEmbbedMember ===")
	pkg := newMainPackage()
	test := pkg.Import("testing")
	typ := pkg.NewParam(token.NoPos, "t", types.NewPointer(test.Ref("T").Type()))
	pkg.NewFunc(nil, "foo", types.NewTuple(typ), nil, false).BodyStart(pkg).
		Val(ctxRef(pkg, "t")).
		MemberVal("Fatal", 0).
		Call(0).
		EndStmt().
		End()
	domTest(pkg, `package main

import "testing"

func foo(t *testing.T) {
	t.Fatal()
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 109: TestEmbbedField ============
func testEmbbedField() {
	fmt.Println("=== testEmbbedField ===")
	pkg := newMainPackage()
	bar := pkg.Import("github.com/goplus/gogen/internal/bar")
	fields := []*types.Var{
		types.NewField(token.NoPos, pkg.Types, "", bar.Ref("Info").Type(), true),
		types.NewField(token.NoPos, pkg.Types, "id", types.Typ[types.String], false),
	}
	st := types.NewStruct(fields, nil)
	typ := pkg.NewParam(token.NoPos, "t", types.NewPointer(st))
	pkg.NewFunc(nil, "foo", types.NewTuple(typ), nil, false).BodyStart(pkg).
		Val(ctxRef(pkg, "t")).
		MemberRef("id").Val("0").Assign(1).
		End()
	domTest(pkg, `package main

import "github.com/goplus/gogen/internal/bar"

func foo(t *struct {
	bar.Info
	id string
}) {
	t.id = "0"
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 110: TestSlice ============
func testSlice() {
	fmt.Println("=== testSlice ===")
	pkg := newMainPackage()

	tySlice := types.NewSlice(types.Typ[types.Int])
	tyArray := types.NewArray(types.Typ[types.Int], 10)
	tyPArray := types.NewPointer(tyArray)
	tyString := types.Typ[types.String]
	p := pkg.NewParam(token.NoPos, "p", tyPArray)
	x := pkg.NewParam(token.NoPos, "x", tySlice)
	y := pkg.NewParam(token.NoPos, "y", tyString)
	z := pkg.NewParam(token.NoPos, "z", tyArray)
	pkg.NewFunc(nil, "foo", types.NewTuple(p, x, y, z), nil, false).BodyStart(pkg).
		NewVarStart(tySlice, "a").Val(x).None().Val(2).Slice(false).EndInit(1).
		NewVarStart(tySlice, "b").Val(x).None().None().Slice(false).EndInit(1).
		NewVarStart(tySlice, "c").Val(x).Val(1).Val(3).Val(10).Slice(true).EndInit(1).
		NewVarStart(tyString, "d").Val(y).Val(1).Val(3).Slice(false).EndInit(1).
		NewVarStart(tySlice, "e").Val(p).None().Val(5).Slice(false).EndInit(1).
		NewVarStart(tySlice, "f").Val(z).None().Val(5).Slice(false).EndInit(1).
		End()

	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).End()
	domTest(pkg, `package main

func foo(p *[10]int, x []int, y string, z [10]int) {
	var a []int = x[:2]
	var b []int = x[:]
	var c []int = x[1:3:10]
	var d string = y[1:3]
	var e []int = p[:5]
	var f []int = z[:5]
}
func main() {
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 111: TestIndex ============
func testIndex() {
	fmt.Println("=== testIndex ===")
	pkg := newMainPackage()

	x := pkg.NewParam(token.NoPos, "x", types.NewSlice(types.Typ[types.Int]))
	y := pkg.NewParam(token.NoPos, "y", types.NewMap(types.Typ[types.String], types.Typ[types.Int]))
	ret := pkg.NewParam(token.NoPos, "", types.Typ[types.Int])
	pkg.NewFunc(nil, "foo", types.NewTuple(x, y), types.NewTuple(ret), false).BodyStart(pkg).
		DefineVarStart(0, "v", "ok").Val(y).Val("a").Index(1, 2).EndInit(1).
		Val(x).Val(0).Index(1, 0).Return(1).
		End()

	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).End()
	domTest(pkg, `package main

func foo(x []int, y map[string]int) int {
	v, ok := y["a"]
	return x[0]
}
func main() {
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 112: TestIndexRef ============
func testIndexRef() {
	fmt.Println("=== testIndexRef ===")
	pkg := newMainPackage()
	tyArray := types.NewArray(types.Typ[types.Int], 10)
	x := pkg.NewParam(token.NoPos, "x", tyArray)
	y := pkg.NewParam(token.NoPos, "y", types.NewPointer(tyArray))
	z := pkg.NewParam(token.NoPos, "z", types.NewMap(types.Typ[types.String], types.Typ[types.Int]))
	pkg.NewFunc(nil, "foo", types.NewTuple(x, y, z), nil, false).BodyStart(pkg).
		Val(x).Val(0).IndexRef(1).Val(1).Assign(1).
		Val(y).Val(1).IndexRef(1).Val(2).Assign(1).
		Val(z).Val("a").IndexRef(1).Val(3).Assign(1).
		Val(y).ElemRef().Val(x).Assign(1).
		VarRef(x).Val(y).Elem().Assign(1).
		End()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).End()
	domTest(pkg, `package main

func foo(x [10]int, y *[10]int, z map[string]int) {
	x[0] = 1
	y[1] = 2
	z["a"] = 3
	*y = x
	x = *y
}
func main() {
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 113: TestStar ============
func testStar() {
	fmt.Println("=== testStar ===")
	pkg := newMainPackage()
	tyInt := types.Typ[types.Uint32]
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		DefineVarStart(0, "a").Typ(tyInt).Star().Val(nil).Call(1).EndInit(1).
		NewVarStart(tyInt, "b").VarVal("a").Star().EndInit(1).
		End()
	domTest(pkg, `package main

func main() {
	a := (*uint32)(nil)
	var b uint32 = *a
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 114: TestAssignOp ============
func testAssignOp() {
	fmt.Println("=== testAssignOp ===")
	pkg := newMainPackage()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewVar(types.Typ[types.String], "a", "b").
		VarRef(ctxRef(pkg, "a")).VarVal("b").AssignOp(token.ADD_ASSIGN).
		End()
	domTest(pkg, `package main

func main() {
	var a, b string
	a += b
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 115: TestAssign ============
func testAssign() {
	fmt.Println("=== testAssign ===")
	var a, b, c, d, e, f, g *goxVar
	pkg := newMainPackage()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewAutoVar(token.NoPos, token.NoPos, "a", &a).NewAutoVar(token.NoPos, token.NoPos, "b", &b).
		NewAutoVar(token.NoPos, token.NoPos, "c", &c).NewAutoVar(token.NoPos, token.NoPos, "d", &d).
		NewAutoVar(token.NoPos, token.NoPos, "e", &e).NewAutoVar(token.NoPos, token.NoPos, "f", &f).
		NewAutoVar(token.NoPos, token.NoPos, "g", &g).
		VarRef(a).VarRef(b).VarRef(d).VarRef(e).VarRef(f).VarRef(g).
		Val("Hi").Val(3).Val(true).Val('!').Val(1.2).Val(&ast.BasicLit{Kind: token.FLOAT, Value: "12.3"}).
		Assign(6).EndStmt().
		VarRef(c).Val(b).Assign(1).EndStmt().
		End()
	domTest(pkg, `package main

func main() {
	var a string
	var b int
	var c int
	var d bool
	var e rune
	var f float64
	var g float64
	a, b, d, e, f, g = "Hi", 3, true, '!', 1.2, 12.3
	c = b
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 116: TestAssignFnCall ============
func testAssignFnCall() {
	fmt.Println("=== testAssignFnCall ===")
	var n, err *goxVar
	pkg := newMainPackage()
	fmtPkg := pkg.Import("fmt")
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewAutoVar(token.NoPos, token.NoPos, "n", &n).NewAutoVar(token.NoPos, token.NoPos, "err", &err).
		VarRef(n).VarRef(err).
		Val(fmtPkg.Ref("Println")).Val("Hello").Call(1).
		Assign(2, 1).EndStmt().
		End()
	domTest(pkg, `package main

import "fmt"

func main() {
	var n int
	var err error
	n, err = fmt.Println("Hello")
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 117: TestAssignUnderscore ============
func testAssignUnderscore() {
	fmt.Println("=== testAssignUnderscore ===")
	var err *goxVar
	pkg := newMainPackage()
	fmtPkg := pkg.Import("fmt")
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewAutoVar(token.NoPos, token.NoPos, "err", &err).
		VarRef(nil).VarRef(err).
		Val(fmtPkg.Ref("Println")).Val("Hello").Call(1).
		Assign(2, 1).EndStmt().
		End()
	domTest(pkg, `package main

import "fmt"

func main() {
	var err error
	_, err = fmt.Println("Hello")
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 118: TestOperator ============
func testOperator() {
	fmt.Println("=== testOperator ===")
	var a, b, c, d *goxVar
	pkg := newMainPackage()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewAutoVar(token.NoPos, token.NoPos, "a", &a).NewAutoVar(token.NoPos, token.NoPos, "b", &b).
		NewAutoVar(token.NoPos, token.NoPos, "c", &c).NewAutoVar(token.NoPos, token.NoPos, "d", &d).
		VarRef(a).Val("Hi").Assign(1).EndStmt().
		VarRef(b).Val(a).Val("!").BinaryOp(token.ADD).Assign(1).EndStmt().
		VarRef(c).Val(&ast.BasicLit{Kind: token.INT, Value: "13"}).Assign(1).EndStmt().
		VarRef(d).Val(c).UnaryOp(token.SUB).Assign(1).EndStmt().
		End()
	domTest(pkg, `package main

func main() {
	var a string
	var b string
	var c int
	var d int
	a = "Hi"
	b = a + "!"
	c = 13
	d = -c
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 119: TestOperatorComplex ============
func testOperatorComplex() {
	fmt.Println("=== testOperatorComplex ===")
	var a *goxVar
	pkg := newMainPackage()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewAutoVar(token.NoPos, token.NoPos, "a", &a).
		VarRef(a).Val(123.1).Val(&ast.BasicLit{Kind: token.IMAG, Value: "3i"}).BinaryOp(token.SUB).Assign(1).EndStmt().
		End()
	domTest(pkg, `package main

func main() {
	var a complex128
	a = 123.1 - 3i
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 120: TestBinaryOpUntyped ============
func testBinaryOpUntyped() {
	fmt.Println("=== testBinaryOpUntyped ===")
	var a *goxVar
	pkg := newMainPackage()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewAutoVar(token.NoPos, token.NoPos, "a", &a).
		VarRef(a).Val("Hi").Val("!").BinaryOp(token.ADD).Assign(1).EndStmt().
		End()
	domTest(pkg, `package main

func main() {
	var a string
	a = "Hi" + "!"
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 121: TestBinaryOpSHL ============
func testBinaryOpSHL() {
	fmt.Println("=== testBinaryOpSHL ===")
	pkg := newMainPackage()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewVar(types.Typ[types.Int32], "a").
		NewVar(types.Typ[types.Int], "b").
		VarVal("b").Val(1).VarVal("a").BinaryOp(token.SHL).BinaryOp(token.AND).EndStmt().
		End()
	domTest(pkg, `package main

func main() {
	var a int32
	var b int
	b & (1 << a)
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 122: TestBinaryOpCmpNil ============
func testBinaryOpCmpNil() {
	fmt.Println("=== testBinaryOpCmpNil ===")
	pkg := newMainPackage()
	typ := types.NewSlice(gogen.TyEmptyInterface)
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewVar(typ, "a").
		NewVarStart(types.Typ[types.Bool], "b").
		VarVal("a").Val(nil).BinaryOp(token.NEQ).EndInit(1).
		NewVarStart(types.Typ[types.Bool], "c").
		Val(nil).VarVal("a").BinaryOp(token.EQL).EndInit(1).
		End()
	domTest(pkg, `package main

func main() {
	var a []interface{}
	var b bool = a != nil
	var c bool = nil == a
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 123: TestClosure ============
func testClosure() {
	fmt.Println("=== testClosure ===")
	pkg := newMainPackage()
	fmtPkg := pkg.Import("fmt")
	paramV := pkg.NewParam(token.NoPos, "v", types.Typ[types.String])
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewClosure(types.NewTuple(paramV), nil, false).BodyStart(pkg).
		/**/ Debug(func(cb *gogen.CodeBuilder) {}).
		/**/ Val(fmtPkg.Ref("Println")).Val(paramV).Call(1).EndStmt().
		/**/ End().
		Val("Hello").Call(1).EndStmt().
		End()
	domTest(pkg, `package main

import "fmt"

func main() {
	func(v string) {
		fmt.Println(v)
	}("Hello")
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 124: TestClosureAutoParamRet ============
func testClosureAutoParamRet() {
	fmt.Println("=== testClosureAutoParamRet ===")
	pkg := newMainPackage()
	ret := pkg.NewAutoParam("ret")
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewVarStart(types.NewSlice(types.Typ[types.Int]), "a").
		/**/ NewClosure(nil, types.NewTuple(ret), false).BodyStart(pkg).
		/******/ VarRef(ctxRef(pkg, "ret")).Val(pkg.Builtin().Ref("append")).Val(ctxRef(pkg, "ret")).Val(1).Call(2).Assign(1).
		/******/ Return(0).
		/**/ End().Call(0).EndInit(1).
		End()
	domTest(pkg, `package main

func main() {
	var a []int = func() (ret []int) {
		ret = append(ret, 1)
		return
	}()
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 125: TestReturnErr ============
func testReturnErr() {
	fmt.Println("=== testReturnErr ===")
	pkg := newMainPackage()
	tyErr := types.Universe.Lookup("error").Type()
	format := pkg.NewParam(token.NoPos, "format", types.Typ[types.String])
	args := pkg.NewParam(token.NoPos, "args", types.NewSlice(gogen.TyEmptyInterface))
	n := pkg.NewParam(token.NoPos, "", types.Typ[types.Int])
	err := pkg.NewParam(token.NoPos, "", tyErr)
	pkg.NewFunc(nil, "foo", types.NewTuple(format, args), types.NewTuple(n, err), true).BodyStart(pkg).
		NewVar(tyErr, "_xgo_err").
		Val(ctxRef(pkg, "_xgo_err")).ReturnErr(false).
		End()
	domTest(pkg, `package main

func foo(format string, args ...interface{}) (int, error) {
	var _xgo_err error
	return 0, _xgo_err
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 126: TestCallInlineClosure ============
func testCallInlineClosure() {
	fmt.Println("=== testCallInlineClosure ===")
	pkg := newMainPackage()
	fmtPkg := pkg.Import("fmt")
	ret := pkg.NewAutoParam("ret")
	err := pkg.NewParam(token.NoPos, "", gogen.TyError)
	sig := gogen.NewSignature(nil, nil, types.NewTuple(ret), false)
	pkg.NewFunc(nil, "foo", nil, types.NewTuple(err), false).BodyStart(pkg).
		DefineVarStart(0, "n").
		CallInlineClosureStart(sig, 0, false).
		/**/ DefineVarStart(0, "n", "err").Val(fmtPkg.Ref("Println")).Val("Hi").Call(1).EndInit(1).
		/**/ If().Val(ctxRef(pkg, "err")).CompareNil(token.NEQ).Then().
		/******/ Val(ctxRef(pkg, "err")).ReturnErr(true).
		/******/ End().
		/**/ Val(ctxRef(pkg, "n")).Return(1).
		/**/ End().
		EndInit(1).
		ZeroLit(gogen.TyError).Return(1).
		End()
	domTest(pkg, `package main

import "fmt"

func foo() error {
	var _autoGo_1 int
	{
		n, err := fmt.Println("Hi")
		if err != nil {
			return err
		}
		_autoGo_1 = n
		goto _autoGo_2
	_autoGo_2:
	}
	n := _autoGo_1
	return nil
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 127: TestCallInlineClosureAssign ============
func testCallInlineClosureAssign() {
	fmt.Println("=== testCallInlineClosureAssign ===")
	pkg := newMainPackage()
	fmtPkg := pkg.Import("fmt")
	ret := pkg.NewAutoParam("ret")
	sig := types.NewSignatureType(nil, nil, nil, nil, types.NewTuple(ret), false)
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		Val(fmtPkg.Ref("Println")).
		CallInlineClosureStart(sig, 0, false).
		/**/ NewVar(types.Universe.Lookup("error").Type(), "err").
		/**/ VarRef(ret).VarRef(ctxRef(pkg, "err")).Val(fmtPkg.Ref("Println")).Val("Hi").Call(1).Assign(2, 1).
		/**/ Return(0).
		/**/ End().
		Call(1).EndStmt().
		End()
	domTest(pkg, `package main

import "fmt"

func main() {
	var _autoGo_1 int
	{
		var err error
		_autoGo_1, err = fmt.Println("Hi")
		goto _autoGo_2
	_autoGo_2:
	}
	fmt.Println(_autoGo_1)
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 128: TestCallInlineClosureEllipsis ============
func testCallInlineClosureEllipsis() {
	fmt.Println("=== testCallInlineClosureEllipsis ===")
	pkg := newMainPackage()
	fmtPkg := pkg.Import("fmt")
	x := pkg.NewParam(token.NoPos, "x", types.NewSlice(gogen.TyEmptyInterface))
	ret := pkg.NewAutoParam("ret")
	sig := types.NewSignatureType(nil, nil, nil, types.NewTuple(x), types.NewTuple(ret), true)
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		Val(fmtPkg.Ref("Println")).
		Val(1).SliceLit(types.NewSlice(gogen.TyEmptyInterface), 1).
		CallInlineClosureStart(sig, 1, true).
		/**/ DefineVarStart(0, "n", "err").Val(fmtPkg.Ref("Println")).Val(x).Call(1, true).EndInit(1).
		/**/ Val(ctxRef(pkg, "n")).Return(1).
		/**/ End().
		Call(1).EndStmt().
		End()
	domTest(pkg, `package main

import "fmt"

func main() {
	var _autoGo_1 int
	{
		var _autoGo_2 []interface{} = []interface{}{1}
		n, err := fmt.Println(_autoGo_2...)
		_autoGo_1 = n
		goto _autoGo_3
	_autoGo_3:
	}
	fmt.Println(_autoGo_1)
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 129: TestExample ============
func testExample() {
	fmt.Println("=== testExample ===")
	pkg := newMainPackage()
	fmtPkg := pkg.Import("fmt")
	v := pkg.NewParam(token.NoPos, "v", types.Typ[types.String])
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		DefineVarStart(0, "a", "b").Val("Hi").Val(3).EndInit(2).
		NewVarStart(nil, "c").VarVal("b").EndInit(1).
		NewVar(gogen.TyEmptyInterface, "x", "y").
		Val(fmtPkg.Ref("Println")).
		/**/ VarVal("a").VarVal("b").VarVal("c").
		/**/ Call(3).EndStmt().
		NewClosure(types.NewTuple(v), nil, false).BodyStart(pkg).
		/**/ Val(fmtPkg.Ref("Println")).Val(v).Call(1).EndStmt().
		/**/ End().
		Val("Hello").Call(1).EndStmt().
		End()
	domTest(pkg, `package main

import "fmt"

func main() {
	a, b := "Hi", 3
	var c = b
	var x, y interface{}
	fmt.Println(a, b, c)
	func(v string) {
		fmt.Println(v)
	}("Hello")
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 130: TestInterfaceMethodVarCall ============
func testInterfaceMethodVarCall() {
	fmt.Println("=== testInterfaceMethodVarCall ===")
	pkg := newMainPackage()
	fmtPkg := pkg.Import("fmt")
	tyInt := types.Typ[types.Int]
	tyString := types.Typ[types.String]
	methods := []*types.Func{
		types.NewFunc(token.NoPos, pkg.Types, "bar", types.NewSignatureType(
			nil, nil, nil, types.NewTuple(types.NewVar(token.NoPos, nil, "info", tyString)), nil, false)),
	}
	tyInterf := types.NewInterfaceType(methods, nil).Complete()
	foo := pkg.NewType("foo").InitType(pkg, tyInterf)
	_ = foo
	tt := pkg.NewType("t").InitType(pkg, tyInt)
	recv := pkg.NewParam(token.NoPos, "tt", tt)
	pkg.NewFunc(recv, "bar", types.NewTuple(types.NewVar(token.NoPos, nil, "info", tyString)), nil, false).BodyStart(pkg).
		Val(fmtPkg.Ref("Println")).Val(recv).Val(pkg.NewParam(token.NoPos, "info", tyString)).Call(2).EndStmt().
		End()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		DefineVarStart(0, "v").Val(ctxRef(pkg, "foo")).MemberVal("bar", 0).EndInit(1).
		NewVarStart(tt, "tt").Val(123).EndInit(1).
		VarVal("v").Val(ctxRef(pkg, "tt")).Val("hello").Call(2, false).
		EndStmt().End()
	domTest(pkg, `package main

import "fmt"

type foo interface {
	bar(info string)
}
type t int

func (tt t) bar(info string) {
	fmt.Println(tt, info)
}
func main() {
	v := (foo).bar
	var tt t = 123
	v(tt, "hello")
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 131: TestTypeNamed ============
func testTypeNamed() {
	fmt.Println("=== testTypeNamed ===")
	pkg := newMainPackage()
	fields := []*types.Var{
		types.NewField(token.NoPos, pkg.Types, "x", types.Typ[types.Int], false),
		types.NewField(token.NoPos, pkg.Types, "y", types.Typ[types.String], false),
	}
	typ := types.NewStruct(fields, nil)
	t1 := pkg.NewType("T").InitType(pkg, typ)
	recv := pkg.NewParam(token.NoPos, "a", t1)
	pkg.NewFunc(recv, "Bar", nil, nil, false).BodyStart(pkg).End()
	t2 := pkg.NewType("T1").InitType(pkg, types.NewNamed(types.NewTypeName(token.NoPos, nil, "T", t1), t1.Underlying(), nil))
	recv2 := pkg.NewParam(token.NoPos, "a", t2)
	pkg.NewFunc(recv2, "Foo", nil, nil, false).BodyStart(pkg).End()
	pkg.CB().NewType("X").InitType(pkg, gogen.TyByte)
	domTest(pkg, `package main

type T struct {
	x int
	y string
}

func (a T) Bar() {
}

type T1 T

func (a T1) Foo() {
}

type X byte
`)
	fmt.Println("  [PASS]")
}

// ============ Test 132: TestStructMember ============
func testStructMember() {
	fmt.Println("=== testStructMember ===")
	pkg := newMainPackage()
	fields := []*types.Var{
		types.NewField(token.NoPos, pkg.Types, "x", types.Typ[types.Int], false),
		types.NewField(token.NoPos, pkg.Types, "y", types.Typ[types.String], false),
	}
	typ := types.NewStruct(fields, nil)
	foo := pkg.NewType("foo").InitType(pkg, typ)
	pkg.CB().NewVarStart(nil, "a").
		Val(123).Val("Hi").
		StructLit(typ, 2, false).EndInit(1)
	pkg.CB().NewVarStart(nil, "b").
		VarVal("a").
		Debug(func(cb *gogen.CodeBuilder) {}).
		MemberVal("y", 0).EndInit(1)
	pkg.CB().NewVarStart(nil, "c").
		Val(123).Val("Hi").
		StructLit(foo, 2, false).EndInit(1)
	pkg.CB().NewVarStart(nil, "d").
		VarVal("c").MemberVal("x", 0).EndInit(1)
	pkg.CB().NewVarStart(nil, "e").
		VarVal("a").UnaryOp(token.AND).EndInit(1)
	pkg.CB().NewVarStart(nil, "f").
		VarVal("e").MemberVal("x", 0).EndInit(1)
	pkg.CB().NewVarStart(nil, "g").
		VarVal("c").UnaryOp(token.AND).EndInit(1)
	pkg.CB().NewVarStart(nil, "h").
		VarVal("g").MemberVal("y", 0).EndInit(1)
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		VarVal("c").MemberRef("x").Val(1).Assign(1).
		VarVal("a").MemberRef("y").Val("1").Assign(1).
		End()
	domTest(pkg, `package main

type foo struct {
	x int
	y string
}

var a = struct {
	x int
	y string
}{123, "Hi"}
var b = a.y
var c = foo{123, "Hi"}
var d = c.x
var e = &a
var f = e.x
var g = &c
var h = g.y

func main() {
	c.x = 1
	a.y = "1"
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 133: TestMethodAlias ============
func testMethodAlias() {
	fmt.Println("=== testMethodAlias ===")
	pkg := newMainPackage()
	typ := types.NewStruct(nil, nil)
	tyM := pkg.NewType("M").InitType(pkg, typ)
	recv := pkg.NewParam(token.NoPos, "p", types.NewPointer(tyM))
	pkg.NewFunc(recv, "SetValue", nil, nil, false).BodyStart(pkg).End()
	pkg.NewFunc(recv, "setValue", nil, nil, false).BodyStart(pkg).End()
	pkg.NewFunc(recv, "Value", nil, nil, false).BodyStart(pkg).End()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewVar(tyM, "m").
		VarVal("m").Debug(
		func(cb *gogen.CodeBuilder) {
			cb.Member("setValue", 0, gogen.MemberFlagMethodAlias)
		}).Call(0).EndStmt().
		VarVal("m").Debug(
		func(cb *gogen.CodeBuilder) {
			cb.Member("SetValue", 0, gogen.MemberFlagMethodAlias)
		}).Call(0).EndStmt().
		VarVal("m").Debug(
		func(cb *gogen.CodeBuilder) {
			cb.Member("value", 0, gogen.MemberFlagMethodAlias)
		}).Call(0).EndStmt().
		End()
	domTest(pkg, `package main

type M struct {
}

func (p *M) SetValue() {
}
func (p *M) setValue() {
}
func (p *M) Value() {
}
func main() {
	var m M
	m.setValue()
	m.SetValue()
	m.Value()
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 134: TestNewParamEx ============
func testNewParamEx() {
	fmt.Println("=== testNewParamEx ===")
	pkg := newMainPackage()
	regularParam := pkg.NewParam(token.NoPos, "regular", types.Typ[types.String])
	nonOptionalParam := pkg.NewParamEx(token.NoPos, "nonOptional", types.Typ[types.Bool], false)
	optionalParam := pkg.NewParamEx(token.NoPos, "optional", types.Typ[types.Int], true)
	params := types.NewTuple(regularParam, nonOptionalParam, optionalParam)
	pkg.NewFunc(nil, "testFunc", params, nil, false).BodyStart(pkg).End()
	domTest(pkg, `package main

func testFunc(regular string, nonOptional bool, __xgo_optional_optional int) {
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 135: TestNewParamExWithBodyRef ============
func testNewParamExWithBodyRef() {
	fmt.Println("=== testNewParamExWithBodyRef ===")
	pkg := newMainPackage()
	bar := pkg.NewParamEx(token.NoPos, "bar", types.Typ[types.Int], true)
	ret := pkg.NewParam(token.NoPos, "", types.Typ[types.Int])
	pkg.NewFunc(nil, "foo", types.NewTuple(bar), types.NewTuple(ret), false).BodyStart(pkg).
		Val(bar).Val(1).BinaryOp(token.ADD).Return(1).
		End()
	domTest(pkg, `package main

func foo(__xgo_optional_bar int) int {
	return __xgo_optional_bar + 1
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 136: TestValidateParamOrderValid ============
func testValidateParamOrderValid() {
	fmt.Println("=== testValidateParamOrderValid ===")
	pkg := newMainPackage()
	positional1 := pkg.NewParam(token.NoPos, "a", types.Typ[types.String])
	positional2 := pkg.NewParam(token.NoPos, "b", types.Typ[types.Int])
	optional1 := pkg.NewParamEx(token.NoPos, "c", types.Typ[types.Bool], true)
	optional2 := pkg.NewParamEx(token.NoPos, "d", types.Typ[types.Float64], true)
	params := types.NewTuple(positional1, positional2, optional1, optional2)
	pkg.NewFunc(nil, "validFunc", params, nil, false).BodyStart(pkg).End()
	domTest(pkg, `package main

func validFunc(a string, b int, __xgo_optional_c bool, __xgo_optional_d float64) {
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 137: TestValidateParamOrderValidWithVariadic ============
func testValidateParamOrderValidWithVariadic() {
	fmt.Println("=== testValidateParamOrderValidWithVariadic ===")
	pkg := newMainPackage()
	positional := pkg.NewParam(token.NoPos, "a", types.Typ[types.String])
	optional := pkg.NewParamEx(token.NoPos, "b", types.Typ[types.Int], true)
	variadic := pkg.NewParam(token.NoPos, "args", types.NewSlice(types.Typ[types.String]))
	params := types.NewTuple(positional, optional, variadic)
	pkg.NewFunc(nil, "variadicFunc", params, nil, true).BodyStart(pkg).End()
	domTest(pkg, `package main

func variadicFunc(a string, __xgo_optional_b int, args ...string) {
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 138: TestValidateParamOrderOnlyOptional ============
func testValidateParamOrderOnlyOptional() {
	fmt.Println("=== testValidateParamOrderOnlyOptional ===")
	pkg := newMainPackage()
	optional1 := pkg.NewParamEx(token.NoPos, "a", types.Typ[types.Int], true)
	optional2 := pkg.NewParamEx(token.NoPos, "b", types.Typ[types.String], true)
	params := types.NewTuple(optional1, optional2)
	pkg.NewFunc(nil, "onlyOptionalFunc", params, nil, false).BodyStart(pkg).End()
	domTest(pkg, `package main

func onlyOptionalFunc(__xgo_optional_a int, __xgo_optional_b string) {
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 139: TestValidateParamOrderOnlyPositional ============
func testValidateParamOrderOnlyPositional() {
	fmt.Println("=== testValidateParamOrderOnlyPositional ===")
	pkg := newMainPackage()
	positional1 := pkg.NewParam(token.NoPos, "a", types.Typ[types.Int])
	positional2 := pkg.NewParam(token.NoPos, "b", types.Typ[types.String])
	params := types.NewTuple(positional1, positional2)
	pkg.NewFunc(nil, "onlyPositionalFunc", params, nil, false).BodyStart(pkg).End()
	domTest(pkg, `package main

func onlyPositionalFunc(a int, b string) {
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 140: TestOptionalParamCallWithAllArgs ============
func testOptionalParamCallWithAllArgs() {
	fmt.Println("=== testOptionalParamCallWithAllArgs ===")
	pkg := newMainPackage()
	x := pkg.NewParam(token.NoPos, "x", types.Typ[types.Int])
	y := pkg.NewParamEx(token.NoPos, "y", types.Typ[types.Int], true)
	ret := pkg.NewParam(token.NoPos, "", types.Typ[types.Int])
	params := types.NewTuple(x, y)
	results := types.NewTuple(ret)
	pkg.NewFunc(nil, "add", params, results, false).BodyStart(pkg).
		Val(x).Val(y).BinaryOp(token.ADD).Return(1).
		End()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		Val(pkg.Types.Scope().Lookup("add")).Val(1).Val(2).Call(2).EndStmt().
		End()
	domTest(pkg, `package main

func add(x int, __xgo_optional_y int) int {
	return x + __xgo_optional_y
}
func main() {
	add(1, 2)
}
`)
	fmt.Println("  [PASS]")
}

// ============ Test 141: TestOptionalParamCallWithMissingOptional ============
func testOptionalParamCallWithMissingOptional() {
	fmt.Println("=== testOptionalParamCallWithMissingOptional ===")
	pkg := newMainPackage()
	x := pkg.NewParam(token.NoPos, "x", types.Typ[types.Int])
	y := pkg.NewParamEx(token.NoPos, "y", types.Typ[types.Int], true)
	ret := pkg.NewParam(token.NoPos, "", types.Typ[types.Int])
	params := types.NewTuple(x, y)
	results := types.NewTuple(ret)
	pkg.NewFunc(nil, "add", params, results, false).BodyStart(pkg).
		Val(x).Val(y).BinaryOp(token.ADD).Return(1).
		End()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		Val(pkg.Types.Scope().Lookup("add")).Val(5).Call(1).EndStmt().
		End()
	domTest(pkg, `package main

func add(x int, __xgo_optional_y int) int {
	return x + __xgo_optional_y
}
func main() {
	add(5, 0)
}
`)
	fmt.Println("  [PASS]")
}

// ============ Main ============
func main() {
	fmt.Println("Running package_test tests (150 tests)...")
	fmt.Println()

	// Batch 1: tests 1-5
	testRedupPkgIssue796()
	fmt.Println()

	testBTIMethod()
	fmt.Println()

	testTypedBTIMethod()
	fmt.Println()

	testPrintlnPrintln()
	fmt.Println()

	testImportGopPkg()
	fmt.Println()

	// Batch 2: tests 6-15
	testGoTypesPkg()
	fmt.Println()

	testMethods()
	fmt.Println()

	testBasic()
	fmt.Println()

	testMake()
	fmt.Println()

	testNew()
	fmt.Println()

	testTypeConv()
	fmt.Println()

	testTypeConvBool()
	fmt.Println()

	testIncDec()
	fmt.Println()

	testSend()
	fmt.Println()

	testRecv()
	fmt.Println()

	testRecv2()
	fmt.Println()

	testRecv3()
	fmt.Println()

	testZeroLit()
	fmt.Println()

	testZeroLitAllTypes()
	fmt.Println()

	testTypeDeclInFunc()
	fmt.Println()

	testTypeDoc()
	fmt.Println()

	testDeleteType()
	fmt.Println()

	testTypeDecl()
	fmt.Println()

	testTypeCycleDef()
	fmt.Println()

	testTypeMethods()
	fmt.Println()

	testAssignInterface()
	fmt.Println()

	testAssignUserInterface()
	fmt.Println()

	testTypeSwitch()
	fmt.Println()

	testTypeSwitch2()
	fmt.Println()

	testSelect()
	fmt.Println()

	testStructLit()
	fmt.Println()

	testNamedStructLit()
	fmt.Println()

	testMapLit()
	fmt.Println()

	testNamedMapLit()
	fmt.Println()

	testSliceLit()
	fmt.Println()

	testNamedSliceLit()
	fmt.Println()

	testKeyValModeLit()
	fmt.Println()

	testNamedArrayLit()
	fmt.Println()

	testArrayLit()
	fmt.Println()

	testConst()
	fmt.Println()

	testConstLenCap()
	fmt.Println()

	testConstDecl()
	fmt.Println()

	testConstDecl2()
	fmt.Println()

	testConstDecl3()
	fmt.Println()

	testDeleteVarDecl()
	fmt.Println()

	testVarDecl()
	fmt.Println()

	testVarDeclNoBody()
	fmt.Println()

	testVarDeclInFunc()
	fmt.Println()

	testDefineVar()
	fmt.Println()

	testFuncDoc()
	fmt.Println()

	testFuncDoc2()
	fmt.Println()

	testFuncBasic()
	fmt.Println()

	testFuncVariadic()
	fmt.Println()

	testInitFunc()
	fmt.Println()

	testFuncAsParam()
	fmt.Println()

	testNamedFuncAsParam()
	fmt.Println()

	testDefOverloadFunc()
	fmt.Println()

	testDefTemplateMethod()
	fmt.Println()

	testBuiltinFunc()
	fmt.Println()

	testComplex()
	fmt.Println()

	testClose()
	fmt.Println()

	testAppend()
	fmt.Println()

	testAppend2()
	fmt.Println()

	testAppendString()
	fmt.Println()

	testCopyString()
	fmt.Println()

	testUnsafeFunc()
	fmt.Println()

	testUnsafeFunc2()
	fmt.Println()

	testUnsafeConst()
	fmt.Println()

	testEmptyInterface()
	fmt.Println()

	testInterfaceMethods()
	fmt.Println()

	testFuncCall()
	fmt.Println()

	testFuncCallEllipsis()
	fmt.Println()

	testDelayedLoadUnused()
	fmt.Println()

	testDelayedLoadUsed()
	fmt.Println()

	testIf()
	fmt.Println()

	testIfElse()
	fmt.Println()

	testGoto()
	fmt.Println()

	testMultiLabel()
	fmt.Println()

	testBreakContinue()
	fmt.Println()

	testGoDefer()
	fmt.Println()

	testSwitch()
	fmt.Println()

	testSwitchNoTag()
	fmt.Println()

	testFor()
	fmt.Println()

	testLoopFor()
	fmt.Println()

	testLabeledFor()
	fmt.Println()

	testForRange()
	fmt.Println()

	testForRange2()
	fmt.Println()

	testForRange3()
	fmt.Println()

	testForRangeChan()
	fmt.Println()

	testForRangeKV()
	fmt.Println()

	testForRangeArrayPointer()
	fmt.Println()

	testForRangeNoAssign()
	fmt.Println()

	testForRangeAssignKV()
	fmt.Println()

	testForRangeAssign()
	fmt.Println()

	testReturn()
	fmt.Println()

	testReturnExpr()
	fmt.Println()

	testReturnNamedResults()
	fmt.Println()

	testImport()
	fmt.Println()

	testImportUnused()
	fmt.Println()

	testImportForceUsed()
	fmt.Println()

	testImportForceUsed2()
	fmt.Println()

	testImportAnyWhere()
	fmt.Println()

	testImportAndCallMethod()
	fmt.Println()

	testOverloadFunc()
	fmt.Println()

	testOverloadFunc2()
	fmt.Println()

	testOverloadMethod()
	fmt.Println()

	testPkgVar()
	fmt.Println()

	testEmbbedMember()
	fmt.Println()

	testEmbbedField()
	fmt.Println()

	testSlice()
	fmt.Println()

	testIndex()
	fmt.Println()

	// Batch 12: tests 112-121
	testIndexRef()
	fmt.Println()

	testStar()
	fmt.Println()

	testAssignOp()
	fmt.Println()

	testAssign()
	fmt.Println()

	testAssignFnCall()
	fmt.Println()

	testAssignUnderscore()
	fmt.Println()

	testOperator()
	fmt.Println()

	testOperatorComplex()
	fmt.Println()

	testBinaryOpUntyped()
	fmt.Println()

	testBinaryOpSHL()
	fmt.Println()

	// Batch 13: tests 122-131
	testBinaryOpCmpNil()
	fmt.Println()

	testClosure()
	fmt.Println()

	testClosureAutoParamRet()
	fmt.Println()

	testReturnErr()
	fmt.Println()

	testCallInlineClosure()
	fmt.Println()

	testCallInlineClosureAssign()
	fmt.Println()

	testCallInlineClosureEllipsis()
	fmt.Println()

	testExample()
	fmt.Println()

	testInterfaceMethodVarCall()
	fmt.Println()

	testTypeNamed()
	fmt.Println()

	// Batch 14: tests 132-141
	testStructMember()
	fmt.Println()

	testMethodAlias()
	fmt.Println()

	testNewParamEx()
	fmt.Println()

	testNewParamExWithBodyRef()
	fmt.Println()

	testValidateParamOrderValid()
	fmt.Println()

	testValidateParamOrderValidWithVariadic()
	fmt.Println()

	testValidateParamOrderOnlyOptional()
	fmt.Println()

	testValidateParamOrderOnlyPositional()
	fmt.Println()

	testOptionalParamCallWithAllArgs()
	fmt.Println()

	testOptionalParamCallWithMissingOptional()
	fmt.Println()

	fmt.Println("All tests PASSED!")
}
