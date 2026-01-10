package foo

import "github.com/goplus/llgo/async"

// Compute is a mock async function for testing
func Compute(i int) *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(i * i)
	})
}

// Loop is an async function with await inside a loop
func Loop(n int) async.Future[int] {
	sum := 0
	for i := 0; i < n; i++ {
		x := Compute(i).Await()
		sum += x
	}
	return async.Return(sum)
}
