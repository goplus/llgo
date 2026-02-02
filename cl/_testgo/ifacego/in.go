package main

import "sync"

// Test: go calling interface method

type Printer interface {
	Print()
}

type MyPrinter struct {
	name string
}

func (p *MyPrinter) Print() {
	println("MyPrinter:", p.name)
}

var wg sync.WaitGroup

func testGoInterfaceMethod() {
	var p Printer = &MyPrinter{name: "test"}
	wg.Add(1)
	go func() {
		defer wg.Done()
		p.Print() // calling interface method in goroutine (normal call)
	}()
	wg.Wait()
}

func main() {
	println("starting test")
	testGoInterfaceMethod()
	println("done")
}
