package main

func main() {
	_ = use1()
	_ = use2()
}

func use1() int {
	type T int
	return int(id[T](1))
}

func use2() int {
	type T int
	return int(id[T](2))
}

func id[T ~int](v T) T {
	return v
}
