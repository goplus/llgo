package async

import (
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
