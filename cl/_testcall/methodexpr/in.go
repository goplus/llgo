package main

type S struct {
	v int
}

func (s *S) Add(x int) int {
	return s.v + x
}

// testMethodExpr: method expression
func main() {
	s := &S{v: 5}
	me := (*S).Add
	_ = me(s, 8)
}
