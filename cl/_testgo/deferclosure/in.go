package main

// Test for covering the closureStub branches in ssa/package.go

// Type for holding a function
type Handler struct {
	fn func(int)
}

func (h *Handler) SetHandler(f func(int)) {
	h.fn = f
}

// Test case 1: Deferred method call with function literal (issue #1488)
// This triggers the temporary register name check (name[0] == '%')
func testDeferMethodLiteral() {
	var h Handler
	h.SetHandler(func(int) {})
	defer h.SetHandler(func(x int) {
		println("deferred", x)
	})
	println("before return")
}

// Test case 2: Defer a closure value directly
// This triggers the v.kind != vkFuncDecl && v.kind != vkFuncPtr branch
func testDeferClosureValue() {
	x := 42
	fn := func() {
		println("closure value", x)
	}
	defer fn()
	println("deferred closure")
}

// Test case 3: Complex scenario with closure in struct
type Processor struct {
	callback func(string)
}

func (p *Processor) SetCallback(cb func(string)) {
	p.callback = cb
}

func testDeferStructClosure() {
	var p Processor
	msg := "captured"
	// Defer a method call that takes a closure capturing a variable
	defer p.SetCallback(func(s string) {
		println(s, msg)
	})
	println("struct closure test")
}

// Test case 4: Defer a function accessed through a struct field
// This should trigger the v.kind != vkFuncDecl && v.kind != vkFuncPtr branch
// because accessing p.callback returns a value that's not a function declaration
type FuncHolder struct {
	callback func()
}

func testDeferFieldAccess() {
	var holder FuncHolder
	holder.callback = func() {
		println("callback from field")
	}
	// When we defer holder.callback directly, it's accessed as a field load
	// which might have a different value kind than vkFuncDecl/vkFuncPtr
	defer holder.callback()
	println("field access test")
}

func main() {
	testDeferMethodLiteral()
	testDeferClosureValue()
	testDeferStructClosure()
	testDeferFieldAccess()
}
