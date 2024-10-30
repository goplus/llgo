package async

import (
	_ "unsafe"
)

type Void = [0]byte

type Future[T any] interface {
	Then(cb func(T))
}

type future[T any] struct {
	cb func(func(T))
}

func (f *future[T]) Then(cb func(T)) {
	f.cb(cb)
}

func Async[T any](fn func(func(T))) Future[T] {
	return &future[T]{fn}
}

func Run[T any](future Future[T]) T {
	var ret T
	future.Then(func(v T) {
		ret = v
	})
	return ret
}
