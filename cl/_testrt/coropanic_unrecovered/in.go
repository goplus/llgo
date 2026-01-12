package main

import _ "unsafe"

//go:linkname coroSuspend llgo.coroSuspend
func coroSuspend()

func panicG() {
	println("panic goroutine: start")
	panic("unrecovered panic!")
}

func otherG() {
	coroSuspend()
	println("other goroutine: after suspend")
}

func main() {
	println("=== Test: unrecovered panic should abort even with other recover ===")
	go panicG()
	go otherG()
	println("main done")
}
