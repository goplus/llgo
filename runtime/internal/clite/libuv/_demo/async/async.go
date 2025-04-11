package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/libuv"
)

func ensure(b bool, msg string) {
	if !b {
		panic(msg)
	}
}

func main() {
	loop := libuv.LoopNew()
	defer loop.Close()

	a := &libuv.Async{}
	r := loop.Async(a, func(a *libuv.Async) {
		println("async callback")
		a.Close(nil) // or loop.Stop()
	})
	ensure(r == 0, "Async failed")

	go func() {
		println("begin async task")
		c.Usleep(100 * 1000)
		println("send async event")
		ensure(a.Send() == 0, "Send failed")
	}()

	loop.Run(libuv.RUN_DEFAULT)
	println("done")
}

/*Expected Output:
begin async task
send async event
async callback
done
*/
