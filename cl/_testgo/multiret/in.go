package main

var a int = 1

func foo(f float64) (int, float64) {
	return a, f
}

func main() {
	i, f := foo(2.0)
	println(i, f)
}
