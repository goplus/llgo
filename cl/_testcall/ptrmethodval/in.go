package main

type S struct {
	v int
}

func (s *S) Add(x int) int {
	return s.v + x
}

// testPtrMethodValue: pointer receiver method value
func main() {
	s := &S{v: 5}
	mv := s.Add
	_ = mv(7)
}
