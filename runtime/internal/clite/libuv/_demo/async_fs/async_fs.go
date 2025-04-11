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
	closeReq libuv.Fs

	buffer [BUFFER_SIZE]c.Char
	iov    libuv.Buf
	file   libuv.File
)

func main() {
	// Print the libuv version
	c.Printf(c.Str("libuv version: %d\n"), libuv.Version())

	// Initialize the loop
	loop = libuv.DefaultLoop()

	// Open the file
	libuv.FsOpen(loop, &openReq, c.Str("example.txt"), os.O_RDONLY, 0, onOpen)

	// Run the loop
	result := loop.Run(libuv.RUN_DEFAULT)

	if result != 0 {
		c.Fprintf(c.Stderr, c.Str("Error in Run: %s\n"), libuv.Strerror(libuv.Errno(result)))
	}

	// Cleanup
	defer cleanup()
}

func onOpen(req *libuv.Fs) {
	// Check for errors
	if req.GetResult() < 0 {
		c.Fprintf(c.Stderr, c.Str("Error opening file: %s\n"), libuv.Strerror(libuv.Errno(req.GetResult())))
		loop.Close()
		return
	}

	// Store the file descriptor
	file = libuv.File(req.GetResult())

	// Init buffer
	iov = libuv.InitBuf((*c.Char)(unsafe.Pointer(&buffer[0])), c.Uint(unsafe.Sizeof(buffer)))

	// Read the file
	readFile()

}

func readFile() {
	// Initialize the request every time
	var readReq libuv.Fs

	// Read the file
	readRes := libuv.FsRead(loop, &readReq, file, &iov, 1, -1, onRead)
	if readRes != 0 {
		c.Printf(c.Str("Error in FsRead: %s (code: %d)\n"), libuv.Strerror(libuv.Errno(readRes)), readRes)
		readReq.ReqCleanup()
		loop.Close()
	}
}

func onRead(req *libuv.Fs) {
	// Cleanup the request
	defer req.ReqCleanup()
	// Check for errors
	if req.GetResult() < 0 {
		c.Fprintf(c.Stderr, c.Str("Read error: %s\n"), libuv.Strerror(libuv.Errno(req.GetResult())))
	} else if req.GetResult() == 0 {
		// Close the file
		closeRes := libuv.FsClose(loop, &closeReq, libuv.File(openReq.GetResult()), onClose)
		if closeRes != 0 {
			c.Printf(c.Str("Error in FsClose: %s (code: %d)\n"), libuv.Strerror(libuv.Errno(closeRes)), closeRes)
			loop.Close()
			return
		}
	} else {
		c.Printf(c.Str("Read %d bytes\n"), req.GetResult())
		c.Printf(c.Str("Read content: %.*s\n"), req.GetResult(), (*c.Char)(unsafe.Pointer(&buffer[0])))
		// Read the file again
		readFile()
	}
}

func onClose(req *libuv.Fs) {
	// Check for errors
	if req.GetResult() < 0 {
		c.Fprintf(c.Stderr, c.Str("Error closing file: %s\n"), libuv.Strerror(libuv.Errno(req.GetResult())))
	} else {
		c.Printf(c.Str("\nFile closed successfully.\n"))
	}
}

func cleanup() {
	// Cleanup the requests
	openReq.ReqCleanup()
	closeReq.ReqCleanup()
	// Close the loop
	result := loop.Close()
	if result != 0 {
		c.Fprintf(c.Stderr, c.Str("Error in LoopClose: %s\n"), libuv.Strerror(libuv.Errno(result)))
	}
}
