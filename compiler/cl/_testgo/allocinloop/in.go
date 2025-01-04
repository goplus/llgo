package main

func Foo(s string) int {
	return len(s)
}

func Test() {
	j := 0
	for i := 0; i < 10000000; i++ {
		j += Foo("hello")
	}
	println(j)
}

func main() {
	Test()
}
