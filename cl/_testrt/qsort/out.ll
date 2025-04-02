; ModuleID = 'github.com/goplus/llgo/cl/_testrt/qsort'
source_filename = "github.com/goplus/llgo/cl/_testrt/qsort"

@"github.com/goplus/llgo/cl/_testrt/qsort.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testrt/qsort.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/qsort.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/qsort.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/qsort.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %1 = getelementptr inbounds i64, ptr %0, i64 0
  %2 = getelementptr inbounds i64, ptr %0, i64 1
  %3 = getelementptr inbounds i64, ptr %0, i64 2
  %4 = getelementptr inbounds i64, ptr %0, i64 3
  %5 = getelementptr inbounds i64, ptr %0, i64 4
  store i64 100, ptr %1, align 4
  store i64 8, ptr %2, align 4
  store i64 23, ptr %3, align 4
  store i64 2, ptr %4, align 4
  store i64 7, ptr %5, align 4
  %6 = getelementptr inbounds i64, ptr %0, i64 0
  call void @qsort(ptr %6, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsort.main$1")
  %7 = load [5 x i64], ptr %0, align 4
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %8 = phi i64 [ -1, %_llgo_0 ], [ %9, %_llgo_2 ]
  %9 = add i64 %8, 1
  %10 = icmp slt i64 %9, 5
  br i1 %10, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %11 = icmp slt i64 %9, 0
  %12 = icmp sge i64 %9, 5
  %13 = or i1 %12, %11
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %13)
  %14 = getelementptr inbounds i64, ptr %0, i64 %9
  %15 = load i64, ptr %14, align 4
  %16 = call i32 (ptr, ...) @printf(ptr @0, i64 %15)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsort.main$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load i64, ptr %0, align 4
  %3 = load i64, ptr %1, align 4
  %4 = sub i64 %2, %3
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @qsort(ptr, i64, i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare i32 @printf(ptr, ...)
