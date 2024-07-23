package main

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/libuv"
	"github.com/goplus/llgo/c/os"
)

const BUFFER_SIZE = 1024

var (
	loop     *libuv.Loop
	openReq  libuv.Fs
	readReq  libuv.Fs
	closeReq libuv.Fs

	buffer [BUFFER_SIZE]c.Char
	iov    libuv.Buf
)

func main() {
	// Print the libuv version
	c.Printf(c.Str("libuv version: %d\n"), libuv.Version())

	// Initialize the loop
	loop = libuv.DefaultLoop()

	// Open the file
	libuv.FsOpen(loop, &openReq, c.Str("example.txt"), os.O_RDONLY, 0, onOpen)

	// Run the loop
	libuv.Run(loop, libuv.RUN_DEFAULT)

	// Cleanup
	defer cleanup()
}

func onOpen(req *libuv.Fs) {
	// Check for errors
	if libuv.FsGetResult(req) < 0 {
		c.Fprintf(c.Stderr, c.Str("Error opening file: %s\n"), libuv.Strerror(libuv.LoopClose(loop)))
		libuv.LoopClose(loop)
		return
	}
	// Init buffer
	iov = libuv.InitBuf((*c.Char)(unsafe.Pointer(&buffer[0])), c.Uint(unsafe.Sizeof(buffer)))
	// Read the file
	readRes := libuv.FsRead(loop, &readReq, libuv.UvFile(libuv.FsGetResult(req)), &iov, 1, -1, onRead)
	if readRes != 0 {
		c.Printf(c.Str("Error in FsRead: %s (code: %d)\n"), libuv.Strerror(c.Int(readRes)), readRes)
		libuv.LoopClose(loop)
		return
	}
}

func onRead(req *libuv.Fs) {
	// Check for errors
	if libuv.FsGetResult(req) < 0 {
		c.Fprintf(c.Stderr, c.Str("Read error: %s\n"), libuv.Strerror(libuv.FsGetResult(req)))
		libuv.LoopClose(loop)
	} else if libuv.FsGetResult(req) == 0 {
		c.Printf(c.Str("EOF\n"))
		// Close the file
		closeRes := libuv.FsClose(loop, &closeReq, libuv.UvFile(libuv.FsGetResult(&openReq)), onClose)
		if closeRes != 0 {
			// Print the content
			c.Printf(c.Str("Error in FsClose: %s (code: %d)\n"), libuv.Strerror(c.Int(closeRes)), closeRes)
			libuv.LoopClose(loop)
			return
		}
	} else {
		c.Printf(c.Str("Read %d bytes\n"), libuv.FsGetResult(req))
		c.Printf(c.Str("Read content: %.*s\n"), libuv.FsGetResult(req), (*c.Char)(unsafe.Pointer(&buffer[0])))
		libuv.LoopClose(loop)
	}
}

func onClose(req *libuv.Fs) {
	// Check for errors
	if libuv.FsGetResult(req) < 0 {
		c.Fprintf(c.Stderr, c.Str("Error closing file: %s\n"), libuv.Strerror(libuv.FsGetResult(req)))
	} else {
		c.Printf(c.Str("\nFile closed successfully.\n"))
	}
	libuv.LoopClose(loop)
}

func cleanup() {
	// Cleanup the requests
	libuv.FsReqCleanup(&openReq)
	libuv.FsReqCleanup(&readReq)
	libuv.FsReqCleanup(&closeReq)
	// Close the loop
	libuv.LoopClose(loop)
}
