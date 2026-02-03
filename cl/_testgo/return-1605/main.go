package main

type T struct {
	data []int
}

func a() []int {
	var t = T{data: []int{1, 2}}
	a := t.data
	t.data = []int{1, 2, 3}
	return a
}

func b() ([]int, bool) {
	var t = T{data: []int{1, 2}}
	a := t.data
	t.data = []int{1, 2, 3}
	return a, true
}

func main() {
	println(len(a()))
	c, _ := b()
	println(len(c))
}
