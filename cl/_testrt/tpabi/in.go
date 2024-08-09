package main

import "github.com/goplus/llgo/c"

type T[M, N any] struct {
	m M
	n N
}

func (t *T[M, N]) Demo() {
	println(t.m, t.n)
}

func (t T[M, N]) Info() {
	println(t.m, t.n)
}

type I interface {
	Demo()
}

type K[N any] [4]N

//llgo:link (*K).Advance llgo.advance
func (t *K[N]) Advance(n int) *K[N] {
	return nil
}

func main() {
	var a any = T[string, int]{"a", 1}
	println(a.(T[string, int]).m)
	var i I = &T[string, int]{"hello", 100}
	i.Demo()

	k := &K[int]{1, 2, 3, 4}
	println(c.Advance(k, 1))
	println(k.Advance(1))
}
