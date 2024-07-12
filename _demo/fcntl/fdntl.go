package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/fcntl"
	"github.com/goplus/llgo/c/os"
	"unsafe"
)

func main() {

	filename := c.Str("testfile.txt")
	data := c.Str("Hello, fdntl!")

	var buffer [20]c.Char

	// Open a file, O_CREAT|O_WRONLY|O_TRUNC means create, write only, or clear the file
	fd := fcntl.Open(filename, fcntl.O_CREAT|fcntl.O_WRONLY|fcntl.O_TRUNC, 0644)
	if fd == -1 {
		c.Printf(c.Str("open error\n"))
		return
	}

	// Writing data to a file
	bytesWritten := os.Write(fd, c.Pointer(data), c.Strlen(data))
	if bytesWritten == -1 {
		c.Printf(c.Str("write error\n"))
		os.Close(fd)
		return
	}
	c.Printf(c.Str("Written %ld bytes to %s\n"), bytesWritten, filename)

	// Get file status flags
	flags := fcntl.FcNtl(fd, fcntl.F_GETFL)
	if flags == -1 {
		c.Printf(c.Str("fcntl error\n"))
		os.Close(fd)
		return
	}
	c.Printf(c.Str("File flags: %d\n"), flags)

	// Set the file status flag to non-blocking mode
	if fcntl.FcNtl(fd, fcntl.F_SETFL, flags|fcntl.O_NONBLOCK) == -1 {
		c.Printf(c.Str("fcntl error\n"))
		os.Close(fd)
		return
	}
	c.Printf(c.Str("set file status successfully\n"))

	c.Printf(c.Str("111"))
	// Close file
	os.Close(fd)

	// Reopen the file, O_RDONLY means read-only
	fd = fcntl.Open(filename, fcntl.O_RDONLY)
	if fd == -1 {
		c.Printf(c.Str("open error\n"))
		return
	}

	// Reading data from a file
	// &buffer[:][0]
	// unsafe.SliceData(buffer[:])
	bytesRead := os.Read(fd, c.Pointer(unsafe.SliceData(buffer[:])), unsafe.Sizeof(buffer)-1)
	if bytesRead == -1 {
		c.Printf(c.Str("read error\n"))
		os.Close(fd)
		return
	}

	// Ensure that the buffer is null-terminated
	buffer[bytesRead] = c.Char(0)
	c.Printf(c.Str("Read %ld bytes: %s\n"), bytesRead, buffer)

	// Close file
	os.Close(fd)
}
