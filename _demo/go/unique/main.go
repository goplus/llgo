package main

import "unique"

func main() {
	var h1 = unique.Make(int(42))
	var h2 = unique.Make(int(42))
	if h1 != h2 {
		panic("h1 and h2 should be equal")
	}
	var v1 = h1.Value()
	var v2 = h2.Value()
	if v1 != v2 || v1 != 42 {
		panic("values should be equal to 42")
	}

	var h3 = unique.Make("hello")
	var h4 = unique.Make("hello")
	if h3 != h4 {
		panic("h3 and h4 should be equal")
	}
	var s1 = h3.Value()
	var s2 = h4.Value()
	if s1 != s2 || s1 != "hello" {
		panic("values should be equal to 'hello'")
	}

	var h5 = unique.Make(int(100))
	var h6 = unique.Make(int(200))
	if h5 == h6 {
		panic("h5 and h6 should not be equal")
	}
	var n1 = h5.Value()
	var n2 = h6.Value()
	if n1 != 100 || n2 != 200 {
		panic("values should be 100 and 200 respectively")
	}
}
