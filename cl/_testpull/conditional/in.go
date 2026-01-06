package foo

import "github.com/goplus/llgo/async"

// StepA is a mock async function for testing
func StepA() *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(10)
	})
}

// StepB is a mock async function for testing
func StepB() *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(20)
	})
}

// Conditional is an async function with conditional branches containing awaits
func Conditional(cond bool) async.Future[int] {
	if cond {
		return async.Return(StepA().Await())
	}
	return async.Return(StepB().Await())
}
