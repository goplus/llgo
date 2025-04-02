package main

type Func func(a int, b int) int
type Func2 func(a int, b int) int

type Call struct {
	fn Func
	n  int
}

func (c *Call) add(a int, b int) int {
	return a + b + c.n
}

func add(a int, b int) int {
	return a + b
}

func demo1(n int) Func {
	m := &Call{n: n}
	m.fn = m.add
	return m.fn
}

func demo2() Func {
	m := &Call{}
	return m.add
}

func demo3() Func {
	return add
}

func demo4() Func {
	return func(a, b int) int { return a + b }
}

func demo5(n int) Func {
	return func(a, b int) int { return a + b + n }
}

func main() {
	n1 := demo1(1)(99, 200)
	println(n1)

	n2 := demo2()(100, 200)
	println(n2)

	n3 := demo3()(100, 200)
	println(n3)

	n4 := demo4()(100, 200)
	println(n4)

	n5 := demo5(1)(99, 200)
	println(n5)

	var fn func(a int, b int) int = demo5(1)
	println(fn(99, 200))

	var fn2 Func2 = (Func2)(demo5(1))
	println(fn2(99, 200))
}
