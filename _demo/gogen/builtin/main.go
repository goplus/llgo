// Converted from builtin_test.go for llgo testing
// Migrated subset: cases that can run in subfolder main.go (black-box style)
package main

import (
	"bytes"
	"fmt"
	"go/ast"
	"go/constant"
	"go/token"
	"go/types"

	"github.com/goplus/gogen"
	"github.com/goplus/gogen/internal/go/format"
	"github.com/goplus/gogen/packages"
)

var gblConf = getConf()

func getConf() *gogen.Config {
	fset := token.NewFileSet()
	imp := packages.NewImporter(fset)
	return &gogen.Config{
		Fset:       fset,
		Importer:   imp,
		PkgPathIox: "github.com/goplus/gogen/internal/iox",
	}
}

func isError(e interface{}, msg string) bool {
	if e != nil {
		if err, ok := e.(error); ok {
			return err.Error() == msg
		}
		if err, ok := e.(string); ok {
			return err == msg
		}
	}
	return false
}

func mustPanic(name string, fn func()) {
	defer func() {
		if e := recover(); e == nil {
			panic(name + ": no panic")
		}
	}()
	fn()
}

func testSwitchStmtThen() {
	fmt.Println("=== testSwitchStmtThen ===")
	pkg := gogen.NewPackage("", "foo", nil)
	cb := pkg.CB()
	defer func() {
		if e := recover(); e != "use None() for empty switch tag" {
			panic(fmt.Sprintf("testSwitchStmtThen: %v", e))
		}
	}()
	cb.Switch().Then()
}

func testIfStmtElse() {
	fmt.Println("=== testIfStmtElse ===")
	pkg := gogen.NewPackage("", "foo", nil)
	cb := pkg.CB()
	defer func() {
		if e := recover(); e != "else statement already exists" {
			panic(fmt.Sprintf("testIfStmtElse: %v", e))
		}
	}()
	cb.If().Else().Else()
}

func testNewPosNode() {
	fmt.Println("=== testNewPosNode ===")
	if ret := gogen.NewPosNode(1); ret.Pos() != 1 || ret.End() != 1 {
		panic(fmt.Sprintf("NewPosNode(1): end=%v", ret.End()))
	}
	if ret := gogen.NewPosNode(1, 2); ret.End() != 2 {
		panic(fmt.Sprintf("NewPosNode(1,2): end=%v", ret.End()))
	}
}

func testIsTypeEx() {
	fmt.Println("=== testIsTypeEx ===")
	pkg := types.NewPackage("", "foo")
	o := gogen.NewInstruction(0, pkg, "bar", lenInstr{})
	if !gogen.IsTypeEx(o.Type()) {
		panic("Instruction should be TypeEx")
	}
	of := gogen.NewOverloadFunc(0, pkg, "bar")
	if !gogen.IsTypeEx(of.Type()) {
		panic("OverloadFunc should be TypeEx")
	}
	if gogen.IsTypeEx(types.Typ[types.Int]) {
		panic("int should not be TypeEx")
	}
}

type lenInstr struct{}

func (lenInstr) Call(pkg *gogen.Package, args []*gogen.Element, arity int, flags gogen.InstrFlags, src ast.Node) (ret *gogen.Element, err error) {
	return &gogen.Element{Type: types.Typ[types.Int]}, nil
}

func testComparableTo() {
	fmt.Println("=== testComparableTo ===")
	tyStr := types.NewNamed(types.NewTypeName(token.NoPos, nil, "str", nil), types.Typ[types.String], nil)
	cases := []struct {
		v, t types.Type
		ret  bool
	}{
		{types.Typ[types.UntypedNil], types.Typ[types.Int], false},
		{types.Typ[types.UntypedComplex], types.Typ[types.Int], false},
		{types.Typ[types.UntypedFloat], types.Typ[types.Bool], false},
		{types.Typ[types.UntypedFloat], types.Typ[types.Complex128], true},
		{types.Typ[types.String], types.Typ[types.Bool], false},
		{types.Typ[types.String], types.Typ[types.String], true},
		{types.Typ[types.String], tyStr, true},
		{types.Typ[types.UntypedBool], types.Typ[types.Bool], true},
		{types.Typ[types.Bool], types.Typ[types.UntypedBool], true},
		{types.Typ[types.UntypedRune], types.Typ[types.UntypedString], false},
		{types.Typ[types.Rune], types.Typ[types.UntypedString], false},
		{types.Typ[types.UntypedInt], types.Typ[types.Int64], true},
		{types.Typ[types.Int64], types.Typ[types.UntypedInt], true},
	}
	pkg := gogen.NewPackage("", "foo", gblConf)
	for _, a := range cases {
		av := &gogen.Element{Type: a.v}
		at := &gogen.Element{Type: a.t}
		if ret := gogen.ComparableTo(pkg, av, at); ret != a.ret {
			panic(fmt.Sprintf("ComparableTo %v => %v returns %v", a.v, a.t, ret))
		}
	}
}

func testComparableTo2() {
	fmt.Println("=== testComparableTo2 ===")
	pkg := gogen.NewPackage("foo", "foo", gblConf)
	methods := []*types.Func{
		types.NewFunc(token.NoPos, pkg.Types, "Bar", types.NewSignatureType(nil, nil, nil, nil, nil, false)),
	}
	methods2 := []*types.Func{
		types.NewFunc(token.NoPos, pkg.Types, "F", types.NewSignatureType(nil, nil, nil, nil, nil, false)),
	}
	tyInterf := types.NewInterfaceType(methods, nil).Complete()
	tyInterfF := types.NewInterfaceType(methods2, nil).Complete()
	bar1 := pkg.NewType("bar").InitType(pkg, tyInterf)
	bar2 := pkg.NewType("bar2").InitType(pkg, tyInterf)
	f1 := pkg.NewType("f1").InitType(pkg, tyInterfF)
	tySlice := types.NewSlice(types.Typ[types.Int])
	cases := []struct {
		v, t types.Type
		ret  bool
	}{
		{bar1, bar2, true},
		{bar1, types.Typ[types.Int], false},
		{types.Typ[types.Int], bar2, false},
		{bar1, tySlice, false},
		{tySlice, bar2, false},
		{f1, bar2, false},
		{types.Typ[types.UntypedNil], bar2, true},
		{bar1, types.Typ[types.UntypedNil], true},
		{tySlice, types.Typ[types.UntypedInt], false},
		{types.Typ[types.UntypedInt], tySlice, false},
		{gogen.TyEmptyInterface, types.Typ[types.UntypedInt], true},
		{types.Typ[types.UntypedInt], gogen.TyEmptyInterface, true},
	}
	for _, a := range cases {
		av := &gogen.Element{Type: a.v}
		at := &gogen.Element{Type: a.t}
		if ret := gogen.ComparableTo(pkg, av, at); ret != a.ret {
			panic(fmt.Sprintf("ComparableTo %v => %v returns %v", a.v, a.t, ret))
		}
	}
	av := &gogen.Element{Type: types.Typ[types.UntypedFloat], CVal: constant.MakeFromLiteral("1e1", token.FLOAT, 0)}
	at := &gogen.Element{Type: types.Typ[types.Int]}
	if !gogen.ComparableTo(pkg, av, at) {
		panic("ComparableTo float(1e1) => int should be true")
	}
}

func testAssignableTo() {
	fmt.Println("=== testAssignableTo ===")
	cases := []struct {
		v, t types.Type
		ret  bool
	}{
		{types.Typ[types.UntypedInt], types.Typ[types.Int], true},
		{types.Typ[types.Int], types.Typ[types.UntypedInt], false},
		{types.Typ[types.UntypedFloat], types.Typ[types.UntypedComplex], true},
		{types.Typ[types.UntypedComplex], types.Typ[types.UntypedFloat], false},
		{types.Typ[types.UntypedInt], types.Typ[types.UntypedFloat], true},
		{types.Typ[types.UntypedFloat], types.Typ[types.UntypedInt], false},
		{types.Typ[types.UntypedFloat], types.Typ[types.UntypedBool], false},
		{types.Typ[types.UntypedInt], types.Typ[types.UntypedRune], false},
		{types.Typ[types.UntypedFloat], types.Typ[types.Int], false},
		{types.Typ[types.UntypedFloat], types.Typ[types.UntypedRune], false},
		{types.Typ[types.UntypedRune], types.Typ[types.UntypedInt], true},
		{types.Typ[types.UntypedRune], types.Typ[types.UntypedFloat], true},
	}
	pkg := gogen.NewPackage("", "foo", gblConf)
	for _, a := range cases {
		if ret := gogen.AssignableTo(pkg, a.v, a.t); ret != a.ret {
			panic(fmt.Sprintf("AssignableTo %v => %v returns %v", a.v, a.t, ret))
		}
	}
	if gogen.Default(pkg, types.Typ[types.UntypedInt]) != types.Typ[types.Int] {
		panic("gogen.Default failed for untyped int")
	}
}

func testCheckOverloadMethod() {
	fmt.Println("=== testCheckOverloadMethod ===")
	sig := types.NewSignatureType(nil, nil, nil, nil, nil, false)
	if _, ok := gogen.CheckOverloadMethod(sig); ok {
		panic("CheckOverloadMethod should be false")
	}
}

func testIsFunc() {
	fmt.Println("=== testIsFunc ===")
	if gogen.IsFunc(nil) {
		panic("nil should not be func")
	}
	if !gogen.IsFunc(types.NewSignatureType(nil, nil, nil, nil, nil, false)) {
		panic("func signature should be func")
	}
}

func testInternalStack() {
	fmt.Println("=== testInternalStack ===")
	var cb gogen.CodeBuilder
	cb.InternalStack().Push(nil)
	if cb.Get(-1) != nil {
		panic("InternalStack/Get failed")
	}
}

func testHasAutoProperty() {
	fmt.Println("=== testHasAutoProperty ===")
	if gogen.HasAutoProperty(nil) {
		panic("nil should not have auto property")
	}
	if !gogen.HasAutoProperty(types.NewSignatureType(nil, nil, nil, nil, nil, false)) {
		panic("func signature should have auto property")
	}
}

func testVarDeclEnd() {
	fmt.Println("=== testVarDeclEnd ===")
	var decl gogen.VarDecl
	defer func() {
		if e := recover(); e == nil {
			panic("VarDecl.End should panic on zero-value decl")
		}
	}()
	decl.End(nil, nil)
}

func testNoFuncName() {
	fmt.Println("=== testNoFuncName ===")
	var pkg gogen.Package
	defer func() {
		if e := recover(); e == nil || e.(string) != "no func name" {
			panic(fmt.Sprintf("testNoFuncName: %v", e))
		}
	}()
	pkg.NewFuncWith(0, "", nil, nil)
}

func testTryImport() {
	fmt.Println("=== testTryImport ===")
	pkg := gogen.NewPackage("foo", "foo", gblConf)
	if pkg.TryImport("not/exist").Types != nil {
		panic("TryImport(not/exist) should return invalid pkg ref")
	}
}

func testErrWriteFile() {
	fmt.Println("=== testErrWriteFile ===")
	pkg := gogen.NewPackage("", "foo", gblConf)
	pkg.Types = nil
	mustPanic("testErrWriteFile", func() {
		_ = gogen.WriteFile("_xgo_autogen.go", pkg)
	})
}

func testRef() {
	fmt.Println("=== testRef ===")
	defer func() {
		if e := recover(); e == nil {
			panic("PkgRef.Ref should panic on missing symbol")
		}
	}()
	pkg := &gogen.PkgRef{Types: types.NewPackage("foo", "foo")}
	_ = pkg.Ref("bar")
}

func testLookupLabel() {
	fmt.Println("=== testLookupLabel ===")
	var cb gogen.CodeBuilder
	if _, ok := cb.LookupLabel("foo"); ok {
		panic("LookupLabel on zero cb should be false")
	}
}

func testVarVal() {
	fmt.Println("=== testVarVal ===")
	defer func() {
		if e := recover(); !isError(e, "VarVal: variable `unknown` not found\n") {
			panic(fmt.Sprintf("testVarVal: %v", e))
		}
	}()
	var cb gogen.CodeBuilder
	cb.VarVal("unknown")
}

func testImportError() {
	fmt.Println("=== testImportError ===")
	err := &types.Error{Msg: "foo"}
	e := &gogen.ImportError{Err: err}
	if v := e.Unwrap(); v != err {
		panic(fmt.Sprintf("ImportError.Unwrap failed: %v", v))
	}
}

func testNewFuncDeclPanic() {
	fmt.Println("=== testNewFuncDeclPanic ===")
	mustPanic("testNewFuncDeclPanic", func() {
		pkg := gogen.NewPackage("", "foo", gblConf)
		a := types.NewParam(token.NoPos, pkg.Types, "", types.Typ[types.Int])
		sig := types.NewSignatureType(nil, nil, nil, types.NewTuple(a), nil, false)
		pkg.NewFuncDecl(token.NoPos, "init", sig)
	})
}

func testTypeAST() {
	fmt.Println("=== testTypeAST ===")
	pkg := gogen.NewPackage("", "foo", gblConf)
	fset := token.NewFileSet()
	expr := gogen.TypeAST(pkg, gogen.TyEmptyInterface)
	b := bytes.NewBuffer(nil)
	if err := format.Node(b, fset, expr); err != nil {
		panic(fmt.Sprintf("format.Node failed: %v", err))
	}
	if b.String() != `interface{}` {
		panic(fmt.Sprintf("TypeAST failed: %q", b.String()))
	}
}

func testCastFromBool() {
	fmt.Println("=== testCastFromBool ===")
	ret, ok := gogen.CastFromBool(nil, types.Typ[types.Uint], &gogen.Element{
		Type: types.Typ[types.UntypedBool],
		CVal: constant.MakeBool(true),
	})
	if !ok || constant.Val(ret.CVal).(int64) != 1 {
		panic(fmt.Sprintf("CastFromBool true failed: %v %v", ret.CVal, ok))
	}
	ret, ok = gogen.CastFromBool(nil, types.Typ[types.Uint], &gogen.Element{
		Type: types.Typ[types.Bool],
		CVal: constant.MakeBool(false),
	})
	if !ok || constant.Val(ret.CVal).(int64) != 0 {
		panic(fmt.Sprintf("CastFromBool false failed: %v %v", ret.CVal, ok))
	}
}

func testSubstVar() {
	fmt.Println("=== testSubstVar ===")
	pkg := types.NewPackage("", "foo")
	a := types.NewParam(0, pkg, "a", types.Typ[types.Int])
	scope := pkg.Scope()
	scope.Insert(gogen.NewSubst(token.NoPos, pkg, "bar", a))
	o := gogen.Lookup(scope, "bar")
	if o != a {
		panic(fmt.Sprintf("Lookup(bar) failed: %v", o))
	}
	_, o = gogen.LookupParent(scope, "bar", token.NoPos)
	if o != a {
		panic(fmt.Sprintf("LookupParent(bar) failed: %v", o))
	}
	scope.Insert(a)
	_, o2 := gogen.LookupParent(scope, "a", token.NoPos)
	if o != o2 {
		panic(fmt.Sprintf("LookupParent(a) failed: %v", o2))
	}
	o2 = gogen.Lookup(scope, "a")
	if o != o2 {
		panic(fmt.Sprintf("Lookup(a) failed: %v", o2))
	}
	_, _ = gogen.LookupParent(scope, "b", token.NoPos)
	_ = gogen.Lookup(scope, "b")
}

func testValidType() {
	fmt.Println("=== testValidType ===")
	var errs []error
	conf := &gogen.Config{
		HandleErr: func(err error) {
			errs = append(errs, err)
		},
	}
	pkg := gogen.NewPackage("", "foo", conf)
	typeA := types.NewNamed(types.NewTypeName(token.NoPos, pkg.Types, "A", nil), nil, nil)
	typeB := types.NewNamed(types.NewTypeName(token.NoPos, pkg.Types, "B", nil), nil, nil)
	typeA.SetUnderlying(types.NewStruct([]*types.Var{
		types.NewField(token.NoPos, pkg.Types, "B", typeB, true),
	}, nil))
	typeB.SetUnderlying(types.NewStruct([]*types.Var{
		types.NewField(token.NoPos, pkg.Types, "A", typeA, true),
	}, nil))
	pkg.ValidType(typeA)
	if len(errs) == 0 {
		panic("ValidType should report cycle error")
	}
}

func main() {
	fmt.Println("Running builtin_test tests (subset: 24/95)...")
	fmt.Println()

	testSwitchStmtThen()
	fmt.Println("  [PASS]")
	fmt.Println()
	testIfStmtElse()
	fmt.Println("  [PASS]")
	fmt.Println()
	testNewPosNode()
	fmt.Println("  [PASS]")
	fmt.Println()
	testIsTypeEx()
	fmt.Println("  [PASS]")
	fmt.Println()
	testComparableTo()
	fmt.Println("  [PASS]")
	fmt.Println()
	testComparableTo2()
	fmt.Println("  [PASS]")
	fmt.Println()
	testAssignableTo()
	fmt.Println("  [PASS]")
	fmt.Println()
	testCheckOverloadMethod()
	fmt.Println("  [PASS]")
	fmt.Println()
	testIsFunc()
	fmt.Println("  [PASS]")
	fmt.Println()
	testInternalStack()
	fmt.Println("  [PASS]")
	fmt.Println()
	testHasAutoProperty()
	fmt.Println("  [PASS]")
	fmt.Println()
	testVarDeclEnd()
	fmt.Println("  [PASS]")
	fmt.Println()
	testNoFuncName()
	fmt.Println("  [PASS]")
	fmt.Println()
	testTryImport()
	fmt.Println("  [PASS]")
	fmt.Println()
	testErrWriteFile()
	fmt.Println("  [PASS]")
	fmt.Println()
	testRef()
	fmt.Println("  [PASS]")
	fmt.Println()
	testLookupLabel()
	fmt.Println("  [PASS]")
	fmt.Println()
	testVarVal()
	fmt.Println("  [PASS]")
	fmt.Println()
	testImportError()
	fmt.Println("  [PASS]")
	fmt.Println()
	testNewFuncDeclPanic()
	fmt.Println("  [PASS]")
	fmt.Println()
	testTypeAST()
	fmt.Println("  [PASS]")
	fmt.Println()
	testCastFromBool()
	fmt.Println("  [PASS]")
	fmt.Println()
	testSubstVar()
	fmt.Println("  [PASS]")
	fmt.Println()
	testValidType()
	fmt.Println("  [PASS]")
	fmt.Println()

	fmt.Println("All tests PASSED!")
}
