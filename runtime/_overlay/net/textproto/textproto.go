// Copyright 2010 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Package textproto implements generic support for text-based request/response
// protocols in the style of HTTP, NNTP, and SMTP.
//
// The package provides:
//
// Error, which represents a numeric error response from
// a server.
//
// Pipeline, to manage pipelined requests and responses
// in a client.
//
// Reader, to read numeric response code lines,
// key: value headers, lines wrapped with leading spaces
// on continuation lines, and whole text blocks ending
// with a dot on a line by itself.
//
// Writer, to write dot-encoded text blocks.
//
// Conn, a convenient packaging of Reader, Writer, and Pipeline for use
// with a single network connection.
package textproto

import (
	"bufio"
	"errors"
	"fmt"
	"io"
	"io/fs"
	"strings"
	"syscall"
	"unsafe"
)

const (
	AF_UNSPEC          = 0       // unspecified
	AF_UNIX            = 1       // local to host (pipes)
	AF_LOCAL           = AF_UNIX // backward compatibility
	AF_INET            = 2       // internetwork: UDP, TCP, etc.
	AF_IMPLINK         = 3       // arpanet imp addresses
	AF_PUP             = 4       // pup protocols: e.g. BSP
	AF_CHAOS           = 5       // mit CHAOS protocols
	AF_NS              = 6       // XEROX NS protocols
	AF_ISO             = 7       // ISO protocols
	AF_OSI             = AF_ISO
	AF_ECMA            = 8       // European computer manufacturers
	AF_DATAKIT         = 9       // datakit protocols
	AF_CCITT           = 10      // CCITT protocols, X.25 etc
	AF_SNA             = 11      // IBM SNA
	AF_DECnet          = 12      // DECnet
	AF_DLI             = 13      // DEC Direct data link interface
	AF_LAT             = 14      // LAT
	AF_HYLINK          = 15      // NSC Hyperchannel
	AF_APPLETALK       = 16      // Apple Talk
	AF_ROUTE           = 17      // Internal Routing Protocol
	AF_LINK            = 18      // Link layer interface
	pseudo_AF_XTP      = 19      // eXpress Transfer Protocol (no AF)
	AF_COIP            = 20      // connection-oriented IP, aka ST II
	AF_CNT             = 21      // Computer Network Technology
	pseudo_AF_RTIP     = 22      // Help Identify RTIP packets
	AF_IPX             = 23      // Novell Internet Protocol
	AF_SIP             = 24      // Simple Internet Protocol
	pseudo_AF_PIP      = 25      // Help Identify PIP packets
	AF_NDRV            = 27      // Network Driver 'raw' access
	AF_ISDN            = 28      // Integrated Services Digital Network
	AF_E164            = AF_ISDN // CCITT E.164 recommendation
	pseudo_AF_KEY      = 29      // Internal key-management function
	AF_INET6           = 30      // IPv6
	AF_NATM            = 31      // native ATM access
	AF_SYSTEM          = 32      // Kernel event messages
	AF_NETBIOS         = 33      // NetBIOS
	AF_PPP             = 34      // PPP communication protocol
	pseudo_AF_HDRCMPLT = 35      // Used by BPF to not rewrite headers in interface output routine
	AF_RESERVED_36     = 36      // Reserved for internal usage
	AF_IEEE80211       = 37      // IEEE 802.11 protocol
	AF_UTUN            = 38
	AF_VSOCK           = 40 // VM Sockets
	AF_MAX             = 41
)

const (
	SOCK_STREAM    = 1 // stream socket
	SOCK_DGRAM     = 2 // datagram socket
	SOCK_RAW       = 3 // raw-protocol interface
	SOCK_RDM       = 4 // reliably-delivered message
	SOCK_SEQPACKET = 5 // sequenced packet stream
)

type SockAddr struct {
	Len    uint8
	Family uint8
	Data   [14]uint8
}

type AddrInfo struct {
	Flags     int32
	Family    int32
	SockType  int32
	Protocol  int32
	AddrLen   uint32
	CanOnName *uint8
	Addr      *SockAddr
	Next      *AddrInfo
}

//go:linkname Getaddrinfo C.getaddrinfo
func Getaddrinfo(host *uint8, port *uint8, addrInfo *AddrInfo, result **AddrInfo) int32

//go:linkname Freeaddrinfo C.freeaddrinfo
func Freeaddrinfo(addrInfo *AddrInfo) int32

//go:linkname GoString llgo.string
func GoString(cstr *uint8, __llgo_va_list /* n */ ...any) string

//go:linkname AllocaCStr llgo.allocaCStr
func AllocaCStr(s string) *uint8

//go:linkname Memset C.memset
func Memset(s unsafe.Pointer, c int32, n uintptr) unsafe.Pointer

//go:linkname Read C.read
func Read(fd int32, buf unsafe.Pointer, count uintptr) int

//go:linkname Write C.write
func Write(fd int32, buf unsafe.Pointer, count uintptr) int

//go:linkname Close C.close
func Close(fd int32) int32

//go:linkname Strerror strerror
func Strerror(errnum int32) *uint8

//go:linkname Errno C.cliteErrno
func Errno() int32

//go:linkname Socket C.socket
func Socket(domain int32, typ int32, protocol int32) int32

//go:linkname Connect C.connect
func Connect(sockfd int32, addr *SockAddr, addrlen uint32) int32

// -----------------------------------------------------------------------------

// An Error represents a numeric error response from a server.
type Error struct {
	Code int
	Msg  string
}

func (e *Error) Error() string {
	return fmt.Sprintf("%03d %s", e.Code, e.Msg)
}

// A ProtocolError describes a protocol violation such
// as an invalid response or a hung-up connection.
type ProtocolError string

func (p ProtocolError) Error() string {
	return string(p)
}

// A Conn represents a textual network protocol connection.
// It consists of a Reader and Writer to manage I/O
// and a Pipeline to sequence concurrent requests on the connection.
// These embedded types carry methods with them;
// see the documentation of those types for details.
type Conn struct {
	Reader
	Writer
	Pipeline
	conn io.ReadWriteCloser
}

// NewConn returns a new Conn using conn for I/O.
func NewConn(conn io.ReadWriteCloser) *Conn {
	return &Conn{
		Reader: Reader{R: bufio.NewReader(conn)},
		Writer: Writer{W: bufio.NewWriter(conn)},
		conn:   conn,
	}
}

// Close closes the connection.
func (c *Conn) Close() error {
	return c.conn.Close()
}

// Dial connects to the given address on the given network using net.Dial
// and then returns a new Conn for the connection.
func Dial(network, addr string) (*Conn, error) {
	cconn, err := dialNetWork(network, addr)
	if err != nil {
		return nil, err
	}
	return NewConn(cconn), nil
}

type cConn struct {
	socketFd int32
	closed   bool
}

func (conn *cConn) Read(p []byte) (n int, err error) {
	if conn == nil || conn.closed {
		return 0, fs.ErrClosed
	}
	if len(p) == 0 {
		return 0, nil
	}
	for n < len(p) {
		result := Read(conn.socketFd, unsafe.Pointer(&p[n:][0]), uintptr(len(p)-n))
		if result < 0 {
			if Errno() == int32(syscall.EINTR) {
				continue
			}
			return n, errors.New("read error")
		}
		if result == 0 {
			return n, io.EOF
		}
		n += result
	}
	return n, nil
}

func (conn *cConn) Write(p []byte) (n int, err error) {
	if conn == nil || conn.closed {
		return 0, fs.ErrClosed
	}
	for n < len(p) {
		result := Write(conn.socketFd, unsafe.Pointer(&p[n:][0]), uintptr(len(p)-n))
		if result < 0 {
			if Errno() == int32(syscall.EINTR) {
				continue
			}
			return n, errors.New("write error")
		}
		n += result
	}
	if n < len(p) {
		return n, io.ErrShortWrite
	}
	return n, nil
}

func (conn *cConn) Close() error {
	if conn == nil {
		return nil
	}
	if conn.closed {
		return fs.ErrClosed
	}
	conn.closed = true
	result := Close(conn.socketFd)
	if result < 0 {
		return errors.New(GoString(Strerror(Errno())))
	}
	return nil
}

func dialNetWork(network, addr string) (*cConn, error) {
	host, port, err := splitAddr(addr)
	if err != nil {
		return nil, err
	}
	var hints AddrInfo
	var res *AddrInfo
	Memset(unsafe.Pointer(&hints), 0, unsafe.Sizeof(hints))
	hints.Family = AF_UNSPEC
	hints.SockType = SOCK_STREAM
	status := Getaddrinfo(AllocaCStr(host), AllocaCStr(port), &hints, &res)
	if status != 0 {
		return nil, errors.New("getaddrinfo error")
	}

	socketFd := Socket(res.Family, res.SockType, res.Protocol)
	if socketFd == -1 {
		Freeaddrinfo(res)
		return nil, errors.New("socket error")
	}

	if Connect(socketFd, res.Addr, res.AddrLen) == -1 {
		Close(socketFd)
		Freeaddrinfo(res)
		return nil, errors.New("connect error")
	}

	Freeaddrinfo(res)
	return &cConn{
		socketFd: socketFd,
	}, nil
}

func splitAddr(addr string) (host, port string, err error) {
	// Handle IPv6 addresses
	if strings.HasPrefix(addr, "[") {
		closeBracket := strings.LastIndex(addr, "]")
		if closeBracket == -1 {
			return "", "", errors.New("invalid IPv6 address: missing closing bracket")
		}
		host = addr[1:closeBracket]
		if len(addr) > closeBracket+1 {
			if addr[closeBracket+1] != ':' {
				return "", "", errors.New("invalid address: colon missing after IPv6 address")
			}
			port = addr[closeBracket+2:]
		}
	} else {
		// Handle IPv4 addresses or domain names
		parts := strings.Split(addr, ":")
		if len(parts) > 2 {
			return "", "", errors.New("invalid address: too many colons")
		}
		host = parts[0]
		if len(parts) == 2 {
			port = parts[1]
		}
	}

	if host == "" {
		return "", "", errors.New("invalid address: host is empty")
	}
	if port == "" {
		port = "80" // Default port is 80
	}

	return host, port, nil
}

// Cmd is a convenience method that sends a command after
// waiting its turn in the pipeline. The command text is the
// result of formatting format with args and appending \r\n.
// Cmd returns the id of the command, for use with StartResponse and EndResponse.
//
// For example, a client might run a HELP command that returns a dot-body
// by using:
//
//	id, err := c.Cmd("HELP")
//	if err != nil {
//		return nil, err
//	}
//
//	c.StartResponse(id)
//	defer c.EndResponse(id)
//
//	if _, _, err = c.ReadCodeLine(110); err != nil {
//		return nil, err
//	}
//	text, err := c.ReadDotBytes()
//	if err != nil {
//		return nil, err
//	}
//	return c.ReadCodeLine(250)
func (c *Conn) Cmd(format string, args ...any) (id uint, err error) {
	id = c.Next()
	c.StartRequest(id)
	err = c.PrintfLine(format, args...)
	c.EndRequest(id)
	if err != nil {
		return 0, err
	}
	return id, nil
}

// TrimString returns s without leading and trailing ASCII space.
func TrimString(s string) string {
	for len(s) > 0 && isASCIISpace(s[0]) {
		s = s[1:]
	}
	for len(s) > 0 && isASCIISpace(s[len(s)-1]) {
		s = s[:len(s)-1]
	}
	return s
}

// TrimBytes returns b without leading and trailing ASCII space.
func TrimBytes(b []byte) []byte {
	for len(b) > 0 && isASCIISpace(b[0]) {
		b = b[1:]
	}
	for len(b) > 0 && isASCIISpace(b[len(b)-1]) {
		b = b[:len(b)-1]
	}
	return b
}

func isASCIISpace(b byte) bool {
	return b == ' ' || b == '\t' || b == '\n' || b == '\r'
}

func isASCIILetter(b byte) bool {
	b |= 0x20 // make lower case
	return 'a' <= b && b <= 'z'
}
