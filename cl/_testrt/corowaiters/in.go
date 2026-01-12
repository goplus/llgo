package main

import _ "unsafe"

//go:linkname coroSuspend llgo.coroSuspend
func coroSuspend()

//go:linkname coroBlockOn llgo.coroBlockOn
func coroBlockOn(f func() int) int

func callee() int {
	println("callee: start")
	coroSuspend()
	println("callee: mid")
	coroSuspend()
	println("callee: done")
	return 7
}

func caller() {
	println("caller: start")
	coroSuspend() // taint this function to make it a coroutine

	worker := func() int {
		println("worker: call callee")
		coroSuspend() // force taint so worker becomes $coro
		return callee()
	}

	println("caller: calling block_on")
	result := worker()
	println("caller: result =", result)
}

func main() {
	println("=== Test: waiter wake at final suspend ===")
	go caller()
	println("main: done")
}
