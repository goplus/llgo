; ModuleID = 'github.com/goplus/llgo/cl/_testpull/complex'
source_filename = "github.com/goplus/llgo/cl/_testpull/complex"

%"github.com/goplus/llgo/async.AsyncFuture[int]" = type { { ptr, ptr }, i1, i1, i64 }
%"github.com/goplus/llgo/async.Poll[int]" = type { i1, i64 }

@"github.com/goplus/llgo/cl/_testpull/complex.init$guard" = global i1 false, align 1

define { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" } @ChainedAwaits(i64 %0) {
_llgo_0:
  %1 = alloca { i8, i64, ptr, ptr, ptr, ptr }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 48, i1 false)
  %2 = getelementptr inbounds { i8, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds { i8, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 2
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds { i8, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds { i8, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 4
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds { i8, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 5
  store ptr null, ptr %7, align 8
  %8 = load { i8, i64, ptr, ptr, ptr, ptr }, ptr %1, align 8
  ret { i8, i64, ptr, ptr, ptr, ptr } %8
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

define { i1, i64 } @"ChainedAwaits$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_6 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %6 = load i1, ptr %5, align 1
  br i1 %6, label %_llgo_8, label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_9, %_llgo_0
  %7 = getelementptr inbounds { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %8 = getelementptr inbounds { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %9 = load i1, ptr %8, align 1
  br i1 %9, label %_llgo_12, label %_llgo_11

_llgo_3:                                          ; preds = %_llgo_13, %_llgo_0
  %10 = getelementptr inbounds { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 7
  %11 = getelementptr inbounds { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 6
  %12 = load i1, ptr %11, align 1
  br i1 %12, label %_llgo_16, label %_llgo_15

_llgo_4:                                          ; preds = %_llgo_17, %_llgo_0
  %13 = getelementptr inbounds { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 9
  %14 = getelementptr inbounds { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 8
  %15 = load i1, ptr %14, align 1
  br i1 %15, label %_llgo_20, label %_llgo_19

_llgo_5:                                          ; preds = %_llgo_21, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_6:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_7:                                          ; preds = %_llgo_1
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_1
  %16 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %4, ptr %1)
  %17 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %16, ptr %17, align 4
  %18 = getelementptr inbounds { i1, i64 }, ptr %17, i32 0, i32 0
  %19 = load i1, ptr %18, align 1
  br i1 %19, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %20 = getelementptr inbounds { i1, i64 }, ptr %17, i32 0, i32 1
  %21 = load i64, ptr %20, align 4
  %22 = getelementptr inbounds { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %22, align 1
  br label %_llgo_2

_llgo_10:                                         ; preds = %_llgo_8
  ret { i1, i64 } zeroinitializer

_llgo_11:                                         ; preds = %_llgo_2
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_2
  %23 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %7, ptr %1)
  %24 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %23, ptr %24, align 4
  %25 = getelementptr inbounds { i1, i64 }, ptr %24, i32 0, i32 0
  %26 = load i1, ptr %25, align 1
  br i1 %26, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %27 = getelementptr inbounds { i1, i64 }, ptr %24, i32 0, i32 1
  %28 = load i64, ptr %27, align 4
  %29 = getelementptr inbounds { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %29, align 1
  br label %_llgo_3

_llgo_14:                                         ; preds = %_llgo_12
  ret { i1, i64 } zeroinitializer

_llgo_15:                                         ; preds = %_llgo_3
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_3
  %30 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %10, ptr %1)
  %31 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %30, ptr %31, align 4
  %32 = getelementptr inbounds { i1, i64 }, ptr %31, i32 0, i32 0
  %33 = load i1, ptr %32, align 1
  br i1 %33, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %34 = getelementptr inbounds { i1, i64 }, ptr %31, i32 0, i32 1
  %35 = load i64, ptr %34, align 4
  %36 = getelementptr inbounds { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %36, align 1
  br label %_llgo_4

_llgo_18:                                         ; preds = %_llgo_16
  ret { i1, i64 } zeroinitializer

_llgo_19:                                         ; preds = %_llgo_4
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_4
  %37 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %13, ptr %1)
  %38 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %37, ptr %38, align 4
  %39 = getelementptr inbounds { i1, i64 }, ptr %38, i32 0, i32 0
  %40 = load i1, ptr %39, align 1
  br i1 %40, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %41 = getelementptr inbounds { i1, i64 }, ptr %38, i32 0, i32 1
  %42 = load i64, ptr %41, align 4
  %43 = getelementptr inbounds { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 4, ptr %43, align 1
  br label %_llgo_5

_llgo_22:                                         ; preds = %_llgo_20
  ret { i1, i64 } zeroinitializer
}

declare %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr, ptr)

define { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" } @ClosureCapture(i64 %0) {
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

define { i1, i64 } @"ClosureCapture$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_4 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %6 = load i1, ptr %5, align 1
  br i1 %6, label %_llgo_6, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_7, %_llgo_0
  %7 = getelementptr inbounds { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %8 = getelementptr inbounds { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %9 = load i1, ptr %8, align 1
  br i1 %9, label %_llgo_10, label %_llgo_9

_llgo_3:                                          ; preds = %_llgo_11, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_4:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_5:                                          ; preds = %_llgo_1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_1
  %10 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %4, ptr %1)
  %11 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %10, ptr %11, align 4
  %12 = getelementptr inbounds { i1, i64 }, ptr %11, i32 0, i32 0
  %13 = load i1, ptr %12, align 1
  br i1 %13, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %14 = getelementptr inbounds { i1, i64 }, ptr %11, i32 0, i32 1
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %16, align 1
  br label %_llgo_2

_llgo_8:                                          ; preds = %_llgo_6
  ret { i1, i64 } zeroinitializer

_llgo_9:                                          ; preds = %_llgo_2
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_2
  %17 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %7, ptr %1)
  %18 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %17, ptr %18, align 4
  %19 = getelementptr inbounds { i1, i64 }, ptr %18, i32 0, i32 0
  %20 = load i1, ptr %19, align 1
  br i1 %20, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %21 = getelementptr inbounds { i1, i64 }, ptr %18, i32 0, i32 1
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds { i8, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %23, align 1
  br label %_llgo_3

_llgo_12:                                         ; preds = %_llgo_10
  ret { i1, i64 } zeroinitializer
}

define { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" } @ConditionalChain(i64 %0) {
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

define { i1, i64 } @"ConditionalChain$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
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
  %4 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %4, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %6 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %7 = load i1, ptr %6, align 1
  br i1 %7, label %_llgo_10, label %_llgo_9

_llgo_3:                                          ; preds = %_llgo_11, %_llgo_0
  %8 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %8, align 1
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_0
  %9 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 6
  %10 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %11 = load i1, ptr %10, align 1
  br i1 %11, label %_llgo_14, label %_llgo_13

_llgo_5:                                          ; preds = %_llgo_15, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_6:                                          ; preds = %_llgo_0
  %12 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 8
  %13 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 7
  %14 = load i1, ptr %13, align 1
  br i1 %14, label %_llgo_18, label %_llgo_17

_llgo_7:                                          ; preds = %_llgo_19, %_llgo_0
  %15 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 7, ptr %15, align 1
  ret { i1, i64 } zeroinitializer

_llgo_8:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_9:                                          ; preds = %_llgo_2
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_2
  %16 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %5, ptr %1)
  %17 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %16, ptr %17, align 4
  %18 = getelementptr inbounds { i1, i64 }, ptr %17, i32 0, i32 0
  %19 = load i1, ptr %18, align 1
  br i1 %19, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %20 = getelementptr inbounds { i1, i64 }, ptr %17, i32 0, i32 1
  %21 = load i64, ptr %20, align 4
  %22 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %22, align 1
  br label %_llgo_3

_llgo_12:                                         ; preds = %_llgo_10
  ret { i1, i64 } zeroinitializer

_llgo_13:                                         ; preds = %_llgo_4
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_4
  %23 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %9, ptr %1)
  %24 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %23, ptr %24, align 4
  %25 = getelementptr inbounds { i1, i64 }, ptr %24, i32 0, i32 0
  %26 = load i1, ptr %25, align 1
  br i1 %26, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %27 = getelementptr inbounds { i1, i64 }, ptr %24, i32 0, i32 1
  %28 = load i64, ptr %27, align 4
  %29 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 4, ptr %29, align 1
  br label %_llgo_5

_llgo_16:                                         ; preds = %_llgo_14
  ret { i1, i64 } zeroinitializer

_llgo_17:                                         ; preds = %_llgo_6
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_6
  %30 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %12, ptr %1)
  %31 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %30, ptr %31, align 4
  %32 = getelementptr inbounds { i1, i64 }, ptr %31, i32 0, i32 0
  %33 = load i1, ptr %32, align 1
  br i1 %33, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %34 = getelementptr inbounds { i1, i64 }, ptr %31, i32 0, i32 1
  %35 = load i64, ptr %34, align 4
  %36 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 6, ptr %36, align 1
  br label %_llgo_7

_llgo_20:                                         ; preds = %_llgo_18
  ret { i1, i64 } zeroinitializer
}

define { i8, i64, ptr, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" } @DeferWithAwait(i64 %0) {
_llgo_0:
  %1 = alloca { i8, i64, ptr, ptr, ptr }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 40, i1 false)
  %2 = getelementptr inbounds { i8, i64, ptr, ptr, ptr }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, i64, ptr, ptr, ptr }, ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds { i8, i64, ptr, ptr, ptr }, ptr %1, i32 0, i32 2
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds { i8, i64, ptr, ptr, ptr }, ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds { i8, i64, ptr, ptr, ptr }, ptr %1, i32 0, i32 4
  store ptr null, ptr %6, align 8
  %7 = load { i8, i64, ptr, ptr, ptr }, ptr %1, align 8
  ret { i8, i64, ptr, ptr, ptr } %7
}

define { i1, i64 } @"DeferWithAwait$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, ptr, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_5 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, ptr, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds { i8, i64, ptr, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %6 = load i1, ptr %5, align 1
  br i1 %6, label %_llgo_7, label %_llgo_6

_llgo_2:                                          ; preds = %_llgo_8, %_llgo_0
  %7 = getelementptr inbounds { i8, i64, ptr, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 6
  %8 = getelementptr inbounds { i8, i64, ptr, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
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
  %10 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %4, ptr %1)
  %11 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %10, ptr %11, align 4
  %12 = getelementptr inbounds { i1, i64 }, ptr %11, i32 0, i32 0
  %13 = load i1, ptr %12, align 1
  br i1 %13, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  %14 = getelementptr inbounds { i1, i64 }, ptr %11, i32 0, i32 1
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds { i8, i64, ptr, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
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
  %23 = getelementptr inbounds { i8, i64, ptr, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %23, align 1
  br label %_llgo_3

_llgo_13:                                         ; preds = %_llgo_11
  ret { i1, i64 } zeroinitializer
}

define { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" } @LoopBreakContinue(i64 %0) {
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

define { i1, i64 } @"LoopBreakContinue$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
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
  %8 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 6, ptr %8, align 1
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_0
  %9 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %10 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %11 = load i1, ptr %10, align 1
  br i1 %11, label %_llgo_11, label %_llgo_10

_llgo_8:                                          ; preds = %_llgo_12, %_llgo_0
  %12 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 8, ptr %12, align 1
  ret { i1, i64 } zeroinitializer

_llgo_9:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_10:                                         ; preds = %_llgo_7
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_7
  %13 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %9, ptr %1)
  %14 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %13, ptr %14, align 4
  %15 = getelementptr inbounds { i1, i64 }, ptr %14, i32 0, i32 0
  %16 = load i1, ptr %15, align 1
  br i1 %16, label %_llgo_12, label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_11
  %17 = getelementptr inbounds { i1, i64 }, ptr %14, i32 0, i32 1
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 7, ptr %19, align 1
  br label %_llgo_8

_llgo_13:                                         ; preds = %_llgo_11
  ret { i1, i64 } zeroinitializer
}

define { i8, i64, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" } @LoopWithAccumulator(i64 %0) {
_llgo_0:
  %1 = alloca { i8, i64, i64, i64, ptr }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 40, i1 false)
  %2 = getelementptr inbounds { i8, i64, i64, i64, ptr }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, i64, i64, i64, ptr }, ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds { i8, i64, i64, i64, ptr }, ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds { i8, i64, i64, i64, ptr }, ptr %1, i32 0, i32 3
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds { i8, i64, i64, i64, ptr }, ptr %1, i32 0, i32 4
  store ptr null, ptr %6, align 8
  %7 = load { i8, i64, i64, i64, ptr }, ptr %1, align 8
  ret { i8, i64, i64, i64, ptr } %7
}

define { i1, i64 } @"LoopWithAccumulator$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_6 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %4, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = getelementptr inbounds { i8, i64, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %5, align 1
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %6 = getelementptr inbounds { i8, i64, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %7 = getelementptr inbounds { i8, i64, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %8 = load i1, ptr %7, align 1
  br i1 %8, label %_llgo_8, label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_9, %_llgo_0
  %9 = getelementptr inbounds { i8, i64, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 4, ptr %9, align 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_6:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_3
  %10 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %6, ptr %1)
  %11 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %10, ptr %11, align 4
  %12 = getelementptr inbounds { i1, i64 }, ptr %11, i32 0, i32 0
  %13 = load i1, ptr %12, align 1
  br i1 %13, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %14 = getelementptr inbounds { i1, i64 }, ptr %11, i32 0, i32 1
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds { i8, i64, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %16, align 1
  br label %_llgo_4

_llgo_10:                                         ; preds = %_llgo_8
  ret { i1, i64 } zeroinitializer
}

define { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" } @MultipleReturnPaths(i64 %0) {
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

define { i1, i64 } @"MultipleReturnPaths$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_11 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
    i8 5, label %_llgo_6
    i8 6, label %_llgo_7
    i8 7, label %_llgo_8
    i8 8, label %_llgo_9
    i8 9, label %_llgo_10
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %4, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %6 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %7 = load i1, ptr %6, align 1
  br i1 %7, label %_llgo_13, label %_llgo_12

_llgo_3:                                          ; preds = %_llgo_14, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_4:                                          ; preds = %_llgo_0
  %8 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 4, ptr %8, align 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_6:                                          ; preds = %_llgo_0
  %9 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 6
  %10 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %11 = load i1, ptr %10, align 1
  br i1 %11, label %_llgo_17, label %_llgo_16

_llgo_7:                                          ; preds = %_llgo_18, %_llgo_0
  %12 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 7, ptr %12, align 1
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_9:                                          ; preds = %_llgo_0
  %13 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 8
  %14 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 7
  %15 = load i1, ptr %14, align 1
  br i1 %15, label %_llgo_21, label %_llgo_20

_llgo_10:                                         ; preds = %_llgo_22, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_11:                                         ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_12:                                         ; preds = %_llgo_2
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_2
  %16 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %5, ptr %1)
  %17 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %16, ptr %17, align 4
  %18 = getelementptr inbounds { i1, i64 }, ptr %17, i32 0, i32 0
  %19 = load i1, ptr %18, align 1
  br i1 %19, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  %20 = getelementptr inbounds { i1, i64 }, ptr %17, i32 0, i32 1
  %21 = load i64, ptr %20, align 4
  %22 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %22, align 1
  br label %_llgo_3

_llgo_15:                                         ; preds = %_llgo_13
  ret { i1, i64 } zeroinitializer

_llgo_16:                                         ; preds = %_llgo_6
  br label %_llgo_17

_llgo_17:                                         ; preds = %_llgo_16, %_llgo_6
  %23 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %9, ptr %1)
  %24 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %23, ptr %24, align 4
  %25 = getelementptr inbounds { i1, i64 }, ptr %24, i32 0, i32 0
  %26 = load i1, ptr %25, align 1
  br i1 %26, label %_llgo_18, label %_llgo_19

_llgo_18:                                         ; preds = %_llgo_17
  %27 = getelementptr inbounds { i1, i64 }, ptr %24, i32 0, i32 1
  %28 = load i64, ptr %27, align 4
  %29 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 6, ptr %29, align 1
  br label %_llgo_7

_llgo_19:                                         ; preds = %_llgo_17
  ret { i1, i64 } zeroinitializer

_llgo_20:                                         ; preds = %_llgo_9
  br label %_llgo_21

_llgo_21:                                         ; preds = %_llgo_20, %_llgo_9
  %30 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %13, ptr %1)
  %31 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %30, ptr %31, align 4
  %32 = getelementptr inbounds { i1, i64 }, ptr %31, i32 0, i32 0
  %33 = load i1, ptr %32, align 1
  br i1 %33, label %_llgo_22, label %_llgo_23

_llgo_22:                                         ; preds = %_llgo_21
  %34 = getelementptr inbounds { i1, i64 }, ptr %31, i32 0, i32 1
  %35 = load i64, ptr %34, align 4
  %36 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 9, ptr %36, align 1
  br label %_llgo_10

_llgo_23:                                         ; preds = %_llgo_21
  ret { i1, i64 } zeroinitializer
}

define { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" } @NestedConditions(i64 %0) {
_llgo_0:
  %1 = alloca { i8, i64, i64, ptr, ptr, ptr, ptr }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 56, i1 false)
  %2 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 4
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 5
  store ptr null, ptr %7, align 8
  %8 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 6
  store ptr null, ptr %8, align 8
  %9 = load { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %1, align 8
  ret { i8, i64, i64, ptr, ptr, ptr, ptr } %9
}

define { i1, i64 } @"NestedConditions$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_11 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
    i8 5, label %_llgo_6
    i8 6, label %_llgo_7
    i8 7, label %_llgo_8
    i8 8, label %_llgo_9
    i8 9, label %_llgo_10
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %4, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %6 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %7 = load i1, ptr %6, align 1
  br i1 %7, label %_llgo_13, label %_llgo_12

_llgo_3:                                          ; preds = %_llgo_14, %_llgo_0
  %8 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %8, align 1
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_5:                                          ; preds = %_llgo_0
  %9 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 6
  %10 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %11 = load i1, ptr %10, align 1
  br i1 %11, label %_llgo_17, label %_llgo_16

_llgo_6:                                          ; preds = %_llgo_18, %_llgo_0
  %12 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 6, ptr %12, align 1
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_0
  %13 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 8
  %14 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 7
  %15 = load i1, ptr %14, align 1
  br i1 %15, label %_llgo_21, label %_llgo_20

_llgo_8:                                          ; preds = %_llgo_22, %_llgo_0
  %16 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 8, ptr %16, align 1
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_0
  %17 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 10
  %18 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 9
  %19 = load i1, ptr %18, align 1
  br i1 %19, label %_llgo_25, label %_llgo_24

_llgo_10:                                         ; preds = %_llgo_26, %_llgo_0
  %20 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 10, ptr %20, align 1
  ret { i1, i64 } zeroinitializer

_llgo_11:                                         ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_12:                                         ; preds = %_llgo_2
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_2
  %21 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %5, ptr %1)
  %22 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %21, ptr %22, align 4
  %23 = getelementptr inbounds { i1, i64 }, ptr %22, i32 0, i32 0
  %24 = load i1, ptr %23, align 1
  br i1 %24, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  %25 = getelementptr inbounds { i1, i64 }, ptr %22, i32 0, i32 1
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  store i64 %26, ptr %27, align 4
  %28 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %28, align 1
  br label %_llgo_3

_llgo_15:                                         ; preds = %_llgo_13
  ret { i1, i64 } zeroinitializer

_llgo_16:                                         ; preds = %_llgo_5
  br label %_llgo_17

_llgo_17:                                         ; preds = %_llgo_16, %_llgo_5
  %29 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %9, ptr %1)
  %30 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %29, ptr %30, align 4
  %31 = getelementptr inbounds { i1, i64 }, ptr %30, i32 0, i32 0
  %32 = load i1, ptr %31, align 1
  br i1 %32, label %_llgo_18, label %_llgo_19

_llgo_18:                                         ; preds = %_llgo_17
  %33 = getelementptr inbounds { i1, i64 }, ptr %30, i32 0, i32 1
  %34 = load i64, ptr %33, align 4
  %35 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 5, ptr %35, align 1
  br label %_llgo_6

_llgo_19:                                         ; preds = %_llgo_17
  ret { i1, i64 } zeroinitializer

_llgo_20:                                         ; preds = %_llgo_7
  br label %_llgo_21

_llgo_21:                                         ; preds = %_llgo_20, %_llgo_7
  %36 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %13, ptr %1)
  %37 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %36, ptr %37, align 4
  %38 = getelementptr inbounds { i1, i64 }, ptr %37, i32 0, i32 0
  %39 = load i1, ptr %38, align 1
  br i1 %39, label %_llgo_22, label %_llgo_23

_llgo_22:                                         ; preds = %_llgo_21
  %40 = getelementptr inbounds { i1, i64 }, ptr %37, i32 0, i32 1
  %41 = load i64, ptr %40, align 4
  %42 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 7, ptr %42, align 1
  br label %_llgo_8

_llgo_23:                                         ; preds = %_llgo_21
  ret { i1, i64 } zeroinitializer

_llgo_24:                                         ; preds = %_llgo_9
  br label %_llgo_25

_llgo_25:                                         ; preds = %_llgo_24, %_llgo_9
  %43 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %17, ptr %1)
  %44 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %43, ptr %44, align 4
  %45 = getelementptr inbounds { i1, i64 }, ptr %44, i32 0, i32 0
  %46 = load i1, ptr %45, align 1
  br i1 %46, label %_llgo_26, label %_llgo_27

_llgo_26:                                         ; preds = %_llgo_25
  %47 = getelementptr inbounds { i1, i64 }, ptr %44, i32 0, i32 1
  %48 = load i64, ptr %47, align 4
  %49 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 9, ptr %49, align 1
  br label %_llgo_10

_llgo_27:                                         ; preds = %_llgo_25
  ret { i1, i64 } zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step$1", ptr undef }, ptr %2, 1
  %5 = call ptr @"github.com/goplus/llgo/async.Async[int]"({ ptr, ptr } %4)
  ret ptr %5
}

define void @"github.com/goplus/llgo/cl/_testpull/complex.Step$1"(ptr %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load i64, ptr %3, align 4
  %5 = extractvalue { ptr, ptr } %1, 1
  %6 = extractvalue { ptr, ptr } %1, 0
  call void %6(ptr %5, i64 %4)
  ret void
}

define { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" } @SwitchWithFallthrough(i64 %0) {
_llgo_0:
  %1 = alloca { i8, i64, i64, ptr, ptr, ptr, ptr }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 56, i1 false)
  %2 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 4
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 5
  store ptr null, ptr %7, align 8
  %8 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 6
  store ptr null, ptr %8, align 8
  %9 = load { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %1, align 8
  ret { i8, i64, i64, ptr, ptr, ptr, ptr } %9
}

define { i1, i64 } @"SwitchWithFallthrough$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_13 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
    i8 5, label %_llgo_6
    i8 6, label %_llgo_7
    i8 7, label %_llgo_8
    i8 8, label %_llgo_9
    i8 9, label %_llgo_10
    i8 10, label %_llgo_11
    i8 11, label %_llgo_12
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %4, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_3:                                          ; preds = %_llgo_0
  %5 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %6 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %7 = load i1, ptr %6, align 1
  br i1 %7, label %_llgo_15, label %_llgo_14

_llgo_4:                                          ; preds = %_llgo_16, %_llgo_0
  %8 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 4, ptr %8, align 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %9 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 6
  %10 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %11 = load i1, ptr %10, align 1
  br i1 %11, label %_llgo_19, label %_llgo_18

_llgo_6:                                          ; preds = %_llgo_20, %_llgo_0
  %12 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 6, ptr %12, align 1
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_0
  %13 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 7, ptr %13, align 1
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_0
  %14 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 8
  %15 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 7
  %16 = load i1, ptr %15, align 1
  br i1 %16, label %_llgo_23, label %_llgo_22

_llgo_9:                                          ; preds = %_llgo_24, %_llgo_0
  %17 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 9, ptr %17, align 1
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_0
  %18 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 10, ptr %18, align 1
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_0
  %19 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 10
  %20 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 9
  %21 = load i1, ptr %20, align 1
  br i1 %21, label %_llgo_27, label %_llgo_26

_llgo_12:                                         ; preds = %_llgo_28, %_llgo_0
  %22 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 12, ptr %22, align 1
  ret { i1, i64 } zeroinitializer

_llgo_13:                                         ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_14:                                         ; preds = %_llgo_3
  br label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14, %_llgo_3
  %23 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %5, ptr %1)
  %24 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %23, ptr %24, align 4
  %25 = getelementptr inbounds { i1, i64 }, ptr %24, i32 0, i32 0
  %26 = load i1, ptr %25, align 1
  br i1 %26, label %_llgo_16, label %_llgo_17

_llgo_16:                                         ; preds = %_llgo_15
  %27 = getelementptr inbounds { i1, i64 }, ptr %24, i32 0, i32 1
  %28 = load i64, ptr %27, align 4
  %29 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %29, align 1
  br label %_llgo_4

_llgo_17:                                         ; preds = %_llgo_15
  ret { i1, i64 } zeroinitializer

_llgo_18:                                         ; preds = %_llgo_5
  br label %_llgo_19

_llgo_19:                                         ; preds = %_llgo_18, %_llgo_5
  %30 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %9, ptr %1)
  %31 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %30, ptr %31, align 4
  %32 = getelementptr inbounds { i1, i64 }, ptr %31, i32 0, i32 0
  %33 = load i1, ptr %32, align 1
  br i1 %33, label %_llgo_20, label %_llgo_21

_llgo_20:                                         ; preds = %_llgo_19
  %34 = getelementptr inbounds { i1, i64 }, ptr %31, i32 0, i32 1
  %35 = load i64, ptr %34, align 4
  %36 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 5, ptr %36, align 1
  br label %_llgo_6

_llgo_21:                                         ; preds = %_llgo_19
  ret { i1, i64 } zeroinitializer

_llgo_22:                                         ; preds = %_llgo_8
  br label %_llgo_23

_llgo_23:                                         ; preds = %_llgo_22, %_llgo_8
  %37 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %14, ptr %1)
  %38 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %37, ptr %38, align 4
  %39 = getelementptr inbounds { i1, i64 }, ptr %38, i32 0, i32 0
  %40 = load i1, ptr %39, align 1
  br i1 %40, label %_llgo_24, label %_llgo_25

_llgo_24:                                         ; preds = %_llgo_23
  %41 = getelementptr inbounds { i1, i64 }, ptr %38, i32 0, i32 1
  %42 = load i64, ptr %41, align 4
  %43 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 8, ptr %43, align 1
  br label %_llgo_9

_llgo_25:                                         ; preds = %_llgo_23
  ret { i1, i64 } zeroinitializer

_llgo_26:                                         ; preds = %_llgo_11
  br label %_llgo_27

_llgo_27:                                         ; preds = %_llgo_26, %_llgo_11
  %44 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %19, ptr %1)
  %45 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %44, ptr %45, align 4
  %46 = getelementptr inbounds { i1, i64 }, ptr %45, i32 0, i32 0
  %47 = load i1, ptr %46, align 1
  br i1 %47, label %_llgo_28, label %_llgo_29

_llgo_28:                                         ; preds = %_llgo_27
  %48 = getelementptr inbounds { i1, i64 }, ptr %45, i32 0, i32 1
  %49 = load i64, ptr %48, align 4
  %50 = getelementptr inbounds { i8, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 11, ptr %50, align 1
  br label %_llgo_12

_llgo_29:                                         ; preds = %_llgo_27
  ret { i1, i64 } zeroinitializer
}

define { i8, i64, i64, i64, i64, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" } @TwoLoops(i64 %0) {
_llgo_0:
  %1 = alloca { i8, i64, i64, i64, i64, i64, i64, ptr, ptr }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 72, i1 false)
  %2 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, ptr, ptr }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, ptr, ptr }, ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, ptr, ptr }, ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, ptr, ptr }, ptr %1, i32 0, i32 3
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, ptr, ptr }, ptr %1, i32 0, i32 4
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, ptr, ptr }, ptr %1, i32 0, i32 5
  store i64 0, ptr %7, align 4
  %8 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, ptr, ptr }, ptr %1, i32 0, i32 6
  store i64 0, ptr %8, align 4
  %9 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, ptr, ptr }, ptr %1, i32 0, i32 7
  store ptr null, ptr %9, align 8
  %10 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, ptr, ptr }, ptr %1, i32 0, i32 8
  store ptr null, ptr %10, align 8
  %11 = load { i8, i64, i64, i64, i64, i64, i64, ptr, ptr }, ptr %1, align 8
  ret { i8, i64, i64, i64, i64, i64, i64, ptr, ptr } %11
}

define { i1, i64 } @"TwoLoops$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_10 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
    i8 5, label %_llgo_6
    i8 6, label %_llgo_7
    i8 7, label %_llgo_8
    i8 8, label %_llgo_9
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %4, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %5, align 1
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %6 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 8
  %7 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 7
  %8 = load i1, ptr %7, align 1
  br i1 %8, label %_llgo_12, label %_llgo_11

_llgo_4:                                          ; preds = %_llgo_13, %_llgo_0
  %9 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 4, ptr %9, align 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %10 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 5, ptr %10, align 1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %11 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 6, ptr %11, align 1
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_0
  %12 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 10
  %13 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 9
  %14 = load i1, ptr %13, align 1
  br i1 %14, label %_llgo_16, label %_llgo_15

_llgo_8:                                          ; preds = %_llgo_17, %_llgo_0
  %15 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 8, ptr %15, align 1
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_10:                                         ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_11:                                         ; preds = %_llgo_3
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_3
  %16 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %6, ptr %1)
  %17 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %16, ptr %17, align 4
  %18 = getelementptr inbounds { i1, i64 }, ptr %17, i32 0, i32 0
  %19 = load i1, ptr %18, align 1
  br i1 %19, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %20 = getelementptr inbounds { i1, i64 }, ptr %17, i32 0, i32 1
  %21 = load i64, ptr %20, align 4
  %22 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %22, align 1
  br label %_llgo_4

_llgo_14:                                         ; preds = %_llgo_12
  ret { i1, i64 } zeroinitializer

_llgo_15:                                         ; preds = %_llgo_7
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_7
  %23 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %12, ptr %1)
  %24 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %23, ptr %24, align 4
  %25 = getelementptr inbounds { i1, i64 }, ptr %24, i32 0, i32 0
  %26 = load i1, ptr %25, align 1
  br i1 %26, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %27 = getelementptr inbounds { i1, i64 }, ptr %24, i32 0, i32 1
  %28 = load i64, ptr %27, align 4
  %29 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, i1, %"github.com/goplus/llgo/async.AsyncFuture[int]", i1, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 7, ptr %29, align 1
  br label %_llgo_8

_llgo_18:                                         ; preds = %_llgo_16
  ret { i1, i64 } zeroinitializer
}

define void @"github.com/goplus/llgo/cl/_testpull/complex.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testpull/complex.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testpull/complex.init$guard", align 1
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
