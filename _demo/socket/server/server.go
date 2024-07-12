package main

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/os"
	"github.com/goplus/llgo/c/socket"
)

func main() {
	var buffer [256]c.Char

	sockfd := socket.Socket(socket.AF_INET, socket.SOCK_STREAM, 0)
	defer os.Close(sockfd)

	servAddr := &socket.SockaddrIn{
		Family: socket.AF_INET,
		Port:   socket.Htons(uint16(1234)),
		Addr:   socket.InAddr{Addr: 0x00000000},
		Zero:   [8]c.Char{0, 0, 0, 0, 0, 0, 0, 0},
	}
	if res := socket.Bind(sockfd, servAddr, c.Uint(unsafe.Sizeof(*servAddr))); res < 0 {
		c.Perror(c.Str("bind error"))
		return
	}

	if socket.Listen(sockfd, 5) < 0 {
		c.Printf(c.Str("listen error"))
		return
	}
	c.Printf(c.Str("Listening on port 1234...\n"))

	cliAddr, clilen := &socket.SockaddrIn{}, c.Uint(unsafe.Sizeof(servAddr))

	newsockfd := socket.Accept(sockfd, cliAddr, &clilen)
	defer os.Close(newsockfd)
	c.Printf(c.Str("Connection accepted."))

	os.Read(newsockfd, unsafe.Pointer(unsafe.SliceData(buffer[:])), 256)
	c.Printf(c.Str("Received: %s"), &buffer[0])

}
