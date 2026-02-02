package main

import "sync"

// Test: directly using sync.Once and sync.WaitGroup

var once sync.Once
var wg sync.WaitGroup
var result int

func main() {
	println("starting test")

	once.Do(func() {
		println("once.Do: first call")
	})

	once.Do(func() {
		println("once.Do: second call - should not print")
	})

	println("creating goroutine")
	wg.Add(1)
	go func() {
		defer wg.Done()
		result = 42
		println("goroutine: result set to", result)
	}()

	println("waiting for goroutine")
	wg.Wait()
	println("done, result =", result)
}
