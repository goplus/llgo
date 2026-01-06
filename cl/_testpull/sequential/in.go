package foo

import "github.com/goplus/llgo/async"

// StepA is a mock async function for testing
func StepA() *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(10)
	})
}

// StepB is a mock async function for testing
func StepB(x int) *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(x * 2)
	})
}

// Sequential is an async function with two sequential awaits
func Sequential() async.Future[int] {
	a := StepA().Await()
	b := StepB(a).Await()
	return async.Return(a + b)
}
