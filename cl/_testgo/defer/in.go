package main

func f(s string) bool {
	return len(s) > 2
}

func fail() {
	panic("error")
}

func main() {
	defer func() {
		println("hi")
		/*
			if e := recover(); e != nil {
				println(e.(string))
			}
		*/
	}()
	if s := "hello"; f(s) {
		defer println(s)
	} else {
		defer println("world")
		fail()
	}
	defer println("bye")
}
