package netdb

import (
	"github.com/goplus/llgo/c/socket"
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

const (
	LLGoPackage = "decl"
)

type AddrInfo struct {
	AiFlags     c.Int
	AiFamily    c.Int
	AiSockType  c.Int
	AiProtocol  c.Int
	AiAddrLen   c.Uint
	AiCanOnName *c.Char
	AiAddr      *socket.SockAddr
	AiNext      *AddrInfo
}

//go:linkname Getaddrinfo C.getaddrinfo
func Getaddrinfo(host *c.Char, port *c.Char, addrInfo *AddrInfo, result **AddrInfo) c.Int

//go:linkname Freeaddrinfo C.freeaddrinfo
func Freeaddrinfo(addrInfo *AddrInfo) c.Int
