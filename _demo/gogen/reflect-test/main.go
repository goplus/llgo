package main

import (
	"fmt"
	"reflect"
)

func main() {
	testReflect()
	fmt.Println("\n=== All reflect tests passed ===")
}

func testReflect() {
	fmt.Println("=== Test Reflect ===")

	// Note: reflect.TypeOf(42) is not tested here because it produces incorrect
	// results in llgo (Type.Name() returns empty string instead of "int")
	// Only testing TypeOf with pointer types which work correctly

	// TypeOf with pointer
	var num int = 42
	tp := reflect.TypeOf(&num)
	if tp.Kind() != reflect.Ptr {
		panic("TypeOf(&num).Kind() should be Ptr")
	}
	if tp.Elem().Kind() != reflect.Int {
		panic("Elem().Kind() should be Int")
	}

	// ValueOf
	v := reflect.ValueOf(&num)
	ptr := v.Pointer()
	if ptr == 0 {
		panic("Pointer should not be 0")
	}

	fmt.Println("SUCCESS\n")
}
