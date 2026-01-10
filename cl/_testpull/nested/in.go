package foo

import "github.com/goplus/llgo/async"

// Inner is a nested async function
func Inner(x int) *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(x * 2)
	})
}

// Middle calls Inner
func Middle(x int) *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		y := Inner(x).Await()
		z := Inner(y).Await()
		resolve(z)
	})
}

// Outer calls Middle
func Outer(x int) *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		a := Middle(x).Await()
		b := Middle(a).Await()
		resolve(b)
	})
}

// DeepNesting tests deeply nested async calls
func DeepNesting() async.Future[int] {
	result := Outer(1).Await()
	return async.Return(result)
}
