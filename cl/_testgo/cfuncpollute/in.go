package main

import "unsafe"

// libc printf - external C function may clobber x26 register
//
//go:linkname printf C.printf
func printf(format *byte, args ...any) int32

func cstr(s string) *byte {
	b := []byte(s + "\x00")
	return &b[0]
}

// Test scenario: calling a C function inside a closure before reading free variables
func makeClosure(x int) func() int {
	return func() int {
		// 1. Call C function - may clobber x26
		printf(cstr("before reading x\n"))
		// 2. Read free variable - x26 may have been clobbered by C function
		return x
	}
}

func main() {
	println("starting test")

	f := makeClosure(42)
	result := f()

	println("result:", result)
	if result != 42 {
		println("FAIL: expected 42, got", result)
	} else {
		println("PASS")
	}
}

// To prevent compiler error about unused import
var _ = unsafe.Pointer(nil)
