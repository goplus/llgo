package inih

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

const (
	LLGoPackage = "link: $(pkg-config --libs inih inihReader); -linih -linihReader -lINIReader"
)

//go:linkname Parse C.ini_parse
func Parse(filename *c.Char, handler func(user c.Pointer, section *c.Char, name *c.Char, value *c.Char) c.Int, user c.Pointer) c.Int

//go:linkname ParseFile C.ini_parse_file
func ParseFile(file c.FilePtr, handler func(user c.Pointer, section *c.Char, name *c.Char, value *c.Char) c.Int, user c.Pointer) c.Int

//go:linkname ParseString C.ini_parse_string
func ParseString(str *c.Char, handler func(user c.Pointer, section *c.Char, name *c.Char, value *c.Char) c.Int, user c.Pointer) c.Int
