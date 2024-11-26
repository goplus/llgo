package cjson

import (
	"unsafe"

	"github.com/goplus/llgo/c"
)

type CJSON struct {
	Next        *CJSON
	Prev        *CJSON
	Child       *CJSON
	Type        c.Int
	Valuestring *int8
	Valueint    c.Int
	Valuedouble float64
	String      *int8
}

type CJSONHooks struct {
	MallocFn func(c.SizeT) unsafe.Pointer
	FreeFn   func(unsafe.Pointer)
}
type CJSONBool c.Int
