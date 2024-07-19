package main

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/net"
	"github.com/goplus/llgo/c/os"
	"github.com/goplus/llgo/c/sys"
)

const (
	SERVER_IP   = "110.242.68.66" // Get the IP address by ping baidu.com
	SERVER_PORT = 80
	BUFFER_SIZE = 4096 * 1024
)

func main() {
	var server net.SockaddrIn

	sendBuf := c.Str("GET / HTTP/1.1\r\nHost: baidu.com\r\n\r\n")
	var recvBuf [BUFFER_SIZE]c.Char
	var bytes_sent, bytes_received c.Int

	// create net
	sock := net.Socket(net.AF_INET, net.SOCK_STREAM, 0)
	if sock < 0 {
		c.Perror(c.Str("Socket creation failed"))
		return
	}

	// set server addr
	c.Memset(c.Pointer(&server), 0, unsafe.Sizeof(server))
	server.Family = net.AF_INET
	server.Port = net.Htons(SERVER_PORT)
	server.Addr.Addr = net.InetAddr(c.Str(SERVER_IP))

	// connect to server
	if net.Connect(sock, (*net.SockAddr)(c.Pointer(&server)), c.Uint(unsafe.Sizeof(server))) < 0 {
		c.Perror(c.Str("Connect failed"))
		return
	}

	var writefds, readfds sys.FdSet
	var timeout sys.Timeval

	//  Monitor socket writes
	sys.FD_ZERO(&writefds)
	sys.FD_SET(sock, &writefds)
	timeout.Sec = 10
	timeout.Usec = 0

	// Use select to monitor the readiness of writes
	if sys.Select(sock+1, nil, &writefds, nil, &timeout) > 0 {
		if sys.FD_ISSET(sock, &writefds) != 0 {
			bytes_sent = c.Int(net.Send(sock, c.Pointer(sendBuf), c.Strlen(sendBuf), 0))
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
	sys.FD_ZERO(&readfds)
	sys.FD_SET(sock, &readfds)

	// Use select to monitor the readiness of the read operation
	if sys.Select(sock+1, &readfds, nil, nil, &timeout) > 0 {
		if sys.FD_ISSET(sock, &writefds) != -1 {
			bytes_received = c.Int(net.Recv(sock, c.Pointer(&recvBuf[:][0]), BUFFER_SIZE-1, 0))
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
