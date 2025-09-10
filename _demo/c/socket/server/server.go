package main

import (
	"unsafe"

	"github.com/goplus/lib/c"
	"github.com/goplus/lib/c/net"
	"github.com/goplus/lib/c/os"
)

func main() {
	var buffer [256]c.Char

	sockfd := net.Socket(net.AF_INET, net.SOCK_STREAM, 0)
	defer os.Close(sockfd)

	servAddr := &net.SockaddrIn{
		Family: net.AF_INET,
		Port:   net.Htons(uint16(1234)),
		Addr:   net.InAddr{Addr: 0x00000000},
		Zero:   [8]c.Char{0, 0, 0, 0, 0, 0, 0, 0},
	}
	if res := net.Bind(sockfd, servAddr, c.Uint(unsafe.Sizeof(*servAddr))); res < 0 {
		c.Perror(c.Str("bind error"))
		return
	}

	if net.Listen(sockfd, 5) < 0 {
		c.Printf(c.Str("listen error"))
		return
	}
	c.Printf(c.Str("Listening on port 1234...\n"))

	cliAddr, clilen := &net.SockaddrIn{}, c.Uint(unsafe.Sizeof(servAddr))

	newsockfd := net.Accept(sockfd, cliAddr, &clilen)
	defer os.Close(newsockfd)
	c.Printf(c.Str("Connection accepted."))

	os.Read(newsockfd, unsafe.Pointer(unsafe.SliceData(buffer[:])), 256)
	c.Printf(c.Str("Received: %s"), &buffer[0])

}
