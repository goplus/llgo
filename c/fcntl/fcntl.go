package fcntl

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

// #include <fdntl.h>

const (
	LLGoPackage = "decl"
)

const (
	/* get file status flags */
	F_GETFL = 3
	/* set file status flags */
	F_SETFL = 4

	/* open for reading only */
	O_RDONLY = 0x0000
	/* open for writing only */
	O_WRONLY = 0x0001
	/* open for reading and writing */
	O_RDWR = 0x0002
	/* mask for above modes */
	O_ACCMODE = 0x0003

	/* no delay */
	O_NONBLOCK = 0x00000004
	/* create if nonexistant */
	O_CREAT = 0x00000200
	/* truncate to zero length */
	O_TRUNC = 0x00000400
)

//go:linkname FcNtl C.fcntl
func FcNtl(a c.Int, b c.Int, vars ...any) c.Int

//go:linkname Open C.open
func Open(path *c.Char, op c.Int, vars ...any) c.Int
