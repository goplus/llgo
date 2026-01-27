package main

type I interface {
	M()
	N()
}

type T struct{}

func (T) M() {}

func (T) N() {}

func use(i I) {
	i.M()
}

func main() {
	var t T
	use(t)
}
