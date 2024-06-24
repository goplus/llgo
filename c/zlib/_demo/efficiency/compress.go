package main

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/zlib"
)

func main() {
	txt := []byte("zlib is a software library used for data compression. It was created by Jean-loup Gailly and Mark Adler and first released in 1995. zlib is designed to be a free, legally unencumbered—that is, not covered by any patents—alternative to the proprietary DEFLATE compression algorithm, which is often used in software applications for data compression.The library provides functions to compress and decompress data using the DEFLATE algorithm, which is a combination of the LZ77 algorithm and Huffman coding. zlib is notable for its versatility; it can be used in a wide range of applications, from web servers and web clients compressing HTTP data, to the compression of data for storage or transmission in various file formats, such as PNG, ZIP, and GZIP.")
	txtLen := c.Ulong(len(txt))

	for level := 0; level <= 9; level++ {
		cmpSize := zlib.CompressBound(txtLen)
		cmpData := make([]byte, int(cmpSize))

		res := zlib.Compress2(unsafe.SliceData(cmpData), &cmpSize, unsafe.SliceData(txt), txtLen, c.Int(level))
		if res != zlib.OK {
			c.Printf(c.Str("\nCompression failed at level %d: %d\n"), level, res)
			continue
		}

		c.Printf(c.Str("Compression level %d: Text length = %d, Compressed size = %d\n"), level, txtLen, cmpSize)

		ucmpSize := txtLen
		ucmpData := make([]byte, int(ucmpSize))

		unRes := zlib.Uncompress(unsafe.SliceData(ucmpData), &ucmpSize, unsafe.SliceData(cmpData), cmpSize)
		if unRes != zlib.OK {
			c.Printf(c.Str("\nDecompression failed at level %d: %d\n"), level, unRes)
			continue
		}
	}
}
