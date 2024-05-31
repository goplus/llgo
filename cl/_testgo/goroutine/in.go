package main

func main() {
	done := false
	go func() {
		println("Hello, World!")
		done = true
	}()
	for !done {
		print(".")
	}
}
