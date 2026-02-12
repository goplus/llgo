// Converted from xgo_test.go for llgo testing
// Batch 1: 5 cases (TestConvertToClosure/TestXGooConst/TestFmtPrintln/TestBigRatConstant/TestBigIntVar)
package main

import (
	"bytes"
	"fmt"
	"go/ast"
	"go/constant"
	"go/token"
	"go/types"
	"math/big"

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
	return newPackage("main", false)
}

func newPackage(name string, gotypesalias bool) *gogen.Package {
	conf := &gogen.Config{
		Fset:             gblFset,
		Importer:         gblImp,
		PkgPathIox:       "github.com/goplus/gogen/internal/iox",
		EnableTypesalias: gotypesalias,
	}
	return gogen.NewPackage("", name, conf)
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

func ctxRef(pkg *gogen.Package, name string) gogen.Ref {
	_, o := pkg.CB().Scope().LookupParent(name, token.NoPos)
	return o
}

func initXGoBuiltin(big gogen.PkgRef, conf *gogen.Config) {
	conf.UntypedBigInt = big.Ref("XGo_untyped_bigint").Type().(*types.Named)
	conf.UntypedBigRat = big.Ref("XGo_untyped_bigrat").Type().(*types.Named)
	conf.UntypedBigFloat = big.Ref("XGo_untyped_bigfloat").Type().(*types.Named)
}

func newXGoBuiltinDefault(pkg *gogen.Package, conf *gogen.Config) *types.Package {
	fmtPkg := pkg.Import("fmt")
	b := pkg.Import("github.com/goplus/gogen/internal/builtin")
	builtin := types.NewPackage("", "")
	if builtin.Scope().Insert(gogen.NewOverloadFunc(token.NoPos, builtin, "println", fmtPkg.Ref("Println"))) != nil {
		panic("println exists")
	}
	gogen.InitBuiltin(pkg, builtin, conf)
	initXGoBuiltin(b, conf)
	tiStr := pkg.BuiltinTI(types.Typ[types.String])
	tiStr.AddMethods(
		&gogen.BuiltinMethod{Name: "Capitalize", Fn: b.Ref("Capitalize")},
	)
	return builtin
}

func newXGoMainPackage() *gogen.Package {
	conf := &gogen.Config{
		Fset:       gblFset,
		Importer:   gblImp,
		PkgPathIox: "github.com/goplus/gogen/internal/iox",
		NewBuiltin: newXGoBuiltinDefault,
	}
	return gogen.NewPackage("", "main", conf)
}

func testConvertToClosure() {
	fmt.Println("=== testConvertToClosure ===")
	pkg := newMainPackage()
	p := pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		DefineVarStart(0, "x").Val(1, &ast.Ident{
		Name:    "x",
		NamePos: token.Pos(1),
	}).ConvertToClosure()

	arg := pkg.CB().InternalStack().Get(-1)
	if arg.Src == nil {
		panic("closure has no src node")
	}

	p.EndInit(1).End()

	domTest(pkg, `package main

func main() {
	x := func() int {
		return 1
	}
}
`)
}

func testXGooConst() {
	fmt.Println("=== testXGooConst ===")
	pkg := newPackage("foo", false)
	pkg.CB().NewConstStart(nil, "XGoo_x").
		Val("Hello").EndInit(1)
	domTest(pkg, `package foo

const XGoPackage = true
const XGoo_x = "Hello"
`)
}

func testFmtPrintln() {
	fmt.Println("=== testFmtPrintln ===")
	pkg := newXGoMainPackage()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		DefineVarStart(token.NoPos, "p").Val(ctxRef(pkg, "println")).EndInit(1).
		VarRef(ctxRef(pkg, "p")).Val(ctxRef(pkg, "println")).Assign(1).EndStmt().
		End()
	domTest(pkg, `package main

import "fmt"

func main() {
	p := fmt.Println
	p = fmt.Println
}
`)
}

func testBigRatConstant() {
	fmt.Println("=== testBigRatConstant ===")
	a := constant.Make(new(big.Rat).SetInt64(1))
	b := constant.Make(new(big.Rat).SetInt64(2))
	c := constant.BinaryOp(a, token.ADD, b)
	if c.Kind() != constant.Float {
		panic(fmt.Sprintf("c.Kind() != constant.Float - %v", c))
	}
	d := constant.BinaryOp(a, token.QUO, b)
	if !constant.Compare(constant.Make(big.NewRat(1, 2)), token.EQL, d) {
		panic("d != 1/2r")
	}

	e := constant.MakeFromLiteral("1.2", token.FLOAT, 0)
	if _, ok := constant.Val(e).(*big.Rat); !ok {
		panic(fmt.Sprintf("constant.MakeFromLiteral 1.2 not *big.Rat: %T", constant.Val(e)))
	}
}

func testBigIntVar() {
	fmt.Println("=== testBigIntVar ===")
	pkg := newXGoMainPackage()
	bigPkg := pkg.Import("github.com/goplus/gogen/internal/builtin")
	pkg.CB().NewVar(bigPkg.Ref("XGo_bigint").Type(), "a")
	domTest(pkg, `package main

import "github.com/goplus/gogen/internal/builtin"

var a builtin.XGo_bigint
`)
}

func testBigIntVarInit() {
	fmt.Println("=== testBigIntVarInit ===")
	pkg := newXGoMainPackage()
	mbig := pkg.Import("github.com/goplus/gogen/internal/builtin")
	pkg.CB().NewVarStart(mbig.Ref("XGo_bigint").Type(), "a").
		UntypedBigInt(big.NewInt(6)).EndInit(1)
	domTest(pkg, `package main

import (
	"github.com/goplus/gogen/internal/builtin"
	"math/big"
)

var a builtin.XGo_bigint = builtin.XGo_bigint_Init__1(big.NewInt(6))
`)
}

func testBigInt() {
	fmt.Println("=== testBigInt ===")
	pkg := newXGoMainPackage()
	bigPkg := pkg.Import("github.com/goplus/gogen/internal/builtin")
	pkg.CB().NewVar(bigPkg.Ref("XGo_bigint").Type(), "a", "b")
	pkg.CB().NewVarStart(bigPkg.Ref("XGo_bigint").Type(), "c").
		VarVal("a").VarVal("b").BinaryOp(token.ADD).EndInit(1)
	domTest(pkg, `package main

import "github.com/goplus/gogen/internal/builtin"

var a, b builtin.XGo_bigint
var c builtin.XGo_bigint = (builtin.XGo_bigint).XGo_Add(a, b)
`)
}

func testBigInt2() {
	fmt.Println("=== testBigInt2 ===")
	pkg := newXGoMainPackage()
	bigPkg := pkg.Import("github.com/goplus/gogen/internal/builtin")
	typ := types.NewPointer(bigPkg.Ref("XGo_bigint").Type())
	pkg.CB().NewVar(typ, "a", "b")
	pkg.CB().NewVarStart(typ, "c").
		VarVal("a").VarVal("b").BinaryOp(token.AND_NOT).EndInit(1)
	domTest(pkg, `package main

import "github.com/goplus/gogen/internal/builtin"

var a, b *builtin.XGo_bigint
var c *builtin.XGo_bigint = (*builtin.XGo_bigint).XGo_AndNot__0(a, b)
`)
}

func testBigRat() {
	fmt.Println("=== testBigRat ===")
	pkg := newXGoMainPackage()
	bigPkg := pkg.Import("github.com/goplus/gogen/internal/builtin")
	pkg.NewVar(token.NoPos, bigPkg.Ref("XGo_bigrat").Type(), "a", "b")
	pkg.CB().NewVarStart(bigPkg.Ref("XGo_bigrat").Type(), "c").
		VarVal("a").VarVal("b").BinaryOp(token.QUO).EndInit(1)
	pkg.CB().NewVarStart(bigPkg.Ref("XGo_bigrat").Type(), "d").
		VarVal("a").UnaryOp(token.SUB).EndInit(1)
	pkg.CB().NewVarStart(bigPkg.Ref("XGo_bigrat").Type(), "e").
		Val(bigPkg.Ref("XGo_bigrat_Cast")).Call(0).EndInit(1)
	pkg.CB().NewVarStart(bigPkg.Ref("XGo_bigrat").Type(), "f").
		Val(bigPkg.Ref("XGo_bigrat_Cast")).Val(1).Val(2).Call(2).EndInit(1)
	pkg.CB().NewVarStart(bigPkg.Ref("XGo_bigint").Type(), "g")
	pkg.CB().NewVarStart(bigPkg.Ref("XGo_bigrat").Type(), "h").
		Val(bigPkg.Ref("XGo_bigrat_Cast")).Val(ctxRef(pkg, "g")).Call(1).EndInit(1)
	domTest(pkg, `package main

import "github.com/goplus/gogen/internal/builtin"

var a, b builtin.XGo_bigrat
var c builtin.XGo_bigrat = (builtin.XGo_bigrat).XGo_Quo(a, b)
var d builtin.XGo_bigrat = a.XGo_Neg()
var e builtin.XGo_bigrat = builtin.XGo_bigrat_Cast__5()
var f builtin.XGo_bigrat = builtin.XGo_bigrat_Cast__3(1, 2)
var g builtin.XGo_bigint
var h builtin.XGo_bigrat = builtin.XGo_bigrat_Cast__1(g)
`)
}

func testBigRatInit() {
	fmt.Println("=== testBigRatInit ===")
	pkg := newXGoMainPackage()
	ng := pkg.Import("github.com/goplus/gogen/internal/builtin")
	pkg.CB().NewVarStart(ng.Ref("XGo_bigrat").Type(), "a").
		Val(1).Val(65).BinaryOp(token.SHL).
		EndInit(1)
	domTest(pkg, `package main

import (
	"github.com/goplus/gogen/internal/builtin"
	"math/big"
)

var a builtin.XGo_bigrat = builtin.XGo_bigrat_Init__1(func() *big.Int {
	v, _ := new(big.Int).SetString("36893488147419103232", 10)
	return v
}())
`)
}

func testBigRatInit2() {
	fmt.Println("=== testBigRatInit2 ===")
	pkg := newXGoMainPackage()
	ng := pkg.Import("github.com/goplus/gogen/internal/builtin")
	pkg.CB().NewVarStart(ng.Ref("XGo_bigrat").Type(), "a").
		Val(-1).Val(65).BinaryOp(token.SHL).
		EndInit(1)
	domTest(pkg, `package main

import (
	"github.com/goplus/gogen/internal/builtin"
	"math/big"
)

var a builtin.XGo_bigrat = builtin.XGo_bigrat_Init__1(func() *big.Int {
	v, _ := new(big.Int).SetString("-36893488147419103232", 10)
	return v
}())
`)
}

func testBigRatCast() {
	fmt.Println("=== testBigRatCast ===")
	pkg := newXGoMainPackage()
	fmtPkg := pkg.Import("fmt")
	ng := pkg.Import("github.com/goplus/gogen/internal/builtin")
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		Val(fmtPkg.Ref("Println")).
		Val(ng.Ref("XGo_bigrat")).Val(1).Val(65).BinaryOp(token.SHL).Call(1).
		Typ(types.Typ[types.Float64]).Val(ng.Ref("XGo_bigrat")).Call(0).Call(1).
		Typ(types.Typ[types.Float64]).Val(ng.Ref("XGo_bigint")).Val(1).Call(1).Call(1).
		Typ(types.Typ[types.Int]).Call(0).
		Call(4).EndStmt().
		End()
	domTest(pkg, `package main

import (
	"fmt"
	"github.com/goplus/gogen/internal/builtin"
	"math/big"
)

func main() {
	fmt.Println(builtin.XGo_bigrat_Cast__0(func() *big.Int {
		v, _ := new(big.Int).SetString("36893488147419103232", 10)
		return v
	}()), builtin.XGo_bigrat_Cast__5().XGo_Rcast__2(), builtin.XGo_bigint_Cast__0(1).XGo_Rcast(), 0)
}
`)
}

func testCastIntTwoValue() {
	fmt.Println("=== testCastIntTwoValue ===")
	pkg := newXGoMainPackage()
	ng := pkg.Import("github.com/goplus/gogen/internal/builtin")
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		DefineVarStart(0, "v", "inRange").
		Typ(types.Typ[types.Int]).
		Val(ng.Ref("XGo_bigrat")).Val(1).Call(1).
		CallWith(1, 2, 0).
		EndInit(1).
		End()
	domTest(pkg, `package main

import (
	"github.com/goplus/gogen/internal/builtin"
	"math/big"
)

func main() {
	v, inRange := builtin.XGo_bigrat_Cast__0(big.NewInt(1)).XGo_Rcast__0()
}
`)
}

func testCastBigIntTwoValue() {
	fmt.Println("=== testCastBigIntTwoValue ===")
	pkg := newXGoMainPackage()
	ng := pkg.Import("github.com/goplus/gogen/internal/builtin")
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		DefineVarStart(0, "v", "inRange").
		Val(ng.Ref("XGo_bigint")).
		Val(ng.Ref("XGo_bigrat")).Val(1).Call(1).
		CallWith(1, 2, 0).
		EndInit(1).
		End()
	domTest(pkg, `package main

import (
	"github.com/goplus/gogen/internal/builtin"
	"math/big"
)

func main() {
	v, inRange := builtin.XGo_bigint_Cast__7(builtin.XGo_bigrat_Cast__0(big.NewInt(1)))
}
`)
}

func testErrCast() {
	fmt.Println("=== testErrCast ===")
	defer func() {
		if e := recover(); e == nil {
			panic("TestErrCast: no error?")
		}
	}()
	pkg := newXGoMainPackage()
	ng := pkg.Import("github.com/goplus/gogen/internal/builtin")
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		DefineVarStart(0, "v", "inRange").
		Typ(types.Typ[types.Int64]).
		Val(ng.Ref("XGo_bigrat")).Val(1).Call(1).
		CallWith(1, 2, 0).
		EndInit(1).
		End()
}

func testUntypedBigIntAdd() {
	fmt.Println("=== testUntypedBigIntAdd ===")
	pkg := newXGoMainPackage()
	pkg.CB().NewVarStart(nil, "a").
		UntypedBigInt(big.NewInt(6)).
		UntypedBigInt(big.NewInt(63)).
		BinaryOp(token.ADD).
		EndInit(1)
	domTest(pkg, `package main

import (
	"github.com/goplus/gogen/internal/builtin"
	"math/big"
)

var a = builtin.XGo_bigint_Init__1(big.NewInt(69))
`)
}

func testBigRatIncDec() {
	fmt.Println("=== testBigRatIncDec ===")
	pkg := newXGoMainPackage()
	bigPkg := pkg.Import("github.com/goplus/gogen/internal/builtin")
	pkg.NewVar(token.NoPos, bigPkg.Ref("XGo_bigrat").Type(), "a")
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		VarRef("a").IncDec(token.INC).
		End()
	domTest(pkg, `package main

import "github.com/goplus/gogen/internal/builtin"

var a builtin.XGo_bigrat

func main() {
	a.XGo_Inc()
}
`)
}

func testErrValRef() {
	fmt.Println("=== testErrValRef ===")
	defer func() {
		if e := recover(); e == nil || e.(error).Error() != "-:  is not a variable" {
			panic(fmt.Sprintf("TestErrValRef: %v", e))
		}
	}()
	pkg := newXGoMainPackage()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		VarRef("a").
		End()
}

func testErrBigRatIncDec() {
	fmt.Println("=== testErrBigRatIncDec ===")
	defer func() {
		if e := recover(); e == nil || e.(error).Error() != "-: operator XGo_Dec should return no results\n" {
			panic(fmt.Sprintf("TestErrBigRatIncDec: %v", e))
		}
	}()
	pkg := newXGoMainPackage()
	bigPkg := pkg.Import("github.com/goplus/gogen/internal/builtin")
	pkg.NewVar(token.NoPos, bigPkg.Ref("XGo_bigrat").Type(), "a")
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		VarRef("a").IncDec(token.DEC).
		End()
}

func testErrBigRatAssignOp() {
	fmt.Println("=== testErrBigRatAssignOp ===")
	defer func() {
		if e := recover(); e == nil {
			panic("TestErrBigRatAssignOp: no error?")
		}
	}()
	pkg := newXGoMainPackage()
	bigPkg := pkg.Import("github.com/goplus/gogen/internal/builtin")
	pkg.NewVar(token.NoPos, bigPkg.Ref("XGo_bigrat").Type(), "a", "b")
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		VarRef(ctxRef(pkg, "a")).
		VarVal("b").
		AssignOp(token.SUB_ASSIGN).
		End()
}

func testBigRatAssignOp() {
	fmt.Println("=== testBigRatAssignOp ===")
	pkg := newXGoMainPackage()
	bigPkg := pkg.Import("github.com/goplus/gogen/internal/builtin")
	pkg.NewVar(token.NoPos, bigPkg.Ref("XGo_bigrat").Type(), "a", "b")
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		VarRef(ctxRef(pkg, "a")).
		VarVal("b").
		AssignOp(token.ADD_ASSIGN).
		End()
	domTest(pkg, `package main

import "github.com/goplus/gogen/internal/builtin"

var a, b builtin.XGo_bigrat

func main() {
	a.XGo_AddAssign(b)
}
`)
}

func testBigRatAssignOp2() {
	fmt.Println("=== testBigRatAssignOp2 ===")
	pkg := newXGoMainPackage()
	bigPkg := pkg.Import("github.com/goplus/gogen/internal/builtin")
	pkg.NewVar(token.NoPos, bigPkg.Ref("XGo_bigrat").Type(), "a")
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		VarRef(ctxRef(pkg, "a")).
		Val(1).
		AssignOp(token.ADD_ASSIGN).
		End()
	domTest(pkg, `package main

import "github.com/goplus/gogen/internal/builtin"

var a builtin.XGo_bigrat

func main() {
	a.XGo_AddAssign(builtin.XGo_bigrat_Init__0(1))
}
`)
}

func testUntypedBigIntQuo() {
	fmt.Println("=== testUntypedBigIntQuo ===")
	pkg := newXGoMainPackage()
	pkg.CB().NewVarStart(nil, "a").
		UntypedBigInt(big.NewInt(6)).
		UntypedBigInt(big.NewInt(63)).
		BinaryOp(token.QUO).
		EndInit(1)
	domTest(pkg, `package main

import (
	"github.com/goplus/gogen/internal/builtin"
	"math/big"
)

var a = builtin.XGo_bigrat_Init__2(big.NewRat(2, 21))
`)
}

func testUntypedBigIntQuo2() {
	fmt.Println("=== testUntypedBigIntQuo2 ===")
	pkg := newXGoMainPackage()
	pkg.CB().NewVarStart(nil, "a").
		Val(6).
		UntypedBigInt(big.NewInt(63)).
		BinaryOp(token.QUO).
		EndInit(1)
	domTest(pkg, `package main

import (
	"github.com/goplus/gogen/internal/builtin"
	"math/big"
)

var a = builtin.XGo_bigrat_Init__2(big.NewRat(2, 21))
`)
}

func testUntypedBigIntQuo3() {
	fmt.Println("=== testUntypedBigIntQuo3 ===")
	pkg := newXGoMainPackage()
	pkg.CB().NewVarStart(nil, "a").
		UntypedBigInt(big.NewInt(63)).
		Val(6).
		BinaryOp(token.QUO).
		EndInit(1)
	domTest(pkg, `package main

import (
	"github.com/goplus/gogen/internal/builtin"
	"math/big"
)

var a = builtin.XGo_bigrat_Init__2(big.NewRat(21, 2))
`)
}

func testUntypedBigIntRem() {
	fmt.Println("=== testUntypedBigIntRem ===")
	pkg := newXGoMainPackage()
	pkg.CB().NewVarStart(nil, "a").
		UntypedBigInt(big.NewInt(100)).
		UntypedBigInt(big.NewInt(7)).
		BinaryOp(token.REM).
		EndInit(1)
	domTest(pkg, `package main

import (
	"github.com/goplus/gogen/internal/builtin"
	"math/big"
)

var a = builtin.XGo_bigint_Init__1(big.NewInt(2))
`)
}

func testUntypedBigIntShift() {
	fmt.Println("=== testUntypedBigIntShift ===")
	pkg := newXGoMainPackage()
	pkg.CB().NewVarStart(nil, "a").
		UntypedBigInt(big.NewInt(1)).
		Val(128).
		BinaryOp(token.SHL).
		EndInit(1)
	domTest(pkg, `package main

import (
	"github.com/goplus/gogen/internal/builtin"
	"math/big"
)

var a = builtin.XGo_bigint_Init__1(func() *big.Int {
	v, _ := new(big.Int).SetString("340282366920938463463374607431768211456", 10)
	return v
}())
`)
}

func testUntypedBigRatAdd() {
	fmt.Println("=== testUntypedBigRatAdd ===")
	pkg := newXGoMainPackage()
	pkg.CB().NewVarStart(nil, "a").
		UntypedBigRat(big.NewRat(1, 6)).
		UntypedBigRat(big.NewRat(1, 3)).
		BinaryOp(token.ADD).
		EndInit(1)
	domTest(pkg, `package main

import (
	"github.com/goplus/gogen/internal/builtin"
	"math/big"
)

var a = builtin.XGo_bigrat_Init__2(big.NewRat(1, 2))
`)
}

func testUntypedBigRatAdd2() {
	fmt.Println("=== testUntypedBigRatAdd2 ===")
	pkg := newXGoMainPackage()
	pkg.CB().NewVarStart(nil, "a").
		UntypedBigRat(big.NewRat(1, 6)).
		UntypedBigInt(big.NewInt(3)).
		BinaryOp(token.ADD).
		EndInit(1)
	domTest(pkg, `package main

import (
	"github.com/goplus/gogen/internal/builtin"
	"math/big"
)

var a = builtin.XGo_bigrat_Init__2(big.NewRat(19, 6))
`)
}

func testUntypedBigRatAdd3() {
	fmt.Println("=== testUntypedBigRatAdd3 ===")
	pkg := newXGoMainPackage()
	pkg.CB().NewVarStart(nil, "a").
		UntypedBigInt(big.NewInt(3)).
		UntypedBigRat(big.NewRat(1, 6)).
		BinaryOp(token.ADD).
		EndInit(1)
	domTest(pkg, `package main

import (
	"github.com/goplus/gogen/internal/builtin"
	"math/big"
)

var a = builtin.XGo_bigrat_Init__2(big.NewRat(19, 6))
`)
}

func testUntypedBigRatAdd4() {
	fmt.Println("=== testUntypedBigRatAdd4 ===")
	pkg := newXGoMainPackage()
	mbig := pkg.Import("github.com/goplus/gogen/internal/builtin")
	pkg.NewVar(token.NoPos, mbig.Ref("XGo_bigrat").Type(), "a")
	pkg.CB().NewVarStart(nil, "b").
		VarVal("a").
		UntypedBigRat(big.NewRat(1, 6)).
		BinaryOp(token.ADD).
		EndInit(1)
	domTest(pkg, `package main

import (
	"github.com/goplus/gogen/internal/builtin"
	"math/big"
)

var a builtin.XGo_bigrat
var b = (builtin.XGo_bigrat).XGo_Add(a, builtin.XGo_bigrat_Init__2(big.NewRat(1, 6)))
`)
}

func testUntypedBigRatAdd5() {
	fmt.Println("=== testUntypedBigRatAdd5 ===")
	pkg := newXGoMainPackage()
	mbig := pkg.Import("github.com/goplus/gogen/internal/builtin")
	pkg.NewVar(token.NoPos, mbig.Ref("XGo_bigrat").Type(), "a")
	pkg.CB().NewVarStart(nil, "b").
		VarVal("a").
		Val(100).
		BinaryOp(token.ADD).
		EndInit(1)
	domTest(pkg, `package main

import "github.com/goplus/gogen/internal/builtin"

var a builtin.XGo_bigrat
var b = (builtin.XGo_bigrat).XGo_Add(a, builtin.XGo_bigrat_Init__0(100))
`)
}

func testUntypedBigRatAdd6() {
	fmt.Println("=== testUntypedBigRatAdd6 ===")
	pkg := newXGoMainPackage()
	mbig := pkg.Import("github.com/goplus/gogen/internal/builtin")
	pkg.NewVar(token.NoPos, mbig.Ref("XGo_bigrat").Type(), "a")
	pkg.CB().NewVarStart(nil, "b").
		Val(100).
		VarVal("a").
		BinaryOp(token.ADD).
		EndInit(1)
	domTest(pkg, `package main

import "github.com/goplus/gogen/internal/builtin"

var a builtin.XGo_bigrat
var b = (builtin.XGo_bigrat).XGo_Add(builtin.XGo_bigrat_Init__0(100), a)
`)
}

func testUntypedBigRatSub() {
	fmt.Println("=== testUntypedBigRatSub ===")
	pkg := newXGoMainPackage()
	pkg.CB().NewVarStart(nil, "a").
		UntypedBigRat(big.NewRat(1, 6)).
		UntypedBigRat(big.NewRat(1, 3)).
		BinaryOp(token.SUB).
		EndInit(1)
	domTest(pkg, `package main

import (
	"github.com/goplus/gogen/internal/builtin"
	"math/big"
)

var a = builtin.XGo_bigrat_Init__2(big.NewRat(-1, 6))
`)
}

func testUntypedBigRatSub2() {
	fmt.Println("=== testUntypedBigRatSub2 ===")
	pkg := newXGoMainPackage()
	mbig := pkg.Import("github.com/goplus/gogen/internal/builtin")
	pkg.NewVar(token.NoPos, mbig.Ref("XGo_bigrat").Type(), "a")
	pkg.CB().NewVarStart(nil, "b").
		VarVal("a").
		UntypedBigRat(big.NewRat(1, 6)).
		BinaryOp(token.SUB).
		EndInit(1)
	domTest(pkg, `package main

import (
	"github.com/goplus/gogen/internal/builtin"
	"math/big"
)

var a builtin.XGo_bigrat
var b = (builtin.XGo_bigrat).XGo_Sub__0(a, builtin.XGo_bigrat_Init__2(big.NewRat(1, 6)))
`)
}

func testUntypedBigRatLT() {
	fmt.Println("=== testUntypedBigRatLT ===")
	pkg := newXGoMainPackage()
	pkg.CB().NewVarStart(nil, "a").
		UntypedBigRat(big.NewRat(1, 6)).
		UntypedBigRat(big.NewRat(1, 3)).
		BinaryOp(token.LSS).
		EndInit(1)
	domTest(pkg, `package main

var a = true
`)
}

func testUntypedBigRat() {
	fmt.Println("=== testUntypedBigRat ===")
	pkg := newXGoMainPackage()
	mbig := pkg.Import("github.com/goplus/gogen/internal/builtin")
	pkg.CB().NewVarStart(nil, "a").UntypedBigRat(big.NewRat(6, 63)).EndInit(1)
	pkg.CB().NewVarStart(mbig.Ref("XGo_bigrat").Type(), "b").VarVal("a").EndInit(1)
	domTest(pkg, `package main

import (
	"github.com/goplus/gogen/internal/builtin"
	"math/big"
)

var a = builtin.XGo_bigrat_Init__2(big.NewRat(2, 21))
var b builtin.XGo_bigrat = a
`)
}

func testUntypedBigRat2() {
	fmt.Println("=== testUntypedBigRat2 ===")
	pkg := newXGoMainPackage()
	one := big.NewInt(1)
	denom := new(big.Int).Lsh(one, 128)
	v := new(big.Rat).SetFrac(one, denom)
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		DefineVarStart(0, "a").UntypedBigRat(v).EndInit(1).
		End()
	domTest(pkg, `package main

import (
	"github.com/goplus/gogen/internal/builtin"
	"math/big"
)

func main() {
	a := builtin.XGo_bigrat_Init__2(new(big.Rat).SetFrac(big.NewInt(1), func() *big.Int {
		v, _ := new(big.Int).SetString("340282366920938463463374607431768211456", 10)
		return v
	}()))
}
`)
}

func testForRangeUDT() {
	fmt.Println("=== testForRangeUDT ===")
	pkg := newMainPackage()
	foo := pkg.Import("github.com/goplus/gogen/internal/foo")
	nodeSet := foo.Ref("NodeSet").Type()
	v := pkg.NewParam(token.NoPos, "v", nodeSet)
	pkg.NewFunc(nil, "bar", types.NewTuple(v), nil, false).BodyStart(pkg).
		ForRange("_", "val").Val(v).RangeAssignThen(token.NoPos).
		Val(pkg.Import("fmt").Ref("Println")).Val(ctxRef(pkg, "val")).Call(1).EndStmt().
		End().End()
	domTest(pkg, `package main

import (
	"fmt"
	"github.com/goplus/gogen/internal/foo"
)

func bar(v foo.NodeSet) {
	for _xgo_it := v.Gop_Enum(); ; {
		var _xgo_ok bool
		_, val, _xgo_ok := _xgo_it.Next()
		if !_xgo_ok {
			break
		}
		fmt.Println(val)
	}
}
`)
}

func testForRangeUDT2() {
	fmt.Println("=== testForRangeUDT2 ===")
	pkg := newMainPackage()
	foo := pkg.Import("github.com/goplus/gogen/internal/foo")
	bar := foo.Ref("Bar").Type()
	v := pkg.NewParam(token.NoPos, "v", types.NewPointer(bar))
	pkg.NewFunc(nil, "bar", types.NewTuple(v), nil, false).BodyStart(pkg).
		ForRange("_", "val").Val(v).RangeAssignThen(token.NoPos).
		Val(pkg.Import("fmt").Ref("Println")).Val(ctxRef(pkg, "val")).Call(1).EndStmt().
		End().End()
	domTest(pkg, `package main

import (
	"fmt"
	"github.com/goplus/gogen/internal/foo"
)

func bar(v *foo.Bar) {
	for _xgo_it := v.XGo_Enum(); ; {
		var _xgo_ok bool
		val, _xgo_ok := _xgo_it.Next()
		if !_xgo_ok {
			break
		}
		fmt.Println(val)
	}
}
`)
}

func testForRangeUDT3WithAssign() {
	fmt.Println("=== testForRangeUDT3WithAssign ===")
	pkg := newMainPackage()
	foo := pkg.Import("github.com/goplus/gogen/internal/foo")
	bar := foo.Ref("Bar").Type()
	v := pkg.NewParam(token.NoPos, "v", types.NewPointer(bar))
	pkg.NewFunc(nil, "bar", types.NewTuple(v), nil, false).BodyStart(pkg).
		NewVar(types.Typ[types.String], "val").
		ForRange().VarRef(ctxRef(pkg, "val")).Val(v).RangeAssignThen(token.NoPos).
		Val(pkg.Import("fmt").Ref("Println")).Val(ctxRef(pkg, "val")).Call(1).EndStmt().
		End().End()
	domTest(pkg, `package main

import (
	"fmt"
	"github.com/goplus/gogen/internal/foo"
)

func bar(v *foo.Bar) {
	var val string
	for _xgo_it := v.XGo_Enum(); ; {
		var _xgo_ok bool
		val, _xgo_ok = _xgo_it.Next()
		if !_xgo_ok {
			break
		}
		fmt.Println(val)
	}
}
`)
}

func testForRangeUDT3NoAssign() {
	fmt.Println("=== testForRangeUDT3NoAssign ===")
	pkg := newMainPackage()
	foo := pkg.Import("github.com/goplus/gogen/internal/foo")
	bar := foo.Ref("Bar").Type()
	v := pkg.NewParam(token.NoPos, "v", types.NewPointer(bar))
	pkg.NewFunc(nil, "bar", types.NewTuple(v), nil, false).BodyStart(pkg).
		ForRange().Val(v).RangeAssignThen(token.NoPos).
		Val(pkg.Import("fmt").Ref("Println")).Val("Hi").Call(1).EndStmt().
		End().End()
	domTest(pkg, `package main

import (
	"fmt"
	"github.com/goplus/gogen/internal/foo"
)

func bar(v *foo.Bar) {
	for _xgo_it := v.XGo_Enum(); ; {
		var _xgo_ok bool
		_, _xgo_ok = _xgo_it.Next()
		if !_xgo_ok {
			break
		}
		fmt.Println("Hi")
	}
}
`)
}

func testForRangeUDTUnderline() {
	fmt.Println("=== testForRangeUDTUnderline ===")
	pkg := newMainPackage()
	foo := pkg.Import("github.com/goplus/gogen/internal/foo")
	bar := foo.Ref("Bar").Type()
	v := pkg.NewParam(token.NoPos, "v", types.NewPointer(bar))
	pkg.NewFunc(nil, "bar", types.NewTuple(v), nil, false).BodyStart(pkg).
		ForRange().VarRef(ctxRef(pkg, "_")).Val(v).RangeAssignThen(token.NoPos).
		Val(pkg.Import("fmt").Ref("Println")).Val("Hi").Call(1).EndStmt().
		End().End()
	domTest(pkg, `package main

import (
	"fmt"
	"github.com/goplus/gogen/internal/foo"
)

func bar(v *foo.Bar) {
	for _xgo_it := v.XGo_Enum(); ; {
		var _xgo_ok bool
		_, _xgo_ok = _xgo_it.Next()
		if !_xgo_ok {
			break
		}
		fmt.Println("Hi")
	}
}
`)
}

func testForRangeUDTUnderline2() {
	fmt.Println("=== testForRangeUDTUnderline2 ===")
	pkg := newMainPackage()
	foo := pkg.Import("github.com/goplus/gogen/internal/foo")
	nodeSet := foo.Ref("NodeSet").Type()
	v := pkg.NewParam(token.NoPos, "v", nodeSet)
	pkg.NewFunc(nil, "bar", types.NewTuple(v), nil, false).BodyStart(pkg).
		ForRange("_", "_").Val(v).RangeAssignThen(token.NoPos).
		Val(pkg.Import("fmt").Ref("Println")).Val("Hi").Call(1).EndStmt().
		End().End()
	domTest(pkg, `package main

import (
	"fmt"
	"github.com/goplus/gogen/internal/foo"
)

func bar(v foo.NodeSet) {
	for _xgo_it := v.Gop_Enum(); ; {
		var _xgo_ok bool
		_, _, _xgo_ok = _xgo_it.Next()
		if !_xgo_ok {
			break
		}
		fmt.Println("Hi")
	}
}
`)
}

func testForRangeUDT4() {
	fmt.Println("=== testForRangeUDT4 ===")
	pkg := newMainPackage()
	foo := pkg.Import("github.com/goplus/gogen/internal/foo")
	bar := foo.Ref("Foo").Type()
	v := pkg.NewParam(token.NoPos, "v", types.NewPointer(bar))
	pkg.NewFunc(nil, "bar", types.NewTuple(v), nil, false).BodyStart(pkg).
		ForRange("elem").Val(v).RangeAssignThen(token.NoPos).
		Val(pkg.Import("fmt").Ref("Println")).Val(ctxRef(pkg, "elem")).Call(1).EndStmt().
		SetBodyHandler(func(body *ast.BlockStmt, kind int) {
			gogen.InsertStmtFront(body, &ast.ExprStmt{X: ast.NewIdent("__sched__")})
		}).
		End().End()
	domTest(pkg, `package main

import (
	"fmt"
	"github.com/goplus/gogen/internal/foo"
)

func bar(v *foo.Foo) {
	v.XGo_Enum(func(elem string) {
		__sched__
		fmt.Println(elem)
	})
}
`)
}

func testForRangeUDT5() {
	fmt.Println("=== testForRangeUDT5 ===")
	pkg := newMainPackage()
	foo := pkg.Import("github.com/goplus/gogen/internal/foo")
	bar := foo.Ref("Foo2").Type()
	v := pkg.NewParam(token.NoPos, "v", types.NewPointer(bar))
	pkg.NewFunc(nil, "bar", types.NewTuple(v), nil, false).BodyStart(pkg).
		ForRange("key", "elem").Val(v).RangeAssignThen(token.NoPos).
		Val(pkg.Import("fmt").Ref("Println")).Val(ctxRef(pkg, "key")).Val(ctxRef(pkg, "elem")).
		Call(2).EndStmt().
		End().End()
	domTest(pkg, `package main

import (
	"fmt"
	"github.com/goplus/gogen/internal/foo"
)

func bar(v *foo.Foo2) {
	v.XGo_Enum(func(key int, elem string) {
		fmt.Println(key, elem)
	})
}
`)
}

func testForRangeUDT6() {
	fmt.Println("=== testForRangeUDT6 ===")
	pkg := newMainPackage()
	osPkg := pkg.Import("os")
	file := osPkg.Ref("File").Type()
	v := pkg.NewParam(token.NoPos, "v", types.NewPointer(file))
	pkg.NewFunc(nil, "bar", types.NewTuple(v), nil, false).BodyStart(pkg).
		ForRange("line").Val(v).RangeAssignThen(token.NoPos).
		Val(pkg.Import("fmt").Ref("Println")).Val(ctxRef(pkg, "line")).
		Call(1).EndStmt().
		End().End()
	domTest(pkg, `package main

import (
	"fmt"
	"github.com/goplus/gogen/internal/iox"
	"os"
)

func bar(v *os.File) {
	for _xgo_it := iox.EnumLines(v); ; {
		var _xgo_ok bool
		line, _xgo_ok := _xgo_it.Next()
		if !_xgo_ok {
			break
		}
		fmt.Println(line)
	}
}
`)
}

func testStaticMethod() {
	fmt.Println("=== testStaticMethod ===")
	pkg := newMainPackage()
	bar := pkg.Import("github.com/goplus/gogen/internal/bar")
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		Typ(bar.Ref("Game").Type()).MemberVal("New", 0).Call(0).EndStmt().
		End()
	domTest(pkg, `package main

import "github.com/goplus/gogen/internal/bar"

func main() {
	bar.XGos_Game_New()
}
`)
}

func testTemplateRecvMethod() {
	fmt.Println("=== testTemplateRecvMethod ===")
	pkg := newMainPackage()
	bar := pkg.Import("github.com/goplus/gogen/internal/bar")
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewVar(bar.Ref("Game").Type(), "g").
		VarVal("g").MemberVal("Run", 0).Val("Hi").Call(1).EndStmt().
		End()
	domTest(pkg, `package main

import "github.com/goplus/gogen/internal/bar"

func main() {
	var g bar.Game
	bar.Gopt_Game_Run(&g, "Hi")
}
`)
}

func testTemplateRecvMethod2() {
	fmt.Println("=== testTemplateRecvMethod2 ===")
	pkg := newMainPackage()
	bar := pkg.Import("github.com/goplus/gogen/internal/bar")
	tyGame := bar.Ref("Game").Type()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewVar(tyGame, "g").
		Typ(tyGame).MemberVal("Run", 0).VarRef("g").UnaryOp(token.AND).Val("Hi").Call(2).EndStmt().
		End()
	domTest(pkg, `package main

import "github.com/goplus/gogen/internal/bar"

func main() {
	var g bar.Game
	bar.Gopt_Game_Run(&g, "Hi")
}
`)
}

func testErrTemplateRecvMethod() {
	fmt.Println("=== testErrTemplateRecvMethod ===")
	pkg := newMainPackage()
	bar := pkg.Import("github.com/goplus/gogen/internal/bar")
	defer func() {
		if e := recover(); e == nil {
			panic("TestErrTemplateRecvMethod: no error?")
		}
	}()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewVar(types.NewPointer(bar.Ref("Game").Type()), "g").
		VarVal("g").MemberVal("Run", 0).Call(0).EndStmt().
		End()
}

func testBigIntCastUntypedFloat() {
	fmt.Println("=== testBigIntCastUntypedFloat ===")
	pkg := newXGoMainPackage()
	mbig := pkg.Import("github.com/goplus/gogen/internal/builtin")
	pkg.CB().NewVarStart(nil, "a").
		Val(mbig.Ref("XGo_bigint")).
		Val(&ast.BasicLit{Kind: token.FLOAT, Value: "1e20"}).Call(1).EndInit(1)
	domTest(pkg, `package main

import (
	"github.com/goplus/gogen/internal/builtin"
	"math/big"
)

var a = builtin.XGo_bigint_Cast__1(func() *big.Int {
	v, _ := new(big.Int).SetString("100000000000000000000", 10)
	return v
}())
`)
}

func testBigIntCastUntypedFloatError() {
	fmt.Println("=== testBigIntCastUntypedFloatError ===")
	defer func() {
		if e := recover(); e == nil {
			panic("TestBigIntCastUntypedFloatError: no error?")
		}
	}()
	pkg := newXGoMainPackage()
	mbig := pkg.Import("github.com/goplus/gogen/internal/builtin")
	pkg.CB().NewVarStart(nil, "a").
		Val(mbig.Ref("XGo_bigint")).
		Val(&ast.BasicLit{Kind: token.FLOAT, Value: "10000000000000000000.1"}).
		Call(1).EndInit(1)
}

func testUntypedBigDefault() {
	fmt.Println("=== testUntypedBigDefault ===")
	pkg := newXGoMainPackage()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		Val(ctxRef(pkg, "println")).
		UntypedBigInt(big.NewInt(1)).Call(1).EndStmt().
		Val(ctxRef(pkg, "println")).
		UntypedBigRat(big.NewRat(1, 2)).Call(1).EndStmt().End()
	domTest(pkg, `package main

import (
	"fmt"
	"github.com/goplus/gogen/internal/builtin"
	"math/big"
)

func main() {
	fmt.Println(builtin.XGo_bigint_Init__1(big.NewInt(1)))
	fmt.Println(builtin.XGo_bigrat_Init__2(big.NewRat(1, 2)))
}
`)
}

func testUntypedBigDefaultCall() {
	fmt.Println("=== testUntypedBigDefaultCall ===")
	pkg := newXGoMainPackage()
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		UntypedBigInt(big.NewInt(1)).MemberVal("Int64", 0).Call(0).EndStmt().
		UntypedBigRat(big.NewRat(1, 2)).MemberVal("Float64", 0).Call(0).EndStmt().End()
	domTest(pkg, `package main

import (
	"github.com/goplus/gogen/internal/builtin"
	"math/big"
)

func main() {
	builtin.XGo_bigint_Init__1(big.NewInt(1)).Int64()
	builtin.XGo_bigrat_Init__2(big.NewRat(1, 2)).Float64()
}
`)
}

func testUntypedBigIntToInterface() {
	fmt.Println("=== testUntypedBigIntToInterface ===")
	pkg := newXGoMainPackage()
	methods := []*types.Func{
		types.NewFunc(
			token.NoPos,
			pkg.Types,
			"Int64",
			types.NewSignatureType(
				nil,
				nil,
				nil,
				nil,
				types.NewTuple(types.NewVar(token.NoPos, nil, "v", types.Typ[types.Int64])),
				false,
			),
		),
	}
	tyInterf := types.NewInterfaceType(methods, nil).Complete()
	tyA := pkg.NewType("A").InitType(pkg, tyInterf)
	pkg.NewFunc(nil, "main", nil, nil, false).BodyStart(pkg).
		NewVarStart(tyA, "a").UntypedBigInt(big.NewInt(1)).EndInit(1).
		Val(ctxRef(pkg, "println")).
		VarVal("a").MemberVal("Int64", 0).Call(0).Call(1).EndStmt().End()
	domTest(pkg, `package main

import (
	"fmt"
	"github.com/goplus/gogen/internal/builtin"
	"math/big"
)

type A interface {
	Int64() (v int64)
}

func main() {
	var a A = builtin.XGo_bigint_Init__1(big.NewInt(1))
	fmt.Println(a.Int64())
}
`)
}

func testInt128() {
	fmt.Println("=== testInt128 ===")
	pkg := newXGoMainPackage()
	builtin := pkg.Import("github.com/goplus/gogen/internal/builtin")
	n1 := big.NewInt(1)
	n1.Lsh(n1, 127).Sub(n1, big.NewInt(1))
	n2 := big.NewInt(-1)
	n2.Lsh(n2, 127)
	uint128 := builtin.Ref("Uint128").Type()
	int128 := builtin.Ref("Int128").Type()
	pkg.CB().NewVarStart(int128, "a").UntypedBigInt(n1).EndInit(1)
	pkg.CB().NewVarStart(int128, "b").Val(1).EndInit(1)
	pkg.CB().NewVarStart(int128, "c").Val(&ast.BasicLit{Kind: token.FLOAT, Value: "1e30"}).EndInit(1)
	pkg.CB().NewVarStart(int128, "d").Typ(int128).UntypedBigInt(n2).Call(1).EndInit(1)
	pkg.CB().NewVarStart(int128, "e").Typ(int128).Typ(uint128).Val(1).Call(1).Call(1).EndInit(1)
	domTest(pkg, `package main

import (
	"github.com/goplus/gogen/internal/builtin"
	"math/big"
)

var a builtin.Int128 = builtin.Int128_Init__1(func() *big.Int {
	v, _ := new(big.Int).SetString("170141183460469231731687303715884105727", 10)
	return v
}())
var b builtin.Int128 = builtin.Int128_Init__0(1)
var c builtin.Int128 = builtin.Int128_Init__1(func() *big.Int {
	v, _ := new(big.Int).SetString("1000000000000000000000000000000", 10)
	return v
}())
var d builtin.Int128 = builtin.Int128_Cast__1(func() *big.Int {
	v, _ := new(big.Int).SetString("-170141183460469231731687303715884105728", 10)
	return v
}())
var e builtin.Int128 = builtin.Int128(builtin.Uint128_Cast__0(1))
`)
}

func testUint128() {
	fmt.Println("=== testUint128 ===")
	pkg := newXGoMainPackage()
	builtin := pkg.Import("github.com/goplus/gogen/internal/builtin")
	n1 := big.NewInt(1)
	n1.Lsh(n1, 128).Sub(n1, big.NewInt(1))
	uint128 := builtin.Ref("Uint128").Type()
	int128 := builtin.Ref("Int128").Type()
	pkg.CB().NewVarStart(uint128, "a").UntypedBigInt(n1).EndInit(1)
	pkg.CB().NewVarStart(uint128, "b").Val(0).EndInit(1)
	pkg.CB().NewVarStart(uint128, "c").Val(&ast.BasicLit{Kind: token.FLOAT, Value: "1e30"}).EndInit(1)
	pkg.CB().NewVarStart(uint128, "d").Typ(uint128).Typ(int128).Val(1).Call(1).Call(1).EndInit(1)
	domTest(pkg, `package main

import (
	"github.com/goplus/gogen/internal/builtin"
	"math/big"
)

var a builtin.Uint128 = builtin.Uint128_Init__1(func() *big.Int {
	v, _ := new(big.Int).SetString("340282366920938463463374607431768211455", 10)
	return v
}())
var b builtin.Uint128 = builtin.Uint128_Init__0(0)
var c builtin.Uint128 = builtin.Uint128_Init__1(func() *big.Int {
	v, _ := new(big.Int).SetString("1000000000000000000000000000000", 10)
	return v
}())
var d builtin.Uint128 = builtin.Uint128(builtin.Int128_Cast__0(1))
`)
}

func mustPanic(name string, fn func()) {
	defer func() {
		if e := recover(); e == nil {
			panic(name + ": no error?")
		}
	}()
	fn()
}

func testErrInt128() {
	fmt.Println("=== testErrInt128 ===")
	mustPanic("Int128_Max", func() {
		pkg := newXGoMainPackage()
		builtin := pkg.Import("github.com/goplus/gogen/internal/builtin")
		n := big.NewInt(1)
		n.Lsh(n, 127)
		int128 := builtin.Ref("Int128").Type()
		pkg.CB().NewVarStart(int128, "a").UntypedBigInt(n).EndInit(1)
	})
	mustPanic("Int128_Max_Float", func() {
		pkg := newXGoMainPackage()
		builtin := pkg.Import("github.com/goplus/gogen/internal/builtin")
		int128 := builtin.Ref("Int128").Type()
		pkg.CB().NewVarStart(int128, "a").Val(&ast.BasicLit{Kind: token.FLOAT, Value: "1e60"}).EndInit(1)
	})
	mustPanic("Int128_Min", func() {
		pkg := newXGoMainPackage()
		builtin := pkg.Import("github.com/goplus/gogen/internal/builtin")
		n := big.NewInt(-1)
		n.Lsh(n, 127).Sub(n, big.NewInt(1))
		int128 := builtin.Ref("Int128").Type()
		pkg.CB().NewVarStart(int128, "a").Typ(int128).UntypedBigInt(n).Call(1).EndInit(1)
	})
	mustPanic("Int128_Uint128", func() {
		pkg := newXGoMainPackage()
		builtin := pkg.Import("github.com/goplus/gogen/internal/builtin")
		n := big.NewInt(1)
		n.Lsh(n, 127)
		int128 := builtin.Ref("Int128").Type()
		uint128 := builtin.Ref("Uint128").Type()
		pkg.CB().NewVarStart(int128, "a").Typ(int128).Typ(uint128).UntypedBigInt(n).Call(1).Call(1).EndInit(1)
	})
}

func testErrUint128() {
	fmt.Println("=== testErrUint128 ===")
	mustPanic("Uint128_Max", func() {
		pkg := newXGoMainPackage()
		builtin := pkg.Import("github.com/goplus/gogen/internal/builtin")
		n := big.NewInt(1)
		n.Lsh(n, 128)
		uint128 := builtin.Ref("Uint128").Type()
		pkg.CB().NewVarStart(uint128, "a").UntypedBigInt(n).EndInit(1)
	})
	mustPanic("Uint128_Max_Float", func() {
		pkg := newXGoMainPackage()
		builtin := pkg.Import("github.com/goplus/gogen/internal/builtin")
		uint128 := builtin.Ref("Uint128").Type()
		pkg.CB().NewVarStart(uint128, "a").Val(&ast.BasicLit{Kind: token.FLOAT, Value: "1e60"}).EndInit(1)
	})
	mustPanic("Uint128_Min", func() {
		pkg := newXGoMainPackage()
		builtin := pkg.Import("github.com/goplus/gogen/internal/builtin")
		uint128 := builtin.Ref("Uint128").Type()
		pkg.CB().NewVarStart(uint128, "a").Typ(uint128).Val(-1).Call(1).EndInit(1)
	})
	mustPanic("Unt128_Int128", func() {
		pkg := newXGoMainPackage()
		builtin := pkg.Import("github.com/goplus/gogen/internal/builtin")
		int128 := builtin.Ref("Int128").Type()
		uint128 := builtin.Ref("Uint128").Type()
		pkg.CB().NewVarStart(uint128, "a").Typ(uint128).Typ(int128).Val(-1).Call(1).Call(1).EndInit(1)
	})
}

func main() {
	fmt.Println("Running xgo_test tests (batch12: 60 cases)...")
	fmt.Println()

	testConvertToClosure()
	fmt.Println("  [PASS]")
	fmt.Println()

	testXGooConst()
	fmt.Println("  [PASS]")
	fmt.Println()

	testFmtPrintln()
	fmt.Println("  [PASS]")
	fmt.Println()

	testBigRatConstant()
	fmt.Println("  [PASS]")
	fmt.Println()

	testBigIntVar()
	fmt.Println("  [PASS]")
	fmt.Println()

	testBigIntVarInit()
	fmt.Println("  [PASS]")
	fmt.Println()

	testBigInt()
	fmt.Println("  [PASS]")
	fmt.Println()

	testBigInt2()
	fmt.Println("  [PASS]")
	fmt.Println()

	testBigRat()
	fmt.Println("  [PASS]")
	fmt.Println()

	testBigRatInit()
	fmt.Println("  [PASS]")
	fmt.Println()

	testBigRatInit2()
	fmt.Println("  [PASS]")
	fmt.Println()

	testBigRatCast()
	fmt.Println("  [PASS]")
	fmt.Println()

	testCastIntTwoValue()
	fmt.Println("  [PASS]")
	fmt.Println()

	testCastBigIntTwoValue()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrCast()
	fmt.Println("  [PASS]")
	fmt.Println()

	testUntypedBigIntAdd()
	fmt.Println("  [PASS]")
	fmt.Println()

	testBigRatIncDec()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrValRef()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrBigRatIncDec()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrBigRatAssignOp()
	fmt.Println("  [PASS]")
	fmt.Println()

	testBigRatAssignOp()
	fmt.Println("  [PASS]")
	fmt.Println()

	testBigRatAssignOp2()
	fmt.Println("  [PASS]")
	fmt.Println()

	testUntypedBigIntQuo()
	fmt.Println("  [PASS]")
	fmt.Println()

	testUntypedBigIntQuo2()
	fmt.Println("  [PASS]")
	fmt.Println()

	testUntypedBigIntQuo3()
	fmt.Println("  [PASS]")
	fmt.Println()

	testUntypedBigIntRem()
	fmt.Println("  [PASS]")
	fmt.Println()

	testUntypedBigIntShift()
	fmt.Println("  [PASS]")
	fmt.Println()

	testUntypedBigRatAdd()
	fmt.Println("  [PASS]")
	fmt.Println()

	testUntypedBigRatAdd2()
	fmt.Println("  [PASS]")
	fmt.Println()

	testUntypedBigRatAdd3()
	fmt.Println("  [PASS]")
	fmt.Println()

	testUntypedBigRatAdd4()
	fmt.Println("  [PASS]")
	fmt.Println()

	testUntypedBigRatAdd5()
	fmt.Println("  [PASS]")
	fmt.Println()

	testUntypedBigRatAdd6()
	fmt.Println("  [PASS]")
	fmt.Println()

	testUntypedBigRatSub()
	fmt.Println("  [PASS]")
	fmt.Println()

	testUntypedBigRatSub2()
	fmt.Println("  [PASS]")
	fmt.Println()

	testUntypedBigRatLT()
	fmt.Println("  [PASS]")
	fmt.Println()

	testUntypedBigRat()
	fmt.Println("  [PASS]")
	fmt.Println()

	testUntypedBigRat2()
	fmt.Println("  [PASS]")
	fmt.Println()

	testForRangeUDT()
	fmt.Println("  [PASS]")
	fmt.Println()

	testForRangeUDT2()
	fmt.Println("  [PASS]")
	fmt.Println()

	testForRangeUDT3WithAssign()
	fmt.Println("  [PASS]")
	fmt.Println()

	testForRangeUDT3NoAssign()
	fmt.Println("  [PASS]")
	fmt.Println()

	testForRangeUDTUnderline()
	fmt.Println("  [PASS]")
	fmt.Println()

	testForRangeUDTUnderline2()
	fmt.Println("  [PASS]")
	fmt.Println()

	testForRangeUDT4()
	fmt.Println("  [PASS]")
	fmt.Println()

	testForRangeUDT5()
	fmt.Println("  [PASS]")
	fmt.Println()

	testForRangeUDT6()
	fmt.Println("  [PASS]")
	fmt.Println()

	testStaticMethod()
	fmt.Println("  [PASS]")
	fmt.Println()

	testTemplateRecvMethod()
	fmt.Println("  [PASS]")
	fmt.Println()

	testTemplateRecvMethod2()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrTemplateRecvMethod()
	fmt.Println("  [PASS]")
	fmt.Println()

	testBigIntCastUntypedFloat()
	fmt.Println("  [PASS]")
	fmt.Println()

	testBigIntCastUntypedFloatError()
	fmt.Println("  [PASS]")
	fmt.Println()

	testUntypedBigDefault()
	fmt.Println("  [PASS]")
	fmt.Println()

	testUntypedBigDefaultCall()
	fmt.Println("  [PASS]")
	fmt.Println()

	testUntypedBigIntToInterface()
	fmt.Println("  [PASS]")
	fmt.Println()

	testInt128()
	fmt.Println("  [PASS]")
	fmt.Println()

	testUint128()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrInt128()
	fmt.Println("  [PASS]")
	fmt.Println()

	testErrUint128()
	fmt.Println("  [PASS]")
	fmt.Println()

	fmt.Println("All tests PASSED!")
}
