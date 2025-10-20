package main

import (
	"fmt"
	"go/types"
)

func main() {
	fmt.Println("=== Scope Insert Test ===\n")

	// Create a scope
	scope := types.NewScope(nil, 0, 0, "test")

	// Test 1: Successful insert
	obj1 := types.NewVar(0, nil, "x", types.Typ[types.Int])
	if alt := scope.Insert(obj1); alt != nil {
		panic(fmt.Sprintf("unexpected: insert failed with conflict: %v", alt))
	}
	fmt.Printf("✓ Insert successful: %s\n", obj1.Name())

	// Test 2: Duplicate insert (will fail)
	obj2 := types.NewVar(0, nil, "x", types.Typ[types.String])
	if alt := scope.Insert(obj2); alt != nil {
		fmt.Printf("✓ Insert failed as expected: %s already exists\n", alt.Name())
	} else {
		panic("unexpected: duplicate insert should have failed")
	}

	// Test 3: Insert different name
	obj3 := types.NewVar(0, nil, "y", types.Typ[types.String])
	if alt := scope.Insert(obj3); alt != nil {
		panic(fmt.Sprintf("unexpected: insert failed with conflict: %v", alt))
	}
	fmt.Printf("✓ Insert successful: %s\n", obj3.Name())

	// View results
	fmt.Printf("\nScope contains %d objects\n", scope.Len())

	// Verify expected count
	expectedCount := 2 // x and y
	if scope.Len() != expectedCount {
		panic(fmt.Sprintf("unexpected: scope should contain %d objects, but has %d", expectedCount, scope.Len()))
	}
	fmt.Printf("✓ Scope length check passed\n")

	fmt.Println("\nAll objects:")
	for _, name := range scope.Names() {
		obj := scope.Lookup(name)
		fmt.Printf("  - %s: %v\n", name, obj.Type())
	}
}
