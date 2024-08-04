package main

import "github.com/goplus/llgo/x/async"

func GenInts() (co *async.Promise[int]) {
	print("1")
	co.Yield(1)
	print("2")
	co.Yield(2)
	print("3")
	co.Yield(3)
	print("4")
	return
}

func main() {
	co := GenInts()
	for !co.Done() {
		print(co.Next())
	}
}
