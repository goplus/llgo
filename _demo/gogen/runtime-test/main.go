package main

import (
	"fmt"
	"runtime"
)

func main() {
	goroot := runtime.GOROOT()
	if goroot == "" {
		panic("GOROOT should not be empty")
	}
	fmt.Printf("GOROOT: %s\n", goroot)

	// Note: runtime.FuncForPC is not tested here because llgo does not support it yet
	// pc, _, _, ok := runtime.Caller(0)
	// if !ok {
	// 	panic("Caller should succeed")
	// }
	// fn := runtime.FuncForPC(pc)
	// if fn == nil { panic("FuncForPC should not return nil") }
	// fmt.Printf("Function: %s\n", fn.Name())

	fmt.Println("=== All runtime tests passed ===")
}
