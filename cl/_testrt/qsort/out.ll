; ModuleID = 'github.com/goplus/llgo/cl/_testrt/qsort'
source_filename = "github.com/goplus/llgo/cl/_testrt/qsort"

@"github.com/goplus/llgo/cl/_testrt/qsort.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testrt/qsort.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
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
  %7 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = load [5 x i64], ptr %0, align 4
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi i64 [ -1, %_llgo_0 ], [ %10, %_llgo_2 ]
  %10 = add i64 %9, 1
  %11 = icmp slt i64 %10, 5
  br i1 %11, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %12 = icmp slt i64 %10, 0
  %13 = icmp sge i64 %10, 5
  %14 = or i1 %13, %12
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %14)
  %15 = getelementptr inbounds i64, ptr %0, i64 %10
  %16 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %16)
  %17 = load i64, ptr %15, align 4
  %18 = call i32 (ptr, ...) @printf(ptr @0, i64 %17)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsort.main$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = load i64, ptr %0, align 4
  %4 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load i64, ptr %1, align 4
  %6 = sub i64 %3, %5
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @qsort(ptr, i64, i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare i32 @printf(ptr, ...)
