package main

func f(s string) bool {
	return len(s) > 2
}

func fail() {
	defer println("bye")
	defer func() {
		if e := recover(); e != nil {
			println("recover:", e.(string))
		}
	}()
	panic("panic message")
}

func main() {
	defer func() {
		println("hi")
	}()
	if s := "hello"; f(s) {
		defer println(s)
	} else {
		defer println("world")
		return
	}
	fail()
	println("reachable")
}
