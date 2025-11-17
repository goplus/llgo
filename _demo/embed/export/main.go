package main

import (
	"github.com/goplus/lib/c"
)

// This demo shows how to use //export with different symbol names on embedded targets.
//
// On embedded targets, you can export Go functions with different C symbol names.
// This is useful for hardware interrupt handlers that require specific names.

// Standard Go export - same name
//
//export HelloWorld
func HelloWorld() {
	c.Printf(c.Str("Hello from "))
	c.Printf(c.Str("HelloWorld\n"))
}

// Embedded target export - different name
// Go function name: interruptLPSPI2
// Exported C symbol: LPSPI2_IRQHandler
//
//export LPSPI2_IRQHandler
func interruptLPSPI2() {
	c.Printf(c.Str("LPSPI2 interrupt "))
	c.Printf(c.Str("handler called\n"))
}

// Embedded target export - different name
// Go function name: systemTickHandler
// Exported C symbol: SysTick_Handler
//
//export SysTick_Handler
func systemTickHandler() {
	c.Printf(c.Str("SysTick "))
	c.Printf(c.Str("handler called\n"))
}

// Embedded target export - different name
// Go function name: Add
// Exported C symbol: AddFunc
//
//export AddFunc
func Add(a, b int) int {
	result := a + b
	c.Printf(c.Str("AddFunc(%d, %d) = %d\n"), a, b, result)
	return result
}

func main() {
	c.Printf(c.Str("=== Export Demo ===\n\n"))

	// Call exported functions directly from Go
	c.Printf(c.Str("Calling HelloWorld:\n"))
	HelloWorld()

	c.Printf(c.Str("\nSimulating hardware interrupts:\n"))
	interruptLPSPI2()
	systemTickHandler()

	c.Printf(c.Str("\nTesting function with return value:\n"))
	result := Add(10, 20)
	c.Printf(c.Str("Result: %d\n"), result)

	c.Printf(c.Str("\n=== Demo Complete ===\n"))
}
