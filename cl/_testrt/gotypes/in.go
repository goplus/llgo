package main

type base interface {
	f(m map[string]func())
}

type bar interface {
	base
	g(c chan func())
}

func foo(bar) {
}

func main() {
	foo(nil)
}
