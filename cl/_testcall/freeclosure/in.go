package main

type Fn func(int) int

// testWithFreeClosure: closure with free variables
func main() {
	makeWithFree := func(base int) Fn {
		return func(x int) int { return x + base }
	}
	wf := makeWithFree(3)
	_ = wf(2)
}
