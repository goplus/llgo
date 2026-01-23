package abi

import _ "unsafe"

//go:linkname funcPCABI0 llgo.funcPCABI0
func funcPCABI0(f interface{}) uintptr
