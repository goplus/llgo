package main

func main() {
	var m int = 200
	fn := func(n int) int {
		return m + n
	}
	var i any = fn
	f, ok := i.(func(int) int)
	if !ok {
		panic("error")
	}
	println(f(100))
}
