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
// CHECK-NEXT:   %6 = call ptr @"g{{.*}}/runtime/internal/runtime.AllocU"(i64 8)
// CHECK-NEXT:   store i64 0, ptr %6, align 4
// CHECK-NEXT:   %7 = insertvalue %"g{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %6, 1
// CHECK-NEXT:   %8 = call %"g{{.*}}/runtime/internal/runtime.iface" @reflect.TypeOf(%"g{{.*}}/runtime/internal/runtime.eface" %7)
// CHECK-NEXT:   store %"g{{.*}}/runtime/internal/runtime.iface" %8, ptr %5, align 8
// CHECK: call %"g{{.*}}/runtime/internal/runtime.iface" @reflect.FuncOf
// CHECK: call %reflect.Value @reflect.MakeFunc
// CHECK: call %"g{{.*}}/runtime/internal/runtime.eface" @reflect.Value.Interface
// CHECK: call i1 @"g{{.*}}/runtime/internal/runtime.MatchesClosure"
// CHECK: call %"g{{.*}}/runtime/internal/runtime.String" {{%[0-9]+}}(
// CHECK: call i1 @"g{{.*}}/runtime/internal/runtime.StringEqual"
// CHECK: }
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
