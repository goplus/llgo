package main

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/libuv"
	"github.com/goplus/llgo/c/net"
)

var DEFAULT_PORT c.Int = 8080
var DEFAULT_BACKLOG c.Int = 128

type WriteReq struct {
	Req libuv.Write
	Buf libuv.Buf
}

func main() {
	// Initialize the default event loop
	var loop = libuv.DefaultLoop()

	// Initialize a TCP server
	var server libuv.Tcp
	libuv.InitTcp(loop, &server)

	// Set up the address to bind the server to
	var addr net.SockaddrIn
	libuv.Ip4Addr(c.Str("0.0.0.0"), DEFAULT_PORT, &addr)
	c.Printf(c.Str("Listening on %s:%d\n"), c.Str("0.0.0.0"), DEFAULT_PORT)

	// Bind the server to the specified address and port
	(&server).Bind((*net.SockAddr)(c.Pointer(&addr)), 0)
	res := (*libuv.Stream)(unsafe.Pointer(&server)).Listen(DEFAULT_BACKLOG, OnNewConnection)
	if res != 0 {
		c.Fprintf(c.Stderr, c.Str("Listen error: %s\n"), libuv.Strerror((libuv.Errno(res))))
		return
	}

	// Start listening for incoming connections
	libuv.Run(loop, libuv.RUN_DEFAULT)
}

func FreeWriteReq(req *libuv.Write) {
	wr := (*WriteReq)(c.Pointer(req))
	// Free the buffer base and the WriteReq itself.
	c.Free(c.Pointer(wr.Buf.Base))
	c.Free(c.Pointer(wr))
}

func AllocBuffer(handle *libuv.Handle, suggestedSize uintptr, buf *libuv.Buf) {
	// Allocate memory for the buffer based on the suggested size.
	buf.Base = (*c.Char)(c.Malloc(suggestedSize))
	buf.Len = suggestedSize
}

func EchoWrite(req *libuv.Write, status c.Int) {
	if status != 0 {
		c.Fprintf(c.Stderr, c.Str("Write error: %s\n"), libuv.Strerror((libuv.Errno(status))))
	}
	FreeWriteReq(req)
}

func EchoRead(client *libuv.Stream, nread c.Long, buf *libuv.Buf) {
	if nread > 0 {
		req := (*WriteReq)(c.Malloc(unsafe.Sizeof(WriteReq{})))
		if req == nil {
			c.Fprintf(c.Stderr, c.Str("Failed to allocate memory for write request\n"))
			c.Free(c.Pointer(buf.Base))
			return
		}
		// Initialize the buffer with the data read.
		req.Buf = libuv.InitBuf(buf.Base, c.Uint(nread))
		// Write the data back to the client.
		(&req.Req).Write(client, &req.Buf, 1, EchoWrite)
		return
	}
	if nread < 0 {
		// Handle read errors and EOF.
		if (libuv.Errno)(nread) != libuv.EOF {
			c.Fprintf(c.Stderr, c.Str("Read error: %s\n"), libuv.Strerror((libuv.Errno)(nread)))
		}
		(*libuv.Handle)(c.Pointer(client)).Close(nil)
	}
	// Free the buffer if it's no longer needed.
	if buf.Base != nil {
		c.Free(c.Pointer(buf.Base))
	}
}

func OnNewConnection(server *libuv.Stream, status c.Int) {
	if status < 0 {
		c.Fprintf(c.Stderr, c.Str("New connection error: %s\n"), libuv.Strerror(libuv.Errno(status)))
		return
	}

	// Allocate memory for a new client.
	client := (*libuv.Tcp)(c.Malloc(unsafe.Sizeof(libuv.Tcp{})))

	if client == nil {
		c.Fprintf(c.Stderr, c.Str("Failed to allocate memory for client\n"))
		return
	}

	// Initialize the client TCP handle.
	if libuv.InitTcp(libuv.DefaultLoop(), client) < 0 {
		c.Fprintf(c.Stderr, c.Str("Failed to initialize client\n"))
		c.Free(c.Pointer(client))
		return
	}

	// Accept the new connection and start reading data.
	if server.Accept((*libuv.Stream)(unsafe.Pointer(client))) == 0 {
		(*libuv.Stream)(unsafe.Pointer(client)).StartRead(AllocBuffer, EchoRead)
	} else {
		(*libuv.Handle)(c.Pointer(client)).Close(nil)
	}
}
