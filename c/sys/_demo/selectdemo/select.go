package main

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/os"
	"github.com/goplus/llgo/c/sys"
)

func main() {
	var readFds sys.FdSet
	sys.FD_ZERO(&readFds)
	sys.FD_SET(0, &readFds)

	var tv sys.Timeval
	tv.Sec = 5
	tv.Usec = 0

	c.Printf(c.Str("Waiting for input on stdin...\n"))
	ret := sys.Select(1, &readFds, nil, nil, &tv)
	if ret == -1 {
		c.Perror(c.Str("select error"))
		c.Exit(1)
	} else if ret == 0 {
		c.Printf(c.Str("Timeout occurred! No data after 5 seconds.\n"))
	} else {
		if sys.FD_ISSET(0, &readFds) != 0 {
			var buffer [100]c.Char
			n := os.Read(0, c.Pointer(&buffer[:][0]), unsafe.Sizeof(buffer)-1)
			if n == -1 {
				c.Perror(c.Str("read error"))
				c.Exit(1)
			} else if n == 0 {
				c.Printf(c.Str("End of file\n"))
			} else {
				buffer[n] = c.Char(0)
				c.Printf(c.Str("Read %ld bytes: %s\n"), n, &buffer[0])
			}
		}
	}
}
