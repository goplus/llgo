package main

type T struct {
	s string
}

func (t T) Invoke() int {
	println("invoke", t.s)
	return 0
}

type T1 int

func (t T1) Invoke() int {
	println("invoke1", t)
	return 1
}

type T2 float64

func (t T2) Invoke() int {
	println("invoke2", t)
	return 2
}

type T3 int8

func (t *T3) Invoke() int {
	println("invoke3", *t)
	return 3
}

type I interface {
	Invoke() int
}

func main() {
	var t = T{"hello"}
	var t1 = T1(100)
	var t2 = T2(100.1)
	var t3 = T3(127)
	invoke(t)
	invoke(&t)
	invoke(t1)
	invoke(&t1)
	invoke(t2)
	invoke(&t2)
	invoke(&t3)
}

func invoke(i I) {
	println(i.Invoke())
}
