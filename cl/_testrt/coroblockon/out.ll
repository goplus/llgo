; ModuleID = 'github.com/goplus/llgo/cl/_testrt/coroblockon'
source_filename = "github.com/goplus/llgo/cl/_testrt/coroblockon"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

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
  %0 = call { ptr, ptr, i1 } @"github.com/goplus/llgo/cl/_testrt/coroblockon.createWorker"(i64 3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 29 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = extractvalue { ptr, ptr, i1 } %0, 0
  %2 = extractvalue { ptr, ptr, i1 } %0, 1
  %3 = extractvalue { ptr, ptr, i1 } %0, 2
  br i1 %3, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call i64 %1(ptr %2)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call ptr %1(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %5)
  %6 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %7 = getelementptr inbounds { ptr, i64 }, ptr %6, i32 0, i32 1
  %8 = load i64, ptr %7, align 4
  call void @llvm.coro.destroy(ptr %5)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  %9 = phi i64 [ %4, %_llgo_1 ], [ %8, %_llgo_2 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 21 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 17 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroblockon.asyncCaller$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 18 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %8)
  %4 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %4, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call i64 @llvm.coro.size.i64()
  %6 = call ptr @malloc(i64 %5)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %7 = phi ptr [ null, %_llgo_0 ], [ %6, %_llgo_2 ]
  %8 = call ptr @llvm.coro.begin(token %2, ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_15, %_llgo_14, %_llgo_1
  %9 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_5:                                          ; preds = %_llgo_10, %_llgo_18, %_llgo_15, %_llgo_14, %_llgo_1
  %10 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %10)
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_20
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_20, %_llgo_5
  %12 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %13 = call { ptr, ptr, i1 } @"github.com/goplus/llgo/cl/_testrt/coroblockon.createWorker"(i64 3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 29 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %14 = extractvalue { ptr, ptr, i1 } %13, 0
  %15 = extractvalue { ptr, ptr, i1 } %13, 1
  %16 = extractvalue { ptr, ptr, i1 } %13, 2
  br i1 %16, label %_llgo_9, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  %17 = call i64 %14(ptr %15)
  br label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_7
  %18 = call ptr %14(ptr %15)
  br label %_llgo_12

_llgo_10:                                         ; preds = %_llgo_19, %_llgo_8
  %19 = phi i64 [ %17, %_llgo_8 ], [ %32, %_llgo_19 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 21 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 17 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_11:                                         ; preds = %_llgo_12
  %20 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %18)
  br i1 %20, label %_llgo_18, label %_llgo_19

_llgo_12:                                         ; preds = %_llgo_17, %_llgo_16, %_llgo_9
  %21 = phi i1 [ true, %_llgo_9 ], [ false, %_llgo_14 ], [ false, %_llgo_15 ]
  %22 = call i1 @llvm.coro.done(ptr %18)
  br i1 %22, label %_llgo_11, label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12
  br i1 %21, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  %23 = call ptr @llvm.coro.promise(ptr %18, i32 8, i1 false)
  %24 = getelementptr inbounds { ptr, i64 }, ptr %23, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %24, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %18)
  %25 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %25, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_5
  ]

_llgo_15:                                         ; preds = %_llgo_13
  %26 = call ptr @llvm.coro.promise(ptr %18, i32 8, i1 false)
  %27 = getelementptr inbounds { ptr, i64 }, ptr %26, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %27, ptr %8)
  %28 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %28, label %_llgo_4 [
    i8 0, label %_llgo_17
    i8 1, label %_llgo_5
  ]

_llgo_16:                                         ; preds = %_llgo_14
  br label %_llgo_12

_llgo_17:                                         ; preds = %_llgo_15
  br label %_llgo_12

_llgo_18:                                         ; preds = %_llgo_11
  %29 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %29)
  br label %_llgo_5

_llgo_19:                                         ; preds = %_llgo_11
  %30 = call ptr @llvm.coro.promise(ptr %18, i32 8, i1 false)
  %31 = getelementptr inbounds { ptr, i64 }, ptr %30, i32 0, i32 1
  %32 = load i64, ptr %31, align 4
  call void @llvm.coro.destroy(ptr %18)
  br label %_llgo_10

_llgo_20:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define { ptr, ptr, i1 } @"github.com/goplus/llgo/cl/_testrt/coroblockon.createWorker"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/coroblockon.createWorker$1$coro", ptr undef, i1 undef }, ptr %2, 1
  %5 = insertvalue { ptr, ptr, i1 } %4, i1 true, 2
  ret { ptr, ptr, i1 } %5
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroblockon.createWorker$coro"(i64 %0) #0 {
_llgo_0:
  %1 = alloca { ptr, { ptr, ptr, i1 } }, align 8
  %2 = getelementptr inbounds { ptr, { ptr, ptr, i1 } }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %5, align 4
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %7 = getelementptr inbounds { ptr }, ptr %6, i32 0, i32 0
  store ptr %5, ptr %7, align 8
  %8 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/coroblockon.createWorker$1$coro", ptr undef, i1 undef }, ptr %6, 1
  %9 = insertvalue { ptr, ptr, i1 } %8, i1 true, 2
  %10 = getelementptr inbounds { ptr, { ptr, ptr, i1 } }, ptr %1, i32 0, i32 1
  store { ptr, ptr, i1 } %9, ptr %10, align 8
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %11 = call i64 @llvm.coro.size.i64()
  %12 = call ptr @malloc(i64 %11)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %13 = phi ptr [ null, %_llgo_0 ], [ %12, %_llgo_2 ]
  %14 = call ptr @llvm.coro.begin(token %3, ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %15 = call i1 @llvm.coro.end(ptr %14, i1 false, token none)
  ret ptr %14

_llgo_5:                                          ; preds = %_llgo_1
  %16 = getelementptr inbounds { ptr, { ptr, ptr, i1 } }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %16)
  %17 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %17, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %18 = call ptr @llvm.coro.free(token %3, ptr %14)
  call void @free(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

declare i64 @"github.com/goplus/llgo/cl/_testrt/coroblockon.createWorker$1"(ptr)

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroblockon.createWorker$1$coro"(ptr %0) #0 {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = alloca { ptr, i64 }, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = extractvalue { ptr } %1, 0
  %7 = load i64, ptr %6, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %12)
  %8 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %8, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_2:                                          ; preds = %_llgo_0
  %9 = call i64 @llvm.coro.size.i64()
  %10 = call ptr @malloc(i64 %9)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %11 = phi ptr [ null, %_llgo_0 ], [ %10, %_llgo_2 ]
  %12 = call ptr @llvm.coro.begin(token %4, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1
  %13 = call i1 @llvm.coro.end(ptr %12, i1 false, token none)
  ret ptr %12

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_1
  %14 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %14)
  %15 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %15, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %16 = call ptr @llvm.coro.free(token %4, ptr %12)
  call void @free(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %17 = extractvalue { ptr } %1, 0
  %18 = load i64, ptr %17, align 4
  %19 = mul i64 10, %18
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 22 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %20 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 %19, ptr %20, align 4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_5
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
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 42 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/cl/_testrt/coroblockon.syncCaller"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 44 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroblockon.asyncCaller$coro"()
  br label %_llgo_8

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call i64 @llvm.coro.size.i64()
  %6 = call ptr @malloc(i64 %5)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %7 = phi ptr [ null, %_llgo_0 ], [ %6, %_llgo_2 ]
  %8 = call ptr @llvm.coro.begin(token %2, ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_11, %_llgo_10
  %9 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_5:                                          ; preds = %_llgo_15, %_llgo_14, %_llgo_11, %_llgo_10
  %10 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %10)
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_16, %_llgo_5
  %12 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_8
  %13 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %4)
  br i1 %13, label %_llgo_14, label %_llgo_15

_llgo_8:                                          ; preds = %_llgo_13, %_llgo_12, %_llgo_1
  %14 = phi i1 [ true, %_llgo_1 ], [ false, %_llgo_10 ], [ false, %_llgo_11 ]
  %15 = call i1 @llvm.coro.done(ptr %4)
  br i1 %15, label %_llgo_7, label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  br i1 %14, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %16 = call ptr @llvm.coro.promise(ptr %4, i32 8, i1 false)
  %17 = getelementptr inbounds { ptr }, ptr %16, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %17, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %4)
  %18 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %18, label %_llgo_4 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9
  %19 = call ptr @llvm.coro.promise(ptr %4, i32 8, i1 false)
  %20 = getelementptr inbounds { ptr }, ptr %19, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %20, ptr %8)
  %21 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %21, label %_llgo_4 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_5
  ]

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_8

_llgo_13:                                         ; preds = %_llgo_11
  br label %_llgo_8

_llgo_14:                                         ; preds = %_llgo_7
  %22 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %22)
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_16:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/coroblockon.syncCaller"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call { ptr, ptr, i1 } @"github.com/goplus/llgo/cl/_testrt/coroblockon.createWorker"(i64 5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 28 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = extractvalue { ptr, ptr, i1 } %0, 0
  %2 = extractvalue { ptr, ptr, i1 } %0, 1
  %3 = extractvalue { ptr, ptr, i1 } %0, 2
  br i1 %3, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call i64 %1(ptr %2)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call ptr %1(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %5)
  %6 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %7 = getelementptr inbounds { ptr, i64 }, ptr %6, i32 0, i32 1
  %8 = load i64, ptr %7, align 4
  call void @llvm.coro.destroy(ptr %5)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  %9 = phi i64 [ %4, %_llgo_1 ], [ %8, %_llgo_2 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 20 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroblockon.syncCaller$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = call { ptr, ptr, i1 } @"github.com/goplus/llgo/cl/_testrt/coroblockon.createWorker"(i64 5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 28 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = extractvalue { ptr, ptr, i1 } %4, 0
  %6 = extractvalue { ptr, ptr, i1 } %4, 1
  %7 = extractvalue { ptr, ptr, i1 } %4, 2
  br i1 %7, label %_llgo_8, label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %8 = call i64 @llvm.coro.size.i64()
  %9 = call ptr @malloc(i64 %8)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %10 = phi ptr [ null, %_llgo_0 ], [ %9, %_llgo_2 ]
  %11 = call ptr @llvm.coro.begin(token %2, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_14, %_llgo_13
  %12 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_17, %_llgo_14, %_llgo_13
  %13 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %13)
  %14 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %14, label %_llgo_4 [
    i8 0, label %_llgo_19
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_19, %_llgo_5
  %15 = call ptr @llvm.coro.free(token %2, ptr %11)
  call void @free(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %16 = call i64 %5(ptr %6)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  %17 = call ptr %5(ptr %6)
  br label %_llgo_11

_llgo_9:                                          ; preds = %_llgo_18, %_llgo_7
  %18 = phi i64 [ %16, %_llgo_7 ], [ %31, %_llgo_18 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 20 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_11
  %19 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %17)
  br i1 %19, label %_llgo_17, label %_llgo_18

_llgo_11:                                         ; preds = %_llgo_16, %_llgo_15, %_llgo_8
  %20 = phi i1 [ true, %_llgo_8 ], [ false, %_llgo_13 ], [ false, %_llgo_14 ]
  %21 = call i1 @llvm.coro.done(ptr %17)
  br i1 %21, label %_llgo_10, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  br i1 %20, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %22 = call ptr @llvm.coro.promise(ptr %17, i32 8, i1 false)
  %23 = getelementptr inbounds { ptr, i64 }, ptr %22, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %23, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %17)
  %24 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %24, label %_llgo_4 [
    i8 0, label %_llgo_15
    i8 1, label %_llgo_5
  ]

_llgo_14:                                         ; preds = %_llgo_12
  %25 = call ptr @llvm.coro.promise(ptr %17, i32 8, i1 false)
  %26 = getelementptr inbounds { ptr, i64 }, ptr %25, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %26, ptr %11)
  %27 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %27, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_5
  ]

_llgo_15:                                         ; preds = %_llgo_13
  br label %_llgo_11

_llgo_16:                                         ; preds = %_llgo_14
  br label %_llgo_11

_llgo_17:                                         ; preds = %_llgo_10
  %28 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %28)
  br label %_llgo_5

_llgo_18:                                         ; preds = %_llgo_10
  %29 = call ptr @llvm.coro.promise(ptr %17, i32 8, i1 false)
  %30 = getelementptr inbounds { ptr, i64 }, ptr %29, i32 0, i32 1
  %31 = load i64, ptr %30, align 4
  call void @llvm.coro.destroy(ptr %17)
  br label %_llgo_9

_llgo_19:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr)

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

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token) #3

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr)

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #5

declare void @free(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr)

attributes #0 = { presplitcoroutine }
attributes #1 = { nounwind memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #3 = { nounwind }
attributes #4 = { nounwind memory(argmem: readwrite) }
attributes #5 = { nounwind memory(argmem: read) }
