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

// Test go statement with various call types
func main() {
	s := &S{v: 5}
	sv := S{v: 7}
	x := 10
	var i interface{ Add(int) int } = s

	// go with closure (free var)
	go func() {
		_ = x * 2
	}()

	// go with closure (no free var)
	go func() {
		_ = 1 + 1
	}()

	// go with global function
	go globalAdd(1, 2)

	// go with pointer method value
	mv := s.Add
	go mv(3)

	// go with value method value
	mvi := sv.Inc
	go mvi(4)

	// go with method expression
	me := (*S).Add
	go me(s, 5)

	// go with C function (go:linkname)
	go cAbs(-6)

	// go with builtin (println)
	go println("hello")

	// go with interface method call (invoke)
	go i.Add(7)

	// go with interface method value
	im := i.Add
	go im(8)
}
