// LITTEST
package main

import (
	"unsafe"

	"github.com/goplus/llgo/runtime/abi"
)

// CHECK-LABEL: define void @"{{.*}}/cl/_testrt/abitype.main"() {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %0 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int32, ptr null }, ptr %0, align 8
// CHECK-NEXT:   %1 = getelementptr inbounds %"{{.*}}/cl/_testrt/abitype.eface", ptr %0, i32 0, i32 0
// CHECK-NEXT:   %2 = load ptr, ptr %1, align 8
// CHECK-NEXT:   %3 = call %"{{.*}}/runtime/internal/runtime.String" @"{{.*}}/runtime/abi.(*Type).String"(ptr %2)
// CHECK-NEXT:   %4 = call i1 @"{{.*}}/runtime/internal/runtime.StringEqual"(%"{{.*}}/runtime/internal/runtime.String" %3, %"{{.*}}/runtime/internal/runtime.String" { ptr @0, i64 5 })
// CHECK-NEXT:   %5 = xor i1 %4, true
// CHECK-NEXT:   br i1 %5, label %_llgo_1, label %_llgo_2
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_1:                                          ; preds = %_llgo_0
// CHECK-NEXT:   %6 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @1, i64 14 }, ptr %6, align 8
// CHECK-NEXT:   %7 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %6, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %7)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_2:                                          ; preds = %_llgo_0
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_uint8, ptr null }, ptr %0, align 8
// CHECK-NEXT:   %8 = getelementptr inbounds %"{{.*}}/cl/_testrt/abitype.eface", ptr %0, i32 0, i32 0
// CHECK-NEXT:   %9 = load ptr, ptr %8, align 8
// CHECK-NEXT:   %10 = call %"{{.*}}/runtime/internal/runtime.String" @"{{.*}}/runtime/abi.(*Type).String"(ptr %9)
// CHECK-NEXT:   %11 = call i1 @"{{.*}}/runtime/internal/runtime.StringEqual"(%"{{.*}}/runtime/internal/runtime.String" %10, %"{{.*}}/runtime/internal/runtime.String" { ptr @3, i64 5 })
// CHECK-NEXT:   %12 = xor i1 %11, true
// CHECK-NEXT:   br i1 %12, label %_llgo_3, label %_llgo_4
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_3:                                          ; preds = %_llgo_2
// CHECK-NEXT:   %13 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @4, i64 14 }, ptr %13, align 8
// CHECK-NEXT:   %14 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %13, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %14)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_4:                                          ; preds = %_llgo_2
// CHECK-NEXT:   ret void
// CHECK-NEXT: }

type eface struct {
	typ  *abi.Type
	data unsafe.Pointer
}

func main() {
	var v any = rune(0)
	t := (*eface)(unsafe.Pointer(&v)).typ
	if t.String() != "int32" {
		panic("abi rune error")
	}
	v = byte(0)
	t = (*eface)(unsafe.Pointer(&v)).typ
	if t.String() != "uint8" {
		panic("abi byte error")
	}
}
