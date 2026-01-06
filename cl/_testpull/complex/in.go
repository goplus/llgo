package complex

import "github.com/goplus/llgo/async"

// Step returns an async future
func Step(x int) *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(x)
	})
}

// === Complex Control Flow Tests ===

// ChainedAwaits tests multiple awaits in a chain with data dependency
func ChainedAwaits(start int) async.Future[int] {
	a := Step(start).Await()
	b := Step(a * 2).Await()
	c := Step(b + 10).Await()
	d := Step(c - 5).Await()
	return async.Return(d)
}

// ConditionalChain tests await in both branches with cross usage
func ConditionalChain(x int) async.Future[int] {
	var result int
	if x > 0 {
		a := Step(x).Await()
		result = a * 2
	} else {
		b := Step(-x).Await()
		result = b + 100
	}
	// Result is used after the conditional
	final := Step(result).Await()
	return async.Return(final)
}

// LoopWithAccumulator tests await in loop with accumulator variable
func LoopWithAccumulator(n int) async.Future[int] {
	sum := 0
	for i := 0; i < n; i++ {
		val := Step(i).Await()
		sum += val
	}
	return async.Return(sum)
}

// NestedConditions tests await in nested if statements
func NestedConditions(x int) async.Future[int] {
	result := 0
	if x > 0 {
		a := Step(x).Await()
		if a > 10 {
			b := Step(a * 2).Await()
			result = b
		} else {
			c := Step(a + 5).Await()
			result = c
		}
	} else {
		d := Step(100).Await()
		result = d
	}
	return async.Return(result)
}

// SwitchWithFallthrough tests await in switch statement
func SwitchWithFallthrough(x int) async.Future[int] {
	var result int
	switch x {
	case 0:
		a := Step(0).Await()
		result = a
	case 1:
		b := Step(10).Await()
		result = b
	case 2:
		c := Step(20).Await()
		result = c
	default:
		d := Step(100).Await()
		result = d
	}
	return async.Return(result)
}

// MultipleReturnPaths tests await with early returns
func MultipleReturnPaths(x int) async.Future[int] {
	if x < 0 {
		a := Step(-x).Await()
		return async.Return(a)
	}
	if x == 0 {
		return async.Return(0)
	}
	b := Step(x * 2).Await()
	if b > 100 {
		return async.Return(100)
	}
	c := Step(b + 50).Await()
	return async.Return(c)
}

// LoopBreakContinue tests await with break and continue
func LoopBreakContinue(n int) async.Future[int] {
	sum := 0
	for i := 0; i < n; i++ {
		if i == 3 {
			continue
		}
		if i == 7 {
			break
		}
		val := Step(i).Await()
		sum += val
	}
	return async.Return(sum)
}

// DeferWithAwait tests defer and await interaction
func DeferWithAwait(x int) async.Future[int] {
	defer func() {
		// Defer runs after function returns
	}()
	a := Step(x).Await()
	b := Step(a + 10).Await()
	return async.Return(b)
}

// ClosureCapture tests await with closure variable capture
func ClosureCapture(x int) async.Future[int] {
	multiplier := 2
	a := Step(x).Await()
	result := a * multiplier

	multiplier = 3 // Change after first await
	b := Step(result).Await()
	return async.Return(b * multiplier)
}

// TwoLoops tests two separate loops with await
func TwoLoops(n int) async.Future[int] {
	sum1 := 0
	for i := 0; i < n; i++ {
		val := Step(i).Await()
		sum1 += val
	}

	sum2 := 0
	for j := 0; j < n; j++ {
		val := Step(j * 2).Await()
		sum2 += val
	}

	return async.Return(sum1 + sum2)
}
