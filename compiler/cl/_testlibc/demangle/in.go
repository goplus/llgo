package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/cpp/llvm"
)

func main() {
	mangledName := "__ZNK9INIReader10ParseErrorEv"
	if name := llvm.ItaniumDemangle(mangledName, true); name != nil {
		c.Printf(c.Str("%s\n"), name)
	} else {
		println("Failed to demangle")
	}
}
