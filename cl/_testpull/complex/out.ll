; ModuleID = 'github.com/goplus/llgo/cl/_testpull/complex'
source_filename = "github.com/goplus/llgo/cl/_testpull/complex"

%"github.com/goplus/llgo/async.AsyncFuture[int]" = type { { ptr, ptr }, i1, i1, i64 }
%"github.com/goplus/llgo/async.Poll[int]" = type { i1, i64 }

@"github.com/goplus/llgo/cl/_testpull/complex.init$guard" = global i1 false, align 1

define { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" } @ChainedAwaits(i64 %0) {
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
  %2 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_6 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds { ptr, ptr }, ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %_llgo_7, label %_llgo_8

_llgo_2:                                          ; preds = %_llgo_9, %_llgo_0
  %9 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %10 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %9, i32 0, i32 0
  %11 = getelementptr inbounds { ptr, ptr }, ptr %10, i32 0, i32 0
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %_llgo_11, label %_llgo_12

_llgo_3:                                          ; preds = %_llgo_13, %_llgo_0
  %14 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %15 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %14, i32 0, i32 0
  %16 = getelementptr inbounds { ptr, ptr }, ptr %15, i32 0, i32 0
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %_llgo_15, label %_llgo_16

_llgo_4:                                          ; preds = %_llgo_17, %_llgo_0
  %19 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %20 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %19, i32 0, i32 0
  %21 = getelementptr inbounds { ptr, ptr }, ptr %20, i32 0, i32 0
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %_llgo_19, label %_llgo_20

_llgo_5:                                          ; preds = %_llgo_21, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_6:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_7:                                          ; preds = %_llgo_1
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_1
  %24 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %4, ptr %1)
  %25 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %24, ptr %25, align 4
  %26 = getelementptr inbounds { i1, i64 }, ptr %25, i32 0, i32 0
  %27 = load i1, ptr %26, align 1
  br i1 %27, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %28 = getelementptr inbounds { i1, i64 }, ptr %25, i32 0, i32 1
  %29 = load i64, ptr %28, align 4
  %30 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %30, align 1
  br label %_llgo_2

_llgo_10:                                         ; preds = %_llgo_8
  ret { i1, i64 } zeroinitializer

_llgo_11:                                         ; preds = %_llgo_2
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_2
  %31 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %9, ptr %1)
  %32 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %31, ptr %32, align 4
  %33 = getelementptr inbounds { i1, i64 }, ptr %32, i32 0, i32 0
  %34 = load i1, ptr %33, align 1
  br i1 %34, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %35 = getelementptr inbounds { i1, i64 }, ptr %32, i32 0, i32 1
  %36 = load i64, ptr %35, align 4
  %37 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %37, align 1
  br label %_llgo_3

_llgo_14:                                         ; preds = %_llgo_12
  ret { i1, i64 } zeroinitializer

_llgo_15:                                         ; preds = %_llgo_3
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_3
  %38 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %14, ptr %1)
  %39 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %38, ptr %39, align 4
  %40 = getelementptr inbounds { i1, i64 }, ptr %39, i32 0, i32 0
  %41 = load i1, ptr %40, align 1
  br i1 %41, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %42 = getelementptr inbounds { i1, i64 }, ptr %39, i32 0, i32 1
  %43 = load i64, ptr %42, align 4
  %44 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %44, align 1
  br label %_llgo_4

_llgo_18:                                         ; preds = %_llgo_16
  ret { i1, i64 } zeroinitializer

_llgo_19:                                         ; preds = %_llgo_4
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_4
  %45 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %19, ptr %1)
  %46 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %45, ptr %46, align 4
  %47 = getelementptr inbounds { i1, i64 }, ptr %46, i32 0, i32 0
  %48 = load i1, ptr %47, align 1
  br i1 %48, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %49 = getelementptr inbounds { i1, i64 }, ptr %46, i32 0, i32 1
  %50 = load i64, ptr %49, align 4
  %51 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 4, ptr %51, align 1
  br label %_llgo_5

_llgo_22:                                         ; preds = %_llgo_20
  ret { i1, i64 } zeroinitializer
}

declare %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr, ptr)

define { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" } @ClosureCapture(i64 %0) {
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
  %2 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_4 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds { ptr, ptr }, ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %_llgo_5, label %_llgo_6

_llgo_2:                                          ; preds = %_llgo_7, %_llgo_0
  %9 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %10 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %9, i32 0, i32 0
  %11 = getelementptr inbounds { ptr, ptr }, ptr %10, i32 0, i32 0
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %_llgo_9, label %_llgo_10

_llgo_3:                                          ; preds = %_llgo_11, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_4:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_5:                                          ; preds = %_llgo_1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_1
  %14 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %4, ptr %1)
  %15 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %14, ptr %15, align 4
  %16 = getelementptr inbounds { i1, i64 }, ptr %15, i32 0, i32 0
  %17 = load i1, ptr %16, align 1
  br i1 %17, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %18 = getelementptr inbounds { i1, i64 }, ptr %15, i32 0, i32 1
  %19 = load i64, ptr %18, align 4
  %20 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %20, align 1
  br label %_llgo_2

_llgo_8:                                          ; preds = %_llgo_6
  ret { i1, i64 } zeroinitializer

_llgo_9:                                          ; preds = %_llgo_2
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_2
  %21 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %9, ptr %1)
  %22 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %21, ptr %22, align 4
  %23 = getelementptr inbounds { i1, i64 }, ptr %22, i32 0, i32 0
  %24 = load i1, ptr %23, align 1
  br i1 %24, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %25 = getelementptr inbounds { i1, i64 }, ptr %22, i32 0, i32 1
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %27, align 1
  br label %_llgo_3

_llgo_12:                                         ; preds = %_llgo_10
  ret { i1, i64 } zeroinitializer
}

define { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" } @ConditionalChain(i64 %0) {
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
  %2 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
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
  %4 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %4, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds { ptr, ptr }, ptr %6, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %_llgo_9, label %_llgo_10

_llgo_3:                                          ; preds = %_llgo_11, %_llgo_0
  %10 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %10, align 1
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_0
  %11 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %11, i32 0, i32 0
  %13 = getelementptr inbounds { ptr, ptr }, ptr %12, i32 0, i32 0
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %_llgo_13, label %_llgo_14

_llgo_5:                                          ; preds = %_llgo_15, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_6:                                          ; preds = %_llgo_0
  %16 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %17 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %16, i32 0, i32 0
  %18 = getelementptr inbounds { ptr, ptr }, ptr %17, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %_llgo_17, label %_llgo_18

_llgo_7:                                          ; preds = %_llgo_19, %_llgo_0
  %21 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 7, ptr %21, align 1
  ret { i1, i64 } zeroinitializer

_llgo_8:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_9:                                          ; preds = %_llgo_2
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_2
  %22 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %5, ptr %1)
  %23 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %22, ptr %23, align 4
  %24 = getelementptr inbounds { i1, i64 }, ptr %23, i32 0, i32 0
  %25 = load i1, ptr %24, align 1
  br i1 %25, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %26 = getelementptr inbounds { i1, i64 }, ptr %23, i32 0, i32 1
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %28, align 1
  br label %_llgo_3

_llgo_12:                                         ; preds = %_llgo_10
  ret { i1, i64 } zeroinitializer

_llgo_13:                                         ; preds = %_llgo_4
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_4
  %29 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %11, ptr %1)
  %30 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %29, ptr %30, align 4
  %31 = getelementptr inbounds { i1, i64 }, ptr %30, i32 0, i32 0
  %32 = load i1, ptr %31, align 1
  br i1 %32, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %33 = getelementptr inbounds { i1, i64 }, ptr %30, i32 0, i32 1
  %34 = load i64, ptr %33, align 4
  %35 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 4, ptr %35, align 1
  br label %_llgo_5

_llgo_16:                                         ; preds = %_llgo_14
  ret { i1, i64 } zeroinitializer

_llgo_17:                                         ; preds = %_llgo_6
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_6
  %36 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %16, ptr %1)
  %37 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %36, ptr %37, align 4
  %38 = getelementptr inbounds { i1, i64 }, ptr %37, i32 0, i32 0
  %39 = load i1, ptr %38, align 1
  br i1 %39, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %40 = getelementptr inbounds { i1, i64 }, ptr %37, i32 0, i32 1
  %41 = load i64, ptr %40, align 4
  %42 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 6, ptr %42, align 1
  br label %_llgo_7

_llgo_20:                                         ; preds = %_llgo_18
  ret { i1, i64 } zeroinitializer
}

define { i8, i64, ptr, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" } @DeferWithAwait(i64 %0) {
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
  %2 = getelementptr inbounds { i8, i64, ptr, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_5 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, ptr, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds { ptr, ptr }, ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %_llgo_6, label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_8, %_llgo_0
  %9 = getelementptr inbounds { i8, i64, ptr, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %9, i32 0, i32 0
  %11 = getelementptr inbounds { ptr, ptr }, ptr %10, i32 0, i32 0
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %_llgo_10, label %_llgo_11

_llgo_3:                                          ; preds = %_llgo_12, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_4:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_5:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_6:                                          ; preds = %_llgo_1
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_1
  %14 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %4, ptr %1)
  %15 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %14, ptr %15, align 4
  %16 = getelementptr inbounds { i1, i64 }, ptr %15, i32 0, i32 0
  %17 = load i1, ptr %16, align 1
  br i1 %17, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  %18 = getelementptr inbounds { i1, i64 }, ptr %15, i32 0, i32 1
  %19 = load i64, ptr %18, align 4
  %20 = getelementptr inbounds { i8, i64, ptr, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %20, align 1
  br label %_llgo_2

_llgo_9:                                          ; preds = %_llgo_7
  ret { i1, i64 } zeroinitializer

_llgo_10:                                         ; preds = %_llgo_2
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_2
  %21 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %9, ptr %1)
  %22 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %21, ptr %22, align 4
  %23 = getelementptr inbounds { i1, i64 }, ptr %22, i32 0, i32 0
  %24 = load i1, ptr %23, align 1
  br i1 %24, label %_llgo_12, label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_11
  %25 = getelementptr inbounds { i1, i64 }, ptr %22, i32 0, i32 1
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds { i8, i64, ptr, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %27, align 1
  br label %_llgo_3

_llgo_13:                                         ; preds = %_llgo_11
  ret { i1, i64 } zeroinitializer
}

define { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" } @LoopBreakContinue(i64 %0) {
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
  %2 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
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
  %4 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %4, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %5, align 1
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %6 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %6, align 1
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_0
  %7 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 4, ptr %7, align 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_6:                                          ; preds = %_llgo_0
  %8 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 6, ptr %8, align 1
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_0
  %9 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %10 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %9, i32 0, i32 0
  %11 = getelementptr inbounds { ptr, ptr }, ptr %10, i32 0, i32 0
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %_llgo_10, label %_llgo_11

_llgo_8:                                          ; preds = %_llgo_12, %_llgo_0
  %14 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 8, ptr %14, align 1
  ret { i1, i64 } zeroinitializer

_llgo_9:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_10:                                         ; preds = %_llgo_7
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_7
  %15 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %9, ptr %1)
  %16 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %15, ptr %16, align 4
  %17 = getelementptr inbounds { i1, i64 }, ptr %16, i32 0, i32 0
  %18 = load i1, ptr %17, align 1
  br i1 %18, label %_llgo_12, label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_11
  %19 = getelementptr inbounds { i1, i64 }, ptr %16, i32 0, i32 1
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 7, ptr %21, align 1
  br label %_llgo_8

_llgo_13:                                         ; preds = %_llgo_11
  ret { i1, i64 } zeroinitializer
}

define { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" } @LoopWithAccumulator(i64 %0) {
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
  %2 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_6 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %4, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %5, align 1
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %6 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds { ptr, ptr }, ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %_llgo_7, label %_llgo_8

_llgo_4:                                          ; preds = %_llgo_9, %_llgo_0
  %11 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 4, ptr %11, align 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_6:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_3
  %12 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %6, ptr %1)
  %13 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %12, ptr %13, align 4
  %14 = getelementptr inbounds { i1, i64 }, ptr %13, i32 0, i32 0
  %15 = load i1, ptr %14, align 1
  br i1 %15, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %16 = getelementptr inbounds { i1, i64 }, ptr %13, i32 0, i32 1
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %18, align 1
  br label %_llgo_4

_llgo_10:                                         ; preds = %_llgo_8
  ret { i1, i64 } zeroinitializer
}

define { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" } @MultipleReturnPaths(i64 %0) {
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
  %2 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
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
  %4 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %4, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds { ptr, ptr }, ptr %6, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %_llgo_12, label %_llgo_13

_llgo_3:                                          ; preds = %_llgo_14, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_4:                                          ; preds = %_llgo_0
  %10 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 4, ptr %10, align 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_6:                                          ; preds = %_llgo_0
  %11 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %11, i32 0, i32 0
  %13 = getelementptr inbounds { ptr, ptr }, ptr %12, i32 0, i32 0
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %_llgo_16, label %_llgo_17

_llgo_7:                                          ; preds = %_llgo_18, %_llgo_0
  %16 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 7, ptr %16, align 1
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_9:                                          ; preds = %_llgo_0
  %17 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %18 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %17, i32 0, i32 0
  %19 = getelementptr inbounds { ptr, ptr }, ptr %18, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %_llgo_20, label %_llgo_21

_llgo_10:                                         ; preds = %_llgo_22, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_11:                                         ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_12:                                         ; preds = %_llgo_2
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_2
  %22 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %5, ptr %1)
  %23 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %22, ptr %23, align 4
  %24 = getelementptr inbounds { i1, i64 }, ptr %23, i32 0, i32 0
  %25 = load i1, ptr %24, align 1
  br i1 %25, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  %26 = getelementptr inbounds { i1, i64 }, ptr %23, i32 0, i32 1
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %28, align 1
  br label %_llgo_3

_llgo_15:                                         ; preds = %_llgo_13
  ret { i1, i64 } zeroinitializer

_llgo_16:                                         ; preds = %_llgo_6
  br label %_llgo_17

_llgo_17:                                         ; preds = %_llgo_16, %_llgo_6
  %29 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %11, ptr %1)
  %30 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %29, ptr %30, align 4
  %31 = getelementptr inbounds { i1, i64 }, ptr %30, i32 0, i32 0
  %32 = load i1, ptr %31, align 1
  br i1 %32, label %_llgo_18, label %_llgo_19

_llgo_18:                                         ; preds = %_llgo_17
  %33 = getelementptr inbounds { i1, i64 }, ptr %30, i32 0, i32 1
  %34 = load i64, ptr %33, align 4
  %35 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 6, ptr %35, align 1
  br label %_llgo_7

_llgo_19:                                         ; preds = %_llgo_17
  ret { i1, i64 } zeroinitializer

_llgo_20:                                         ; preds = %_llgo_9
  br label %_llgo_21

_llgo_21:                                         ; preds = %_llgo_20, %_llgo_9
  %36 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %17, ptr %1)
  %37 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %36, ptr %37, align 4
  %38 = getelementptr inbounds { i1, i64 }, ptr %37, i32 0, i32 0
  %39 = load i1, ptr %38, align 1
  br i1 %39, label %_llgo_22, label %_llgo_23

_llgo_22:                                         ; preds = %_llgo_21
  %40 = getelementptr inbounds { i1, i64 }, ptr %37, i32 0, i32 1
  %41 = load i64, ptr %40, align 4
  %42 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 9, ptr %42, align 1
  br label %_llgo_10

_llgo_23:                                         ; preds = %_llgo_21
  ret { i1, i64 } zeroinitializer
}

define { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" } @NestedConditions(i64 %0) {
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
  %2 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
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
  %4 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %4, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds { ptr, ptr }, ptr %6, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %_llgo_12, label %_llgo_13

_llgo_3:                                          ; preds = %_llgo_14, %_llgo_0
  %10 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %10, align 1
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_5:                                          ; preds = %_llgo_0
  %11 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %11, i32 0, i32 0
  %13 = getelementptr inbounds { ptr, ptr }, ptr %12, i32 0, i32 0
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %_llgo_16, label %_llgo_17

_llgo_6:                                          ; preds = %_llgo_18, %_llgo_0
  %16 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 6, ptr %16, align 1
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_0
  %17 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %18 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %17, i32 0, i32 0
  %19 = getelementptr inbounds { ptr, ptr }, ptr %18, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %_llgo_20, label %_llgo_21

_llgo_8:                                          ; preds = %_llgo_22, %_llgo_0
  %22 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 8, ptr %22, align 1
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_0
  %23 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 6
  %24 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %23, i32 0, i32 0
  %25 = getelementptr inbounds { ptr, ptr }, ptr %24, i32 0, i32 0
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %_llgo_24, label %_llgo_25

_llgo_10:                                         ; preds = %_llgo_26, %_llgo_0
  %28 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 10, ptr %28, align 1
  ret { i1, i64 } zeroinitializer

_llgo_11:                                         ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_12:                                         ; preds = %_llgo_2
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_2
  %29 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %5, ptr %1)
  %30 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %29, ptr %30, align 4
  %31 = getelementptr inbounds { i1, i64 }, ptr %30, i32 0, i32 0
  %32 = load i1, ptr %31, align 1
  br i1 %32, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  %33 = getelementptr inbounds { i1, i64 }, ptr %30, i32 0, i32 1
  %34 = load i64, ptr %33, align 4
  %35 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  store i64 %34, ptr %35, align 4
  %36 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %36, align 1
  br label %_llgo_3

_llgo_15:                                         ; preds = %_llgo_13
  ret { i1, i64 } zeroinitializer

_llgo_16:                                         ; preds = %_llgo_5
  br label %_llgo_17

_llgo_17:                                         ; preds = %_llgo_16, %_llgo_5
  %37 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %11, ptr %1)
  %38 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %37, ptr %38, align 4
  %39 = getelementptr inbounds { i1, i64 }, ptr %38, i32 0, i32 0
  %40 = load i1, ptr %39, align 1
  br i1 %40, label %_llgo_18, label %_llgo_19

_llgo_18:                                         ; preds = %_llgo_17
  %41 = getelementptr inbounds { i1, i64 }, ptr %38, i32 0, i32 1
  %42 = load i64, ptr %41, align 4
  %43 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 5, ptr %43, align 1
  br label %_llgo_6

_llgo_19:                                         ; preds = %_llgo_17
  ret { i1, i64 } zeroinitializer

_llgo_20:                                         ; preds = %_llgo_7
  br label %_llgo_21

_llgo_21:                                         ; preds = %_llgo_20, %_llgo_7
  %44 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %17, ptr %1)
  %45 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %44, ptr %45, align 4
  %46 = getelementptr inbounds { i1, i64 }, ptr %45, i32 0, i32 0
  %47 = load i1, ptr %46, align 1
  br i1 %47, label %_llgo_22, label %_llgo_23

_llgo_22:                                         ; preds = %_llgo_21
  %48 = getelementptr inbounds { i1, i64 }, ptr %45, i32 0, i32 1
  %49 = load i64, ptr %48, align 4
  %50 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 7, ptr %50, align 1
  br label %_llgo_8

_llgo_23:                                         ; preds = %_llgo_21
  ret { i1, i64 } zeroinitializer

_llgo_24:                                         ; preds = %_llgo_9
  br label %_llgo_25

_llgo_25:                                         ; preds = %_llgo_24, %_llgo_9
  %51 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %23, ptr %1)
  %52 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %51, ptr %52, align 4
  %53 = getelementptr inbounds { i1, i64 }, ptr %52, i32 0, i32 0
  %54 = load i1, ptr %53, align 1
  br i1 %54, label %_llgo_26, label %_llgo_27

_llgo_26:                                         ; preds = %_llgo_25
  %55 = getelementptr inbounds { i1, i64 }, ptr %52, i32 0, i32 1
  %56 = load i64, ptr %55, align 4
  %57 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 9, ptr %57, align 1
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

define { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" } @SwitchWithFallthrough(i64 %0) {
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
  %2 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
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
  %4 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %4, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_3:                                          ; preds = %_llgo_0
  %5 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds { ptr, ptr }, ptr %6, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %_llgo_14, label %_llgo_15

_llgo_4:                                          ; preds = %_llgo_16, %_llgo_0
  %10 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 4, ptr %10, align 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %11 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %11, i32 0, i32 0
  %13 = getelementptr inbounds { ptr, ptr }, ptr %12, i32 0, i32 0
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %_llgo_18, label %_llgo_19

_llgo_6:                                          ; preds = %_llgo_20, %_llgo_0
  %16 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 6, ptr %16, align 1
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_0
  %17 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 7, ptr %17, align 1
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_0
  %18 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %19 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %18, i32 0, i32 0
  %20 = getelementptr inbounds { ptr, ptr }, ptr %19, i32 0, i32 0
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %_llgo_22, label %_llgo_23

_llgo_9:                                          ; preds = %_llgo_24, %_llgo_0
  %23 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 9, ptr %23, align 1
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_0
  %24 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 10, ptr %24, align 1
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_0
  %25 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 6
  %26 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %25, i32 0, i32 0
  %27 = getelementptr inbounds { ptr, ptr }, ptr %26, i32 0, i32 0
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %_llgo_26, label %_llgo_27

_llgo_12:                                         ; preds = %_llgo_28, %_llgo_0
  %30 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 12, ptr %30, align 1
  ret { i1, i64 } zeroinitializer

_llgo_13:                                         ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_14:                                         ; preds = %_llgo_3
  br label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14, %_llgo_3
  %31 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %5, ptr %1)
  %32 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %31, ptr %32, align 4
  %33 = getelementptr inbounds { i1, i64 }, ptr %32, i32 0, i32 0
  %34 = load i1, ptr %33, align 1
  br i1 %34, label %_llgo_16, label %_llgo_17

_llgo_16:                                         ; preds = %_llgo_15
  %35 = getelementptr inbounds { i1, i64 }, ptr %32, i32 0, i32 1
  %36 = load i64, ptr %35, align 4
  %37 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %37, align 1
  br label %_llgo_4

_llgo_17:                                         ; preds = %_llgo_15
  ret { i1, i64 } zeroinitializer

_llgo_18:                                         ; preds = %_llgo_5
  br label %_llgo_19

_llgo_19:                                         ; preds = %_llgo_18, %_llgo_5
  %38 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %11, ptr %1)
  %39 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %38, ptr %39, align 4
  %40 = getelementptr inbounds { i1, i64 }, ptr %39, i32 0, i32 0
  %41 = load i1, ptr %40, align 1
  br i1 %41, label %_llgo_20, label %_llgo_21

_llgo_20:                                         ; preds = %_llgo_19
  %42 = getelementptr inbounds { i1, i64 }, ptr %39, i32 0, i32 1
  %43 = load i64, ptr %42, align 4
  %44 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 5, ptr %44, align 1
  br label %_llgo_6

_llgo_21:                                         ; preds = %_llgo_19
  ret { i1, i64 } zeroinitializer

_llgo_22:                                         ; preds = %_llgo_8
  br label %_llgo_23

_llgo_23:                                         ; preds = %_llgo_22, %_llgo_8
  %45 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %18, ptr %1)
  %46 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %45, ptr %46, align 4
  %47 = getelementptr inbounds { i1, i64 }, ptr %46, i32 0, i32 0
  %48 = load i1, ptr %47, align 1
  br i1 %48, label %_llgo_24, label %_llgo_25

_llgo_24:                                         ; preds = %_llgo_23
  %49 = getelementptr inbounds { i1, i64 }, ptr %46, i32 0, i32 1
  %50 = load i64, ptr %49, align 4
  %51 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 8, ptr %51, align 1
  br label %_llgo_9

_llgo_25:                                         ; preds = %_llgo_23
  ret { i1, i64 } zeroinitializer

_llgo_26:                                         ; preds = %_llgo_11
  br label %_llgo_27

_llgo_27:                                         ; preds = %_llgo_26, %_llgo_11
  %52 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %25, ptr %1)
  %53 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %52, ptr %53, align 4
  %54 = getelementptr inbounds { i1, i64 }, ptr %53, i32 0, i32 0
  %55 = load i1, ptr %54, align 1
  br i1 %55, label %_llgo_28, label %_llgo_29

_llgo_28:                                         ; preds = %_llgo_27
  %56 = getelementptr inbounds { i1, i64 }, ptr %53, i32 0, i32 1
  %57 = load i64, ptr %56, align 4
  %58 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 11, ptr %58, align 1
  br label %_llgo_12

_llgo_29:                                         ; preds = %_llgo_27
  ret { i1, i64 } zeroinitializer
}

define { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" } @TwoLoops(i64 %0) {
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
  %2 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
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
  %4 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %4, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %5, align 1
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %6 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 7
  %7 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds { ptr, ptr }, ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %_llgo_11, label %_llgo_12

_llgo_4:                                          ; preds = %_llgo_13, %_llgo_0
  %11 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 4, ptr %11, align 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %12 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 5, ptr %12, align 1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %13 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 6, ptr %13, align 1
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_0
  %14 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %14, i32 0, i32 0
  %16 = getelementptr inbounds { ptr, ptr }, ptr %15, i32 0, i32 0
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %_llgo_15, label %_llgo_16

_llgo_8:                                          ; preds = %_llgo_17, %_llgo_0
  %19 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 8, ptr %19, align 1
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_10:                                         ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_11:                                         ; preds = %_llgo_3
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_3
  %20 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %6, ptr %1)
  %21 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %20, ptr %21, align 4
  %22 = getelementptr inbounds { i1, i64 }, ptr %21, i32 0, i32 0
  %23 = load i1, ptr %22, align 1
  br i1 %23, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %24 = getelementptr inbounds { i1, i64 }, ptr %21, i32 0, i32 1
  %25 = load i64, ptr %24, align 4
  %26 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %26, align 1
  br label %_llgo_4

_llgo_14:                                         ; preds = %_llgo_12
  ret { i1, i64 } zeroinitializer

_llgo_15:                                         ; preds = %_llgo_7
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_7
  %27 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %14, ptr %1)
  %28 = alloca { i1, i64 }, align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %27, ptr %28, align 4
  %29 = getelementptr inbounds { i1, i64 }, ptr %28, i32 0, i32 0
  %30 = load i1, ptr %29, align 1
  br i1 %30, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %31 = getelementptr inbounds { i1, i64 }, ptr %28, i32 0, i32 1
  %32 = load i64, ptr %31, align 4
  %33 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 7, ptr %33, align 1
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
