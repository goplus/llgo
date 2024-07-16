package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/fddef"
	"github.com/goplus/llgo/c/os"
	_select "github.com/goplus/llgo/c/select"
	"unsafe"
)

func main() {
	var readFds fddef.FdSet

	fddef.FdZero(&readFds)

	fddef.Fdset(0, &readFds)

	var tv _select.TimeVal
	tv.TvSec = 5
	tv.TvUSec = 0

	c.Printf(c.Str("Waiting for input on stdin...\n"))
	ret := _select.Select(1, &readFds, nil, nil, &tv)
	if ret == -1 {
		c.Perror(c.Str("select error"))
		c.Exit(1)
	} else if ret == 0 {
		c.Printf(c.Str("Timeout occurred! No data after 5 seconds.\n"))
	} else {
		if fddef.FdIsset(0, &readFds) != 0 {
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
