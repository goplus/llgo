; ModuleID = 'github.com/goplus/llgo/cl/_testpull/defer'
source_filename = "github.com/goplus/llgo/cl/_testpull/defer"

%"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" = type { { ptr, ptr }, i1, i1, ptr }
%"github.com/goplus/llgo/async.AsyncFuture[int]" = type { { ptr, ptr }, i1, i1, i64 }
%"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" = type { i1, ptr }
%"github.com/goplus/llgo/async.Poll[int]" = type { i1, i64 }
%"github.com/goplus/llgo/cl/_testpull/defer.Resource" = type { i64 }

@"github.com/goplus/llgo/cl/_testpull/defer.init$guard" = global i1 false, align 1

define { i8, i1, ptr, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" } @ConditionalDefer(i1 %0) {
_llgo_0:
  %1 = alloca { i8, i1, ptr, ptr, ptr }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 32, i1 false)
  %2 = getelementptr inbounds { i8, i1, ptr, ptr, ptr }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, i1, ptr, ptr, ptr }, ptr %1, i32 0, i32 1
  store i1 %0, ptr %3, align 1
  %4 = getelementptr inbounds { i8, i1, ptr, ptr, ptr }, ptr %1, i32 0, i32 2
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds { i8, i1, ptr, ptr, ptr }, ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds { i8, i1, ptr, ptr, ptr }, ptr %1, i32 0, i32 4
  store ptr null, ptr %6, align 8
  %7 = load { i8, i1, ptr, ptr, ptr }, ptr %1, align 8
  ret { i8, i1, ptr, ptr, ptr } %7
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

define { i1, i64 } @"ConditionalDefer$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i1, ptr, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_7 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
    i8 5, label %_llgo_6
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i1, ptr, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %4, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = getelementptr inbounds { i8, i1, ptr, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %6 = getelementptr inbounds { i8, i1, ptr, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %7 = load i1, ptr %6, align 1
  br i1 %7, label %_llgo_9, label %_llgo_8

_llgo_3:                                          ; preds = %_llgo_10, %_llgo_0
  %8 = getelementptr inbounds { i8, i1, ptr, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 6
  %9 = getelementptr inbounds { i8, i1, ptr, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %10 = load i1, ptr %9, align 1
  br i1 %10, label %_llgo_13, label %_llgo_12

_llgo_4:                                          ; preds = %_llgo_14, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_5:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_6:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_7:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_8:                                          ; preds = %_llgo_2
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_2
  %11 = call %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll"(ptr %5, ptr %1)
  %12 = alloca { i1, ptr }, align 8
  store %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %11, ptr %12, align 8
  %13 = getelementptr inbounds { i1, ptr }, ptr %12, i32 0, i32 0
  %14 = load i1, ptr %13, align 1
  br i1 %14, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %15 = getelementptr inbounds { i1, ptr }, ptr %12, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds { i8, i1, ptr, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %17, align 1
  br label %_llgo_3

_llgo_11:                                         ; preds = %_llgo_9
  ret { i1, i64 } zeroinitializer

_llgo_12:                                         ; preds = %_llgo_3
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_3
  %18 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %8, ptr %1)
  %19 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %18, ptr %19, align 4
  %20 = getelementptr inbounds { i1, i64 }, ptr %19, i32 0, i32 0
  %21 = load i1, ptr %20, align 1
  br i1 %21, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  %22 = getelementptr inbounds { i1, i64 }, ptr %19, i32 0, i32 1
  %23 = load i64, ptr %22, align 4
  %24 = getelementptr inbounds { i8, i1, ptr, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %24, align 1
  br label %_llgo_4

_llgo_15:                                         ; preds = %_llgo_13
  ret { i1, i64 } zeroinitializer
}

declare %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll"(ptr, ptr)

declare %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr, ptr)

define { i8, i64, ptr, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" } @LoopDefer(i64 %0) {
_llgo_0:
  %1 = alloca { i8, i64, ptr, i64, i64, ptr, ptr }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 56, i1 false)
  %2 = getelementptr inbounds { i8, i64, ptr, i64, i64, ptr, ptr }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, i64, ptr, i64, i64, ptr, ptr }, ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds { i8, i64, ptr, i64, i64, ptr, ptr }, ptr %1, i32 0, i32 2
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds { i8, i64, ptr, i64, i64, ptr, ptr }, ptr %1, i32 0, i32 3
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds { i8, i64, ptr, i64, i64, ptr, ptr }, ptr %1, i32 0, i32 4
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds { i8, i64, ptr, i64, i64, ptr, ptr }, ptr %1, i32 0, i32 5
  store ptr null, ptr %7, align 8
  %8 = getelementptr inbounds { i8, i64, ptr, i64, i64, ptr, ptr }, ptr %1, i32 0, i32 6
  store ptr null, ptr %8, align 8
  %9 = load { i8, i64, ptr, i64, i64, ptr, ptr }, ptr %1, align 8
  ret { i8, i64, ptr, i64, i64, ptr, ptr } %9
}

define { i1, i64 } @"LoopDefer$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, ptr, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
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
  %4 = getelementptr inbounds { i8, i64, ptr, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %4, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = getelementptr inbounds { i8, i64, ptr, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %5, align 1
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %6 = getelementptr inbounds { i8, i64, ptr, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 6
  %7 = getelementptr inbounds { i8, i64, ptr, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %8 = load i1, ptr %7, align 1
  br i1 %8, label %_llgo_10, label %_llgo_9

_llgo_4:                                          ; preds = %_llgo_11, %_llgo_0
  %9 = getelementptr inbounds { i8, i64, ptr, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 8
  %10 = getelementptr inbounds { i8, i64, ptr, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 7
  %11 = load i1, ptr %10, align 1
  br i1 %11, label %_llgo_14, label %_llgo_13

_llgo_5:                                          ; preds = %_llgo_15, %_llgo_0
  %12 = getelementptr inbounds { i8, i64, ptr, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 5, ptr %12, align 1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_7:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_8:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_9:                                          ; preds = %_llgo_3
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_3
  %13 = call %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll"(ptr %6, ptr %1)
  %14 = alloca { i1, ptr }, align 8
  store %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %13, ptr %14, align 8
  %15 = getelementptr inbounds { i1, ptr }, ptr %14, i32 0, i32 0
  %16 = load i1, ptr %15, align 1
  br i1 %16, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %17 = getelementptr inbounds { i1, ptr }, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds { i8, i64, ptr, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %19, align 1
  br label %_llgo_4

_llgo_12:                                         ; preds = %_llgo_10
  ret { i1, i64 } zeroinitializer

_llgo_13:                                         ; preds = %_llgo_4
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_4
  %20 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %9, ptr %1)
  %21 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %20, ptr %21, align 4
  %22 = getelementptr inbounds { i1, i64 }, ptr %21, i32 0, i32 0
  %23 = load i1, ptr %22, align 1
  br i1 %23, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %24 = getelementptr inbounds { i1, i64 }, ptr %21, i32 0, i32 1
  %25 = load i64, ptr %24, align 4
  %26 = getelementptr inbounds { i8, i64, ptr, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 4, ptr %26, align 1
  br label %_llgo_5

_llgo_16:                                         ; preds = %_llgo_14
  ret { i1, i64 } zeroinitializer
}

define { i8, ptr, ptr, ptr, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" } @MultipleDefer() {
_llgo_0:
  %0 = alloca { i8, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr }, align 8
  call void @llvm.memset(ptr %0, i8 0, i64 72, i1 false)
  %1 = getelementptr inbounds { i8, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 0, ptr %1, align 1
  %2 = getelementptr inbounds { i8, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 1
  store ptr null, ptr %2, align 8
  %3 = getelementptr inbounds { i8, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 2
  store ptr null, ptr %3, align 8
  %4 = getelementptr inbounds { i8, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 3
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds { i8, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 4
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds { i8, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 5
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds { i8, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 6
  store ptr null, ptr %7, align 8
  %8 = getelementptr inbounds { i8, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 7
  store ptr null, ptr %8, align 8
  %9 = getelementptr inbounds { i8, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 8
  store ptr null, ptr %9, align 8
  %10 = load { i8, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr }, ptr %0, align 8
  ret { i8, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr } %10
}

define { i1, i64 } @"MultipleDefer$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, ptr, ptr, ptr, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_7 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
    i8 5, label %_llgo_6
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, ptr, ptr, ptr, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 6
  %5 = getelementptr inbounds { i8, ptr, ptr, ptr, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %6 = load i1, ptr %5, align 1
  br i1 %6, label %_llgo_9, label %_llgo_8

_llgo_2:                                          ; preds = %_llgo_10, %_llgo_0
  %7 = getelementptr inbounds { i8, ptr, ptr, ptr, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 8
  %8 = getelementptr inbounds { i8, ptr, ptr, ptr, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 7
  %9 = load i1, ptr %8, align 1
  br i1 %9, label %_llgo_13, label %_llgo_12

_llgo_3:                                          ; preds = %_llgo_14, %_llgo_0
  %10 = getelementptr inbounds { i8, ptr, ptr, ptr, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 10
  %11 = getelementptr inbounds { i8, ptr, ptr, ptr, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 9
  %12 = load i1, ptr %11, align 1
  br i1 %12, label %_llgo_17, label %_llgo_16

_llgo_4:                                          ; preds = %_llgo_18, %_llgo_0
  %13 = getelementptr inbounds { i8, ptr, ptr, ptr, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 12
  %14 = getelementptr inbounds { i8, ptr, ptr, ptr, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 11
  %15 = load i1, ptr %14, align 1
  br i1 %15, label %_llgo_21, label %_llgo_20

_llgo_5:                                          ; preds = %_llgo_22, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_6:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_7:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_8:                                          ; preds = %_llgo_1
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_1
  %16 = call %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll"(ptr %4, ptr %1)
  %17 = alloca { i1, ptr }, align 8
  store %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %16, ptr %17, align 8
  %18 = getelementptr inbounds { i1, ptr }, ptr %17, i32 0, i32 0
  %19 = load i1, ptr %18, align 1
  br i1 %19, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %20 = getelementptr inbounds { i1, ptr }, ptr %17, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds { i8, ptr, ptr, ptr, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  store ptr %21, ptr %22, align 8
  %23 = getelementptr inbounds { i8, ptr, ptr, ptr, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %23, align 1
  br label %_llgo_2

_llgo_11:                                         ; preds = %_llgo_9
  ret { i1, i64 } zeroinitializer

_llgo_12:                                         ; preds = %_llgo_2
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_2
  %24 = call %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll"(ptr %7, ptr %1)
  %25 = alloca { i1, ptr }, align 8
  store %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %24, ptr %25, align 8
  %26 = getelementptr inbounds { i1, ptr }, ptr %25, i32 0, i32 0
  %27 = load i1, ptr %26, align 1
  br i1 %27, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  %28 = getelementptr inbounds { i1, ptr }, ptr %25, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds { i8, ptr, ptr, ptr, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  store ptr %29, ptr %30, align 8
  %31 = getelementptr inbounds { i8, ptr, ptr, ptr, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %31, align 1
  br label %_llgo_3

_llgo_15:                                         ; preds = %_llgo_13
  ret { i1, i64 } zeroinitializer

_llgo_16:                                         ; preds = %_llgo_3
  br label %_llgo_17

_llgo_17:                                         ; preds = %_llgo_16, %_llgo_3
  %32 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %10, ptr %1)
  %33 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %32, ptr %33, align 4
  %34 = getelementptr inbounds { i1, i64 }, ptr %33, i32 0, i32 0
  %35 = load i1, ptr %34, align 1
  br i1 %35, label %_llgo_18, label %_llgo_19

_llgo_18:                                         ; preds = %_llgo_17
  %36 = getelementptr inbounds { i1, i64 }, ptr %33, i32 0, i32 1
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds { i8, ptr, ptr, ptr, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  store i64 %37, ptr %38, align 4
  %39 = getelementptr inbounds { i8, ptr, ptr, ptr, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %39, align 1
  br label %_llgo_4

_llgo_19:                                         ; preds = %_llgo_17
  ret { i1, i64 } zeroinitializer

_llgo_20:                                         ; preds = %_llgo_4
  br label %_llgo_21

_llgo_21:                                         ; preds = %_llgo_20, %_llgo_4
  %40 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %13, ptr %1)
  %41 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %40, ptr %41, align 4
  %42 = getelementptr inbounds { i1, i64 }, ptr %41, i32 0, i32 0
  %43 = load i1, ptr %42, align 1
  br i1 %43, label %_llgo_22, label %_llgo_23

_llgo_22:                                         ; preds = %_llgo_21
  %44 = getelementptr inbounds { i1, i64 }, ptr %41, i32 0, i32 1
  %45 = load i64, ptr %44, align 4
  %46 = getelementptr inbounds { i8, ptr, ptr, ptr, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 4, ptr %46, align 1
  br label %_llgo_5

_llgo_23:                                         ; preds = %_llgo_21
  ret { i1, i64 } zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource$1", ptr undef }, ptr %2, 1
  %5 = call ptr @"github.com/goplus/llgo/async.Async[*github.com/goplus/llgo/cl/_testpull/defer.Resource]"({ ptr, ptr } %4)
  ret ptr %5
}

define void @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource$1"(ptr %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.Resource", ptr %2, i32 0, i32 0
  %4 = load { ptr }, ptr %0, align 8
  %5 = extractvalue { ptr } %4, 0
  %6 = load i64, ptr %5, align 4
  store i64 %6, ptr %3, align 4
  %7 = extractvalue { ptr, ptr } %1, 1
  %8 = extractvalue { ptr, ptr } %1, 0
  call void %8(ptr %7, ptr %2)
  ret void
}

define ptr @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store ptr %0, ptr %1, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource$1", ptr undef }, ptr %2, 1
  %5 = call ptr @"github.com/goplus/llgo/async.Async[int]"({ ptr, ptr } %4)
  ret ptr %5
}

define void @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource$1"(ptr %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.Resource", ptr %4, i32 0, i32 0
  %6 = load i64, ptr %5, align 4
  %7 = mul i64 %6, 10
  %8 = extractvalue { ptr, ptr } %1, 1
  %9 = extractvalue { ptr, ptr } %1, 0
  call void %9(ptr %8, i64 %7)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testpull/defer.(*Resource).Close"(ptr %0) {
_llgo_0:
  ret void
}

define { i8, ptr, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" } @SimpleDefer() {
_llgo_0:
  %0 = alloca { i8, ptr, ptr, ptr }, align 8
  call void @llvm.memset(ptr %0, i8 0, i64 32, i1 false)
  %1 = getelementptr inbounds { i8, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 0, ptr %1, align 1
  %2 = getelementptr inbounds { i8, ptr, ptr, ptr }, ptr %0, i32 0, i32 1
  store ptr null, ptr %2, align 8
  %3 = getelementptr inbounds { i8, ptr, ptr, ptr }, ptr %0, i32 0, i32 2
  store ptr null, ptr %3, align 8
  %4 = getelementptr inbounds { i8, ptr, ptr, ptr }, ptr %0, i32 0, i32 3
  store ptr null, ptr %4, align 8
  %5 = load { i8, ptr, ptr, ptr }, ptr %0, align 8
  ret { i8, ptr, ptr, ptr } %5
}

define { i1, i64 } @"SimpleDefer$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, ptr, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_5 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, ptr, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds { i8, ptr, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %6 = load i1, ptr %5, align 1
  br i1 %6, label %_llgo_7, label %_llgo_6

_llgo_2:                                          ; preds = %_llgo_8, %_llgo_0
  %7 = getelementptr inbounds { i8, ptr, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %8 = getelementptr inbounds { i8, ptr, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %9 = load i1, ptr %8, align 1
  br i1 %9, label %_llgo_11, label %_llgo_10

_llgo_3:                                          ; preds = %_llgo_12, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_4:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_5:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_6:                                          ; preds = %_llgo_1
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_1
  %10 = call %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll"(ptr %4, ptr %1)
  %11 = alloca { i1, ptr }, align 8
  store %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %10, ptr %11, align 8
  %12 = getelementptr inbounds { i1, ptr }, ptr %11, i32 0, i32 0
  %13 = load i1, ptr %12, align 1
  br i1 %13, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  %14 = getelementptr inbounds { i1, ptr }, ptr %11, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds { i8, ptr, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %16, align 1
  br label %_llgo_2

_llgo_9:                                          ; preds = %_llgo_7
  ret { i1, i64 } zeroinitializer

_llgo_10:                                         ; preds = %_llgo_2
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_2
  %17 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %7, ptr %1)
  %18 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %17, ptr %18, align 4
  %19 = getelementptr inbounds { i1, i64 }, ptr %18, i32 0, i32 0
  %20 = load i1, ptr %19, align 1
  br i1 %20, label %_llgo_12, label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_11
  %21 = getelementptr inbounds { i1, i64 }, ptr %18, i32 0, i32 1
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds { i8, ptr, i1, %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %23, align 1
  br label %_llgo_3

_llgo_13:                                         ; preds = %_llgo_11
  ret { i1, i64 } zeroinitializer
}

define void @"github.com/goplus/llgo/cl/_testpull/defer.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testpull/defer.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testpull/defer.init$guard", align 1
  call void @"github.com/goplus/llgo/async.init"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define linkonce ptr @"github.com/goplus/llgo/async.Async[*github.com/goplus/llgo/cl/_testpull/defer.Resource]"({ ptr, ptr } %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %1, i32 0, i32 0
  store { ptr, ptr } %0, ptr %2, align 8
  ret ptr %1
}

define linkonce ptr @"github.com/goplus/llgo/async.Async[int]"({ ptr, ptr } %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %1, i32 0, i32 0
  store { ptr, ptr } %0, ptr %2, align 8
  ret ptr %1
}

declare void @"github.com/goplus/llgo/async.init"()

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
