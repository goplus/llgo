package main

import (
	"fmt"
	"time"
)

//llgo:link asm llgo.asm
func asm(instruction string) {}

func main() {
	start := time.Now()
	for i := 0; i < 100000; i++ {
		asm("nop")
	}
	duration := time.Since(start)
	fmt.Println("Duration:", duration)
}
