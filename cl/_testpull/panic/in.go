package foo

import "github.com/goplus/llgo/async"

// MayFail is a mock async function that can fail
func MayFail(shouldFail bool) *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		if shouldFail {
			panic("operation failed")
		}
		resolve(42)
	})
}

// WithPanic tests panic handling in async
func WithPanic(shouldFail bool) async.Future[int] {
	defer func() {
		if r := recover(); r != nil {
			// Handle panic
		}
	}()

	result := MayFail(shouldFail).Await()
	return async.Return(result)
}

// PanicInDefer tests panic in defer
func PanicInDefer() async.Future[int] {
	defer func() {
		panic("defer panic")
	}()

	result := MayFail(false).Await()
	return async.Return(result)
}

// RecoverInDefer tests recover in defer
func RecoverInDefer() async.Future[int] {
	defer func() {
		if r := recover(); r != nil {
			// Successfully recovered
		}
	}()

	result := MayFail(true).Await()
	return async.Return(result)
}
