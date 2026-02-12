// Converted from codebuild_test.go for llgo testing
// Tests circular embedded field lookup in CodeBuilder
package main

import (
	"fmt"
	"go/token"
	"go/types"

	"github.com/goplus/gogen"
)

func testCircularEmbeddedFieldLookup() {
	fmt.Println("=== testCircularEmbeddedFieldLookup ===")

	pkg := gogen.NewPackage("", "foo", nil)
	cb := pkg.CB()

	typeA := types.NewNamed(types.NewTypeName(token.NoPos, pkg.Types, "A", nil), nil, nil)
	typeB := types.NewNamed(types.NewTypeName(token.NoPos, pkg.Types, "B", nil), nil, nil)

	// Creates a circular embedding relationship between type A and B.
	typeA.SetUnderlying(types.NewStruct([]*types.Var{
		types.NewField(token.NoPos, pkg.Types, "", typeB, true), // Embed B.
	}, nil))
	typeB.SetUnderlying(types.NewStruct([]*types.Var{
		types.NewField(token.NoPos, pkg.Types, "", typeA, true), // Embed A.
	}, nil))

	fmt.Println("  Created circular embedding: A embeds B, B embeds A")

	// Use InternalStack().Push() instead of stk.Push()
	cb.InternalStack().Push(&gogen.Element{Type: typeA})
	fmt.Println("  Pushed Element{Type: typeA} to stack")

	kind, _ := cb.Member("any", gogen.MemberFlagVal)
	if kind != gogen.MemberInvalid {
		panic("Member should return MemberInvalid for circular embedding (MemberFlagVal)")
	}
	fmt.Println("  Member('any', MemberFlagVal) = MemberInvalid [PASS]")

	kind, _ = cb.Member("any", gogen.MemberFlagRef)
	if kind != gogen.MemberInvalid {
		panic("Member should return MemberInvalid for circular embedding (MemberFlagRef)")
	}
	fmt.Println("  Member('any', MemberFlagRef) = MemberInvalid [PASS]")
}

func main() {
	fmt.Println("Running codebuild_test tests...")
	fmt.Println()

	testCircularEmbeddedFieldLookup()
	fmt.Println()

	fmt.Println("All tests PASSED!")
}
