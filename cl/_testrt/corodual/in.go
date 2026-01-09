package main

import _ "unsafe"

//go:linkname coroSuspend llgo.coroSuspend
func coroSuspend()

// worker has a suspend point - will have both sync and $coro versions
func worker(id int) {
	println("worker", id, ": start")
	coroSuspend()
	println("worker", id, ": done")
}

// helper also has suspend point (calls worker)
func helper(id int) {
	println("helper", id, ": calling worker")
	worker(id)
	println("helper", id, ": worker returned")
}

func main() {
	// Synchronous call - uses regular worker() and helper()
	println("=== sync call ===")
	helper(0)

	// Asynchronous call - uses helper$coro() -> worker$coro()
	println("=== async call ===")
	go helper(1)
	go helper(2)

	println("main: after go")
	println("main: done")
}
