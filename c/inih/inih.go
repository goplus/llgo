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

//go:linkname IniParse C.ini_parse
func IniParse(filename *c.Char, handler func(user c.Pointer, section *c.Char, name *c.Char, value *c.Char) c.Int, user *c.Pointer) c.Int

//go:linkname IniParseFile C.ini_parse_file
func IniParseFile(file c.FilePtr, handler func(user c.Pointer, section *c.Char, name *c.Char, value *c.Char) c.Int, user *c.Pointer) c.Int

//go:linkname IniParseStream C.ini_parse_stream
func IniParseStream(reader func(str *c.Char, num c.Int, stream c.Pointer) *c.Char, stream c.Pointer, handler func(user c.Pointer, section *c.Char, name *c.Char, value *c.Char) c.Int, user *c.Pointer) c.Int

//go:linkname IniParseString C.ini_parse_string
func IniParseString(str *c.Char, handler func(user c.Pointer, section *c.Char, name *c.Char, value *c.Char) c.Int, user *c.Pointer) c.Int
