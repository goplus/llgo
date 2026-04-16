// LITTEST
package main

import (
	"unsafe"

	"github.com/goplus/llgo/runtime/abi"
)

// CHECK-LABEL: define void @"{{.*}}/cl/_testrt/eface.(*T).Invoke"(ptr %0) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" { ptr @0, i64 6 })
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   ret void
// CHECK-NEXT: }
func (t *T) Invoke() {
	println("invoke")
}

// CHECK-LABEL: define void @"{{.*}}/cl/_testrt/eface.dump"(%"{{.*}}/runtime/internal/runtime.eface" %0) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %1 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.eface" %0, ptr %1, align 8
// CHECK-NEXT:   %2 = getelementptr inbounds %"{{.*}}/cl/_testrt/eface.eface", ptr %1, i32 0, i32 0
// CHECK-NEXT:   %3 = load ptr, ptr %2, align 8
// CHECK-NEXT:   call void @"{{.*}}/cl/_testrt/eface.dumpTyp"(ptr %3, %"{{.*}}/runtime/internal/runtime.String" zeroinitializer)
// CHECK-NEXT:   ret void
// CHECK-NEXT: }
func dump(v any) {
	e := (*eface)(unsafe.Pointer(&v))
	dumpTyp(e._type, "")
}

// CHECK-LABEL: define void @"{{.*}}/cl/_testrt/eface.dumpTyp"(ptr %0, %"{{.*}}/runtime/internal/runtime.String" %1) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" %1)
// CHECK-NEXT:   %2 = call %"{{.*}}/runtime/internal/runtime.String" @"{{.*}}/runtime/abi.(*Type).String"(ptr %0)
// CHECK-NEXT:   %3 = call i64 @"{{.*}}/runtime/abi.(*Type).Kind"(ptr %0)
// CHECK-NEXT:   %4 = getelementptr inbounds %"{{.*}}/runtime/abi.Type", ptr %0, i32 0, i32 0
// CHECK-NEXT:   %5 = load i64, ptr %4, align 4
// CHECK-NEXT:   %6 = getelementptr inbounds %"{{.*}}/runtime/abi.Type", ptr %0, i32 0, i32 1
// CHECK-NEXT:   %7 = load i64, ptr %6, align 4
// CHECK-NEXT:   %8 = getelementptr inbounds %"{{.*}}/runtime/abi.Type", ptr %0, i32 0, i32 2
// CHECK-NEXT:   %9 = load i32, ptr %8, align 4
// CHECK-NEXT:   %10 = getelementptr inbounds %"{{.*}}/runtime/abi.Type", ptr %0, i32 0, i32 3
// CHECK-NEXT:   %11 = load i8, ptr %10, align 1
// CHECK-NEXT:   %12 = getelementptr inbounds %"{{.*}}/runtime/abi.Type", ptr %0, i32 0, i32 4
// CHECK-NEXT:   %13 = load i8, ptr %12, align 1
// CHECK-NEXT:   %14 = getelementptr inbounds %"{{.*}}/runtime/abi.Type", ptr %0, i32 0, i32 10
// CHECK-NEXT:   %15 = load ptr, ptr %14, align 8
// CHECK-NEXT:   %16 = call ptr @"{{.*}}/runtime/abi.(*Type).Uncommon"(ptr %0)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" %2)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintUint"(i64 %3)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintUint"(i64 %5)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintUint"(i64 %7)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   %17 = zext i32 %9 to i64
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintUint"(i64 %17)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   %18 = zext i8 %11 to i64
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintUint"(i64 %18)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   %19 = zext i8 %13 to i64
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintUint"(i64 %19)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintPointer"(ptr %15)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintPointer"(ptr %16)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %20 = call ptr @"{{.*}}/runtime/abi.(*Type).Elem"(ptr %0)
// CHECK-NEXT:   %21 = icmp ne ptr %20, null
// CHECK-NEXT:   br i1 %21, label %_llgo_1, label %_llgo_2
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_1:                                          ; preds = %_llgo_0
// CHECK-NEXT:   %22 = call ptr @"{{.*}}/runtime/abi.(*Type).Elem"(ptr %0)
// CHECK-NEXT:   %23 = call %"{{.*}}/runtime/internal/runtime.String" @"{{.*}}/runtime/internal/runtime.StringCat"(%"{{.*}}/runtime/internal/runtime.String" %1, %"{{.*}}/runtime/internal/runtime.String" { ptr @1, i64 7 })
// CHECK-NEXT:   call void @"{{.*}}/cl/_testrt/eface.dumpTyp"(ptr %22, %"{{.*}}/runtime/internal/runtime.String" %23)
// CHECK-NEXT:   br label %_llgo_2
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
// CHECK-NEXT:   %24 = call ptr @"{{.*}}/runtime/abi.(*Type).Uncommon"(ptr %0)
// CHECK-NEXT:   %25 = icmp ne ptr %24, null
// CHECK-NEXT:   br i1 %25, label %_llgo_3, label %_llgo_4
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_3:                                          ; preds = %_llgo_2
// CHECK-NEXT:   %26 = call ptr @"{{.*}}/runtime/abi.(*Type).Uncommon"(ptr %0)
// CHECK-NEXT:   %27 = call %"{{.*}}/runtime/internal/runtime.String" @"{{.*}}/runtime/internal/runtime.StringCat"(%"{{.*}}/runtime/internal/runtime.String" %1, %"{{.*}}/runtime/internal/runtime.String" { ptr @2, i64 9 })
// CHECK-NEXT:   call void @"{{.*}}/cl/_testrt/eface.dumpUncommon"(ptr %26, %"{{.*}}/runtime/internal/runtime.String" %27)
// CHECK-NEXT:   %28 = getelementptr inbounds %"{{.*}}/runtime/abi.Type", ptr %0, i32 0, i32 10
// CHECK-NEXT:   %29 = load ptr, ptr %28, align 8
// CHECK-NEXT:   %30 = icmp ne ptr %29, null
// CHECK-NEXT:   br i1 %30, label %_llgo_5, label %_llgo_4
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_4:                                          ; preds = %_llgo_5, %_llgo_3, %_llgo_2
// CHECK-NEXT:   ret void
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_5:                                          ; preds = %_llgo_3
// CHECK-NEXT:   %31 = getelementptr inbounds %"{{.*}}/runtime/abi.Type", ptr %0, i32 0, i32 10
// CHECK-NEXT:   %32 = load ptr, ptr %31, align 8
// CHECK-NEXT:   %33 = call ptr @"{{.*}}/runtime/abi.(*Type).Uncommon"(ptr %32)
// CHECK-NEXT:   %34 = call %"{{.*}}/runtime/internal/runtime.String" @"{{.*}}/runtime/internal/runtime.StringCat"(%"{{.*}}/runtime/internal/runtime.String" %1, %"{{.*}}/runtime/internal/runtime.String" { ptr @2, i64 9 })
// CHECK-NEXT:   call void @"{{.*}}/cl/_testrt/eface.dumpUncommon"(ptr %33, %"{{.*}}/runtime/internal/runtime.String" %34)
// CHECK-NEXT:   br label %_llgo_4
// CHECK-NEXT: }
func dumpTyp(t *abi.Type, sep string) {
	print(sep)
	println(t.String(), t.Kind(), t.Size_, t.PtrBytes, t.Hash, t.TFlag, t.Align_, t.PtrToThis_, t.Uncommon())
	if t.Elem() != nil {
		dumpTyp(t.Elem(), sep+"\telem: ")
	}
	if t.Uncommon() != nil {
		dumpUncommon(t.Uncommon(), sep+"\tuncomm: ")
		if t.PtrToThis_ != nil {
			dumpUncommon(t.PtrToThis_.Uncommon(), sep+"\tuncomm: ")
		}
	}
}

// CHECK-LABEL: define void @"{{.*}}/cl/_testrt/eface.dumpUncommon"(ptr %0, %"{{.*}}/runtime/internal/runtime.String" %1) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" %1)
// CHECK-NEXT:   %2 = getelementptr inbounds %"{{.*}}/runtime/abi.UncommonType", ptr %0, i32 0, i32 0
// CHECK-NEXT:   %3 = load %"{{.*}}/runtime/internal/runtime.String", ptr %2, align 8
// CHECK-NEXT:   %4 = getelementptr inbounds %"{{.*}}/runtime/abi.UncommonType", ptr %0, i32 0, i32 1
// CHECK-NEXT:   %5 = load i16, ptr %4, align 2
// CHECK-NEXT:   %6 = getelementptr inbounds %"{{.*}}/runtime/abi.UncommonType", ptr %0, i32 0, i32 2
// CHECK-NEXT:   %7 = load i16, ptr %6, align 2
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" %3)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   %8 = zext i16 %5 to i64
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintUint"(i64 %8)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   %9 = zext i16 %7 to i64
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintUint"(i64 %9)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   ret void
// CHECK-NEXT: }

func dumpUncommon(u *abi.UncommonType, sep string) {
	print(sep)
	println(u.PkgPath_, u.Mcount, u.Xcount)
}

type T string

type eface struct {
	_type *abi.Type
	data  unsafe.Pointer
}

// CHECK-LABEL: define void @"{{.*}}/cl/_testrt/eface.main"() {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   call void @"{{.*}}/cl/_testrt/eface.dump"(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_bool, ptr inttoptr (i64 -1 to ptr) })
// CHECK-NEXT:   call void @"{{.*}}/cl/_testrt/eface.dump"(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr null })
// CHECK-NEXT:   call void @"{{.*}}/cl/_testrt/eface.dump"(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int8, ptr null })
// CHECK-NEXT:   call void @"{{.*}}/cl/_testrt/eface.dump"(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int16, ptr null })
// CHECK-NEXT:   call void @"{{.*}}/cl/_testrt/eface.dump"(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int32, ptr null })
// CHECK-NEXT:   call void @"{{.*}}/cl/_testrt/eface.dump"(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int64, ptr null })
// CHECK-NEXT:   call void @"{{.*}}/cl/_testrt/eface.dump"(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_uint, ptr null })
// CHECK-NEXT:   call void @"{{.*}}/cl/_testrt/eface.dump"(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_uint8, ptr null })
// CHECK-NEXT:   call void @"{{.*}}/cl/_testrt/eface.dump"(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_uint16, ptr null })
// CHECK-NEXT:   call void @"{{.*}}/cl/_testrt/eface.dump"(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_uint32, ptr null })
// CHECK-NEXT:   call void @"{{.*}}/cl/_testrt/eface.dump"(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_uint64, ptr null })
// CHECK-NEXT:   call void @"{{.*}}/cl/_testrt/eface.dump"(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_uintptr, ptr null })
// CHECK-NEXT:   call void @"{{.*}}/cl/_testrt/eface.dump"(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_float32, ptr null })
// CHECK-NEXT:   call void @"{{.*}}/cl/_testrt/eface.dump"(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_float64, ptr null })
// CHECK-NEXT:   %0 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 80)
// CHECK-NEXT:   store [10 x i64] zeroinitializer, ptr %0, align 4
// CHECK-NEXT:   %1 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @"[10]_llgo_int", ptr undef }, ptr %0, 1
// CHECK-NEXT:   call void @"{{.*}}/cl/_testrt/eface.dump"(%"{{.*}}/runtime/internal/runtime.eface" %1)
// CHECK-NEXT:   %2 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/eface.main$1", ptr null }, ptr %2, align 8
// CHECK-NEXT:   %3 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr undef }, ptr %2, 1
// CHECK-NEXT:   call void @"{{.*}}/cl/_testrt/eface.dump"(%"{{.*}}/runtime/internal/runtime.eface" %3)
// CHECK-NEXT:   call void @"{{.*}}/cl/_testrt/eface.dump"(%"{{.*}}/runtime/internal/runtime.eface" { ptr @"*_llgo_int", ptr null })
// CHECK-NEXT:   %4 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 0)
// CHECK-NEXT:   %5 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" undef, ptr %4, 0
// CHECK-NEXT:   %6 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %5, i64 0, 1
// CHECK-NEXT:   %7 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %6, i64 0, 2
// CHECK-NEXT:   %8 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 24)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.Slice" %7, ptr %8, align 8
// CHECK-NEXT:   %9 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @"[]_llgo_int", ptr undef }, ptr %8, 1
// CHECK-NEXT:   call void @"{{.*}}/cl/_testrt/eface.dump"(%"{{.*}}/runtime/internal/runtime.eface" %9)
// CHECK-NEXT:   %10 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @24, i64 5 }, ptr %10, align 8
// CHECK-NEXT:   %11 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %10, 1
// CHECK-NEXT:   call void @"{{.*}}/cl/_testrt/eface.dump"(%"{{.*}}/runtime/internal/runtime.eface" %11)
// CHECK-NEXT:   %12 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 24)
// CHECK-NEXT:   store { i8, i64, i64 } zeroinitializer, ptr %12, align 4
// CHECK-NEXT:   %13 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @"{{.*}}/cl/_testrt/eface.struct$RKbUG45GE4henGMAdmt0Rju0JptyR8NsX7IZLsOI0OM", ptr undef }, ptr %12, 1
// CHECK-NEXT:   call void @"{{.*}}/cl/_testrt/eface.dump"(%"{{.*}}/runtime/internal/runtime.eface" %13)
// CHECK-NEXT:   %14 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" zeroinitializer, ptr %14, align 8
// CHECK-NEXT:   %15 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/eface.T", ptr undef }, ptr %14, 1
// CHECK-NEXT:   call void @"{{.*}}/cl/_testrt/eface.dump"(%"{{.*}}/runtime/internal/runtime.eface" %15)
// CHECK-NEXT:   ret void
// CHECK-NEXT: }
func main() {
	dump(true)
	dump(0)
	dump(int8(0))
	dump(int16(0))
	dump(int32(0))
	dump(int64(0))
	dump(uint(0))
	dump(uint8(0))
	dump(uint16(0))
	dump(uint32(0))
	dump(uint64(0))
	dump(uintptr(0))
	dump(float32(0))
	dump(float64(0))
	dump([10]int{})
	dump(func() {})
	// CHECK-LABEL: define void @"{{.*}}/cl/_testrt/eface.main$1"() {
	// CHECK-NEXT: _llgo_0:
	// CHECK-NEXT:   ret void
	// CHECK-NEXT: }
	dump((*int)(nil))
	dump([]int{})
	dump("hello")
	dump(struct {
		x int8
		y int
		z int
	}{})
	var t T
	dump(t)
}

// CHECK-LABEL: define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/eface.main$1"(ptr %0) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   tail call void @"{{.*}}/cl/_testrt/eface.main$1"()
// CHECK-NEXT:   ret void
// CHECK-NEXT: }
