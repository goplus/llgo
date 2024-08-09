package main

type T[M, N any] struct {
	m M
	n N
}

func (t *T[M, N]) Demo() {
	println(t.m, t.n)
}

type I interface {
	Demo()
}

func main() {
	var i I = &T[string, int]{"hello", 100}
	i.Demo()
}
