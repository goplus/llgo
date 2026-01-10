//go:build llgo
// +build llgo

package iterextra

import "github.com/goplus/llgo/async"

// Compute doubles x (helper for async tests).
func Compute(x int) *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) { resolve(x * 2) })
}

// HigherOrderVisitor returns sum of visitor-produced values (0..n-1) doubled.
func HigherOrderVisitor(n int) async.Future[int] {
	iter := MakeVisitor(n)
	sum := 0
	iter(func(v int) {
		sum += Compute(v).Await()
	})
	return async.Return(sum)
}

// MakeVisitor returns a visitor-based iterator.
func MakeVisitor(n int) func(func(int)) {
	return func(visit func(int)) {
		for i := 0; i < n; i++ {
			visit(i)
		}
	}
}

// GoroutineChannel feeds a channel from a goroutine, async awaits values.
func GoroutineChannel(n int) async.Future[int] {
	ch := make(chan int, n)
	go func() {
		for i := 0; i < n; i++ {
			ch <- i
		}
		close(ch)
	}()

	sum := 0
	for v := range ch {
		sum += Compute(v).Await()
	}
	return async.Return(sum)
}
