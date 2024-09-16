package main

type T1 int

type T2 struct {
	v int
}

type T3[T any] struct {
	v T
}

type cacheKey struct {
	t1 T1
	t2 T2
	t3 T3[any]
	t4 *int
	t5 uintptr
}

func main() {
	m := map[cacheKey]string{}
	m[cacheKey{0, T2{0}, T3[any]{0}, nil, 0}] = "world"
	v, ok := m[cacheKey{0, T2{0}, T3[any]{0}, nil, 0}]
	println(v, ok)
}
