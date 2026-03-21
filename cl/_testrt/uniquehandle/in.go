package main

import "unique"

func main() {
	a := unique.Make("x")
	b := unique.Make("x")
	c := unique.Make("y")
	println(a == b)
	println(a == c)
	println(a.Value())
}
