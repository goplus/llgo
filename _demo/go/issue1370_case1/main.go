package main

import (
	"fmt"
	"go/types"
)

func main() {
	testScopeInsertLookup()
	testScopeLookupNonExistent()
	testScopeMultipleObjects()
}

func testScopeInsertLookup() {
	fmt.Println("=== Test Scope Insert and Lookup ===")
	scope := types.NewScope(nil, 0, 0, "test")
	obj := types.NewVar(0, nil, "x", types.Typ[types.Int])

	scope.Insert(obj)

	result := scope.Lookup("x")
	if result != obj {
		panic(fmt.Sprintf("Lookup returned wrong object: expected %v, got %v", obj, result))
	}
	fmt.Println("SUCCESS: Scope.Insert and Lookup work correctly")
}

func testScopeLookupNonExistent() {
	fmt.Println("\n=== Test Scope Lookup Non-Existent ===")
	scope := types.NewScope(nil, 0, 0, "test")
	
	result := scope.Lookup("nonexistent")
	if result != nil {
		panic(fmt.Sprintf("Lookup should return nil for non-existent name, got %v", result))
	}
	fmt.Println("SUCCESS: Lookup returns nil for non-existent name")
}

func testScopeMultipleObjects() {
	fmt.Println("\n=== Test Scope Multiple Objects ===")
	scope := types.NewScope(nil, 0, 0, "test")
	obj1 := types.NewVar(0, nil, "x", types.Typ[types.Int])
	obj2 := types.NewVar(0, nil, "y", types.Typ[types.String])

	scope.Insert(obj1)
	scope.Insert(obj2)

	result1 := scope.Lookup("x")
	if result1 != obj1 {
		panic(fmt.Sprintf("Lookup('x') returned wrong object: expected %v, got %v", obj1, result1))
	}

	result2 := scope.Lookup("y")
	if result2 != obj2 {
		panic(fmt.Sprintf("Lookup('y') returned wrong object: expected %v, got %v", obj2, result2))
	}
	fmt.Println("SUCCESS: Multiple objects handled correctly")
}
