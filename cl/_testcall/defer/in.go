package main

import _ "unsafe" // for go:linkname

//go:linkname cAbs C.abs
func cAbs(x int32) int32

type S struct {
	v int
}

func (s *S) Add(x int) int {
	return s.v + x
}

func (s S) Inc(x int) int {
	return s.v + x
}

func globalAdd(x, y int) int {
	return x + y
}

// Test defer statement with various call types
func main() {
	s := &S{v: 5}
	sv := S{v: 7}
	x := 10
	var i interface{ Add(int) int } = s

	// defer with closure (free var)
	defer func() {
		_ = x * 2
	}()

	// defer with closure (no free var)
	defer func() {
		_ = 1 + 1
	}()

	// defer with global function
	defer globalAdd(1, 2)

	// defer with pointer method value
	mv := s.Add
	defer mv(3)

	// defer with value method value
	mvi := sv.Inc
	defer mvi(4)

	// defer with method expression
	me := (*S).Add
	defer me(s, 5)

	// defer with C function (go:linkname)
	defer cAbs(-6)

	// defer with builtin (println)
	defer println("hello")

	// defer with direct method call
	defer s.Add(7)
	defer sv.Inc(8)

	// defer with interface method call (invoke)
	defer i.Add(9)

	// defer with interface method value
	im := i.Add
	defer im(10)
}
