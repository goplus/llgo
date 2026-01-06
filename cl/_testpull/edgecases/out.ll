; ModuleID = 'github.com/goplus/llgo/cl/_testpull/edgecases'
source_filename = "github.com/goplus/llgo/cl/_testpull/edgecases"

%"github.com/goplus/llgo/async.AsyncFuture[int]" = type { { ptr, ptr }, i1, i1, i64 }
%"github.com/goplus/llgo/async.Poll[int]" = type { i1, i64 }

@"github.com/goplus/llgo/cl/_testpull/edgecases.init$guard" = global i1 false, align 1

define { i8, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" } @EarlyReturn(i1 %0) {
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
  %2 = getelementptr inbounds { i8, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_5 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %4, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_3:                                          ; preds = %_llgo_0
  %5 = getelementptr inbounds { i8, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds { ptr, ptr }, ptr %6, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %_llgo_6, label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_8, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_5:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_6:                                          ; preds = %_llgo_3
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_3
  %10 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %5, ptr %1)
  %11 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %10, ptr %11, align 4
  %12 = getelementptr inbounds { i1, i64 }, ptr %11, i32 0, i32 0
  %13 = load i1, ptr %12, align 1
  br i1 %13, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  %14 = getelementptr inbounds { i1, i64 }, ptr %11, i32 0, i32 1
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds { i8, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %16, align 1
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

define { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" } @MultipleReturns(i64 %0) {
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
  %2 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
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
  %4 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %4, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_3:                                          ; preds = %_llgo_0
  %5 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds { ptr, ptr }, ptr %6, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %_llgo_9, label %_llgo_10

_llgo_4:                                          ; preds = %_llgo_11, %_llgo_0
  %10 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 4, ptr %10, align 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_6:                                          ; preds = %_llgo_0
  %11 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %12 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %11, i32 0, i32 0
  %13 = getelementptr inbounds { ptr, ptr }, ptr %12, i32 0, i32 0
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %_llgo_13, label %_llgo_14

_llgo_7:                                          ; preds = %_llgo_15, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_8:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_9:                                          ; preds = %_llgo_3
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_3
  %16 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %5, ptr %1)
  %17 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %16, ptr %17, align 4
  %18 = getelementptr inbounds { i1, i64 }, ptr %17, i32 0, i32 0
  %19 = load i1, ptr %18, align 1
  br i1 %19, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %20 = getelementptr inbounds { i1, i64 }, ptr %17, i32 0, i32 1
  %21 = load i64, ptr %20, align 4
  %22 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %22, align 1
  br label %_llgo_4

_llgo_12:                                         ; preds = %_llgo_10
  ret { i1, i64 } zeroinitializer

_llgo_13:                                         ; preds = %_llgo_6
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_6
  %23 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %11, ptr %1)
  %24 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %23, ptr %24, align 4
  %25 = getelementptr inbounds { i1, i64 }, ptr %24, i32 0, i32 0
  %26 = load i1, ptr %25, align 1
  br i1 %26, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %27 = getelementptr inbounds { i1, i64 }, ptr %24, i32 0, i32 1
  %28 = load i64, ptr %27, align 4
  %29 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 6, ptr %29, align 1
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

define { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" } @SingleAwait(i64 %0) {
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
  %2 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_3 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds { ptr, ptr }, ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_3:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_4:                                          ; preds = %_llgo_1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_1
  %9 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %4, ptr %1)
  %10 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %9, ptr %10, align 4
  %11 = getelementptr inbounds { i1, i64 }, ptr %10, i32 0, i32 0
  %12 = load i1, ptr %11, align 1
  br i1 %12, label %_llgo_6, label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_5
  %13 = getelementptr inbounds { i1, i64 }, ptr %10, i32 0, i32 1
  %14 = load i64, ptr %13, align 4
  %15 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %15, align 1
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
