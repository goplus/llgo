//go:build llgo_pass_ctx_by_reg
// +build llgo_pass_ctx_by_reg

package runtime

import "unsafe"

// typehashFromCtx is a wrapper for typehash that reads the type from ctx register.
// Used as closure for map hash functions.
func typehashFromCtx(p unsafe.Pointer, h uintptr) uintptr {
	t := (*_type)(getClosurePtr())
	return typehash(t, p, h)
}

//go:linkname getClosurePtr llgo.getClosurePtr
func getClosurePtr() unsafe.Pointer

func structequal(p, q unsafe.Pointer) bool {
	x := (*structtype)(getClosurePtr())
	for _, ft := range x.Fields {
		pi := add(p, ft.Offset)
		qi := add(q, ft.Offset)
		if !ft.Typ.Equal(pi, qi) {
			return false
		}
	}
	return true
}

func arrayequal(p, q unsafe.Pointer) bool {
	x := (*arraytype)(getClosurePtr())
	elem := x.Elem
	for i := uintptr(0); i < x.Len; i++ {
		pi := add(p, i*elem.Size_)
		qi := add(q, i*elem.Size_)
		if !elem.Equal(pi, qi) {
			return false
		}
	}
	return true
}
