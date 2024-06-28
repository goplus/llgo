package runtime

import (
	"unsafe"
)

func ptrequal(p, q unsafe.Pointer) bool {
	return p == q
}
func memequal0(p, q unsafe.Pointer) bool {
	return true
}
func memequal8(p, q unsafe.Pointer) bool {
	return *(*int8)(p) == *(*int8)(q)
}
func memequal16(p, q unsafe.Pointer) bool {
	return *(*int16)(p) == *(*int16)(q)
}
func memequal32(p, q unsafe.Pointer) bool {
	return *(*int32)(p) == *(*int32)(q)
}
func memequal64(p, q unsafe.Pointer) bool {
	return *(*int64)(p) == *(*int64)(q)
}
func memequal128(p, q unsafe.Pointer) bool {
	return *(*[2]int64)(p) == *(*[2]int64)(q)
}
func f32equal(p, q unsafe.Pointer) bool {
	return *(*float32)(p) == *(*float32)(q)
}
func f64equal(p, q unsafe.Pointer) bool {
	return *(*float64)(p) == *(*float64)(q)
}
func c64equal(p, q unsafe.Pointer) bool {
	return *(*complex64)(p) == *(*complex64)(q)
}
func c128equal(p, q unsafe.Pointer) bool {
	return *(*complex128)(p) == *(*complex128)(q)
}
func strequal(p, q unsafe.Pointer) bool {
	return *(*string)(p) == *(*string)(q)
}
func interequal(p, q unsafe.Pointer) bool {
	x := *(*iface)(p)
	y := *(*iface)(q)
	return x.tab == y.tab && ifaceeq(x.tab, x.data, y.data)
}
func nilinterequal(p, q unsafe.Pointer) bool {
	x := *(*eface)(p)
	y := *(*eface)(q)
	return x._type == y._type && efaceeq(x._type, x.data, y.data)
}
func efaceeq(t *_type, x, y unsafe.Pointer) bool {
	if t == nil {
		return true
	}
	eq := t.Equal
	if eq == nil {
		panic(errorString("comparing uncomparable type " + t.Str_).Error())
	}
	if isDirectIface(t) {
		// Direct interface types are ptr, chan, map, func, and single-element structs/arrays thereof.
		// Maps and funcs are not comparable, so they can't reach here.
		// Ptrs, chans, and single-element items can be compared directly using ==.
		return x == y
	}
	return eq(x, y)
}
func ifaceeq(tab *itab, x, y unsafe.Pointer) bool {
	if tab == nil {
		return true
	}
	t := tab._type
	eq := t.Equal
	if eq == nil {
		panic(errorString("comparing uncomparable type " + t.Str_).Error())
	}
	if isDirectIface(t) {
		// See comment in efaceeq.
		return x == y
	}
	return eq(x, y)
}
