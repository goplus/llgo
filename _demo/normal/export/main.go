package main

//export LPSPI2_IRQHandler
func LPSPI2_IRQHandler() {
	println("LPSPI2 interrupt handled")
}

//export SysTick_Handler
func SysTick_Handler() {
	println("System tick")
}

//export Add
func Add(a, b int) int {
	return a + b
}

func main() {
	LPSPI2_IRQHandler()
	SysTick_Handler()
	println("Add(2, 3) =", Add(2, 3))
}
