package main

func main() {
	make1()
	make2()
	make3()
	make4()
	make5()
	make6()
	make7()
}

func make1() {
	m := make(map[int]string)
	m[1] = "hello"
	m[2] = "world"
	m[3] = "llgo"
	println(m, m[1], m[2], len(m))
	for k, v := range m {
		println(k, ":", v)
	}

	s := make(map[string]int, len(m))
	for k, v := range m {
		s[v] = k
	}

	id, ok := s["llgo"]
	println("llgo", id, ok)

	none, ok := s["go"]
	println("go", none, ok)

	delete(s, "llgo")
	if _, ok := s["llgo"]; ok {
		panic("bad key")
	}
	if len(s) != 2 {
		panic("bad len")
	}
}

type N1 [1]int

func make2() {
	m2 := make(map[int]string)
	println(m2, len(m2), m2 == nil, m2 != nil)
	var m3 map[int]string
	println(m3, len(m3), m3 == nil, m3 != nil)

	n := make(map[any]int)
	n[N1{1}] = 100
	n[N1{2}] = 200
	n[N1{3}] = 300
	n[N1{2}] = -200
	for k, v := range n {
		println(k.(N1)[0], v)
	}
}

type N struct {
	n1 int8
	n2 int8
}
type K [1]N
type K2 [1]*N

func make3() {
	var a any = K{N{1, 2}}
	var b any = K{N{1, 2}}
	println(a == b)

	m := make(map[any]int)
	m[K{N{1, 2}}] = 100
	m[K{N{3, 4}}] = 200
	for k, v := range m {
		println(k.(K)[0].n1, v)
	}
}

func make4() {
	var a any = K2{&N{1, 2}}
	var b any = K2{&N{1, 2}}
	println(a == b)

	m := make(map[any]int)
	m[K2{&N{1, 2}}] = 100
	m[K2{&N{3, 4}}] = 200
	for k, v := range m {
		println(k.(K2)[0].n1, v)
	}
}

func make5() {
	ch := make(chan int)
	var a any = ch
	var b any = ch
	println(a == b)
	m := make(map[chan int]int)
	m[ch] = 100
	m[ch] = 200
	for k, v := range m {
		println(k, v)
	}
}

type M map[int]string

func make6() {
	var m M
	m = make(map[int]string)
	m[1] = "hello"
	for k, v := range m {
		println(k, v)
	}
}

func make7() {
	type N int
	m := map[N]string{
		1: "hello",
		2: "world",
	}
	for k, v := range m {
		println(k, v)
	}
	println(m[1])
}
