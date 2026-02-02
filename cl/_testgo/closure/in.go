package main

type T func(n int)

func main() {
	var env string = "env"
	var env1 int = 47
	var env2 float64 = 3.14
	var v1 T = func(i int) {
		println("func", i)
	}
	var v2 T = func(i int) {
		println("closure", i, env)
	}
	v3 := func(i int, j int16, s string) {
		println("closure 3", i, j, s, env, env1, env2)
	}
	v1(100)
	v2(200)
	v3(1, 2, "hello")
}
