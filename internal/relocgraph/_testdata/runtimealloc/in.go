package runtimealloc

type T struct {
	a, b, c, d, e, f, g, h int
}

func Use() *T {
	return new(T)
}
