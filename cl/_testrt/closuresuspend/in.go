package main

import _ "unsafe"

//go:linkname coroSuspend llgo.coroSuspend
func coroSuspend()

// helper 是一个普通（非染色）函数，接收一个函数类型参数
func helper(f func(int) int, x int) int {
	println("helper: calling f")
	result := f(x)
	println("helper: f returned", result)
	return result
}

// asyncCaller 是一个异步函数，内部会调用 helper 并传入染色闭包
func asyncCaller() {
	coroSuspend()  // 让 asyncCaller 成为染色函数

	multiplier := 5
	// 创建一个带 suspend point 的闭包
	f := func(x int) int {
		println("closure: x =", x, "multiplier =", multiplier)
		coroSuspend()  // 闭包内有 suspend point
		result := x * multiplier
		println("closure: result =", result)
		return result
	}

	// 在 asyncCaller$coro 中调用 helper，传入染色闭包
	// helper 会被染色，并调用 f$coro
	result := helper(f, 10)
	println("asyncCaller: result =", result)
}

func main() {
	// 同步调用
	println("=== Sync call ===")
	multiplier := 3
	f := func(x int) int {
		println("sync closure: x =", x, "multiplier =", multiplier)
		result := x * multiplier
		println("sync closure: result =", result)
		return result
	}
	result := helper(f, 20)
	println("sync main: result =", result)

	// 异步调用
	println("\n=== Async call ===")
	go asyncCaller()

	println("main: done")
}
