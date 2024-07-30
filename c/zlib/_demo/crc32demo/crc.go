package main

import (
	"fmt"

	"github.com/goplus/llgo/c/zlib"
)

func main() {
	fmt.Printf("%08x\n", zlib.Crc32ZString(0, "Hello world"))
}
