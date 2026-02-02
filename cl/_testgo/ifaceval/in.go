package main

// Test: store interface method value, then call it

type Printer interface {
	Print()
}

type MyPrinter struct {
	name string
}

func (p *MyPrinter) Print() {
	println("MyPrinter:", p.name)
}

func main() {
	println("starting test")

	var p Printer = &MyPrinter{name: "test"}

	// Get interface method value
	f := p.Print

	// Call method value
	println("calling f()")
	f()
	println("done")
}
