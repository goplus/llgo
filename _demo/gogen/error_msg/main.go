// Converted from error_msg_test.go for llgo testing
// Batch 1: 5 cases (TestErrIf/TestErrSwitch/TestErrTypeRedefined/TestErrTypeSwitch/TestErrAssignOp)
package main

import (
	"bytes"
	"fmt"
	"go/ast"
	"go/parser"
	"go/token"
	"go/types"
	"path/filepath"
	"runtime"
	"strconv"
	"strings"
	"sync"

	"github.com/goplus/gogen"
	"github.com/goplus/gogen/packages"
	xtoken "github.com/goplus/gogen/token"
)

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
	gblFset       *token.FileSet
	gblImp        types.Importer
	handleErr     func(err error)
)

const (
	posBits = 16
	posMask = (1 << posBits) - 1
)

func init() {
	gblFset = token.NewFileSet()
	gblImp = packages.NewImporter(gblFset)
}

// source creates an ast.Node carrying optional position information.
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

func (p nodeInterp) Caller(node ast.Node) string {
	t := node.(*txtNode)
	idx := strings.Index(t.Msg, "(")
	if idx > 0 {
		return t.Msg[:idx]
	}
	return t.Msg
}

func (p nodeInterp) LoadExpr(node ast.Node) string {
	t := node.(*txtNode)
	return t.Msg
}

type eventRecorder struct{}

func (p eventRecorder) Member(id ast.Node, obj types.Object) {}
func (p eventRecorder) Call(fn ast.Node, obj types.Object)   {}

func newMainPackage() *gogen.Package {
	conf := &gogen.Config{
		Fset:            gblFset,
		Importer:        gblImp,
		Recorder:        eventRecorder{},
		NodeInterpreter: nodeInterp{},
		DbgPositioner:   nodeInterp{},
	}
	if handleErr != nil {
		conf.HandleErr = handleErr
		handleErr = nil
	}
	return gogen.NewPackage("", "main", conf)
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

func newFunc(
	pkg *gogen.Package, line, column int, rline, rcolumn int,
	recv *gogen.Param, name string, params, results *types.Tuple, variadic bool) *gogen.Func {
	pos := position(line, column)
	fn, err := pkg.NewFuncWith(
		pos, name, types.NewSignatureType(recv, nil, nil, params, results, variadic), func() token.Pos {
			return position(rline, rcolumn)
		})
	if err != nil {
		panic(err)
	}
	return fn
}

func testErrIf() {
	fmt.Println("=== testErrIf ===")
	codeErrorTest("./foo.gop:1:3: non-boolean condition in if statement",
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				If().Val(1, source("1", 1, 3)).Then(source("1", 1, 3)).
				End()
		})
}

func testErrSwitch() {
	fmt.Println("=== testErrSwitch ===")
	codeErrorTest("./foo.gop:2:5: cannot use 1 (type untyped int) as type string",
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Switch().Val(`"x"`, source("x", 1, 3)).Then().
				Case().Val(1, source("1", 2, 5)).Val(2).Then().
				End().
				End()
		})
	codeErrorTest("./foo.gop:2:5: cannot use 1 (type untyped int) as type bool",
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Switch().None().Then().
				Case().Val(1, source("1", 2, 5)).Val(2).Then().
				End().
				End()
		})
}

func testErrTypeRedefined() {
	fmt.Println("=== testErrTypeRedefined ===")
	codeErrorTest("./foo.gop:2:5: foo redeclared in this block\n\tprevious declaration at ./foo.gop:1:5", func(pkg *gogen.Package) {
		typ := pkg.NewType("foo", source("foo", 1, 5))
		if typ.Inited() {
			panic("NewType failed: inited?")
		}
		pkg.NewType("foo", source("foo", 2, 5))
	})
}

func testErrTypeSwitch() {
	fmt.Println("=== testErrTypeSwitch ===")
	codeErrorTest("./foo.gop:2:9: impossible type switch case: v (type interface{Bar()}) cannot have dynamic type int (missing Bar method)",
		func(pkg *gogen.Package) {
			methods := []*types.Func{
				types.NewFunc(token.NoPos, pkg.Types, "Bar", types.NewSignatureType(nil, nil, nil, nil, nil, false)),
			}
			tyInterf := types.NewInterfaceType(methods, nil).Complete()
			v := pkg.NewParam(token.NoPos, "v", tyInterf)
			pkg.NewFunc(nil, "foo", types.NewTuple(v), nil, false).BodyStart(pkg).
				TypeSwitch("t").Val(v, source("v", 1, 5)).TypeAssertThen().
				TypeCase().Typ(types.Typ[types.Int], source("int", 2, 9)).Then().
				End().
				End()
		})
	codeErrorTest("./foo.gop:2:9: 1 (type untyped int) is not a type",
		func(pkg *gogen.Package) {
			v := pkg.NewParam(token.NoPos, "v", gogen.TyEmptyInterface)
			pkg.NewFunc(nil, "foo", types.NewTuple(v), nil, false).BodyStart(pkg).
				TypeSwitch("t").Val(v).TypeAssertThen().
				TypeCase().Val(1, source("1", 2, 9)).Then().
				End().
				End()
		})
}

func testErrAssignOp() {
	fmt.Println("=== testErrAssignOp ===")
	codeErrorTest(`boundType untyped int => string failed`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(types.Typ[types.String], "a").
				VarRef(ctxRef(pkg, "a"), source("a")).Val(10).AssignOp(token.ADD_ASSIGN).
				End()
		})
}

func testErrBinaryOp() {
	fmt.Println("=== testErrBinaryOp ===")
	codeErrorTest(`-: invalid operation: * (mismatched types int and float64)`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(types.Typ[types.Int], "a").
				NewVar(types.Typ[types.Float64], "b").
				VarVal("a").VarVal("b").BinaryOp(token.MUL).EndStmt().
				End()
		})
	codeErrorTest(`./foo.gop:2:9: invalid operation: a * b (mismatched types int and float64)`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(types.Typ[types.Int], "a").
				NewVar(types.Typ[types.Float64], "b").
				VarVal("a").VarVal("b").BinaryOp(token.MUL, source(`a * b`, 2, 9)).EndStmt().
				End()
		})
	codeErrorTest(`./foo.gop:2:9: invalid operation: v != 3 (mismatched types interface{Bar()} and untyped int)`,
		func(pkg *gogen.Package) {
			methods := []*types.Func{
				types.NewFunc(token.NoPos, pkg.Types, "Bar", types.NewSignatureType(nil, nil, nil, nil, nil, false)),
			}
			tyInterf := types.NewInterfaceType(methods, nil).Complete()
			params := types.NewTuple(pkg.NewParam(token.NoPos, "v", tyInterf))
			pkg.NewFunc(nil, "foo", params, nil, false).BodyStart(pkg).
				If().VarVal("v").Val(3).BinaryOp(token.NEQ, source(`v != 3`, 2, 9)).Then().
				End().
				End()
		})
	codeErrorTest(`./foo.gop:2:9: invalid operation: sl == v (mismatched types []int and interface{Bar()})`,
		func(pkg *gogen.Package) {
			methods := []*types.Func{
				types.NewFunc(token.NoPos, pkg.Types, "Bar", types.NewSignatureType(nil, nil, nil, nil, nil, false)),
			}
			tyInterf := types.NewInterfaceType(methods, nil).Complete()
			params := types.NewTuple(pkg.NewParam(token.NoPos, "v", tyInterf))
			pkg.NewFunc(nil, "foo", params, nil, false).BodyStart(pkg).
				NewVar(types.NewSlice(types.Typ[types.Int]), "sl").
				If().Val(ctxRef(pkg, "sl")).VarVal("v").BinaryOp(token.EQL, source(`sl == v`, 2, 9)).Then().
				End().
				End()
		})
	codeErrorTest(`./foo.gop:2:9: invalid operation: 3 == "Hi" (mismatched types untyped int and untyped string)`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				If().Val(3).Val("Hi").BinaryOp(token.EQL, source(`3 == "Hi"`, 2, 9)).Then().
				End().
				End()
		})
}

func testErrShiftString() {
	fmt.Println("=== testErrShiftString ===")
	codeErrorTest(`invalid shift count: cannot convert type untyped string to type uint`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val(1).Val("12").BinaryOp(token.SHL).EndStmt().
				End()
		})
}

func testErrBinaryOp2() {
	fmt.Println("=== testErrBinaryOp2 ===")
	codeErrorTest(`-: invalid operation: operator <> not defined on a (int)`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(types.Typ[types.Int], "a").
				NewVar(types.Typ[types.Int], "b").
				VarVal("a", source("a")).VarVal("b").BinaryOp(xtoken.BIDIARROW).EndStmt().
				End()
		})
}

func testErrTypeAssert() {
	fmt.Println("=== testErrTypeAssert ===")
	codeErrorTest("./foo.gop:2:9: impossible type assertion:\n\tstring does not implement bar (missing Bar method)",
		func(pkg *gogen.Package) {
			methods := []*types.Func{
				types.NewFunc(token.NoPos, pkg.Types, "Bar", types.NewSignatureType(nil, nil, nil, nil, nil, false)),
			}
			tyInterf := types.NewInterfaceType(methods, nil).Complete()
			bar := pkg.NewType("bar").InitType(pkg, tyInterf)
			params := types.NewTuple(pkg.NewParam(token.NoPos, "v", bar))
			pkg.NewFunc(nil, "foo", params, nil, false).BodyStart(pkg).
				DefineVarStart(0, "x").VarVal("v").
				TypeAssert(types.Typ[types.String], 0, source("v.(string)", 2, 9)).EndInit(1).
				End()
		})
	codeErrorTest("./foo.gop:2:9: invalid type assertion: v.(string) (non-interface type int on left)",
		func(pkg *gogen.Package) {
			params := types.NewTuple(pkg.NewParam(token.NoPos, "v", types.Typ[types.Int]))
			pkg.NewFunc(nil, "foo", params, nil, false).BodyStart(pkg).
				DefineVarStart(0, "x").VarVal("v").
				TypeAssert(types.Typ[types.String], 0, source("v.(string)", 2, 9)).EndInit(1).
				End()
		})
}

func testErrConst() {
	fmt.Println("=== testErrConst ===")
	codeErrorTest("./foo.gop:2:9: cannot use 1 (type untyped int) as type string in assignment",
		func(pkg *gogen.Package) {
			pkg.NewConstStart(pkg.Types.Scope(), position(2, 7), types.Typ[types.String], "a").Val(1, source("1", 2, 9)).EndInit(1)
		})
	codeErrorTest("./foo.gop:2:7: missing value in const declaration",
		func(pkg *gogen.Package) {
			pkg.NewConstStart(pkg.Types.Scope(), position(2, 7), nil, "a", "b").Val(1).EndInit(1)
		})
	codeErrorTest("./foo.gop:2:7: extra expression in const declaration",
		func(pkg *gogen.Package) {
			pkg.NewConstStart(pkg.Types.Scope(), position(2, 7), nil, "a").Val(1).Val(2).EndInit(2)
		})
	codeErrorTest("./foo.gop:2:7: a redeclared in this block\n\tprevious declaration at ./foo.gop:1:5",
		func(pkg *gogen.Package) {
			pkg.NewVarStart(position(1, 5), nil, "a").Val(1).EndInit(1)
			pkg.NewConstStart(pkg.Types.Scope(), position(2, 7), nil, "a").Val(2).EndInit(1)
		})
	codeErrorTest("./foo.gop:2:7: a redeclared in this block\n\tprevious declaration at ./foo.gop:1:5",
		func(pkg *gogen.Package) {
			scope := pkg.Types.Scope()
			pkg.NewConstStart(scope, position(1, 5), nil, "a").Val(2).EndInit(1)
			pkg.NewVarDefs(scope).New(position(2, 7), types.Typ[types.Int], "a").InitStart(pkg).Val(1).EndInit(1)
		})
	codeErrorTest("./foo.gop:2:7: const initializer len(a) is not a constant",
		func(pkg *gogen.Package) {
			pkg.NewVar(position(1, 5), types.NewSlice(types.Typ[types.Int]), "a")
			pkg.NewConstStart(pkg.Types.Scope(), position(2, 7), nil, "b").
				Val(ctxRef(pkg, "len")).VarVal("a").CallWith(1, 0, 0, source("len(a)", 2, 10)).EndInit(1)
		})
	codeErrorTest("./foo.gop:2:9: a redeclared in this block\n\tprevious declaration at ./foo.gop:1:5",
		func(pkg *gogen.Package) {
			pkg.NewVarStart(position(1, 5), nil, "a").Val(1).EndInit(1)
			pkg.NewConstDefs(pkg.Types.Scope()).
				New(func(cb *gogen.CodeBuilder) int {
					cb.Val(2)
					return 1
				}, 0, position(2, 7), nil, "_").
				Next(1, position(2, 9), "a")
		})
	codeErrorTest("./foo.gop:2:9: extra expression in const declaration",
		func(pkg *gogen.Package) {
			pkg.NewConstDefs(pkg.Types.Scope()).
				New(func(cb *gogen.CodeBuilder) int {
					cb.Val(2)
					cb.Val(ctxRef(pkg, "iota"))
					return 2
				}, 0, position(2, 7), nil, "a", "b").
				Next(1, position(2, 9), "c")
		})
	codeErrorTest("./foo.gop:2:9: missing value in const declaration",
		func(pkg *gogen.Package) {
			pkg.NewConstDefs(pkg.Types.Scope()).
				New(func(cb *gogen.CodeBuilder) int {
					cb.Val(2)
					cb.Val(ctxRef(pkg, "iota"))
					return 2
				}, 0, position(2, 7), nil, "a", "b").
				Next(1, position(2, 9), "c", "d", "e")
		})
}

func testErrNewVar() {
	fmt.Println("=== testErrNewVar ===")
	codeErrorTest("./foo.gop:2:6: foo redeclared in this block\n\tprevious declaration at ./foo.gop:1:5",
		func(pkg *gogen.Package) {
			var x *types.Var
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewAutoVar(position(1, 5), position(1, 5), "foo", &x).
				NewAutoVar(position(2, 6), position(2, 6), "foo", &x).
				End()
		})
	codeErrorTest("./foo.gop:2:9: cannot use 1 (type untyped int) as type string in assignment",
		func(pkg *gogen.Package) {
			pkg.NewVarStart(position(2, 7), types.Typ[types.String], "a").Val(1, source("1", 2, 9)).EndInit(1)
		})
	codeErrorTest("./foo.gop:2:7: assignment mismatch: 1 variables but fmt.Println returns 2 values",
		func(pkg *gogen.Package) {
			fmtPkg := pkg.Import("fmt")
			pkg.NewVarStart(position(2, 7), nil, "a").
				Val(fmtPkg.Ref("Println")).Val(2).CallWith(1, 0, 0, source("fmt.Println(2)", 2, 11)).EndInit(1)
		})
	codeErrorTest("./foo.gop:2:7: assignment mismatch: 1 variables but 2 values",
		func(pkg *gogen.Package) {
			pkg.NewVarStart(position(2, 7), nil, "a").Val(1).Val(2).EndInit(2)
		})
	codeErrorTest("./foo.gop:2:7: assignment mismatch: 2 variables but 1 values",
		func(pkg *gogen.Package) {
			pkg.NewVarStart(position(2, 7), nil, "a", "b").Val(2).EndInit(1)
		})
	codeErrorTest("./foo.gop:2:7: a redeclared in this block\n\tprevious declaration at ./foo.gop:1:5",
		func(pkg *gogen.Package) {
			pkg.NewVarStart(position(1, 5), nil, "a").Val(1).EndInit(1)
			pkg.NewVarStart(position(2, 7), nil, "a").Val(2).EndInit(1)
		})
}

func testErrDefineVar() {
	fmt.Println("=== testErrDefineVar ===")
	handleErr = func(err error) {
		if err.Error() != "./foo.gop:2:1: no new variables on left side of :=" {
			panic(fmt.Sprintf("testErrDefineVar handleErr: %v", err))
		}
	}
	codeErrorTest(`./foo.gop:2:6: cannot use "Hi" (type untyped string) as type int in assignment`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				DefineVarStart(0, "foo").Val(1).EndInit(1).
				DefineVarStart(position(2, 1), "foo").Val("Hi", source(`"Hi"`, 2, 6)).EndInit(1).
				End()
		})
}

func testErrForRange() {
	fmt.Println("=== testErrForRange ===")
	codeErrorTest(`./foo.gop:1:17: can't use return/continue/break/goto in for range of udt.XGo_Enum(callback)`,
		func(pkg *gogen.Package) {
			foo := pkg.Import("github.com/goplus/gogen/internal/foo")
			bar := foo.Ref("Foo2").Type()
			v := pkg.NewParam(token.NoPos, "v", types.NewPointer(bar))
			pkg.NewFunc(nil, "foo", types.NewTuple(v), nil, false).BodyStart(pkg).
				ForRange("a", "b").
				Val(v, source("v", 1, 9)).
				RangeAssignThen(position(1, 17)).
				Return(0).
				End().
				End()
		})
	codeErrorTest(`./foo.gop:1:17: cannot range over v (type *github.com/goplus/gogen/internal/foo.Foo4)`,
		func(pkg *gogen.Package) {
			foo := pkg.Import("github.com/goplus/gogen/internal/foo")
			bar := foo.Ref("Foo4").Type()
			v := pkg.NewParam(token.NoPos, "v", types.NewPointer(bar))
			pkg.NewFunc(nil, "foo", types.NewTuple(v), nil, false).BodyStart(pkg).
				ForRange().
				Val(v, source("v", 1, 9)).
				RangeAssignThen(position(1, 17)).
				End().
				End()
		})
	codeErrorTest(`./foo.gop:1:17: cannot range over v (type *github.com/goplus/gogen/internal/foo.Foo3)`,
		func(pkg *gogen.Package) {
			foo := pkg.Import("github.com/goplus/gogen/internal/foo")
			bar := foo.Ref("Foo3").Type()
			v := pkg.NewParam(token.NoPos, "v", types.NewPointer(bar))
			pkg.NewFunc(nil, "foo", types.NewTuple(v), nil, false).BodyStart(pkg).
				ForRange("a", "b").
				Val(v, source("v", 1, 9)).
				RangeAssignThen(position(1, 17)).
				End().
				End()
		})
	codeErrorTest(`./foo.gop:1:17: cannot range over 13 (type untyped int)`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				ForRange("a", "b").
				Val(13, source("13", 1, 9)).
				RangeAssignThen(position(1, 17)).
				End().
				End()
		})
	codeErrorTest(`./foo.gop:1:17: cannot range over 13 (type untyped int)`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(types.Typ[types.Int], "a").
				ForRange().
				VarRef(ctxRef(pkg, "a")).
				Val(13, source("13", 1, 9)).
				RangeAssignThen(position(1, 17)).
				End().
				End()
		})
	codeErrorTest(`./foo.gop:1:17: too many variables in range`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(types.Typ[types.Int], "a", "b", "c").
				ForRange().
				VarRef(ctxRef(pkg, "a")).
				VarRef(ctxRef(pkg, "b")).
				VarRef(ctxRef(pkg, "c")).
				Val("Hello").
				RangeAssignThen(position(1, 17)).
				End().
				End()
		})
	codeErrorTest(`./foo.gop:1:17: too many variables in range`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				ForRange("a", "b", "c").
				Val("Hello").
				RangeAssignThen(position(1, 17)).
				End().
				End()
		})
	codeErrorTest(`./foo.gop:1:5: cannot assign type string to a (type int) in range`,
		func(pkg *gogen.Package) {
			tySlice := types.NewSlice(types.Typ[types.String])
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				DefineVarStart(0, "a").Val(1).EndInit(1).
				NewVar(tySlice, "b").
				ForRange().
				VarRef(nil).
				VarRef(ctxRef(pkg, "a"), source("a", 1, 5)).
				Val(ctxRef(pkg, "b"), source("b", 1, 9)).
				RangeAssignThen(token.NoPos).
				End().
				End()
		})
}

func testErrAssign() {
	fmt.Println("=== testErrAssign ===")
	codeErrorTest("./foo.gop:1:3: assignment mismatch: 1 variables but bar returns 2 values",
		func(pkg *gogen.Package) {
			retInt := pkg.NewParam(position(1, 10), "", types.Typ[types.Int])
			retErr := pkg.NewParam(position(1, 15), "", gogen.TyError)
			newFunc(pkg, 3, 5, 3, 7, nil, "bar", nil, types.NewTuple(retInt, retErr), false).BodyStart(pkg).
				ZeroLit(types.Typ[types.Int]).ZeroLit(gogen.TyError).Return(2).End()
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(types.Typ[types.Int], "x").
				VarRef(ctxRef(pkg, "x")).
				Val(ctxRef(pkg, "bar")).
				CallWith(0, 0, 0, source("bar()", 1, 5)).
				AssignWith(1, 1, source("x = bar()", 1, 3)).
				End()
		})
	codeErrorTest("./foo.gop:1:3: assignment mismatch: 1 variables but 2 values",
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(types.Typ[types.Int], "x").
				VarRef(ctxRef(pkg, "x")).
				Val(1).Val(2).
				AssignWith(1, 2, source("x = 1, 2", 1, 3)).
				End()
		})
}

func testErrFunc() {
	fmt.Println("=== testErrFunc ===")
	codeErrorTest(`./foo.gop:5:1: main redeclared in this block
	./foo.gop:1:10: other declaration of main`,
		func(pkg *gogen.Package) {
			sig := types.NewSignatureType(nil, nil, nil, nil, nil, false)
			pkg.NewFuncDecl(position(1, 10), "main", sig).BodyStart(pkg).End()
			pkg.NewFuncDecl(position(5, 1), "main", sig).BodyStart(pkg).End()
		})
}

func testErrFuncCall() {
	fmt.Println("=== testErrFuncCall ===")
	codeErrorTest(`./foo.gop:2:10: cannot call non-function a() (type int)`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(types.Typ[types.Int], "a").
				VarVal("a").CallWith(0, 0, 0, source("a()", 2, 10)).
				End()
		})
	codeErrorTest(`./foo.gop:2:10: cannot use ... in call to non-variadic foo`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "foo", nil, nil, false).BodyStart(pkg).
				NewVar(types.Typ[types.Int], "a").
				Val(ctxRef(pkg, "foo"), source("foo", 2, 2)).VarVal("a").CallWith(1, 0, 1, source("foo(a...)", 2, 10)).
				End()
		})
	codeErrorTest(`./foo.gop:3:5: cannot use a (type bool) as type int in argument to foo(a)`,
		func(pkg *gogen.Package) {
			retInt := pkg.NewParam(position(1, 10), "", types.Typ[types.Int])
			newFunc(pkg, 1, 5, 1, 7, nil, "foo", types.NewTuple(retInt), nil, false).BodyStart(pkg).
				End()
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Debug(func(cb *gogen.CodeBuilder) {
					pkg.NewVar(position(2, 9), types.Typ[types.Bool], "a")
				}).
				Val(ctxRef(pkg, "foo")).Val(ctxRef(pkg, "a"), source("a", 3, 5)).
				CallWith(1, 0, 0, source("foo(a)", 3, 10)).
				End()
		})
	codeErrorTest(`./foo.gop:2:10: not enough arguments in call to foo
	have (int)
	want (int, int)`,
		func(pkg *gogen.Package) {
			argInt1 := pkg.NewParam(position(1, 10), "", types.Typ[types.Int])
			argInt2 := pkg.NewParam(position(1, 15), "", types.Typ[types.Int])
			pkg.NewFunc(nil, "foo", types.NewTuple(argInt1, argInt2), nil, false).BodyStart(pkg).
				NewVar(types.Typ[types.Int], "a").
				Val(ctxRef(pkg, "foo"), source("foo", 2, 2)).VarVal("a").CallWith(1, 0, 0, source("foo(a)", 2, 10)).
				End()

		})
	codeErrorTest(`./foo.gop:2:10: too many arguments in call to foo
	have (int, untyped int, untyped int)
	want (int, int)`,
		func(pkg *gogen.Package) {
			argInt1 := pkg.NewParam(position(1, 10), "", types.Typ[types.Int])
			argInt2 := pkg.NewParam(position(1, 15), "", types.Typ[types.Int])
			pkg.NewFunc(nil, "foo", types.NewTuple(argInt1, argInt2), nil, false).BodyStart(pkg).
				NewVar(types.Typ[types.Int], "a").
				Val(ctxRef(pkg, "foo"), source("foo", 2, 2)).VarVal("a").Val(1).Val(2).CallWith(3, 0, 0, source("foo(a, 1, 2)", 2, 10)).
				End()

		})
	codeErrorTest(`./foo.gop:2:10: not enough arguments in call to foo
	have (int)
	want (int, int, []int)`,
		func(pkg *gogen.Package) {
			argInt1 := pkg.NewParam(position(1, 10), "", types.Typ[types.Int])
			argInt2 := pkg.NewParam(position(1, 15), "", types.Typ[types.Int])
			argIntSlice3 := pkg.NewParam(position(1, 20), "", types.NewSlice(types.Typ[types.Int]))
			pkg.NewFunc(nil, "foo", types.NewTuple(argInt1, argInt2, argIntSlice3), nil, true).BodyStart(pkg).
				NewVar(types.Typ[types.Int], "a").
				Val(ctxRef(pkg, "foo"), source("foo", 2, 2)).VarVal("a").CallWith(1, 0, 0, source("foo(a)", 2, 10)).
				End()
		})
}

func testErrReturn() {
	fmt.Println("=== testErrReturn ===")
	codeErrorTest(`./foo.gop:2:9: cannot use "Hi" (type untyped string) as type error in return argument`,
		func(pkg *gogen.Package) {
			retInt := pkg.NewParam(position(1, 10), "", types.Typ[types.Int])
			retErr := pkg.NewParam(position(1, 15), "", gogen.TyError)
			newFunc(pkg, 1, 5, 1, 7, nil, "foo", nil, types.NewTuple(retInt, retErr), false).BodyStart(pkg).
				Val(1, source("1", 2, 7)).
				Val("Hi", source(`"Hi"`, 2, 9)).
				Return(2, source(`return 1, "Hi"`, 2, 5)).
				End()
		})
	codeErrorTest("./foo.gop:2:5: cannot use byte value as type error in return argument",
		func(pkg *gogen.Package) {
			retInt := pkg.NewParam(position(1, 10), "", types.Typ[types.Int])
			retErr := pkg.NewParam(position(1, 15), "", gogen.TyError)
			retInt2 := pkg.NewParam(position(3, 10), "", types.Typ[types.Int])
			retByte := pkg.NewParam(position(3, 15), "", gogen.TyByte)
			newFunc(pkg, 3, 5, 3, 7, nil, "bar", nil, types.NewTuple(retInt2, retByte), false).BodyStart(pkg).
				ZeroLit(types.Typ[types.Int]).ZeroLit(gogen.TyByte).Return(2).End()
			newFunc(pkg, 1, 5, 1, 7, nil, "foo", nil, types.NewTuple(retInt, retErr), false).BodyStart(pkg).
				Val(ctxRef(pkg, "bar")).
				CallWith(0, 0, 0, source("bar()", 2, 9)).
				Return(1, source("return bar()", 2, 5)).
				End()
		})
	codeErrorTest("./foo.gop:2:5: too many arguments to return\n\thave (untyped int, untyped int, untyped int)\n\twant (int, error)",
		func(pkg *gogen.Package) {
			retInt := pkg.NewParam(position(1, 10), "", types.Typ[types.Int])
			retErr := pkg.NewParam(position(1, 15), "", gogen.TyError)
			newFunc(pkg, 1, 5, 1, 7, nil, "foo", nil, types.NewTuple(retInt, retErr), false).BodyStart(pkg).
				Val(1, source("1", 2, 7)).
				Val(2, source("2", 2, 9)).
				Val(3, source("3", 2, 11)).
				Return(3, source("return 1, 2, 3", 2, 5)).
				End()
		})
	codeErrorTest("./foo.gop:2:5: too few arguments to return\n\thave (untyped int)\n\twant (int, error)",
		func(pkg *gogen.Package) {
			retInt := pkg.NewParam(position(1, 10), "", types.Typ[types.Int])
			retErr := pkg.NewParam(position(1, 15), "", gogen.TyError)
			newFunc(pkg, 1, 5, 1, 7, nil, "foo", nil, types.NewTuple(retInt, retErr), false).BodyStart(pkg).
				Val(1, source("1", 2, 7)).
				Return(1, source("return 1", 2, 5)).
				End()
		})
	codeErrorTest("./foo.gop:2:5: too few arguments to return\n\thave (byte)\n\twant (int, error)",
		func(pkg *gogen.Package) {
			retInt := pkg.NewParam(position(1, 10), "", types.Typ[types.Int])
			retErr := pkg.NewParam(position(1, 15), "", gogen.TyError)
			ret := pkg.NewParam(position(3, 10), "", gogen.TyByte)
			newFunc(pkg, 3, 5, 3, 7, nil, "bar", nil, types.NewTuple(ret), false).BodyStart(pkg).
				ZeroLit(gogen.TyByte).Return(1).End()
			newFunc(pkg, 1, 5, 1, 7, nil, "foo", nil, types.NewTuple(retInt, retErr), false).BodyStart(pkg).
				Val(ctxRef(pkg, "bar")).
				CallWith(0, 0, 0, source("bar()", 2, 9)).
				Return(1, source("return bar()", 2, 5)).
				End()
		})
	codeErrorTest("./foo.gop:2:5: too many arguments to return\n\thave (int, error)\n\twant (byte)",
		func(pkg *gogen.Package) {
			retInt := pkg.NewParam(position(3, 10), "", types.Typ[types.Int])
			retErr := pkg.NewParam(position(3, 15), "", gogen.TyError)
			newFunc(pkg, 3, 5, 3, 7, nil, "bar", nil, types.NewTuple(retInt, retErr), false).BodyStart(pkg).
				ZeroLit(types.Typ[types.Int]).ZeroLit(gogen.TyError).Return(2).End()
			ret := pkg.NewParam(position(1, 10), "", gogen.TyByte)
			newFunc(pkg, 1, 5, 1, 7, nil, "foo", nil, types.NewTuple(ret), false).BodyStart(pkg).
				Val(ctxRef(pkg, "bar")).
				CallWith(0, 0, 0, source("bar()", 2, 9)).
				Return(1, source("return bar()", 2, 5)).
				End()
		})
	codeErrorTest("./foo.gop:2:5: not enough arguments to return\n\thave ()\n\twant (byte)",
		func(pkg *gogen.Package) {
			ret := pkg.NewParam(position(1, 10), "", gogen.TyByte)
			newFunc(pkg, 1, 5, 1, 7, nil, "foo", nil, types.NewTuple(ret), false).BodyStart(pkg).
				Return(0, source("return", 2, 5)).
				End()
		})
}

func testErrInitFunc() {
	fmt.Println("=== testErrInitFunc ===")
	codeErrorTest("./foo.gop:1:5: func init must have no arguments and no return values", func(pkg *gogen.Package) {
		v := pkg.NewParam(token.NoPos, "v", gogen.TyByte)
		newFunc(pkg, 1, 5, 1, 7, nil, "init", types.NewTuple(v), nil, false).BodyStart(pkg).End()
	})
}

func testErrMissingReturn() {
	fmt.Println("=== testErrMissingReturn ===")
	codeErrorTest("./foo.gop:3:1: missing return", func(pkg *gogen.Package) {
		ret := pkg.NewParam(position(1, 10), "", types.Typ[types.Int])
		newFunc(pkg, 1, 5, 3, 1, nil, "foo", nil, types.NewTuple(ret), false).BodyStart(pkg).
			NewVar(types.Typ[types.Int], "x").
			End(source("}", 3, 1))
	})
	codeErrorTest("./foo.gop:6:1: missing return", func(pkg *gogen.Package) {
		ret := pkg.NewParam(position(1, 10), "", types.Typ[types.Int])
		newFunc(pkg, 1, 5, 6, 1, nil, "foo", nil, types.NewTuple(ret), false).BodyStart(pkg).
			If().Val(true).Then().
			Val(1).Return(1).
			End().
			End(source("}", 6, 1))
	})
	codeErrorTest("./foo.gop:8:1: missing return", func(pkg *gogen.Package) {
		ret := pkg.NewParam(position(1, 10), "", types.Typ[types.Int])
		newFunc(pkg, 1, 5, 8, 1, nil, "foo", nil, types.NewTuple(ret), false).BodyStart(pkg).
			Switch().Val(1).Then().
			Case().Val(1).Then().Val(1).Return(1).End().
			End().
			End(source("}", 8, 1))
	})
	codeErrorTest("./foo.gop:5:1: missing return", func(pkg *gogen.Package) {
		ret := pkg.NewParam(position(1, 10), "", types.Typ[types.Int])
		newFunc(pkg, 1, 5, 5, 1, nil, "foo", nil, types.NewTuple(ret), false).BodyStart(pkg).
			For().Val(true).Then().
			Val(1).Return(1).
			End().
			End(source("}", 5, 1))
	})
}

func testMissingReturnValid() {
	fmt.Println("=== testMissingReturnValid ===")
	pkg := newMainPackage()
	ret := pkg.NewParam(token.NoPos, "", types.Typ[types.Int])
	newFunc(pkg, 1, 5, 3, 1, nil, "foo", nil, types.NewTuple(ret), false).BodyStart(pkg).
		Val(1).Return(1).
		End()

	pkg = newMainPackage()
	ret = pkg.NewParam(token.NoPos, "", types.Typ[types.Int])
	newFunc(pkg, 1, 5, 6, 1, nil, "foo", nil, types.NewTuple(ret), false).BodyStart(pkg).
		If().Val(true).Then().
		Val(1).Return(1).
		Else().
		Val(2).Return(1).
		End().
		End()

	pkg = newMainPackage()
	ret = pkg.NewParam(token.NoPos, "", types.Typ[types.Int])
	newFunc(pkg, 1, 5, 10, 1, nil, "foo", nil, types.NewTuple(ret), false).BodyStart(pkg).
		Switch().Val(1).Then().
		Case().Val(1).Then().Val(1).Return(1).End().
		Case().Then().Val(2).Return(1).End().
		End().
		End()

	pkg = newMainPackage()
	ret = pkg.NewParam(token.NoPos, "", types.Typ[types.Int])
	newFunc(pkg, 1, 5, 5, 1, nil, "foo", nil, types.NewTuple(ret), false).BodyStart(pkg).
		For().None().Then().
		Val(1).Return(1).
		End().
		End()

	pkg = newMainPackage()
	newFunc(pkg, 1, 5, 3, 1, nil, "foo", nil, nil, false).BodyStart(pkg).
		NewVar(types.Typ[types.Int], "x").
		End()

	pkg = newMainPackage()
	cb := pkg.CB()
	retType := types.NewTuple(types.NewVar(token.NoPos, nil, "", types.Typ[types.Int]))
	sig := types.NewSignatureType(nil, nil, nil, nil, retType, false)
	cb.NewClosureWith(sig).BodyStart(pkg).
		Val(42).Return(1).
		End()

	pkg = newMainPackage()
	ret = pkg.NewParam(token.NoPos, "", types.Typ[types.Int])
	pkg.NewFunc(nil, "foo", nil, types.NewTuple(ret), false).BodyStart(pkg).
		Val(pkg.Builtin().Ref("panic")).Val("err").Call(1).EndStmt().
		End()
}

func testReturnErrorNoMissingReturn() {
	fmt.Println("=== testReturnErrorNoMissingReturn ===")
	pkg := newMainPackage()
	ret := pkg.NewParam(token.NoPos, "", types.Typ[types.Int])
	fn := newFunc(pkg, 1, 5, 3, 1, nil, "foo", nil, types.NewTuple(ret), false)
	fn.BodyStart(pkg)
	pkg.CB().Val("hello")
	func() {
		defer func() { recover() }()
		pkg.CB().Return(1)
	}()
	pkg.CB().ResetStmt()
	fn.End(pkg.CB(), nil)
}

func testReturnInsufficientArgsNoMissingReturn() {
	fmt.Println("=== testReturnInsufficientArgsNoMissingReturn ===")
	pkg := newMainPackage()
	ret := pkg.NewParam(token.NoPos, "", types.Typ[types.Int])
	fn := newFunc(pkg, 1, 5, 3, 1, nil, "foo", nil, types.NewTuple(ret), false)
	fn.BodyStart(pkg)
	pkg.CB().Return(1)
	fn.End(pkg.CB(), nil)
}

func testMissingReturnShadowedPanic() {
	fmt.Println("=== testMissingReturnShadowedPanic ===")
	codeErrorTest("./foo.gop:4:1: missing return", func(pkg *gogen.Package) {
		ret := pkg.NewParam(token.NoPos, "", types.Typ[types.Int])
		newFunc(pkg, 1, 1, 4, 1, nil, "foo", nil, types.NewTuple(ret), false).BodyStart(pkg).
			DefineVarStart(token.NoPos, "panic").
			NewClosure(
				types.NewTuple(pkg.NewParam(token.NoPos, "s", types.Typ[types.String])),
				nil,
				false,
			).BodyStart(pkg).End().
			EndInit(1).
			VarVal("panic").Val("err").Call(1).EndStmt().
			End(source("}", 4, 1))
	})
}

func testErrRecv() {
	fmt.Println("=== testErrRecv ===")
	tySlice := types.NewSlice(gogen.TyByte)
	codeErrorTest("./foo.gop:1:9: invalid receiver type []byte ([]byte is not a defined type)", func(pkg *gogen.Package) {
		recv := pkg.NewParam(position(1, 7), "p", tySlice)
		newFunc(pkg, 1, 5, 1, 9, recv, "foo", nil, nil, false).BodyStart(pkg).End()
	})
	codeErrorTest("./foo.gop:2:9: invalid receiver type []byte ([]byte is not a defined type)", func(pkg *gogen.Package) {
		recv := pkg.NewParam(position(2, 7), "p", types.NewPointer(tySlice))
		newFunc(pkg, 2, 6, 2, 9, recv, "foo", nil, nil, false).BodyStart(pkg).End()
	})
	codeErrorTest("./foo.gop:3:10: invalid receiver type error (error is an interface type)", func(pkg *gogen.Package) {
		recv := pkg.NewParam(position(3, 9), "p", gogen.TyError)
		newFunc(pkg, 3, 7, 3, 10, recv, "foo", nil, nil, false).BodyStart(pkg).End()
	})
	codeErrorTest("./foo.gop:3:10: invalid receiver type recv (recv is a pointer type)", func(pkg *gogen.Package) {
		t := pkg.NewType("recv").InitType(pkg, types.NewPointer(gogen.TyByte))
		recv := pkg.NewParam(position(3, 9), "p", t)
		newFunc(pkg, 3, 7, 3, 10, recv, "foo", nil, nil, false).BodyStart(pkg).End()
	})
}

func testErrLabel() {
	fmt.Println("=== testErrLabel ===")
	codeErrorTest("./foo.gop:2:1: label foo already defined at ./foo.gop:1:1", func(pkg *gogen.Package) {
		cb := pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg)
		l := cb.NewLabel(position(1, 1), position(1, 1), "foo")
		cb.NewLabel(position(2, 1), position(2, 1), "foo")
		cb.Goto(l)
		cb.End()
	})
	codeErrorTest("./foo.gop:1:1: label foo defined and not used", func(pkg *gogen.Package) {
		cb := pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg)
		cb.NewLabel(position(1, 1), position(1, 1), "foo")
		cb.End()
	})
	codeErrorTest("./foo.gop:1:1: syntax error: non-declaration statement outside function body", func(pkg *gogen.Package) {
		pkg.CB().NewLabel(position(1, 1), position(1, 1), "foo")
	})
}

func testErrStructLit() {
	fmt.Println("=== testErrStructLit ===")
	codeErrorTest(`./foo.gop:1:7: too many values in struct{x int; y string}{...}`,
		func(pkg *gogen.Package) {
			fields := []*types.Var{
				types.NewField(token.NoPos, pkg.Types, "x", types.Typ[types.Int], false),
				types.NewField(token.NoPos, pkg.Types, "y", types.Typ[types.String], false),
			}
			tyStruc := types.NewStruct(fields, nil)
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val(1, source(`1`, 1, 1)).
				Val("1", source(`"1"`, 1, 5)).
				Val(1, source(`1`, 1, 7)).
				StructLit(tyStruc, 3, false).
				EndStmt().
				End()
		})
	codeErrorTest(`./foo.gop:1:1: too few values in struct{x int; y string}{...}`,
		func(pkg *gogen.Package) {
			fields := []*types.Var{
				types.NewField(token.NoPos, pkg.Types, "x", types.Typ[types.Int], false),
				types.NewField(token.NoPos, pkg.Types, "y", types.Typ[types.String], false),
			}
			tyStruc := types.NewStruct(fields, nil)
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val(1, source(`1`, 1, 1)).
				StructLit(tyStruc, 1, false).
				EndStmt().
				End()
		})
	codeErrorTest(`./foo.gop:1:5: cannot use 1 (type untyped int) as type string in value of field y`,
		func(pkg *gogen.Package) {
			fields := []*types.Var{
				types.NewField(token.NoPos, pkg.Types, "x", types.Typ[types.Int], false),
				types.NewField(token.NoPos, pkg.Types, "y", types.Typ[types.String], false),
			}
			tyStruc := types.NewStruct(fields, nil)
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val(1).
				Val(1, source(`1`, 1, 5)).
				StructLit(tyStruc, 2, true).
				EndStmt().
				End()
		})
	codeErrorTest(`./foo.gop:1:1: cannot use "1" (type untyped string) as type int in value of field x`,
		func(pkg *gogen.Package) {
			fields := []*types.Var{
				types.NewField(token.NoPos, pkg.Types, "x", types.Typ[types.Int], false),
				types.NewField(token.NoPos, pkg.Types, "y", types.Typ[types.String], false),
			}
			tyStruc := types.NewStruct(fields, nil)
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val("1", source(`"1"`, 1, 1)).
				Val(1, source(`1`, 1, 5)).
				StructLit(tyStruc, 2, false).
				EndStmt().
				End()
		})
}

func testErrMapLit() {
	fmt.Println("=== testErrMapLit ===")
	codeErrorTest("./foo.gop:2:6: cannot use 1+2 (type untyped int) as type string in map key",
		func(pkg *gogen.Package) {
			tyMap := types.NewMap(types.Typ[types.String], types.Typ[types.Int])
			cb := pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				DefineVarStart(0, "x")
			cb.ResetInit()
			cb.Val(1, source("1")).
				Val(2, source("2")).
				BinaryOp(token.ADD, source("1+2", 2, 6)).
				Val(3).
				MapLit(tyMap, 2).
				End()
		})
	codeErrorTest(`./foo.gop:1:5: cannot use "Hi" + "!" (type untyped string) as type int in map value`,
		func(pkg *gogen.Package) {
			tyMap := types.NewMap(types.Typ[types.String], types.Typ[types.Int])
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val("1").
				Val("Hi", source(`"Hi"`)).
				Val("!", source(`"!"`)).
				BinaryOp(token.ADD, source(`"Hi" + "!"`, 1, 5)).
				MapLit(tyMap, 2).
				EndStmt().
				End()
		})
}

func testErrMapLit2() {
	fmt.Println("=== testErrMapLit2 ===")
	codeErrorTest("-: MapLit: invalid arity, can't be odd - 1",
		func(pkg *gogen.Package) {
			tyMap := types.NewMap(types.Typ[types.String], types.Typ[types.Int])
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val("1").
				MapLit(tyMap, 1).
				EndStmt().
				End()
		})
	codeErrorTest("-: type string isn't a map",
		func(pkg *gogen.Package) {
			tyMap := types.Typ[types.String]
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val("1").
				Val("Hi", source(`"Hi"`)).
				Val("!", source(`"!"`)).
				BinaryOp(token.ADD, source(`"Hi" + "!"`, 1, 5)).
				MapLit(tyMap, 2).
				EndStmt().
				End()
		})
}

func testErrArrayLit() {
	fmt.Println("=== testErrArrayLit ===")
	codeErrorTest("./foo.gop:1:5: cannot use 32 (type untyped int) as type string in array literal",
		func(pkg *gogen.Package) {
			tyArray := types.NewArray(types.Typ[types.String], 10)
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val(1, source("1")).
				Val(32, source("32", 1, 5)).
				ArrayLit(tyArray, 2, true).
				EndStmt().
				End()
		})
	codeErrorTest("./foo.gop:1:5: cannot use 1+2 (type untyped int) as type string in array literal",
		func(pkg *gogen.Package) {
			tyArray := types.NewArray(types.Typ[types.String], 10)
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val(1, source("1")).
				Val(2, source("2")).
				BinaryOp(token.ADD, source("1+2", 1, 5)).
				ArrayLit(tyArray, 1).
				EndStmt().
				End()
		})
	codeErrorTest(`./foo.gop:2:10: array index 1 out of bounds [0:1]`,
		func(pkg *gogen.Package) {
			tyArray := types.NewArray(types.Typ[types.String], 1)
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val("Hi", source(`"Hi"`, 1, 5)).
				Val("!", source(`"!"`, 2, 10)).
				ArrayLit(tyArray, 2, false).
				EndStmt().
				End()
		})
	codeErrorTest(`./foo.gop:1:5: array index 12 (value 12) out of bounds [0:10]`,
		func(pkg *gogen.Package) {
			tyArray := types.NewArray(types.Typ[types.String], 10)
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val(12, source(`12`, 1, 5)).
				Val("!", source(`"!"`)).
				ArrayLit(tyArray, 2, true).
				EndStmt().
				End()
		})
	codeErrorTest(`./foo.gop:2:10: array index 10 out of bounds [0:10]`,
		func(pkg *gogen.Package) {
			tyArray := types.NewArray(types.Typ[types.String], 10)
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val(9, source(`9`, 1, 5)).
				Val("!", source(`"!"`)).
				None().
				Val("!!", source(`"!!"`, 2, 10)).
				ArrayLit(tyArray, 4, true).
				EndStmt().
				End()
		})
	codeErrorTest(`./foo.gop:1:5: cannot use "Hi" + "!" as index which must be non-negative integer constant`,
		func(pkg *gogen.Package) {
			tyArray := types.NewArray(types.Typ[types.String], 100)
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val("Hi", source(`"Hi"`)).
				Val("!", source(`"!"`)).
				BinaryOp(token.ADD, source(`"Hi" + "!"`, 1, 5)).
				Val("Hi", source(`"Hi"`)).
				ArrayLit(tyArray, 2, true).
				EndStmt().
				End()
		})
}

func testErrSliceLit() {
	fmt.Println("=== testErrSliceLit ===")
	codeErrorTest(`./foo.gop:1:5: cannot use "10" as index which must be non-negative integer constant`,
		func(pkg *gogen.Package) {
			tySlice := types.NewSlice(types.Typ[types.String])
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val("10", source(`"10"`, 1, 5)).
				Val("Hi", source(`"Hi"`)).
				SliceLit(tySlice, 2, true).
				EndStmt().
				End()
		})
	codeErrorTest("./foo.gop:1:5: cannot use 32 (type untyped int) as type string in slice literal",
		func(pkg *gogen.Package) {
			tySlice := types.NewSlice(types.Typ[types.String])
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val(10, source("10")).
				Val(32, source("32", 1, 5)).
				SliceLit(tySlice, 2, true).
				EndStmt().
				End()
		})
	codeErrorTest("./foo.gop:1:5: cannot use 1+2 (type untyped int) as type string in slice literal",
		func(pkg *gogen.Package) {
			tySlice := types.NewSlice(types.Typ[types.String])
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val(1, source("1")).
				Val(2, source("2")).
				BinaryOp(token.ADD, source("1+2", 1, 5)).
				SliceLit(tySlice, 1).
				EndStmt().
				End()
		})
}

func testErrSlice() {
	fmt.Println("=== testErrSlice ===")
	codeErrorTest(`./foo.gop:1:5: cannot slice true (type untyped bool)`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val(types.Universe.Lookup("true"), source("true", 1, 5)).
				Val(1).
				Val(3).
				Val(5).
				Slice(true, source("true[1:3:5]", 1, 5)).
				EndStmt().
				End()
		})
	codeErrorTest(`./foo.gop:1:1: cannot slice x (type *byte)`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(types.NewPointer(gogen.TyByte), "x").
				Val(ctxRef(pkg, "x"), source("x", 1, 1)).
				Val(1).
				Val(3).
				Val(5).
				Slice(true, source("x[1:3:5]", 1, 5)).
				EndStmt().
				End()
		})
	codeErrorTest(`./foo.gop:1:5: invalid operation x[1:3:5] (3-index slice of string)`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(types.Typ[types.String], "x").
				Val(ctxRef(pkg, "x")).
				Val(1).
				Val(3).
				Val(5).
				Slice(true, source("x[1:3:5]", 1, 5)).
				EndStmt().
				End()
		})
}

func testErrIndex() {
	fmt.Println("=== testErrIndex ===")
	codeErrorTest(`./foo.gop:1:5: invalid operation: true[1] (type untyped bool does not support indexing)`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val(types.Universe.Lookup("true"), source("true", 1, 5)).
				Val(1).
				Index(1, 2, source("true[1]", 1, 5)).
				EndStmt().
				End()
		})
	codeErrorTest(`./foo.gop:1:5: assignment mismatch: 2 variables but 1 values`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(types.Typ[types.String], "x").
				Val(ctxRef(pkg, "x")).
				Val(1).
				Index(1, 2, source("x[1]", 1, 5)).
				EndStmt().
				End()
		})
}

func testErrIndexRef() {
	fmt.Println("=== testErrIndexRef ===")
	codeErrorTest(`./foo.gop:1:5: cannot assign to x[1] (strings are immutable)`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(types.Typ[types.String], "x").
				Val(ctxRef(pkg, "x")).
				Val(1).
				IndexRef(1, source("x[1]", 1, 5)).
				EndStmt().
				End()
		})
}

func testErrStar() {
	fmt.Println("=== testErrStar ===")
	codeErrorTest(`./foo.gop:1:5: invalid indirect of x (type string)`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(types.Typ[types.String], "x").
				Val(ctxRef(pkg, "x"), source("x", 1, 5)).
				ElemRef(source("*x", 1, 4)).
				EndStmt().
				End()
		})
	codeErrorTest(`./foo.gop:1:5: invalid indirect of x (type string)`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(types.Typ[types.String], "x").
				Val(ctxRef(pkg, "x"), source("x", 1, 5)).
				Elem(source("*x", 1, 4)).
				EndStmt().
				End()
		})
	codeErrorTest(`./foo.gop:1:5: invalid indirect of x (type string)`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(types.Typ[types.String], "x").
				Val(ctxRef(pkg, "x"), source("x", 1, 5)).
				Star(source("*x", 1, 4)).
				EndStmt().
				End()
		})
}

func testErrMember() {
	fmt.Println("=== testErrMember ===")
	codeErrorTest(`./foo.gop:1:5: T.x undefined (type T has no method x)`,
		func(pkg *gogen.Package) {
			fields := []*types.Var{
				types.NewField(token.NoPos, pkg.Types, "x", types.Typ[types.Int], false),
				types.NewField(token.NoPos, pkg.Types, "y", types.Typ[types.String], false),
			}
			pkg.NewType("T").InitType(pkg, types.NewStruct(fields, nil))
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val(ctxRef(pkg, "T")).
				Debug(func(cb *gogen.CodeBuilder) {
					_, err := cb.Member("x", 0, gogen.MemberFlagVal, source("T.x", 1, 5))
					if err != nil {
						panic(err)
					}
				}).
				EndStmt().
				End()
		})
	codeErrorTest(`./foo.gop:1:7: x.y undefined (type string has no field or method y)`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(types.Typ[types.String], "x").
				Val(ctxRef(pkg, "x"), source("x", 1, 5)).
				Debug(func(cb *gogen.CodeBuilder) {
					_, err := cb.Member("y", 0, gogen.MemberFlagVal, source("x.y", 1, 7))
					if err != nil {
						panic(err)
					}
				}).
				EndStmt().
				End()
		})
	codeErrorTest(`./foo.gop:1:5: x.y undefined (type string has no field or method y)`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(types.Typ[types.String], "x").
				Val(ctxRef(pkg, "x"), source("x", 1, 5)).
				Debug(func(cb *gogen.CodeBuilder) {
					_, err := cb.Member("y", 0, gogen.MemberFlagVal, source("x.y", 1, 5))
					if err != nil {
						panic(err)
					}
				}).
				EndStmt().
				End()
		})
	codeErrorTest(`./foo.gop:1:5: x.y undefined (type map[int]int has no field or method y)`,
		func(pkg *gogen.Package) {
			typ := types.NewMap(types.Typ[types.Int], types.Typ[types.Int])
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(typ, "x").
				Val(ctxRef(pkg, "x"), source("x", 1, 5)).
				Debug(func(cb *gogen.CodeBuilder) {
					_, err := cb.Member("y", 0, gogen.MemberFlagVal, source("x.y", 1, 5))
					if err != nil {
						panic(err)
					}
				}).
				EndStmt().
				End()
		})
	codeErrorTest(`./foo.gop:1:5: x.y undefined (type map[int]int has no field or method y)`,
		func(pkg *gogen.Package) {
			typ := types.NewMap(types.Typ[types.Int], types.Typ[types.Int])
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(typ, "x").
				Val(ctxRef(pkg, "x"), source("x", 1, 5)).
				Debug(func(cb *gogen.CodeBuilder) {
					_, err := cb.Member("y", 0, gogen.MemberFlagRef, source("x.y", 1, 5))
					if err != nil {
						panic(err)
					}
				}).
				EndStmt().
				End()
		})
}

func testErrMemberRef() {
	fmt.Println("=== testErrMemberRef ===")
	codeErrorTest(`./foo.gop:1:7: x.y undefined (type string has no field or method y)`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(types.Typ[types.String], "x").
				Val(ctxRef(pkg, "x"), source("x", 1, 5)).
				MemberRef("y", source("x.y", 1, 7)).
				EndStmt().
				End()
		})
	codeErrorTest(`./foo.gop:1:7: x.y undefined (type aaa has no field or method y)`,
		func(pkg *gogen.Package) {
			t := pkg.NewType("aaa").InitType(pkg, gogen.TyByte)
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(t, "x").
				Val(ctxRef(pkg, "x"), source("x", 1, 5)).
				MemberRef("y", source("x.y", 1, 7)).
				EndStmt().
				End()
		})
	codeErrorTest(`./foo.gop:1:7: x.z undefined (type struct{x int; y string} has no field or method z)`,
		func(pkg *gogen.Package) {
			fields := []*types.Var{
				types.NewField(token.NoPos, pkg.Types, "x", types.Typ[types.Int], false),
				types.NewField(token.NoPos, pkg.Types, "y", types.Typ[types.String], false),
			}
			t := types.NewStruct(fields, nil)
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(t, "x").
				Val(ctxRef(pkg, "x"), source("x", 1, 5)).
				MemberRef("z", source("x.z", 1, 7)).
				EndStmt().
				End()
		})
	codeErrorTest(`./foo.gop:1:7: x.z undefined (type aaa has no field or method z)`,
		func(pkg *gogen.Package) {
			fields := []*types.Var{
				types.NewField(token.NoPos, pkg.Types, "x", types.Typ[types.Int], false),
				types.NewField(token.NoPos, pkg.Types, "y", types.Typ[types.String], false),
			}
			tyStruc := types.NewStruct(fields, nil)
			t := pkg.NewType("aaa").InitType(pkg, tyStruc)
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(t, "x").
				Val(ctxRef(pkg, "x"), source("x", 1, 5)).
				MemberRef("z", source("x.z", 1, 7)).
				EndStmt().
				End()
		})
}

func testErrUnsafe() {
	fmt.Println("=== testErrUnsafe ===")
	codeErrorTest(`./foo.gop:6:15: missing argument to function call: unsafe.Sizeof()`,
		func(pkg *gogen.Package) {
			builtin := pkg.Unsafe()
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val(builtin.Ref("Sizeof")).CallWith(0, 0, 0, source("unsafe.Sizeof()", 6, 2)).EndStmt().
				EndStmt().
				End()
		})
	codeErrorTest(`./foo.gop:6:15: too many arguments to function call: unsafe.Sizeof(1, 2)`,
		func(pkg *gogen.Package) {
			builtin := pkg.Unsafe()
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val(builtin.Ref("Sizeof")).Val(1).Val(2).CallWith(2, 0, 0, source("unsafe.Sizeof(1, 2)", 6, 2)).EndStmt().
				EndStmt().
				End()
		})
	codeErrorTest(`./foo.gop:6:17: invalid expression unsafe.Offsetof(1)`,
		func(pkg *gogen.Package) {
			builtin := pkg.Unsafe()
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val(builtin.Ref("Offsetof")).Val(1).CallWith(1, 0, 0, source("unsafe.Offsetof(1)", 6, 2)).EndStmt().
				EndStmt().
				End()
		})
	codeErrorTest(`./foo.gop:14:17: invalid expression unsafe.Offsetof(a.Bar): argument is a method value`,
		func(pkg *gogen.Package) {
			fields := []*types.Var{
				types.NewField(token.NoPos, pkg.Types, "x", types.Typ[types.Int], false),
				types.NewField(token.NoPos, pkg.Types, "y", types.Typ[types.String], false),
			}
			typ := types.NewStruct(fields, nil)
			foo := pkg.NewType("foo").InitType(pkg, typ)
			recv := pkg.NewParam(token.NoPos, "a", foo)
			pkg.NewFunc(recv, "Bar", nil, nil, false).BodyStart(pkg).End()
			builtin := pkg.Unsafe()
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(foo, "a").
				Val(builtin.Ref("Offsetof")).VarVal("a").MemberVal("Bar", 0).CallWith(1, 0, 0, source("unsafe.Offsetof(a.Bar)", 14, 2)).EndStmt().
				EndStmt().
				End()
		})
	codeErrorTest(`./foo.gop:17:26: invalid expression unsafe.Offsetof(t.M.m): selector implies indirection of embedded t.M`,
		func(pkg *gogen.Package) {
			builtin := pkg.Unsafe()
			fieldsM := []*types.Var{
				types.NewField(token.NoPos, pkg.Types, "m", types.Typ[types.Int], false),
				types.NewField(token.NoPos, pkg.Types, "n", types.Typ[types.String], false),
			}
			typM := types.NewStruct(fieldsM, nil)
			tyM := pkg.NewType("M").InitType(pkg, typM)
			fieldsT := []*types.Var{
				types.NewField(token.NoPos, pkg.Types, "x", types.Typ[types.Int], false),
				types.NewField(token.NoPos, pkg.Types, "y", types.Typ[types.String], false),
				types.NewField(token.NoPos, pkg.Types, "", types.NewPointer(tyM), true),
			}
			typT := types.NewStruct(fieldsT, nil)
			tyT := pkg.NewType("T").InitType(pkg, typT)
			pkg.CB().NewVar(tyT, "t")
			pkg.CB().NewConstStart(nil, "c").
				Val(builtin.Ref("Offsetof")).Val(ctxRef(pkg, "t"), source("t", 17, 27)).MemberVal("m", 0).CallWith(1, 0, 0, source("unsafe.Offsetof(t.m)", 17, 11)).EndInit(1)
		})
	codeErrorTest(`./foo.gop:7:12: cannot use a (type int) as type unsafe.Pointer in argument to unsafe.Add`,
		func(pkg *gogen.Package) {
			tyInt := types.Typ[types.Int]
			builtin := pkg.Unsafe()
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(tyInt, "a").
				Val(builtin.Ref("Add")).Val(ctxRef(pkg, "a"), source("a", 7, 14)).Val(10).CallWith(2, 0, 0, source("unsafe.Add(a, 10)", 7, 2)).EndStmt().
				End()
		})
	codeErrorTest(`./foo.gop:7:12: cannot use "hello" (type untyped string) as type int`,
		func(pkg *gogen.Package) {
			tyUP := types.Typ[types.UnsafePointer]
			builtin := pkg.Unsafe()
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(tyUP, "a").
				Val(builtin.Ref("Add")).Val(ctxRef(pkg, "a"), source("a", 7, 14)).Val("hello", source(`"hello"`, 7, 16)).CallWith(2, 0, 0, source("unsafe.Add(a, 10)", 7, 2)).EndStmt().
				End()
		})
	codeErrorTest(`./foo.gop:7:14: first argument to unsafe.Slice must be pointer; have int`,
		func(pkg *gogen.Package) {
			tyInt := types.Typ[types.Int]
			builtin := pkg.Unsafe()
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(tyInt, "a").
				Val(builtin.Ref("Slice")).VarVal("a").Val(10).CallWith(2, 0, 0, source(`unsafe.Slice(a, 10)`, 7, 2)).EndStmt().
				End()
		})
	codeErrorTest(`./foo.gop:7:14: non-integer len argument in unsafe.Slice - untyped string`,
		func(pkg *gogen.Package) {
			tyInt := types.Typ[types.Int]
			builtin := pkg.Unsafe()
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVarStart(nil, "ar").
				Val(1).Val(2).Val(3).ArrayLit(types.NewArray(tyInt, 3), 3).EndInit(1).
				Val(builtin.Ref("Slice")).Val(ctxRef(pkg, "ar")).Val(0).Index(1, 0).UnaryOp(token.AND).Val("hello").CallWith(2, 0, 0, source(`unsafe.Slice(&a[0],"hello")`, 7, 2)).EndStmt().
				End()
		})
}

func testImportPkgError() {
	fmt.Println("=== testImportPkgError ===")
	where := "GOROOT"
	ver := runtime.Version()[:6]
	if ver >= "go1.21" {
		where = "std"
	}
	codeErrorTest(
		fmt.Sprintf(`./foo.gop:1:7: package bar2 is not in `+where+` (%v)
`, filepath.Join(runtime.GOROOT(), "src", "bar2")),
		func(pkg *gogen.Package) {
			spec := &ast.ImportSpec{
				Path: &ast.BasicLit{ValuePos: position(1, 7), Kind: token.STRING, Value: strconv.Quote("bar")},
			}
			pkg.Import("bar2", spec)
		})
}

func testDivisionByZero() {
	fmt.Println("=== testDivisionByZero ===")
	codeErrorTest(`./foo.gop:1:3: invalid operation: division by zero`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val(1).Val(0, source("0", 1, 3)).BinaryOp(token.QUO).
				End()
		})
	codeErrorTest(`./foo.gop:1:3: invalid operation: division by zero`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val(1.1).Val(0.0, source("0.0", 1, 3)).BinaryOp(token.QUO).
				End()
		})
	codeErrorTest(`./foo.gop:1:3: invalid operation: division by zero`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val(&ast.BasicLit{Kind: token.IMAG, Value: "1i"}).Val(&ast.BasicLit{Kind: token.IMAG, Value: "0i"}, source("0i", 1, 3)).BinaryOp(token.QUO).
				End()
		})
	codeErrorTest(`./foo.gop:1:3: invalid operation: division by zero`,
		func(pkg *gogen.Package) {
			typ := types.Typ[types.Int]
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(typ, "a").
				VarVal("a").Val(0, source("0", 1, 3)).BinaryOp(token.QUO).
				End()
		})
	codeErrorTest(`./foo.gop:1:3: invalid operation: division by zero`,
		func(pkg *gogen.Package) {
			typ := types.Typ[types.Int]
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(typ, "a").
				VarVal("a").Val(0.0, source("0.0", 1, 3)).BinaryOp(token.QUO).
				End()
		})
	codeErrorTest(`./foo.gop:1:3: invalid operation: division by zero`,
		func(pkg *gogen.Package) {
			typ := types.Typ[types.Int]
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(typ, "a").
				VarVal("a").Val(&ast.BasicLit{Kind: token.IMAG, Value: "0i"}, source("0i", 1, 3)).BinaryOp(token.QUO).
				End()
		})
	codeErrorTest(`./foo.gop:1:3: invalid operation: division by zero`,
		func(pkg *gogen.Package) {
			typ := types.Typ[types.Int]
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(typ, "a").
				VarRef(ctxRef(pkg, "a")).Val(0, source("0", 1, 3)).AssignOp(token.QUO_ASSIGN).
				End()
		})
	codeErrorTest(`./foo.gop:1:3: invalid operation: division by zero`,
		func(pkg *gogen.Package) {
			typ := types.Typ[types.Int]
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(typ, "a").
				VarRef(ctxRef(pkg, "a")).Val(0.0, source("0.0", 1, 3)).AssignOp(token.QUO_ASSIGN).
				End()
		})
	codeErrorTest(`./foo.gop:1:3: invalid operation: division by zero`,
		func(pkg *gogen.Package) {
			typ := types.Typ[types.Int]
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(typ, "a").
				VarRef(ctxRef(pkg, "a")).Val(&ast.BasicLit{Kind: token.IMAG, Value: "0i"}, source("0i", 1, 3)).AssignOp(token.QUO_ASSIGN).
				End()
		})
}

func testErrUsedNoValue() {
	fmt.Println("=== testErrUsedNoValue ===")
	codeErrorTest(`./foo.gop:3:10: foo() (no value) used as value`,
		func(pkg *gogen.Package) {
			newFunc(pkg, 1, 5, 1, 7, nil, "foo", nil, nil, false).BodyStart(pkg).
				End()
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVarStart(types.Typ[types.Int], "a").
				Val(ctxRef(pkg, "foo")).CallWith(0, 0, 0, source("foo()", 3, 10)).EndInit(1).
				End()
		})
	codeErrorTest(`./foo.gop:3:10: foo() (no value) used as value`,
		func(pkg *gogen.Package) {
			newFunc(pkg, 1, 5, 1, 7, nil, "foo", nil, nil, false).BodyStart(pkg).
				End()
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(types.Typ[types.Int], "a").
				VarRef(ctxRef(pkg, "a")).Val(ctxRef(pkg, "foo")).CallWith(0, 0, 0, source("foo()", 3, 10)).Assign(1, 1).
				End()
		})
}

func testErrFieldAccess() {
	fmt.Println("=== testErrFieldAccess ===")
	const src = `package foo

type M struct {
	x int
	y int
}
`
	gt := newGoxTest()
	_, err := gt.LoadGoPackage("foo", "foo.go", src)
	if err != nil {
		panic(err)
	}
	pkg := gt.NewPackage("", "main")
	pkgRef := pkg.Import("foo")
	tyM := pkgRef.Ref("M").Type()

	codeErrorTestEx(pkg, `./foo.gop:3:10: m.x undefined (type foo.M has no field or method x)`,
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				NewVar(tyM, "m").
				VarVal("println").VarVal("m").
				MemberVal("x", 0, source("m.x", 3, 10)).Call(1).EndStmt().
				End()
		})
}

func testErrorLit() {
	fmt.Println("=== testErrorLit ===")
	codeErrorTest("./foo.gop:1:5: type int isn't a map",
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val(1).Val(2).
				MapLit(types.Typ[types.Int], 2, source("int{1:2}", 1, 5)).
				EndStmt().
				End()
		})
	codeErrorTest("./foo.gop:1:5: type int isn't a array",
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val(1).Val(2).
				ArrayLitEx(types.Typ[types.Int], 2, true, source("int{1,2}", 1, 5)).
				EndStmt().
				End()
		})
	codeErrorTest("./foo.gop:1:5: type int isn't a slice",
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val(1).Val(2).
				SliceLitEx(types.Typ[types.Int], 2, true, source("int{1,2}", 1, 5)).
				EndStmt().
				End()
		})
	codeErrorTest("./foo.gop:1:5: type int isn't a struct",
		func(pkg *gogen.Package) {
			pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
				Val(1).Val(2).
				StructLit(types.Typ[types.Int], 2, false, source("int{1,2}", 1, 5)).
				EndStmt().
				End()
		})
}

func main() {
	fmt.Println("Running error_msg_test tests (42 cases)...")
	fmt.Println()

	testErrIf()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrSwitch()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrTypeRedefined()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrTypeSwitch()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrAssignOp()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrBinaryOp()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrShiftString()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrBinaryOp2()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrTypeAssert()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrConst()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrNewVar()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrDefineVar()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrForRange()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrAssign()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrFunc()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrFuncCall()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrReturn()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrInitFunc()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrMissingReturn()
	fmt.Println("  [PASS]")
	fmt.Println()

	testMissingReturnValid()
	fmt.Println("  [PASS]")
	fmt.Println()

	testReturnErrorNoMissingReturn()
	fmt.Println("  [PASS]")
	fmt.Println()

	testReturnInsufficientArgsNoMissingReturn()
	fmt.Println("  [PASS]")
	fmt.Println()

	testMissingReturnShadowedPanic()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrRecv()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrLabel()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrStructLit()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrMapLit()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrMapLit2()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrArrayLit()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrSliceLit()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrSlice()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrIndex()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrIndexRef()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrStar()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrMember()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrMemberRef()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrUnsafe()
	fmt.Println("  [PASS]")
	fmt.Println()

	testImportPkgError()
	fmt.Println("  [PASS]")
	fmt.Println()

	testDivisionByZero()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrUsedNoValue()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrFieldAccess()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrorLit()
	fmt.Println("  [PASS]")
	fmt.Println()

	fmt.Println("All tests PASSED!")
}
