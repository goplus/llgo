; ModuleID = 'github.com/goplus/llgo/cl/_testpull/controlflow'
source_filename = "github.com/goplus/llgo/cl/_testpull/controlflow"

%"github.com/goplus/llgo/async.AsyncFuture[int]" = type { { ptr, ptr }, i1, i1, i64 }
%"github.com/goplus/llgo/async.Poll[int]" = type { i1, i64 }

@"github.com/goplus/llgo/cl/_testpull/controlflow.init$guard" = global i1 false, align 1

define { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" } @LoopWithBreak(i64 %0) {
_llgo_0:
  %1 = alloca { i8, i64, i64, ptr }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 32, i1 false)
  %2 = getelementptr inbounds { i8, i64, i64, ptr }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, i64, i64, ptr }, ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds { i8, i64, i64, ptr }, ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds { i8, i64, i64, ptr }, ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
  %6 = load { i8, i64, i64, ptr }, ptr %1, align 8
  ret { i8, i64, i64, ptr } %6
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

define { i1, i64 } @"LoopWithBreak$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_8 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
    i8 5, label %_llgo_6
    i8 6, label %_llgo_7
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %4, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %5, align 1
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %6 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %7 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %8 = load i1, ptr %7, align 1
  br i1 %8, label %_llgo_10, label %_llgo_9

_llgo_4:                                          ; preds = %_llgo_11, %_llgo_0
  %9 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 4, ptr %9, align 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_6:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_7:                                          ; preds = %_llgo_0
  %10 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 7, ptr %10, align 1
  ret { i1, i64 } zeroinitializer

_llgo_8:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_9:                                          ; preds = %_llgo_3
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_3
  %11 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %6, ptr %1)
  %12 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %11, ptr %12, align 4
  %13 = getelementptr inbounds { i1, i64 }, ptr %12, i32 0, i32 0
  %14 = load i1, ptr %13, align 1
  br i1 %14, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %15 = getelementptr inbounds { i1, i64 }, ptr %12, i32 0, i32 1
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %17, align 1
  br label %_llgo_4

_llgo_12:                                         ; preds = %_llgo_10
  ret { i1, i64 } zeroinitializer
}

declare %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr, ptr)

define { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" } @LoopWithContinue(i64 %0) {
_llgo_0:
  %1 = alloca { i8, i64, i64, ptr }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 32, i1 false)
  %2 = getelementptr inbounds { i8, i64, i64, ptr }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, i64, i64, ptr }, ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds { i8, i64, i64, ptr }, ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds { i8, i64, i64, ptr }, ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
  %6 = load { i8, i64, i64, ptr }, ptr %1, align 8
  ret { i8, i64, i64, ptr } %6
}

define { i1, i64 } @"LoopWithContinue$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_8 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
    i8 5, label %_llgo_6
    i8 6, label %_llgo_7
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %4, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %5, align 1
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %6 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %6, align 1
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_0
  %7 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 4, ptr %7, align 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_6:                                          ; preds = %_llgo_0
  %8 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %9 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %10 = load i1, ptr %9, align 1
  br i1 %10, label %_llgo_10, label %_llgo_9

_llgo_7:                                          ; preds = %_llgo_11, %_llgo_0
  %11 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 7, ptr %11, align 1
  ret { i1, i64 } zeroinitializer

_llgo_8:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_9:                                          ; preds = %_llgo_6
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_6
  %12 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %8, ptr %1)
  %13 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %12, ptr %13, align 4
  %14 = getelementptr inbounds { i1, i64 }, ptr %13, i32 0, i32 0
  %15 = load i1, ptr %14, align 1
  br i1 %15, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %16 = getelementptr inbounds { i1, i64 }, ptr %13, i32 0, i32 1
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 6, ptr %18, align 1
  br label %_llgo_7

_llgo_12:                                         ; preds = %_llgo_10
  ret { i1, i64 } zeroinitializer
}

define { i8, i64, i64, i64, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" } @NestedLoop(i64 %0, i64 %1) {
_llgo_0:
  %2 = alloca { i8, i64, i64, i64, i64, i64, ptr }, align 8
  call void @llvm.memset(ptr %2, i8 0, i64 56, i1 false)
  %3 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, ptr }, ptr %2, i32 0, i32 0
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, ptr }, ptr %2, i32 0, i32 1
  store i64 %0, ptr %4, align 4
  %5 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, ptr }, ptr %2, i32 0, i32 2
  store i64 %1, ptr %5, align 4
  %6 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, ptr }, ptr %2, i32 0, i32 3
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, ptr }, ptr %2, i32 0, i32 4
  store i64 0, ptr %7, align 4
  %8 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, ptr }, ptr %2, i32 0, i32 5
  store i64 0, ptr %8, align 4
  %9 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, ptr }, ptr %2, i32 0, i32 6
  store ptr null, ptr %9, align 8
  %10 = load { i8, i64, i64, i64, i64, i64, ptr }, ptr %2, align 8
  ret { i8, i64, i64, i64, i64, i64, ptr } %10
}

define { i1, i64 } @"NestedLoop$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_9 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
    i8 5, label %_llgo_6
    i8 6, label %_llgo_7
    i8 7, label %_llgo_8
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %4, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %5, align 1
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %6 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %6, align 1
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_5:                                          ; preds = %_llgo_0
  %7 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 5, ptr %7, align 1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %8 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 7
  %9 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 6
  %10 = load i1, ptr %9, align 1
  br i1 %10, label %_llgo_11, label %_llgo_10

_llgo_7:                                          ; preds = %_llgo_12, %_llgo_0
  %11 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 7, ptr %11, align 1
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_0
  %12 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 8, ptr %12, align 1
  ret { i1, i64 } zeroinitializer

_llgo_9:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_10:                                         ; preds = %_llgo_6
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_6
  %13 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %8, ptr %1)
  %14 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %13, ptr %14, align 4
  %15 = getelementptr inbounds { i1, i64 }, ptr %14, i32 0, i32 0
  %16 = load i1, ptr %15, align 1
  br i1 %16, label %_llgo_12, label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_11
  %17 = getelementptr inbounds { i1, i64 }, ptr %14, i32 0, i32 1
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 6, ptr %19, align 1
  br label %_llgo_7

_llgo_13:                                         ; preds = %_llgo_11
  ret { i1, i64 } zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.Step"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.Step$1", ptr undef }, ptr %2, 1
  %5 = call ptr @"github.com/goplus/llgo/async.Async[int]"({ ptr, ptr } %4)
  ret ptr %5
}

define void @"github.com/goplus/llgo/cl/_testpull/controlflow.Step$1"(ptr %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load i64, ptr %3, align 4
  %5 = add i64 %4, 1
  %6 = extractvalue { ptr, ptr } %1, 1
  %7 = extractvalue { ptr, ptr } %1, 0
  call void %7(ptr %6, i64 %5)
  ret void
}

define { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" } @SwitchCase(i64 %0) {
_llgo_0:
  %1 = alloca { i8, i64, i64, ptr, ptr, ptr }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 48, i1 false)
  %2 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %1, i32 0, i32 4
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %1, i32 0, i32 5
  store ptr null, ptr %7, align 8
  %8 = load { i8, i64, i64, ptr, ptr, ptr }, ptr %1, align 8
  ret { i8, i64, i64, ptr, ptr, ptr } %8
}

define { i1, i64 } @"SwitchCase$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_9 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
    i8 5, label %_llgo_6
    i8 6, label %_llgo_7
    i8 7, label %_llgo_8
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %4, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %6 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %7 = load i1, ptr %6, align 1
  br i1 %7, label %_llgo_11, label %_llgo_10

_llgo_3:                                          ; preds = %_llgo_12, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_4:                                          ; preds = %_llgo_0
  %8 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 6
  %9 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %10 = load i1, ptr %9, align 1
  br i1 %10, label %_llgo_15, label %_llgo_14

_llgo_5:                                          ; preds = %_llgo_16, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_6:                                          ; preds = %_llgo_0
  %11 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 6, ptr %11, align 1
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_0
  %12 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 8
  %13 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 7
  %14 = load i1, ptr %13, align 1
  br i1 %14, label %_llgo_19, label %_llgo_18

_llgo_8:                                          ; preds = %_llgo_20, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_9:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_10:                                         ; preds = %_llgo_2
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_2
  %15 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %5, ptr %1)
  %16 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %15, ptr %16, align 4
  %17 = getelementptr inbounds { i1, i64 }, ptr %16, i32 0, i32 0
  %18 = load i1, ptr %17, align 1
  br i1 %18, label %_llgo_12, label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_11
  %19 = getelementptr inbounds { i1, i64 }, ptr %16, i32 0, i32 1
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %21, align 1
  br label %_llgo_3

_llgo_13:                                         ; preds = %_llgo_11
  ret { i1, i64 } zeroinitializer

_llgo_14:                                         ; preds = %_llgo_4
  br label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14, %_llgo_4
  %22 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %8, ptr %1)
  %23 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %22, ptr %23, align 4
  %24 = getelementptr inbounds { i1, i64 }, ptr %23, i32 0, i32 0
  %25 = load i1, ptr %24, align 1
  br i1 %25, label %_llgo_16, label %_llgo_17

_llgo_16:                                         ; preds = %_llgo_15
  %26 = getelementptr inbounds { i1, i64 }, ptr %23, i32 0, i32 1
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 4, ptr %28, align 1
  br label %_llgo_5

_llgo_17:                                         ; preds = %_llgo_15
  ret { i1, i64 } zeroinitializer

_llgo_18:                                         ; preds = %_llgo_7
  br label %_llgo_19

_llgo_19:                                         ; preds = %_llgo_18, %_llgo_7
  %29 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %12, ptr %1)
  %30 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %29, ptr %30, align 4
  %31 = getelementptr inbounds { i1, i64 }, ptr %30, i32 0, i32 0
  %32 = load i1, ptr %31, align 1
  br i1 %32, label %_llgo_20, label %_llgo_21

_llgo_20:                                         ; preds = %_llgo_19
  %33 = getelementptr inbounds { i1, i64 }, ptr %30, i32 0, i32 1
  %34 = load i64, ptr %33, align 4
  %35 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 7, ptr %35, align 1
  br label %_llgo_8

_llgo_21:                                         ; preds = %_llgo_19
  ret { i1, i64 } zeroinitializer
}

define void @"github.com/goplus/llgo/cl/_testpull/controlflow.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.init$guard", align 1
  call void @"github.com/goplus/llgo/async.init"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define linkonce ptr @"github.com/goplus/llgo/async.Async[int]"({ ptr, ptr } %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %1, i32 0, i32 0
  store { ptr, ptr } %0, ptr %2, align 8
  ret ptr %1
}

declare void @"github.com/goplus/llgo/async.init"()

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
