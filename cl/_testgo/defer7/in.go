package main

func main() {
	defer func() {
		r := recover()
		println(r.(string))
	}()
	demo1()
}

func demo1() {
	defer func() {
		r := recover()
		println(r.(string))
		panic("demo1.defer.error")
	}()
	demo2()
}

func demo2() {
	defer func() {
		r := recover()
		println(r.(string))
		panic("demo2.defer.error")
	}()
	panic("demo2.error")
}
