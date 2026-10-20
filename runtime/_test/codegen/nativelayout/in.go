// LITTEST linux/amd64 linux/arm64 darwin/amd64 darwin/arm64 windows/amd64 windows/arm64 linux/386 windows/386
package main

import (
	"reflect"
	"unsafe"
)

//llgo:cdecl
type record struct {
	Number float64
	End    struct{}
}

type envelope struct {
	Record record
	Stamp  uint64
}

//llgo:cdecl
type nativePair struct {
	Small int32
	Large uint64
}

type goPair struct {
	Small int32
	Large uint64
}

// Metadata keeps the native owner instead of reconstructing a Go struct.
// AMD64-DAG: @_llgo_main.record = {{.*}}i64 8, i64 0,
// ARM64-DAG: @_llgo_main.record = {{.*}}i64 8, i64 0,
// AMD64-DAG: @_llgo_main.envelope = {{.*}}i64 16, i64 0,
// ARM64-DAG: @_llgo_main.envelope = {{.*}}i64 16, i64 0,
// WINDOWS-386-DAG: @_llgo_main.nativePair = {{.*}}i32 16, i32 0, i32 {{[^,]+}}, i8 5, i8 8, i8 8,
// WINDOWS-386-DAG: @"_llgo_main.nativePair$fields" = {{.*}}ptr @_llgo_uint64, i32 8,
// WINDOWS-386-DAG: @_llgo_main.goPair = {{.*}}i32 12, i32 0, i32 {{[^,]+}}, i8 13, i8 4, i8 4,
// CHECK-LABEL: define void @main.main()
func main() {
	values := [3]record{{Number: 10}, {Number: 20}, {Number: 30}}
	step := uintptr(unsafe.Pointer(&values[1])) - uintptr(unsafe.Pointer(&values[0]))
	println("record size", reflect.TypeOf(values[0]).Size() == step)
	println("record array", reflect.TypeOf(values).Size() == 3*step)
	v := reflect.ValueOf(&values).Elem().Index(1).Field(0)
	println("record read", v.Float() == 20)
	v.SetFloat(25)
	println("record write", values[0].Number == 10 && values[1].Number == 25 && values[2].Number == 30)
	count := reflect.Copy(reflect.ValueOf(&values).Elem(), reflect.ValueOf([1]record{{Number: 40}}))
	println("record copy", count == 1 && values[0].Number == 40 && values[1].Number == 25 && values[2].Number == 30)

	packets := [2]envelope{{Record: record{Number: 7}, Stamp: 37}, {Record: record{Number: 9}, Stamp: 99}}
	packetSize := uintptr(unsafe.Pointer(&packets[1])) - uintptr(unsafe.Pointer(&packets[0]))
	stampOffset := uintptr(unsafe.Pointer(&packets[0].Stamp)) - uintptr(unsafe.Pointer(&packets[0]))
	packetType := reflect.TypeOf(packets[0])
	println("envelope size", packetType.Size() == packetSize)
	println("stamp offset", packetType.Field(1).Offset == stampOffset)
	println("envelope array", reflect.TypeOf(packets).Size() == 2*packetSize)
	field := reflect.ValueOf(&packets[0]).Elem().Field(1)
	println("stamp read", field.Uint() == 37)
	field.SetUint(41)
	println("stamp write", packets[0].Stamp == 41 && packets[1].Record.Number == 9)

	roundTrip := func(p envelope, marker uint64) envelope {
		if marker != 53 {
			panic("argument following envelope was shifted")
		}
		return p
	}
	result := reflect.ValueOf(roundTrip).Call([]reflect.Value{reflect.ValueOf(packets[0]), reflect.ValueOf(uint64(53))})
	println("call", result[0].Interface().(envelope) == packets[0])
	callback := reflect.MakeFunc(reflect.TypeOf(roundTrip), func(args []reflect.Value) []reflect.Value {
		if args[0].Interface().(envelope) != packets[0] || args[1].Uint() != 53 {
			panic("MakeFunc decoded the wrong envelope")
		}
		return args[:1]
	}).Interface().(func(envelope, uint64) envelope)
	println("makefunc", callback(packets[0], 53) == packets[0])

	var native nativePair
	var ordinary goPair
	nativeOffset := uintptr(unsafe.Pointer(&native.Large)) - uintptr(unsafe.Pointer(&native))
	goOffset := uintptr(unsafe.Pointer(&ordinary.Large)) - uintptr(unsafe.Pointer(&ordinary))
	println("separate offsets", reflect.TypeOf(native).Field(1).Offset == nativeOffset && reflect.TypeOf(ordinary).Field(1).Offset == goOffset)
	left, right := [8]nativePair{}, [8]nativePair{}
	for i := uintptr(4); i < nativeOffset; i++ {
		*(*byte)(unsafe.Add(unsafe.Pointer(&left[0]), i)) = 0x11
		*(*byte)(unsafe.Add(unsafe.Pointer(&right[0]), i)) = 0x22
	}
	println("array equality", left == right)
}
