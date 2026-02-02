package main

func globalAdd(x, y int) int {
	return x + y
}

// testGlobalFuncAsClosure: global function converted to closure
func main() {
	g := globalAdd
	_ = g(1, 2)
}
