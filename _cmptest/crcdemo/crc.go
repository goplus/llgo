package main

import (
	"fmt"
	"hash/crc64"
)

func main() {
	crc := crc64.MakeTable(crc64.ECMA)
	fmt.Printf("%016x\n", crc64.Checksum([]byte("Hello world"), crc))
}
