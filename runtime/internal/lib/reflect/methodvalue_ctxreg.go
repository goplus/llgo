//go:build llgo_pass_ctx_by_reg
// +build llgo_pass_ctx_by_reg

package reflect

import (
	"unsafe"

	"github.com/goplus/llgo/runtime/abi"
	"github.com/goplus/llgo/runtime/internal/ffi"
)

type methodValueData struct {
	fn      unsafe.Pointer
	rcvr    unsafe.Pointer
	sigCall *ffi.Signature
	sigWrap *ffi.Signature // keepalive for libffi closure
	nin     int
}

func methodValueCallback(cif *ffi.Signature, ret unsafe.Pointer, args *unsafe.Pointer, userdata unsafe.Pointer) {
	_ = cif
	md := (*methodValueData)(userdata)
	callArgs := make([]unsafe.Pointer, md.nin+1)
	callArgs[0] = unsafe.Pointer(&md.rcvr)
	for i := 0; i < md.nin; i++ {
		callArgs[i+1] = ffi.Index(args, makeFuncArgIndex(i))
	}
	ffi.Call(md.sigCall, md.fn, ret, callArgs...)
}

// makeMethodValue converts v from the rcvr+method index representation
// of a method value into a true func value (closure struct {fn, env}).
//
// In ctx-reg mode, the closure env is not an explicit first argument, so we
// can't point directly at the method entry (which expects receiver word in arg0).
// Instead, create a libffi closure trampoline that injects the receiver word
// before calling the target method.
func makeMethodValue(op string, v Value) Value {
	if v.flag&flagMethod == 0 {
		panic("reflect: internal error: invalid use of makeMethodValue")
	}

	// Ignoring the flagMethod bit, v describes the receiver, not the method type.
	fl := v.flag & (flagRO | flagAddr | flagIndir)
	fl |= flag(v.typ().Kind())
	rcvr := Value{v.typ(), v.ptr, fl}

	methodIndex := int(v.flag) >> flagMethodShift
	rcvrtype, _, fn := methodReceiver(op, rcvr, methodIndex)

	var ptr unsafe.Pointer
	storeRcvr(v, unsafe.Pointer(&ptr))

	ftyp := (*funcType)(unsafe.Pointer(v.Type().(*rtype)))

	// Signature for calling the underlying method: (receiver word, args...) -> rets.
	tin := make([]*abi.Type, 0, 1+len(ftyp.In))
	tin = append(tin, rcvrtype)
	tin = append(tin, ftyp.In...)
	sigCall, err := toFFISig(tin, ftyp.Out)
	if err != nil {
		panic(err)
	}

	// Signature for the returned function value: (args...) -> rets.
	sigWrapper, err := makeFuncSig(ftyp)
	if err != nil {
		panic(err)
	}

	closure := ffi.NewClosure()
	md := &methodValueData{fn: fn, rcvr: ptr, sigCall: sigCall, sigWrap: sigWrapper, nin: len(ftyp.In)}
	if err := closure.Bind(sigWrapper, methodValueCallback, unsafe.Pointer(md)); err != nil {
		panic("libffi error: " + err.Error())
	}

	typ := closureOf(ftyp)
	fv := &struct {
		fn  unsafe.Pointer
		env unsafe.Pointer
	}{closure.Fn, keepAlivePtr(unsafe.Pointer(md))}

	return Value{typ, unsafe.Pointer(fv), v.flag&flagRO | flagIndir | flag(Func)}
}
