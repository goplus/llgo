package multiret

import "github.com/goplus/llgo/async"

// Step returns an async future
func Step(x int) *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(x)
	})
}

// === Multiple Return Paths Tests ===

// EarlyReturn tests early return before any await
func EarlyReturn(x int) async.Future[int] {
	if x < 0 {
		return async.Return(-1)
	}
	val := Step(x).Await()
	return async.Return(val)
}

// MultipleReturns tests multiple return statements from different branches
func MultipleReturns(x int) async.Future[int] {
	if x < 0 {
		return async.Return(-1)
	}
	val := Step(x).Await()
	if val > 100 {
		return async.Return(100)
	}
	if val < 10 {
		return async.Return(0)
	}
	return async.Return(val)
}

// ReturnInLoop tests return inside a loop
func ReturnInLoop(n int) async.Future[int] {
	for i := 0; i < n; i++ {
		val := Step(i).Await()
		if val > 5 {
			return async.Return(val)
		}
	}
	return async.Return(-1)
}

// NestedReturnPaths tests return paths in nested conditions
func NestedReturnPaths(x, y int) async.Future[int] {
	if x > 0 {
		a := Step(x).Await()
		if a > y {
			return async.Return(a)
		}
		b := Step(y).Await()
		return async.Return(b)
	}
	return async.Return(0)
}
