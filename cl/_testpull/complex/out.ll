; ModuleID = 'github.com/goplus/llgo/cl/_testpull/complex'
source_filename = "github.com/goplus/llgo/cl/_testpull/complex"

%"github.com/goplus/llgo/async.Poll[int]" = type { i1, i64 }
%"github.com/goplus/llgo/async.AsyncFuture[int]" = type { { ptr, ptr }, i1, i1, i64 }

@"github.com/goplus/llgo/cl/_testpull/complex.init$guard" = global i1 false, align 1

define { i8, i64, ptr, ptr, ptr, ptr } @ChainedAwaits(i64 %0) {
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
  %2 = getelementptr inbounds { i8, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_6 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_7, label %_llgo_8

_llgo_2:                                          ; preds = %_llgo_9, %_llgo_0
  %7 = getelementptr inbounds { i8, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %_llgo_11, label %_llgo_12

_llgo_3:                                          ; preds = %_llgo_13, %_llgo_0
  %10 = getelementptr inbounds { i8, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %_llgo_15, label %_llgo_16

_llgo_4:                                          ; preds = %_llgo_17, %_llgo_0
  %13 = getelementptr inbounds { i8, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %_llgo_19, label %_llgo_20

_llgo_5:                                          ; preds = %_llgo_21, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_6:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_7:                                          ; preds = %_llgo_1
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_1
  %16 = load ptr, ptr %4, align 8
  %17 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %16, ptr %1)
  %18 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %17, ptr %18, align 4
  %19 = getelementptr inbounds { i1, i64 }, ptr %18, i32 0, i32 0
  %20 = load i1, ptr %19, align 1
  br i1 %20, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %21 = getelementptr inbounds { i1, i64 }, ptr %18, i32 0, i32 1
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds { i8, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 1, ptr %23, align 1
  br label %_llgo_2

_llgo_10:                                         ; preds = %_llgo_8
  ret { i1, i64 } zeroinitializer

_llgo_11:                                         ; preds = %_llgo_2
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_2
  %24 = load ptr, ptr %7, align 8
  %25 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %24, ptr %1)
  %26 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %25, ptr %26, align 4
  %27 = getelementptr inbounds { i1, i64 }, ptr %26, i32 0, i32 0
  %28 = load i1, ptr %27, align 1
  br i1 %28, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %29 = getelementptr inbounds { i1, i64 }, ptr %26, i32 0, i32 1
  %30 = load i64, ptr %29, align 4
  %31 = getelementptr inbounds { i8, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 2, ptr %31, align 1
  br label %_llgo_3

_llgo_14:                                         ; preds = %_llgo_12
  ret { i1, i64 } zeroinitializer

_llgo_15:                                         ; preds = %_llgo_3
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_3
  %32 = load ptr, ptr %10, align 8
  %33 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %32, ptr %1)
  %34 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %33, ptr %34, align 4
  %35 = getelementptr inbounds { i1, i64 }, ptr %34, i32 0, i32 0
  %36 = load i1, ptr %35, align 1
  br i1 %36, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %37 = getelementptr inbounds { i1, i64 }, ptr %34, i32 0, i32 1
  %38 = load i64, ptr %37, align 4
  %39 = getelementptr inbounds { i8, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 3, ptr %39, align 1
  br label %_llgo_4

_llgo_18:                                         ; preds = %_llgo_16
  ret { i1, i64 } zeroinitializer

_llgo_19:                                         ; preds = %_llgo_4
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_4
  %40 = load ptr, ptr %13, align 8
  %41 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %40, ptr %1)
  %42 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %41, ptr %42, align 4
  %43 = getelementptr inbounds { i1, i64 }, ptr %42, i32 0, i32 0
  %44 = load i1, ptr %43, align 1
  br i1 %44, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %45 = getelementptr inbounds { i1, i64 }, ptr %42, i32 0, i32 1
  %46 = load i64, ptr %45, align 4
  %47 = getelementptr inbounds { i8, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 4, ptr %47, align 1
  br label %_llgo_5

_llgo_22:                                         ; preds = %_llgo_20
  ret { i1, i64 } zeroinitializer
}

declare %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr, ptr)

define { i8, i64, ptr, ptr } @ClosureCapture(i64 %0) {
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
  %2 = getelementptr inbounds { i8, i64, ptr, ptr }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_4 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, ptr, ptr }, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_5, label %_llgo_6

_llgo_2:                                          ; preds = %_llgo_7, %_llgo_0
  %7 = getelementptr inbounds { i8, i64, ptr, ptr }, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %_llgo_9, label %_llgo_10

_llgo_3:                                          ; preds = %_llgo_11, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_4:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_5:                                          ; preds = %_llgo_1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_1
  %10 = load ptr, ptr %4, align 8
  %11 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %10, ptr %1)
  %12 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %11, ptr %12, align 4
  %13 = getelementptr inbounds { i1, i64 }, ptr %12, i32 0, i32 0
  %14 = load i1, ptr %13, align 1
  br i1 %14, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %15 = getelementptr inbounds { i1, i64 }, ptr %12, i32 0, i32 1
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr inbounds { i8, i64, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 1, ptr %17, align 1
  br label %_llgo_2

_llgo_8:                                          ; preds = %_llgo_6
  ret { i1, i64 } zeroinitializer

_llgo_9:                                          ; preds = %_llgo_2
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_2
  %18 = load ptr, ptr %7, align 8
  %19 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %18, ptr %1)
  %20 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %19, ptr %20, align 4
  %21 = getelementptr inbounds { i1, i64 }, ptr %20, i32 0, i32 0
  %22 = load i1, ptr %21, align 1
  br i1 %22, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %23 = getelementptr inbounds { i1, i64 }, ptr %20, i32 0, i32 1
  %24 = load i64, ptr %23, align 4
  %25 = getelementptr inbounds { i8, i64, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 2, ptr %25, align 1
  br label %_llgo_3

_llgo_12:                                         ; preds = %_llgo_10
  ret { i1, i64 } zeroinitializer
}

define { i8, i64, i64, ptr, ptr, ptr } @ConditionalChain(i64 %0) {
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
  %2 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
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
  %4 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 1, ptr %4, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_9, label %_llgo_10

_llgo_3:                                          ; preds = %_llgo_11, %_llgo_0
  %8 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 3, ptr %8, align 1
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_0
  %9 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %_llgo_13, label %_llgo_14

_llgo_5:                                          ; preds = %_llgo_15, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_6:                                          ; preds = %_llgo_0
  %12 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %_llgo_17, label %_llgo_18

_llgo_7:                                          ; preds = %_llgo_19, %_llgo_0
  %15 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 7, ptr %15, align 1
  ret { i1, i64 } zeroinitializer

_llgo_8:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_9:                                          ; preds = %_llgo_2
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_2
  %16 = load ptr, ptr %5, align 8
  %17 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %16, ptr %1)
  %18 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %17, ptr %18, align 4
  %19 = getelementptr inbounds { i1, i64 }, ptr %18, i32 0, i32 0
  %20 = load i1, ptr %19, align 1
  br i1 %20, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %21 = getelementptr inbounds { i1, i64 }, ptr %18, i32 0, i32 1
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 2, ptr %23, align 1
  br label %_llgo_3

_llgo_12:                                         ; preds = %_llgo_10
  ret { i1, i64 } zeroinitializer

_llgo_13:                                         ; preds = %_llgo_4
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_4
  %24 = load ptr, ptr %9, align 8
  %25 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %24, ptr %1)
  %26 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %25, ptr %26, align 4
  %27 = getelementptr inbounds { i1, i64 }, ptr %26, i32 0, i32 0
  %28 = load i1, ptr %27, align 1
  br i1 %28, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %29 = getelementptr inbounds { i1, i64 }, ptr %26, i32 0, i32 1
  %30 = load i64, ptr %29, align 4
  %31 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 4, ptr %31, align 1
  br label %_llgo_5

_llgo_16:                                         ; preds = %_llgo_14
  ret { i1, i64 } zeroinitializer

_llgo_17:                                         ; preds = %_llgo_6
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_6
  %32 = load ptr, ptr %12, align 8
  %33 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %32, ptr %1)
  %34 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %33, ptr %34, align 4
  %35 = getelementptr inbounds { i1, i64 }, ptr %34, i32 0, i32 0
  %36 = load i1, ptr %35, align 1
  br i1 %36, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %37 = getelementptr inbounds { i1, i64 }, ptr %34, i32 0, i32 1
  %38 = load i64, ptr %37, align 4
  %39 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 6, ptr %39, align 1
  br label %_llgo_7

_llgo_20:                                         ; preds = %_llgo_18
  ret { i1, i64 } zeroinitializer
}

define { i8, i64, ptr, ptr, ptr } @DeferWithAwait(i64 %0) {
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
  %2 = getelementptr inbounds { i8, i64, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_5 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, ptr, ptr, ptr }, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_6, label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_8, %_llgo_0
  %7 = getelementptr inbounds { i8, i64, ptr, ptr, ptr }, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %_llgo_10, label %_llgo_11

_llgo_3:                                          ; preds = %_llgo_12, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_4:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_5:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_6:                                          ; preds = %_llgo_1
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_1
  %10 = load ptr, ptr %4, align 8
  %11 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %10, ptr %1)
  %12 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %11, ptr %12, align 4
  %13 = getelementptr inbounds { i1, i64 }, ptr %12, i32 0, i32 0
  %14 = load i1, ptr %13, align 1
  br i1 %14, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  %15 = getelementptr inbounds { i1, i64 }, ptr %12, i32 0, i32 1
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr inbounds { i8, i64, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 1, ptr %17, align 1
  br label %_llgo_2

_llgo_9:                                          ; preds = %_llgo_7
  ret { i1, i64 } zeroinitializer

_llgo_10:                                         ; preds = %_llgo_2
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_2
  %18 = load ptr, ptr %7, align 8
  %19 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %18, ptr %1)
  %20 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %19, ptr %20, align 4
  %21 = getelementptr inbounds { i1, i64 }, ptr %20, i32 0, i32 0
  %22 = load i1, ptr %21, align 1
  br i1 %22, label %_llgo_12, label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_11
  %23 = getelementptr inbounds { i1, i64 }, ptr %20, i32 0, i32 1
  %24 = load i64, ptr %23, align 4
  %25 = getelementptr inbounds { i8, i64, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 2, ptr %25, align 1
  br label %_llgo_3

_llgo_13:                                         ; preds = %_llgo_11
  ret { i1, i64 } zeroinitializer
}

define { i8, i64, i64, ptr } @LoopBreakContinue(i64 %0) {
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
  %2 = getelementptr inbounds { i8, i64, i64, ptr }, ptr %0, i32 0, i32 0
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
  %4 = getelementptr inbounds { i8, i64, i64, ptr }, ptr %0, i32 0, i32 0
  store i8 1, ptr %4, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = getelementptr inbounds { i8, i64, i64, ptr }, ptr %0, i32 0, i32 0
  store i8 2, ptr %5, align 1
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %6 = getelementptr inbounds { i8, i64, i64, ptr }, ptr %0, i32 0, i32 0
  store i8 3, ptr %6, align 1
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_0
  %7 = getelementptr inbounds { i8, i64, i64, ptr }, ptr %0, i32 0, i32 0
  store i8 4, ptr %7, align 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_6:                                          ; preds = %_llgo_0
  %8 = getelementptr inbounds { i8, i64, i64, ptr }, ptr %0, i32 0, i32 0
  store i8 6, ptr %8, align 1
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_0
  %9 = getelementptr inbounds { i8, i64, i64, ptr }, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %_llgo_10, label %_llgo_11

_llgo_8:                                          ; preds = %_llgo_12, %_llgo_0
  %12 = getelementptr inbounds { i8, i64, i64, ptr }, ptr %0, i32 0, i32 0
  store i8 8, ptr %12, align 1
  ret { i1, i64 } zeroinitializer

_llgo_9:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_10:                                         ; preds = %_llgo_7
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_7
  %13 = load ptr, ptr %9, align 8
  %14 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %13, ptr %1)
  %15 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %14, ptr %15, align 4
  %16 = getelementptr inbounds { i1, i64 }, ptr %15, i32 0, i32 0
  %17 = load i1, ptr %16, align 1
  br i1 %17, label %_llgo_12, label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_11
  %18 = getelementptr inbounds { i1, i64 }, ptr %15, i32 0, i32 1
  %19 = load i64, ptr %18, align 4
  %20 = getelementptr inbounds { i8, i64, i64, ptr }, ptr %0, i32 0, i32 0
  store i8 7, ptr %20, align 1
  br label %_llgo_8

_llgo_13:                                         ; preds = %_llgo_11
  ret { i1, i64 } zeroinitializer
}

define { i8, i64, i64, i64, ptr } @LoopWithAccumulator(i64 %0) {
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
  %2 = getelementptr inbounds { i8, i64, i64, i64, ptr }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_6 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, i64, i64, ptr }, ptr %0, i32 0, i32 0
  store i8 1, ptr %4, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = getelementptr inbounds { i8, i64, i64, i64, ptr }, ptr %0, i32 0, i32 0
  store i8 2, ptr %5, align 1
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %6 = getelementptr inbounds { i8, i64, i64, i64, ptr }, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %_llgo_7, label %_llgo_8

_llgo_4:                                          ; preds = %_llgo_9, %_llgo_0
  %9 = getelementptr inbounds { i8, i64, i64, i64, ptr }, ptr %0, i32 0, i32 0
  store i8 4, ptr %9, align 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_6:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_3
  %10 = load ptr, ptr %6, align 8
  %11 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %10, ptr %1)
  %12 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %11, ptr %12, align 4
  %13 = getelementptr inbounds { i1, i64 }, ptr %12, i32 0, i32 0
  %14 = load i1, ptr %13, align 1
  br i1 %14, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %15 = getelementptr inbounds { i1, i64 }, ptr %12, i32 0, i32 1
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr inbounds { i8, i64, i64, i64, ptr }, ptr %0, i32 0, i32 0
  store i8 3, ptr %17, align 1
  br label %_llgo_4

_llgo_10:                                         ; preds = %_llgo_8
  ret { i1, i64 } zeroinitializer
}

define { i8, i64, i64, ptr, ptr, ptr } @MultipleReturnPaths(i64 %0) {
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
  %2 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
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
  %4 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 1, ptr %4, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_12, label %_llgo_13

_llgo_3:                                          ; preds = %_llgo_14, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_4:                                          ; preds = %_llgo_0
  %8 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 4, ptr %8, align 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_6:                                          ; preds = %_llgo_0
  %9 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %_llgo_16, label %_llgo_17

_llgo_7:                                          ; preds = %_llgo_18, %_llgo_0
  %12 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 7, ptr %12, align 1
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_9:                                          ; preds = %_llgo_0
  %13 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %_llgo_20, label %_llgo_21

_llgo_10:                                         ; preds = %_llgo_22, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_11:                                         ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_12:                                         ; preds = %_llgo_2
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_2
  %16 = load ptr, ptr %5, align 8
  %17 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %16, ptr %1)
  %18 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %17, ptr %18, align 4
  %19 = getelementptr inbounds { i1, i64 }, ptr %18, i32 0, i32 0
  %20 = load i1, ptr %19, align 1
  br i1 %20, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  %21 = getelementptr inbounds { i1, i64 }, ptr %18, i32 0, i32 1
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 2, ptr %23, align 1
  br label %_llgo_3

_llgo_15:                                         ; preds = %_llgo_13
  ret { i1, i64 } zeroinitializer

_llgo_16:                                         ; preds = %_llgo_6
  br label %_llgo_17

_llgo_17:                                         ; preds = %_llgo_16, %_llgo_6
  %24 = load ptr, ptr %9, align 8
  %25 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %24, ptr %1)
  %26 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %25, ptr %26, align 4
  %27 = getelementptr inbounds { i1, i64 }, ptr %26, i32 0, i32 0
  %28 = load i1, ptr %27, align 1
  br i1 %28, label %_llgo_18, label %_llgo_19

_llgo_18:                                         ; preds = %_llgo_17
  %29 = getelementptr inbounds { i1, i64 }, ptr %26, i32 0, i32 1
  %30 = load i64, ptr %29, align 4
  %31 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 6, ptr %31, align 1
  br label %_llgo_7

_llgo_19:                                         ; preds = %_llgo_17
  ret { i1, i64 } zeroinitializer

_llgo_20:                                         ; preds = %_llgo_9
  br label %_llgo_21

_llgo_21:                                         ; preds = %_llgo_20, %_llgo_9
  %32 = load ptr, ptr %13, align 8
  %33 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %32, ptr %1)
  %34 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %33, ptr %34, align 4
  %35 = getelementptr inbounds { i1, i64 }, ptr %34, i32 0, i32 0
  %36 = load i1, ptr %35, align 1
  br i1 %36, label %_llgo_22, label %_llgo_23

_llgo_22:                                         ; preds = %_llgo_21
  %37 = getelementptr inbounds { i1, i64 }, ptr %34, i32 0, i32 1
  %38 = load i64, ptr %37, align 4
  %39 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 9, ptr %39, align 1
  br label %_llgo_10

_llgo_23:                                         ; preds = %_llgo_21
  ret { i1, i64 } zeroinitializer
}

define { i8, i64, i64, ptr, ptr, ptr, ptr } @NestedConditions(i64 %0) {
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
  %2 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
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
  %4 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 1, ptr %4, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_12, label %_llgo_13

_llgo_3:                                          ; preds = %_llgo_14, %_llgo_0
  %8 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 3, ptr %8, align 1
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_5:                                          ; preds = %_llgo_0
  %9 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %_llgo_16, label %_llgo_17

_llgo_6:                                          ; preds = %_llgo_18, %_llgo_0
  %12 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 6, ptr %12, align 1
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_0
  %13 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %_llgo_20, label %_llgo_21

_llgo_8:                                          ; preds = %_llgo_22, %_llgo_0
  %16 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 8, ptr %16, align 1
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_0
  %17 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 6
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %_llgo_24, label %_llgo_25

_llgo_10:                                         ; preds = %_llgo_26, %_llgo_0
  %20 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 10, ptr %20, align 1
  ret { i1, i64 } zeroinitializer

_llgo_11:                                         ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_12:                                         ; preds = %_llgo_2
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_2
  %21 = load ptr, ptr %5, align 8
  %22 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %21, ptr %1)
  %23 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %22, ptr %23, align 4
  %24 = getelementptr inbounds { i1, i64 }, ptr %23, i32 0, i32 0
  %25 = load i1, ptr %24, align 1
  br i1 %25, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  %26 = getelementptr inbounds { i1, i64 }, ptr %23, i32 0, i32 1
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 2
  store i64 %27, ptr %28, align 4
  %29 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 2, ptr %29, align 1
  br label %_llgo_3

_llgo_15:                                         ; preds = %_llgo_13
  ret { i1, i64 } zeroinitializer

_llgo_16:                                         ; preds = %_llgo_5
  br label %_llgo_17

_llgo_17:                                         ; preds = %_llgo_16, %_llgo_5
  %30 = load ptr, ptr %9, align 8
  %31 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %30, ptr %1)
  %32 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %31, ptr %32, align 4
  %33 = getelementptr inbounds { i1, i64 }, ptr %32, i32 0, i32 0
  %34 = load i1, ptr %33, align 1
  br i1 %34, label %_llgo_18, label %_llgo_19

_llgo_18:                                         ; preds = %_llgo_17
  %35 = getelementptr inbounds { i1, i64 }, ptr %32, i32 0, i32 1
  %36 = load i64, ptr %35, align 4
  %37 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 5, ptr %37, align 1
  br label %_llgo_6

_llgo_19:                                         ; preds = %_llgo_17
  ret { i1, i64 } zeroinitializer

_llgo_20:                                         ; preds = %_llgo_7
  br label %_llgo_21

_llgo_21:                                         ; preds = %_llgo_20, %_llgo_7
  %38 = load ptr, ptr %13, align 8
  %39 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %38, ptr %1)
  %40 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %39, ptr %40, align 4
  %41 = getelementptr inbounds { i1, i64 }, ptr %40, i32 0, i32 0
  %42 = load i1, ptr %41, align 1
  br i1 %42, label %_llgo_22, label %_llgo_23

_llgo_22:                                         ; preds = %_llgo_21
  %43 = getelementptr inbounds { i1, i64 }, ptr %40, i32 0, i32 1
  %44 = load i64, ptr %43, align 4
  %45 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 7, ptr %45, align 1
  br label %_llgo_8

_llgo_23:                                         ; preds = %_llgo_21
  ret { i1, i64 } zeroinitializer

_llgo_24:                                         ; preds = %_llgo_9
  br label %_llgo_25

_llgo_25:                                         ; preds = %_llgo_24, %_llgo_9
  %46 = load ptr, ptr %17, align 8
  %47 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %46, ptr %1)
  %48 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %47, ptr %48, align 4
  %49 = getelementptr inbounds { i1, i64 }, ptr %48, i32 0, i32 0
  %50 = load i1, ptr %49, align 1
  br i1 %50, label %_llgo_26, label %_llgo_27

_llgo_26:                                         ; preds = %_llgo_25
  %51 = getelementptr inbounds { i1, i64 }, ptr %48, i32 0, i32 1
  %52 = load i64, ptr %51, align 4
  %53 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 9, ptr %53, align 1
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

define { i8, i64, i64, ptr, ptr, ptr, ptr } @SwitchWithFallthrough(i64 %0) {
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
  %2 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
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
  %4 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 1, ptr %4, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_3:                                          ; preds = %_llgo_0
  %5 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_14, label %_llgo_15

_llgo_4:                                          ; preds = %_llgo_16, %_llgo_0
  %8 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 4, ptr %8, align 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %9 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %_llgo_18, label %_llgo_19

_llgo_6:                                          ; preds = %_llgo_20, %_llgo_0
  %12 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 6, ptr %12, align 1
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_0
  %13 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 7, ptr %13, align 1
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_0
  %14 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 5
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %_llgo_22, label %_llgo_23

_llgo_9:                                          ; preds = %_llgo_24, %_llgo_0
  %17 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 9, ptr %17, align 1
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_0
  %18 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 10, ptr %18, align 1
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_0
  %19 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 6
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %_llgo_26, label %_llgo_27

_llgo_12:                                         ; preds = %_llgo_28, %_llgo_0
  %22 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 12, ptr %22, align 1
  ret { i1, i64 } zeroinitializer

_llgo_13:                                         ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_14:                                         ; preds = %_llgo_3
  br label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14, %_llgo_3
  %23 = load ptr, ptr %5, align 8
  %24 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %23, ptr %1)
  %25 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %24, ptr %25, align 4
  %26 = getelementptr inbounds { i1, i64 }, ptr %25, i32 0, i32 0
  %27 = load i1, ptr %26, align 1
  br i1 %27, label %_llgo_16, label %_llgo_17

_llgo_16:                                         ; preds = %_llgo_15
  %28 = getelementptr inbounds { i1, i64 }, ptr %25, i32 0, i32 1
  %29 = load i64, ptr %28, align 4
  %30 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 3, ptr %30, align 1
  br label %_llgo_4

_llgo_17:                                         ; preds = %_llgo_15
  ret { i1, i64 } zeroinitializer

_llgo_18:                                         ; preds = %_llgo_5
  br label %_llgo_19

_llgo_19:                                         ; preds = %_llgo_18, %_llgo_5
  %31 = load ptr, ptr %9, align 8
  %32 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %31, ptr %1)
  %33 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %32, ptr %33, align 4
  %34 = getelementptr inbounds { i1, i64 }, ptr %33, i32 0, i32 0
  %35 = load i1, ptr %34, align 1
  br i1 %35, label %_llgo_20, label %_llgo_21

_llgo_20:                                         ; preds = %_llgo_19
  %36 = getelementptr inbounds { i1, i64 }, ptr %33, i32 0, i32 1
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 5, ptr %38, align 1
  br label %_llgo_6

_llgo_21:                                         ; preds = %_llgo_19
  ret { i1, i64 } zeroinitializer

_llgo_22:                                         ; preds = %_llgo_8
  br label %_llgo_23

_llgo_23:                                         ; preds = %_llgo_22, %_llgo_8
  %39 = load ptr, ptr %14, align 8
  %40 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %39, ptr %1)
  %41 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %40, ptr %41, align 4
  %42 = getelementptr inbounds { i1, i64 }, ptr %41, i32 0, i32 0
  %43 = load i1, ptr %42, align 1
  br i1 %43, label %_llgo_24, label %_llgo_25

_llgo_24:                                         ; preds = %_llgo_23
  %44 = getelementptr inbounds { i1, i64 }, ptr %41, i32 0, i32 1
  %45 = load i64, ptr %44, align 4
  %46 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 8, ptr %46, align 1
  br label %_llgo_9

_llgo_25:                                         ; preds = %_llgo_23
  ret { i1, i64 } zeroinitializer

_llgo_26:                                         ; preds = %_llgo_11
  br label %_llgo_27

_llgo_27:                                         ; preds = %_llgo_26, %_llgo_11
  %47 = load ptr, ptr %19, align 8
  %48 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %47, ptr %1)
  %49 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %48, ptr %49, align 4
  %50 = getelementptr inbounds { i1, i64 }, ptr %49, i32 0, i32 0
  %51 = load i1, ptr %50, align 1
  br i1 %51, label %_llgo_28, label %_llgo_29

_llgo_28:                                         ; preds = %_llgo_27
  %52 = getelementptr inbounds { i1, i64 }, ptr %49, i32 0, i32 1
  %53 = load i64, ptr %52, align 4
  %54 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 11, ptr %54, align 1
  br label %_llgo_12

_llgo_29:                                         ; preds = %_llgo_27
  ret { i1, i64 } zeroinitializer
}

define { i8, i64, i64, i64, i64, i64, i64, ptr, ptr } @TwoLoops(i64 %0) {
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
  %2 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, ptr, ptr }, ptr %0, i32 0, i32 0
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
  %4 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 1, ptr %4, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 2, ptr %5, align 1
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %6 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, ptr, ptr }, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %_llgo_11, label %_llgo_12

_llgo_4:                                          ; preds = %_llgo_13, %_llgo_0
  %9 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 4, ptr %9, align 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %10 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 5, ptr %10, align 1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %11 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 6, ptr %11, align 1
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_0
  %12 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, ptr, ptr }, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %_llgo_15, label %_llgo_16

_llgo_8:                                          ; preds = %_llgo_17, %_llgo_0
  %15 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 8, ptr %15, align 1
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_10:                                         ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_11:                                         ; preds = %_llgo_3
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_3
  %16 = load ptr, ptr %6, align 8
  %17 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %16, ptr %1)
  %18 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %17, ptr %18, align 4
  %19 = getelementptr inbounds { i1, i64 }, ptr %18, i32 0, i32 0
  %20 = load i1, ptr %19, align 1
  br i1 %20, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %21 = getelementptr inbounds { i1, i64 }, ptr %18, i32 0, i32 1
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 3, ptr %23, align 1
  br label %_llgo_4

_llgo_14:                                         ; preds = %_llgo_12
  ret { i1, i64 } zeroinitializer

_llgo_15:                                         ; preds = %_llgo_7
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_7
  %24 = load ptr, ptr %12, align 8
  %25 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %24, ptr %1)
  %26 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %25, ptr %26, align 4
  %27 = getelementptr inbounds { i1, i64 }, ptr %26, i32 0, i32 0
  %28 = load i1, ptr %27, align 1
  br i1 %28, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %29 = getelementptr inbounds { i1, i64 }, ptr %26, i32 0, i32 1
  %30 = load i64, ptr %29, align 4
  %31 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 7, ptr %31, align 1
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
