package foo

import "github.com/goplus/llgo/async"

// GetValue is a mock async function
func GetValue(x int) *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(x)
	})
}

// EarlyReturn tests early return in async
func EarlyReturn(cond bool) async.Future[int] {
	if cond {
		return async.Return(0)
	}
	x := GetValue(10).Await()
	return async.Return(x)
}

// MultipleReturns tests multiple return paths
func MultipleReturns(n int) async.Future[int] {
	if n < 0 {
		return async.Return(-1)
	}

	x := GetValue(n).Await()

	if x > 10 {
		return async.Return(10)
	}

	y := GetValue(x).Await()
	return async.Return(y)
}

// NoAwait tests async function without any await
func NoAwait(x int) async.Future[int] {
	return async.Return(x * 2)
}

// SingleAwait tests async function with single await
func SingleAwait(x int) async.Future[int] {
	result := GetValue(x).Await()
	return async.Return(result)
}
