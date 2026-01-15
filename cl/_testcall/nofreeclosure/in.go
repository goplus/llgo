package main

type Fn func(int) int

// testNoFreeClosure: closure without free variables
func main() {
	makeNoFree := func() Fn {
		return func(x int) int { return x + 1 }
	}
	nf := makeNoFree()
	_ = nf(1)
}
