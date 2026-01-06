package foo

import "github.com/goplus/llgo/async"

// Step is a mock async function
func Step(x int) *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(x + 1)
	})
}

// SwitchCase tests switch with await in cases
func SwitchCase(n int) async.Future[int] {
	switch n {
	case 1:
		x := Step(10).Await()
		return async.Return(x)
	case 2:
		y := Step(20).Await()
		return async.Return(y)
	default:
		z := Step(30).Await()
		return async.Return(z)
	}
}

// NestedLoop tests nested loops with await
func NestedLoop(m, n int) async.Future[int] {
	sum := 0
	for i := 0; i < m; i++ {
		for j := 0; j < n; j++ {
			x := Step(i * j).Await()
			sum += x
		}
	}
	return async.Return(sum)
}

// LoopWithBreak tests loop with break
func LoopWithBreak(n int) async.Future[int] {
	for i := 0; i < n; i++ {
		x := Step(i).Await()
		if x > 5 {
			return async.Return(x)
		}
	}
	return async.Return(0)
}

// LoopWithContinue tests loop with continue
func LoopWithContinue(n int) async.Future[int] {
	sum := 0
	for i := 0; i < n; i++ {
		if i%2 == 0 {
			continue
		}
		x := Step(i).Await()
		sum += x
	}
	return async.Return(sum)
}
