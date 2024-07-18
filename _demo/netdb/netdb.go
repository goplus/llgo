package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/net"
)

func main() {
	var hints net.AddrInfo
	hints.AiFamily = net.AF_UNSPEC
	hints.AiSockType = net.SOCK_STREAM

	host := "httpbin.org"
	port := "80"

	var result *net.AddrInfo
	c.Printf(c.Str("%d\n"), net.Getaddrinfo(c.Str(host), c.Str(port), &hints, &result))

	c.Printf(c.Str("%d\n"), net.Freeaddrinfo(result))
}
