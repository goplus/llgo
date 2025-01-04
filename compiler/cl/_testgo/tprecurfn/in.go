package main

type My[T any] struct {
	fn   func(n T)
	next *My[T]
}

func main() {
	m := &My[int]{next: &My[int]{fn: func(n int) { println(n) }}}
	m.next.fn(100)
}
