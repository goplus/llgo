package main

import (
	_ "unsafe"
)

const (
	LLGoFiles = "../wrap/demo.c"
)

type st1 struct {
	x int32
	y int32
}

//go:linkname cfn1 C.fn1
func cfn1(v st1) st1

func fn1(v st1) st1 {
	return v
}

func main() {
	cfn1(st1{})
}
