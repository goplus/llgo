package main

import _ "unsafe"

//go:linkname coroSuspend llgo.coroSuspend
func coroSuspend()

// Point is a simple struct
type Point struct {
	X, Y int
}

// simple has a single return value and a suspend point
func simple(x int) int {
	println("simple: x =", x)
	coroSuspend()
	result := x * 2
	println("simple: returning", result)
	return result
}

// multi has multiple return values and a suspend point
func multi(x int) (int, int, int) {
	println("multi: x =", x)
	coroSuspend()
	a := x * 2
	b := x * 3
	c := x * 4
	println("multi: returning", a, b, c)
	return a, b, c
}

// caller calls simple and uses its return value
func caller(x int) {
	println("caller: calling simple")
	result := simple(x)
	println("caller: result =", result)
}

// callerMulti calls multi and uses its return values
func callerMulti(x int) {
	println("callerMulti: calling multi")
	a, b, c := multi(x)
	println("callerMulti: results =", a, b, c)
}

// structRet returns a struct value
func structRet(x int) Point {
	println("structRet: x =", x)
	coroSuspend()
	p := Point{X: x * 2, Y: x * 3}
	println("structRet: returning", p.X, p.Y)
	return p
}

// structPtrRet returns a struct pointer
func structPtrRet(x int) *Point {
	println("structPtrRet: x =", x)
	coroSuspend()
	p := &Point{X: x * 4, Y: x * 5}
	println("structPtrRet: returning", p.X, p.Y)
	return p
}

// callerStruct calls structRet and uses its return value
func callerStruct(x int) {
	println("callerStruct: calling structRet")
	p := structRet(x)
	println("callerStruct: result =", p.X, p.Y)
}

// callerStructPtr calls structPtrRet and uses its return value
func callerStructPtr(x int) {
	println("callerStructPtr: calling structPtrRet")
	p := structPtrRet(x)
	println("callerStructPtr: result =", p.X, p.Y)
}

// structMultiRet returns struct and multiple values
func structMultiRet(x int) (Point, int, *Point) {
	println("structMultiRet: x =", x)
	coroSuspend()
	p1 := Point{X: x, Y: x * 2}
	n := x * 3
	p2 := &Point{X: x * 4, Y: x * 5}
	println("structMultiRet: returning", p1.X, p1.Y, n, p2.X, p2.Y)
	return p1, n, p2
}

// callerStructMulti calls structMultiRet and uses its return values
func callerStructMulti(x int) {
	println("callerStructMulti: calling structMultiRet")
	p1, n, p2 := structMultiRet(x)
	println("callerStructMulti: result =", p1.X, p1.Y, n, p2.X, p2.Y)
}

func main() {
	// Synchronous call - single return
	println("=== sync single ===")
	caller(10)

	// Asynchronous call - single return
	println("=== async single ===")
	go caller(20)

	// Synchronous call - multi return
	println("=== sync multi ===")
	callerMulti(10)

	// Asynchronous call - multi return
	println("=== async multi ===")
	go callerMulti(20)

	// Synchronous call - struct return
	println("=== sync struct ===")
	callerStruct(10)

	// Asynchronous call - struct return
	println("=== async struct ===")
	go callerStruct(20)

	// Synchronous call - struct pointer return
	println("=== sync struct ptr ===")
	callerStructPtr(10)

	// Asynchronous call - struct pointer return
	println("=== async struct ptr ===")
	go callerStructPtr(20)

	// Synchronous call - struct + int + pointer multi return
	println("=== sync struct multi ===")
	callerStructMulti(10)

	// Asynchronous call - struct + int + pointer multi return
	println("=== async struct multi ===")
	go callerStructMulti(20)

	println("main: done")
}
