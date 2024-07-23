package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/libuv"
	"github.com/goplus/llgo/c/os"
	"golang.org/x/tools/container/intsets"
	"unsafe"
)

const bufferSize = 1024

var buffer []c.Char
var iov libuv.Buf

var loop *libuv.Loop
var readReq *libuv.Fs
var closeReq *libuv.Fs
var openReq *libuv.Fs

func initBuffer() {
	buffer = make([]c.Char, bufferSize)
}

func main() {
	loop = libuv.DefaultLoop()
	initBuffer()

	file := libuv.NewFile(loop, openReq)

	path := c.Str("example.txt")

	file.Open(path, os.O_RDONLY, 0, onOpen)

	loop.Run(libuv.RUN_DEFAULT)

	libuv.FsReqCleanup(openReq)
	loop.Close()
	c.Free(unsafe.Pointer(loop))
}

func onOpen(req *libuv.Fs) {
	if req.GetResult() < 0 {
		c.Fprintf(c.Stderr, c.Str("Error opening file: %s\n"), libuv.Strerror(req.GetResult()))
	} else {
		iov = libuv.InitBuf(unsafe.SliceData(buffer), c.Uint(unsafe.Sizeof(buffer)))
		libuv.FsRead(loop, readReq, req.GetResult(), []libuv.Buf{iov}, 1, -1, onRead)
	}
	libuv.FsReqCleanup(req)
}

func onRead(req *libuv.Fs) {
	if req.GetResult() < 0 {
		c.Fprintf(c.Stderr, c.Str("Read error: %s\n"), libuv.Strerror(req.GetResult()))
	} else if req.GetResult() == 0 {
		libuv.FsClose(loop, closeReq, req.GetResult(), onClose)
	} else {
		if req.GetResult() > intsets.MaxInt {
			c.Fprintf(c.Stderr, c.Str("Too big file.\n"))
		}
		c.Printf(c.Str("%.*s"), c.Int(req.GetResult()), buffer)
		libuv.FsRead(loop, req, req.GetResult(), []libuv.Buf{iov}, 1, -1, onRead)
	}
	libuv.FsReqCleanup(req)
}

func onClose(req *libuv.Fs) {
	c.Printf(c.Str("\nFile closed.\n"))
	libuv.FsReqCleanup(req)
}
