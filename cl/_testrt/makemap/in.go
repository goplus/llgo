package main

func main() {
	m := make(map[int]string)
	m[1] = "hello"
	m[2] = "world"
	m[3] = "llgo"
	println(m[1], m[2], len(m))
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
}
