// Converted from cb_unit_test.go for llgo testing
// Tests ValWithUnit functionality in CodeBuilder
// Note: TestTimeDurationUnits is skipped because it uses unexported buildTypeUnits
package main

import (
	"fmt"
	"go/ast"
	"go/token"
	"go/types"

	"github.com/goplus/gogen"
)

func namedType(pkgName, tName string) types.Type {
	pkg := types.NewPackage(pkgName, "")
	return types.NewNamed(types.NewTypeName(0, pkg, tName, nil), types.Typ[types.Int64], nil)
}

func testValWithUnitPanic(name string, cb *gogen.CodeBuilder, typ types.Type, unit string) {
	defer func() {
		if e := recover(); e == nil {
			panic(fmt.Sprintf("%s: expected panic but got none", name))
		} else {
			fmt.Printf("  %s: got expected panic [PASS]\n", name)
		}
	}()
	cb.ValWithUnit(&ast.BasicLit{Value: "1", Kind: token.INT}, typ, unit)
}

func testUserDefinedTypeUnits() {
	fmt.Println("=== testUserDefinedTypeUnits ===")
	pkg := gogen.NewPackage("", "foo", nil)
	u := pkg.Import("github.com/goplus/gogen/internal/unit")
	ut := u.Ref("Distance").Type()
	ut2 := u.Ref("NoUnit").Type()
	cb := pkg.CB()

	// This should work - Distance has units defined
	cb.ValWithUnit(&ast.BasicLit{Value: "1", Kind: token.INT}, ut, "m")
	fmt.Println("  ValWithUnit with Distance type [PASS]")

	// This should panic - NoUnit has no units
	testValWithUnitPanic("no unit for unit.NoUnit", cb, ut2, "m")
}

func testValWithUnit() {
	fmt.Println("=== testValWithUnit ===")
	pkg := gogen.NewPackage("", "foo", nil)
	cb := pkg.CB()

	// Test various panic cases
	testValWithUnitPanic("no unit for int", cb, types.Typ[types.Int], "m")
	testValWithUnitPanic("y is not unit of time.Duration", cb, namedType("time", "Duration"), "y")
	testValWithUnitPanic("user defined type: not impl", cb, namedType("foo", "Bar"), "m")

	// This should work - time.Duration with valid unit "m" (minute)
	cb.ValWithUnit(&ast.BasicLit{Value: "1", Kind: token.INT}, namedType("time", "Duration"), "m")
	fmt.Println("  ValWithUnit with time.Duration and unit 'm' [PASS]")
}

func main() {
	fmt.Println("Running cb_unit_test tests...")
	fmt.Println("Note: TestTimeDurationUnits skipped (uses unexported method)")
	fmt.Println()

	testUserDefinedTypeUnits()
	fmt.Println()

	testValWithUnit()
	fmt.Println()

	fmt.Println("All tests PASSED!")
}
