package main

type Tuple[T any] struct {
	v T
}

func (t Tuple[T]) Get() T {
	return t.v
}

type Future[T any] interface {
	Then(func(T))
}

type future[T any] struct {
	fn func(func(T))
}

func (f *future[T]) Then(callback func(T)) {
	f.fn(callback)
}

func Async[T any](fn func(func(T))) Future[T] {
	return &future[T]{fn: fn}
}

func ReadFile(fileName string) Future[Tuple[error]] {
	return Async[Tuple[error]](func(resolve func(Tuple[error])) {
		resolve(Tuple[error]{v: nil})
	})
}

func main() {
	ReadFile("foo.txt").Then(func(v Tuple[error]) {
		println(v.Get())
	})
}
