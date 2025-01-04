package main

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/net"
	"github.com/goplus/llgo/c/os"
)

func main() {
	sockfd := net.Socket(net.AF_INET, net.SOCK_STREAM, 0)
	msg := c.Str("Hello, World!")
	defer os.Close(sockfd)

	server := net.GetHostByName(c.Str("localhost"))
	if server == nil {
		c.Perror(c.Str("hostname get error"))
		return
	}

	servAddr := &net.SockaddrIn{}
	servAddr.Family = net.AF_INET
	servAddr.Port = net.Htons(uint16(1234))
	c.Memcpy(unsafe.Pointer(&servAddr.Addr.Addr), unsafe.Pointer(*server.AddrList), uintptr(server.Length))

	if res := net.Connect(sockfd, (*net.SockAddr)(unsafe.Pointer(servAddr)), c.Uint(16)); res < 0 {
		c.Perror(c.Str("connect error"))
		return
	}
	os.Write(sockfd, unsafe.Pointer(msg), c.Strlen(msg))
}
