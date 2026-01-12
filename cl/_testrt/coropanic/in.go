package main

import _ "unsafe"

//go:linkname coroSuspend llgo.coroSuspend
func coroSuspend()

// Test 1: panic with recover in same goroutine
func testRecoverInSameGoroutine() {
	defer func() {
		if r := recover(); r != nil {
			println("recovered:", r.(string))
		}
	}()
	println("before panic")
	coroSuspend()
	panic("test panic 1")
	println("after panic") // should not reach
}

// Test 2: panic propagates through suspend points
func testPanicAcrossSuspend() {
	defer func() {
		if r := recover(); r != nil {
			println("recovered across suspend:", r.(string))
		}
	}()
	println("step 1")
	coroSuspend()
	println("step 2")
	coroSuspend()
	panic("test panic 2")
}

// Test 3: nested function with panic and recover
func innerPanic() {
	panic("inner panic")
}

func testNestedPanic() {
	defer func() {
		if r := recover(); r != nil {
			println("recovered nested:", r.(string))
		}
	}()
	println("calling inner")
	coroSuspend()
	innerPanic()
}

// Test 4: recover only works in deferred function
func testRecoverOnlyInDefer() {
	defer func() {
		// This recover should catch the panic
		if r := recover(); r != nil {
			println("deferred recover:", r.(string))
		}
	}()

	// This recover does nothing (not in deferred context during panic)
	r := recover()
	if r != nil {
		println("direct recover:", r) // should not print
	}

	coroSuspend()
	panic("test panic 4")
}

// Test 5: unrecovered panic - should propagate to top level
func testUnrecoveredPanic() {
	println("about to panic without recover")
	coroSuspend()
	panic("unrecovered panic!")
}

func main() {
	println("=== Test 1: recover in same goroutine ===")
	go testRecoverInSameGoroutine()

	println("=== Test 2: panic across suspend ===")
	go testPanicAcrossSuspend()

	println("=== Test 3: nested panic ===")
	go testNestedPanic()

	println("=== Test 4: recover only in defer ===")
	go testRecoverOnlyInDefer()

	println("=== Test 5: unrecovered panic ===")
	go testUnrecoveredPanic()

	println("main done")
}
