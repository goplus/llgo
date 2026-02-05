//go:build !llgo_pass_ctx_by_reg
// +build !llgo_pass_ctx_by_reg

package runtime

import "unsafe"

// typehashFromCtx is a wrapper for typehash that reads the type from ctx param.
// Used as closure for map hash functions.
func typehashFromCtx(ctx unsafe.Pointer, p unsafe.Pointer, h uintptr) uintptr {
	t := *(**_type)(ctx)
	return typehash(t, p, h)
}

func structequal(ctx, p, q unsafe.Pointer) bool {
	x := *(**structtype)(ctx)
	for _, ft := range x.Fields {
		pi := add(p, ft.Offset)
		qi := add(q, ft.Offset)
		if !ft.Typ.Equal(pi, qi) {
			return false
		}
	}
	return true
}

func arrayequal(ctx, p, q unsafe.Pointer) bool {
	x := *(**arraytype)(ctx)
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
