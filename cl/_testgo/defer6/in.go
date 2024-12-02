package main

func main() {
	var a int = 5
	defer println(a)
	defer func() {
		println(a)
	}()
	a = 10
	panic("error")
	//Output:
	// 10
	// 5
	// panic: error
}
