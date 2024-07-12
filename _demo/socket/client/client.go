package main

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/os"
	"github.com/goplus/llgo/c/socket"
)

func main() {
	sockfd := socket.Socket(socket.AF_INET, socket.SOCK_STREAM, 0)
	msg := c.Str("Hello, World!")
	defer os.Close(sockfd)

	server := socket.GetHostByName(c.Str("localhost"))
	if server == nil {
		c.Perror(c.Str("hostname get error"))
		return
	}

	servAddr := &socket.SockaddrIn{}
	servAddr.Family = socket.AF_INET
	servAddr.Port = socket.Htons(uint16(1234))
	c.Memcpy(unsafe.Pointer(&servAddr.Addr.Addr), unsafe.Pointer(*server.AddrList), uintptr(server.Length))

	if res := socket.Connect(sockfd, (*socket.SockAddr)(unsafe.Pointer(servAddr)), c.Uint(16)); res < 0 {
		c.Perror(c.Str("connect error"))
		return
	}
	os.Write(sockfd, unsafe.Pointer(msg), c.Strlen(msg))
}
