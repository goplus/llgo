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
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = getelementptr inbounds i64, ptr %0, i64 0
  %3 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = getelementptr inbounds i64, ptr %0, i64 1
  %5 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = getelementptr inbounds i64, ptr %0, i64 2
  %7 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = getelementptr inbounds i64, ptr %0, i64 3
  %9 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = getelementptr inbounds i64, ptr %0, i64 4
  store i64 100, ptr %2, align 4
  store i64 8, ptr %4, align 4
  store i64 23, ptr %6, align 4
  store i64 2, ptr %8, align 4
  store i64 7, ptr %10, align 4
  %11 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = getelementptr inbounds i64, ptr %0, i64 0
  call void @qsort(ptr %12, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsort.main$1")
  %13 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = load [5 x i64], ptr %0, align 4
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %15 = phi i64 [ -1, %_llgo_0 ], [ %16, %_llgo_2 ]
  %16 = add i64 %15, 1
  %17 = icmp slt i64 %16, 5
  br i1 %17, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %18 = icmp slt i64 %16, 0
  %19 = icmp sge i64 %16, 5
  %20 = or i1 %19, %18
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %20, i64 %16, i64 5)
  %21 = getelementptr inbounds i64, ptr %0, i64 %16
  %22 = load i64, ptr %21, align 4
  %23 = call i32 (ptr, ...) @printf(ptr @0, i64 %22)
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

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @qsort(ptr, i64, i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1, i64, i64)

declare i32 @printf(ptr, ...)
