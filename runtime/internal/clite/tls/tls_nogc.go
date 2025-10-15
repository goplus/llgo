//go:build llgo && nogc

package tls

type slot[T any] struct {
	value      T
	destructor func(*T)
}

func registerSlot[T any](s *slot[T]) {}

func deregisterSlot[T any](s *slot[T]) {}
