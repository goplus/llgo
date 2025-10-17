package main

import (
	"reflect"
)

func main() {
	x := 42
	p := &x

	// Test 1: Non-pointer value - should return same value
	v1 := reflect.Indirect(reflect.ValueOf(x))
	if !v1.IsValid() || v1.Interface() != 42 {
		panic("Non-pointer test failed: expected 42")
	}

	// Test 2: Pointer - should dereference
	v2 := reflect.Indirect(reflect.ValueOf(p))
	if !v2.IsValid() || v2.Interface() != 42 {
		panic("Pointer dereference test failed: expected 42")
	}

	// Test 3: Nil pointer - should return invalid Value
	var nilPtr *int
	v3 := reflect.Indirect(reflect.ValueOf(nilPtr))
	if v3.IsValid() {
		panic("Nil pointer test failed: expected invalid Value")
	}

	println("PASS")
}
