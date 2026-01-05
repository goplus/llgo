package main

import (
	_ "unsafe"
)

//go:linkname coroSuspend llgo.coroSuspend
func coroSuspend()

// worker has a suspend point
func worker() {
	println("worker: start")
	coroSuspend() // suspend point
	println("worker: resumed")
}

// caller calls worker synchronously
// Since worker has suspend points, when caller$coro calls worker,
// it should call worker$coro and await with suspend
func caller() {
	println("caller: start")
	worker() // synchronous call to function with suspend point
	println("caller: done")
}

func main() {
	go caller()
	println("main: after go")
	println("main: done")
}
