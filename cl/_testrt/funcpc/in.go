package main

import "unsafe"

// FuncPCABI0 returns the entry address of f.
func FuncPCABI0(f interface{}) uintptr {
	words := (*[2]unsafe.Pointer)(unsafe.Pointer(&f))
	return *(*uintptr)(unsafe.Pointer(words[1]))
}

// FuncPCABIInternal returns the entry address of f.
func FuncPCABIInternal(f interface{}) uintptr {
	words := (*[2]unsafe.Pointer)(unsafe.Pointer(&f))
	return *(*uintptr)(unsafe.Pointer(words[1]))
}

func globalFunc() int {
	return 42
}

type S struct {
	v int
}

func (s *S) Method() int {
	return s.v
}

func main() {
	// Test plain function
	pc1 := FuncPCABI0(globalFunc)
	_ = pc1

	// Test method value
	s := &S{v: 100}
	pc2 := FuncPCABI0(s.Method)
	_ = pc2

	// Test closure with free vars
	x := 10
	closure := func() int { return x }
	pc3 := FuncPCABI0(closure)
	_ = pc3

	// Test FuncPCABIInternal
	pc4 := FuncPCABIInternal(globalFunc)
	_ = pc4
}
