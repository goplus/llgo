package main

import (
	"github.com/goplus/llgo/_demo/cppintf/foo"
	"github.com/goplus/llgo/c"
)

type Bar struct {
	foo.Callback
	a int
	b float64
}

func NewBar(a int, b float64) *Bar {
	return &Bar{
		Callback: foo.Callback{
			Vptr: &foo.CallbackVtbl{
				ValA: c.Func((*Bar).getA),
				ValB: c.Func((*Bar).getB),
			},
		},
		a: a, b: b,
	}
}

func (p *Bar) getA() int {
	return p.a
}

func (p *Bar) getB() float64 {
	return p.b
}

func main() {
	bar := NewBar(1, 2.0)
	foo.F(&bar.Callback)
}
