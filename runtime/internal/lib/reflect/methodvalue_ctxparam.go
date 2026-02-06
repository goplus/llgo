//go:build !llgo_pass_ctx_by_reg
// +build !llgo_pass_ctx_by_reg

package reflect

import "unsafe"

// makeMethodValue converts v from the rcvr+method index representation
// of a method value into a true func value (closure struct {fn, env}).
//
// In ctx-param mode, the closure env is passed as the first explicit argument,
// so we can reuse the method entry point directly: env is the receiver word.
func makeMethodValue(op string, v Value) Value {
	if v.flag&flagMethod == 0 {
		panic("reflect: internal error: invalid use of makeMethodValue")
	}

	// Ignoring the flagMethod bit, v describes the receiver, not the method type.
	fl := v.flag & (flagRO | flagAddr | flagIndir)
	fl |= flag(v.typ().Kind())
	rcvr := Value{v.typ(), v.ptr, fl}

	// v.Type returns the actual type of the method value.
	_, _, fn := methodReceiver(op, rcvr, int(v.flag)>>flagMethodShift)
	var ptr unsafe.Pointer
	storeRcvr(v, unsafe.Pointer(&ptr))

	fv := &struct {
		fn  unsafe.Pointer
		env unsafe.Pointer
	}{fn, ptr}

	ftyp := (*funcType)(unsafe.Pointer(v.Type().(*rtype)))
	typ := closureOf(ftyp)

	// Cause panic if method is not appropriate.
	// The panic would still happen during the call if we omit this,
	// but we want Interface() and other operations to fail early.
	return Value{typ, unsafe.Pointer(fv), v.flag&flagRO | flagIndir | flag(Func)}
}
