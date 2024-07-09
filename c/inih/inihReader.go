package inih

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

// llgo:type C
type Reader struct {
	Unused [0]byte
}

//go:linkname NewReader C.new_ini_reader
func NewReader(fileName *c.Char) *Reader

//go:linkname DeleteReader C.delete_ini_reader
func DeleteReader(r *Reader)

// llgo:link (*Reader).GetInteger C.ini_get_integer
func (*Reader) GetInteger(section *c.Char, name *c.Char, defaultValue c.Long) c.Long {
	return 0
}
