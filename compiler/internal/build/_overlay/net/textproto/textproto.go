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

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/net"
	"github.com/goplus/llgo/c/os"
)

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
	socketFd c.Int
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
		result := os.Read(conn.socketFd, unsafe.Pointer(&p[n:][0]), uintptr(len(p)-n))
		if result < 0 {
			if os.Errno() == c.Int(syscall.EINTR) {
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
		result := os.Write(conn.socketFd, unsafe.Pointer(&p[n:][0]), uintptr(len(p)-n))
		if result < 0 {
			if os.Errno() == c.Int(syscall.EINTR) {
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
	result := os.Close(conn.socketFd)
	if result < 0 {
		return errors.New(c.GoString(c.Strerror(os.Errno())))
	}
	return nil
}

func dialNetWork(network, addr string) (*cConn, error) {
	host, port, err := splitAddr(addr)
	if err != nil {
		return nil, err
	}
	var hints net.AddrInfo
	var res *net.AddrInfo
	c.Memset(unsafe.Pointer(&hints), 0, unsafe.Sizeof(hints))
	hints.Family = net.AF_UNSPEC
	hints.SockType = net.SOCK_STREAM
	status := net.Getaddrinfo(c.AllocaCStr(host), c.AllocaCStr(port), &hints, &res)
	if status != 0 {
		return nil, errors.New("getaddrinfo error")
	}

	socketFd := net.Socket(res.Family, res.SockType, res.Protocol)
	if socketFd == -1 {
		net.Freeaddrinfo(res)
		return nil, errors.New("socket error")
	}

	if net.Connect(socketFd, res.Addr, res.AddrLen) == -1 {
		os.Close(socketFd)
		net.Freeaddrinfo(res)
		return nil, errors.New("connect error")
	}

	net.Freeaddrinfo(res)
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
