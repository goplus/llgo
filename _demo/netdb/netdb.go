package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/netdb"
	"github.com/goplus/llgo/c/socket"
)

func main() {
	var hints netdb.AddrInfo
	hints.AiFamily = socket.AF_UNSPEC
	hints.AiSockType = socket.SOCK_STREAM

	host := "httpbin.org"
	port := "80"

	var result *netdb.AddrInfo
	c.Printf(c.Str("%d\n"), netdb.Getaddrinfo(c.Str(host), c.Str(port), &hints, &result))

	c.Printf(c.Str("%d\n"), netdb.Freeaddrinfo(result))
}
