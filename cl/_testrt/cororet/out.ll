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

_llgo_1:                                          ; preds = %_llgo_7
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
  %10 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %10, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_8, %_llgo_3
  %11 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_5:                                          ; preds = %_llgo_11, %_llgo_10, %_llgo_8, %_llgo_3
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_12, %_llgo_5
  %13 = call ptr @llvm.coro.free(token %3, ptr %9)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_1
  %14 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %15 = getelementptr inbounds { ptr, i64 }, ptr %14, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %15, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %5)
  %16 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %16, label %_llgo_4 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_9:                                          ; preds = %_llgo_8
  %17 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %5)
  br i1 %17, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %18 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %18)
  br label %_llgo_5

_llgo_11:                                         ; preds = %_llgo_9
  %19 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %20 = getelementptr inbounds { ptr, i64 }, ptr %19, i32 0, i32 1
  %21 = load i64, ptr %20, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 16 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_12:                                         ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_7
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
  %10 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %10, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_8, %_llgo_3
  %11 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_5:                                          ; preds = %_llgo_11, %_llgo_10, %_llgo_8, %_llgo_3
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_12, %_llgo_5
  %13 = call ptr @llvm.coro.free(token %3, ptr %9)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_1
  %14 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %15 = getelementptr inbounds { ptr, { i64, i64, i64 } }, ptr %14, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %15, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %5)
  %16 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %16, label %_llgo_4 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_9:                                          ; preds = %_llgo_8
  %17 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %5)
  br i1 %17, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %18 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %18)
  br label %_llgo_5

_llgo_11:                                         ; preds = %_llgo_9
  %19 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %20 = getelementptr inbounds { ptr, { i64, i64, i64 } }, ptr %19, i32 0, i32 1
  %21 = load { i64, i64, i64 }, ptr %20, align 4
  %22 = extractvalue { i64, i64, i64 } %21, 0
  %23 = extractvalue { i64, i64, i64 } %21, 1
  %24 = extractvalue { i64, i64, i64 } %21, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 22 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_12:                                         ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_7
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
  %11 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_8, %_llgo_3
  %12 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_5:                                          ; preds = %_llgo_11, %_llgo_10, %_llgo_8, %_llgo_3
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_4 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_12, %_llgo_5
  %14 = call ptr @llvm.coro.free(token %3, ptr %10)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_1
  %15 = call ptr @llvm.coro.promise(ptr %6, i32 8, i1 false)
  %16 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/cl/_testrt/cororet.Point" }, ptr %15, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %16, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %6)
  %17 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %17, label %_llgo_4 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_9:                                          ; preds = %_llgo_8
  %18 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %6)
  br i1 %18, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %19 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %19)
  br label %_llgo_5

_llgo_11:                                         ; preds = %_llgo_9
  %20 = call ptr @llvm.coro.promise(ptr %6, i32 8, i1 false)
  %21 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/cl/_testrt/cororet.Point" }, ptr %20, i32 0, i32 1
  %22 = load %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %21, align 4
  store %"github.com/goplus/llgo/cl/_testrt/cororet.Point" %22, ptr %5, align 4
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %5, i32 0, i32 0
  %24 = load i64, ptr %23, align 4
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %5, i32 0, i32 1
  %26 = load i64, ptr %25, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 22 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_12:                                         ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_7
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
  %11 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_8, %_llgo_3
  %12 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_5:                                          ; preds = %_llgo_11, %_llgo_10, %_llgo_8, %_llgo_3
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_4 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_12, %_llgo_5
  %14 = call ptr @llvm.coro.free(token %3, ptr %10)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_1
  %15 = call ptr @llvm.coro.promise(ptr %6, i32 8, i1 false)
  %16 = getelementptr inbounds { ptr, { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr } }, ptr %15, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %16, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %6)
  %17 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %17, label %_llgo_4 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_9:                                          ; preds = %_llgo_8
  %18 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %6)
  br i1 %18, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %19 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %19)
  br label %_llgo_5

_llgo_11:                                         ; preds = %_llgo_9
  %20 = call ptr @llvm.coro.promise(ptr %6, i32 8, i1 false)
  %21 = getelementptr inbounds { ptr, { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr } }, ptr %20, i32 0, i32 1
  %22 = load { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr }, ptr %21, align 8
  %23 = extractvalue { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr } %22, 0
  store %"github.com/goplus/llgo/cl/_testrt/cororet.Point" %23, ptr %5, align 4
  %24 = extractvalue { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr } %22, 1
  %25 = extractvalue { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr } %22, 2
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %5, i32 0, i32 0
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %5, i32 0, i32 1
  %29 = load i64, ptr %28, align 4
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %25, i32 0, i32 0
  %31 = load i64, ptr %30, align 4
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %25, i32 0, i32 1
  %33 = load i64, ptr %32, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %33)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_12:                                         ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_7
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
  %10 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %10, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_8, %_llgo_3
  %11 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_5:                                          ; preds = %_llgo_11, %_llgo_10, %_llgo_8, %_llgo_3
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_12, %_llgo_5
  %13 = call ptr @llvm.coro.free(token %3, ptr %9)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_1
  %14 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %15 = getelementptr inbounds { ptr, ptr }, ptr %14, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %15, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %5)
  %16 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %16, label %_llgo_4 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_9:                                          ; preds = %_llgo_8
  %17 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %5)
  br i1 %17, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %18 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %18)
  br label %_llgo_5

_llgo_11:                                         ; preds = %_llgo_9
  %19 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %20 = getelementptr inbounds { ptr, ptr }, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %21, i32 0, i32 0
  %23 = load i64, ptr %22, align 4
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %21, i32 0, i32 1
  %25 = load i64, ptr %24, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_12:                                         ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_7
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
  %9 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %9, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_44, %_llgo_40, %_llgo_36, %_llgo_32, %_llgo_28, %_llgo_24, %_llgo_20, %_llgo_16, %_llgo_12, %_llgo_8, %_llgo_3
  %10 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_5:                                          ; preds = %_llgo_47, %_llgo_46, %_llgo_44, %_llgo_42, %_llgo_40, %_llgo_38, %_llgo_36, %_llgo_34, %_llgo_32, %_llgo_30, %_llgo_28, %_llgo_26, %_llgo_24, %_llgo_22, %_llgo_20, %_llgo_18, %_llgo_16, %_llgo_14, %_llgo_12, %_llgo_10, %_llgo_8, %_llgo_3
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_48
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_48, %_llgo_5
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 20 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %18 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.caller$coro"(i64 20)
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 18 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %24 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.callerMulti$coro"(i64 10)
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 19 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %30 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.callerMulti$coro"(i64 20)
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 19 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %36 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.callerStruct$coro"(i64 10)
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 20 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %42 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.callerStruct$coro"(i64 20)
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27
  %43 = call ptr @llvm.coro.promise(ptr %42, i32 8, i1 false)
  %44 = getelementptr inbounds { ptr }, ptr %43, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %44, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %42)
  %45 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %45, label %_llgo_4 [
    i8 0, label %_llgo_29
    i8 1, label %_llgo_5
  ]

_llgo_29:                                         ; preds = %_llgo_28
  %46 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %42)
  br i1 %46, label %_llgo_30, label %_llgo_31

_llgo_30:                                         ; preds = %_llgo_29
  %47 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %42)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %42)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %47)
  br label %_llgo_5

_llgo_31:                                         ; preds = %_llgo_29
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 23 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %48 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.callerStructPtr$coro"(i64 10)
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31
  %49 = call ptr @llvm.coro.promise(ptr %48, i32 8, i1 false)
  %50 = getelementptr inbounds { ptr }, ptr %49, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %50, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %48)
  %51 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %51, label %_llgo_4 [
    i8 0, label %_llgo_33
    i8 1, label %_llgo_5
  ]

_llgo_33:                                         ; preds = %_llgo_32
  %52 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %48)
  br i1 %52, label %_llgo_34, label %_llgo_35

_llgo_34:                                         ; preds = %_llgo_33
  %53 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %48)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %48)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %53)
  br label %_llgo_5

_llgo_35:                                         ; preds = %_llgo_33
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %54 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.callerStructPtr$coro"(i64 20)
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35
  %55 = call ptr @llvm.coro.promise(ptr %54, i32 8, i1 false)
  %56 = getelementptr inbounds { ptr }, ptr %55, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %56, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %54)
  %57 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %57, label %_llgo_4 [
    i8 0, label %_llgo_37
    i8 1, label %_llgo_5
  ]

_llgo_37:                                         ; preds = %_llgo_36
  %58 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %54)
  br i1 %58, label %_llgo_38, label %_llgo_39

_llgo_38:                                         ; preds = %_llgo_37
  %59 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %54)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %54)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %59)
  br label %_llgo_5

_llgo_39:                                         ; preds = %_llgo_37
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %60 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.callerStructMulti$coro"(i64 10)
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39
  %61 = call ptr @llvm.coro.promise(ptr %60, i32 8, i1 false)
  %62 = getelementptr inbounds { ptr }, ptr %61, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %62, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %60)
  %63 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %63, label %_llgo_4 [
    i8 0, label %_llgo_41
    i8 1, label %_llgo_5
  ]

_llgo_41:                                         ; preds = %_llgo_40
  %64 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %60)
  br i1 %64, label %_llgo_42, label %_llgo_43

_llgo_42:                                         ; preds = %_llgo_41
  %65 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %60)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %60)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %65)
  br label %_llgo_5

_llgo_43:                                         ; preds = %_llgo_41
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 26 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %66 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.callerStructMulti$coro"(i64 20)
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43
  %67 = call ptr @llvm.coro.promise(ptr %66, i32 8, i1 false)
  %68 = getelementptr inbounds { ptr }, ptr %67, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %68, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %66)
  %69 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %69, label %_llgo_4 [
    i8 0, label %_llgo_45
    i8 1, label %_llgo_5
  ]

_llgo_45:                                         ; preds = %_llgo_44
  %70 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %66)
  br i1 %70, label %_llgo_46, label %_llgo_47

_llgo_46:                                         ; preds = %_llgo_45
  %71 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %66)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %66)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %71)
  br label %_llgo_5

_llgo_47:                                         ; preds = %_llgo_45
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_48:                                         ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %9)
  %5 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %5, label %_llgo_4 [
    i8 0, label %_llgo_8
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
  %10 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %10, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1, %_llgo_3
  %11 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_5:                                          ; preds = %_llgo_8, %_llgo_1, %_llgo_3
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_9, %_llgo_5
  %13 = call ptr @llvm.coro.free(token %3, ptr %9)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_1
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

_llgo_9:                                          ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 11 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %9)
  %5 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %5, label %_llgo_4 [
    i8 0, label %_llgo_8
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
  %10 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %10, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1, %_llgo_3
  %11 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_5:                                          ; preds = %_llgo_8, %_llgo_1, %_llgo_3
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_9, %_llgo_5
  %13 = call ptr @llvm.coro.free(token %3, ptr %9)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_1
  %14 = mul i64 %0, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 17 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %15 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 1
  store i64 %14, ptr %15, align 4
  br label %_llgo_5

_llgo_9:                                          ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 19 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %9)
  %5 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %5, label %_llgo_4 [
    i8 0, label %_llgo_8
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
  %10 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %10, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1, %_llgo_3
  %11 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_5:                                          ; preds = %_llgo_8, %_llgo_1, %_llgo_3
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_9, %_llgo_5
  %13 = call ptr @llvm.coro.free(token %3, ptr %9)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_1
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

_llgo_9:                                          ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 17 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %9)
  %5 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %5, label %_llgo_4 [
    i8 0, label %_llgo_8
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
  %10 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %10, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1, %_llgo_3
  %11 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_5:                                          ; preds = %_llgo_8, %_llgo_1, %_llgo_3
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_9, %_llgo_5
  %13 = call ptr @llvm.coro.free(token %3, ptr %9)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_1
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

_llgo_9:                                          ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 14 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %9)
  %5 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %5, label %_llgo_4 [
    i8 0, label %_llgo_8
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
  %10 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %10, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1, %_llgo_3
  %11 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_5:                                          ; preds = %_llgo_8, %_llgo_1, %_llgo_3
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_9, %_llgo_5
  %13 = call ptr @llvm.coro.free(token %3, ptr %9)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_1
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

_llgo_9:                                          ; preds = %_llgo_5
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

; Function Attrs: nounwind
declare i8 @llvm.coro.suspend(token, i1) #2

; Function Attrs: nounwind memory(none)
declare ptr @llvm.coro.promise(ptr nocapture, i32, i1) #3

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token) #2

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #4

declare void @free(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

attributes #0 = { presplitcoroutine }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nounwind }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nounwind memory(argmem: read) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
