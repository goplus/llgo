package main

import (
	"time"
)

// Test: go directly calling interface method value

type Printer interface {
	Print()
}

type MyPrinter struct {
	name string
}

func (p *MyPrinter) Print() {
	println("MyPrinter:", p.name)
}

func testGoInterfaceMethodValue() {
	var p Printer = &MyPrinter{name: "test"}
	go p.Print()                       // go directly calling interface method value
	time.Sleep(100 * time.Millisecond) // Wait for goroutine to complete
	println("after wait")
}

func main() {
	println("starting test")
	testGoInterfaceMethodValue()
	println("done")
}
