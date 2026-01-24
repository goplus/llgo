package main

type S struct {
	v int
}

func (s *S) Add(x int) int {
	return s.v + x
}

func (s S) Inc(x int) int {
	return s.v + x
}

func main() {
	s := &S{v: 5}
	_ = s.Add(10) // direct pointer receiver method call
	sv := S{v: 7}
	_ = sv.Inc(3) // direct value receiver method call
}
