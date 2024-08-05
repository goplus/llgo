package async_compile

import (
	"fmt"

	"github.com/goplus/llgo/x/async"
)

func GenInts() (co *async.Promise[int]) {
	co.Yield(1)
	co.Yield(2)
	co.Yield(3)
	return
}

func WrapGenInts() *async.Promise[int] {
	return GenInts()
}

func UseGenInts() int {
	co := WrapGenInts()
	r := 0
	for !co.Done() {
		v := co.Value()
		r += v
		co.Next()
	}
	return r
}

func GenIntsWithDefer() (co *async.Promise[int]) {
	defer func() {
		if r := recover(); r != nil {
			fmt.Println("panic:", r)
		}
	}()
	co.Yield(1)
	panic("GenIntsWithDefer")
}
