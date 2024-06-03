package main

func f(s string) bool {
	return len(s) > 2
}

func main() {
	defer func() {
		println("hi")
	}()
	if s := "hello"; f(s) {
		defer println(s)
	} else {
		defer println("world")
	}
	defer println("bye")
}
