package main

import (
	_ "unsafe"
)

//go:linkname coroSuspend llgo.coroSuspend
func coroSuspend()

// level4 has the actual suspend point
func level4() {
	println("level4: before suspend")
	coroSuspend()
	println("level4: after suspend")
}

// level3 calls level4
func level3() {
	println("level3: start")
	level4()
	println("level3: end")
}

// level2 calls level3
func level2() {
	println("level2: start")
	level3()
	println("level2: end")
}

// level1 calls level2
func level1() {
	println("level1: start")
	level2()
	println("level1: end")
}

// entry calls level1
func entry() {
	println("entry: start")
	level1()
	println("entry: end")
}

func main() {
	go entry()
	println("main: after go")
	println("main: done")
}
