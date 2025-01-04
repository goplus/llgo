package main

import (
	"sync"
)

func main() {
	var wg sync.WaitGroup
	wg.Add(2)
	go func() {
		defer wg.Done()
		println("work 1")
	}()
	go func() {
		defer wg.Done()
		println("work 2")
	}()
	wg.Wait()
	println("done")
}
