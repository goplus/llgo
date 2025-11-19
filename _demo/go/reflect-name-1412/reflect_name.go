package main

import (
	"fmt"
	"reflect"
)

func main() {
	// Test all basic types
	tests := []struct {
		value    interface{}
		expected string
	}{
		// Integers
		{int(42), "int"},
		{int8(42), "int8"},
		{int16(42), "int16"},
		{int32(42), "int32"},
		{int64(42), "int64"},
		{uint(42), "uint"},
		{uint8(42), "uint8"},
		{uint16(42), "uint16"},
		{uint32(42), "uint32"},
		{uint64(42), "uint64"},
		{uintptr(42), "uintptr"},

		// Floats
		{float32(3.14), "float32"},
		{float64(3.14), "float64"},

		// Complex
		{complex64(1 + 2i), "complex64"},
		{complex128(1 + 2i), "complex128"},

		// Bool
		{true, "bool"},

		// String
		{"hello", "string"},

		// Byte and Rune (aliases)
		{byte(65), "uint8"},
		{rune(65), "int32"},
	}

	passed := 0
	failed := 0

	for _, tt := range tests {
		rt := reflect.TypeOf(tt.value)
		name := rt.Name()
		kind := rt.Kind()

		if name == tt.expected {
			fmt.Printf("✓ %v (kind=%v): Name=%q\n", tt.expected, kind, name)
			passed++
		} else {
			fmt.Printf("✗ Expected %q, got %q (kind=%v)\n", tt.expected, name, kind)
			failed++
		}
	}

	fmt.Printf("\nResults: %d passed, %d failed\n", passed, failed)

	if failed > 0 {
		panic(fmt.Sprintf("%d tests failed", failed))
	}

	fmt.Println("✓ All basic types test passed!")
}
