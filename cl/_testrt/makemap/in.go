package main

func main() {
	m := make(map[int]string)
	m[1] = "hello"
	m[2] = "world"
	println(m[1], m[2])
	v, ok := m[2]
	println(v, ok)
	v2, ok := m[10]
	println(v2, ok)
}
