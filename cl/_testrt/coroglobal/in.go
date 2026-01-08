package main

import _ "unsafe"

//go:linkname coroSuspend llgo.coroSuspend
func coroSuspend()

// Named function types
type WorkerFunc func() int
type ComputeFunc func(x int) int

// Global variable holding async closure (tainted)
var globalWorker func() int

// Global variables with named function types
var typedWorker WorkerFunc
var typedCompute ComputeFunc

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
	result := globalWorker()
	println("callGlobalWorker: result =", result)
	return result
}

// callGlobalSync calls the sync global closure through block_on
func callGlobalSync() int {
	println("callGlobalSync: calling block_on on sync global closure")
	result := globalSync()
	println("callGlobalSync: result =", result)
	return result
}

// asyncCallGlobal calls the global closure from async context
func asyncCallGlobal() {
	println("asyncCallGlobal: start")
	coroSuspend() // make this function tainted

	println("asyncCallGlobal: calling block_on on async global closure")
	result := globalWorker()
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
		return globalWorker()
	}

	println("chainedCall: calling block_on on inner")
	result := inner()
	println("chainedCall: final result =", result)
}

// mixedCall demonstrates mixing sync and async closures
// This function can be called from both sync and async contexts
func mixedCall() {
	println("mixedCall: start")

	// Call sync closure first
	println("mixedCall: calling sync closure")
	r1 := globalSync()
	println("mixedCall: sync result =", r1)

	// Then call async closure
	println("mixedCall: calling async closure")
	r2 := globalWorker()
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
			return level3()
		}
		return level2()
	}

	result := level1()
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
	result := fn()
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

	r1 := adder()
	println("after adder:", r1)

	r2 := doubler()
	println("after doubler:", r2)

	r3 := adder()
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
		result := closures[i]()
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
		result := innerFn()
		println("outerFn: innerFn returned", result)
		return result + 8
	}

	result := outerFn()
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
	r9 := fn()
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

	println("\n=== Test 14: Named function types (sync) ===")
	testNamedFuncTypes()

	println("\n=== Test 15: Named func type as parameter (sync) ===")
	testNamedFuncParam()

	println("\n=== Test 16: Named function types (async) ===")
	go testNamedFuncTypesAsync()

	println("\n=== Test 17: Named func type as parameter (async) ===")
	go testNamedFuncParamAsync()

	println("main: done")
}

// testNamedFuncTypes tests closures with named function types (sync context)
func testNamedFuncTypes() {
	println("testNamedFuncTypes: start")

	// Store async closure in typed global
	multiplier := 3
	typedWorker = func() int {
		println("typedWorker: start, multiplier =", multiplier)
		coroSuspend()
		return 100 * multiplier
	}

	// Store closure with parameter in typed global
	typedCompute = func(x int) int {
		println("typedCompute: computing with x =", x)
		coroSuspend()
		return x * x
	}

	// Call typed worker
	r1 := typedWorker()
	println("testNamedFuncTypes: typedWorker result =", r1)

	// Call typed compute
	r2 := typedCompute(7)
	println("testNamedFuncTypes: typedCompute result =", r2)

	// Local variable with named type
	var localWorker WorkerFunc = func() int {
		println("localWorker: running")
		coroSuspend()
		return 999
	}
	r3 := localWorker()
	println("testNamedFuncTypes: localWorker result =", r3)

	println("testNamedFuncTypes: total =", r1+r2+r3)
}

// testNamedFuncTypesAsync tests closures with named function types (async context)
func testNamedFuncTypesAsync() {
	println("testNamedFuncTypesAsync: start")
	coroSuspend() // make this function tainted

	// Call typed globals from async context
	r1 := typedWorker()
	println("testNamedFuncTypesAsync: typedWorker result =", r1)

	r2 := typedCompute(5)
	println("testNamedFuncTypesAsync: typedCompute result =", r2)

	// Local variable with named type in async context
	var asyncLocalWorker WorkerFunc = func() int {
		println("asyncLocalWorker: running")
		coroSuspend()
		return 777
	}
	r3 := asyncLocalWorker()
	println("testNamedFuncTypesAsync: asyncLocalWorker result =", r3)

	println("testNamedFuncTypesAsync: total =", r1+r2+r3)
}

// testNamedFuncParam tests passing named function types as parameters (sync context)
func testNamedFuncParam() {
	println("testNamedFuncParam: start")

	// Helper that takes WorkerFunc
	runWorker := func(w WorkerFunc, label string) int {
		println("runWorker:", label)
		coroSuspend()
		return w()
	}

	// Create a typed closure
	var myWorker WorkerFunc = func() int {
		println("myWorker: running")
		coroSuspend()
		return 456
	}

	result := runWorker(myWorker, "testing typed param")
	println("testNamedFuncParam: result =", result)
}

// testNamedFuncParamAsync tests passing named function types as parameters (async context)
func testNamedFuncParamAsync() {
	println("testNamedFuncParamAsync: start")
	coroSuspend() // make this function tainted

	// Helper that takes WorkerFunc
	runWorkerAsync := func(w WorkerFunc, label string) int {
		println("runWorkerAsync:", label)
		coroSuspend()
		return w()
	}

	// Create a typed closure
	var myAsyncWorker WorkerFunc = func() int {
		println("myAsyncWorker: running")
		coroSuspend()
		return 789
	}

	result := runWorkerAsync(myAsyncWorker, "testing async typed param")
	println("testNamedFuncParamAsync: result =", result)
}
