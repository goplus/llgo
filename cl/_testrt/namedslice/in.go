// LITTEST
package main

type MyBytes []byte

// CHECK-LABEL: define void @"{{.*}}/cl/_testrt/namedslice.main"() {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %0 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 0)
// CHECK-NEXT:   %1 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" undef, ptr %0, 0
// CHECK-NEXT:   %2 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %1, i64 0, 1
// CHECK-NEXT:   %3 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %2, i64 0, 2
// CHECK-NEXT:   %4 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 24)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.Slice" %3, ptr %4, align 8
// CHECK-NEXT:   %5 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/namedslice.MyBytes", ptr undef }, ptr %4, 1
// CHECK-NEXT:   %6 = extractvalue %"{{.*}}/runtime/internal/runtime.eface" %5, 0
// CHECK-NEXT:   %7 = icmp eq ptr %6, @"_llgo_github.com/goplus/llgo/cl/_testrt/namedslice.MyBytes"
// CHECK-NEXT:   br i1 %7, label %_llgo_3, label %_llgo_4
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_1:                                          ; preds = %_llgo_5
// CHECK-NEXT:   %8 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @3, i64 9 }, ptr %8, align 8
// CHECK-NEXT:   %9 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %8, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %9)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_2:                                          ; preds = %_llgo_5
// CHECK-NEXT:   ret void
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_3:                                          ; preds = %_llgo_0
// CHECK-NEXT:   %10 = extractvalue %"{{.*}}/runtime/internal/runtime.eface" %5, 1
// CHECK-NEXT:   %11 = load %"{{.*}}/runtime/internal/runtime.Slice", ptr %10, align 8
// CHECK-NEXT:   %12 = insertvalue { %"{{.*}}/runtime/internal/runtime.Slice", i1 } undef, %"{{.*}}/runtime/internal/runtime.Slice" %11, 0
// CHECK-NEXT:   %13 = insertvalue { %"{{.*}}/runtime/internal/runtime.Slice", i1 } %12, i1 true, 1
// CHECK-NEXT:   br label %_llgo_5
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_4:                                          ; preds = %_llgo_0
// CHECK-NEXT:   br label %_llgo_5
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
// CHECK-NEXT:   %14 = phi { %"{{.*}}/runtime/internal/runtime.Slice", i1 } [ %13, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
// CHECK-NEXT:   %15 = extractvalue { %"{{.*}}/runtime/internal/runtime.Slice", i1 } %14, 0
// CHECK-NEXT:   %16 = extractvalue { %"{{.*}}/runtime/internal/runtime.Slice", i1 } %14, 1
// CHECK-NEXT:   br i1 %16, label %_llgo_2, label %_llgo_1
// CHECK-NEXT: }
func main() {
	var i any = MyBytes{}
	_, ok := i.(MyBytes)
	if !ok {
		panic("bad slice")
	}
}
