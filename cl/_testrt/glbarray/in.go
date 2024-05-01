package main

import (
	"github.com/goplus/llgo/internal/abi"
	"github.com/goplus/llgo/internal/runtime/c"
)

func Basic(kind abi.Kind) *abi.Type {
	ret := basicTypes[kind]
	c.Printf(c.Str("Basic: %p, %d, %d, %d, %d\n"),
		ret, c.Int(ret.Hash), c.Int(ret.Kind_), c.Int(kind), c.Int(ret.Size_))
	return ret
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
	ret := &abi.Type{
		Size_: sizeBasicTypes[kind],
		Hash:  uint32(kind),
		Kind_: uint8(kind),
	}
	c.Printf(c.Str("basicType: %p, %d, %d, %d, %d\n"),
		ret, c.Int(ret.Hash), c.Int(ret.Kind_), c.Int(kind), c.Int(ret.Size_))
	return ret
}

func main() {
	t := Basic(abi.String)
	c.Printf(c.Str("Kind: %d, Size: %d\n"), int(t.Kind_), t.Size_)
}
