package main

import (
	"github.com/goplus/llgo/async"
)

type Point struct {
	X, Y int
}

func Compute(x int) *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(x * 2)
	})
}

func StructAllocAsync(x, y int) async.Future[int] {
	pt := &Point{X: x, Y: y}
	px := Compute(pt.X).Await()
	py := Compute(pt.Y).Await()
	pt.X = px
	pt.Y = py
	return async.Return(pt.X + pt.Y)
}
