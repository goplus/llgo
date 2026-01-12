; ModuleID = 'github.com/goplus/llgo/cl/_testrt/cororet'
source_filename = "github.com/goplus/llgo/cl/_testrt/cororet"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testrt/cororet.Point" = type { i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/cororet.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [22 x i8] c"caller: calling simple", align 1
@1 = private unnamed_addr constant [16 x i8] c"caller: result =", align 1
@2 = private unnamed_addr constant [26 x i8] c"callerMulti: calling multi", align 1
@3 = private unnamed_addr constant [22 x i8] c"callerMulti: results =", align 1
@4 = private unnamed_addr constant [31 x i8] c"callerStruct: calling structRet", align 1
@5 = private unnamed_addr constant [22 x i8] c"callerStruct: result =", align 1
@6 = private unnamed_addr constant [41 x i8] c"callerStructMulti: calling structMultiRet", align 1
@7 = private unnamed_addr constant [27 x i8] c"callerStructMulti: result =", align 1
@8 = private unnamed_addr constant [37 x i8] c"callerStructPtr: calling structPtrRet", align 1
@9 = private unnamed_addr constant [25 x i8] c"callerStructPtr: result =", align 1
@10 = private unnamed_addr constant [19 x i8] c"=== sync single ===", align 1
@11 = private unnamed_addr constant [20 x i8] c"=== async single ===", align 1
@12 = private unnamed_addr constant [18 x i8] c"=== sync multi ===", align 1
@13 = private unnamed_addr constant [19 x i8] c"=== async multi ===", align 1
@14 = private unnamed_addr constant [19 x i8] c"=== sync struct ===", align 1
@15 = private unnamed_addr constant [20 x i8] c"=== async struct ===", align 1
@16 = private unnamed_addr constant [23 x i8] c"=== sync struct ptr ===", align 1
@17 = private unnamed_addr constant [24 x i8] c"=== async struct ptr ===", align 1
@18 = private unnamed_addr constant [25 x i8] c"=== sync struct multi ===", align 1
@19 = private unnamed_addr constant [26 x i8] c"=== async struct multi ===", align 1
@20 = private unnamed_addr constant [10 x i8] c"main: done", align 1
@21 = private unnamed_addr constant [10 x i8] c"multi: x =", align 1
@22 = private unnamed_addr constant [16 x i8] c"multi: returning", align 1
@23 = private unnamed_addr constant [11 x i8] c"simple: x =", align 1
@24 = private unnamed_addr constant [17 x i8] c"simple: returning", align 1
@25 = private unnamed_addr constant [19 x i8] c"structMultiRet: x =", align 1
@26 = private unnamed_addr constant [25 x i8] c"structMultiRet: returning", align 1
@27 = private unnamed_addr constant [17 x i8] c"structPtrRet: x =", align 1
@28 = private unnamed_addr constant [23 x i8] c"structPtrRet: returning", align 1
@29 = private unnamed_addr constant [14 x i8] c"structRet: x =", align 1
@30 = private unnamed_addr constant [20 x i8] c"structRet: returning", align 1

define void @"github.com/goplus/llgo/cl/_testrt/cororet.caller"(i64 %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 22 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = call i64 @"github.com/goplus/llgo/cl/_testrt/cororet.simple"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 16 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/cororet.caller$coro"(i64 %0) #0 {
_llgo_0:
  %1 = alloca { ptr }, align 8
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 22 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.simple$coro"(i64 %0)
  br label %_llgo_8

_llgo_2:                                          ; preds = %_llgo_0
  %6 = call i64 @llvm.coro.size.i64()
  %7 = call ptr @malloc(i64 %6)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %8 = phi ptr [ null, %_llgo_0 ], [ %7, %_llgo_2 ]
  %9 = call ptr @llvm.coro.begin(token %3, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_11, %_llgo_10
  %10 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_5:                                          ; preds = %_llgo_15, %_llgo_14, %_llgo_11, %_llgo_10
  %11 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %11)
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_16, %_llgo_5
  %13 = call ptr @llvm.coro.free(token %3, ptr %9)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_8
  %14 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %5)
  br i1 %14, label %_llgo_14, label %_llgo_15

_llgo_8:                                          ; preds = %_llgo_13, %_llgo_12, %_llgo_1
  %15 = phi i1 [ true, %_llgo_1 ], [ false, %_llgo_10 ], [ false, %_llgo_11 ]
  %16 = call i1 @llvm.coro.done(ptr %5)
  br i1 %16, label %_llgo_7, label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  br i1 %15, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %17 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %18 = getelementptr inbounds { ptr, i64 }, ptr %17, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %18, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %5)
  %19 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %19, label %_llgo_4 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9
  %20 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %21 = getelementptr inbounds { ptr, i64 }, ptr %20, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %21, ptr %9)
  %22 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %22, label %_llgo_4 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_5
  ]

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_8

_llgo_13:                                         ; preds = %_llgo_11
  br label %_llgo_8

_llgo_14:                                         ; preds = %_llgo_7
  %23 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %23)
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_7
  %24 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %25 = getelementptr inbounds { ptr, i64 }, ptr %24, i32 0, i32 1
  %26 = load i64, ptr %25, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 16 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_16:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/cororet.callerMulti"(i64 %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 26 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = call { i64, i64, i64 } @"github.com/goplus/llgo/cl/_testrt/cororet.multi"(i64 %0)
  %2 = extractvalue { i64, i64, i64 } %1, 0
  %3 = extractvalue { i64, i64, i64 } %1, 1
  %4 = extractvalue { i64, i64, i64 } %1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 22 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/cororet.callerMulti$coro"(i64 %0) #0 {
_llgo_0:
  %1 = alloca { ptr }, align 8
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 26 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.multi$coro"(i64 %0)
  br label %_llgo_8

_llgo_2:                                          ; preds = %_llgo_0
  %6 = call i64 @llvm.coro.size.i64()
  %7 = call ptr @malloc(i64 %6)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %8 = phi ptr [ null, %_llgo_0 ], [ %7, %_llgo_2 ]
  %9 = call ptr @llvm.coro.begin(token %3, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_11, %_llgo_10
  %10 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_5:                                          ; preds = %_llgo_15, %_llgo_14, %_llgo_11, %_llgo_10
  %11 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %11)
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_16, %_llgo_5
  %13 = call ptr @llvm.coro.free(token %3, ptr %9)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_8
  %14 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %5)
  br i1 %14, label %_llgo_14, label %_llgo_15

_llgo_8:                                          ; preds = %_llgo_13, %_llgo_12, %_llgo_1
  %15 = phi i1 [ true, %_llgo_1 ], [ false, %_llgo_10 ], [ false, %_llgo_11 ]
  %16 = call i1 @llvm.coro.done(ptr %5)
  br i1 %16, label %_llgo_7, label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  br i1 %15, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %17 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %18 = getelementptr inbounds { ptr, { i64, i64, i64 } }, ptr %17, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %18, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %5)
  %19 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %19, label %_llgo_4 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9
  %20 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %21 = getelementptr inbounds { ptr, { i64, i64, i64 } }, ptr %20, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %21, ptr %9)
  %22 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %22, label %_llgo_4 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_5
  ]

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_8

_llgo_13:                                         ; preds = %_llgo_11
  br label %_llgo_8

_llgo_14:                                         ; preds = %_llgo_7
  %23 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %23)
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_7
  %24 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %25 = getelementptr inbounds { ptr, { i64, i64, i64 } }, ptr %24, i32 0, i32 1
  %26 = load { i64, i64, i64 }, ptr %25, align 4
  %27 = extractvalue { i64, i64, i64 } %26, 0
  %28 = extractvalue { i64, i64, i64 } %26, 1
  %29 = extractvalue { i64, i64, i64 } %26, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 22 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %28)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_16:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/cororet.callerStruct"(i64 %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = alloca %"github.com/goplus/llgo/cl/_testrt/cororet.Point", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  %2 = call %"github.com/goplus/llgo/cl/_testrt/cororet.Point" @"github.com/goplus/llgo/cl/_testrt/cororet.structRet"(i64 %0)
  store %"github.com/goplus/llgo/cl/_testrt/cororet.Point" %2, ptr %1, align 4
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %1, i32 0, i32 0
  %4 = load i64, ptr %3, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %1, i32 0, i32 1
  %6 = load i64, ptr %5, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 22 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/cororet.callerStruct$coro"(i64 %0) #0 {
_llgo_0:
  %1 = alloca { ptr }, align 8
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = alloca %"github.com/goplus/llgo/cl/_testrt/cororet.Point", align 8
  call void @llvm.memset(ptr %5, i8 0, i64 16, i1 false)
  %6 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.structRet$coro"(i64 %0)
  br label %_llgo_8

_llgo_2:                                          ; preds = %_llgo_0
  %7 = call i64 @llvm.coro.size.i64()
  %8 = call ptr @malloc(i64 %7)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi ptr [ null, %_llgo_0 ], [ %8, %_llgo_2 ]
  %10 = call ptr @llvm.coro.begin(token %3, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_11, %_llgo_10
  %11 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_5:                                          ; preds = %_llgo_15, %_llgo_14, %_llgo_11, %_llgo_10
  %12 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %12)
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_16, %_llgo_5
  %14 = call ptr @llvm.coro.free(token %3, ptr %10)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_8
  %15 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %6)
  br i1 %15, label %_llgo_14, label %_llgo_15

_llgo_8:                                          ; preds = %_llgo_13, %_llgo_12, %_llgo_1
  %16 = phi i1 [ true, %_llgo_1 ], [ false, %_llgo_10 ], [ false, %_llgo_11 ]
  %17 = call i1 @llvm.coro.done(ptr %6)
  br i1 %17, label %_llgo_7, label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  br i1 %16, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %18 = call ptr @llvm.coro.promise(ptr %6, i32 8, i1 false)
  %19 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/cl/_testrt/cororet.Point" }, ptr %18, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %19, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %6)
  %20 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %20, label %_llgo_4 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9
  %21 = call ptr @llvm.coro.promise(ptr %6, i32 8, i1 false)
  %22 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/cl/_testrt/cororet.Point" }, ptr %21, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %22, ptr %10)
  %23 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %23, label %_llgo_4 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_5
  ]

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_8

_llgo_13:                                         ; preds = %_llgo_11
  br label %_llgo_8

_llgo_14:                                         ; preds = %_llgo_7
  %24 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %24)
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_7
  %25 = call ptr @llvm.coro.promise(ptr %6, i32 8, i1 false)
  %26 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/cl/_testrt/cororet.Point" }, ptr %25, i32 0, i32 1
  %27 = load %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %26, align 4
  store %"github.com/goplus/llgo/cl/_testrt/cororet.Point" %27, ptr %5, align 4
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %5, i32 0, i32 0
  %29 = load i64, ptr %28, align 4
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %5, i32 0, i32 1
  %31 = load i64, ptr %30, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 22 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_16:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/cororet.callerStructMulti"(i64 %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 41 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = alloca %"github.com/goplus/llgo/cl/_testrt/cororet.Point", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  %2 = call { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr } @"github.com/goplus/llgo/cl/_testrt/cororet.structMultiRet"(i64 %0)
  %3 = extractvalue { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr } %2, 0
  store %"github.com/goplus/llgo/cl/_testrt/cororet.Point" %3, ptr %1, align 4
  %4 = extractvalue { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr } %2, 1
  %5 = extractvalue { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr } %2, 2
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %1, i32 0, i32 0
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %1, i32 0, i32 1
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %5, i32 0, i32 0
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %5, i32 0, i32 1
  %13 = load i64, ptr %12, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/cororet.callerStructMulti$coro"(i64 %0) #0 {
_llgo_0:
  %1 = alloca { ptr }, align 8
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 41 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = alloca %"github.com/goplus/llgo/cl/_testrt/cororet.Point", align 8
  call void @llvm.memset(ptr %5, i8 0, i64 16, i1 false)
  %6 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.structMultiRet$coro"(i64 %0)
  br label %_llgo_8

_llgo_2:                                          ; preds = %_llgo_0
  %7 = call i64 @llvm.coro.size.i64()
  %8 = call ptr @malloc(i64 %7)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi ptr [ null, %_llgo_0 ], [ %8, %_llgo_2 ]
  %10 = call ptr @llvm.coro.begin(token %3, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_11, %_llgo_10
  %11 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_5:                                          ; preds = %_llgo_15, %_llgo_14, %_llgo_11, %_llgo_10
  %12 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %12)
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_16, %_llgo_5
  %14 = call ptr @llvm.coro.free(token %3, ptr %10)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_8
  %15 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %6)
  br i1 %15, label %_llgo_14, label %_llgo_15

_llgo_8:                                          ; preds = %_llgo_13, %_llgo_12, %_llgo_1
  %16 = phi i1 [ true, %_llgo_1 ], [ false, %_llgo_10 ], [ false, %_llgo_11 ]
  %17 = call i1 @llvm.coro.done(ptr %6)
  br i1 %17, label %_llgo_7, label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  br i1 %16, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %18 = call ptr @llvm.coro.promise(ptr %6, i32 8, i1 false)
  %19 = getelementptr inbounds { ptr, { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr } }, ptr %18, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %19, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %6)
  %20 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %20, label %_llgo_4 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9
  %21 = call ptr @llvm.coro.promise(ptr %6, i32 8, i1 false)
  %22 = getelementptr inbounds { ptr, { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr } }, ptr %21, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %22, ptr %10)
  %23 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %23, label %_llgo_4 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_5
  ]

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_8

_llgo_13:                                         ; preds = %_llgo_11
  br label %_llgo_8

_llgo_14:                                         ; preds = %_llgo_7
  %24 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %24)
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_7
  %25 = call ptr @llvm.coro.promise(ptr %6, i32 8, i1 false)
  %26 = getelementptr inbounds { ptr, { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr } }, ptr %25, i32 0, i32 1
  %27 = load { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr }, ptr %26, align 8
  %28 = extractvalue { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr } %27, 0
  store %"github.com/goplus/llgo/cl/_testrt/cororet.Point" %28, ptr %5, align 4
  %29 = extractvalue { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr } %27, 1
  %30 = extractvalue { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr } %27, 2
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %5, i32 0, i32 0
  %32 = load i64, ptr %31, align 4
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %5, i32 0, i32 1
  %34 = load i64, ptr %33, align 4
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %30, i32 0, i32 0
  %36 = load i64, ptr %35, align 4
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %30, i32 0, i32 1
  %38 = load i64, ptr %37, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %36)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %38)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_16:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/cororet.callerStructPtr"(i64 %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 37 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.structPtrRet"(i64 %0)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %1, i32 0, i32 0
  %3 = load i64, ptr %2, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %1, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/cororet.callerStructPtr$coro"(i64 %0) #0 {
_llgo_0:
  %1 = alloca { ptr }, align 8
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 37 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.structPtrRet$coro"(i64 %0)
  br label %_llgo_8

_llgo_2:                                          ; preds = %_llgo_0
  %6 = call i64 @llvm.coro.size.i64()
  %7 = call ptr @malloc(i64 %6)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %8 = phi ptr [ null, %_llgo_0 ], [ %7, %_llgo_2 ]
  %9 = call ptr @llvm.coro.begin(token %3, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_11, %_llgo_10
  %10 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_5:                                          ; preds = %_llgo_15, %_llgo_14, %_llgo_11, %_llgo_10
  %11 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %11)
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_16, %_llgo_5
  %13 = call ptr @llvm.coro.free(token %3, ptr %9)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_8
  %14 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %5)
  br i1 %14, label %_llgo_14, label %_llgo_15

_llgo_8:                                          ; preds = %_llgo_13, %_llgo_12, %_llgo_1
  %15 = phi i1 [ true, %_llgo_1 ], [ false, %_llgo_10 ], [ false, %_llgo_11 ]
  %16 = call i1 @llvm.coro.done(ptr %5)
  br i1 %16, label %_llgo_7, label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  br i1 %15, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %17 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %18 = getelementptr inbounds { ptr, ptr }, ptr %17, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %18, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %5)
  %19 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %19, label %_llgo_4 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9
  %20 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %21 = getelementptr inbounds { ptr, ptr }, ptr %20, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %21, ptr %9)
  %22 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %22, label %_llgo_4 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_5
  ]

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_8

_llgo_13:                                         ; preds = %_llgo_11
  br label %_llgo_8

_llgo_14:                                         ; preds = %_llgo_7
  %23 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %23)
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_7
  %24 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %25 = getelementptr inbounds { ptr, ptr }, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %26, i32 0, i32 0
  %28 = load i64, ptr %27, align 4
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %26, i32 0, i32 1
  %30 = load i64, ptr %29, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %28)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %30)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_16:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/cororet.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/cororet.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/cororet.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/cororet.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 19 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/cl/_testrt/cororet.caller"(i64 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 20 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.caller$coro"(i64 20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 18 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/cl/_testrt/cororet.callerMulti"(i64 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 19 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.callerMulti$coro"(i64 20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 19 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/cl/_testrt/cororet.callerStruct"(i64 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 20 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.callerStruct$coro"(i64 20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 23 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/cl/_testrt/cororet.callerStructPtr"(i64 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.callerStructPtr$coro"(i64 20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/cl/_testrt/cororet.callerStructMulti"(i64 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 26 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.callerStructMulti$coro"(i64 20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/cororet.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 19 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.caller$coro"(i64 10)
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

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_92, %_llgo_91, %_llgo_83, %_llgo_82, %_llgo_74, %_llgo_73, %_llgo_65, %_llgo_64, %_llgo_56, %_llgo_55, %_llgo_47, %_llgo_46, %_llgo_38, %_llgo_37, %_llgo_29, %_llgo_28, %_llgo_20, %_llgo_19, %_llgo_11, %_llgo_10
  %9 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_5:                                          ; preds = %_llgo_96, %_llgo_95, %_llgo_92, %_llgo_91, %_llgo_86, %_llgo_83, %_llgo_82, %_llgo_77, %_llgo_74, %_llgo_73, %_llgo_68, %_llgo_65, %_llgo_64, %_llgo_59, %_llgo_56, %_llgo_55, %_llgo_50, %_llgo_47, %_llgo_46, %_llgo_41, %_llgo_38, %_llgo_37, %_llgo_32, %_llgo_29, %_llgo_28, %_llgo_23, %_llgo_20, %_llgo_19, %_llgo_14, %_llgo_11, %_llgo_10
  %10 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %10)
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_97
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_97, %_llgo_5
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 20 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %23 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.caller$coro"(i64 20)
  br label %_llgo_17

_llgo_16:                                         ; preds = %_llgo_17
  %24 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %23)
  br i1 %24, label %_llgo_23, label %_llgo_24

_llgo_17:                                         ; preds = %_llgo_22, %_llgo_21, %_llgo_15
  %25 = phi i1 [ true, %_llgo_15 ], [ false, %_llgo_19 ], [ false, %_llgo_20 ]
  %26 = call i1 @llvm.coro.done(ptr %23)
  br i1 %26, label %_llgo_16, label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17
  br i1 %25, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %27 = call ptr @llvm.coro.promise(ptr %23, i32 8, i1 false)
  %28 = getelementptr inbounds { ptr }, ptr %27, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %28, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %23)
  %29 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %29, label %_llgo_4 [
    i8 0, label %_llgo_21
    i8 1, label %_llgo_5
  ]

_llgo_20:                                         ; preds = %_llgo_18
  %30 = call ptr @llvm.coro.promise(ptr %23, i32 8, i1 false)
  %31 = getelementptr inbounds { ptr }, ptr %30, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %31, ptr %8)
  %32 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %32, label %_llgo_4 [
    i8 0, label %_llgo_22
    i8 1, label %_llgo_5
  ]

_llgo_21:                                         ; preds = %_llgo_19
  br label %_llgo_17

_llgo_22:                                         ; preds = %_llgo_20
  br label %_llgo_17

_llgo_23:                                         ; preds = %_llgo_16
  %33 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %33)
  br label %_llgo_5

_llgo_24:                                         ; preds = %_llgo_16
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 18 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %34 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.callerMulti$coro"(i64 10)
  br label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_26
  %35 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %34)
  br i1 %35, label %_llgo_32, label %_llgo_33

_llgo_26:                                         ; preds = %_llgo_31, %_llgo_30, %_llgo_24
  %36 = phi i1 [ true, %_llgo_24 ], [ false, %_llgo_28 ], [ false, %_llgo_29 ]
  %37 = call i1 @llvm.coro.done(ptr %34)
  br i1 %37, label %_llgo_25, label %_llgo_27

_llgo_27:                                         ; preds = %_llgo_26
  br i1 %36, label %_llgo_28, label %_llgo_29

_llgo_28:                                         ; preds = %_llgo_27
  %38 = call ptr @llvm.coro.promise(ptr %34, i32 8, i1 false)
  %39 = getelementptr inbounds { ptr }, ptr %38, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %39, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %34)
  %40 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %40, label %_llgo_4 [
    i8 0, label %_llgo_30
    i8 1, label %_llgo_5
  ]

_llgo_29:                                         ; preds = %_llgo_27
  %41 = call ptr @llvm.coro.promise(ptr %34, i32 8, i1 false)
  %42 = getelementptr inbounds { ptr }, ptr %41, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %42, ptr %8)
  %43 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %43, label %_llgo_4 [
    i8 0, label %_llgo_31
    i8 1, label %_llgo_5
  ]

_llgo_30:                                         ; preds = %_llgo_28
  br label %_llgo_26

_llgo_31:                                         ; preds = %_llgo_29
  br label %_llgo_26

_llgo_32:                                         ; preds = %_llgo_25
  %44 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %44)
  br label %_llgo_5

_llgo_33:                                         ; preds = %_llgo_25
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 19 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %45 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.callerMulti$coro"(i64 20)
  br label %_llgo_35

_llgo_34:                                         ; preds = %_llgo_35
  %46 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %45)
  br i1 %46, label %_llgo_41, label %_llgo_42

_llgo_35:                                         ; preds = %_llgo_40, %_llgo_39, %_llgo_33
  %47 = phi i1 [ true, %_llgo_33 ], [ false, %_llgo_37 ], [ false, %_llgo_38 ]
  %48 = call i1 @llvm.coro.done(ptr %45)
  br i1 %48, label %_llgo_34, label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35
  br i1 %47, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %49 = call ptr @llvm.coro.promise(ptr %45, i32 8, i1 false)
  %50 = getelementptr inbounds { ptr }, ptr %49, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %50, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %45)
  %51 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %51, label %_llgo_4 [
    i8 0, label %_llgo_39
    i8 1, label %_llgo_5
  ]

_llgo_38:                                         ; preds = %_llgo_36
  %52 = call ptr @llvm.coro.promise(ptr %45, i32 8, i1 false)
  %53 = getelementptr inbounds { ptr }, ptr %52, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %53, ptr %8)
  %54 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %54, label %_llgo_4 [
    i8 0, label %_llgo_40
    i8 1, label %_llgo_5
  ]

_llgo_39:                                         ; preds = %_llgo_37
  br label %_llgo_35

_llgo_40:                                         ; preds = %_llgo_38
  br label %_llgo_35

_llgo_41:                                         ; preds = %_llgo_34
  %55 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %45)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %45)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %55)
  br label %_llgo_5

_llgo_42:                                         ; preds = %_llgo_34
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 19 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %56 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.callerStruct$coro"(i64 10)
  br label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_44
  %57 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %56)
  br i1 %57, label %_llgo_50, label %_llgo_51

_llgo_44:                                         ; preds = %_llgo_49, %_llgo_48, %_llgo_42
  %58 = phi i1 [ true, %_llgo_42 ], [ false, %_llgo_46 ], [ false, %_llgo_47 ]
  %59 = call i1 @llvm.coro.done(ptr %56)
  br i1 %59, label %_llgo_43, label %_llgo_45

_llgo_45:                                         ; preds = %_llgo_44
  br i1 %58, label %_llgo_46, label %_llgo_47

_llgo_46:                                         ; preds = %_llgo_45
  %60 = call ptr @llvm.coro.promise(ptr %56, i32 8, i1 false)
  %61 = getelementptr inbounds { ptr }, ptr %60, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %61, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %56)
  %62 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %62, label %_llgo_4 [
    i8 0, label %_llgo_48
    i8 1, label %_llgo_5
  ]

_llgo_47:                                         ; preds = %_llgo_45
  %63 = call ptr @llvm.coro.promise(ptr %56, i32 8, i1 false)
  %64 = getelementptr inbounds { ptr }, ptr %63, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %64, ptr %8)
  %65 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %65, label %_llgo_4 [
    i8 0, label %_llgo_49
    i8 1, label %_llgo_5
  ]

_llgo_48:                                         ; preds = %_llgo_46
  br label %_llgo_44

_llgo_49:                                         ; preds = %_llgo_47
  br label %_llgo_44

_llgo_50:                                         ; preds = %_llgo_43
  %66 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %56)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %56)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %66)
  br label %_llgo_5

_llgo_51:                                         ; preds = %_llgo_43
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 20 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %67 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.callerStruct$coro"(i64 20)
  br label %_llgo_53

_llgo_52:                                         ; preds = %_llgo_53
  %68 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %67)
  br i1 %68, label %_llgo_59, label %_llgo_60

_llgo_53:                                         ; preds = %_llgo_58, %_llgo_57, %_llgo_51
  %69 = phi i1 [ true, %_llgo_51 ], [ false, %_llgo_55 ], [ false, %_llgo_56 ]
  %70 = call i1 @llvm.coro.done(ptr %67)
  br i1 %70, label %_llgo_52, label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53
  br i1 %69, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  %71 = call ptr @llvm.coro.promise(ptr %67, i32 8, i1 false)
  %72 = getelementptr inbounds { ptr }, ptr %71, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %72, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %67)
  %73 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %73, label %_llgo_4 [
    i8 0, label %_llgo_57
    i8 1, label %_llgo_5
  ]

_llgo_56:                                         ; preds = %_llgo_54
  %74 = call ptr @llvm.coro.promise(ptr %67, i32 8, i1 false)
  %75 = getelementptr inbounds { ptr }, ptr %74, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %75, ptr %8)
  %76 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %76, label %_llgo_4 [
    i8 0, label %_llgo_58
    i8 1, label %_llgo_5
  ]

_llgo_57:                                         ; preds = %_llgo_55
  br label %_llgo_53

_llgo_58:                                         ; preds = %_llgo_56
  br label %_llgo_53

_llgo_59:                                         ; preds = %_llgo_52
  %77 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %67)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %67)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %77)
  br label %_llgo_5

_llgo_60:                                         ; preds = %_llgo_52
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 23 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %78 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.callerStructPtr$coro"(i64 10)
  br label %_llgo_62

_llgo_61:                                         ; preds = %_llgo_62
  %79 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %78)
  br i1 %79, label %_llgo_68, label %_llgo_69

_llgo_62:                                         ; preds = %_llgo_67, %_llgo_66, %_llgo_60
  %80 = phi i1 [ true, %_llgo_60 ], [ false, %_llgo_64 ], [ false, %_llgo_65 ]
  %81 = call i1 @llvm.coro.done(ptr %78)
  br i1 %81, label %_llgo_61, label %_llgo_63

_llgo_63:                                         ; preds = %_llgo_62
  br i1 %80, label %_llgo_64, label %_llgo_65

_llgo_64:                                         ; preds = %_llgo_63
  %82 = call ptr @llvm.coro.promise(ptr %78, i32 8, i1 false)
  %83 = getelementptr inbounds { ptr }, ptr %82, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %83, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %78)
  %84 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %84, label %_llgo_4 [
    i8 0, label %_llgo_66
    i8 1, label %_llgo_5
  ]

_llgo_65:                                         ; preds = %_llgo_63
  %85 = call ptr @llvm.coro.promise(ptr %78, i32 8, i1 false)
  %86 = getelementptr inbounds { ptr }, ptr %85, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %86, ptr %8)
  %87 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %87, label %_llgo_4 [
    i8 0, label %_llgo_67
    i8 1, label %_llgo_5
  ]

_llgo_66:                                         ; preds = %_llgo_64
  br label %_llgo_62

_llgo_67:                                         ; preds = %_llgo_65
  br label %_llgo_62

_llgo_68:                                         ; preds = %_llgo_61
  %88 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %78)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %78)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %88)
  br label %_llgo_5

_llgo_69:                                         ; preds = %_llgo_61
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %89 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.callerStructPtr$coro"(i64 20)
  br label %_llgo_71

_llgo_70:                                         ; preds = %_llgo_71
  %90 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %89)
  br i1 %90, label %_llgo_77, label %_llgo_78

_llgo_71:                                         ; preds = %_llgo_76, %_llgo_75, %_llgo_69
  %91 = phi i1 [ true, %_llgo_69 ], [ false, %_llgo_73 ], [ false, %_llgo_74 ]
  %92 = call i1 @llvm.coro.done(ptr %89)
  br i1 %92, label %_llgo_70, label %_llgo_72

_llgo_72:                                         ; preds = %_llgo_71
  br i1 %91, label %_llgo_73, label %_llgo_74

_llgo_73:                                         ; preds = %_llgo_72
  %93 = call ptr @llvm.coro.promise(ptr %89, i32 8, i1 false)
  %94 = getelementptr inbounds { ptr }, ptr %93, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %94, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %89)
  %95 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %95, label %_llgo_4 [
    i8 0, label %_llgo_75
    i8 1, label %_llgo_5
  ]

_llgo_74:                                         ; preds = %_llgo_72
  %96 = call ptr @llvm.coro.promise(ptr %89, i32 8, i1 false)
  %97 = getelementptr inbounds { ptr }, ptr %96, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %97, ptr %8)
  %98 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %98, label %_llgo_4 [
    i8 0, label %_llgo_76
    i8 1, label %_llgo_5
  ]

_llgo_75:                                         ; preds = %_llgo_73
  br label %_llgo_71

_llgo_76:                                         ; preds = %_llgo_74
  br label %_llgo_71

_llgo_77:                                         ; preds = %_llgo_70
  %99 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %89)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %89)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %99)
  br label %_llgo_5

_llgo_78:                                         ; preds = %_llgo_70
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %100 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.callerStructMulti$coro"(i64 10)
  br label %_llgo_80

_llgo_79:                                         ; preds = %_llgo_80
  %101 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %100)
  br i1 %101, label %_llgo_86, label %_llgo_87

_llgo_80:                                         ; preds = %_llgo_85, %_llgo_84, %_llgo_78
  %102 = phi i1 [ true, %_llgo_78 ], [ false, %_llgo_82 ], [ false, %_llgo_83 ]
  %103 = call i1 @llvm.coro.done(ptr %100)
  br i1 %103, label %_llgo_79, label %_llgo_81

_llgo_81:                                         ; preds = %_llgo_80
  br i1 %102, label %_llgo_82, label %_llgo_83

_llgo_82:                                         ; preds = %_llgo_81
  %104 = call ptr @llvm.coro.promise(ptr %100, i32 8, i1 false)
  %105 = getelementptr inbounds { ptr }, ptr %104, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %105, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %100)
  %106 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %106, label %_llgo_4 [
    i8 0, label %_llgo_84
    i8 1, label %_llgo_5
  ]

_llgo_83:                                         ; preds = %_llgo_81
  %107 = call ptr @llvm.coro.promise(ptr %100, i32 8, i1 false)
  %108 = getelementptr inbounds { ptr }, ptr %107, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %108, ptr %8)
  %109 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %109, label %_llgo_4 [
    i8 0, label %_llgo_85
    i8 1, label %_llgo_5
  ]

_llgo_84:                                         ; preds = %_llgo_82
  br label %_llgo_80

_llgo_85:                                         ; preds = %_llgo_83
  br label %_llgo_80

_llgo_86:                                         ; preds = %_llgo_79
  %110 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %110)
  br label %_llgo_5

_llgo_87:                                         ; preds = %_llgo_79
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 26 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %111 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.callerStructMulti$coro"(i64 20)
  br label %_llgo_89

_llgo_88:                                         ; preds = %_llgo_89
  %112 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %111)
  br i1 %112, label %_llgo_95, label %_llgo_96

_llgo_89:                                         ; preds = %_llgo_94, %_llgo_93, %_llgo_87
  %113 = phi i1 [ true, %_llgo_87 ], [ false, %_llgo_91 ], [ false, %_llgo_92 ]
  %114 = call i1 @llvm.coro.done(ptr %111)
  br i1 %114, label %_llgo_88, label %_llgo_90

_llgo_90:                                         ; preds = %_llgo_89
  br i1 %113, label %_llgo_91, label %_llgo_92

_llgo_91:                                         ; preds = %_llgo_90
  %115 = call ptr @llvm.coro.promise(ptr %111, i32 8, i1 false)
  %116 = getelementptr inbounds { ptr }, ptr %115, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %116, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %111)
  %117 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %117, label %_llgo_4 [
    i8 0, label %_llgo_93
    i8 1, label %_llgo_5
  ]

_llgo_92:                                         ; preds = %_llgo_90
  %118 = call ptr @llvm.coro.promise(ptr %111, i32 8, i1 false)
  %119 = getelementptr inbounds { ptr }, ptr %118, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %119, ptr %8)
  %120 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %120, label %_llgo_4 [
    i8 0, label %_llgo_94
    i8 1, label %_llgo_5
  ]

_llgo_93:                                         ; preds = %_llgo_91
  br label %_llgo_89

_llgo_94:                                         ; preds = %_llgo_92
  br label %_llgo_89

_llgo_95:                                         ; preds = %_llgo_88
  %121 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %111)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %111)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %121)
  br label %_llgo_5

_llgo_96:                                         ; preds = %_llgo_88
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_97:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define { i64, i64, i64 } @"github.com/goplus/llgo/cl/_testrt/cororet.multi"(i64 %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = mul i64 %0, 2
  %2 = mul i64 %0, 3
  %3 = mul i64 %0, 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 16 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = insertvalue { i64, i64, i64 } undef, i64 %1, 0
  %5 = insertvalue { i64, i64, i64 } %4, i64 %2, 1
  %6 = insertvalue { i64, i64, i64 } %5, i64 %3, 2
  ret { i64, i64, i64 } %6
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/cororet.multi$coro"(i64 %0) #0 {
_llgo_0:
  %1 = alloca { ptr, { i64, i64, i64 } }, align 8
  %2 = getelementptr inbounds { ptr, { i64, i64, i64 } }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %9)
  %5 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %5, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_2:                                          ; preds = %_llgo_0
  %6 = call i64 @llvm.coro.size.i64()
  %7 = call ptr @malloc(i64 %6)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %8 = phi ptr [ null, %_llgo_0 ], [ %7, %_llgo_2 ]
  %9 = call ptr @llvm.coro.begin(token %3, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1
  %10 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_1
  %11 = getelementptr inbounds { ptr, { i64, i64, i64 } }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %11)
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %13 = call ptr @llvm.coro.free(token %3, ptr %9)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %14 = mul i64 %0, 2
  %15 = mul i64 %0, 3
  %16 = mul i64 %0, 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 16 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %17 = getelementptr inbounds { ptr, { i64, i64, i64 } }, ptr %1, i32 0, i32 1
  %18 = getelementptr inbounds { i64, i64, i64 }, ptr %17, i32 0, i32 0
  store i64 %14, ptr %18, align 4
  %19 = getelementptr inbounds { ptr, { i64, i64, i64 } }, ptr %1, i32 0, i32 1
  %20 = getelementptr inbounds { i64, i64, i64 }, ptr %19, i32 0, i32 1
  store i64 %15, ptr %20, align 4
  %21 = getelementptr inbounds { ptr, { i64, i64, i64 } }, ptr %1, i32 0, i32 1
  %22 = getelementptr inbounds { i64, i64, i64 }, ptr %21, i32 0, i32 2
  store i64 %16, ptr %22, align 4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/cororet.simple"(i64 %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 11 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = mul i64 %0, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 17 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 %1
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/cororet.simple$coro"(i64 %0) #0 {
_llgo_0:
  %1 = alloca { ptr, i64 }, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 11 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %9)
  %5 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %5, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_2:                                          ; preds = %_llgo_0
  %6 = call i64 @llvm.coro.size.i64()
  %7 = call ptr @malloc(i64 %6)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %8 = phi ptr [ null, %_llgo_0 ], [ %7, %_llgo_2 ]
  %9 = call ptr @llvm.coro.begin(token %3, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1
  %10 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_1
  %11 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %11)
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %13 = call ptr @llvm.coro.free(token %3, ptr %9)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %14 = mul i64 %0, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 17 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %15 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 1
  store i64 %14, ptr %15, align 4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr } @"github.com/goplus/llgo/cl/_testrt/cororet.structMultiRet"(i64 %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 19 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = alloca %"github.com/goplus/llgo/cl/_testrt/cororet.Point", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %1, i32 0, i32 0
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %1, i32 0, i32 1
  %4 = mul i64 %0, 2
  store i64 %0, ptr %2, align 4
  store i64 %4, ptr %3, align 4
  %5 = mul i64 %0, 3
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %6, i32 0, i32 0
  %8 = mul i64 %0, 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %6, i32 0, i32 1
  %10 = mul i64 %0, 5
  store i64 %8, ptr %7, align 4
  store i64 %10, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %1, i32 0, i32 0
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %1, i32 0, i32 1
  %14 = load i64, ptr %13, align 4
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %6, i32 0, i32 0
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %6, i32 0, i32 1
  %18 = load i64, ptr %17, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %19 = load %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %1, align 4
  %20 = insertvalue { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr } undef, %"github.com/goplus/llgo/cl/_testrt/cororet.Point" %19, 0
  %21 = insertvalue { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr } %20, i64 %5, 1
  %22 = insertvalue { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr } %21, ptr %6, 2
  ret { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr } %22
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/cororet.structMultiRet$coro"(i64 %0) #0 {
_llgo_0:
  %1 = alloca { ptr, { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr } }, align 8
  %2 = getelementptr inbounds { ptr, { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr } }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 19 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %9)
  %5 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %5, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_2:                                          ; preds = %_llgo_0
  %6 = call i64 @llvm.coro.size.i64()
  %7 = call ptr @malloc(i64 %6)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %8 = phi ptr [ null, %_llgo_0 ], [ %7, %_llgo_2 ]
  %9 = call ptr @llvm.coro.begin(token %3, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1
  %10 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_1
  %11 = getelementptr inbounds { ptr, { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr } }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %11)
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %13 = call ptr @llvm.coro.free(token %3, ptr %9)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %14 = alloca %"github.com/goplus/llgo/cl/_testrt/cororet.Point", align 8
  call void @llvm.memset(ptr %14, i8 0, i64 16, i1 false)
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %14, i32 0, i32 0
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %14, i32 0, i32 1
  %17 = mul i64 %0, 2
  store i64 %0, ptr %15, align 4
  store i64 %17, ptr %16, align 4
  %18 = mul i64 %0, 3
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %19, i32 0, i32 0
  %21 = mul i64 %0, 4
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %19, i32 0, i32 1
  %23 = mul i64 %0, 5
  store i64 %21, ptr %20, align 4
  store i64 %23, ptr %22, align 4
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %14, i32 0, i32 0
  %25 = load i64, ptr %24, align 4
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %14, i32 0, i32 1
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %19, i32 0, i32 0
  %29 = load i64, ptr %28, align 4
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %19, i32 0, i32 1
  %31 = load i64, ptr %30, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %32 = load %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %14, align 4
  %33 = getelementptr inbounds { ptr, { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr } }, ptr %1, i32 0, i32 1
  %34 = getelementptr inbounds { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr }, ptr %33, i32 0, i32 0
  store %"github.com/goplus/llgo/cl/_testrt/cororet.Point" %32, ptr %34, align 4
  %35 = getelementptr inbounds { ptr, { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr } }, ptr %1, i32 0, i32 1
  %36 = getelementptr inbounds { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr }, ptr %35, i32 0, i32 1
  store i64 %18, ptr %36, align 4
  %37 = getelementptr inbounds { ptr, { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr } }, ptr %1, i32 0, i32 1
  %38 = getelementptr inbounds { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr }, ptr %37, i32 0, i32 2
  store ptr %19, ptr %38, align 8
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define ptr @"github.com/goplus/llgo/cl/_testrt/cororet.structPtrRet"(i64 %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 17 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %1, i32 0, i32 0
  %3 = mul i64 %0, 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %1, i32 0, i32 1
  %5 = mul i64 %0, 5
  store i64 %3, ptr %2, align 4
  store i64 %5, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %1, i32 0, i32 0
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %1, i32 0, i32 1
  %9 = load i64, ptr %8, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 23 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret ptr %1
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/cororet.structPtrRet$coro"(i64 %0) #0 {
_llgo_0:
  %1 = alloca { ptr, ptr }, align 8
  %2 = getelementptr inbounds { ptr, ptr }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 17 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %9)
  %5 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %5, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_2:                                          ; preds = %_llgo_0
  %6 = call i64 @llvm.coro.size.i64()
  %7 = call ptr @malloc(i64 %6)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %8 = phi ptr [ null, %_llgo_0 ], [ %7, %_llgo_2 ]
  %9 = call ptr @llvm.coro.begin(token %3, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1
  %10 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_1
  %11 = getelementptr inbounds { ptr, ptr }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %11)
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %13 = call ptr @llvm.coro.free(token %3, ptr %9)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %14, i32 0, i32 0
  %16 = mul i64 %0, 4
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %14, i32 0, i32 1
  %18 = mul i64 %0, 5
  store i64 %16, ptr %15, align 4
  store i64 %18, ptr %17, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %14, i32 0, i32 0
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %14, i32 0, i32 1
  %22 = load i64, ptr %21, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 23 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %23 = getelementptr inbounds { ptr, ptr }, ptr %1, i32 0, i32 1
  store ptr %14, ptr %23, align 8
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define %"github.com/goplus/llgo/cl/_testrt/cororet.Point" @"github.com/goplus/llgo/cl/_testrt/cororet.structRet"(i64 %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 14 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = alloca %"github.com/goplus/llgo/cl/_testrt/cororet.Point", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %1, i32 0, i32 0
  %3 = mul i64 %0, 2
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %1, i32 0, i32 1
  %5 = mul i64 %0, 3
  store i64 %3, ptr %2, align 4
  store i64 %5, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %1, i32 0, i32 0
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %1, i32 0, i32 1
  %9 = load i64, ptr %8, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 20 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %10 = load %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %1, align 4
  ret %"github.com/goplus/llgo/cl/_testrt/cororet.Point" %10
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/cororet.structRet$coro"(i64 %0) #0 {
_llgo_0:
  %1 = alloca { ptr, %"github.com/goplus/llgo/cl/_testrt/cororet.Point" }, align 8
  %2 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/cl/_testrt/cororet.Point" }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 14 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %9)
  %5 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %5, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_2:                                          ; preds = %_llgo_0
  %6 = call i64 @llvm.coro.size.i64()
  %7 = call ptr @malloc(i64 %6)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %8 = phi ptr [ null, %_llgo_0 ], [ %7, %_llgo_2 ]
  %9 = call ptr @llvm.coro.begin(token %3, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1
  %10 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_1
  %11 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/cl/_testrt/cororet.Point" }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %11)
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %13 = call ptr @llvm.coro.free(token %3, ptr %9)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %14 = alloca %"github.com/goplus/llgo/cl/_testrt/cororet.Point", align 8
  call void @llvm.memset(ptr %14, i8 0, i64 16, i1 false)
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %14, i32 0, i32 0
  %16 = mul i64 %0, 2
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %14, i32 0, i32 1
  %18 = mul i64 %0, 3
  store i64 %16, ptr %15, align 4
  store i64 %18, ptr %17, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %14, i32 0, i32 0
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %14, i32 0, i32 1
  %22 = load i64, ptr %21, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 20 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %23 = load %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %14, align 4
  %24 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/cl/_testrt/cororet.Point" }, ptr %1, i32 0, i32 1
  store %"github.com/goplus/llgo/cl/_testrt/cororet.Point" %23, ptr %24, align 4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

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

; Function Attrs: nounwind memory(argmem: readwrite)
declare i1 @llvm.coro.done(ptr nocapture readonly) #4

; Function Attrs: nounwind memory(none)
declare ptr @llvm.coro.promise(ptr nocapture, i32, i1) #3

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr)

; Function Attrs: nounwind
declare i8 @llvm.coro.suspend(token, i1) #2

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token) #2

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr)

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #5

declare void @free(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

attributes #0 = { presplitcoroutine }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nounwind }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nounwind memory(argmem: readwrite) }
attributes #5 = { nounwind memory(argmem: read) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
