package minrepro

import "github.com/goplus/llgo/async"

// StepInt returns an async int future
func StepInt(x int) *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(x)
	})
}

// Divmod - minimal reproduction of the dominance error
func Divmod(a, b int) async.Future[async.Tuple2[int, int]] {
	qa := StepInt(a / b).Await()
	ra := StepInt(a % b).Await()
	return async.Return(async.MakeTuple2(qa, ra))
}
