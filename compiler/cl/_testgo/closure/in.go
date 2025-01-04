package main

type T func(n int)

func main() {
	var env string = "env"
	var v1 T = func(i int) {
		println("func", i)
	}
	var v2 T = func(i int) {
		println("closure", i, env)
	}
	v1(100)
	v2(200)
}
