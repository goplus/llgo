package main

import (
	"fmt"
	"hash/adler32"
	"hash/crc32"
	"hash/crc64"
)

func crc64Demo() {
	crc := crc64.MakeTable(crc64.ECMA)
	fmt.Printf("%016x\n", crc64.Checksum([]byte("Hello world"), crc))
}

func crc32Demo() {
	crc32q := crc32.MakeTable(crc32.IEEE)
	fmt.Printf("%08x\n", crc32.Checksum([]byte("Hello world"), crc32q))
}

func adler32Demo() {
	fmt.Printf("%08x\n", adler32.Checksum([]byte("Hello world")))
}

func main() {
	adler32Demo()
	crc32Demo()
	crc64Demo()
}
