package main

func main() {
	var a int = 5
	defer println(a)
	defer func() {
		println(a)
	}()
	defer func() {
		println(recover().(string))
	}()
	a = 10
	panic("error")
	//Output:
	// error
	// 10
	// 5
}
