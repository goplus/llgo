package main

// Test scenario: calling another closure before reading free variables
// This may cause x26 register to be clobbered

func noop() {}

// inner closure writes to x26 register
func makeInner(x int) func() int {
	return func() int {
		return x + 1 // reading free variable x, will use x26
	}
}

// outer closure calls inner closure first, then reads its own free variable
func makeOuter(y int) func() int {
	inner := makeInner(100)
	return func() int {
		// 1. Call inner closure first - this will overwrite x26 register
		_ = inner()
		// 2. Read own free variable y - x26 may have been clobbered by now
		return y
	}
}

func main() {
	println("starting test")

	outer := makeOuter(42)
	result := outer()

	println("result:", result)
	if result != 42 {
		println("FAIL: expected 42, got", result)
	} else {
		println("PASS")
	}
}
