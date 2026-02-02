package main

type Once struct {
	done bool
}

func (o *Once) Do(f func()) {
	if !o.done {
		o.done = true
		f()
	}
}

var once Once

func main() {
	once.Do(func() {
		println("first call")
	})
	once.Do(func() {
		println("second call - should not print")
	})
	println("done")
}
