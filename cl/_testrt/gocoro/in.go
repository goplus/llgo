package main

func hello() {
	println("hello from goroutine")
}

func main() {
	go hello()
	println("main done")
}
