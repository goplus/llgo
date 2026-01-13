; ModuleID = 'github.com/goplus/llgo/cl/_testrt/result'
source_filename = "github.com/goplus/llgo/cl/_testrt/result"

%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/result.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@2 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@5 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

define { ptr, ptr, i1 } @"github.com/goplus/llgo/cl/_testrt/result.add"() {
_llgo_0:
  ret { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/result.add$1", ptr null, i1 false }
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/result.add$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr, { ptr, ptr, i1 } }, align 8
  %1 = getelementptr inbounds { ptr, { ptr, ptr, i1 } }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %4 = getelementptr inbounds { ptr, { ptr, ptr, i1 } }, ptr %0, i32 0, i32 1
  store { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/result.add$1", ptr null, i1 false }, ptr %4, align 8
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call i64 @llvm.coro.size.i64()
  %6 = call ptr @malloc(i64 %5)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %7 = phi ptr [ null, %_llgo_0 ], [ %6, %_llgo_2 ]
  %8 = call ptr @llvm.coro.begin(token %2, ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %9 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %9, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %10 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_5:                                          ; preds = %_llgo_1, %_llgo_3
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %12 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/result.add$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/result.add$1$coro"(i64 %0, i64 %1) #0 {
_llgo_0:
  %2 = alloca { ptr, i64 }, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %6 = add i64 %0, %1
  %7 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 %6, ptr %7, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %8 = call i64 @llvm.coro.size.i64()
  %9 = call ptr @malloc(i64 %8)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %10 = phi ptr [ null, %_llgo_0 ], [ %9, %_llgo_2 ]
  %11 = call ptr @llvm.coro.begin(token %4, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %12 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %13 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_5:                                          ; preds = %_llgo_1, %_llgo_3
  %14 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %14, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %15 = call ptr @llvm.coro.free(token %4, ptr %11)
  call void @free(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define { { ptr, ptr, i1 }, i64 } @"github.com/goplus/llgo/cl/_testrt/result.add2"() {
_llgo_0:
  ret { { ptr, ptr, i1 }, i64 } { { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/result.add2$1", ptr null, i1 false }, i64 1 }
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/result.add2$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr, { { ptr, ptr, i1 }, i64 } }, align 8
  %1 = getelementptr inbounds { ptr, { { ptr, ptr, i1 }, i64 } }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %4 = getelementptr inbounds { ptr, { { ptr, ptr, i1 }, i64 } }, ptr %0, i32 0, i32 1
  %5 = getelementptr inbounds { { ptr, ptr, i1 }, i64 }, ptr %4, i32 0, i32 0
  store { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/result.add2$1", ptr null, i1 false }, ptr %5, align 8
  %6 = getelementptr inbounds { ptr, { { ptr, ptr, i1 }, i64 } }, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds { { ptr, ptr, i1 }, i64 }, ptr %6, i32 0, i32 1
  store i64 1, ptr %7, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %8 = call i64 @llvm.coro.size.i64()
  %9 = call ptr @malloc(i64 %8)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %10 = phi ptr [ null, %_llgo_0 ], [ %9, %_llgo_2 ]
  %11 = call ptr @llvm.coro.begin(token %2, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %12 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %13 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_5:                                          ; preds = %_llgo_1, %_llgo_3
  %14 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %14, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %15 = call ptr @llvm.coro.free(token %2, ptr %11)
  call void @free(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/result.add2$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/result.add2$1$coro"(i64 %0, i64 %1) #0 {
_llgo_0:
  %2 = alloca { ptr, i64 }, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %6 = add i64 %0, %1
  %7 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 %6, ptr %7, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %8 = call i64 @llvm.coro.size.i64()
  %9 = call ptr @malloc(i64 %8)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %10 = phi ptr [ null, %_llgo_0 ], [ %9, %_llgo_2 ]
  %11 = call ptr @llvm.coro.begin(token %4, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %12 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %13 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_5:                                          ; preds = %_llgo_1, %_llgo_3
  %14 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %14, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %15 = call ptr @llvm.coro.free(token %4, ptr %11)
  call void @free(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/result.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/result.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/result.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/result.main"() {
_llgo_0:
  %0 = call { ptr, ptr, i1 } @"github.com/goplus/llgo/cl/_testrt/result.main$1"()
  %1 = extractvalue { ptr, ptr, i1 } %0, 0
  %2 = extractvalue { ptr, ptr, i1 } %0, 1
  %3 = extractvalue { ptr, ptr, i1 } %0, 2
  br i1 %3, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call i64 %1(ptr %2, i64 100, i64 200)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call ptr %1(ptr %2, i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %5)
  %6 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %7 = getelementptr inbounds { ptr, i64 }, ptr %6, i32 0, i32 1
  %8 = load i64, ptr %7, align 4
  call void @llvm.coro.destroy(ptr %5)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  %9 = phi i64 [ %4, %_llgo_1 ], [ %8, %_llgo_2 ]
  %10 = call i32 (ptr, ...) @printf(ptr @0, i64 %9)
  %11 = call { ptr, ptr, i1 } @"github.com/goplus/llgo/cl/_testrt/result.add"()
  %12 = extractvalue { ptr, ptr, i1 } %11, 0
  %13 = extractvalue { ptr, ptr, i1 } %11, 1
  %14 = extractvalue { ptr, ptr, i1 } %11, 2
  br i1 %14, label %_llgo_5, label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3
  %15 = call i64 %12(ptr %13, i64 100, i64 200)
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_3
  %16 = call ptr %12(ptr %13, i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %16)
  %17 = call ptr @llvm.coro.promise(ptr %16, i32 8, i1 false)
  %18 = getelementptr inbounds { ptr, i64 }, ptr %17, i32 0, i32 1
  %19 = load i64, ptr %18, align 4
  call void @llvm.coro.destroy(ptr %16)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %20 = phi i64 [ %15, %_llgo_4 ], [ %19, %_llgo_5 ]
  %21 = call i32 (ptr, ...) @printf(ptr @1, i64 %20)
  %22 = call { { ptr, ptr, i1 }, i64 } @"github.com/goplus/llgo/cl/_testrt/result.add2"()
  %23 = extractvalue { { ptr, ptr, i1 }, i64 } %22, 0
  %24 = extractvalue { { ptr, ptr, i1 }, i64 } %22, 1
  %25 = call { ptr, ptr, i1 } @"github.com/goplus/llgo/cl/_testrt/result.add"()
  %26 = extractvalue { ptr, ptr, i1 } %25, 0
  %27 = extractvalue { ptr, ptr, i1 } %25, 1
  %28 = extractvalue { ptr, ptr, i1 } %25, 2
  br i1 %28, label %_llgo_8, label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6
  %29 = call i64 %26(ptr %27, i64 100, i64 200)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_6
  %30 = call ptr %26(ptr %27, i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %30)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %30)
  %31 = call ptr @llvm.coro.promise(ptr %30, i32 8, i1 false)
  %32 = getelementptr inbounds { ptr, i64 }, ptr %31, i32 0, i32 1
  %33 = load i64, ptr %32, align 4
  call void @llvm.coro.destroy(ptr %30)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_7
  %34 = phi i64 [ %29, %_llgo_7 ], [ %33, %_llgo_8 ]
  %35 = call i32 (ptr, ...) @printf(ptr @2, i64 %34, i64 %24)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/result.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %4 = call { ptr, ptr, i1 } @"github.com/goplus/llgo/cl/_testrt/result.main$1"()
  %5 = extractvalue { ptr, ptr, i1 } %4, 0
  %6 = extractvalue { ptr, ptr, i1 } %4, 1
  %7 = extractvalue { ptr, ptr, i1 } %4, 2
  br i1 %7, label %_llgo_9, label %_llgo_8

_llgo_2:                                          ; preds = %_llgo_0
  %8 = call i64 @llvm.coro.size.i64()
  %9 = call ptr @malloc(i64 %8)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %10 = phi ptr [ null, %_llgo_0 ], [ %9, %_llgo_2 ]
  %11 = call ptr @llvm.coro.begin(token %2, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %12 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_25, %_llgo_18, %_llgo_11, %_llgo_3
  %13 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_5:                                          ; preds = %_llgo_24, %_llgo_27, %_llgo_25, %_llgo_20, %_llgo_18, %_llgo_13, %_llgo_11, %_llgo_3
  %14 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %14, label %_llgo_4 [
    i8 0, label %_llgo_29
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_29, %_llgo_5
  %15 = call ptr @llvm.coro.free(token %2, ptr %11)
  call void @free(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_1
  %16 = call i64 %5(ptr %6, i64 100, i64 200)
  br label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_1
  %17 = call ptr %5(ptr %6, i64 100, i64 200)
  br label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_14, %_llgo_8
  %18 = phi i64 [ %16, %_llgo_8 ], [ %31, %_llgo_14 ]
  %19 = call i32 (ptr, ...) @printf(ptr @3, i64 %18)
  %20 = call { ptr, ptr, i1 } @"github.com/goplus/llgo/cl/_testrt/result.add"()
  %21 = extractvalue { ptr, ptr, i1 } %20, 0
  %22 = extractvalue { ptr, ptr, i1 } %20, 1
  %23 = extractvalue { ptr, ptr, i1 } %20, 2
  br i1 %23, label %_llgo_16, label %_llgo_15

_llgo_11:                                         ; preds = %_llgo_9
  %24 = call ptr @llvm.coro.promise(ptr %17, i32 8, i1 false)
  %25 = getelementptr inbounds { ptr, i64 }, ptr %24, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %25, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %17)
  %26 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %26, label %_llgo_4 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_12:                                         ; preds = %_llgo_11
  %27 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %17)
  br i1 %27, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %28 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %28)
  br label %_llgo_5

_llgo_14:                                         ; preds = %_llgo_12
  %29 = call ptr @llvm.coro.promise(ptr %17, i32 8, i1 false)
  %30 = getelementptr inbounds { ptr, i64 }, ptr %29, i32 0, i32 1
  %31 = load i64, ptr %30, align 4
  call void @llvm.coro.destroy(ptr %17)
  br label %_llgo_10

_llgo_15:                                         ; preds = %_llgo_10
  %32 = call i64 %21(ptr %22, i64 100, i64 200)
  br label %_llgo_17

_llgo_16:                                         ; preds = %_llgo_10
  %33 = call ptr %21(ptr %22, i64 100, i64 200)
  br label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_21, %_llgo_15
  %34 = phi i64 [ %32, %_llgo_15 ], [ %50, %_llgo_21 ]
  %35 = call i32 (ptr, ...) @printf(ptr @4, i64 %34)
  %36 = call { { ptr, ptr, i1 }, i64 } @"github.com/goplus/llgo/cl/_testrt/result.add2"()
  %37 = extractvalue { { ptr, ptr, i1 }, i64 } %36, 0
  %38 = extractvalue { { ptr, ptr, i1 }, i64 } %36, 1
  %39 = call { ptr, ptr, i1 } @"github.com/goplus/llgo/cl/_testrt/result.add"()
  %40 = extractvalue { ptr, ptr, i1 } %39, 0
  %41 = extractvalue { ptr, ptr, i1 } %39, 1
  %42 = extractvalue { ptr, ptr, i1 } %39, 2
  br i1 %42, label %_llgo_23, label %_llgo_22

_llgo_18:                                         ; preds = %_llgo_16
  %43 = call ptr @llvm.coro.promise(ptr %33, i32 8, i1 false)
  %44 = getelementptr inbounds { ptr, i64 }, ptr %43, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %44, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %33)
  %45 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %45, label %_llgo_4 [
    i8 0, label %_llgo_19
    i8 1, label %_llgo_5
  ]

_llgo_19:                                         ; preds = %_llgo_18
  %46 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %33)
  br i1 %46, label %_llgo_20, label %_llgo_21

_llgo_20:                                         ; preds = %_llgo_19
  %47 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %33)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %33)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %47)
  br label %_llgo_5

_llgo_21:                                         ; preds = %_llgo_19
  %48 = call ptr @llvm.coro.promise(ptr %33, i32 8, i1 false)
  %49 = getelementptr inbounds { ptr, i64 }, ptr %48, i32 0, i32 1
  %50 = load i64, ptr %49, align 4
  call void @llvm.coro.destroy(ptr %33)
  br label %_llgo_17

_llgo_22:                                         ; preds = %_llgo_17
  %51 = call i64 %40(ptr %41, i64 100, i64 200)
  br label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_17
  %52 = call ptr %40(ptr %41, i64 100, i64 200)
  br label %_llgo_25

_llgo_24:                                         ; preds = %_llgo_28, %_llgo_22
  %53 = phi i64 [ %51, %_llgo_22 ], [ %62, %_llgo_28 ]
  %54 = call i32 (ptr, ...) @printf(ptr @5, i64 %53, i64 %38)
  br label %_llgo_5

_llgo_25:                                         ; preds = %_llgo_23
  %55 = call ptr @llvm.coro.promise(ptr %52, i32 8, i1 false)
  %56 = getelementptr inbounds { ptr, i64 }, ptr %55, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %56, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %52)
  %57 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %57, label %_llgo_4 [
    i8 0, label %_llgo_26
    i8 1, label %_llgo_5
  ]

_llgo_26:                                         ; preds = %_llgo_25
  %58 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %52)
  br i1 %58, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %59 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %52)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %52)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %59)
  br label %_llgo_5

_llgo_28:                                         ; preds = %_llgo_26
  %60 = call ptr @llvm.coro.promise(ptr %52, i32 8, i1 false)
  %61 = getelementptr inbounds { ptr, i64 }, ptr %60, i32 0, i32 1
  %62 = load i64, ptr %61, align 4
  call void @llvm.coro.destroy(ptr %52)
  br label %_llgo_24

_llgo_29:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define { ptr, ptr, i1 } @"github.com/goplus/llgo/cl/_testrt/result.main$1"() {
_llgo_0:
  ret { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/result.main$1$1", ptr null, i1 false }
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/result.main$1$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr, { ptr, ptr, i1 } }, align 8
  %1 = getelementptr inbounds { ptr, { ptr, ptr, i1 } }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %4 = getelementptr inbounds { ptr, { ptr, ptr, i1 } }, ptr %0, i32 0, i32 1
  store { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/result.main$1$1", ptr null, i1 false }, ptr %4, align 8
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call i64 @llvm.coro.size.i64()
  %6 = call ptr @malloc(i64 %5)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %7 = phi ptr [ null, %_llgo_0 ], [ %6, %_llgo_2 ]
  %8 = call ptr @llvm.coro.begin(token %2, ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %9 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %9, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %10 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_5:                                          ; preds = %_llgo_1, %_llgo_3
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %12 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/result.main$1$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/result.main$1$1$coro"(i64 %0, i64 %1) #0 {
_llgo_0:
  %2 = alloca { ptr, i64 }, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %6 = add i64 %0, %1
  %7 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 %6, ptr %7, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %8 = call i64 @llvm.coro.size.i64()
  %9 = call ptr @malloc(i64 %8)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %10 = phi ptr [ null, %_llgo_0 ], [ %9, %_llgo_2 ]
  %11 = call ptr @llvm.coro.begin(token %4, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %12 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %13 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_5:                                          ; preds = %_llgo_1, %_llgo_3
  %14 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %14, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %15 = call ptr @llvm.coro.free(token %4, ptr %11)
  call void @free(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/result.add$1"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = tail call i64 @"github.com/goplus/llgo/cl/_testrt/result.add$1"(i64 %1, i64 %2)
  ret i64 %3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare token @llvm.coro.id(i32, ptr readnone, ptr nocapture readonly, ptr) #1

; Function Attrs: nounwind
declare i1 @llvm.coro.alloc(token) #2

; Function Attrs: nounwind memory(none)
declare i64 @llvm.coro.size.i64() #3

declare ptr @malloc(i64)

; Function Attrs: nounwind
declare ptr @llvm.coro.begin(token, ptr writeonly) #2

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()

; Function Attrs: nounwind
declare i8 @llvm.coro.suspend(token, i1) #2

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token) #2

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #4

declare void @free(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/result.add2$1"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = tail call i64 @"github.com/goplus/llgo/cl/_testrt/result.add2$1"(i64 %1, i64 %2)
  ret i64 %3
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr)

; Function Attrs: nounwind memory(none)
declare ptr @llvm.coro.promise(ptr nocapture, i32, i1) #3

declare void @llvm.coro.destroy(ptr)

declare i32 @printf(ptr, ...)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/result.main$1$1"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = tail call i64 @"github.com/goplus/llgo/cl/_testrt/result.main$1$1"(i64 %1, i64 %2)
  ret i64 %3
}

attributes #0 = { presplitcoroutine }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nounwind }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nounwind memory(argmem: read) }
