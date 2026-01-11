package main

import "unsafe"

//go:linkname coroSuspend llgo.coroSuspend
func coroSuspend()

//go:linkname coroResume llgo.coroResume
func coroResume(handle unsafe.Pointer)

func cleanup1() {
	println("cleanup1 called")
}

func cleanup2(msg string) {
	println("cleanup2:", msg)
}

func cleanup3(a, b int) {
	println("cleanup3:", a, b)
}

func worker() {
	defer cleanup1()
	println("worker: step 1")
	coroSuspend()

	defer cleanup2("hello")
	println("worker: step 2")
	coroSuspend()

	defer cleanup3(10, 20)
	println("worker: step 3")
	coroSuspend()

	println("worker: done")
}

func main() {
	go worker()
	println("main done")
}
