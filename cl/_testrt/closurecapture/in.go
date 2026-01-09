package main

func main() {
	multiplier := 5
	f := func(x int) int {
		return x * multiplier
	}
	result := f(10)
	println("result =", result)
}
