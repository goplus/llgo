package main

func main() {
	done := false
	go func(s string) {
		println(s)
		done = true
	}("Hello, goroutine")
	for !done {
		print(".")
	}
}
