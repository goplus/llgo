package main

func main() {
	recursive()
}

func recursive() {
	type T int
	if got, want := recur1[T](5), T(110); got != want {
		panic("error")
	}
}

type Integer interface {
	~int | ~int32 | ~int64
}

func recur1[T Integer](n T) T {
	if n == 0 || n == 1 {
		return T(1)
	} else {
		return n * recur2(n-1)
	}
}

func recur2[T Integer](n T) T {
	list := make([]T, n)
	for i, _ := range list {
		list[i] = T(i + 1)
	}
	var sum T
	for _, elt := range list {
		sum += elt
	}
	return sum + recur1(n-1)
}
