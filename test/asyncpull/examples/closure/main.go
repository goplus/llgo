//go:build llgo
// +build llgo

package main

import "fmt"

func Outer(x int) func() int {
	return func() int {
		return x * 2
	}
}

func main() {
	f := Outer(5)
	fmt.Println(f())
}
