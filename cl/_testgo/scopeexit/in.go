package main

import "github.com/goplus/llgo/c"

type RefObj struct {
	refcnt c.Int
	value  float64
}

func Float(value float64) *RefObj {
	return &RefObj{1, value}
}

func (o *RefObj) IncRef() {
	o.refcnt++
}

// llgo:scopeexit (*RefObj).DecRef
func (o *RefObj) DecRef() {
	o.refcnt--
}

func (o *RefObj) Value() float64 {
	return o.value
}

func main() {
	a := Float(3.14)
	b := a
	c.Printf(c.Str("Hello %v\n"), b.Value())
}
