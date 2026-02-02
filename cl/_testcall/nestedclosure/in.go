package main

// testNestedClosure: nested closure with multi-level capture
func main() {
	a := 1
	outer := func() func() int {
		b := 2
		return func() int {
			return a + b // captures a (outer) and b (inner)
		}
	}
	inner := outer()
	_ = inner()
}
