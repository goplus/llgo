//go:build !llgo
// +build !llgo

package abi_test

import (
	"go/types"
	"reflect"
	"runtime"
	"testing"
	"unsafe"

	rabi "github.com/goplus/llgo/runtime/abi"
	"github.com/goplus/llgo/ssa/abi"
)

func TestBasic(t *testing.T) {
	b := newBuilder("main")
	tests := []struct {
		kind types.BasicKind
		v    interface{}
	}{
		{types.Bool, true},
		{types.Int, 0},
		{types.Int8, int8(0)},
		{types.Int16, int16(0)},
		{types.Int32, int32(0)},
		{types.Int64, int64(0)},
		{types.Uint, uint(0)},
		{types.Uint8, uint8(0)},
		{types.Uint16, uint16(0)},
		{types.Uint32, uint32(0)},
		{types.Uint64, uint64(0)},
		{types.Uintptr, uintptr(0)},
		{types.Float32, float32(0)},
		{types.Float64, float64(0)},
		{types.Complex64, complex64(0)},
		{types.Complex128, complex128(0)},
		{types.String, ""},
		{types.UnsafePointer, unsafe.Pointer(nil)},
	}
	for _, test := range tests {
		testValue(t, b, types.Typ[test.kind], test.v)
	}
}

func TestPointer(t *testing.T) {
	b := newBuilder("main")
	var v int
	ptyp := types.NewPointer(types.Typ[types.Int])
	pv := &v
	pptyp := types.NewPointer(ptyp)
	ppv := &pv
	ppptyp := types.NewPointer(pptyp)
	pppv := &ppv
	testValue(t, b, ptyp, pv)
	testValue(t, b, pptyp, ppv)
	testValue(t, b, ppptyp, pppv)
}

func TestSlice(t *testing.T) {
	b := newBuilder("main")
	testValue(t, b, types.NewSlice(types.Typ[types.Int]), []int{})
	testValue(t, b, types.NewSlice(types.NewPointer(types.Typ[types.Int])), []*int{})
}

func TestArray(t *testing.T) {
	b := newBuilder("main")
	testValue(t, b, types.NewArray(types.Typ[types.Int], 0), [0]int{})
	testValue(t, b, types.NewArray(types.Typ[types.Int], 1), [1]int{})
	testValue(t, b, types.NewArray(types.Typ[types.Int], 2), [2]int{})
	testValue(t, b, types.NewArray(types.Typ[types.UnsafePointer], 0), [0]unsafe.Pointer{})
	testValue(t, b, types.NewArray(types.Typ[types.UnsafePointer], 1), [1]unsafe.Pointer{})
	testValue(t, b, types.NewArray(types.Typ[types.UnsafePointer], 2), [2]unsafe.Pointer{})
	testValue(t, b, types.NewArray(types.NewPointer(types.Typ[types.Int]), 0), [0]*int{})
	testValue(t, b, types.NewArray(types.NewPointer(types.Typ[types.Int]), 1), [1]*int{})
	testValue(t, b, types.NewArray(types.NewPointer(types.Typ[types.Int]), 2), [2]*int{})
}

func TestChan(t *testing.T) {
	b := newBuilder("main")
	testValue(t, b, types.NewChan(types.SendRecv, types.Typ[types.Int]), make(chan int))
	testValue(t, b, types.NewChan(types.SendOnly, types.Typ[types.Int]), make(chan<- int))
	testValue(t, b, types.NewChan(types.RecvOnly, types.Typ[types.Int]), make(<-chan int))
	testValue(t, b, types.NewChan(types.SendRecv, types.NewPointer(types.Typ[types.Int])), make(chan *int))
	testValue(t, b, types.NewChan(types.SendRecv, types.NewSlice(types.NewPointer(types.Typ[types.Int]))), make(chan []*int))
	testValue(t, b, types.NewChan(types.SendRecv, types.NewArray(types.NewPointer(types.Typ[types.Int]), 1)), make(chan [1]*int))
}

func TestMap(t *testing.T) {
	b := newBuilder("main")
	testValue(t, b, types.NewMap(types.Typ[types.Int], types.NewPointer(types.Typ[types.Int])), map[int]*int{})
	testValue(t, b, types.NewMap(types.Typ[types.Int], types.Typ[types.String]), map[int]string{})
}

func TestStruct(t *testing.T) {
	b := newBuilder("main")
	pkg := types.NewPackage("", "main")
	testValue(t, b, types.NewStruct(nil, nil), struct{}{})
	testValue(t, b, types.NewStruct([]*types.Var{
		types.NewField(0, pkg, "", types.Typ[types.Int], true),
	}, nil), struct{ int }{})
	testValue(t, b, types.NewStruct([]*types.Var{
		types.NewField(0, pkg, "v", types.Typ[types.Int], false),
		types.NewField(0, pkg, "p", types.NewPointer(types.Typ[types.Int]), false),
	}, nil), struct {
		v int
		p *int
	}{})
	testValue(t, b, types.NewStruct([]*types.Var{
		types.NewField(0, pkg, "v", types.Typ[types.Int], false),
		types.NewField(0, pkg, "_", types.NewPointer(types.Typ[types.Int]), false),
	}, nil), struct {
		v int
		_ *int
	}{})
	testValue(t, b, types.NewStruct([]*types.Var{
		types.NewField(0, pkg, "", types.Typ[types.Byte], true),
		types.NewField(0, pkg, "v", types.NewArray(types.Typ[types.Int], 0), false),
	}, nil), struct {
		byte
		v [0]int
	}{})
	testValue(t, b, types.NewStruct([]*types.Var{
		types.NewField(0, pkg, "", types.Typ[types.Byte], true),
		types.NewField(0, pkg, "n", types.Typ[types.Int], false),
		types.NewField(0, pkg, "v", types.NewArray(types.Typ[types.Int], 0), false),
	}, nil), struct {
		byte
		n int
		v [0]int
	}{})
}

func TestInterface(t *testing.T) {
	b := newBuilder("main")
	pkg := types.NewPackage("github.com/goplus/ssa/abi", "abi_test")
	testType(t, b, types.NewInterface(nil, nil), reflect.ValueOf(struct{ E any }{}).Field(0).Type())
	testType(t, b, types.NewInterface([]*types.Func{
		types.NewFunc(0, pkg, "Demo", types.NewSignature(nil, types.NewTuple(types.NewVar(0, pkg, "", types.Typ[types.Int])),
			types.NewTuple(types.NewVar(0, pkg, "", types.NewPointer(types.Typ[types.Int]))), false)),
		types.NewFunc(0, pkg, "demo", types.NewSignature(nil, types.NewTuple(types.NewVar(0, pkg, "", types.Typ[types.Int])),
			types.NewTuple(types.NewVar(0, pkg, "", types.NewPointer(types.Typ[types.Int]))), false)),
	}, nil), reflect.ValueOf(struct {
		E interface {
			Demo(int) *int
			demo(int) *int
		}
	}{}).Field(0).Type())
}

func TestSignature(t *testing.T) {
	b := newBuilder("main")
	pkg := types.NewPackage("github.com/goplus/ssa/abi", "abi_test")
	testType(t, b, types.NewSignature(nil, types.NewTuple(types.NewVar(0, pkg, "", types.Typ[types.Int])),
		types.NewTuple(types.NewVar(0, pkg, "", types.NewPointer(types.Typ[types.Int]))), false),
		reflect.TypeOf(func(int) *int { return nil }),
	)
	testType(t, b, types.NewSignature(nil, types.NewTuple(types.NewVar(0, pkg, "", types.NewSlice(types.NewPointer(types.Typ[types.Int])))),
		types.NewTuple(types.NewVar(0, pkg, "", types.NewPointer(types.Typ[types.Int]))), false),
		reflect.TypeOf(func([]*int) *int { return nil }),
	)
}

func newBuilder(pkg string) *abi.Builder {
	return abi.New(pkg, unsafe.Sizeof(0), types.SizesFor("gc", runtime.GOARCH))
}

func testValue(t *testing.T, b *abi.Builder, typ types.Type, i any) {
	v := reflect.ValueOf(i)
	rt := reflect.TypeOf(i)
	if int(b.Kind(typ)) != int(rt.Kind()) {
		t.Fatalf("kind error: %v got %v, want %v", typ, b.Kind(typ), rt.Kind())
	}
	if int(b.Align(typ)) != rt.Align() {
		t.Fatalf("align error: %v got %v, want %v", typ, b.Align(typ), rt.Align())
	}
	if int(b.FieldAlign(typ)) != rt.FieldAlign() {
		t.Fatalf("align error: %v got %v, want %v", typ, b.Align(typ), rt.Align())
	}
	if b.Size(typ) != rt.Size() {
		t.Fatalf("size error: %v got %v, want %v", typ, b.Size(typ), rt.Size())
	}
	if typeString(b, typ) != rt.String() {
		t.Fatalf("str error: %v got %v, want %v", typ, typeString(b, typ), rt.String())
	}
	if b.IsRegularMemory(typ) != isRegularMemory(rt) {
		t.Fatalf("IsRegularMemory error: %v got %v, want %v", typ, b.IsRegularMemory(typ), isRegularMemory(rt))
	}
	tflag := uint8(b.TFlag(typ) &^ (rabi.TFlagExtraStar | rabi.TFlagUncommon))
	vflag := uint8(toValue(v).typ_.TFlag) &^ uint8(rabi.TFlagExtraStar|rabi.TFlagUncommon)
	if tflag != vflag {
		t.Fatalf("TFlag error: %v got %v, want %v", typ, tflag, vflag)
	}
	if b.PtrBytes(typ) != toValue(v).typ_.PtrBytes {
		t.Fatalf("PtrBytes error: %v got %v, want %v", typ, b.PtrBytes(typ), toValue(v).typ_.PtrBytes)
	}
	comp := b.EqualName(typ) != ""
	if comp != rt.Comparable() {
		t.Fatalf("Comparable error: %v got %v, want %v", typ, comp, rt.Comparable())
	}
}

func testType(t *testing.T, b *abi.Builder, typ types.Type, rt reflect.Type) {
	if int(b.Kind(typ)) != int(rt.Kind()) {
		t.Fatalf("kind error: %v got %v, want %v", typ, b.Kind(typ), rt.Kind())
	}
	if int(b.Align(typ)) != rt.Align() {
		t.Fatalf("align error: %v got %v, want %v", typ, b.Align(typ), rt.Align())
	}
	if int(b.FieldAlign(typ)) != rt.FieldAlign() {
		t.Fatalf("align error: %v got %v, want %v", typ, b.Align(typ), rt.Align())
	}
	if b.Size(typ) != rt.Size() {
		t.Fatalf("size error: %v got %v, want %v", typ, b.Size(typ), rt.Size())
	}
	if typeString(b, typ) != rt.String() {
		t.Fatalf("str error: %v got %v, want %v", typ, typeString(b, typ), rt.String())
	}
	if b.IsRegularMemory(typ) != isRegularMemory(rt) {
		t.Fatalf("IsRegularMemory error: %v got %v, want %v", typ, b.IsRegularMemory(typ), isRegularMemory(rt))
	}
	// tflag := uint8(b.TFlag(typ) &^ (rabi.TFlagExtraStar | rabi.TFlagUncommon))
	// vflag := uint8(toValue(v).typ_.TFlag) &^ uint8(rabi.TFlagExtraStar|rabi.TFlagUncommon)
	// if tflag != vflag {
	// 	t.Fatalf("TFlag error: %v got %v, want %v", typ, tflag, vflag)
	// }
	// if b.PtrBytes(typ) != toValue(v).typ_.PtrBytes {
	// 	t.Fatalf("PtrBytes error: %v got %v, want %v", typ, b.PtrBytes(typ), toValue(v).typ_.PtrBytes)
	// }
	comp := b.EqualName(typ) != ""
	if comp != rt.Comparable() {
		t.Fatalf("Comparable error: %v got %v, want %v", typ, comp, rt.Comparable())
	}
}

func typeString(b *abi.Builder, t types.Type) string {
	if b.TFlag(t)&rabi.TFlagExtraStar != 0 {
		return "*" + b.Str(t)
	}
	return b.Str(t)
}

func isBasic(typ types.Type) (ok bool) {
	_, ok = typ.(*types.Basic)
	return
}

func isPointer(typ types.Type) (ok bool) {
	_, ok = typ.(*types.Pointer)
	return
}

func toValue(v reflect.Value) *Value {
	return (*Value)(unsafe.Pointer(&v))
}

type Value struct {
	typ_ *_Type
	ptr  unsafe.Pointer
	flag uintptr
}

func TypeOf(a any) *_Type {
	return (*EmptyInterface)(unsafe.Pointer(&a)).Type
}

type EmptyInterface struct {
	Type *_Type
	Data unsafe.Pointer
}

type _Type struct {
	Size_       uintptr
	PtrBytes    uintptr // number of (prefix) bytes in the type that can contain pointers
	Hash        uint32  // hash of type; avoids computation in hash tables
	TFlag       uint8   // extra type information flags
	Align_      uint8   // alignment of variable with this type
	FieldAlign_ uint8   // alignment of struct field with this type
	Kind_       uint8   // enumeration for C
	// function for comparing objects of this type
	// (ptr to object A, ptr to object B) -> ==?
	Equal func(unsafe.Pointer, unsafe.Pointer) bool
	// GCData stores the GC type data for the garbage collector.
	// Normally, GCData points to a bitmask that describes the
	// ptr/nonptr fields of the type. The bitmask will have at
	// least PtrBytes/ptrSize bits.
	// If the TFlagGCMaskOnDemand bit is set, GCData is instead a
	// **byte and the pointer to the bitmask is one dereference away.
	// The runtime will build the bitmask if needed.
	// (See runtime/type.go:getGCMask.)
	// Note: multiple types may have the same value of GCData,
	// including when TFlagGCMaskOnDemand is set. The types will, of course,
	// have the same pointer layout (but not necessarily the same size).
	GCData    *byte
	Str       int32 // string form
	PtrToThis int32 // type for pointer to this type, may be zero
}

// This must match cmd/compile/internal/compare.IsRegularMemory
func isRegularMemory(t reflect.Type) bool {
	switch t.Kind() {
	case reflect.Array:
		elem := t.Elem()
		if isRegularMemory(elem) {
			return true
		}
		return elem.Comparable() && t.Len() == 0
	case reflect.Int8, reflect.Int16, reflect.Int32, reflect.Int64, reflect.Int,
		reflect.Uint8, reflect.Uint16, reflect.Uint32, reflect.Uint64, reflect.Uint,
		reflect.Uintptr, reflect.Chan, reflect.Pointer, reflect.Bool, reflect.UnsafePointer:
		return true
	case reflect.Struct:
		num := t.NumField()
		switch num {
		case 0:
			return true
		case 1:
			field := t.Field(0)
			if field.Name == "_" {
				return false
			}
			return isRegularMemory(field.Type)
		default:
			for i := range num {
				field := t.Field(i)
				if field.Name == "_" || !isRegularMemory(field.Type) || isPaddedField(t, i) {
					return false
				}
			}
			return true
		}
	}
	return false
}

// isPaddedField reports whether the i'th field of struct type t is followed
// by padding.
func isPaddedField(t reflect.Type, i int) bool {
	field := t.Field(i)
	if i+1 < t.NumField() {
		return field.Offset+field.Type.Size() != t.Field(i+1).Offset
	}
	return field.Offset+field.Type.Size() != t.Size()
}
