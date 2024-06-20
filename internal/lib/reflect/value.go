/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package reflect

import (
	"unsafe"

	"github.com/goplus/llgo/internal/abi"
	"github.com/goplus/llgo/internal/runtime"
)

// Value is the reflection interface to a Go value.
//
// Not all methods apply to all kinds of values. Restrictions,
// if any, are noted in the documentation for each method.
// Use the Kind method to find out the kind of value before
// calling kind-specific methods. Calling a method
// inappropriate to the kind of type causes a run time panic.
//
// The zero Value represents no value.
// Its IsValid method returns false, its Kind method returns Invalid,
// its String method returns "<invalid Value>", and all other methods panic.
// Most functions and methods never return an invalid value.
// If one does, its documentation states the conditions explicitly.
//
// A Value can be used concurrently by multiple goroutines provided that
// the underlying Go value can be used concurrently for the equivalent
// direct operations.
//
// To compare two Values, compare the results of the Interface method.
// Using == on two Values does not compare the underlying values
// they represent.
type Value struct {
	// typ_ holds the type of the value represented by a Value.
	// Access using the typ method to avoid escape of v.
	typ_ *abi.Type

	// Pointer-valued data or, if flagIndir is set, pointer to data.
	// Valid when either flagIndir is set or typ.pointers() is true.
	ptr unsafe.Pointer

	// flag holds metadata about the value.
	//
	// The lowest five bits give the Kind of the value, mirroring typ.Kind().
	//
	// The next set of bits are flag bits:
	//	- flagStickyRO: obtained via unexported not embedded field, so read-only
	//	- flagEmbedRO: obtained via unexported embedded field, so read-only
	//	- flagIndir: val holds a pointer to the data
	//	- flagAddr: v.CanAddr is true (implies flagIndir and ptr is non-nil)
	//	- flagMethod: v is a method value.
	// If ifaceIndir(typ), code can assume that flagIndir is set.
	//
	// The remaining 22+ bits give a method number for method values.
	// If flag.kind() != Func, code can assume that flagMethod is unset.
	flag

	// A method value represents a curried method invocation
	// like r.Read for some receiver r. The typ+val+flag bits describe
	// the receiver r, but the flag's Kind bits say Func (methods are
	// functions), and the top bits of the flag give the method number
	// in r's type's method table.
}

type flag uintptr

const (
	flagKindWidth        = 5 // there are 27 kinds
	flagKindMask    flag = 1<<flagKindWidth - 1
	flagStickyRO    flag = 1 << 5
	flagEmbedRO     flag = 1 << 6
	flagIndir       flag = 1 << 7
	flagAddr        flag = 1 << 8
	flagMethod      flag = 1 << 9
	flagMethodShift      = 10
	flagRO          flag = flagStickyRO | flagEmbedRO
)

func (f flag) kind() Kind {
	return Kind(f & flagKindMask)
}

func (f flag) ro() flag {
	if f&flagRO != 0 {
		return flagStickyRO
	}
	return 0
}

func (v Value) typ() *abi.Type {
	// Types are either static (for compiler-created types) or
	// heap-allocated but always reachable (for reflection-created
	// types, held in the central map). So there is no need to
	// escape types. noescape here help avoid unnecessary escape
	// of v.
	return (*abi.Type)(unsafe.Pointer(v.typ_))
}

// pointer returns the underlying pointer represented by v.
// v.Kind() must be Pointer, Map, Chan, Func, or UnsafePointer
// if v.Kind() == Pointer, the base type must not be not-in-heap.
func (v Value) pointer() unsafe.Pointer {
	/*
		if v.typ().Size() != goarch.PtrSize || !v.typ().Pointers() {
			panic("can't call pointer on a non-pointer Value")
		}
		if v.flag&flagIndir != 0 {
			return *(*unsafe.Pointer)(v.ptr)
		}
		return v.ptr
	*/
	panic("todo")
}

// packEface converts v to the empty interface.
func packEface(v Value) any {
	t := v.typ()
	var i any
	e := (*emptyInterface)(unsafe.Pointer(&i))
	// First, fill in the data portion of the interface.
	switch {
	case t.IfaceIndir():
		if v.flag&flagIndir == 0 {
			panic("bad indir")
		}
		// Value is indirect, and so is the interface we're making.
		ptr := v.ptr
		if v.flag&flagAddr != 0 {
			// TODO: pass safe boolean from valueInterface so
			// we don't need to copy if safe==true?
			c := unsafe_New(t)
			typedmemmove(t, c, ptr)
			ptr = c
		}
		e.word = ptr
	case v.flag&flagIndir != 0:
		// Value is indirect, but interface is direct. We need
		// to load the data at v.ptr into the interface data word.
		e.word = *(*unsafe.Pointer)(v.ptr)
	default:
		// Value is direct, and so is the interface.
		e.word = v.ptr
	}
	// Now, fill in the type portion. We're very careful here not
	// to have any operation between the e.word and e.typ assignments
	// that would let the garbage collector observe the partially-built
	// interface value.
	e.typ = t
	return i
}

// unpackEface converts the empty interface i to a Value.
func unpackEface(i any) Value {
	e := (*emptyInterface)(unsafe.Pointer(&i))
	// NOTE: don't read e.word until we know whether it is really a pointer or not.
	t := e.typ
	if t == nil {
		return Value{}
	}
	f := flag(t.Kind())
	if t.IfaceIndir() {
		f |= flagIndir
	}
	return Value{t, e.word, f}
}

// A ValueError occurs when a Value method is invoked on
// a Value that does not support it. Such cases are documented
// in the description of each method.
type ValueError struct {
	Method string
	Kind   Kind
}

func (e *ValueError) Error() string {
	if e.Kind == 0 {
		return "reflect: call of " + e.Method + " on zero Value"
	}
	return "reflect: call of " + e.Method + " on " + e.Kind.String() + " Value"
}

// emptyInterface is the header for an interface{} value.
type emptyInterface struct {
	typ  *abi.Type
	word unsafe.Pointer
}

// nonEmptyInterface is the header for an interface value with methods.
type nonEmptyInterface struct {
	// see ../runtime/iface.go:/Itab
	itab *struct {
		ityp *abi.Type // static interface type
		typ  *abi.Type // dynamic concrete type
		hash uint32    // copy of typ.hash
		_    [4]byte
		fun  [100000]unsafe.Pointer // method table
	}
	word unsafe.Pointer
}

// CanFloat reports whether Float can be used without panicking.
func (v Value) CanFloat() bool {
	switch v.kind() {
	case Float32, Float64:
		return true
	default:
		return false
	}
}

// Float returns v's underlying value, as a float64.
// It panics if v's Kind is not Float32 or Float64
func (v Value) Float() float64 {
	k := v.kind()
	switch k {
	case Float32:
		return float64(*(*float32)(v.ptr))
	case Float64:
		return *(*float64)(v.ptr)
	}
	panic(&ValueError{"reflect.Value.Float", v.kind()})
}

// TODO(xsw):
// var uint8Type = rtypeOf(uint8(0))

// Index returns v's i'th element.
// It panics if v's Kind is not Array, Slice, or String or i is out of range.
func (v Value) Index(i int) Value {
	/*
		switch v.kind() {
		case Array:
			tt := (*arrayType)(unsafe.Pointer(v.typ()))
			if uint(i) >= uint(tt.Len) {
				panic("reflect: array index out of range")
			}
			typ := tt.Elem
			offset := uintptr(i) * typ.Size()

			// Either flagIndir is set and v.ptr points at array,
			// or flagIndir is not set and v.ptr is the actual array data.
			// In the former case, we want v.ptr + offset.
			// In the latter case, we must be doing Index(0), so offset = 0,
			// so v.ptr + offset is still the correct address.
			val := add(v.ptr, offset, "same as &v[i], i < tt.len")
			fl := v.flag&(flagIndir|flagAddr) | v.flag.ro() | flag(typ.Kind()) // bits same as overall array
			return Value{typ, val, fl}

		case Slice:
			// Element flag same as Elem of Pointer.
			// Addressable, indirect, possibly read-only.
			s := (*unsafeheader.Slice)(v.ptr)
			if uint(i) >= uint(s.Len) {
				panic("reflect: slice index out of range")
			}
			tt := (*sliceType)(unsafe.Pointer(v.typ()))
			typ := tt.Elem
			val := arrayAt(s.Data, i, typ.Size(), "i < s.Len")
			fl := flagAddr | flagIndir | v.flag.ro() | flag(typ.Kind())
			return Value{typ, val, fl}

		case String:
			s := (*unsafeheader.String)(v.ptr)
			if uint(i) >= uint(s.Len) {
				panic("reflect: string index out of range")
			}
			p := arrayAt(s.Data, i, 1, "i < s.Len")
			fl := v.flag.ro() | flag(Uint8) | flagIndir
			return Value{uint8Type, p, fl}
		}
		panic(&ValueError{"reflect.Value.Index", v.kind()})
	*/
	panic("todo")
}

// CanInt reports whether Int can be used without panicking.
func (v Value) CanInt() bool {
	switch v.kind() {
	case Int, Int8, Int16, Int32, Int64:
		return true
	default:
		return false
	}
}

// Int returns v's underlying value, as an int64.
// It panics if v's Kind is not Int, Int8, Int16, Int32, or Int64.
func (v Value) Int() int64 {
	k := v.kind()
	p := v.ptr
	switch k {
	case Int:
		return int64(uintptr(p))
	case Int8:
		return int64(uintptr(p))
	case Int16:
		return int64(uintptr(p))
	case Int32:
		return int64(uintptr(p))
	case Int64:
		if unsafe.Sizeof(uintptr(0)) == 8 {
			return int64(uintptr(p))
		}
		return *(*int64)(p)
	}
	panic(&ValueError{"reflect.Value.Int", v.kind()})
}

// CanInterface reports whether Interface can be used without panicking.
func (v Value) CanInterface() bool {
	if v.flag == 0 {
		panic(&ValueError{"reflect.Value.CanInterface", Invalid})
	}
	return v.flag&flagRO == 0
}

// Interface returns v's current value as an interface{}.
// It is equivalent to:
//
//	var i interface{} = (v's underlying value)
//
// It panics if the Value was obtained by accessing
// unexported struct fields.
func (v Value) Interface() (i any) {
	return valueInterface(v, true)
}

func valueInterface(v Value, safe bool) any {
	/*
		if v.flag == 0 {
			panic(&ValueError{"reflect.Value.Interface", Invalid})
		}
		if safe && v.flag&flagRO != 0 {
			// Do not allow access to unexported values via Interface,
			// because they might be pointers that should not be
			// writable or methods or function that should not be callable.
			panic("reflect.Value.Interface: cannot return value obtained from unexported field or method")
		}
		if v.flag&flagMethod != 0 {
			v = makeMethodValue("Interface", v)
		}

		if v.kind() == Interface {
			// Special case: return the element inside the interface.
			// Empty interface has one layout, all interfaces with
			// methods have a second layout.
			if v.NumMethod() == 0 {
				return *(*any)(v.ptr)
			}
			return *(*interface {
				M()
			})(v.ptr)
		}

		// TODO: pass safe to packEface so we don't need to copy if safe==true?
		return packEface(v)
	*/
	panic("todo")
}

// InterfaceData returns a pair of unspecified uintptr values.
// It panics if v's Kind is not Interface.
//
// In earlier versions of Go, this function returned the interface's
// value as a uintptr pair. As of Go 1.4, the implementation of
// interface values precludes any defined use of InterfaceData.
//
// Deprecated: The memory representation of interface values is not
// compatible with InterfaceData.
func (v Value) InterfaceData() [2]uintptr {
	/*
		v.mustBe(Interface)
		// The compiler loses track as it converts to uintptr. Force escape.
		escapes(v.ptr)
		// We treat this as a read operation, so we allow
		// it even for unexported data, because the caller
		// has to import "unsafe" to turn it into something
		// that can be abused.
		// Interface value is always bigger than a word; assume flagIndir.
		return *(*[2]uintptr)(v.ptr)
	*/
	panic("todo")
}

// IsNil reports whether its argument v is nil. The argument must be
// a chan, func, interface, map, pointer, or slice value; if it is
// not, IsNil panics. Note that IsNil is not always equivalent to a
// regular comparison with nil in Go. For example, if v was created
// by calling ValueOf with an uninitialized interface variable i,
// i==nil will be true but v.IsNil will panic as v will be the zero
// Value.
func (v Value) IsNil() bool {
	k := v.kind()
	switch k {
	case Chan, Func, Map, Pointer, UnsafePointer:
		if v.flag&flagMethod != 0 {
			return false
		}
		ptr := v.ptr
		if v.flag&flagIndir != 0 {
			ptr = *(*unsafe.Pointer)(ptr)
		}
		return ptr == nil
	case Interface, Slice:
		// Both interface and slice are nil if first word is 0.
		// Both are always bigger than a word; assume flagIndir.
		return *(*unsafe.Pointer)(v.ptr) == nil
	}
	panic(&ValueError{"reflect.Value.IsNil", v.kind()})
}

// IsValid reports whether v represents a value.
// It returns false if v is the zero Value.
// If IsValid returns false, all other methods except String panic.
// Most functions and methods never return an invalid Value.
// If one does, its documentation states the conditions explicitly.
func (v Value) IsValid() bool {
	return v.flag != 0
}

// IsZero reports whether v is the zero value for its type.
// It panics if the argument is invalid.
func (v Value) IsZero() bool {
	/*
		switch v.kind() {
		case Bool:
			return !v.Bool()
		case Int, Int8, Int16, Int32, Int64:
			return v.Int() == 0
		case Uint, Uint8, Uint16, Uint32, Uint64, Uintptr:
			return v.Uint() == 0
		case Float32, Float64:
			return math.Float64bits(v.Float()) == 0
		case Complex64, Complex128:
			c := v.Complex()
			return math.Float64bits(real(c)) == 0 && math.Float64bits(imag(c)) == 0
		case Array:
			// If the type is comparable, then compare directly with zero.
			if v.typ().Equal != nil && v.typ().Size() <= maxZero {
				if v.flag&flagIndir == 0 {
					return v.ptr == nil
				}
				// v.ptr doesn't escape, as Equal functions are compiler generated
				// and never escape. The escape analysis doesn't know, as it is a
				// function pointer call.
				return v.typ().Equal(noescape(v.ptr), unsafe.Pointer(&zeroVal[0]))
			}

			n := v.Len()
			for i := 0; i < n; i++ {
				if !v.Index(i).IsZero() {
					return false
				}
			}
			return true
		case Chan, Func, Interface, Map, Pointer, Slice, UnsafePointer:
			return v.IsNil()
		case String:
			return v.Len() == 0
		case Struct:
			// If the type is comparable, then compare directly with zero.
			if v.typ().Equal != nil && v.typ().Size() <= maxZero {
				if v.flag&flagIndir == 0 {
					return v.ptr == nil
				}
				// See noescape justification above.
				return v.typ().Equal(noescape(v.ptr), unsafe.Pointer(&zeroVal[0]))
			}

			n := v.NumField()
			for i := 0; i < n; i++ {
				if !v.Field(i).IsZero() {
					return false
				}
			}
			return true
		default:
			// This should never happen, but will act as a safeguard for later,
			// as a default value doesn't makes sense here.
			panic(&ValueError{"reflect.Value.IsZero", v.Kind()})
		}
	*/
	panic("todo")
}

// SetZero sets v to be the zero value of v's type.
// It panics if CanSet returns false.
func (v Value) SetZero() {
	/*
		v.mustBeAssignable()
		switch v.kind() {
		case Bool:
			*(*bool)(v.ptr) = false
		case Int:
			*(*int)(v.ptr) = 0
		case Int8:
			*(*int8)(v.ptr) = 0
		case Int16:
			*(*int16)(v.ptr) = 0
		case Int32:
			*(*int32)(v.ptr) = 0
		case Int64:
			*(*int64)(v.ptr) = 0
		case Uint:
			*(*uint)(v.ptr) = 0
		case Uint8:
			*(*uint8)(v.ptr) = 0
		case Uint16:
			*(*uint16)(v.ptr) = 0
		case Uint32:
			*(*uint32)(v.ptr) = 0
		case Uint64:
			*(*uint64)(v.ptr) = 0
		case Uintptr:
			*(*uintptr)(v.ptr) = 0
		case Float32:
			*(*float32)(v.ptr) = 0
		case Float64:
			*(*float64)(v.ptr) = 0
		case Complex64:
			*(*complex64)(v.ptr) = 0
		case Complex128:
			*(*complex128)(v.ptr) = 0
		case String:
			*(*string)(v.ptr) = ""
		case Slice:
			*(*unsafeheader.Slice)(v.ptr) = unsafeheader.Slice{}
		case Interface:
			*(*[2]unsafe.Pointer)(v.ptr) = [2]unsafe.Pointer{}
		case Chan, Func, Map, Pointer, UnsafePointer:
			*(*unsafe.Pointer)(v.ptr) = nil
		case Array, Struct:
			typedmemclr(v.typ(), v.ptr)
		default:
			// This should never happen, but will act as a safeguard for later,
			// as a default value doesn't makes sense here.
			panic(&ValueError{"reflect.Value.SetZero", v.Kind()})
		}
	*/
	panic("todo")
}

// Kind returns v's Kind.
// If v is the zero Value (IsValid returns false), Kind returns Invalid.
func (v Value) Kind() Kind {
	return v.kind()
}

// Len returns v's length.
// It panics if v's Kind is not Array, Chan, Map, Slice, String, or pointer to Array.
func (v Value) Len() int {
	// lenNonSlice is split out to keep Len inlineable for slice kinds.
	if v.kind() == Slice {
		return (*unsafeheaderSlice)(v.ptr).Len
	}
	return v.lenNonSlice()
}

func (v Value) lenNonSlice() int {
	/*
		switch k := v.kind(); k {
		case Array:
			tt := (*arrayType)(unsafe.Pointer(v.typ()))
			return int(tt.Len)
		case Chan:
			return chanlen(v.pointer())
		case Map:
			return maplen(v.pointer())
		case String:
			// String is bigger than a word; assume flagIndir.
			return (*unsafeheader.String)(v.ptr).Len
		case Ptr:
			if v.typ().Elem().Kind() == abi.Array {
				return v.typ().Elem().Len()
			}
			panic("reflect: call of reflect.Value.Len on ptr to non-array Value")
		}
		panic(&ValueError{"reflect.Value.Len", v.kind()})
	*/
	panic("todo")
}

//go:linkname unsafe_New github.com/goplus/llgo/internal/runtime.New
func unsafe_New(*abi.Type) unsafe.Pointer

//go:linkname unsafe_NewArray github.com/goplus/llgo/internal/runtime.NewArray
func unsafe_NewArray(*abi.Type, int) unsafe.Pointer

// ValueOf returns a new Value initialized to the concrete value
// stored in the interface i. ValueOf(nil) returns the zero Value.
func ValueOf(i any) Value {
	if i == nil {
		return Value{}
	}

	return unpackEface(i)
}

// Zero returns a Value representing the zero value for the specified type.
// The result is different from the zero value of the Value struct,
// which represents no value at all.
// For example, Zero(TypeOf(42)) returns a Value with Kind Int and value 0.
// The returned value is neither addressable nor settable.
func Zero(typ Type) Value {
	if typ == nil {
		panic("reflect: Zero(nil)")
	}
	t := &typ.(*rtype).t
	fl := flag(t.Kind())
	if t.IfaceIndir() {
		var p unsafe.Pointer
		if t.Size() <= maxZero {
			p = unsafe.Pointer(&runtime.ZeroVal[0])
		} else {
			p = unsafe_New(t)
		}
		return Value{t, p, fl | flagIndir}
	}
	return Value{t, nil, fl}
}

// TODO(xsw): check this
// must match declarations in runtime/map.go.
const maxZero = runtime.MaxZero

// memmove copies size bytes to dst from src. No write barriers are used.
//
//go:linkname memmove C.memmove
func memmove(dst, src unsafe.Pointer, size uintptr)

// typedmemmove copies a value of type t to dst from src.
//
//go:linkname typedmemmove github.com/goplus/llgo/internal/runtime.Typedmemmove
func typedmemmove(t *abi.Type, dst, src unsafe.Pointer)

/* TODO(xsw):
// typedmemclr zeros the value at ptr of type t.
//
//go:noescape
func typedmemclr(t *abi.Type, ptr unsafe.Pointer)

// typedmemclrpartial is like typedmemclr but assumes that
// dst points off bytes into the value and only clears size bytes.
//
//go:noescape
func typedmemclrpartial(t *abi.Type, ptr unsafe.Pointer, off, size uintptr)

// typedslicecopy copies a slice of elemType values from src to dst,
// returning the number of elements copied.
//
//go:noescape
func typedslicecopy(t *abi.Type, dst, src unsafeheaderSlice) int

// typedarrayclear zeroes the value at ptr of an array of elemType,
// only clears len elem.
//
//go:noescape
func typedarrayclear(elemType *abi.Type, ptr unsafe.Pointer, len int)

//go:noescape
func typehash(t *abi.Type, p unsafe.Pointer, h uintptr) uintptr

func verifyNotInHeapPtr(p uintptr) bool

//go:noescape
func growslice(t *abi.Type, old unsafeheaderSlice, num int) unsafeheaderSlice
*/
