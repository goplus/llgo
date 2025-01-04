package main

type Void = [0]byte
type Future[T any] func() T

type IO[T any] func() Future[T]

func WriteFile(fileName string) IO[error] {
	return func() Future[error] {
		return func() error {
			return nil
		}
	}
}

func RunIO[T any](call IO[T]) T {
	return call()()
}

func main() {
	RunIO[Void](func() Future[Void] {
		return func() (ret Void) {
			return
		}
	})
}
