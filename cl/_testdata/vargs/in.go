// LITTEST
package main

import "github.com/goplus/lib/c"

// CHECK-LABEL: define void @"{{.*}}cl/_testdata/vargs.main"() {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %0 = call ptr @"{{.*}}runtime/internal/runtime.AllocZ"(i64 48)
// CHECK-NEXT:   %1 = getelementptr inbounds %"{{.*}}runtime/internal/runtime.eface", ptr %0, i64 0
// CHECK-NEXT:   store %"{{.*}}runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 1 to ptr) }, ptr %1, align 8
// CHECK-NEXT:   %2 = getelementptr inbounds %"{{.*}}runtime/internal/runtime.eface", ptr %0, i64 1
// CHECK-NEXT:   store %"{{.*}}runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 2 to ptr) }, ptr %2, align 8
// CHECK-NEXT:   %3 = getelementptr inbounds %"{{.*}}runtime/internal/runtime.eface", ptr %0, i64 2
// CHECK-NEXT:   store %"{{.*}}runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 3 to ptr) }, ptr %3, align 8
// CHECK-NEXT:   %4 = insertvalue %"{{.*}}runtime/internal/runtime.Slice" undef, ptr %0, 0
// CHECK-NEXT:   %5 = insertvalue %"{{.*}}runtime/internal/runtime.Slice" %4, i64 3, 1
// CHECK-NEXT:   %6 = insertvalue %"{{.*}}runtime/internal/runtime.Slice" %5, i64 3, 2
// CHECK-NEXT:   call void @"{{.*}}cl/_testdata/vargs.test"(%"{{.*}}runtime/internal/runtime.Slice" %6)
// CHECK-NEXT:   ret void
// CHECK-NEXT: }
func main() {
	test(1, 2, 3)
}

// CHECK-LABEL: define void @"{{.*}}cl/_testdata/vargs.test"(%"{{.*}}runtime/internal/runtime.Slice" %0) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %1 = extractvalue %"{{.*}}runtime/internal/runtime.Slice" %0, 1
// CHECK-NEXT:   br label %_llgo_1
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_1:                                          ; preds = %_llgo_4, %_llgo_0
// CHECK-NEXT:   %2 = phi i64 [ -1, %_llgo_0 ], [ %3, %_llgo_4 ]
// CHECK-NEXT:   %3 = add i64 %2, 1
// CHECK-NEXT:   %4 = icmp slt i64 %3, %1
// CHECK-NEXT:   br i1 %4, label %_llgo_2, label %_llgo_3
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_2:                                          ; preds = %_llgo_1
// CHECK-NEXT:   %5 = extractvalue %"{{.*}}runtime/internal/runtime.Slice" %0, 0
// CHECK-NEXT:   %6 = extractvalue %"{{.*}}runtime/internal/runtime.Slice" %0, 1
// CHECK-NEXT:   %7 = icmp slt i64 %3, 0
// CHECK-NEXT:   %8 = icmp sge i64 %3, %6
// CHECK-NEXT:   %9 = or i1 %8, %7
// CHECK-NEXT:   call void @"{{.*}}runtime/internal/runtime.AssertIndexRange"(i1 %9)
// CHECK-NEXT:   %10 = getelementptr inbounds %"{{.*}}runtime/internal/runtime.eface", ptr %5, i64 %3
// CHECK-NEXT:   %11 = load %"{{.*}}runtime/internal/runtime.eface", ptr %10, align 8
// CHECK-NEXT:   %12 = extractvalue %"{{.*}}runtime/internal/runtime.eface" %11, 0
// CHECK-NEXT:   %13 = icmp eq ptr %12, @_llgo_int
// CHECK-NEXT:   br i1 %13, label %_llgo_4, label %_llgo_5
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_3:                                          ; preds = %_llgo_1
// CHECK-NEXT:   ret void
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_4:                                          ; preds = %_llgo_2
// CHECK-NEXT:   %14 = extractvalue %"{{.*}}runtime/internal/runtime.eface" %11, 1
// CHECK-NEXT:   %15 = ptrtoint ptr %14 to i64
// CHECK-NEXT:   %16 = call i32 (ptr, ...) @printf(ptr @1, i64 %15)
// CHECK-NEXT:   br label %_llgo_1
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_5:                                          ; preds = %_llgo_2
// CHECK-NEXT:   %17 = call ptr @"{{.*}}runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}runtime/internal/runtime.String" { ptr @2, i64 32 }, ptr %17, align 8
// CHECK-NEXT:   %18 = insertvalue %"{{.*}}runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %17, 1
// CHECK-NEXT:   call void @"{{.*}}runtime/internal/runtime.Panic"(%"{{.*}}runtime/internal/runtime.eface" %18)
// CHECK-NEXT:   unreachable
// CHECK-NEXT: }
func test(a ...any) {
	for _, v := range a {
		c.Printf(c.Str("%d\n"), v.(int))
	}
}
