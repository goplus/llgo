; ModuleID = 'github.com/goplus/llgo/cl/_testpull/multiret'
source_filename = "github.com/goplus/llgo/cl/_testpull/multiret"

%"github.com/goplus/llgo/async.Poll[int]" = type { i1, i64 }
%"github.com/goplus/llgo/async.AsyncFuture[int]" = type { { ptr, ptr }, i1, i1, i64 }

@"github.com/goplus/llgo/cl/_testpull/multiret.init$guard" = global i1 false, align 1

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_5 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %6, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %7 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %8 = load i64, ptr %7, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_3:                                          ; preds = %_llgo_0
  %9 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %12 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %11, i32 0, i32 0
  %13 = getelementptr inbounds { ptr, ptr }, ptr %12, i32 0, i32 0
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %_llgo_6, label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_8, %_llgo_0
  %16 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %17 = load i64, ptr %16, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_5:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_6:                                          ; preds = %_llgo_3
  %18 = call ptr @"github.com/goplus/llgo/cl/_testpull/multiret.Step"(i64 %10)
  %19 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %18, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %19, ptr %11, align 8
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_3
  %20 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %11, ptr %1)
  %21 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %20, ptr %21, align 4
  %22 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %21, i32 0, i32 0
  %23 = load i1, ptr %22, align 1
  br i1 %23, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  %24 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %21, i32 0, i32 1
  %25 = load i64, ptr %24, align 4
  %26 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %26, align 1
  br label %_llgo_4

_llgo_9:                                          ; preds = %_llgo_7
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/multiret.Step"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testpull/multiret.Step$1", ptr undef }, ptr %2, 1
  %5 = call ptr @"github.com/goplus/llgo/async.Async[int]"({ ptr, ptr } %4)
  ret ptr %5
}

define void @"github.com/goplus/llgo/cl/_testpull/multiret.Step$1"(ptr %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load i64, ptr %3, align 4
  %5 = extractvalue { ptr, ptr } %1, 1
  %6 = extractvalue { ptr, ptr } %1, 0
  call void %6(ptr %5, i64 %4)
  ret void
}

declare %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr, ptr)

define ptr @"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %2 = getelementptr inbounds { i8, i64, ptr }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, i64, ptr }, ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds { i8, i64, ptr }, ptr %1, i32 0, i32 2
  store ptr null, ptr %4, align 8
  ret ptr %1
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
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
  %4 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %6, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %7 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %8 = load i64, ptr %7, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_3:                                          ; preds = %_llgo_0
  %9 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %12 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %11, i32 0, i32 0
  %13 = getelementptr inbounds { ptr, ptr }, ptr %12, i32 0, i32 0
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %_llgo_10, label %_llgo_11

_llgo_4:                                          ; preds = %_llgo_12, %_llgo_0
  %16 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 4, ptr %18, align 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %19 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %20 = load i64, ptr %19, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_6:                                          ; preds = %_llgo_0
  %21 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 6, ptr %23, align 1
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_0
  %24 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %25 = load i64, ptr %24, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_8:                                          ; preds = %_llgo_0
  %26 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %27 = load i64, ptr %26, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_9:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_10:                                         ; preds = %_llgo_3
  %28 = call ptr @"github.com/goplus/llgo/cl/_testpull/multiret.Step"(i64 %10)
  %29 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %28, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %29, ptr %11, align 8
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_3
  %30 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %11, ptr %1)
  %31 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %30, ptr %31, align 4
  %32 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %31, i32 0, i32 0
  %33 = load i1, ptr %32, align 1
  br i1 %33, label %_llgo_12, label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_11
  %34 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %31, i32 0, i32 1
  %35 = load i64, ptr %34, align 4
  %36 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %36, align 1
  br label %_llgo_4

_llgo_13:                                         ; preds = %_llgo_11
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %2 = getelementptr inbounds { i8, i64, ptr }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, i64, ptr }, ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds { i8, i64, ptr }, ptr %1, i32 0, i32 2
  store ptr null, ptr %4, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
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
  %4 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %10, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %11 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %14 = load i64, ptr %13, align 4
  %15 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %17, i32 0, i32 0
  %19 = getelementptr inbounds { ptr, ptr }, ptr %18, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %_llgo_9, label %_llgo_10

_llgo_3:                                          ; preds = %_llgo_11, %_llgo_0
  %22 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %23 = load i64, ptr %22, align 4
  %24 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %25 = load i64, ptr %24, align 4
  %26 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %28, align 1
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_0
  %29 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %30 = load i64, ptr %29, align 4
  %31 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %32 = load i64, ptr %31, align 4
  %33 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %34 = load i64, ptr %33, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_5:                                          ; preds = %_llgo_0
  %35 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %36 = load i64, ptr %35, align 4
  %37 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %38 = load i64, ptr %37, align 4
  %39 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %40 = load i64, ptr %39, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_6:                                          ; preds = %_llgo_0
  %41 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %42 = load i64, ptr %41, align 4
  %43 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %44 = load i64, ptr %43, align 4
  %45 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %46 = load i64, ptr %45, align 4
  %47 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %48 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %47, i32 0, i32 0
  %49 = getelementptr inbounds { ptr, ptr }, ptr %48, i32 0, i32 0
  %50 = load ptr, ptr %49, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %_llgo_13, label %_llgo_14

_llgo_7:                                          ; preds = %_llgo_15, %_llgo_0
  %52 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %53 = load i64, ptr %52, align 4
  %54 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %55 = load i64, ptr %54, align 4
  %56 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %57 = load i64, ptr %56, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_8:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_9:                                          ; preds = %_llgo_2
  %58 = call ptr @"github.com/goplus/llgo/cl/_testpull/multiret.Step"(i64 %12)
  %59 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %58, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %59, ptr %17, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_2
  %60 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %17, ptr %1)
  %61 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %60, ptr %61, align 4
  %62 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %61, i32 0, i32 0
  %63 = load i1, ptr %62, align 1
  br i1 %63, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %64 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %61, i32 0, i32 1
  %65 = load i64, ptr %64, align 4
  %66 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %66, align 1
  br label %_llgo_3

_llgo_12:                                         ; preds = %_llgo_10
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_13:                                         ; preds = %_llgo_6
  %67 = call ptr @"github.com/goplus/llgo/cl/_testpull/multiret.Step"(i64 %46)
  %68 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %67, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %68, ptr %47, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_6
  %69 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %47, ptr %1)
  %70 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %69, ptr %70, align 4
  %71 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %70, i32 0, i32 0
  %72 = load i1, ptr %71, align 1
  br i1 %72, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %73 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %70, i32 0, i32 1
  %74 = load i64, ptr %73, align 4
  %75 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 6, ptr %75, align 1
  br label %_llgo_7

_llgo_16:                                         ; preds = %_llgo_14
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 48)
  %3 = getelementptr inbounds { i8, i64, i64, i64, ptr, ptr }, ptr %2, i32 0, i32 0
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds { i8, i64, i64, i64, ptr, ptr }, ptr %2, i32 0, i32 1
  store i64 %0, ptr %4, align 4
  %5 = getelementptr inbounds { i8, i64, i64, i64, ptr, ptr }, ptr %2, i32 0, i32 2
  store i64 %1, ptr %5, align 4
  %6 = getelementptr inbounds { i8, i64, i64, i64, ptr, ptr }, ptr %2, i32 0, i32 3
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds { i8, i64, i64, i64, ptr, ptr }, ptr %2, i32 0, i32 4
  store ptr null, ptr %7, align 8
  %8 = getelementptr inbounds { i8, i64, i64, i64, ptr, ptr }, ptr %2, i32 0, i32 5
  store ptr null, ptr %8, align 8
  ret ptr %2
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
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
  %4 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %8, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %9 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %13, align 1
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %14 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %19 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %18, i32 0, i32 0
  %20 = getelementptr inbounds { ptr, ptr }, ptr %19, i32 0, i32 0
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %_llgo_9, label %_llgo_10

_llgo_4:                                          ; preds = %_llgo_11, %_llgo_0
  %23 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %24 = load i64, ptr %23, align 4
  %25 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 4, ptr %27, align 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %28 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %29 = load i64, ptr %28, align 4
  %30 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %31 = load i64, ptr %30, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_6:                                          ; preds = %_llgo_0
  %32 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %33 = load i64, ptr %32, align 4
  %34 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %35 = load i64, ptr %34, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_7:                                          ; preds = %_llgo_0
  %36 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %39 = load i64, ptr %38, align 4
  %40 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 7, ptr %40, align 1
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_8:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_9:                                          ; preds = %_llgo_3
  %41 = call ptr @"github.com/goplus/llgo/cl/_testpull/multiret.Step"(i64 %17)
  %42 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %41, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %42, ptr %18, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_3
  %43 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %18, ptr %1)
  %44 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %43, ptr %44, align 4
  %45 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %44, i32 0, i32 0
  %46 = load i1, ptr %45, align 1
  br i1 %46, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %47 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %44, i32 0, i32 1
  %48 = load i64, ptr %47, align 4
  %49 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %49, align 1
  br label %_llgo_4

_llgo_12:                                         ; preds = %_llgo_10
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %2 = getelementptr inbounds { i8, i64, i64, ptr }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, i64, i64, ptr }, ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds { i8, i64, i64, ptr }, ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds { i8, i64, i64, ptr }, ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
  ret ptr %1
}

define void @"github.com/goplus/llgo/cl/_testpull/multiret.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testpull/multiret.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testpull/multiret.init$guard", align 1
  call void @"github.com/goplus/llgo/async.init"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define linkonce ptr @"github.com/goplus/llgo/async.Async[int]"({ ptr, ptr } %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %1, i32 0, i32 0
  store { ptr, ptr } %0, ptr %2, align 8
  ret ptr %1
}

declare void @"github.com/goplus/llgo/async.init"()
