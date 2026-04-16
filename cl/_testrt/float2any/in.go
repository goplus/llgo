// LITTEST
package main

// CHECK-LABEL: define void @"{{.*}}/cl/_testrt/float2any.check32"(%"{{.*}}/runtime/internal/runtime.eface" %0) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %1 = extractvalue %"{{.*}}/runtime/internal/runtime.eface" %0, 0
// CHECK-NEXT:   %2 = icmp eq ptr %1, @_llgo_float32
// CHECK-NEXT:   br i1 %2, label %_llgo_3, label %_llgo_4
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_1:                                          ; preds = %_llgo_3
// CHECK-NEXT:   %3 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @3, i64 9 }, ptr %3, align 8
// CHECK-NEXT:   %4 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %3, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %4)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_2:                                          ; preds = %_llgo_3
// CHECK-NEXT:   ret void
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_3:                                          ; preds = %_llgo_0
// CHECK-NEXT:   %5 = extractvalue %"{{.*}}/runtime/internal/runtime.eface" %0, 1
// CHECK-NEXT:   %6 = ptrtoint ptr %5 to i64
// CHECK-NEXT:   %7 = trunc i64 %6 to i32
// CHECK-NEXT:   %8 = bitcast i32 %7 to float
// CHECK-NEXT:   %9 = fcmp une float %8, 0x400921FB60000000
// CHECK-NEXT:   br i1 %9, label %_llgo_1, label %_llgo_2
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_4:                                          ; preds = %_llgo_0
// CHECK-NEXT:   %10 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @1, i64 36 }, ptr %10, align 8
// CHECK-NEXT:   %11 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %10, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %11)
// CHECK-NEXT:   unreachable
// CHECK-NEXT: }
const pi = 3.14159265

func check32(v any) {
	if v.(float32) != pi {
		panic("error f32")
	}
}

// CHECK-LABEL: define void @"{{.*}}/cl/_testrt/float2any.check64"(%"{{.*}}/runtime/internal/runtime.eface" %0) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %1 = extractvalue %"{{.*}}/runtime/internal/runtime.eface" %0, 0
// CHECK-NEXT:   %2 = icmp eq ptr %1, @_llgo_float64
// CHECK-NEXT:   br i1 %2, label %_llgo_3, label %_llgo_4
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_1:                                          ; preds = %_llgo_3
// CHECK-NEXT:   %3 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @6, i64 9 }, ptr %3, align 8
// CHECK-NEXT:   %4 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %3, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %4)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_2:                                          ; preds = %_llgo_3
// CHECK-NEXT:   ret void
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_3:                                          ; preds = %_llgo_0
// CHECK-NEXT:   %5 = extractvalue %"{{.*}}/runtime/internal/runtime.eface" %0, 1
// CHECK-NEXT:   %6 = ptrtoint ptr %5 to i64
// CHECK-NEXT:   %7 = bitcast i64 %6 to double
// CHECK-NEXT:   %8 = fcmp une double %7, 0x400921FB53C8D4F1
// CHECK-NEXT:   br i1 %8, label %_llgo_1, label %_llgo_2
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_4:                                          ; preds = %_llgo_0
// CHECK-NEXT:   %9 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @5, i64 36 }, ptr %9, align 8
// CHECK-NEXT:   %10 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %9, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %10)
// CHECK-NEXT:   unreachable
// CHECK-NEXT: }
func check64(v any) {
	if v.(float64) != pi {
		panic("error f64")
	}
}

// CHECK-LABEL: define float @"{{.*}}/cl/_testrt/float2any.f32"() {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   ret float 0x400921FB60000000
// CHECK-NEXT: }
func f32() float32 {
	return pi
}

// CHECK-LABEL: define double @"{{.*}}/cl/_testrt/float2any.f64"() {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   ret double 0x400921FB53C8D4F1
// CHECK-NEXT: }
func f64() float64 {
	return pi
}

// CHECK-LABEL: define void @"{{.*}}/cl/_testrt/float2any.main"() {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %0 = call float @"{{.*}}/cl/_testrt/float2any.f32"()
// CHECK-NEXT:   %1 = bitcast float %0 to i32
// CHECK-NEXT:   %2 = inttoptr i32 %1 to ptr
// CHECK-NEXT:   %3 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_float32, ptr undef }, ptr %2, 1
// CHECK-NEXT:   call void @"{{.*}}/cl/_testrt/float2any.check32"(%"{{.*}}/runtime/internal/runtime.eface" %3)
// CHECK-NEXT:   %4 = call double @"{{.*}}/cl/_testrt/float2any.f64"()
// CHECK-NEXT:   %5 = bitcast double %4 to i64
// CHECK-NEXT:   %6 = inttoptr i64 %5 to ptr
// CHECK-NEXT:   %7 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_float64, ptr undef }, ptr %6, 1
// CHECK-NEXT:   call void @"{{.*}}/cl/_testrt/float2any.check64"(%"{{.*}}/runtime/internal/runtime.eface" %7)
// CHECK-NEXT:   ret void
// CHECK-NEXT: }
func main() {
	check32(f32())
	check64(f64())
}
