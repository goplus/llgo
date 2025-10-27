package main

import (
	"github.com/goplus/llgo/cl/_testdata/geometry1370"
)

func main() {
	rect := geometry1370.NewRectangle(5.0, 3.0)
	geometry1370.RegisterShape(rect, 42)
	println("ID:", rect.GetID())
}
