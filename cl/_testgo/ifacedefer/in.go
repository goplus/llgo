package main

// Test: defer calling interface method
// This simulates the Imethod + Defer combination

type Printer interface {
	Print()
}

type MyPrinter struct {
	name string
}

func (p *MyPrinter) Print() {
	println("MyPrinter:", p.name)
}

func testDeferInterfaceMethod() {
	var p Printer = &MyPrinter{name: "test"}
	defer p.Print() // defer interface method call
	println("before return")
}

func main() {
	println("starting test")
	testDeferInterfaceMethod()
	println("done")
}
