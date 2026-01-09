package main

import "unsafe"

//go:linkname coroSuspend llgo.coroSuspend
func coroSuspend()

//go:linkname coroResume llgo.coroResume
func coroResume(handle unsafe.Pointer)

// Global to store the coroutine handle
var coroHandle unsafe.Pointer

func worker() {
	println("worker: start")
	coroSuspend()
	println("worker: resumed")
}

func main() {
	go worker()
	println("main: after go")
	println("main: done")
}
