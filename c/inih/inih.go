package inih

/*
#include <stdio.h>
#include <stdlib.h>
*/
import "C"

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

const (
	LLGoPackage = "link: $(pkg-config --libs inih); -linih"
)

//go:linkname Parse C.ini_parse
func Parse(filename *c.Char, handler func(user c.Pointer, section *c.Char, name *c.Char, value *c.Char) c.Int, user *c.Pointer) c.Int

//go:linkname ParseFile C.ini_parse_file
func ParseFile(file c.FilePtr, handler func(user c.Pointer, section *c.Char, name *c.Char, value *c.Char) c.Int, user *c.Pointer) c.Int

//go:linkname ParseStream C.ini_parse_stream
func ParseStream(reader func(str *c.Char, num c.Int, stream c.Pointer) *c.Char, stream c.Pointer, handler func(user c.Pointer, section *c.Char, name *c.Char, value *c.Char) c.Int, user *c.Pointer) c.Int

//go:linkname ParseString C.ini_parse_string
func ParseString(str *c.Char, handler func(user c.Pointer, section *c.Char, name *c.Char, value *c.Char) c.Int, user *c.Pointer) c.Int
