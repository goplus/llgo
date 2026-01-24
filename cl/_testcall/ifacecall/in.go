package main

type S struct {
	v int
}

func (s *S) Add(x int) int {
	return s.v + x
}

func main() {
	s := &S{v: 5}
	var i interface{ Add(int) int } = s
	_ = i.Add(11) // invoke instruction: direct call through itab
}
