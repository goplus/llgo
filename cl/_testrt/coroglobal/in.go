package main

import _ "unsafe"

//go:linkname coroSuspend llgo.coroSuspend
func coroSuspend()

//go:linkname coroBlockOn llgo.coroBlockOn
func coroBlockOn(f func() int) int

// Global variable holding async closure (tainted)
var globalWorker func() int

// Global variable holding sync closure (not tainted)
var globalSync func() int

// Global counter for testing state
var counter int

// createAndStoreWorker creates an async closure and stores it in global variable
func createAndStoreWorker(multiplier int) {
	println("createAndStoreWorker: storing async closure with multiplier =", multiplier)
	globalWorker = func() int {
		println("globalWorker: start, multiplier =", multiplier)
		coroSuspend()
		counter++
		result := 10 * multiplier * counter
		println("globalWorker: done, result =", result)
		return result
	}
}

// createAndStoreSyncWorker creates a sync closure (no suspend) and stores it in global
func createAndStoreSyncWorker(base int) {
	println("createAndStoreSyncWorker: storing sync closure with base =", base)
	globalSync = func() int {
		println("globalSync: computing result")
		counter++
		result := base + counter*100
		println("globalSync: done, result =", result)
		return result
	}
}

// callGlobalWorker calls the async global closure through block_on
func callGlobalWorker() int {
	println("callGlobalWorker: calling block_on on async global closure")
	result := coroBlockOn(globalWorker)
	println("callGlobalWorker: result =", result)
	return result
}

// callGlobalSync calls the sync global closure through block_on
func callGlobalSync() int {
	println("callGlobalSync: calling block_on on sync global closure")
	result := coroBlockOn(globalSync)
	println("callGlobalSync: result =", result)
	return result
}

// asyncCallGlobal calls the global closure from async context
func asyncCallGlobal() {
	println("asyncCallGlobal: start")
	coroSuspend() // make this function tainted

	println("asyncCallGlobal: calling block_on on async global closure")
	result := coroBlockOn(globalWorker)
	println("asyncCallGlobal: result =", result)
	println("asyncCallGlobal: done")
}

// chainedCall demonstrates chained closure calls
func chainedCall() {
	println("chainedCall: start")
	coroSuspend()

	// Create a local closure that itself calls block_on on global
	inner := func() int {
		println("inner: calling block_on on global")
		coroSuspend()
		return coroBlockOn(globalWorker)
	}

	println("chainedCall: calling block_on on inner")
	result := coroBlockOn(inner)
	println("chainedCall: final result =", result)
}

// mixedCall demonstrates mixing sync and async closures
// This function can be called from both sync and async contexts
func mixedCall() {
	println("mixedCall: start")

	// Call sync closure first
	println("mixedCall: calling sync closure")
	r1 := coroBlockOn(globalSync)
	println("mixedCall: sync result =", r1)

	// Then call async closure
	println("mixedCall: calling async closure")
	r2 := coroBlockOn(globalWorker)
	println("mixedCall: async result =", r2)

	println("mixedCall: total =", r1+r2)
}

// nestedClosures demonstrates deeply nested closures with captures
func nestedClosures() {
	println("nestedClosures: start")
	coroSuspend()

	a := 10
	level1 := func() int {
		println("level1: a =", a)
		b := 20
		level2 := func() int {
			println("level2: a =", a, "b =", b)
			c := 30
			level3 := func() int {
				println("level3: a+b+c =", a+b+c)
				coroSuspend()
				return a + b + c
			}
			return coroBlockOn(level3)
		}
		return coroBlockOn(level2)
	}

	result := coroBlockOn(level1)
	println("nestedClosures: result =", result)
}

// closureAsReturn demonstrates returning a closure
func closureAsReturn(x int) func() int {
	println("closureAsReturn: creating closure with x =", x)
	return func() int {
		println("returned closure: x =", x)
		coroSuspend()
		return x * x
	}
}

// closureAsParam demonstrates passing closure as parameter
func closureAsParam(fn func() int, label string) int {
	println("closureAsParam:", label)
	coroSuspend()
	result := coroBlockOn(fn)
	println("closureAsParam: result =", result)
	return result
}

// multipleClosures demonstrates multiple closures capturing same variable
func multipleClosures() {
	println("multipleClosures: start")
	coroSuspend()

	shared := 100

	adder := func() int {
		println("adder: adding 10 to", shared)
		coroSuspend()
		shared += 10
		return shared
	}

	doubler := func() int {
		println("doubler: doubling", shared)
		coroSuspend()
		shared *= 2
		return shared
	}

	r1 := coroBlockOn(adder)
	println("after adder:", r1)

	r2 := coroBlockOn(doubler)
	println("after doubler:", r2)

	r3 := coroBlockOn(adder)
	println("after adder again:", r3)
}

// loopClosures demonstrates closures created in a loop
func loopClosures() {
	println("loopClosures: start")
	coroSuspend()

	// Create closures in a loop
	closures := make([]func() int, 3)
	for i := 0; i < 3; i++ {
		idx := i // capture loop variable
		closures[i] = func() int {
			println("loop closure idx =", idx)
			coroSuspend()
			return idx * 10
		}
	}

	// Call them
	total := 0
	for i := 0; i < 3; i++ {
		result := coroBlockOn(closures[i])
		println("loop result =", result)
		total += result
	}
	println("loopClosures: total =", total)
}

// closureCallsClosure demonstrates closure calling another closure via block_on
func closureCallsClosure() {
	println("closureCallsClosure: start")

	innerFn := func() int {
		println("innerFn: running")
		coroSuspend()
		return 42
	}

	outerFn := func() int {
		println("outerFn: calling innerFn via block_on")
		coroSuspend()
		result := coroBlockOn(innerFn)
		println("outerFn: innerFn returned", result)
		return result + 8
	}

	result := coroBlockOn(outerFn)
	println("closureCallsClosure: final result =", result)
}

func main() {
	println("=== Test 1: Store closures in globals ===")
	createAndStoreWorker(2)
	createAndStoreSyncWorker(1000)

	println("\n=== Test 2: Call async global from sync context ===")
	r1 := callGlobalWorker()
	println("main: async result =", r1)

	println("\n=== Test 3: Call sync global from sync context ===")
	r2 := callGlobalSync()
	println("main: sync result =", r2)

	println("\n=== Test 4: Mixed sync/async from sync context ===")
	mixedCall()

	println("\n=== Test 5: Call async global from async context ===")
	go asyncCallGlobal()

	println("\n=== Test 6: Chained closure calls ===")
	go chainedCall()

	println("\n=== Test 7: Mixed sync/async from async context ===")
	go mixedCall()

	println("\n=== Test 8: Nested closures with captures ===")
	go nestedClosures()

	println("\n=== Test 9: Closure as return value ===")
	fn := closureAsReturn(7)
	r9 := coroBlockOn(fn)
	println("main: returned closure result =", r9)

	println("\n=== Test 10: Closure as parameter ===")
	paramFn := func() int {
		println("paramFn: running")
		coroSuspend()
		return 123
	}
	r10 := closureAsParam(paramFn, "test param")
	println("main: closure as param result =", r10)

	println("\n=== Test 11: Multiple closures sharing variable ===")
	go multipleClosures()

	println("\n=== Test 12: Closures in loop ===")
	go loopClosures()

	println("\n=== Test 13: Closure calls closure ===")
	closureCallsClosure()

	println("main: done")
}
