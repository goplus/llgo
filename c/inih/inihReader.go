package inih

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

// llgo:type C
type IniReader struct {
	Unused [0]byte
}

//go:linkname NewIniReader C.new_ini_reader
func NewIniReader(fileName *c.Char) *IniReader

//go:linkname DeleteIniReader C.delete_ini_reader
func DeleteIniReader(reader *IniReader)

// llgo:link (*IniReader).GetInteger C.ini_get_integer
func (*IniReader) GetInteger(section *c.Char, name *c.Char, defaultValue c.Long) c.Long {
	return 0
}
