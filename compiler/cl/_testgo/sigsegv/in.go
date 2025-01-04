package main

type T struct {
	s int
}

func f() *T {
	return nil
}

func init() {
	println("init")
	defer func() {
		r := recover()
		if e, ok := r.(error); ok {
			println("recover", e.Error())
		}
	}()
	println(f().s)
}

func main() {
	println("main")
}
