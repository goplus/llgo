package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/libuv"
	"github.com/goplus/llgo/c/net"
	"unsafe"
)

var DEFAULT_PORT c.Int = 8080
var DEFAULT_BACKLOG c.Int = 128

var loop *libuv.Loop

type WriteReq struct {
	req libuv.Write
	buf libuv.Buf
}

func FreeWriteReq(req *libuv.Write) {
	wr := (*WriteReq)(c.Pointer(req))
	c.Free(c.Pointer(wr.buf.Base))
	c.Free(c.Pointer(wr))
}

func AllocBuffer(handle *libuv.Handle, suggestedSize uintptr, buf *libuv.Buf) {
	buf.Base = (*c.Char)(c.Malloc(suggestedSize))
	buf.Len = suggestedSize
}

func EchoWrite(req *libuv.Write, status c.Int) {
	if status != 0 {
		c.Fprintf(c.Stderr, c.Str("write error: %s\n"), libuv.Strerror(status))
	}
	defer FreeWriteReq(req)
}

func EchoRead(client *libuv.Stream, nread c.Long, buf *libuv.Buf) {
	if nread > 0 {
		req := (*WriteReq)(c.Malloc(unsafe.Sizeof(WriteReq{})))
		if req == nil {
			c.Fprintf(c.Stderr, c.Str("Failed to allocate memory for write request\n"))
			defer c.Free(c.Pointer(buf.Base))
			return
		}
		req.buf = libuv.InitBuf(buf.Base, c.Uint(nread))
		(*libuv.Write)(c.Pointer(req)).Write(client, []libuv.Buf{req.buf}, 1, EchoWrite)
		return
	}
	if nread < 0 {
		if (libuv.Errno)(nread) != libuv.EOF {
			c.Fprintf(c.Stderr, c.Str("Read error: %s\n"), libuv.Strerror(c.Int(nread)))
		}
		(*libuv.Handle)(client).Close(nil)
	}
	if buf.Base != nil {
		c.Free(c.Pointer(buf.Base))
	}
}

func OnNewConnection(server *libuv.Stream, status c.Int) {
	if status < 0 {
		c.Fprintf(c.Stderr, c.Str("New connection error: %s\n"), libuv.Strerror(status))
		return
	}

	client := (*libuv.Tcp)(c.Malloc(unsafe.Sizeof(libuv.Tcp{})))

	if client == nil {
		c.Fprintf(c.Stderr, c.Str("Failed to allocate memory for client\n"))
		return
	}

	if libuv.InitTcp(loop, client) < 0 {
		c.Fprintf(c.Stderr, c.Str("Failed to initialize client\n"))
		c.Free(c.Pointer(client))
		return
	}

	if server.Accept((*libuv.Stream)(client)) == 0 {
		(*libuv.Stream)(client).StartRead(AllocBuffer, EchoRead)
	} else {
		(*libuv.Handle)(client).Close(nil)
	}
}

func main() {
	// Initialize the default event loop
	loop = libuv.DefaultLoop()

	// Initialize a TCP server
	var server libuv.Tcp
	libuv.InitTcp(loop, &server)

	// Set up the address to bind the server to
	var addr net.SockaddrIn
	libuv.Ip4Addr(c.Str("0.0.0.0"), DEFAULT_PORT, &addr)

	// Bind the server to the specified address and port
	(&server).Bind((*net.SockAddr)(c.Pointer(&addr)), 0)
	res := (*libuv.Stream)(&server).Listen(DEFAULT_BACKLOG, OnNewConnection)
	if res != 0 {
		c.Fprintf(c.Stderr, c.Str("Listen error: %s\n"), libuv.Strerror(res))
		return
	}

	// Start listening for incoming connections
	loop.Run(libuv.RUN_DEFAULT)
}
