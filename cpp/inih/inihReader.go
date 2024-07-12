package inih

import (
	"unsafe"

	"github.com/goplus/llgo/c"
)

// llgo:type C
type Reader struct {
	Unused [24]byte
}

type StdString struct {
	buf [24]byte
}

type stringHead struct {
	data unsafe.Pointer
	size int
}

type __long struct {
	__cap_  int
	__size_ int
	__data_ unsafe.Pointer
}

func Str(s string) *StdString {
	var r StdString
	r.init(c.GoStringData(s), c.Int(len(s)))
	return &r
}

func (r *StdString) String() string {
	if r.buf[0]&1 == 0 {
		return c.GoString((*c.Char)(unsafe.Pointer(&r.buf[1])))
	} else {
		v := *(*__long)(unsafe.Pointer(&r.buf[0]))
		return *(*string)(unsafe.Pointer(&stringHead{data: v.__data_, size: v.__size_}))
	}
}

// llgo:link (*StdString).init C._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm
func (*StdString) init(s *c.Char, size c.Int) {}

//go:linkname NewReader C._ZN9INIReaderC1EPKcm
func NewReader(fileName *c.Char, size c.Ulong) Reader

//go:linkname NewReaderFile C._ZN9INIReaderC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
func NewReaderFile(fileName *StdString) Reader

// llgo:link (*Reader).ParseError C._ZNK9INIReader10ParseErrorEv
func (*Reader) ParseError() c.Int { return 0 }

// llgo:link (*Reader).GetInteger C._ZNK9INIReader10GetIntegerERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_l
func (*Reader) GetInteger(section *StdString, name *StdString, defaultValue c.Long) c.Long {
	return 0
}

// llgo:link (*Reader).GetBoolean C._ZNK9INIReader10GetBooleanERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_b
func (*Reader) GetBoolean(section *StdString, name *StdString, defaultValue bool) bool {
	return false
}

// llgo:link (*Reader).GetString C._ZNK9INIReader9GetStringERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_S8_
func (*Reader) GetString(section *StdString, name *StdString, defaultValue *StdString) *StdString {
	return &StdString{}
}
