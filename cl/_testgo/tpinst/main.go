package main

type M[T interface{}] struct {
	v T
}

func (pt *M[T]) Value() T {
	return pt.v
}

func (pt *M[T]) value() T {
	return pt.v
}

type I[T interface{}] interface {
	Value() T
}

func demo() {
	var v1 I[int] = &M[int]{100}
	if v1.Value() != 100 {
		panic("error")
	}

	var v2 I[float64] = &M[float64]{100.1}
	if v2.Value() != 100.1 {
		panic("error")
	}

	if v1.(interface{ value() int }).value() != 100 {
		panic("error")
	}
}

func main() {
	demo()
}
