package main

import "github.com/goplus/llgo/async"

func Compute(x int) *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(x * 2)
	})
}

func MapIterAsync(m map[string]int) async.Future[int] {
	sum := 0
	for _, v := range m {
		val := Compute(v).Await()
		sum += val
	}
	return async.Return(sum)
}

func main() {
	m := map[string]int{"x": 1, "y": 2, "z": 3}
	fut := MapIterAsync(m)
	for i := 0; i < 10; i++ {
		poll := fut.Poll(nil)
		if poll.IsReady() {
			println("Result:", poll.Value())
			return
		}
	}
	println("Not ready after 10 polls")
}
