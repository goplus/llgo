// Converted from typeparams_test.go for llgo testing
// Batch 1: 5 cases (TestMethodToFunc/TestTypeAsParamsFunc/TestCheckXGoPkg/TestOverloadNamed/TestInstantiate)
package main

import (
	"bytes"
	"fmt"
	"go/ast"
	"go/format"
	"go/parser"
	"go/token"
	"go/types"
	"log"
	"os"
	"runtime"
	"strconv"
	"sync"

	"github.com/goplus/gogen"
	"github.com/goplus/gogen/packages"
)

var (
	gblFset   *token.FileSet
	gblImp    types.Importer
	handleErr func(err error)
)

func init() {
	gblFset = token.NewFileSet()
	gblImp = packages.NewImporter(gblFset)
}

func isLeastGo122() bool {
	return isLeastGo(22)
}

func isLeastGo(minor int64) bool {
	ver, err := strconv.ParseInt(runtime.Version()[4:6], 10, 0)
	return err == nil && ver >= minor
}

type txtNode struct {
	Msg string
	pos token.Pos
}

func (p *txtNode) Pos() token.Pos {
	return p.pos
}

func (p *txtNode) End() token.Pos {
	return p.pos + token.Pos(len(p.Msg))
}

var (
	mutex         sync.Mutex
	pos2Positions = map[token.Pos]token.Position{}
)

const (
	posBits = 16
	posMask = (1 << posBits) - 1
)

// text, line, column
func source(text string, args ...interface{}) ast.Node {
	if len(args) < 2 {
		return &txtNode{Msg: text}
	}
	pos := position(args[0].(int), args[1].(int))
	return &txtNode{Msg: text, pos: pos}
}

func position(line, column int) token.Pos {
	mutex.Lock()
	defer mutex.Unlock()

	pos := token.Pos(len(pos2Positions)+1) << posBits
	pos2Positions[pos] = token.Position{Filename: "./foo.gop", Line: line, Column: column}
	return pos
}

type nodeInterp struct{}

func (p nodeInterp) Position(pos token.Pos) (ret token.Position) {
	mutex.Lock()
	defer mutex.Unlock()
	ret = pos2Positions[(pos &^ posMask)]
	ret.Column += int(pos & posMask)
	return
}

func (p nodeInterp) LoadExpr(node ast.Node) string {
	if t, ok := node.(*txtNode); ok {
		return t.Msg
	}
	return ""
}

type eventRecorder struct{}

func (p eventRecorder) Member(id ast.Node, obj types.Object) {}
func (p eventRecorder) Call(fn ast.Node, obj types.Object)   {}

func newMainPackage(
	implicitCast ...func(pkg *gogen.Package, V, T types.Type, pv *gogen.Element) bool) *gogen.Package {
	return newPackage("main", false, implicitCast...)
}

func newPackage(
	name string, gotypesalias bool, implicitCast ...func(pkg *gogen.Package, V, T types.Type, pv *gogen.Element) bool) *gogen.Package {
	conf := &gogen.Config{
		Fset:             gblFset,
		Importer:         gblImp,
		Recorder:         eventRecorder{},
		NodeInterpreter:  nodeInterp{},
		DbgPositioner:    nodeInterp{},
		EnableTypesalias: gotypesalias,
	}
	if len(implicitCast) > 0 {
		conf.CanImplicitCast = implicitCast[0]
	}
	if handleErr != nil {
		conf.HandleErr = handleErr
		handleErr = nil
	}
	return gogen.NewPackage("", name, conf)
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

func codeErrorTest(msg string, source func(pkg *gogen.Package), disableRecover ...bool) {
	pkg := newMainPackage()
	codeErrorTestDo(pkg, msg, source, disableRecover...)
}

func codeErrorTestEx(pkg *gogen.Package, msg string, source func(pkg *gogen.Package), disableRecover ...bool) {
	codeErrorTestDo(pkg, msg, source, disableRecover...)
}

func codeErrorTestDo(pkg *gogen.Package, msg string, source func(pkg *gogen.Package), disableRecover ...bool) {
	pos2Positions = map[token.Pos]token.Position{}
	if !(disableRecover != nil && disableRecover[0]) {
		defer func() {
			if e := recover(); e != nil {
				switch err := e.(type) {
				case *gogen.CodeError, *gogen.MatchError:
					defer recover()
					pkg.CB().ResetStmt()
					if ret := err.(error).Error(); ret != msg {
						panic(fmt.Sprintf("\nError: %q\nExpected: %q\n", ret, msg))
					}
				case *gogen.ImportError:
					if ret := err.Error(); ret != msg {
						panic(fmt.Sprintf("\nError: %q\nExpected: %q\n", ret, msg))
					}
				case error:
					if ret := err.Error(); ret != msg {
						panic(fmt.Sprintf("\nError: %q\nExpected: %q\n", ret, msg))
					}
				default:
					panic(fmt.Sprintf("Unexpected error: %v (%T)", e, e))
				}
			} else {
				panic("no error?")
			}
		}()
	}
	source(pkg)
	var b bytes.Buffer
	gogen.WriteTo(&b, pkg, "")
}

type importer struct {
	packages map[string]*types.Package
	imp      types.Importer
}

func (i *importer) Import(path string) (*types.Package, error) {
	if pkg, ok := i.packages[path]; ok {
		return pkg, nil
	}
	return i.imp.Import(path)
}

type goxTest struct {
	fset *token.FileSet
	imp  *importer
}

func newGoxTest() *goxTest {
	fset := token.NewFileSet()
	return &goxTest{
		fset: fset,
		imp: &importer{
			packages: make(map[string]*types.Package),
			imp:      packages.NewImporter(fset),
		},
	}
}

func (p *goxTest) LoadGoPackage(pkgPath string, filename string, src string) (*types.Package, error) {
	if src == "" {
		return p.imp.imp.Import(pkgPath)
	}
	f, err := parser.ParseFile(p.fset, filename, src, 0)
	if err != nil {
		return nil, err
	}
	conf := types.Config{Importer: p.imp}
	pkg, err := conf.Check(pkgPath, p.fset, []*ast.File{f}, nil)
	if err != nil {
		return nil, err
	}
	p.imp.packages[pkgPath] = pkg
	return pkg, nil
}

func (p *goxTest) NewPackage(pkgPath string, name string) *gogen.Package {
	conf := &gogen.Config{
		Fset:            p.fset,
		Importer:        p.imp,
		NodeInterpreter: nodeInterp{},
		DbgPositioner:   nodeInterp{},
	}
	return gogen.NewPackage(pkgPath, name, conf)
}

func (p *goxTest) NewPackageEx(pkgPath string, name string, conf *gogen.Config) *gogen.Package {
	return gogen.NewPackage(pkgPath, name, conf)
}

func checkMethodToFunc(pkg *gogen.Package, typ types.Type, name, code string) {
	ret, err := pkg.MethodToFunc(typ, name)
	if err != nil {
		panic(fmt.Sprintf("MethodToFunc failed: %v", err))
	}
	if _, isPtr := typ.(*types.Pointer); isPtr {
		if recv := ret.Type.(*types.Signature).Params().At(0); !types.Identical(recv.Type(), typ) {
			panic(fmt.Sprintf("MethodToFunc: ResultType: %v, Expected: %v", recv.Type(), typ))
		}
	}
	var b bytes.Buffer
	if err := format.Node(&b, pkg.Fset, ret.Val); err != nil {
		panic(fmt.Sprintf("format.Node failed: %v", err))
	}
	if v := b.String(); v != code {
		panic(fmt.Sprintf("MethodToFunc:\nResult:\n%s\nExpected:\n%s\n", v, code))
	}
}

func testMethodToFunc() {
	fmt.Println("=== testMethodToFunc ===")
	const src = `package hello

type Itf interface {
	X()
}

type Base struct {
}

func (p Base) F() {}

func (p *Base) PtrF() {}

type Foo struct {
	Itf
	Base
	Val byte
}

func (a Foo) Bar() int {
	return 0
}

func (a *Foo) PtrBar() string {
	return ""
}

var _ = (Foo).Bar
var _ = (*Foo).PtrBar
var _ = (Foo).F
var _ = (*Foo).PtrF
var _ = (Foo).X
var _ = (*Foo).X
var _ = (Itf).X
`
	gt := newGoxTest()
	_, err := gt.LoadGoPackage("hello", "foo.go", src)
	if err != nil {
		panic(err)
	}
	pkg := gt.NewPackage("", "main")
	pkgRef := pkg.Import("hello")
	objFoo := pkgRef.Ref("Foo")
	objItf := pkgRef.Ref("Itf")
	typ := objFoo.Type()
	typItf := objItf.Type()
	_, err = pkg.MethodToFunc(typ, "Val")
	if err == nil || err.Error() != "-:  undefined (type hello.Foo has no method Val)" {
		panic(fmt.Sprintf("MethodToFunc Val check failed: %v", err))
	}
	checkMethodToFunc(pkg, typ, "Bar", "(hello.Foo).Bar")
	checkMethodToFunc(pkg, types.NewPointer(typ), "PtrBar", "(*hello.Foo).PtrBar")
	checkMethodToFunc(pkg, typ, "PtrBar", "(*hello.Foo).PtrBar")
	checkMethodToFunc(pkg, typ, "F", "(hello.Foo).F")
	checkMethodToFunc(pkg, types.NewPointer(typ), "PtrF", "(*hello.Foo).PtrF")
	checkMethodToFunc(pkg, typ, "PtrF", "(*hello.Foo).PtrF")
	checkMethodToFunc(pkg, typItf, "X", "(hello.Itf).X")
	checkMethodToFunc(pkg, typ, "X", "(hello.Foo).X")
	checkMethodToFunc(pkg, types.NewPointer(typ), "X", "(*hello.Foo).X")
}

func testTypeAsParamsFunc() {
	fmt.Println("=== testTypeAsParamsFunc ===")
	const src = `package foo

const XGoPackage = true

type basetype interface {
	int | string
}

func XGox_Bar[T basetype](name string) {
}

func XGox_Row__0[T basetype](name string) {
}

func XGox_Row__1[Array any](v int) {
}

type Table struct {
}

func XGot_Table_XGox_Col__0[T basetype](p *Table, name string) {
}

func XGot_Table_XGox_Col__1[Array any](p *Table, v int) {
}
`
	gt := newGoxTest()
	_, err := gt.LoadGoPackage("foo", "foo.go", src)
	if err != nil {
		panic(err)
	}
	pkg := gt.NewPackage("", "test")
	foo := pkg.Import("foo")
	objTable := foo.Ref("Table")
	typ := objTable.Type().(*types.Named)
	tyInt := types.Typ[types.Int]

	cb := pkg.NewFunc(nil, "Example", nil, nil, false).BodyStart(pkg).
		NewVar(types.NewPointer(typ), "tbl")
	_, err = cb.VarVal("tbl").Member("col", 0, gogen.MemberFlagMethodAlias)
	if err != nil {
		panic(fmt.Sprintf("tbl.Member(col): %v", err))
	}
	cb.Typ(tyInt).Val("bar").Call(2).EndStmt().
		Val(foo.Ref("Bar")).Typ(tyInt).Val("1").Call(2).EndStmt().
		Val(foo.Ref("Row")).Typ(tyInt).Val(1, source("1")).Call(2).EndStmt().
		End()

	domTest(pkg, `package test

import "foo"

func Example() {
	var tbl *foo.Table
	foo.XGot_Table_XGox_Col__0[int](tbl, "bar")
	foo.XGox_Bar[int]("1")
	foo.XGox_Row__1[int](1)
}
`)
}

func testCheckXGoPkg() {
	fmt.Println("=== testCheckXGoPkg ===")
	const src = `package foo

import "io"

const XGoPackage = "io"

type basetype interface {
	int | string
}

func XGox_Bar[T basetype](name string) {
}

func XGox_Row__0[T basetype](name string) {
}

func XGox_Row__1[Array any](v int) {
}

type EmbIntf interface {
	io.Reader
	Close()
}

type Table struct {
	EmbIntf
	N int
	b string
}

func XGot_Table_XGox_Col__0[T basetype](p *Table, name string) {
}

func XGot_Table_XGox_Col__1[Array any](p *Table, v int) {
}
`
	gt := newGoxTest()
	_, err := gt.LoadGoPackage("foo", "foo.go", src)
	if err != nil {
		panic(err)
	}
	pkg := gt.NewPackage("", "test")
	foo := pkg.Import("foo")
	objTable := foo.Ref("Table")
	typ := objTable.Type().(*types.Named)
	tyInt := types.Typ[types.Int]

	typSlice := types.NewSlice(types.NewPointer(typ))
	typMap := types.NewMap(types.Typ[types.String], typSlice)

	args := types.NewTuple(types.NewParam(0, pkg.Types, "tbls", typMap))
	cb := pkg.NewFunc(nil, "Example", args, nil, false).BodyStart(pkg)
	_, err = cb.VarVal("tbls").Val("Hi").Index(1, 0).Val(0).Index(1, 0).Member("col", 0, gogen.MemberFlagMethodAlias)
	if err != nil {
		panic(fmt.Sprintf("tbl.Member(col): %v", err))
	}
	cb.Typ(tyInt).Val("bar").Call(2).EndStmt().
		Val(foo.Ref("Bar")).Typ(tyInt).Val("1").Call(2).EndStmt().
		Val(foo.Ref("Row")).Typ(tyInt).Val(1, source("1")).Call(2).EndStmt().
		End()

	typChan := types.NewChan(types.SendRecv, typSlice)
	typArray := types.NewArray(typChan, 2)
	args = types.NewTuple(types.NewParam(0, pkg.Types, "", typArray))
	pkg.NewFunc(nil, "Create", args, nil, false).BodyStart(pkg).End()

	domTest(pkg, `package test

import "foo"

const XGoPackage = "foo"

func Example(tbls map[string][]*foo.Table) {
	foo.XGot_Table_XGox_Col__0[int](tbls["Hi"][0], "bar")
	foo.XGox_Bar[int]("1")
	foo.XGox_Row__1[int](1)
}
func Create([2]chan []*foo.Table) {
}
`)
}

func testOverloadNamed() {
	fmt.Println("=== testOverloadNamed ===")
	const src = `package foo

const XGoPackage = true

type M = map[string]any

type basetype interface {
	string | int | bool | float64
}

type Var__0[T basetype] struct {
	val T
}

type Var__1[T map[string]any] struct {
	val T
}

func XGox_Var_Cast__0[T basetype]() *Var__0[T] {
	return new(Var__0[T])
}

func XGox_Var_Cast__1[T map[string]any]() *Var__1[T] {
	return new(Var__1[T])
}
`
	if isLeastGo122() {
		_ = os.Setenv("GODEBUG", "gotypesalias=1")
	}
	gt := newGoxTest()
	_, err := gt.LoadGoPackage("foo", "foo.go", src)
	if err != nil {
		panic(err)
	}
	pkg := gt.NewPackage("", "main")
	pkgRef := pkg.Import("foo")
	scope := pkgRef.Types.Scope()
	log.Println("==> Lookup", scope.Lookup("Var__0"))
	objVar := pkgRef.Ref("Var")
	typ := objVar.Type()
	on, ok := gogen.CheckOverloadNamed(typ)
	if !ok {
		panic("TestOverloadNamed: not TyOverloadNamed?")
	}
	if on.Types[0].TypeParams() == nil {
		panic("TestOverloadNamed: not generic")
	}

	tyInt := types.Typ[types.Int]
	tyM := pkgRef.Ref("M").Type()
	ty1 := pkg.Instantiate(typ, []types.Type{tyInt})
	ty2 := pkg.Instantiate(typ, []types.Type{tyM})
	pkg.NewTypeDefs().NewType("t1").InitType(pkg, ty1)
	pkg.NewTypeDefs().NewType("t2").InitType(pkg, ty2)
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		Val(objVar).Typ(tyInt).Call(1).EndStmt().
		Val(objVar).Typ(tyM).Call(1).EndStmt().
		End()

	if isLeastGo122() {
		domTest(pkg, `package main

import "foo"

type t1 foo.Var__0[int]
type t2 foo.Var__1[foo.M]

func main() {
	foo.XGox_Var_Cast__0[int]()
	foo.XGox_Var_Cast__1[foo.M]()
}
`)
	} else {
		domTest(pkg, `package main

import "foo"

type t1 foo.Var__0[int]
type t2 foo.Var__1[map[string]any]

func main() {
	foo.XGox_Var_Cast__0[int]()
	foo.XGox_Var_Cast__1[map[string]any]()
}
`)
	}

	func() {
		defer func() {
			if e := recover(); e == nil {
				panic("TestOverloadNamed failed: no error?")
			}
		}()
		ty3 := pkg.Instantiate(on, []types.Type{gogen.TyByte})
		pkg.NewTypeDefs().NewType("t3").InitType(pkg, ty3)
	}()
	func() {
		defer func() {
			if e := recover(); e != nil && e.(error).Error() != "-: 1 (type untyped int) is not a type" {
				panic(fmt.Sprintf("TestOverloadNamed failed: %v", e))
			}
		}()
		pkg.NewFunc(nil, "bar", nil, nil, false).BodyStart(pkg).
			Val(objVar).Val(1, source("1")).Call(1).EndStmt().
			End()
	}()
}

func testInstantiate() {
	fmt.Println("=== testInstantiate ===")
	const src = `package foo

type Data[T any] struct {
	v T
}

type sliceOf[E any] interface {
	~[]E
}

type Slice[S sliceOf[T], T any] struct {
	Data S
}

func (p *Slice[S, T]) Append(t ...T) S {
	p.Data = append(p.Data, t...)
	return p.Data
}

type (
	DataInt = Data[int]
	SliceInt = Slice[[]int,int]
)
`
	gt := newGoxTest()
	_, err := gt.LoadGoPackage("foo", "foo.go", src)
	if err != nil {
		panic(err)
	}
	pkg := gt.NewPackage("", "main")
	pkgRef := pkg.Import("foo")
	tyData := pkgRef.Ref("Data").Type()
	tyInt := types.Typ[types.Int]
	tyInvalid := types.Typ[types.Invalid]
	tySlice := pkgRef.Ref("Slice").Type()
	if ret := pkg.Instantiate(tyData, []types.Type{tyInt}); ret == tyInvalid {
		panic("TestInstantiate failed: pkg.Instantiate")
	}
	func() {
		defer func() {
			if e := recover(); e.(error).Error() != "-: int is not a generic type" {
				panic(fmt.Sprintf("TestInstantiate failed: %v", e))
			}
		}()
		pkg.Instantiate(tyInt, nil)
	}()
	func() {
		defer func() {
			if e := recover(); e == nil {
				panic("TestInstantiate failed: no error?")
			}
		}()
		pkg.Instantiate(tySlice, []types.Type{tyInt})
	}()
}

func testTypeParamsType() {
	fmt.Println("=== testTypeParamsType ===")
	const src = `package foo

type Data[T any] struct {
	v T
}

type sliceOf[E any] interface {
	~[]E
}

type Slice[S sliceOf[T], T any] struct {
	Data S
}

func (p *Slice[S, T]) Append(t ...T) S {
	p.Data = append(p.Data, t...)
	return p.Data
}

type (
	DataInt = Data[int]
	SliceInt = Slice[[]int,int]
)
`
	if isLeastGo122() {
		_ = os.Setenv("GODEBUG", "gotypesalias=1")
	}
	gt := newGoxTest()
	_, err := gt.LoadGoPackage("foo", "foo.go", src)
	if err != nil {
		panic(err)
	}
	pkg := gt.NewPackage("", "main")
	pkgRef := pkg.Import("foo")
	tySlice := pkgRef.Ref("Slice").Type()
	tySliceInt := pkgRef.Ref("SliceInt").Type()
	tyData := pkgRef.Ref("Data").Type()
	tyDataInt := pkgRef.Ref("DataInt").Type()
	tyInt := types.Typ[types.Int]
	tyIntSlice := types.NewSlice(tyInt)

	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewVarStart(types.NewPointer(tyDataInt), "data").Typ(tyData).Typ(tyInt).Index(1, 0).Star().Val(nil).Call(1).EndInit(1).
		NewVarStart(types.NewPointer(tySliceInt), "slice").Typ(tySlice).Typ(tyIntSlice).Typ(tyInt).Index(2, 0).Star().Val(nil).Call(1).EndInit(1).
		End()
	if isLeastGo122() {
		domTest(pkg, `package main

import "foo"

func main() {
	var data *foo.DataInt = (*foo.Data[int])(nil)
	var slice *foo.SliceInt = (*foo.Slice[[]int, int])(nil)
}
`)
	} else {
		domTest(pkg, `package main

import "foo"

func main() {
	var data *foo.Data[int] = (*foo.Data[int])(nil)
	var slice *foo.Slice[[]int, int] = (*foo.Slice[[]int, int])(nil)
}
`)
	}
}

func testTypeParamsFunc() {
	fmt.Println("=== testTypeParamsFunc ===")
	const src = `package foo

type Number interface {
	~int | float64
}

func Sum[T Number](vec []T) T {
	var sum T
	for _, elt := range vec {
		sum = sum + elt
	}
	return sum
}

func At[T interface{ ~[]E }, E any](x T, i int) E {
	return x[i]
}

func Loader[T1 any, T2 any](p1 T1, p2 T2) T1 {
	return p1
}

func Add[T1 any, T2 ~int](v1 T1, v2 ...T2) (sum T2) {
	println(v1)
	for _, v := range v2 {
		sum += v
	}
	return sum
}

type Int []int
var MyInts = Int{1,2,3,4}
`
	gt := newGoxTest()
	_, err := gt.LoadGoPackage("foo", "foo.go", src)
	if err != nil {
		panic(err)
	}
	pkg := gt.NewPackage("", "main")
	pkgRef := pkg.Import("foo")
	fnSum := pkgRef.Ref("Sum")
	fnAt := pkgRef.Ref("At")
	fnLoader := pkgRef.Ref("Loader")
	fnAdd := pkgRef.Ref("Add")
	myInts := pkgRef.Ref("MyInts")
	tyInt := types.Typ[types.Int]
	tyString := types.Typ[types.String]
	tyIntSlice := types.NewSlice(tyInt)
	tyIntPointer := types.NewPointer(tyInt)
	var fn1 *types.Var
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		VarRef(nil).Val(fnAt).Typ(tyIntSlice).Index(1, 0).Assign(1, 1).
		VarRef(nil).Val(fnSum).Typ(tyInt).Index(1, 0).Assign(1, 1).
		VarRef(nil).Val(fnLoader).Typ(tyInt).Typ(tyInt).Index(2, 0).Assign(1, 1).
		VarRef(nil).Val(fnAdd).Typ(tyString).Typ(tyInt).Index(2, 0).Assign(1, 1).
		NewVarStart(tyInt, "s1").Val(fnSum).Val(1).Val(2).Val(3).SliceLit(tyIntSlice, 3).Call(1).EndInit(1).
		NewVarStart(tyInt, "s2").Val(fnSum).Typ(tyInt).Index(1, 0).Val(1).Val(2).Val(3).SliceLit(tyIntSlice, 3).Call(1).EndInit(1).
		NewVarStart(tyInt, "v1").Val(fnAt).Val(1).Val(2).Val(3).SliceLit(tyIntSlice, 3).Val(1).Call(2).EndInit(1).
		NewVarStart(tyInt, "v2").Val(fnAt).Typ(tyIntSlice).Index(1, 0).Val(1).Val(2).Val(3).SliceLit(tyIntSlice, 3).Val(1).Call(2).EndInit(1).
		NewVarStart(tyInt, "v3").Val(fnAt).Typ(tyIntSlice).Typ(tyInt).Index(2, 0).Val(1).Val(2).Val(3).SliceLit(tyIntSlice, 3).Val(1).Call(2).EndInit(1).
		NewVarStart(tyInt, "n1").Val(fnAdd).Val("hello").Val(1).Val(2).Val(3).Call(4).EndInit(1).
		NewVarStart(tyInt, "n2").Val(fnAdd).Typ(tyString).Index(1, 0).Val("hello").Val(1).Val(2).Val(3).Call(4).EndInit(1).
		NewVarStart(tyInt, "n3").Val(fnAdd).Typ(tyString).Typ(tyInt).Index(2, 0).Val("hello").Val(1).Val(2).Val(3).Call(4).EndInit(1).
		NewVarStart(tyInt, "n4").Val(fnAdd).Val("hello").Val(1).Val(2).Val(3).SliceLit(tyIntSlice, 3).CallWith(2, 0, gogen.InstrFlagEllipsis).EndInit(1).
		NewVarStart(tyInt, "n5").Val(fnAdd).Val("hello").Val(1).Val(2).Val(3).SliceLit(tyIntSlice, 3).CallWith(2, 0, gogen.InstrFlagEllipsis).EndInit(1).
		NewVarStart(tyInt, "n6").Val(fnAdd).Typ(tyString).Index(1, 0).Val("hello").Val(myInts).CallWith(2, 0, gogen.InstrFlagEllipsis).EndInit(1).
		NewVarStart(tyInt, "n7").Val(fnAdd).Typ(tyString).Typ(tyInt).Index(2, 0).Val("hello").Val(1).Val(2).Val(3).SliceLit(tyIntSlice, 3).CallWith(2, 0, gogen.InstrFlagEllipsis).EndInit(1).
		NewVarStart(tyIntPointer, "p1").Val(fnLoader).Typ(tyIntPointer).Index(1, 0).Val(nil).Val(1).Call(2).EndInit(1).
		NewVarStart(tyIntPointer, "p2").Val(fnLoader).Typ(tyIntPointer).Typ(tyInt).Index(2, 0).Val(nil).Val(1).Call(2).EndInit(1).
		NewAutoVar(0, 0, "fn1", &fn1).VarRef(fn1).Val(fnLoader).Typ(tyIntPointer).Typ(tyInt).Index(2, 0).Assign(1, 1).EndStmt().
		Val(fn1).Val(nil).Val(1).Call(2).EndStmt().
		End()
	domTest(pkg, `package main

import "foo"

func main() {
	_ = foo.At[[]int]
	_ = foo.Sum[int]
	_ = foo.Loader[int, int]
	_ = foo.Add[string, int]
	var s1 int = foo.Sum([]int{1, 2, 3})
	var s2 int = foo.Sum[int]([]int{1, 2, 3})
	var v1 int = foo.At([]int{1, 2, 3}, 1)
	var v2 int = foo.At[[]int]([]int{1, 2, 3}, 1)
	var v3 int = foo.At[[]int, int]([]int{1, 2, 3}, 1)
	var n1 int = foo.Add("hello", 1, 2, 3)
	var n2 int = foo.Add[string]("hello", 1, 2, 3)
	var n3 int = foo.Add[string, int]("hello", 1, 2, 3)
	var n4 int = foo.Add("hello", []int{1, 2, 3}...)
	var n5 int = foo.Add("hello", []int{1, 2, 3}...)
	var n6 int = foo.Add[string]("hello", foo.MyInts...)
	var n7 int = foo.Add[string, int]("hello", []int{1, 2, 3}...)
	var p1 *int = foo.Loader[*int](nil, 1)
	var p2 *int = foo.Loader[*int, int](nil, 1)
	var fn1 func(p1 *int, p2 int) *int
	fn1 = foo.Loader[*int, int]
	fn1(nil, 1)
}
`)
}

func testTypeParamsErrorInstantiate() {
	fmt.Println("=== testTypeParamsErrorInstantiate ===")
	const src = `package foo

type Number interface {
	~int | float64
}

func Sum[T Number](vec []T) T {
	var sum T
	for _, elt := range vec {
		sum = sum + elt
	}
	return sum
}

var	SumInt = Sum[int]
`
	gt := newGoxTest()
	_, err := gt.LoadGoPackage("foo", "foo.go", src)
	if err != nil {
		panic(err)
	}

	pkg := gt.NewPackage("", "main")
	pkgRef := pkg.Import("foo")
	fnSum := pkgRef.Ref("Sum")
	tyUint := types.Typ[types.Uint]

	var msg string
	switch runtime.Version()[:6] {
	case "go1.18":
		msg = `./foo.gop:5:40: uint does not implement foo.Number`
	case "go1.19":
		msg = `./foo.gop:5:40: uint does not implement foo.Number (uint missing in ~int | float64)`
	default:
		msg = `./foo.gop:5:40: uint does not satisfy foo.Number (uint missing in ~int | float64)`
	}
	codeErrorTestEx(pkg, msg, func(pkg *gogen.Package) {
		pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
			DefineVarStart(0, "sum").Val(fnSum).Typ(tyUint).Index(1, 0, source(`foo.Sum[uint]`, 5, 40)).EndInit(1).
			End()
	})
}

func testTypeParamsErrorMatch() {
	fmt.Println("=== testTypeParamsErrorMatch ===")
	const src = `package foo

func At[T interface{ ~[]E }, E any](x T, i int) E {
	return x[i]
}

var	AtInt = At[[]int]
`

	gt := newGoxTest()
	_, err := gt.LoadGoPackage("foo", "foo.go", src)
	if err != nil {
		panic(err)
	}

	pkg := gt.NewPackage("", "main")
	pkgRef := pkg.Import("foo")
	fnAt := pkgRef.Ref("At")
	tyAtInt := pkgRef.Ref("AtInt").Type()
	tyInt := types.Typ[types.Int]

	var msg string
	switch runtime.Version()[:6] {
	case "go1.18", "go1.19":
		msg = `./foo.gop:5:40: T does not match ~[]E`
	case "go1.20":
		msg = `./foo.gop:5:40: int does not match ~[]E`
	default:
		msg = `./foo.gop:5:40: T (type int) does not satisfy interface{~[]E}`
	}
	codeErrorTestEx(pkg, msg, func(pkg *gogen.Package) {
		pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
			NewVarStart(tyAtInt, "at").Val(fnAt).Typ(tyInt).Index(1, 0, source(`foo.At[int]`, 5, 40)).EndInit(1).
			End()
	})
}

func testTypeParamsErrInferFunc() {
	fmt.Println("=== testTypeParamsErrInferFunc ===")
	const src = `package foo

func Loader[T1 any, T2 any](p1 T1, p2 T2) T1 {
	return p1
}
`
	gt := newGoxTest()
	_, err := gt.LoadGoPackage("foo", "foo.go", src)
	if err != nil {
		panic(err)
	}
	pkg := gt.NewPackage("", "main")
	pkgRef := pkg.Import("foo")
	fnLoader := pkgRef.Ref("Loader")
	tyInt := types.Typ[types.Int]
	var msg string
	if isLeastGo(24) {
		msg = `./foo.gop:5:40: cannot infer T2 (declared at foo.go:3:21)`
	} else {
		msg = `./foo.gop:5:40: cannot infer T2 (foo.go:3:21)`
	}
	codeErrorTestEx(pkg, msg,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				DefineVarStart(0, "v1").Val(fnLoader).Typ(tyInt).Index(1, 0, source(`v1 := foo.Loader[int]`, 5, 40)).EndInit(1).
				End()
		})
}

func testTypeParamsErrArgumentsParameters1() {
	fmt.Println("=== testTypeParamsErrArgumentsParameters1 ===")
	const src = `package foo

type Data[T1 any, T2 any] struct {
	v1 T1
	v2 T2
}
`
	gt := newGoxTest()
	_, err := gt.LoadGoPackage("foo", "foo.go", src)
	if err != nil {
		panic(err)
	}
	pkg := gt.NewPackage("", "main")
	pkgRef := pkg.Import("foo")
	tyData := pkgRef.Ref("Data").Type()
	tyInt := types.Typ[types.Int]
	codeErrorTestEx(pkg, `./foo.gop:5:40: got 1 type arguments but foo.Data[T1, T2 any] has 2 type parameters`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				DefineVarStart(0, "v1").Typ(tyData).Typ(tyInt).Index(1, 0, source(`foo.Data[int]`, 5, 40)).Star().Val(nil).Call(1).EndInit(1).
				End()
		})
}

func testTypeParamsErrArgumentsParameters2() {
	fmt.Println("=== testTypeParamsErrArgumentsParameters2 ===")
	const src = `package foo

type Data[T1 any, T2 any] struct {
	v1 T1
	v2 T2
}
`
	gt := newGoxTest()
	_, err := gt.LoadGoPackage("foo", "foo.go", src)
	if err != nil {
		panic(err)
	}
	pkg := gt.NewPackage("", "main")
	pkgRef := pkg.Import("foo")
	tyData := pkgRef.Ref("Data").Type()
	tyInt := types.Typ[types.Int]
	codeErrorTestEx(pkg, `./foo.gop:5:40: got 3 type arguments but foo.Data[T1, T2 any] has 2 type parameters`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				DefineVarStart(0, "v1").Typ(tyData).Typ(tyInt).Typ(tyInt).Typ(tyInt).Index(3, 0, source(`foo.Data[int,int,int]`, 5, 40)).Star().Val(nil).Call(1).EndInit(1).
				End()
		})
}

func testTypeParamsErrArgumentsParameters3() {
	fmt.Println("=== testTypeParamsErrArgumentsParameters3 ===")
	const src = `package foo

func Test[T1 any, T2 any](t1 T1, t2 T2) {
	println(t1,t2)
}
`
	gt := newGoxTest()
	_, err := gt.LoadGoPackage("foo", "foo.go", src)
	if err != nil {
		panic(err)
	}
	pkg := gt.NewPackage("", "main")
	pkgRef := pkg.Import("foo")
	fnTest := pkgRef.Ref("Test")
	tyInt := types.Typ[types.Int]
	codeErrorTestEx(pkg, `./foo.gop:5:40: got 3 type arguments but func[T1, T2 any](t1 T1, t2 T2) has 2 type parameters`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val(fnTest).Typ(tyInt).Typ(tyInt).Typ(tyInt).Index(3, 0, source(`foo.Test[int,int,int]`, 5, 40)).Val(1).Val(1).Call(2).EndStmt().
				End()
		})
}

func testTypeParamsErrCallArguments1() {
	fmt.Println("=== testTypeParamsErrCallArguments1 ===")
	const src = `package foo

func Test[T1 any, T2 any](t1 T1, t2 T2) {
	println(t1,t2)
}
`
	gt := newGoxTest()
	_, err := gt.LoadGoPackage("foo", "foo.go", src)
	if err != nil {
		panic(err)
	}
	pkg := gt.NewPackage("", "main")
	pkgRef := pkg.Import("foo")
	fnTest := pkgRef.Ref("Test")
	codeErrorTestEx(pkg, `./foo.gop:5:40: not enough arguments in call to foo.Test
	have (untyped int)
	want (T1, T2)`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val(fnTest).Val(1).CallWith(1, 0, 0, source("foo.Test(1)", 5, 40)).EndStmt().
				End()
		})
}

func testTypeParamsErrCallArguments2() {
	fmt.Println("=== testTypeParamsErrCallArguments2 ===")
	const src = `package foo

func Test[T1 any, T2 any](t1 T1, t2 T2) {
	println(t1,t2)
}
`
	gt := newGoxTest()
	_, err := gt.LoadGoPackage("foo", "foo.go", src)
	if err != nil {
		panic(err)
	}
	pkg := gt.NewPackage("", "main")
	pkgRef := pkg.Import("foo")
	fnTest := pkgRef.Ref("Test")

	codeErrorTestEx(pkg, `./foo.gop:5:40: too many arguments in call to foo.Test
	have (untyped int, untyped int, untyped int)
	want (T1, T2)`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val(fnTest).Val(1).Val(2).Val(3).CallWith(3, 0, 0, source("foo.Test(1,2,3)", 5, 40)).EndStmt().
				End()
		})
}

func testTypeParamsErrCallArguments3() {
	fmt.Println("=== testTypeParamsErrCallArguments3 ===")
	const src = `package foo

func Test[T1 any, T2 any]() {
	var t1 T1
	var t2 T2
	println(t1,t2)
}
`
	gt := newGoxTest()
	_, err := gt.LoadGoPackage("foo", "foo.go", src)
	if err != nil {
		panic(err)
	}
	pkg := gt.NewPackage("", "main")
	pkgRef := pkg.Import("foo")
	fnTest := pkgRef.Ref("Test")
	codeErrorTestEx(pkg, `./foo.gop:5:40: too many arguments in call to foo.Test
	have (untyped int, untyped int)
	want ()`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val(fnTest).Val(1).Val(2).CallWith(2, 0, 0, source("foo.Test(1,2)", 5, 40)).EndStmt().
				End()
		})
}

func testTypeParamsErrCallVariadicArguments1() {
	fmt.Println("=== testTypeParamsErrCallVariadicArguments1 ===")
	const src = `package foo

func Add[T1 any, T2 ~int](v1 T1, v2 ...T2) (sum T2) {
	println(v1)
	for _, v := range v2 {
		sum += v
	}
	return sum
}
`
	gt := newGoxTest()
	_, err := gt.LoadGoPackage("foo", "foo.go", src)
	if err != nil {
		panic(err)
	}
	pkg := gt.NewPackage("", "main")
	pkgRef := pkg.Import("foo")
	fnAdd := pkgRef.Ref("Add")

	codeErrorTestEx(pkg, `./foo.gop:5:40: not enough arguments in call to foo.Add
	have ()
	want (T1, ...T2)`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val(fnAdd).CallWith(0, 0, 0, source("foo.Add()", 5, 40)).EndStmt().
				End()
		})
}

func testTypeParamsErrCallVariadicArguments2() {
	fmt.Println("=== testTypeParamsErrCallVariadicArguments2 ===")
	const src = `package foo

func Add[T1 any, T2 ~int](v1 T1, v2 ...T2) (sum T2) {
	println(v1)
	for _, v := range v2 {
		sum += v
	}
	return sum
}
`
	gt := newGoxTest()
	_, err := gt.LoadGoPackage("foo", "foo.go", src)
	if err != nil {
		panic(err)
	}
	pkg := gt.NewPackage("", "main")
	pkgRef := pkg.Import("foo")
	fnAdd := pkgRef.Ref("Add")

	codeErrorTestEx(pkg, `./foo.gop:5:40: cannot infer T2 (-)`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val(fnAdd).Val(1).CallWith(1, 0, 0, source("foo.Add(1)", 5, 40)).EndStmt().
				End()
		})
}

func testTypeParamsErrorCall() {
	fmt.Println("=== testTypeParamsErrorCall ===")
	const src = `package foo

type Number interface {
	~int | float64
}

func Sum[T Number](vec []T) T {
	var sum T
	for _, elt := range vec {
		sum = sum + elt
	}
	return sum
}
`
	gt := newGoxTest()
	_, err := gt.LoadGoPackage("foo", "foo.go", src)
	if err != nil {
		panic(err)
	}
	pkg := gt.NewPackage("", "main")
	pkgRef := pkg.Import("foo")
	fnSum := pkgRef.Ref("Sum")
	tyUint := types.Typ[types.Uint]
	tyUintSlice := types.NewSlice(tyUint)

	var msg string
	switch runtime.Version()[:6] {
	case "go1.18":
		msg = `./foo.gop:5:40: uint does not implement foo.Number`
	case "go1.19":
		msg = `./foo.gop:5:40: uint does not implement foo.Number (uint missing in ~int | float64)`
	default:
		msg = `./foo.gop:5:40: uint does not satisfy foo.Number (uint missing in ~int | float64)`
	}
	codeErrorTestEx(pkg, msg, func(pkg *gogen.Package) {
		pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
			Val(fnSum).Val(1).Val(2).Val(3).SliceLit(tyUintSlice, 3).CallWith(1, 0, 0, source(`foo.Sum([]uint{1,2,3})`, 5, 40)).EndInit(1).
			End()
	})
}

func testTypeParamsErrorInferCall() {
	fmt.Println("=== testTypeParamsErrorInferCall ===")
	const src = `package foo

func Loader[T1 any, T2 any](p1 T1, p2 T2) T1 {
	return p1
}
`
	gt := newGoxTest()
	_, err := gt.LoadGoPackage("foo", "foo.go", src)
	if err != nil {
		panic(err)
	}
	pkg := gt.NewPackage("", "main")
	pkgRef := pkg.Import("foo")
	fnLoader := pkgRef.Ref("Loader")
	tyInt := types.Typ[types.Int]
	var msg string
	if isLeastGo(24) {
		msg = `./foo.gop:5:40: cannot infer T2 (declared at foo.go:3:21)`
	} else {
		msg = `./foo.gop:5:40: cannot infer T2 (foo.go:3:21)`
	}
	codeErrorTestEx(pkg, msg,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val(fnLoader).Typ(tyInt).Index(1, 0, source(`foo.Loader[int]`, 5, 40)).Val(10).Val(nil).CallWith(2, 0, 0, source(`foo.Loader[int]`, 5, 40)).EndStmt().
				End()
		})
}

func testTypeParamErrGenericType() {
	fmt.Println("=== testTypeParamErrGenericType ===")
	const src = `package foo

type Data struct {
}
`
	gt := newGoxTest()
	_, err := gt.LoadGoPackage("foo", "foo.go", src)
	if err != nil {
		panic(err)
	}
	pkg := gt.NewPackage("", "main")
	pkgRef := pkg.Import("foo")
	tyData := pkgRef.Ref("Data").Type()
	tyInt := types.Typ[types.Int]
	codeErrorTestEx(pkg, `./foo.gop:5:40: foo.Data is not a generic type`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				DefineVarStart(0, "v1").Typ(tyData).Typ(tyInt).Index(1, 0, source(`foo.Data[int]`, 5, 40)).Star().Val(nil).Call(1).EndInit(1).
				End()
		})
}

func testTypeParamErrGenericType2() {
	fmt.Println("=== testTypeParamErrGenericType2 ===")
	gt := newGoxTest()
	pkg := gt.NewPackage("", "main")
	tyInt := types.Typ[types.Int]
	tyString := types.Typ[types.String]

	codeErrorTestEx(pkg, `./foo.gop:5:40: string is not a generic type`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				DefineVarStart(0, "v1").Typ(tyString).Typ(tyInt).Index(1, 0, source(`string[int]`, 5, 40)).Star().Val(nil).Call(1).EndInit(1).
				End()
		})
}

func testTypeParamErrGenericFunc() {
	fmt.Println("=== testTypeParamErrGenericFunc ===")
	const src = `package foo

func Loader(n int) string {
	return ""
}
`
	gt := newGoxTest()
	_, err := gt.LoadGoPackage("foo", "foo.go", src)
	if err != nil {
		panic(err)
	}
	pkg := gt.NewPackage("", "main")
	pkgRef := pkg.Import("foo")
	fnLoader := pkgRef.Ref("Loader")
	tyInt := types.Typ[types.Int]

	codeErrorTestEx(pkg, `./foo.gop:5:40: invalid operation: cannot index foo.Loader (value of type func(n int) string)`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				DefineVarStart(0, "v1").Val(fnLoader).Typ(tyInt).Index(1, 0, source(`v1 := foo.Loader[int]`, 5, 40)).EndInit(1).
				End()
		})
}

func testGenTypeParamsFunc() {
	fmt.Println("=== testGenTypeParamsFunc ===")
	pkg := newMainPackage()
	ut1 := types.NewUnion([]*types.Term{
		types.NewTerm(true, types.Typ[types.Int]),
		types.NewTerm(false, types.Typ[types.Uint]),
	})
	ut2 := types.NewUnion([]*types.Term{types.NewTerm(true, types.Typ[types.Int])})
	it := pkg.NewType("T").InitType(pkg, types.NewInterfaceType(nil, []types.Type{ut1}))
	tp1 := types.NewTypeParam(types.NewTypeName(token.NoPos, pkg.Types, "T1", nil), types.Universe.Lookup("any").Type())
	tp2 := types.NewTypeParam(types.NewTypeName(token.NoPos, pkg.Types, "T2", nil), ut2)
	tp3 := types.NewTypeParam(types.NewTypeName(token.NoPos, pkg.Types, "T3", nil), it)
	p1 := types.NewParam(token.NoPos, pkg.Types, "p1", tp1)
	p2 := types.NewParam(token.NoPos, pkg.Types, "p2", tp2)
	p3 := types.NewParam(token.NoPos, pkg.Types, "p3", tp3)
	sig := types.NewSignatureType(nil, nil, []*types.TypeParam{tp1, tp2, tp3}, types.NewTuple(p1, p2, p3), nil, false)
	fn1 := pkg.NewFuncDecl(token.NoPos, "test", sig)
	fn1.BodyStart(pkg).End()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		Val(fn1).Val("hello").Val(100).Val(200).Call(3).EndStmt().
		Val(fn1).Typ(types.Typ[types.String]).Typ(types.Typ[types.Int]).Typ(types.Typ[types.Uint]).Index(3, 0).Val("hello").Val(100).Val(200).Call(3).EndStmt().
		Val(fn1).Typ(types.Typ[types.String]).Typ(types.Typ[types.Int]).Index(2, 0).Val("hello").Val(100).Val(200).Call(3).EndStmt().
		Val(fn1).Typ(types.Typ[types.String]).Index(1, 0).Val("hello").Val(100).Val(200).Call(3).EndStmt().
		End()

	domTest(pkg, `package main

type T interface {
	~int | uint
}

func test[T1 any, T2 ~int, T3 T](p1 T1, p2 T2, p3 T3) {
}
func main() {
	test("hello", 100, 200)
	test[string, int, uint]("hello", 100, 200)
	test[string, int]("hello", 100, 200)
	test[string]("hello", 100, 200)
}
`)
}

func testGenTypeParamsType() {
	fmt.Println("=== testGenTypeParamsType ===")
	pkg := newMainPackage()
	ut := types.NewUnion([]*types.Term{
		types.NewTerm(true, types.Typ[types.Int]),
		types.NewTerm(false, types.Typ[types.Uint]),
	})
	it := pkg.NewType("T").InitType(pkg, types.NewInterfaceType(nil, []types.Type{ut}))

	mp1 := types.NewTypeParam(types.NewTypeName(token.NoPos, pkg.Types, "T", nil), ut)
	mp2 := types.NewTypeParam(types.NewTypeName(token.NoPos, pkg.Types, "T", nil), ut)
	mt1 := pkg.NewType("M").InitType(pkg, types.NewStruct(nil, nil), mp1)
	msig1 := types.NewSignatureType(types.NewVar(token.NoPos, pkg.Types, "m1", types.NewPointer(mt1)), []*types.TypeParam{mp2}, nil, nil, nil, false)
	mfn1 := pkg.NewFuncDecl(token.NoPos, "test", msig1)
	mfn1.BodyStart(pkg).End()

	sp1 := types.NewTypeParam(types.NewTypeName(token.NoPos, pkg.Types, "T1", nil), types.Universe.Lookup("any").Type())
	sp2 := types.NewTypeParam(types.NewTypeName(token.NoPos, pkg.Types, "T2", nil), ut)
	sp3 := types.NewTypeParam(types.NewTypeName(token.NoPos, pkg.Types, "T3", nil), it)

	st := types.NewStruct([]*types.Var{
		types.NewField(token.NoPos, pkg.Types, "f1", sp1, false),
		types.NewField(token.NoPos, pkg.Types, "f2", sp2, false),
		types.NewField(token.NoPos, pkg.Types, "f3", sp3, false),
	}, nil)
	named := pkg.NewType("S").InitType(pkg, st, sp1, sp2, sp3)

	tp1 := types.NewTypeParam(types.NewTypeName(token.NoPos, pkg.Types, "T1", nil), types.Universe.Lookup("any").Type())
	tp2 := types.NewTypeParam(types.NewTypeName(token.NoPos, pkg.Types, "T2", nil), ut)
	tp3 := types.NewTypeParam(types.NewTypeName(token.NoPos, pkg.Types, "T3", nil), it)
	p1 := types.NewParam(token.NoPos, pkg.Types, "p1", tp1)
	p2 := types.NewParam(token.NoPos, pkg.Types, "p2", tp2)
	p3 := types.NewParam(token.NoPos, pkg.Types, "p3", tp3)

	sig := types.NewSignatureType(
		types.NewVar(token.NoPos, pkg.Types, "r1", types.NewPointer(named)),
		[]*types.TypeParam{tp1, tp2, tp3},
		nil,
		types.NewTuple(p1, p2, p3),
		nil,
		false,
	)
	fn1 := pkg.NewFuncDecl(token.NoPos, "test", sig)
	fn1.BodyStart(pkg).End()

	inst, err := types.Instantiate(nil, named, []types.Type{
		types.Typ[types.String],
		types.Typ[types.Int],
		types.Typ[types.Uint],
	}, true)
	if err != nil {
		panic(err)
	}
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		DefineVarStart(token.NoPos, "s").StructLit(inst, 0, false).UnaryOp(token.AND).EndInit(1).
		Val(ctxRef(pkg, "s")).MemberVal("test", 0).Val("hello").Val(100).Val(200).Call(3, false).EndStmt().
		Val(pkg.Builtin().Ref("println")).Val(ctxRef(pkg, "s")).MemberVal("f1", 0).Call(1, false).EndStmt().
		End()

	domTest(pkg, `package main

type T interface {
	~int | uint
}
type M[T ~int | uint] struct {
}

func (m1 *M[T]) test() {
}

type S[T1 any, T2 ~int | uint, T3 T] struct {
	f1 T1
	f2 T2
	f3 T3
}

func (r1 *S[T1, T2, T3]) test(p1 T1, p2 T2, p3 T3) {
}
func main() {
	s := &S[string, int, uint]{}
	s.test("hello", 100, 200)
	println(s.f1)
}
`)
}

func testTypeParamsArgumentsSignature() {
	fmt.Println("=== testTypeParamsArgumentsSignature ===")
	const src = `package foo

import "fmt"

func ListMap[X any, T any](x X, ar []T, fn func(v T) T, dump func(i int,x X, v T)) {
	for i, v := range ar {
		ar[i] = fn(v)
		dump(i, x, ar[i])
	}
}

func ListMapv[X any, T any](x X, ar []T, fn func(v T) T, dump ...func(i int,x X, v T)) {
	for i, v := range ar {
		ar[i] = fn(v)
		dump[0](i, x, ar[i])
	}
}


func Add[N ~int](x N) N {
	return x+x
}

func Dump[N any, X any, Y any](i N, x X, y Y) {
	fmt.Println(i, x, y)
}

func Dump2[X any, Y any](i int, x X, y Y) {
	fmt.Println(i, x, y)
}

var Numbers = []int{1,2,3,4}
`
	gt := newGoxTest()
	_, err := gt.LoadGoPackage("foo", "foo.go", src)
	if err != nil {
		panic(err)
	}
	pkg := gt.NewPackage("", "main")
	fooRef := pkg.Import("foo")
	pkg.NewFunc(nil, "_", nil, nil, false).BodyStart(pkg).
		Val(fooRef.Ref("ListMap")).
		Val(100).Val(fooRef.Ref("Numbers")).Val(fooRef.Ref("Add")).Val(fooRef.Ref("Dump")).
		Call(4).EndStmt().
		Val(fooRef.Ref("ListMap")).
		Val("a").Val(fooRef.Ref("Numbers")).Val(fooRef.Ref("Add")).Val(fooRef.Ref("Dump")).
		Typ(types.Typ[types.Int]).Index(1, 0).
		Call(4).EndStmt().
		Val(fooRef.Ref("ListMap")).
		Val("a").Val(fooRef.Ref("Numbers")).Val(fooRef.Ref("Add")).Val(fooRef.Ref("Dump2")).
		Call(4).EndStmt().
		End()
	pkg.NewFunc(nil, "_", nil, nil, false).BodyStart(pkg).
		Val(fooRef.Ref("ListMapv")).
		Val(100).Val(fooRef.Ref("Numbers")).Val(fooRef.Ref("Add")).Val(fooRef.Ref("Dump")).
		Val(fooRef.Ref("Dump")).
		Typ(types.Typ[types.Int]).Index(1, 0).
		Val(fooRef.Ref("Dump2")).
		Call(6, false).EndStmt().
		Val(fooRef.Ref("ListMapv")).
		Val("a").Val(fooRef.Ref("Numbers")).Val(fooRef.Ref("Add")).Val(fooRef.Ref("Dump")).
		Val(fooRef.Ref("Dump")).
		Typ(types.Typ[types.Int]).Index(1, 0).
		Val(fooRef.Ref("Dump2")).
		Call(6, false).EndStmt().
		End()
	domTest(pkg, `package main

import "foo"

func _() {
	foo.ListMap(100, foo.Numbers, foo.Add[int], foo.Dump[int, int, int])
	foo.ListMap("a", foo.Numbers, foo.Add[int], foo.Dump[int, string, int])
	foo.ListMap("a", foo.Numbers, foo.Add[int], foo.Dump2[string, int])
}
func _() {
	foo.ListMapv(100, foo.Numbers, foo.Add[int], foo.Dump[int, int, int], foo.Dump[int, int, int], foo.Dump2[int, int])
	foo.ListMapv("a", foo.Numbers, foo.Add[int], foo.Dump[int, string, int], foo.Dump[int, string, int], foo.Dump2[string, int])
}
`)
}

func testAliasTypeParams() {
	fmt.Println("=== testAliasTypeParams ===")
	if !isLeastGo(24) {
		fmt.Println("  [SKIP] requires go1.24+")
		return
	}
	_ = os.Setenv("GODEBUG", "gotypesalias=1")
	const src = `package foo

type Set[T comparable] = map[T]int
`
	gt := newGoxTest()
	_, err := gt.LoadGoPackage("foo", "foo.go", src)
	if err != nil {
		panic(err)
	}
	pkg := gt.NewPackageEx("", "main", &gogen.Config{
		Fset: gt.fset, Importer: gt.imp, EnableTypesalias: true,
	})
	fooRef := pkg.Import("foo")
	fmtRef := pkg.Import("fmt")
	set := pkg.Instantiate(fooRef.Ref("Set").Type(), []types.Type{types.Typ[types.String]})
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		DefineVarStart(token.NoPos, "mset").
		Val(&ast.BasicLit{Kind: token.STRING, Value: `"hello"`}).Val(1).
		Val(&ast.BasicLit{Kind: token.STRING, Value: `"world"`}).Val(2).
		MapLit(set, 4).EndInit(1).
		Val(fmtRef.Ref("Println")).Val(ctxRef(pkg, "mset")).Call(1).EndStmt().
		End()
	domTest(pkg, `package main

import (
	"fmt"
	"foo"
)

func main() {
	mset := foo.Set[string]{"hello": 1, "world": 2}
	fmt.Println(mset)
}
`)
}

func main() {
	fmt.Println("Running typeparams_test tests (batch6: 27 cases)...")
	fmt.Println()

	testMethodToFunc()
	fmt.Println("  [PASS]")
	fmt.Println()

	testTypeAsParamsFunc()
	fmt.Println("  [PASS]")
	fmt.Println()

	testCheckXGoPkg()
	fmt.Println("  [PASS]")
	fmt.Println()

	testOverloadNamed()
	fmt.Println("  [PASS]")
	fmt.Println()

	testInstantiate()
	fmt.Println("  [PASS]")
	fmt.Println()

	testTypeParamsType()
	fmt.Println("  [PASS]")
	fmt.Println()

	testTypeParamsFunc()
	fmt.Println("  [PASS]")
	fmt.Println()

	testTypeParamsErrorInstantiate()
	fmt.Println("  [PASS]")
	fmt.Println()

	testTypeParamsErrorMatch()
	fmt.Println("  [PASS]")
	fmt.Println()

	testTypeParamsErrInferFunc()
	fmt.Println("  [PASS]")
	fmt.Println()

	testTypeParamsErrArgumentsParameters1()
	fmt.Println("  [PASS]")
	fmt.Println()

	testTypeParamsErrArgumentsParameters2()
	fmt.Println("  [PASS]")
	fmt.Println()

	testTypeParamsErrArgumentsParameters3()
	fmt.Println("  [PASS]")
	fmt.Println()

	testTypeParamsErrCallArguments1()
	fmt.Println("  [PASS]")
	fmt.Println()

	testTypeParamsErrCallArguments2()
	fmt.Println("  [PASS]")
	fmt.Println()

	testTypeParamsErrCallArguments3()
	fmt.Println("  [PASS]")
	fmt.Println()

	testTypeParamsErrCallVariadicArguments1()
	fmt.Println("  [PASS]")
	fmt.Println()

	testTypeParamsErrCallVariadicArguments2()
	fmt.Println("  [PASS]")
	fmt.Println()

	testTypeParamsErrorCall()
	fmt.Println("  [PASS]")
	fmt.Println()

	testTypeParamsErrorInferCall()
	fmt.Println("  [PASS]")
	fmt.Println()

	testTypeParamErrGenericType()
	fmt.Println("  [PASS]")
	fmt.Println()

	testTypeParamErrGenericType2()
	fmt.Println("  [PASS]")
	fmt.Println()

	testTypeParamErrGenericFunc()
	fmt.Println("  [PASS]")
	fmt.Println()

	testGenTypeParamsFunc()
	fmt.Println("  [PASS]")
	fmt.Println()

	testGenTypeParamsType()
	fmt.Println("  [PASS]")
	fmt.Println()

	testTypeParamsArgumentsSignature()
	fmt.Println("  [PASS]")
	fmt.Println()

	testAliasTypeParams()
	fmt.Println("  [PASS]")
	fmt.Println()

	fmt.Println("All tests PASSED!")
}
