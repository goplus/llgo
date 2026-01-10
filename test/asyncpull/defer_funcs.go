//go:build llgo
// +build llgo

package asyncpull

import "github.com/goplus/llgo/async"

// DeferOrderAsync checks LIFO defer execution and side effects.
func DeferOrderAsync(out *[]string) async.Future[int] {
	defer func() { *out = append(*out, "first") }()
	defer func() { *out = append(*out, "second") }()
	Compute(1).Await()
	return async.Return(123)
}

// DeferArgCaptureAsync checks deferred arg values are captured at defer time.
func DeferArgCaptureAsync(out *[]int) async.Future[int] {
	x := 1
	defer func(v int) { *out = append(*out, v) }(x)
	x = 2
	Compute(2).Await()
	return async.Return(x)
}

// DeferClosureCaptureAsync checks closure observes the latest value at execution time.
func DeferClosureCaptureAsync(out *[]int) async.Future[int] {
	x := 1
	defer func() { *out = append(*out, x) }()
	x = Compute(1).Await()
	return async.Return(x)
}

// DeferLoopAsync checks defers in loops and LIFO order across multiple defers.
func DeferLoopAsync(n int, out *[]int) async.Future[int] {
	for i := 0; i < n; i++ {
		v := i
		defer func() { *out = append(*out, v) }()
		if i == n-1 {
			Compute(i).Await()
		}
	}
	return async.Return(n)
}
