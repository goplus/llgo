package main

type inner struct {
	x int
}

type outer struct {
	y int
	inner
}

func (*inner) M()   {}
func (m *outer) M() {}

type InnerInt struct {
	X int
}

type OuterInt struct {
	Y int
	InnerInt
}

func (i *InnerInt) M() int {
	return i.X
}

func main() {
	var v1 any = (*outer).M
	var v2 any = (*InnerInt).M
	f1, ok := v1.(func(*outer))
	println(f1, ok)
	f2, ok := v2.(func(*outer))
	println(f2, ok)
	if ok {
		panic("type assertion should have failed but succeeded")
	}
}
