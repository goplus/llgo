package main

// testIIFE: immediately invoked function expression
func main() {
	x := 10
	_ = func(y int) int {
		return x + y
	}(5)
}
