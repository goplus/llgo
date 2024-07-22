package main

import (
	"fmt"
	"time"

	"github.com/goplus/llgo/x/io"
)

var GetUser = io.Async[any](func(string) any {
	panic("todo: GetUser")
})

var GetScore = io.Async[float64](func() float64 {
	panic("todo: GetScore")
})

var DoUpdate = io.Async[io.Void](func(op string) io.Void {
	panic("todo: DoUpdate")
})

func main() {
	user, err := GetUser("123").Await()
	fmt.Println(user, err)

	user, err = io.Race(GetUser("123"), GetUser("456"), GetUser("789")).Await()
	fmt.Println(user, err)

	user, score, _, err := io.Await3[any, float64, io.Void](GetUser("123"), GetScore(), DoUpdate("update sth."))
	fmt.Println(user, score, err)

	select {
	case user := <-GetUser("123"):
		fmt.Println("user:", user)
	case score := <-GetScore():
		fmt.Println("score:", score)
	case <-io.Timeout(5 * time.Second):
		fmt.Println("timeout")
	}
}
