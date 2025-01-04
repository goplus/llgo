package main

func f(s string) bool {
	return len(s) > 2
}

func main() {
	defer func() {
		println("hi")
	}()
	for i := 0; i < 3; i++ {
		if s := "hello"; f(s) {
			defer println(s)
		} else {
			defer println("world")
			return
		}
	}
	defer println("bye")
}
