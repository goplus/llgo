package foo

import "github.com/goplus/llgo/async"

// Step is a mock async function for testing
func Step() *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(42)
	})
}

// Simple is a basic async function with a single await
func Simple() async.Future[int] {
	x := Step().Await()
	return async.Return(x + 1)
}
