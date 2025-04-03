package main

type T complex64

func main() {
	a := 1 + 2i
	b := 3 + 4i
	c := 0 + 0i
	println(real(a), imag(a))
	println(-a)
	println(a + b)
	println(a - b)
	println(a * b)
	println(a / b)
	println(a / c)
	println(c / c)
	println(a == a, a != a)
	println(a == b, a != b)
	println(complex128(T(a)) == a)
}
