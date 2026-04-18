package gotest

import (
	"testing"
	"unsafe"
)

func TestStringEmptySuffixKeepsBase(t *testing.T) {
	const s = "hello"
	base := stringDataBase(s)

	for name, got := range map[string]string{
		"s[5:]":           s[5:],
		"s[len(s):]":      s[len(s):],
		"s[5:5]":          s[5:5],
		"s[1:][2:][2:]":   s[1:][2:][2:],
		"s[4:][1:]":       s[4:][1:],
		"s[4:][1:len(s)]": s[4:][1:len(s[4:])],
	} {
		gotBase := stringDataBase(got)
		if gotBase-base >= uintptr(len(s)) {
			t.Fatalf("%s data base = %#x, want within original string [%#x, %#x)", name, gotBase, base, base+uintptr(len(s)))
		}
	}
}

func stringDataBase(s string) uintptr {
	return *(*uintptr)(unsafe.Pointer(&s))
}
