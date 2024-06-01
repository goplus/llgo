package main

func main() {
	done := false
	go func() {
		println("Hello, goroutine")
		done = true
	}()
	for !done {
		print(".")
	}
}
