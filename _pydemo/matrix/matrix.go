package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/py"
	"github.com/goplus/llgo/py/numpy"
)

func matrix(row, col int, vals ...float64) *py.Object {
	if len(vals) != row*col {
		panic("invalid matrix size")
	}
	rows := py.NewList(uintptr(row))
	for i := 0; i < row; i++ {
		cols := py.NewList(uintptr(col))
		for j := 0; j < col; j++ {
			cols.ListSetItem(uintptr(j), py.Float(vals[i*col+j]))
		}
		rows.ListSetItem(uintptr(i), cols)
	}
	return numpy.Array(rows, nil)
}

func main() {
	a := matrix(3, 3, 1, 2, 3, 4, 5, 6, 7, 8, 9)
	b := matrix(3, 3, 9, 8, 7, 6, 5, 4, 3, 2, 1)
	x := numpy.Add(a, b)
	c.Printf(c.Str("a = %s\n"), a.Str().CStr())
	c.Printf(c.Str("a = %s\n"), b.Str().CStr())
	c.Printf(c.Str("a+b = %s\n"), x.Str().CStr())
}
