package main

func main() {
	defer func() {
		r := recover()
		println(r.(string))
		panic("main.defer.error")
	}()
	demo()
}

func demo() {
	defer func() {
		r := recover()
		println(r.(string))
		panic("demo.defer.error")
	}()
	panic("demo.error")
}
