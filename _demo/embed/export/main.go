package main

//export LPSPI2_IRQHandler
func interruptLPSPI2() {
	println("LPSPI2 interrupt handled")
}

//export SysTick_Handler
func systemTickHandler() {
	println("System tick")
}

//export Add
func Add(a, b int) int {
	return a + b
}

func main() {
	interruptLPSPI2()
	systemTickHandler()
	println("Add(2, 3) =", Add(2, 3))
}
