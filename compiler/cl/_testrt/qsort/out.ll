; ModuleID = 'main'
source_filename = "main"

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define i32 @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init"()
  call void @main.init()
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %3 = getelementptr inbounds i64, ptr %2, i64 0
  %4 = getelementptr inbounds i64, ptr %2, i64 1
  %5 = getelementptr inbounds i64, ptr %2, i64 2
  %6 = getelementptr inbounds i64, ptr %2, i64 3
  %7 = getelementptr inbounds i64, ptr %2, i64 4
  store i64 100, ptr %3, align 4
  store i64 8, ptr %4, align 4
  store i64 23, ptr %5, align 4
  store i64 2, ptr %6, align 4
  store i64 7, ptr %7, align 4
  %8 = getelementptr inbounds i64, ptr %2, i64 0
  call void @qsort(ptr %8, i64 5, i64 8, ptr @"main.main$1")
  %9 = load [5 x i64], ptr %2, align 4
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %10 = phi i64 [ -1, %_llgo_0 ], [ %11, %_llgo_2 ]
  %11 = add i64 %10, 1
  %12 = icmp slt i64 %11, 5
  br i1 %12, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %13 = icmp slt i64 %11, 0
  %14 = icmp sge i64 %11, 5
  %15 = or i1 %14, %13
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %15)
  %16 = getelementptr inbounds i64, ptr %2, i64 %11
  %17 = load i64, ptr %16, align 4
  %18 = call i32 (ptr, ...) @printf(ptr @0, i64 %17)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret i32 0
}

define i32 @"main.main$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load i64, ptr %0, align 4
  %3 = load i64, ptr %1, align 4
  %4 = sub i64 %2, %3
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @qsort(ptr, i64, i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare i32 @printf(ptr, ...)
