package main

import (
	"github.com/goplus/llgo/_demo/cppintf/foo"
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/math"
)

type Bar struct {
	foo.Callback
	a int
}

func NewBar(a int) *Bar {
	return &Bar{
		Callback: foo.Callback{
			Vptr: &foo.CallbackVtbl{
				Val:  c.Func((*Bar).getA),
				Calc: c.Func((*Bar).sqrt),
			},
		},
		a: a,
	}
}

func (p *Bar) getA() int {
	return p.a
}

func (p *Bar) sqrt(v float64) float64 {
	return math.Sqrt(v)
}

func main() {
	bar := NewBar(1)
	foo.F(&bar.Callback)
	foo.G(&bar.Callback)
}
