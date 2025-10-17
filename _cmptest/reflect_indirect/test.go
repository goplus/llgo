package main

import (
	"fmt"
	"reflect"
)

func main() {
	x := 42
	p := &x

	// Test 1: Non-pointer value - should return same value
	v1 := reflect.Indirect(reflect.ValueOf(x))
	fmt.Printf("Non-pointer: %v\n", v1.Interface())

	// Test 2: Pointer - should dereference
	v2 := reflect.Indirect(reflect.ValueOf(p))
	fmt.Printf("Pointer: %v\n", v2.Interface())

	// Test 3: Nil pointer
	var nilPtr *int
	v3 := reflect.Indirect(reflect.ValueOf(nilPtr))
	fmt.Printf("Nil pointer valid: %v\n", v3.IsValid())
}
