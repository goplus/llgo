package crossvar

import "github.com/goplus/llgo/async"

// Step returns an async future
func Step(x int) *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(x)
	})
}

// === Cross-Suspend Variable Tests ===

// ModifyBetweenAwaits tests variable modification between await points
func ModifyBetweenAwaits(x int) async.Future[int] {
	sum := 0
	// First await
	a := Step(x).Await()
	sum += a
	// Modify sum before second await
	sum *= 2
	// Second await - sum should retain modified value
	b := Step(sum).Await()
	sum += b
	return async.Return(sum)
}

// IncrementInLoop tests variable increment across loop iterations
func IncrementInLoop(n int) async.Future[int] {
	counter := 0
	for i := 0; i < n; i++ {
		val := Step(i).Await()
		counter += val
		counter++ // Increment between iterations
	}
	return async.Return(counter)
}

// SwapVariables tests multiple variables modified across awaits
func SwapVariables(a, b int) async.Future[int] {
	x := a
	y := b
	// First await
	tmp := Step(x).Await()
	x = y
	y = tmp
	// Second await with swapped values
	result := Step(x + y).Await()
	return async.Return(result)
}

// AccumulateWithMultiplier tests accumulator with multiplier pattern
func AccumulateWithMultiplier(n int) async.Future[int] {
	sum := 0
	mult := 1
	for i := 0; i < n; i++ {
		val := Step(i).Await()
		sum += val * mult
		mult *= 2 // Double multiplier each iteration
	}
	return async.Return(sum)
}
