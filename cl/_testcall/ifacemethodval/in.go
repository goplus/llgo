package main

type S struct {
	v int
}

func (s *S) Add(x int) int {
	return s.v + x
}

// testIfaceMethodValue: interface method value
func main() {
	s := &S{v: 5}
	var i interface{ Add(int) int } = s
	im := i.Add
	_ = im(9)
}
