package foo

type IFoo interface {
	Foo(a []int, b string) int
}

type Foo struct {
	nexy *Foo
	data map[string]uint64
}

func (Foo) Foo(a []int, b string) int {
	return 1
}

func fn(a int, b float64) int {
	return 1
}

func fn1(fn func(int, float64) int) {
	fn(1, 1.0)
}

func fn2() {
	fn1(fn)
	ch := make(chan int)
	go func() {
		ch <- 1
	}()
	<-ch

	f := Foo{}
	var foo IFoo = f
	foo.Foo(nil, "")
}
