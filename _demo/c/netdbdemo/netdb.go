package main

import (
	"github.com/goplus/lib/c"
	"github.com/goplus/lib/c/net"
)

func main() {
	var hints net.AddrInfo
	hints.Family = net.AF_UNSPEC
	hints.SockType = net.SOCK_STREAM

	host := "httpbin.org"
	port := "80"

	var result *net.AddrInfo
	c.Printf(c.Str("%d\n"), net.Getaddrinfo(c.Str(host), c.Str(port), &hints, &result))

	c.Printf(c.Str("%d\n"), net.Freeaddrinfo(result))
}
