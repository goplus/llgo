; ModuleID = 'github.com/goplus/llgo/cl/_testpull/edgecases'
source_filename = "github.com/goplus/llgo/cl/_testpull/edgecases"

%"github.com/goplus/llgo/async.AsyncFuture[int]" = type { { ptr, ptr }, i1, i1, i64 }
%"github.com/goplus/llgo/async.Poll[int]" = type { i1, i64 }

@"github.com/goplus/llgo/cl/_testpull/edgecases.init$guard" = global i1 false, align 1

define { i8, i1, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" } @EarlyReturn(i1 %0) {
_llgo_0:
  %1 = alloca { i8, i1, ptr }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  %2 = getelementptr inbounds { i8, i1, ptr }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, i1, ptr }, ptr %1, i32 0, i32 1
  store i1 %0, ptr %3, align 1
  %4 = getelementptr inbounds { i8, i1, ptr }, ptr %1, i32 0, i32 2
  store ptr null, ptr %4, align 8
  %5 = load { i8, i1, ptr }, ptr %1, align 8
  ret { i8, i1, ptr } %5
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

define { i1, i64 } @"EarlyReturn$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i1, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_5 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i1, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %4, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_3:                                          ; preds = %_llgo_0
  %5 = getelementptr inbounds { i8, i1, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds { i8, i1, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %7 = load i1, ptr %6, align 1
  br i1 %7, label %_llgo_7, label %_llgo_6

_llgo_4:                                          ; preds = %_llgo_8, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_5:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_6:                                          ; preds = %_llgo_3
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_3
  %8 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %5, ptr %1)
  %9 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %8, ptr %9, align 4
  %10 = getelementptr inbounds { i1, i64 }, ptr %9, i32 0, i32 0
  %11 = load i1, ptr %10, align 1
  br i1 %11, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  %12 = getelementptr inbounds { i1, i64 }, ptr %9, i32 0, i32 1
  %13 = load i64, ptr %12, align 4
  %14 = getelementptr inbounds { i8, i1, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %14, align 1
  br label %_llgo_4

_llgo_9:                                          ; preds = %_llgo_7
  ret { i1, i64 } zeroinitializer
}

declare %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr, ptr)

define ptr @"github.com/goplus/llgo/cl/_testpull/edgecases.GetValue"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testpull/edgecases.GetValue$1", ptr undef }, ptr %2, 1
  %5 = call ptr @"github.com/goplus/llgo/async.Async[int]"({ ptr, ptr } %4)
  ret ptr %5
}

define void @"github.com/goplus/llgo/cl/_testpull/edgecases.GetValue$1"(ptr %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load i64, ptr %3, align 4
  %5 = extractvalue { ptr, ptr } %1, 1
  %6 = extractvalue { ptr, ptr } %1, 0
  call void %6(ptr %5, i64 %4)
  ret void
}

define { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" } @MultipleReturns(i64 %0) {
_llgo_0:
  %1 = alloca { i8, i64, ptr, ptr }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 32, i1 false)
  %2 = getelementptr inbounds { i8, i64, ptr, ptr }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, i64, ptr, ptr }, ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds { i8, i64, ptr, ptr }, ptr %1, i32 0, i32 2
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds { i8, i64, ptr, ptr }, ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
  %6 = load { i8, i64, ptr, ptr }, ptr %1, align 8
  ret { i8, i64, ptr, ptr } %6
}

define { i1, i64 } @"MultipleReturns$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
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
  %4 = getelementptr inbounds { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %4, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_3:                                          ; preds = %_llgo_0
  %5 = getelementptr inbounds { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %7 = load i1, ptr %6, align 1
  br i1 %7, label %_llgo_10, label %_llgo_9

_llgo_4:                                          ; preds = %_llgo_11, %_llgo_0
  %8 = getelementptr inbounds { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 4, ptr %8, align 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_6:                                          ; preds = %_llgo_0
  %9 = getelementptr inbounds { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %10 = getelementptr inbounds { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %11 = load i1, ptr %10, align 1
  br i1 %11, label %_llgo_14, label %_llgo_13

_llgo_7:                                          ; preds = %_llgo_15, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_8:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_9:                                          ; preds = %_llgo_3
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_3
  %12 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %5, ptr %1)
  %13 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %12, ptr %13, align 4
  %14 = getelementptr inbounds { i1, i64 }, ptr %13, i32 0, i32 0
  %15 = load i1, ptr %14, align 1
  br i1 %15, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %16 = getelementptr inbounds { i1, i64 }, ptr %13, i32 0, i32 1
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %18, align 1
  br label %_llgo_4

_llgo_12:                                         ; preds = %_llgo_10
  ret { i1, i64 } zeroinitializer

_llgo_13:                                         ; preds = %_llgo_6
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_6
  %19 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %9, ptr %1)
  %20 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %19, ptr %20, align 4
  %21 = getelementptr inbounds { i1, i64 }, ptr %20, i32 0, i32 0
  %22 = load i1, ptr %21, align 1
  br i1 %22, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %23 = getelementptr inbounds { i1, i64 }, ptr %20, i32 0, i32 1
  %24 = load i64, ptr %23, align 4
  %25 = getelementptr inbounds { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 6, ptr %25, align 1
  br label %_llgo_7

_llgo_16:                                         ; preds = %_llgo_14
  ret { i1, i64 } zeroinitializer
}

define { i8, i64 } @NoAwait(i64 %0) {
_llgo_0:
  %1 = alloca { i8, i64 }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  %2 = getelementptr inbounds { i8, i64 }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, i64 }, ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = load { i8, i64 }, ptr %1, align 4
  ret { i8, i64 } %4
}

define { i1, i64 } @"NoAwait$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64 }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_2 [
    i8 0, label %_llgo_1
  ]

_llgo_1:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_2:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer
}

define { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" } @SingleAwait(i64 %0) {
_llgo_0:
  %1 = alloca { i8, i64, ptr }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 24, i1 false)
  %2 = getelementptr inbounds { i8, i64, ptr }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, i64, ptr }, ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds { i8, i64, ptr }, ptr %1, i32 0, i32 2
  store ptr null, ptr %4, align 8
  %5 = load { i8, i64, ptr }, ptr %1, align 8
  ret { i8, i64, ptr } %5
}

define { i1, i64 } @"SingleAwait$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_3 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %6 = load i1, ptr %5, align 1
  br i1 %6, label %_llgo_5, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_6, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_3:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_4:                                          ; preds = %_llgo_1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_1
  %7 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %4, ptr %1)
  %8 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %7, ptr %8, align 4
  %9 = getelementptr inbounds { i1, i64 }, ptr %8, i32 0, i32 0
  %10 = load i1, ptr %9, align 1
  br i1 %10, label %_llgo_6, label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_5
  %11 = getelementptr inbounds { i1, i64 }, ptr %8, i32 0, i32 1
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %13, align 1
  br label %_llgo_2

_llgo_7:                                          ; preds = %_llgo_5
  ret { i1, i64 } zeroinitializer
}

define void @"github.com/goplus/llgo/cl/_testpull/edgecases.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testpull/edgecases.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testpull/edgecases.init$guard", align 1
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
