package main

import "fmt"

type state struct {
	v int
}

func (s *state) mutate(next int) int {
	s.v = next
	return s.v
}

func returnStateAndMut() (state, int) {
	x := state{v: 1}
	return x, x.mutate(2)
}

func main() {
	a, b := returnStateAndMut()
	if a.v != 2 || b != 2 {
		panic(fmt.Sprintf("return order mismatch: got (%d,%d), want (2,2)", a.v, b))
	}
	println("ok")
}
