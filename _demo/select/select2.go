package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/fddef"
	"github.com/goplus/llgo/c/os"
	_select "github.com/goplus/llgo/c/select"
	"github.com/goplus/llgo/c/socket"
	"unsafe"
)

const (
	SERVER_IP   = "110.242.68.66"	// Get the IP address by ping baidu.com
	SERVER_PORT = 80
	BUFFER_SIZE = 4096 * 1024
)

func main() {
	var server socket.SockaddrIn

	sendBuf := c.Str("GET / HTTP/1.1\r\nHost: baidu.com\r\n\r\n")
	var recvBuf [BUFFER_SIZE]c.Char
	var bytes_sent, bytes_received c.Int

	// create socket
	sock := socket.Socket(socket.AF_INET, socket.SOCK_STREAM, 0)
	if sock < 0 {
		c.Perror(c.Str("Socket creation failed"))
		return
	}

	// set server addr
	c.Memset(c.Pointer(&server), 0, unsafe.Sizeof(server))
	server.Family = socket.AF_INET
	server.Port = socket.Htons(SERVER_PORT)
	server.Addr.Addr = socket.InetAddr(c.Str(SERVER_IP))

	// connect to server
	if socket.Connect(sock, (*socket.SockAddr)(c.Pointer(&server)), c.Uint(unsafe.Sizeof(server))) < 0 {
		c.Perror(c.Str("Connect failed"))
		return
	}

	var writefds, readfds fddef.FdSet
	var timeout _select.TimeVal

	//  Monitor socket writes
	fddef.FdZero(&writefds)
	fddef.Fdset(sock, &writefds)
	timeout.TvSec = 10
	timeout.TvUSec = 0
	// Use select to monitor the readiness of writes
	if _select.Select(sock+1, nil, &writefds, nil, &timeout) > 0 {
		if fddef.FdIsset(sock, &writefds) != 0 {
			bytes_sent = c.Int(socket.Send(sock, c.Pointer(sendBuf), c.Strlen(sendBuf), 0))
			if bytes_sent < 0 {
				c.Perror(c.Str("send failed"))
				return
			}
		}
	} else {
		c.Perror(c.Str("Select write error"))
		return
	}

	// Monitor socket reads
	fddef.FdZero(&readfds)
	fddef.Fdset(sock, &readfds)

	// Use select to monitor the readiness of the read operation
	if _select.Select(sock+1, &readfds, nil, nil, &timeout) > 0 {
		if fddef.FdIsset(sock, &writefds) != -1 {
			bytes_received = c.Int(socket.Recv(sock, c.Pointer(&recvBuf[:][0]), BUFFER_SIZE-1, 0))
			if bytes_received < 0 {
				c.Perror(c.Str("receive failed"))
				return
			}
			recvBuf[bytes_received] = c.Char(0)
			c.Printf(c.Str("Received:\n%s\n"), &recvBuf[0])
		}
	} else {
		c.Perror(c.Str("Select read error"))
		return
	}

	os.Close(sock)
}