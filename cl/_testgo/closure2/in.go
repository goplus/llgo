package main

func main() {
	x := 1
	f := func(i int) func(int) {
		return func(i int) {
			println("closure", i, x)
		}
	}
	f(1)(2)
}
