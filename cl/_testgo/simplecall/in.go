package main

// Test: function call accepting func() parameter
// This simulates the core issue with sync.Once.Do

func callFunc(f func()) {
	f()
}

var counter = 0

func main() {
	callFunc(func() {
		counter++
		println("closure called, counter:", counter)
	})
	println("after callFunc")
}
