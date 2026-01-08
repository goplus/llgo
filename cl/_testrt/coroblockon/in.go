package main

import _ "unsafe"

//go:linkname coroSuspend llgo.coroSuspend
func coroSuspend()

//go:linkname coroBlockOn llgo.coroBlockOn
func coroBlockOn(f func() int) int

// createWorker returns a closure that may suspend
func createWorker(multiplier int) func() int {
	return func() int {
		println("worker: start, multiplier =", multiplier)
		coroSuspend()
		result := 10 * multiplier
		println("worker: done, result =", result)
		return result
	}
}

// syncCaller calls block_on from sync context
func syncCaller() {
	println("syncCaller: creating worker")
	worker := createWorker(5)
	println("syncCaller: calling block_on")
	result := coroBlockOn(worker)
	println("syncCaller: result =", result)
}

// asyncCaller calls block_on from async context (inside a goroutine)
func asyncCaller() {
	println("asyncCaller: start")
	coroSuspend() // make this function tainted

	println("asyncCaller: creating worker")
	worker := createWorker(3)
	println("asyncCaller: calling block_on")
	result := coroBlockOn(worker)
	println("asyncCaller: result =", result)
	println("asyncCaller: done")
}

func main() {
	println("=== Test 1: block_on from sync context ===")
	syncCaller()

	println("\n=== Test 2: block_on from async context ===")
	go asyncCaller()

	println("main: done")
}
