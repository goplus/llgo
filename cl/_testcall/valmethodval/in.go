package main

type S struct {
	v int
}

func (s S) Inc(x int) int {
	return s.v + x
}

// testValueMethodValue: value receiver method value
func main() {
	sv := S{v: 10}
	mvi := sv.Inc
	_ = mvi(3)
}
