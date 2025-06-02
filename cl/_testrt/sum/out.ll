; ModuleID = 'github.com/goplus/llgo/cl/_testrt/sum'
source_filename = "github.com/goplus/llgo/cl/_testrt/sum"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/sum.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [10 x i8] c"Hello %d\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testrt/sum.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/sum.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/sum.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/sum.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %1 = getelementptr inbounds i64, ptr %0, i64 0
  store i64 1, ptr %1, align 4
  %2 = getelementptr inbounds i64, ptr %0, i64 1
  store i64 2, ptr %2, align 4
  %3 = getelementptr inbounds i64, ptr %0, i64 2
  store i64 3, ptr %3, align 4
  %4 = getelementptr inbounds i64, ptr %0, i64 3
  store i64 4, ptr %4, align 4
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %0, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 4, 1
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 4, 2
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, ptr %8, align 8
  %9 = call i64 @"github.com/goplus/llgo/cl/_testrt/sum.sum"(ptr %8)
  %10 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store i64 %9, ptr %10, align 4
  %11 = call i32 @printf(ptr @0, ptr %10)
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testrt/sum.sum"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %0, align 8
  %2 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %3 = phi i64 [ 0, %_llgo_0 ], [ %15, %_llgo_2 ]
  %4 = phi i64 [ -1, %_llgo_0 ], [ %5, %_llgo_2 ]
  %5 = add i64 %4, 1
  %6 = icmp slt i64 %5, %2
  br i1 %6, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %7 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %0, align 8
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 0
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 1
  %10 = icmp slt i64 %5, 0
  %11 = icmp sge i64 %5, %9
  %12 = or i1 %11, %10
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %12)
  %13 = getelementptr inbounds i64, ptr %8, i64 %5
  %14 = load i64, ptr %13, align 4
  %15 = add i64 %3, %14
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret i64 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare i32 @printf(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)
