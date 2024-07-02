package main

type N [1]int

func main() {
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

	m2 := make(map[int]string)
	println(m2, len(m2), m2 == nil, m2 != nil)
	var m3 map[int]string
	println(m3, len(m3), m3 == nil, m3 != nil)

	n := make(map[any]int)
	n[N{1}] = 100
	n[N{2}] = 200
	n[N{3}] = 300
	n[N{2}] = -200
	for k, v := range n {
		println(k.(N)[0], v)
	}
}
