; ModuleID = 'github.com/goplus/llgo/cl/_testrt/closuresuspend'
source_filename = "github.com/goplus/llgo/cl/_testrt/closuresuspend"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/closuresuspend.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [21 x i8] c"asyncCaller: result =", align 1
@1 = private unnamed_addr constant [12 x i8] c"closure: x =", align 1
@2 = private unnamed_addr constant [12 x i8] c"multiplier =", align 1
@3 = private unnamed_addr constant [17 x i8] c"closure: result =", align 1
@4 = private unnamed_addr constant [17 x i8] c"helper: calling f", align 1
@5 = private unnamed_addr constant [18 x i8] c"helper: f returned", align 1
@6 = private unnamed_addr constant [17 x i8] c"=== Sync call ===", align 1
@7 = private unnamed_addr constant [19 x i8] c"sync main: result =", align 1
@8 = private unnamed_addr constant [19 x i8] c"\0A=== Async call ===", align 1
@9 = private unnamed_addr constant [10 x i8] c"main: done", align 1
@10 = private unnamed_addr constant [17 x i8] c"sync closure: x =", align 1
@11 = private unnamed_addr constant [22 x i8] c"sync closure: result =", align 1

define void @"github.com/goplus/llgo/cl/_testrt/closuresuspend.asyncCaller"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 5, ptr %0, align 4
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/closuresuspend.asyncCaller$1$coro", ptr undef, i1 undef }, ptr %1, 1
  %4 = insertvalue { ptr, ptr, i1 } %3, i1 true, 2
  %5 = call i64 @"github.com/goplus/llgo/cl/_testrt/closuresuspend.helper"({ ptr, ptr, i1 } %4, i64 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 21 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closuresuspend.asyncCaller$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
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

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1
  %9 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_1
  %10 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %10)
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

_llgo_7:                                          ; preds = %_llgo_1
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 5, ptr %13, align 4
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %15 = getelementptr inbounds { ptr }, ptr %14, i32 0, i32 0
  store ptr %13, ptr %15, align 8
  %16 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/closuresuspend.asyncCaller$1$coro", ptr undef, i1 undef }, ptr %14, 1
  %17 = insertvalue { ptr, ptr, i1 } %16, i1 true, 2
  %18 = call i64 @"github.com/goplus/llgo/cl/_testrt/closuresuspend.helper"({ ptr, ptr, i1 } %17, i64 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 21 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

declare i64 @"github.com/goplus/llgo/cl/_testrt/closuresuspend.asyncCaller$1"(ptr, i64)

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closuresuspend.asyncCaller$1$coro"(ptr %0, i64 %1) #0 {
_llgo_0:
  %2 = load { ptr }, ptr %0, align 8
  %3 = alloca { ptr, i64 }, align 8
  %4 = getelementptr inbounds { ptr, i64 }, ptr %3, i32 0, i32 0
  store ptr null, ptr %4, align 8
  %5 = call token @llvm.coro.id(i32 0, ptr %3, ptr null, ptr null)
  %6 = call i1 @llvm.coro.alloc(token %5)
  br i1 %6, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %7 = extractvalue { ptr } %2, 0
  %8 = load i64, ptr %7, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 12 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 12 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %13)
  %9 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %9, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_2:                                          ; preds = %_llgo_0
  %10 = call i64 @llvm.coro.size.i64()
  %11 = call ptr @malloc(i64 %10)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %12 = phi ptr [ null, %_llgo_0 ], [ %11, %_llgo_2 ]
  %13 = call ptr @llvm.coro.begin(token %5, ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1
  %14 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_1
  %15 = getelementptr inbounds { ptr, i64 }, ptr %3, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %15)
  %16 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %16, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %17 = call ptr @llvm.coro.free(token %5, ptr %13)
  call void @free(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %18 = extractvalue { ptr } %2, 0
  %19 = load i64, ptr %18, align 4
  %20 = mul i64 %1, %19
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 17 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %21 = getelementptr inbounds { ptr, i64 }, ptr %3, i32 0, i32 1
  store i64 %20, ptr %21, align 4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/closuresuspend.helper"({ ptr, ptr, i1 } %0, i64 %1) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 17 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = extractvalue { ptr, ptr, i1 } %0, 0
  %3 = extractvalue { ptr, ptr, i1 } %0, 1
  %4 = extractvalue { ptr, ptr, i1 } %0, 2
  br i1 %4, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  %5 = call i64 %2(ptr %3, i64 %1)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  %6 = call ptr %2(ptr %3, i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %6)
  %7 = call ptr @llvm.coro.promise(ptr %6, i32 8, i1 false)
  %8 = getelementptr inbounds { ptr, i64 }, ptr %7, i32 0, i32 1
  %9 = load i64, ptr %8, align 4
  call void @llvm.coro.destroy(ptr %6)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  %10 = phi i64 [ %5, %_llgo_1 ], [ %9, %_llgo_2 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 18 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 %10
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closuresuspend.helper$coro"({ ptr, ptr, i1 } %0, i64 %1) #0 {
_llgo_0:
  %2 = alloca { ptr, i64 }, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 17 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %6 = extractvalue { ptr, ptr, i1 } %0, 0
  %7 = extractvalue { ptr, ptr, i1 } %0, 1
  %8 = extractvalue { ptr, ptr, i1 } %0, 2
  br i1 %8, label %_llgo_8, label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %9 = call i64 @llvm.coro.size.i64()
  %10 = call ptr @malloc(i64 %9)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %11 = phi ptr [ null, %_llgo_0 ], [ %10, %_llgo_2 ]
  %12 = call ptr @llvm.coro.begin(token %4, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_14, %_llgo_13
  %13 = call i1 @llvm.coro.end(ptr %12, i1 false, token none)
  ret ptr %12

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_17, %_llgo_14, %_llgo_13
  %14 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %14)
  %15 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %15, label %_llgo_4 [
    i8 0, label %_llgo_19
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_19, %_llgo_5
  %16 = call ptr @llvm.coro.free(token %4, ptr %12)
  call void @free(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %17 = call i64 %6(ptr %7, i64 %1)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  %18 = call ptr %6(ptr %7, i64 %1)
  br label %_llgo_11

_llgo_9:                                          ; preds = %_llgo_18, %_llgo_7
  %19 = phi i64 [ %17, %_llgo_7 ], [ %33, %_llgo_18 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 18 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %20 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 %19, ptr %20, align 4
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_11
  %21 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %18)
  br i1 %21, label %_llgo_17, label %_llgo_18

_llgo_11:                                         ; preds = %_llgo_16, %_llgo_15, %_llgo_8
  %22 = phi i1 [ true, %_llgo_8 ], [ false, %_llgo_13 ], [ false, %_llgo_14 ]
  %23 = call i1 @llvm.coro.done(ptr %18)
  br i1 %23, label %_llgo_10, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  br i1 %22, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %24 = call ptr @llvm.coro.promise(ptr %18, i32 8, i1 false)
  %25 = getelementptr inbounds { ptr, i64 }, ptr %24, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %25, ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %18)
  %26 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %26, label %_llgo_4 [
    i8 0, label %_llgo_15
    i8 1, label %_llgo_5
  ]

_llgo_14:                                         ; preds = %_llgo_12
  %27 = call ptr @llvm.coro.promise(ptr %18, i32 8, i1 false)
  %28 = getelementptr inbounds { ptr, i64 }, ptr %27, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %28, ptr %12)
  %29 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %29, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_5
  ]

_llgo_15:                                         ; preds = %_llgo_13
  br label %_llgo_11

_llgo_16:                                         ; preds = %_llgo_14
  br label %_llgo_11

_llgo_17:                                         ; preds = %_llgo_10
  %30 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %30)
  br label %_llgo_5

_llgo_18:                                         ; preds = %_llgo_10
  %31 = call ptr @llvm.coro.promise(ptr %18, i32 8, i1 false)
  %32 = getelementptr inbounds { ptr, i64 }, ptr %31, i32 0, i32 1
  %33 = load i64, ptr %32, align 4
  call void @llvm.coro.destroy(ptr %18)
  br label %_llgo_9

_llgo_19:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/closuresuspend.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/closuresuspend.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/closuresuspend.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/closuresuspend.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 17 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 3, ptr %0, align 4
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/closuresuspend.main$1", ptr undef, i1 undef }, ptr %1, 1
  %4 = insertvalue { ptr, ptr, i1 } %3, i1 false, 2
  %5 = call i64 @"github.com/goplus/llgo/cl/_testrt/closuresuspend.helper"({ ptr, ptr, i1 } %4, i64 20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 19 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 19 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %6 = call ptr @"github.com/goplus/llgo/cl/_testrt/closuresuspend.asyncCaller$coro"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closuresuspend.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 17 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 3, ptr %4, align 4
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %6 = getelementptr inbounds { ptr }, ptr %5, i32 0, i32 0
  store ptr %4, ptr %6, align 8
  %7 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/closuresuspend.main$1", ptr undef, i1 undef }, ptr %5, 1
  %8 = insertvalue { ptr, ptr, i1 } %7, i1 false, 2
  %9 = call i64 @"github.com/goplus/llgo/cl/_testrt/closuresuspend.helper"({ ptr, ptr, i1 } %8, i64 20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 19 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 19 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %10 = call ptr @"github.com/goplus/llgo/cl/_testrt/closuresuspend.asyncCaller$coro"()
  br label %_llgo_8

_llgo_2:                                          ; preds = %_llgo_0
  %11 = call i64 @llvm.coro.size.i64()
  %12 = call ptr @malloc(i64 %11)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %13 = phi ptr [ null, %_llgo_0 ], [ %12, %_llgo_2 ]
  %14 = call ptr @llvm.coro.begin(token %2, ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_11, %_llgo_10
  %15 = call i1 @llvm.coro.end(ptr %14, i1 false, token none)
  ret ptr %14

_llgo_5:                                          ; preds = %_llgo_15, %_llgo_14, %_llgo_11, %_llgo_10
  %16 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %16)
  %17 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %17, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_16, %_llgo_5
  %18 = call ptr @llvm.coro.free(token %2, ptr %14)
  call void @free(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_8
  %19 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %10)
  br i1 %19, label %_llgo_14, label %_llgo_15

_llgo_8:                                          ; preds = %_llgo_13, %_llgo_12, %_llgo_1
  %20 = phi i1 [ true, %_llgo_1 ], [ false, %_llgo_10 ], [ false, %_llgo_11 ]
  %21 = call i1 @llvm.coro.done(ptr %10)
  br i1 %21, label %_llgo_7, label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  br i1 %20, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %22 = call ptr @llvm.coro.promise(ptr %10, i32 8, i1 false)
  %23 = getelementptr inbounds { ptr }, ptr %22, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %23, ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %10)
  %24 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %24, label %_llgo_4 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9
  %25 = call ptr @llvm.coro.promise(ptr %10, i32 8, i1 false)
  %26 = getelementptr inbounds { ptr }, ptr %25, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %26, ptr %14)
  %27 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %27, label %_llgo_4 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_5
  ]

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_8

_llgo_13:                                         ; preds = %_llgo_11
  br label %_llgo_8

_llgo_14:                                         ; preds = %_llgo_7
  %28 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %28)
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_16:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/closuresuspend.main$1"(ptr %0, i64 %1) {
_llgo_0:
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load i64, ptr %3, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 17 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 12 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = extractvalue { ptr } %2, 0
  %6 = load i64, ptr %5, align 4
  %7 = mul i64 %1, %6
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 22 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 %7
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closuresuspend.main$1$coro"(ptr %0, i64 %1) #0 {
_llgo_0:
  %2 = load { ptr }, ptr %0, align 8
  %3 = alloca { ptr, i64 }, align 8
  %4 = getelementptr inbounds { ptr, i64 }, ptr %3, i32 0, i32 0
  store ptr null, ptr %4, align 8
  %5 = call token @llvm.coro.id(i32 0, ptr %3, ptr null, ptr null)
  %6 = call i1 @llvm.coro.alloc(token %5)
  br i1 %6, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %7 = extractvalue { ptr } %2, 0
  %8 = load i64, ptr %7, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 17 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 12 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %9 = extractvalue { ptr } %2, 0
  %10 = load i64, ptr %9, align 4
  %11 = mul i64 %1, %10
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 22 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %12 = getelementptr inbounds { ptr, i64 }, ptr %3, i32 0, i32 1
  store i64 %11, ptr %12, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %13 = call i64 @llvm.coro.size.i64()
  %14 = call ptr @malloc(i64 %13)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %15 = phi ptr [ null, %_llgo_0 ], [ %14, %_llgo_2 ]
  %16 = call ptr @llvm.coro.begin(token %5, ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %17 = call i1 @llvm.coro.end(ptr %16, i1 false, token none)
  ret ptr %16

_llgo_5:                                          ; preds = %_llgo_1
  %18 = getelementptr inbounds { ptr, i64 }, ptr %3, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %18)
  %19 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %19, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %20 = call ptr @llvm.coro.free(token %5, ptr %16)
  call void @free(ptr %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

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

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr)

; Function Attrs: nounwind
declare i8 @llvm.coro.suspend(token, i1) #2

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token) #2

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr)

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #4

declare void @free(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr)

; Function Attrs: nounwind memory(none)
declare ptr @llvm.coro.promise(ptr nocapture, i32, i1) #3

declare void @llvm.coro.destroy(ptr)

; Function Attrs: nounwind memory(argmem: readwrite)
declare i1 @llvm.coro.done(ptr nocapture readonly) #5

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr)

attributes #0 = { presplitcoroutine }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nounwind }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nounwind memory(argmem: read) }
attributes #5 = { nounwind memory(argmem: readwrite) }
