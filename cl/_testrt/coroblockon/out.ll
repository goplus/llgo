; ModuleID = 'github.com/goplus/llgo/cl/_testrt/coroblockon'
source_filename = "github.com/goplus/llgo/cl/_testrt/coroblockon"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testrt/coroblockon.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [18 x i8] c"asyncCaller: start", align 1
@1 = private unnamed_addr constant [28 x i8] c"asyncCaller: creating worker", align 1
@2 = private unnamed_addr constant [29 x i8] c"asyncCaller: calling block_on", align 1
@3 = private unnamed_addr constant [21 x i8] c"asyncCaller: result =", align 1
@4 = private unnamed_addr constant [17 x i8] c"asyncCaller: done", align 1
@5 = private unnamed_addr constant [27 x i8] c"worker: start, multiplier =", align 1
@6 = private unnamed_addr constant [22 x i8] c"worker: done, result =", align 1
@7 = private unnamed_addr constant [42 x i8] c"=== Test 1: block_on from sync context ===", align 1
@8 = private unnamed_addr constant [44 x i8] c"\0A=== Test 2: block_on from async context ===", align 1
@9 = private unnamed_addr constant [10 x i8] c"main: done", align 1
@10 = private unnamed_addr constant [27 x i8] c"syncCaller: creating worker", align 1
@11 = private unnamed_addr constant [28 x i8] c"syncCaller: calling block_on", align 1
@12 = private unnamed_addr constant [20 x i8] c"syncCaller: result =", align 1

define void @"github.com/goplus/llgo/cl/_testrt/coroblockon.asyncCaller"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 18 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call { ptr, ptr } @"github.com/goplus/llgo/cl/_testrt/coroblockon.createWorker"(i64 3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 29 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = extractvalue { ptr, ptr } %0, 0
  %2 = extractvalue { ptr, ptr } %0, 1
  %3 = call ptr %1(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %3)
  %4 = call ptr @llvm.coro.promise(ptr %3, i32 8, i1 false)
  %5 = load i64, ptr %4, align 4
  call void @llvm.coro.destroy(ptr %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 21 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 17 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroblockon.asyncCaller$coro"() #0 {
_llgo_0:
  %0 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %1 = call i1 @llvm.coro.alloc(token %0)
  br i1 %1, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 18 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %2, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_2:                                          ; preds = %_llgo_0
  %3 = call i64 @llvm.coro.size.i64()
  %4 = call ptr @malloc(i64 %3)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %5 = phi ptr [ null, %_llgo_0 ], [ %4, %_llgo_2 ]
  %6 = call ptr @llvm.coro.begin(token %0, ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_13
  %7 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %7, label %_llgo_17 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_16, %_llgo_4, %_llgo_12, %_llgo_1
  %8 = call ptr @llvm.coro.free(token %0, ptr %6)
  call void @free(ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_17
  %9 = call i1 @llvm.coro.end(ptr %6, i1 false, token none)
  ret ptr %6

_llgo_7:                                          ; preds = %_llgo_1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %10 = call { ptr, ptr } @"github.com/goplus/llgo/cl/_testrt/coroblockon.createWorker"(i64 3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 29 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %11 = extractvalue { ptr, ptr } %10, 0
  %12 = extractvalue { ptr, ptr } %10, 1
  %13 = call ptr %11(ptr %12)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %6

_llgo_9:                                          ; preds = %_llgo_14, %_llgo_7
  %14 = call i1 @llvm.coro.done(ptr %13)
  br i1 %14, label %_llgo_13, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  call void @llvm.coro.resume(ptr %13)
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10
  %15 = call i1 @llvm.coro.done(ptr %13)
  br i1 %15, label %_llgo_13, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  %16 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %16, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_13:                                         ; preds = %_llgo_11, %_llgo_9
  %17 = call ptr @llvm.coro.promise(ptr %13, i32 8, i1 false)
  %18 = load i64, ptr %17, align 4
  call void @llvm.coro.destroy(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 21 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 17 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_4

_llgo_14:                                         ; preds = %_llgo_12
  br label %_llgo_9

_llgo_15:                                         ; preds = %_llgo_12
  ret ptr %6

_llgo_16:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_17:                                         ; preds = %_llgo_4
  br label %_llgo_6
}

define { ptr, ptr } @"github.com/goplus/llgo/cl/_testrt/coroblockon.createWorker"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/coroblockon.createWorker$1$coro", ptr undef }, ptr %2, 1
  ret { ptr, ptr } %4
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroblockon.createWorker$coro"(i64 %0) #0 {
_llgo_0:
  %1 = alloca { ptr, ptr }, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %4, align 4
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %6 = getelementptr inbounds { ptr }, ptr %5, i32 0, i32 0
  store ptr %4, ptr %6, align 8
  %7 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/coroblockon.createWorker$1$coro", ptr undef }, ptr %5, 1
  store { ptr, ptr } %7, ptr %1, align 8
  br label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %8 = call i64 @llvm.coro.size.i64()
  %9 = call ptr @malloc(i64 %8)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %10 = phi ptr [ null, %_llgo_0 ], [ %9, %_llgo_2 ]
  %11 = call ptr @llvm.coro.begin(token %2, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_1
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_4
  %13 = call ptr @llvm.coro.free(token %2, ptr %11)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_8
  %14 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_7:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_4
  br label %_llgo_6
}

declare i64 @"github.com/goplus/llgo/cl/_testrt/coroblockon.createWorker$1"(ptr)

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroblockon.createWorker$1$coro"(ptr %0) #0 {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = alloca i64, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = extractvalue { ptr } %1, 0
  %6 = load i64, ptr %5, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %7 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %7, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_2:                                          ; preds = %_llgo_0
  %8 = call i64 @llvm.coro.size.i64()
  %9 = call ptr @malloc(i64 %8)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %10 = phi ptr [ null, %_llgo_0 ], [ %9, %_llgo_2 ]
  %11 = call ptr @llvm.coro.begin(token %3, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_7
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_10 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_4, %_llgo_1
  %13 = call ptr @llvm.coro.free(token %3, ptr %11)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_10
  %14 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_7:                                          ; preds = %_llgo_1
  %15 = extractvalue { ptr } %1, 0
  %16 = load i64, ptr %15, align 4
  %17 = mul i64 10, %16
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 22 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  store i64 %17, ptr %2, align 4
  br label %_llgo_4

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %11

_llgo_9:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_4
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/coroblockon.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/coroblockon.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/coroblockon.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/coroblockon.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 42 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/cl/_testrt/coroblockon.syncCaller"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 44 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroblockon.asyncCaller$coro"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroblockon.main$coro"() #0 {
_llgo_0:
  %0 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %1 = call i1 @llvm.coro.alloc(token %0)
  br i1 %1, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 42 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/cl/_testrt/coroblockon.syncCaller"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 44 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroblockon.asyncCaller$coro"()
  br label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %3 = call i64 @llvm.coro.size.i64()
  %4 = call ptr @malloc(i64 %3)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %5 = phi ptr [ null, %_llgo_0 ], [ %4, %_llgo_2 ]
  %6 = call ptr @llvm.coro.begin(token %0, ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_11
  %7 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %7, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_14, %_llgo_4, %_llgo_10
  %8 = call ptr @llvm.coro.free(token %0, ptr %6)
  call void @free(ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_15
  %9 = call i1 @llvm.coro.end(ptr %6, i1 false, token none)
  ret ptr %6

_llgo_7:                                          ; preds = %_llgo_12, %_llgo_1
  %10 = call i1 @llvm.coro.done(ptr %2)
  br i1 %10, label %_llgo_11, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  call void @llvm.coro.resume(ptr %2)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  %11 = call i1 @llvm.coro.done(ptr %2)
  br i1 %11, label %_llgo_11, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  %12 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %12, label %_llgo_13 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9, %_llgo_7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_4

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_7

_llgo_13:                                         ; preds = %_llgo_10
  ret ptr %6

_llgo_14:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_4
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/coroblockon.syncCaller"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call { ptr, ptr } @"github.com/goplus/llgo/cl/_testrt/coroblockon.createWorker"(i64 5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 28 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = extractvalue { ptr, ptr } %0, 0
  %2 = extractvalue { ptr, ptr } %0, 1
  %3 = call ptr %1(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %3)
  %4 = call ptr @llvm.coro.promise(ptr %3, i32 8, i1 false)
  %5 = load i64, ptr %4, align 4
  call void @llvm.coro.destroy(ptr %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 20 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroblockon.syncCaller$coro"() #0 {
_llgo_0:
  %0 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %1 = call i1 @llvm.coro.alloc(token %0)
  br i1 %1, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = call { ptr, ptr } @"github.com/goplus/llgo/cl/_testrt/coroblockon.createWorker"(i64 5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 28 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = extractvalue { ptr, ptr } %2, 0
  %4 = extractvalue { ptr, ptr } %2, 1
  %5 = call ptr %3(ptr %4)
  br label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %6 = call i64 @llvm.coro.size.i64()
  %7 = call ptr @malloc(i64 %6)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %8 = phi ptr [ null, %_llgo_0 ], [ %7, %_llgo_2 ]
  %9 = call ptr @llvm.coro.begin(token %0, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_11
  %10 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %10, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_14, %_llgo_4, %_llgo_10
  %11 = call ptr @llvm.coro.free(token %0, ptr %9)
  call void @free(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_15
  %12 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_7:                                          ; preds = %_llgo_12, %_llgo_1
  %13 = call i1 @llvm.coro.done(ptr %5)
  br i1 %13, label %_llgo_11, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  call void @llvm.coro.resume(ptr %5)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  %14 = call i1 @llvm.coro.done(ptr %5)
  br i1 %14, label %_llgo_11, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  %15 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %15, label %_llgo_13 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9, %_llgo_7
  %16 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %17 = load i64, ptr %16, align 4
  call void @llvm.coro.destroy(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 20 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_4

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_7

_llgo_13:                                         ; preds = %_llgo_10
  ret ptr %9

_llgo_14:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_4
  br label %_llgo_6
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr)

; Function Attrs: nounwind memory(none)
declare ptr @llvm.coro.promise(ptr nocapture, i32, i1) #1

declare void @llvm.coro.destroy(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare token @llvm.coro.id(i32, ptr readnone, ptr nocapture readonly, ptr) #2

; Function Attrs: nounwind
declare i1 @llvm.coro.alloc(token) #3

; Function Attrs: nounwind memory(none)
declare i64 @llvm.coro.size.i64() #1

declare ptr @malloc(i64)

; Function Attrs: nounwind
declare ptr @llvm.coro.begin(token, ptr writeonly) #3

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()

; Function Attrs: nounwind
declare i8 @llvm.coro.suspend(token, i1) #3

; Function Attrs: nounwind memory(argmem: readwrite)
declare i1 @llvm.coro.done(ptr nocapture readonly) #4

declare void @llvm.coro.resume(ptr)

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #5

declare void @free(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token) #3

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr)

attributes #0 = { presplitcoroutine }
attributes #1 = { nounwind memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #3 = { nounwind }
attributes #4 = { nounwind memory(argmem: readwrite) }
attributes #5 = { nounwind memory(argmem: read) }
