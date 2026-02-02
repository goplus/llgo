package main

// Test: nested closure calls
// This simulates the core issue with sync.Once.Do:
// Once.Do calls closure f, and f may call other closures internally

func callFunc(f func()) {
	println("callFunc: before f()")
	f()
	println("callFunc: after f()")
}

func callFuncInner(g func()) {
	println("callFuncInner: before g()")
	g()
	println("callFuncInner: after g()")
}

var counter = 0

func main() {
	callFunc(func() {
		counter++
		println("outer closure: counter =", counter)

		// Here we call another function that accepts a closure
		callFuncInner(func() {
			counter++
			println("inner closure: counter =", counter)
		})

		println("outer closure: after inner call, counter =", counter)
	})
	println("main: after callFunc, counter =", counter)
}
