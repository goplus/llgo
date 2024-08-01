package internal

import "github.com/goplus/llgo/c"

type ERR_STRING_DATA struct {
	Error  c.Ulong
	String *c.Char
}
