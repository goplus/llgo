package main

import (
	"github.com/goplus/llgo/internal/abi"
	"github.com/goplus/llgo/internal/runtime"
	"github.com/goplus/llgo/internal/runtime/c"
)

func Basic(kind abi.Kind) *abi.Type {
	return basicTypes[kind]
}

var (
	basicTypes = [...]*abi.Type{
		abi.String: basicType(abi.String),
	}
	sizeBasicTypes = [...]uintptr{
		abi.String: 16,
	}
)

func basicType(kind abi.Kind) *abi.Type {
	return &abi.Type{
		Size_: sizeBasicTypes[kind],
		Hash:  uint32(kind),
		Kind_: uint8(kind),
	}
}

func main() {
	t := Basic(abi.String)
	t2 := runtime.Basic(abi.String)
	c.Printf(c.Str("Kind: %d, Size: %d\n"), int(t.Kind_), t.Size_)
	c.Printf(c.Str("Kind: %d, Size: %d\n"), int(t2.Kind_), t2.Size_)
}
