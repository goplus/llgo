package main

func main() {
	defer func() {
		r := recover()
		println(r.(string))
		panic("defer.error")
	}()
	panic("main.error")
}
