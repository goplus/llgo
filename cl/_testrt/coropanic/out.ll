; ModuleID = 'github.com/goplus/llgo/cl/_testrt/coropanic'
source_filename = "github.com/goplus/llgo/cl/_testrt/coropanic"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr, i1 }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Defer" = type { ptr, i64, ptr, ptr, ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/coropanic.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [11 x i8] c"inner panic", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr @"*_llgo_string" }, align 8
@1 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@2 = private unnamed_addr constant [41 x i8] c"=== Test 1: recover in same goroutine ===", align 1
@3 = private unnamed_addr constant [36 x i8] c"=== Test 2: panic across suspend ===", align 1
@4 = private unnamed_addr constant [28 x i8] c"=== Test 3: nested panic ===", align 1
@5 = private unnamed_addr constant [37 x i8] c"=== Test 4: recover only in defer ===", align 1
@6 = private unnamed_addr constant [33 x i8] c"=== Test 5: unrecovered panic ===", align 1
@7 = private unnamed_addr constant [9 x i8] c"main done", align 1
@8 = private unnamed_addr constant [13 x i8] c"calling inner", align 1
@9 = private unnamed_addr constant [43 x i8] c"type assertion interface{} -> string failed", align 1
@10 = private unnamed_addr constant [17 x i8] c"recovered nested:", align 1
@11 = private unnamed_addr constant [6 x i8] c"step 1", align 1
@12 = private unnamed_addr constant [6 x i8] c"step 2", align 1
@13 = private unnamed_addr constant [12 x i8] c"test panic 2", align 1
@14 = private unnamed_addr constant [25 x i8] c"recovered across suspend:", align 1
@15 = private unnamed_addr constant [12 x i8] c"before panic", align 1
@16 = private unnamed_addr constant [12 x i8] c"test panic 1", align 1
@17 = private unnamed_addr constant [10 x i8] c"recovered:", align 1
@18 = private unnamed_addr constant [15 x i8] c"direct recover:", align 1
@19 = private unnamed_addr constant [12 x i8] c"test panic 4", align 1
@20 = private unnamed_addr constant [17 x i8] c"deferred recover:", align 1
@21 = private unnamed_addr constant [30 x i8] c"about to panic without recover", align 1
@22 = private unnamed_addr constant [18 x i8] c"unrecovered panic!", align 1

define void @"github.com/goplus/llgo/cl/_testrt/coropanic.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/coropanic.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/coropanic.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/coropanic.innerPanic"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 11 }, ptr %0, align 8
  %1 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %0, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %1)
  unreachable
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coropanic.innerPanic$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 11 }, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %4, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5)
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %6 = call i64 @llvm.coro.size.i64()
  %7 = call ptr @malloc(i64 %6)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %8 = phi ptr [ null, %_llgo_0 ], [ %7, %_llgo_2 ]
  %9 = call ptr @llvm.coro.begin(token %2, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %10 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %10, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %11 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_5:                                          ; preds = %_llgo_1, %_llgo_3
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %13 = call ptr @llvm.coro.free(token %2, ptr %9)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/coropanic.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 41 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call ptr @"github.com/goplus/llgo/cl/_testrt/coropanic.testRecoverInSameGoroutine$coro"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 36 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = call ptr @"github.com/goplus/llgo/cl/_testrt/coropanic.testPanicAcrossSuspend$coro"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 28 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = call ptr @"github.com/goplus/llgo/cl/_testrt/coropanic.testNestedPanic$coro"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 37 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = call ptr @"github.com/goplus/llgo/cl/_testrt/coropanic.testRecoverOnlyInDefer$coro"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = call ptr @"github.com/goplus/llgo/cl/_testrt/coropanic.testUnrecoveredPanic$coro"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 9 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coropanic.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 41 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = call ptr @"github.com/goplus/llgo/cl/_testrt/coropanic.testRecoverInSameGoroutine$coro"()
  br label %_llgo_8

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

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_24, %_llgo_20, %_llgo_16, %_llgo_12, %_llgo_8, %_llgo_3
  %10 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_5:                                          ; preds = %_llgo_27, %_llgo_26, %_llgo_24, %_llgo_22, %_llgo_20, %_llgo_18, %_llgo_16, %_llgo_14, %_llgo_12, %_llgo_10, %_llgo_8, %_llgo_3
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_28
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_28, %_llgo_5
  %12 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_1
  %13 = call ptr @llvm.coro.promise(ptr %4, i32 8, i1 false)
  %14 = getelementptr inbounds { ptr }, ptr %13, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %14, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %4)
  %15 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %15, label %_llgo_4 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_9:                                          ; preds = %_llgo_8
  %16 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %4)
  br i1 %16, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %17 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %17)
  br label %_llgo_5

_llgo_11:                                         ; preds = %_llgo_9
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 36 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %18 = call ptr @"github.com/goplus/llgo/cl/_testrt/coropanic.testPanicAcrossSuspend$coro"()
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  %19 = call ptr @llvm.coro.promise(ptr %18, i32 8, i1 false)
  %20 = getelementptr inbounds { ptr }, ptr %19, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %20, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %18)
  %21 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %21, label %_llgo_4 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_5
  ]

_llgo_13:                                         ; preds = %_llgo_12
  %22 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %18)
  br i1 %22, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  %23 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %23)
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_13
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 28 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %24 = call ptr @"github.com/goplus/llgo/cl/_testrt/coropanic.testNestedPanic$coro"()
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15
  %25 = call ptr @llvm.coro.promise(ptr %24, i32 8, i1 false)
  %26 = getelementptr inbounds { ptr }, ptr %25, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %26, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %24)
  %27 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %27, label %_llgo_4 [
    i8 0, label %_llgo_17
    i8 1, label %_llgo_5
  ]

_llgo_17:                                         ; preds = %_llgo_16
  %28 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %24)
  br i1 %28, label %_llgo_18, label %_llgo_19

_llgo_18:                                         ; preds = %_llgo_17
  %29 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %29)
  br label %_llgo_5

_llgo_19:                                         ; preds = %_llgo_17
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 37 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %30 = call ptr @"github.com/goplus/llgo/cl/_testrt/coropanic.testRecoverOnlyInDefer$coro"()
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19
  %31 = call ptr @llvm.coro.promise(ptr %30, i32 8, i1 false)
  %32 = getelementptr inbounds { ptr }, ptr %31, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %32, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %30)
  %33 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %33, label %_llgo_4 [
    i8 0, label %_llgo_21
    i8 1, label %_llgo_5
  ]

_llgo_21:                                         ; preds = %_llgo_20
  %34 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %30)
  br i1 %34, label %_llgo_22, label %_llgo_23

_llgo_22:                                         ; preds = %_llgo_21
  %35 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %30)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %30)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %35)
  br label %_llgo_5

_llgo_23:                                         ; preds = %_llgo_21
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %36 = call ptr @"github.com/goplus/llgo/cl/_testrt/coropanic.testUnrecoveredPanic$coro"()
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23
  %37 = call ptr @llvm.coro.promise(ptr %36, i32 8, i1 false)
  %38 = getelementptr inbounds { ptr }, ptr %37, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %38, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %36)
  %39 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %39, label %_llgo_4 [
    i8 0, label %_llgo_25
    i8 1, label %_llgo_5
  ]

_llgo_25:                                         ; preds = %_llgo_24
  %40 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %36)
  br i1 %40, label %_llgo_26, label %_llgo_27

_llgo_26:                                         ; preds = %_llgo_25
  %41 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %36)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %36)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %41)
  br label %_llgo_5

_llgo_27:                                         ; preds = %_llgo_25
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 9 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_28:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/coropanic.testNestedPanic"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"()
  %1 = alloca i8, i64 196, align 1
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 1
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 2
  store ptr %0, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 3
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testrt/coropanic.testNestedPanic", %_llgo_2), ptr %6, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %2)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 1
  %8 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 3
  %9 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 5
  store ptr null, ptr %10, align 8
  %11 = call i32 @sigsetjmp(ptr %1, i32 0)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_3
  ret void

_llgo_2:                                          ; preds = %_llgo_5, %_llgo_4
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testrt/coropanic.testNestedPanic", %_llgo_3), ptr %8, align 8
  %13 = load i64, ptr %7, align 4
  call void @"github.com/goplus/llgo/cl/_testrt/coropanic.testNestedPanic$1"()
  %14 = load %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, align 8
  %15 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Defer" %14, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %15)
  %16 = load ptr, ptr %9, align 8
  indirectbr ptr %16, [label %_llgo_3, label %_llgo_6]

_llgo_3:                                          ; preds = %_llgo_5, %_llgo_2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr %0)
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 13 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/cl/_testrt/coropanic.innerPanic"()
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testrt/coropanic.testNestedPanic", %_llgo_6), ptr %9, align 8
  br label %_llgo_2

_llgo_5:                                          ; preds = %_llgo_0
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testrt/coropanic.testNestedPanic", %_llgo_3), ptr %9, align 8
  %17 = load ptr, ptr %8, align 8
  indirectbr ptr %17, [label %_llgo_3, label %_llgo_2]

_llgo_6:                                          ; preds = %_llgo_2
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coropanic.testNestedPanic$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 13 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %8)
  %4 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %4, label %_llgo_5 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_6
  ]

_llgo_2:                                          ; No predecessors!
  br label %_llgo_6

_llgo_3:                                          ; preds = %_llgo_0
  %5 = call i64 @llvm.coro.size.i64()
  %6 = call ptr @malloc(i64 %5)
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_0
  %7 = phi ptr [ null, %_llgo_0 ], [ %6, %_llgo_3 ]
  %8 = call ptr @llvm.coro.begin(token %2, ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %9 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %9, label %_llgo_5 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_17, %_llgo_14, %_llgo_10, %_llgo_1, %_llgo_4
  %10 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_6:                                          ; preds = %_llgo_16, %_llgo_14, %_llgo_2, %_llgo_13, %_llgo_12, %_llgo_10, %_llgo_1, %_llgo_4
  %11 = call ptr @"github.com/goplus/llgo/cl/_testrt/coropanic.testNestedPanic$1$coro"()
  br label %_llgo_14

_llgo_7:                                          ; preds = %_llgo_18, %_llgo_17
  %12 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_4
  br label %_llgo_1

_llgo_9:                                          ; preds = %_llgo_1
  %13 = call ptr @"github.com/goplus/llgo/cl/_testrt/coropanic.innerPanic$coro"()
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  %14 = call ptr @llvm.coro.promise(ptr %13, i32 8, i1 false)
  %15 = getelementptr inbounds { ptr }, ptr %14, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %15, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %13)
  %16 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %16, label %_llgo_5 [
    i8 0, label %_llgo_11
    i8 1, label %_llgo_6
  ]

_llgo_11:                                         ; preds = %_llgo_10
  %17 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %13)
  br i1 %17, label %_llgo_12, label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_11
  %18 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %18)
  br label %_llgo_6

_llgo_13:                                         ; preds = %_llgo_11
  br label %_llgo_6

_llgo_14:                                         ; preds = %_llgo_6
  %19 = call ptr @llvm.coro.promise(ptr %11, i32 8, i1 false)
  %20 = getelementptr inbounds { ptr }, ptr %19, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %20, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %11)
  %21 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %21, label %_llgo_5 [
    i8 0, label %_llgo_15
    i8 1, label %_llgo_6
  ]

_llgo_15:                                         ; preds = %_llgo_14
  %22 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %11)
  br i1 %22, label %_llgo_16, label %_llgo_17

_llgo_16:                                         ; preds = %_llgo_15
  %23 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %23)
  br label %_llgo_6

_llgo_17:                                         ; preds = %_llgo_15
  %24 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %24, label %_llgo_5 [
    i8 0, label %_llgo_18
    i8 1, label %_llgo_7
  ]

_llgo_18:                                         ; preds = %_llgo_17
  br label %_llgo_7
}

define void @"github.com/goplus/llgo/cl/_testrt/coropanic.testNestedPanic$1"() {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.Recover"()
  %1 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer)
  %2 = xor i1 %1, true
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %4 = icmp eq ptr %3, @_llgo_string
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_0
  ret void

_llgo_3:                                          ; preds = %_llgo_1
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %6 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %5, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 17 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_1
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 43 }, ptr %7, align 8
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %7, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %8)
  unreachable
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coropanic.testNestedPanic$1$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_9
  %4 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroRecover"()
  %5 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %4, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer)
  %6 = xor i1 %5, true
  br i1 %6, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %4, 0
  %8 = icmp eq ptr %7, @_llgo_string
  br i1 %8, label %_llgo_10, label %_llgo_11

_llgo_3:                                          ; preds = %_llgo_10, %_llgo_1
  br label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_0
  %9 = call i64 @llvm.coro.size.i64()
  %10 = call ptr @malloc(i64 %9)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %11 = phi ptr [ null, %_llgo_0 ], [ %10, %_llgo_4 ]
  %12 = call ptr @llvm.coro.begin(token %2, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %13 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %13, label %_llgo_6 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_7
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7, %_llgo_5
  %14 = call i1 @llvm.coro.end(ptr %12, i1 false, token none)
  ret ptr %12

_llgo_7:                                          ; preds = %_llgo_3, %_llgo_5
  %15 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %15, label %_llgo_6 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_12, %_llgo_7
  %16 = call ptr @llvm.coro.free(token %2, ptr %12)
  call void @free(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_5
  br label %_llgo_1

_llgo_10:                                         ; preds = %_llgo_2
  %17 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %4, 1
  %18 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %17, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 17 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_3

_llgo_11:                                         ; preds = %_llgo_2
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 43 }, ptr %19, align 8
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %19, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %20)
  unreachable

_llgo_12:                                         ; preds = %_llgo_7
  br label %_llgo_8
}

define void @"github.com/goplus/llgo/cl/_testrt/coropanic.testPanicAcrossSuspend"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"()
  %1 = alloca i8, i64 196, align 1
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 1
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 2
  store ptr %0, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 3
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testrt/coropanic.testPanicAcrossSuspend", %_llgo_2), ptr %6, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %2)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 1
  %8 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 3
  %9 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 5
  store ptr null, ptr %10, align 8
  %11 = call i32 @sigsetjmp(ptr %1, i32 0)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_3
  ret void

_llgo_2:                                          ; preds = %_llgo_5
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testrt/coropanic.testPanicAcrossSuspend", %_llgo_3), ptr %8, align 8
  %13 = load i64, ptr %7, align 4
  call void @"github.com/goplus/llgo/cl/_testrt/coropanic.testPanicAcrossSuspend$1"()
  %14 = load %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, align 8
  %15 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Defer" %14, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %15)
  %16 = load ptr, ptr %9, align 8
  indirectbr ptr %16, [label %_llgo_3]

_llgo_3:                                          ; preds = %_llgo_5, %_llgo_2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr %0)
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 12 }, ptr %17, align 8
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %17, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %18)
  unreachable

_llgo_5:                                          ; preds = %_llgo_0
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testrt/coropanic.testPanicAcrossSuspend", %_llgo_3), ptr %9, align 8
  %19 = load ptr, ptr %8, align 8
  indirectbr ptr %19, [label %_llgo_3, label %_llgo_2]
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coropanic.testPanicAcrossSuspend$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %8)
  %4 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %4, label %_llgo_5 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_6
  ]

_llgo_2:                                          ; No predecessors!
  br label %_llgo_6

_llgo_3:                                          ; preds = %_llgo_0
  %5 = call i64 @llvm.coro.size.i64()
  %6 = call ptr @malloc(i64 %5)
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_0
  %7 = phi ptr [ null, %_llgo_0 ], [ %6, %_llgo_3 ]
  %8 = call ptr @llvm.coro.begin(token %2, ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %9 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %9, label %_llgo_5 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_14, %_llgo_11, %_llgo_9, %_llgo_1, %_llgo_4
  %10 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_6:                                          ; preds = %_llgo_13, %_llgo_11, %_llgo_2, %_llgo_10, %_llgo_9, %_llgo_1, %_llgo_4
  %11 = call ptr @"github.com/goplus/llgo/cl/_testrt/coropanic.testPanicAcrossSuspend$1$coro"()
  br label %_llgo_11

_llgo_7:                                          ; preds = %_llgo_15, %_llgo_14
  %12 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_4
  br label %_llgo_1

_llgo_9:                                          ; preds = %_llgo_1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %8)
  %13 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %13, label %_llgo_5 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_6
  ]

_llgo_10:                                         ; preds = %_llgo_9
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 12 }, ptr %14, align 8
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %14, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %15)
  br label %_llgo_6

_llgo_11:                                         ; preds = %_llgo_6
  %16 = call ptr @llvm.coro.promise(ptr %11, i32 8, i1 false)
  %17 = getelementptr inbounds { ptr }, ptr %16, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %17, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %11)
  %18 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %18, label %_llgo_5 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_6
  ]

_llgo_12:                                         ; preds = %_llgo_11
  %19 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %11)
  br i1 %19, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %20 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %20)
  br label %_llgo_6

_llgo_14:                                         ; preds = %_llgo_12
  %21 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %21, label %_llgo_5 [
    i8 0, label %_llgo_15
    i8 1, label %_llgo_7
  ]

_llgo_15:                                         ; preds = %_llgo_14
  br label %_llgo_7
}

define void @"github.com/goplus/llgo/cl/_testrt/coropanic.testPanicAcrossSuspend$1"() {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.Recover"()
  %1 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer)
  %2 = xor i1 %1, true
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %4 = icmp eq ptr %3, @_llgo_string
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_0
  ret void

_llgo_3:                                          ; preds = %_llgo_1
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %6 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %5, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_1
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 43 }, ptr %7, align 8
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %7, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %8)
  unreachable
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coropanic.testPanicAcrossSuspend$1$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_9
  %4 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroRecover"()
  %5 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %4, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer)
  %6 = xor i1 %5, true
  br i1 %6, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %4, 0
  %8 = icmp eq ptr %7, @_llgo_string
  br i1 %8, label %_llgo_10, label %_llgo_11

_llgo_3:                                          ; preds = %_llgo_10, %_llgo_1
  br label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_0
  %9 = call i64 @llvm.coro.size.i64()
  %10 = call ptr @malloc(i64 %9)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %11 = phi ptr [ null, %_llgo_0 ], [ %10, %_llgo_4 ]
  %12 = call ptr @llvm.coro.begin(token %2, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %13 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %13, label %_llgo_6 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_7
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7, %_llgo_5
  %14 = call i1 @llvm.coro.end(ptr %12, i1 false, token none)
  ret ptr %12

_llgo_7:                                          ; preds = %_llgo_3, %_llgo_5
  %15 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %15, label %_llgo_6 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_12, %_llgo_7
  %16 = call ptr @llvm.coro.free(token %2, ptr %12)
  call void @free(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_5
  br label %_llgo_1

_llgo_10:                                         ; preds = %_llgo_2
  %17 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %4, 1
  %18 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %17, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_3

_llgo_11:                                         ; preds = %_llgo_2
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 43 }, ptr %19, align 8
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %19, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %20)
  unreachable

_llgo_12:                                         ; preds = %_llgo_7
  br label %_llgo_8
}

define void @"github.com/goplus/llgo/cl/_testrt/coropanic.testRecoverInSameGoroutine"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"()
  %1 = alloca i8, i64 196, align 1
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 1
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 2
  store ptr %0, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 3
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testrt/coropanic.testRecoverInSameGoroutine", %_llgo_2), ptr %6, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %2)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 1
  %8 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 3
  %9 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 5
  store ptr null, ptr %10, align 8
  %11 = call i32 @sigsetjmp(ptr %1, i32 0)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_3
  ret void

_llgo_2:                                          ; preds = %_llgo_5
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testrt/coropanic.testRecoverInSameGoroutine", %_llgo_3), ptr %8, align 8
  %13 = load i64, ptr %7, align 4
  call void @"github.com/goplus/llgo/cl/_testrt/coropanic.testRecoverInSameGoroutine$1"()
  %14 = load %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, align 8
  %15 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Defer" %14, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %15)
  %16 = load ptr, ptr %9, align 8
  indirectbr ptr %16, [label %_llgo_3]

_llgo_3:                                          ; preds = %_llgo_5, %_llgo_2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr %0)
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 12 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 12 }, ptr %17, align 8
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %17, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %18)
  unreachable

_llgo_5:                                          ; preds = %_llgo_0
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testrt/coropanic.testRecoverInSameGoroutine", %_llgo_3), ptr %9, align 8
  %19 = load ptr, ptr %8, align 8
  indirectbr ptr %19, [label %_llgo_3, label %_llgo_2]
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coropanic.testRecoverInSameGoroutine$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 12 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %8)
  %4 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %4, label %_llgo_5 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_6
  ]

_llgo_2:                                          ; No predecessors!
  br label %_llgo_6

_llgo_3:                                          ; preds = %_llgo_0
  %5 = call i64 @llvm.coro.size.i64()
  %6 = call ptr @malloc(i64 %5)
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_0
  %7 = phi ptr [ null, %_llgo_0 ], [ %6, %_llgo_3 ]
  %8 = call ptr @llvm.coro.begin(token %2, ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %9 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %9, label %_llgo_5 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_13, %_llgo_10, %_llgo_1, %_llgo_4
  %10 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_6:                                          ; preds = %_llgo_12, %_llgo_10, %_llgo_2, %_llgo_9, %_llgo_1, %_llgo_4
  %11 = call ptr @"github.com/goplus/llgo/cl/_testrt/coropanic.testRecoverInSameGoroutine$1$coro"()
  br label %_llgo_10

_llgo_7:                                          ; preds = %_llgo_14, %_llgo_13
  %12 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_4
  br label %_llgo_1

_llgo_9:                                          ; preds = %_llgo_1
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 12 }, ptr %13, align 8
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %13, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %14)
  br label %_llgo_6

_llgo_10:                                         ; preds = %_llgo_6
  %15 = call ptr @llvm.coro.promise(ptr %11, i32 8, i1 false)
  %16 = getelementptr inbounds { ptr }, ptr %15, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %16, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %11)
  %17 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %17, label %_llgo_5 [
    i8 0, label %_llgo_11
    i8 1, label %_llgo_6
  ]

_llgo_11:                                         ; preds = %_llgo_10
  %18 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %11)
  br i1 %18, label %_llgo_12, label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_11
  %19 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %19)
  br label %_llgo_6

_llgo_13:                                         ; preds = %_llgo_11
  %20 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %20, label %_llgo_5 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_7
  ]

_llgo_14:                                         ; preds = %_llgo_13
  br label %_llgo_7
}

define void @"github.com/goplus/llgo/cl/_testrt/coropanic.testRecoverInSameGoroutine$1"() {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.Recover"()
  %1 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer)
  %2 = xor i1 %1, true
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %4 = icmp eq ptr %3, @_llgo_string
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_0
  ret void

_llgo_3:                                          ; preds = %_llgo_1
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %6 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %5, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_1
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 43 }, ptr %7, align 8
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %7, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %8)
  unreachable
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coropanic.testRecoverInSameGoroutine$1$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_9
  %4 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroRecover"()
  %5 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %4, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer)
  %6 = xor i1 %5, true
  br i1 %6, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %4, 0
  %8 = icmp eq ptr %7, @_llgo_string
  br i1 %8, label %_llgo_10, label %_llgo_11

_llgo_3:                                          ; preds = %_llgo_10, %_llgo_1
  br label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_0
  %9 = call i64 @llvm.coro.size.i64()
  %10 = call ptr @malloc(i64 %9)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %11 = phi ptr [ null, %_llgo_0 ], [ %10, %_llgo_4 ]
  %12 = call ptr @llvm.coro.begin(token %2, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %13 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %13, label %_llgo_6 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_7
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7, %_llgo_5
  %14 = call i1 @llvm.coro.end(ptr %12, i1 false, token none)
  ret ptr %12

_llgo_7:                                          ; preds = %_llgo_3, %_llgo_5
  %15 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %15, label %_llgo_6 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_12, %_llgo_7
  %16 = call ptr @llvm.coro.free(token %2, ptr %12)
  call void @free(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_5
  br label %_llgo_1

_llgo_10:                                         ; preds = %_llgo_2
  %17 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %4, 1
  %18 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %17, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_3

_llgo_11:                                         ; preds = %_llgo_2
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 43 }, ptr %19, align 8
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %19, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %20)
  unreachable

_llgo_12:                                         ; preds = %_llgo_7
  br label %_llgo_8
}

define void @"github.com/goplus/llgo/cl/_testrt/coropanic.testRecoverOnlyInDefer"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"()
  %1 = alloca i8, i64 196, align 1
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 1
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 2
  store ptr %0, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 3
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testrt/coropanic.testRecoverOnlyInDefer", %_llgo_4), ptr %6, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %2)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 1
  %8 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 3
  %9 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 5
  store ptr null, ptr %10, align 8
  %11 = call i32 @sigsetjmp(ptr %1, i32 0)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %_llgo_6, label %_llgo_7

_llgo_1:                                          ; preds = %_llgo_5
  ret void

_llgo_2:                                          ; preds = %_llgo_6
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 15 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintEface"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_6
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 12 }, ptr %13, align 8
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %13, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %14)
  unreachable

_llgo_4:                                          ; preds = %_llgo_7
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testrt/coropanic.testRecoverOnlyInDefer", %_llgo_5), ptr %8, align 8
  %15 = load i64, ptr %7, align 4
  call void @"github.com/goplus/llgo/cl/_testrt/coropanic.testRecoverOnlyInDefer$1"()
  %16 = load %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, align 8
  %17 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Defer" %16, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %17)
  %18 = load ptr, ptr %9, align 8
  indirectbr ptr %18, [label %_llgo_5]

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr %0)
  br label %_llgo_1

_llgo_6:                                          ; preds = %_llgo_0
  %19 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.Recover"()
  %20 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %19, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer)
  %21 = xor i1 %20, true
  br i1 %21, label %_llgo_2, label %_llgo_3

_llgo_7:                                          ; preds = %_llgo_0
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testrt/coropanic.testRecoverOnlyInDefer", %_llgo_5), ptr %9, align 8
  %22 = load ptr, ptr %8, align 8
  indirectbr ptr %22, [label %_llgo_5, label %_llgo_4]
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coropanic.testRecoverOnlyInDefer$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_5, label %_llgo_6

_llgo_1:                                          ; preds = %_llgo_10
  %4 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroRecover"()
  %5 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %4, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer)
  %6 = xor i1 %5, true
  br i1 %6, label %_llgo_3, label %_llgo_4

_llgo_2:                                          ; No predecessors!
  br label %_llgo_8

_llgo_3:                                          ; preds = %_llgo_1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 15 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintEface"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %11)
  %7 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %7, label %_llgo_7 [
    i8 0, label %_llgo_11
    i8 1, label %_llgo_8
  ]

_llgo_5:                                          ; preds = %_llgo_0
  %8 = call i64 @llvm.coro.size.i64()
  %9 = call ptr @malloc(i64 %8)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %10 = phi ptr [ null, %_llgo_0 ], [ %9, %_llgo_5 ]
  %11 = call ptr @llvm.coro.begin(token %2, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %12 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %12, label %_llgo_7 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_8
  ]

_llgo_7:                                          ; preds = %_llgo_9, %_llgo_15, %_llgo_12, %_llgo_4, %_llgo_6
  %13 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_8:                                          ; preds = %_llgo_14, %_llgo_12, %_llgo_11, %_llgo_4, %_llgo_2, %_llgo_6
  %14 = call ptr @"github.com/goplus/llgo/cl/_testrt/coropanic.testRecoverOnlyInDefer$1$coro"()
  br label %_llgo_12

_llgo_9:                                          ; preds = %_llgo_16, %_llgo_15
  %15 = call ptr @llvm.coro.free(token %2, ptr %11)
  call void @free(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_7

_llgo_10:                                         ; preds = %_llgo_6
  br label %_llgo_1

_llgo_11:                                         ; preds = %_llgo_4
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 12 }, ptr %16, align 8
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %16, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %17)
  br label %_llgo_8

_llgo_12:                                         ; preds = %_llgo_8
  %18 = call ptr @llvm.coro.promise(ptr %14, i32 8, i1 false)
  %19 = getelementptr inbounds { ptr }, ptr %18, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %19, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %14)
  %20 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %20, label %_llgo_7 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_8
  ]

_llgo_13:                                         ; preds = %_llgo_12
  %21 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %14)
  br i1 %21, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  %22 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %22)
  br label %_llgo_8

_llgo_15:                                         ; preds = %_llgo_13
  %23 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %23, label %_llgo_7 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_9
  ]

_llgo_16:                                         ; preds = %_llgo_15
  br label %_llgo_9
}

define void @"github.com/goplus/llgo/cl/_testrt/coropanic.testRecoverOnlyInDefer$1"() {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.Recover"()
  %1 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer)
  %2 = xor i1 %1, true
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %4 = icmp eq ptr %3, @_llgo_string
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_0
  ret void

_llgo_3:                                          ; preds = %_llgo_1
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %6 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %5, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 17 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_1
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 43 }, ptr %7, align 8
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %7, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %8)
  unreachable
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coropanic.testRecoverOnlyInDefer$1$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_9
  %4 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroRecover"()
  %5 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %4, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer)
  %6 = xor i1 %5, true
  br i1 %6, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %4, 0
  %8 = icmp eq ptr %7, @_llgo_string
  br i1 %8, label %_llgo_10, label %_llgo_11

_llgo_3:                                          ; preds = %_llgo_10, %_llgo_1
  br label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_0
  %9 = call i64 @llvm.coro.size.i64()
  %10 = call ptr @malloc(i64 %9)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %11 = phi ptr [ null, %_llgo_0 ], [ %10, %_llgo_4 ]
  %12 = call ptr @llvm.coro.begin(token %2, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %13 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %13, label %_llgo_6 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_7
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7, %_llgo_5
  %14 = call i1 @llvm.coro.end(ptr %12, i1 false, token none)
  ret ptr %12

_llgo_7:                                          ; preds = %_llgo_3, %_llgo_5
  %15 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %15, label %_llgo_6 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_12, %_llgo_7
  %16 = call ptr @llvm.coro.free(token %2, ptr %12)
  call void @free(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_5
  br label %_llgo_1

_llgo_10:                                         ; preds = %_llgo_2
  %17 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %4, 1
  %18 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %17, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 17 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_3

_llgo_11:                                         ; preds = %_llgo_2
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 43 }, ptr %19, align 8
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %19, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %20)
  unreachable

_llgo_12:                                         ; preds = %_llgo_7
  br label %_llgo_8
}

define void @"github.com/goplus/llgo/cl/_testrt/coropanic.testUnrecoveredPanic"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 18 }, ptr %0, align 8
  %1 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %0, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %1)
  unreachable
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coropanic.testUnrecoveredPanic$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %8)
  %4 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %4, label %_llgo_4 [
    i8 0, label %_llgo_8
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
  %9 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %9, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1, %_llgo_3
  %10 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_5:                                          ; preds = %_llgo_8, %_llgo_1, %_llgo_3
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_9, %_llgo_5
  %12 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_1
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 18 }, ptr %13, align 8
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %13, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %14)
  br label %_llgo_5

_llgo_9:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

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

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token) #2

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #4

declare void @free(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr)

; Function Attrs: nounwind memory(none)
declare ptr @llvm.coro.promise(ptr nocapture, i32, i1) #3

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr)

; Function Attrs: returns_twice
declare i32 @sigsetjmp(ptr, i32) #5

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.Recover"()

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroRecover"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintEface"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

attributes #0 = { presplitcoroutine }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nounwind }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nounwind memory(argmem: read) }
attributes #5 = { returns_twice }
