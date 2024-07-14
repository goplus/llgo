package main

import (
	"fmt"
	"os"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/cpp/llvm"
)

func Demangle(mangledName string) *c.Char {
	if ret := llvm.ItaniumDemangle(mangledName, true); ret != nil {
		return ret
	}
	if ret := llvm.RustDemangle(mangledName); ret != nil {
		return ret
	}
	return llvm.MicrosoftDemangle(mangledName, nil, nil, 0)
}

func main() {
	if len(os.Args) != 2 {
		fmt.Fprintln(os.Stderr, "Usage: demangle symbol")
		return
	}
	mangledName := os.Args[1]
	if name := Demangle(mangledName); name != nil {
		c.Printf(c.Str("%s\n"), name)
		c.Free(unsafe.Pointer(name))
	} else {
		fmt.Fprintln(os.Stderr, "Failed to demangle")
	}
}
