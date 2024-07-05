package hashmap

import (
	"github.com/goplus/llgo/c"
	_ "unsafe"
)

const (
	LLGoPackage = "link: $(pkg-config --libs hashmap_ffi_c); -lhashmap_ffi_c"
)

type HashMap_CString__CString struct {
	Unused [8]byte
}

//go:linkname New C.hashmap_new
func New() *HashMap_CString__CString

//llgo:link (*HashMap_CString__CString).Insert C.hashmap_insert
func (m *HashMap_CString__CString) Insert(key *c.Char, value *c.Char) {
}

//llgo:link (*HashMap_CString__CString).Get C.hashmap_get
func (m *HashMap_CString__CString) Get(key *c.Char) *c.Char {
	return nil
}

//llgo:link (*HashMap_CString__CString).Free C.hashmap_free
func (m *HashMap_CString__CString) Free() {
}
