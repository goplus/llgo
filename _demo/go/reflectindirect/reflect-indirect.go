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

	// Test 4: Struct value - should return same value
	type Person struct {
		Name string
		Age  int
	}
	person := Person{Name: "Alice", Age: 30}
	v4 := reflect.Indirect(reflect.ValueOf(person))
	if !v4.IsValid() || v4.Interface().(Person).Name != "Alice" || v4.Interface().(Person).Age != 30 {
		panic("Struct value test failed: expected Person{Name: Alice, Age: 30}")
	}

	// Test 5: Struct pointer - should dereference
	personPtr := &Person{Name: "Bob", Age: 25}
	v5 := reflect.Indirect(reflect.ValueOf(personPtr))
	if !v5.IsValid() || v5.Interface().(Person).Name != "Bob" || v5.Interface().(Person).Age != 25 {
		panic("Struct pointer test failed: expected Person{Name: Bob, Age: 25}")
	}

	println("PASS")
}
