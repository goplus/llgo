package main

type T complex64

func main() {
	c := 1 + 2i
	d := T(c)
	println(c, real(c), imag(c))
	println(d, real(d), imag(d))
}
