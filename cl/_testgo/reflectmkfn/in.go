// LITTEST
package main

import (
	"reflect"
	"strings"
)

// CHECK-LABEL: define void @"g{{.*}}/cl/_testgo/reflectmkfn.main"() {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %0 = call ptr @"g{{.*}}/runtime/internal/runtime.AllocZ"(i64 32)
// CHECK-NEXT:   %1 = getelementptr inbounds %"g{{.*}}/runtime/internal/runtime.iface", ptr %0, i64 0
// CHECK-NEXT:   %2 = call ptr @"g{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"g{{.*}}/runtime/internal/runtime.String" zeroinitializer, ptr %2, align 8
// CHECK-NEXT:   %3 = insertvalue %"g{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %2, 1
// CHECK-NEXT:   %4 = call %"g{{.*}}/runtime/internal/runtime.iface" @reflect.TypeOf(%"g{{.*}}/runtime/internal/runtime.eface" %3)
// CHECK-NEXT:   store %"g{{.*}}/runtime/internal/runtime.iface" %4, ptr %1, align 8
// CHECK-NEXT:   %5 = getelementptr inbounds %"g{{.*}}/runtime/internal/runtime.iface", ptr %0, i64 1
// CHECK-NEXT:   %6 = call %"g{{.*}}/runtime/internal/runtime.iface" @reflect.TypeOf(%"g{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr null })
// CHECK-NEXT:   store %"g{{.*}}/runtime/internal/runtime.iface" %6, ptr %5, align 8
// CHECK-NEXT:   %7 = insertvalue %"g{{.*}}/runtime/internal/runtime.Slice" undef, ptr %0, 0
// CHECK-NEXT:   %8 = insertvalue %"g{{.*}}/runtime/internal/runtime.Slice" %7, i64 2, 1
// CHECK-NEXT:   %9 = insertvalue %"g{{.*}}/runtime/internal/runtime.Slice" %8, i64 2, 2
// CHECK-NEXT:   %10 = call ptr @"g{{.*}}/runtime/internal/runtime.AllocZ"(i64 16)
// CHECK-NEXT:   %11 = getelementptr inbounds %"g{{.*}}/runtime/internal/runtime.iface", ptr %10, i64 0
// CHECK-NEXT:   %12 = call ptr @"g{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"g{{.*}}/runtime/internal/runtime.String" zeroinitializer, ptr %12, align 8
// CHECK-NEXT:   %13 = insertvalue %"g{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %12, 1
// CHECK-NEXT:   %14 = call %"g{{.*}}/runtime/internal/runtime.iface" @reflect.TypeOf(%"g{{.*}}/runtime/internal/runtime.eface" %13)
// CHECK-NEXT:   store %"g{{.*}}/runtime/internal/runtime.iface" %14, ptr %11, align 8
// CHECK-NEXT:   %15 = insertvalue %"g{{.*}}/runtime/internal/runtime.Slice" undef, ptr %10, 0
// CHECK-NEXT:   %16 = insertvalue %"g{{.*}}/runtime/internal/runtime.Slice" %15, i64 1, 1
// CHECK-NEXT:   %17 = insertvalue %"g{{.*}}/runtime/internal/runtime.Slice" %16, i64 1, 2
// CHECK-NEXT:   %18 = call %"g{{.*}}/runtime/internal/runtime.iface" @reflect.FuncOf(%"g{{.*}}/runtime/internal/runtime.Slice" %9, %"g{{.*}}/runtime/internal/runtime.Slice" %17, i1 false)
// CHECK-NEXT:   %19 = call %reflect.Value @reflect.MakeFunc(%"g{{.*}}/runtime/internal/runtime.iface" %18, { ptr, ptr } { ptr @"__llgo_stub.g{{.*}}/cl/_testgo/reflectmkfn.main$1", ptr null })
// CHECK-NEXT:   %20 = call %"g{{.*}}/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %19)
// CHECK-NEXT:   %21 = extractvalue %"g{{.*}}/runtime/internal/runtime.eface" %20, 0
// CHECK-NEXT:   %22 = call i1 @"g{{.*}}/runtime/internal/runtime.MatchesClosure"(ptr @"_llgo_closure$XBbb2Vd9fa-WWUcWFPjreitD8Eex4qtMIsPbz__3VQU", ptr %21)
// CHECK-NEXT:   br i1 %22, label %_llgo_3, label %_llgo_4
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_1:                                          ; preds = %_llgo_3
// CHECK-NEXT:   %23 = call ptr @"g{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"g{{.*}}/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr %23, align 8
// CHECK-NEXT:   %24 = insertvalue %"g{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %23, 1
// CHECK-NEXT:   call void @"g{{.*}}/runtime/internal/runtime.Panic"(%"g{{.*}}/runtime/internal/runtime.eface" %24)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_2:                                          ; preds = %_llgo_3
// CHECK-NEXT:   ret void
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_3:                                          ; preds = %_llgo_0
// CHECK-NEXT:   %25 = extractvalue %"g{{.*}}/runtime/internal/runtime.eface" %20, 1
// CHECK-NEXT:   %26 = load { ptr, ptr }, ptr %25, align 8
// CHECK-NEXT:   %27 = extractvalue { ptr, ptr } %26, 1
// CHECK-NEXT:   %28 = extractvalue { ptr, ptr } %26, 0
// CHECK-NEXT:   %29 = call %"g{{.*}}/runtime/internal/runtime.String" %28(ptr %27, %"g{{.*}}/runtime/internal/runtime.String" { ptr @8, i64 3 }, i64 2)
// CHECK-NEXT:   %30 = call i1 @"g{{.*}}/runtime/internal/runtime.StringEqual"(%"g{{.*}}/runtime/internal/runtime.String" %29, %"g{{.*}}/runtime/internal/runtime.String" { ptr @9, i64 6 })
// CHECK-NEXT:   %31 = xor i1 %30, true
// CHECK-NEXT:   br i1 %31, label %_llgo_1, label %_llgo_2
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_4:                                          ; preds = %_llgo_0
// CHECK-NEXT:   %32 = call ptr @"g{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"g{{.*}}/runtime/internal/runtime.String" { ptr @7, i64 94 }, ptr %32, align 8
// CHECK-NEXT:   %33 = insertvalue %"g{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %32, 1
// CHECK-NEXT:   call void @"g{{.*}}/runtime/internal/runtime.Panic"(%"g{{.*}}/runtime/internal/runtime.eface" %33)
// CHECK-NEXT:   unreachable
// CHECK-NEXT: }
func main() {
	typ := reflect.FuncOf([]reflect.Type{reflect.TypeOf(""), reflect.TypeOf(0)}, []reflect.Type{reflect.TypeOf("")}, false)
	fn := reflect.MakeFunc(typ, func(args []reflect.Value) []reflect.Value {
		r := strings.Repeat(args[0].String(), int(args[1].Int()))
		return []reflect.Value{reflect.ValueOf(r)}
	})
	r := fn.Interface().(func(string, int) string)("abc", 2)
	if r != "abcabc" {
		panic("error")
	}
}

// CHECK-LABEL: define %"g{{.*}}/runtime/internal/runtime.Slice" @"g{{.*}}/cl/_testgo/reflectmkfn.main$1"(%"g{{.*}}/runtime/internal/runtime.Slice" %0) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %1 = extractvalue %"g{{.*}}/runtime/internal/runtime.Slice" %0, 0
// CHECK-NEXT:   %2 = extractvalue %"g{{.*}}/runtime/internal/runtime.Slice" %0, 1
// CHECK-NEXT:   %3 = icmp sge i64 0, %2
// CHECK-NEXT:   call void @"g{{.*}}/runtime/internal/runtime.AssertIndexRange"(i1 %3)
// CHECK-NEXT:   %4 = getelementptr inbounds %reflect.Value, ptr %1, i64 0
// CHECK-NEXT:   %5 = load %reflect.Value, ptr %4, align 8
// CHECK-NEXT:   %6 = call %"g{{.*}}/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %5)
// CHECK-NEXT:   %7 = extractvalue %"g{{.*}}/runtime/internal/runtime.Slice" %0, 0
// CHECK-NEXT:   %8 = extractvalue %"g{{.*}}/runtime/internal/runtime.Slice" %0, 1
// CHECK-NEXT:   %9 = icmp sge i64 1, %8
// CHECK-NEXT:   call void @"g{{.*}}/runtime/internal/runtime.AssertIndexRange"(i1 %9)
// CHECK-NEXT:   %10 = getelementptr inbounds %reflect.Value, ptr %7, i64 1
// CHECK-NEXT:   %11 = load %reflect.Value, ptr %10, align 8
// CHECK-NEXT:   %12 = call i64 @reflect.Value.Int(%reflect.Value %11)
// CHECK-NEXT:   %13 = call %"g{{.*}}/runtime/internal/runtime.String" @strings.Repeat(%"g{{.*}}/runtime/internal/runtime.String" %6, i64 %12)
// CHECK-NEXT:   %14 = call ptr @"g{{.*}}/runtime/internal/runtime.AllocZ"(i64 24)
// CHECK-NEXT:   %15 = getelementptr inbounds %reflect.Value, ptr %14, i64 0
// CHECK-NEXT:   %16 = call ptr @"g{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"g{{.*}}/runtime/internal/runtime.String" %13, ptr %16, align 8
// CHECK-NEXT:   %17 = insertvalue %"g{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %16, 1
// CHECK-NEXT:   %18 = call %reflect.Value @reflect.ValueOf(%"g{{.*}}/runtime/internal/runtime.eface" %17)
// CHECK-NEXT:   store %reflect.Value %18, ptr %15, align 8
// CHECK-NEXT:   %19 = insertvalue %"g{{.*}}/runtime/internal/runtime.Slice" undef, ptr %14, 0
// CHECK-NEXT:   %20 = insertvalue %"g{{.*}}/runtime/internal/runtime.Slice" %19, i64 1, 1
// CHECK-NEXT:   %21 = insertvalue %"g{{.*}}/runtime/internal/runtime.Slice" %20, i64 1, 2
// CHECK-NEXT:   ret %"g{{.*}}/runtime/internal/runtime.Slice" %21
// CHECK-NEXT: }
