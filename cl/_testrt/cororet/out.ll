; ModuleID = 'github.com/goplus/llgo/cl/_testrt/cororet'
source_filename = "github.com/goplus/llgo/cl/_testrt/cororet"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
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
  %1 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %2 = call i1 @llvm.coro.alloc(token %1)
  br i1 %2, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 22 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.simple$coro"(i64 %0)
  br label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %4 = call i64 @llvm.coro.size.i64()
  %5 = call ptr @malloc(i64 %4)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %6 = phi ptr [ null, %_llgo_0 ], [ %5, %_llgo_2 ]
  %7 = call ptr @llvm.coro.begin(token %1, ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_11
  %8 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %8, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_14, %_llgo_4, %_llgo_10
  %9 = call ptr @llvm.coro.free(token %1, ptr %7)
  call void @free(ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_15
  %10 = call i1 @llvm.coro.end(ptr %7, i1 false, token none)
  ret ptr %7

_llgo_7:                                          ; preds = %_llgo_12, %_llgo_1
  %11 = call i1 @llvm.coro.done(ptr %3)
  br i1 %11, label %_llgo_11, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  call void @llvm.coro.resume(ptr %3)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  %12 = call i1 @llvm.coro.done(ptr %3)
  br i1 %12, label %_llgo_11, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  %13 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %13, label %_llgo_13 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9, %_llgo_7
  %14 = call ptr @llvm.coro.promise(ptr %3, i32 8, i1 false)
  %15 = load i64, ptr %14, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 16 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_4

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_7

_llgo_13:                                         ; preds = %_llgo_10
  ret ptr %7

_llgo_14:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_4
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
  %1 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %2 = call i1 @llvm.coro.alloc(token %1)
  br i1 %2, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 26 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.multi$coro"(i64 %0)
  br label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %4 = call i64 @llvm.coro.size.i64()
  %5 = call ptr @malloc(i64 %4)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %6 = phi ptr [ null, %_llgo_0 ], [ %5, %_llgo_2 ]
  %7 = call ptr @llvm.coro.begin(token %1, ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_11
  %8 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %8, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_14, %_llgo_4, %_llgo_10
  %9 = call ptr @llvm.coro.free(token %1, ptr %7)
  call void @free(ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_15
  %10 = call i1 @llvm.coro.end(ptr %7, i1 false, token none)
  ret ptr %7

_llgo_7:                                          ; preds = %_llgo_12, %_llgo_1
  %11 = call i1 @llvm.coro.done(ptr %3)
  br i1 %11, label %_llgo_11, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  call void @llvm.coro.resume(ptr %3)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  %12 = call i1 @llvm.coro.done(ptr %3)
  br i1 %12, label %_llgo_11, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  %13 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %13, label %_llgo_13 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9, %_llgo_7
  %14 = call ptr @llvm.coro.promise(ptr %3, i32 8, i1 false)
  %15 = load { i64, i64, i64 }, ptr %14, align 4
  %16 = extractvalue { i64, i64, i64 } %15, 0
  %17 = extractvalue { i64, i64, i64 } %15, 1
  %18 = extractvalue { i64, i64, i64 } %15, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 22 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_4

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_7

_llgo_13:                                         ; preds = %_llgo_10
  ret ptr %7

_llgo_14:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_4
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
  %1 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %2 = call i1 @llvm.coro.alloc(token %1)
  br i1 %2, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = alloca %"github.com/goplus/llgo/cl/_testrt/cororet.Point", align 8
  call void @llvm.memset(ptr %3, i8 0, i64 16, i1 false)
  %4 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.structRet$coro"(i64 %0)
  br label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call i64 @llvm.coro.size.i64()
  %6 = call ptr @malloc(i64 %5)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %7 = phi ptr [ null, %_llgo_0 ], [ %6, %_llgo_2 ]
  %8 = call ptr @llvm.coro.begin(token %1, ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_11
  %9 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %9, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_14, %_llgo_4, %_llgo_10
  %10 = call ptr @llvm.coro.free(token %1, ptr %8)
  call void @free(ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_15
  %11 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_7:                                          ; preds = %_llgo_12, %_llgo_1
  %12 = call i1 @llvm.coro.done(ptr %4)
  br i1 %12, label %_llgo_11, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  call void @llvm.coro.resume(ptr %4)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  %13 = call i1 @llvm.coro.done(ptr %4)
  br i1 %13, label %_llgo_11, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  %14 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %14, label %_llgo_13 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9, %_llgo_7
  %15 = call ptr @llvm.coro.promise(ptr %4, i32 8, i1 false)
  %16 = load %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %15, align 4
  store %"github.com/goplus/llgo/cl/_testrt/cororet.Point" %16, ptr %3, align 4
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %3, i32 0, i32 0
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %3, i32 0, i32 1
  %20 = load i64, ptr %19, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 22 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_4

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_7

_llgo_13:                                         ; preds = %_llgo_10
  ret ptr %8

_llgo_14:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_4
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
  %1 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %2 = call i1 @llvm.coro.alloc(token %1)
  br i1 %2, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 41 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = alloca %"github.com/goplus/llgo/cl/_testrt/cororet.Point", align 8
  call void @llvm.memset(ptr %3, i8 0, i64 16, i1 false)
  %4 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.structMultiRet$coro"(i64 %0)
  br label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call i64 @llvm.coro.size.i64()
  %6 = call ptr @malloc(i64 %5)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %7 = phi ptr [ null, %_llgo_0 ], [ %6, %_llgo_2 ]
  %8 = call ptr @llvm.coro.begin(token %1, ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_11
  %9 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %9, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_14, %_llgo_4, %_llgo_10
  %10 = call ptr @llvm.coro.free(token %1, ptr %8)
  call void @free(ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_15
  %11 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_7:                                          ; preds = %_llgo_12, %_llgo_1
  %12 = call i1 @llvm.coro.done(ptr %4)
  br i1 %12, label %_llgo_11, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  call void @llvm.coro.resume(ptr %4)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  %13 = call i1 @llvm.coro.done(ptr %4)
  br i1 %13, label %_llgo_11, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  %14 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %14, label %_llgo_13 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9, %_llgo_7
  %15 = call ptr @llvm.coro.promise(ptr %4, i32 8, i1 false)
  %16 = load { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr }, ptr %15, align 8
  %17 = extractvalue { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr } %16, 0
  store %"github.com/goplus/llgo/cl/_testrt/cororet.Point" %17, ptr %3, align 4
  %18 = extractvalue { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr } %16, 1
  %19 = extractvalue { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr } %16, 2
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %3, i32 0, i32 0
  %21 = load i64, ptr %20, align 4
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %3, i32 0, i32 1
  %23 = load i64, ptr %22, align 4
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %19, i32 0, i32 0
  %25 = load i64, ptr %24, align 4
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %19, i32 0, i32 1
  %27 = load i64, ptr %26, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_4

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_7

_llgo_13:                                         ; preds = %_llgo_10
  ret ptr %8

_llgo_14:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_4
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
  %1 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %2 = call i1 @llvm.coro.alloc(token %1)
  br i1 %2, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 37 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.structPtrRet$coro"(i64 %0)
  br label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %4 = call i64 @llvm.coro.size.i64()
  %5 = call ptr @malloc(i64 %4)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %6 = phi ptr [ null, %_llgo_0 ], [ %5, %_llgo_2 ]
  %7 = call ptr @llvm.coro.begin(token %1, ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_11
  %8 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %8, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_14, %_llgo_4, %_llgo_10
  %9 = call ptr @llvm.coro.free(token %1, ptr %7)
  call void @free(ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_15
  %10 = call i1 @llvm.coro.end(ptr %7, i1 false, token none)
  ret ptr %7

_llgo_7:                                          ; preds = %_llgo_12, %_llgo_1
  %11 = call i1 @llvm.coro.done(ptr %3)
  br i1 %11, label %_llgo_11, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  call void @llvm.coro.resume(ptr %3)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  %12 = call i1 @llvm.coro.done(ptr %3)
  br i1 %12, label %_llgo_11, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  %13 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %13, label %_llgo_13 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9, %_llgo_7
  %14 = call ptr @llvm.coro.promise(ptr %3, i32 8, i1 false)
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %15, i32 0, i32 0
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %15, i32 0, i32 1
  %19 = load i64, ptr %18, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_4

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_7

_llgo_13:                                         ; preds = %_llgo_10
  ret ptr %7

_llgo_14:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_4
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
  %0 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %1 = call i1 @llvm.coro.alloc(token %0)
  br i1 %1, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 19 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.caller$coro"(i64 10)
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

_llgo_4:                                          ; preds = %_llgo_74
  %7 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %7, label %_llgo_78 [
    i8 0, label %_llgo_77
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_77, %_llgo_4, %_llgo_73, %_llgo_66, %_llgo_59, %_llgo_52, %_llgo_45, %_llgo_38, %_llgo_31, %_llgo_24, %_llgo_17, %_llgo_10
  %8 = call ptr @llvm.coro.free(token %0, ptr %6)
  call void @free(ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_78
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 20 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %13 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.caller$coro"(i64 20)
  br label %_llgo_14

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_7

_llgo_13:                                         ; preds = %_llgo_10
  ret ptr %6

_llgo_14:                                         ; preds = %_llgo_19, %_llgo_11
  %14 = call i1 @llvm.coro.done(ptr %13)
  br i1 %14, label %_llgo_18, label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14
  call void @llvm.coro.resume(ptr %13)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15
  %15 = call i1 @llvm.coro.done(ptr %13)
  br i1 %15, label %_llgo_18, label %_llgo_17

_llgo_17:                                         ; preds = %_llgo_16
  %16 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %16, label %_llgo_20 [
    i8 0, label %_llgo_19
    i8 1, label %_llgo_5
  ]

_llgo_18:                                         ; preds = %_llgo_16, %_llgo_14
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 18 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %17 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.callerMulti$coro"(i64 10)
  br label %_llgo_21

_llgo_19:                                         ; preds = %_llgo_17
  br label %_llgo_14

_llgo_20:                                         ; preds = %_llgo_17
  ret ptr %6

_llgo_21:                                         ; preds = %_llgo_26, %_llgo_18
  %18 = call i1 @llvm.coro.done(ptr %17)
  br i1 %18, label %_llgo_25, label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21
  call void @llvm.coro.resume(ptr %17)
  br label %_llgo_23

_llgo_23:                                         ; preds = %_llgo_22
  %19 = call i1 @llvm.coro.done(ptr %17)
  br i1 %19, label %_llgo_25, label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23
  %20 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %20, label %_llgo_27 [
    i8 0, label %_llgo_26
    i8 1, label %_llgo_5
  ]

_llgo_25:                                         ; preds = %_llgo_23, %_llgo_21
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 19 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %21 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.callerMulti$coro"(i64 20)
  br label %_llgo_28

_llgo_26:                                         ; preds = %_llgo_24
  br label %_llgo_21

_llgo_27:                                         ; preds = %_llgo_24
  ret ptr %6

_llgo_28:                                         ; preds = %_llgo_33, %_llgo_25
  %22 = call i1 @llvm.coro.done(ptr %21)
  br i1 %22, label %_llgo_32, label %_llgo_29

_llgo_29:                                         ; preds = %_llgo_28
  call void @llvm.coro.resume(ptr %21)
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29
  %23 = call i1 @llvm.coro.done(ptr %21)
  br i1 %23, label %_llgo_32, label %_llgo_31

_llgo_31:                                         ; preds = %_llgo_30
  %24 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %24, label %_llgo_34 [
    i8 0, label %_llgo_33
    i8 1, label %_llgo_5
  ]

_llgo_32:                                         ; preds = %_llgo_30, %_llgo_28
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 19 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %25 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.callerStruct$coro"(i64 10)
  br label %_llgo_35

_llgo_33:                                         ; preds = %_llgo_31
  br label %_llgo_28

_llgo_34:                                         ; preds = %_llgo_31
  ret ptr %6

_llgo_35:                                         ; preds = %_llgo_40, %_llgo_32
  %26 = call i1 @llvm.coro.done(ptr %25)
  br i1 %26, label %_llgo_39, label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35
  call void @llvm.coro.resume(ptr %25)
  br label %_llgo_37

_llgo_37:                                         ; preds = %_llgo_36
  %27 = call i1 @llvm.coro.done(ptr %25)
  br i1 %27, label %_llgo_39, label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37
  %28 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %28, label %_llgo_41 [
    i8 0, label %_llgo_40
    i8 1, label %_llgo_5
  ]

_llgo_39:                                         ; preds = %_llgo_37, %_llgo_35
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 20 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %29 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.callerStruct$coro"(i64 20)
  br label %_llgo_42

_llgo_40:                                         ; preds = %_llgo_38
  br label %_llgo_35

_llgo_41:                                         ; preds = %_llgo_38
  ret ptr %6

_llgo_42:                                         ; preds = %_llgo_47, %_llgo_39
  %30 = call i1 @llvm.coro.done(ptr %29)
  br i1 %30, label %_llgo_46, label %_llgo_43

_llgo_43:                                         ; preds = %_llgo_42
  call void @llvm.coro.resume(ptr %29)
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43
  %31 = call i1 @llvm.coro.done(ptr %29)
  br i1 %31, label %_llgo_46, label %_llgo_45

_llgo_45:                                         ; preds = %_llgo_44
  %32 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %32, label %_llgo_48 [
    i8 0, label %_llgo_47
    i8 1, label %_llgo_5
  ]

_llgo_46:                                         ; preds = %_llgo_44, %_llgo_42
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 23 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %33 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.callerStructPtr$coro"(i64 10)
  br label %_llgo_49

_llgo_47:                                         ; preds = %_llgo_45
  br label %_llgo_42

_llgo_48:                                         ; preds = %_llgo_45
  ret ptr %6

_llgo_49:                                         ; preds = %_llgo_54, %_llgo_46
  %34 = call i1 @llvm.coro.done(ptr %33)
  br i1 %34, label %_llgo_53, label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49
  call void @llvm.coro.resume(ptr %33)
  br label %_llgo_51

_llgo_51:                                         ; preds = %_llgo_50
  %35 = call i1 @llvm.coro.done(ptr %33)
  br i1 %35, label %_llgo_53, label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51
  %36 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %36, label %_llgo_55 [
    i8 0, label %_llgo_54
    i8 1, label %_llgo_5
  ]

_llgo_53:                                         ; preds = %_llgo_51, %_llgo_49
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %37 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.callerStructPtr$coro"(i64 20)
  br label %_llgo_56

_llgo_54:                                         ; preds = %_llgo_52
  br label %_llgo_49

_llgo_55:                                         ; preds = %_llgo_52
  ret ptr %6

_llgo_56:                                         ; preds = %_llgo_61, %_llgo_53
  %38 = call i1 @llvm.coro.done(ptr %37)
  br i1 %38, label %_llgo_60, label %_llgo_57

_llgo_57:                                         ; preds = %_llgo_56
  call void @llvm.coro.resume(ptr %37)
  br label %_llgo_58

_llgo_58:                                         ; preds = %_llgo_57
  %39 = call i1 @llvm.coro.done(ptr %37)
  br i1 %39, label %_llgo_60, label %_llgo_59

_llgo_59:                                         ; preds = %_llgo_58
  %40 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %40, label %_llgo_62 [
    i8 0, label %_llgo_61
    i8 1, label %_llgo_5
  ]

_llgo_60:                                         ; preds = %_llgo_58, %_llgo_56
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %41 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.callerStructMulti$coro"(i64 10)
  br label %_llgo_63

_llgo_61:                                         ; preds = %_llgo_59
  br label %_llgo_56

_llgo_62:                                         ; preds = %_llgo_59
  ret ptr %6

_llgo_63:                                         ; preds = %_llgo_68, %_llgo_60
  %42 = call i1 @llvm.coro.done(ptr %41)
  br i1 %42, label %_llgo_67, label %_llgo_64

_llgo_64:                                         ; preds = %_llgo_63
  call void @llvm.coro.resume(ptr %41)
  br label %_llgo_65

_llgo_65:                                         ; preds = %_llgo_64
  %43 = call i1 @llvm.coro.done(ptr %41)
  br i1 %43, label %_llgo_67, label %_llgo_66

_llgo_66:                                         ; preds = %_llgo_65
  %44 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %44, label %_llgo_69 [
    i8 0, label %_llgo_68
    i8 1, label %_llgo_5
  ]

_llgo_67:                                         ; preds = %_llgo_65, %_llgo_63
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 26 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %45 = call ptr @"github.com/goplus/llgo/cl/_testrt/cororet.callerStructMulti$coro"(i64 20)
  br label %_llgo_70

_llgo_68:                                         ; preds = %_llgo_66
  br label %_llgo_63

_llgo_69:                                         ; preds = %_llgo_66
  ret ptr %6

_llgo_70:                                         ; preds = %_llgo_75, %_llgo_67
  %46 = call i1 @llvm.coro.done(ptr %45)
  br i1 %46, label %_llgo_74, label %_llgo_71

_llgo_71:                                         ; preds = %_llgo_70
  call void @llvm.coro.resume(ptr %45)
  br label %_llgo_72

_llgo_72:                                         ; preds = %_llgo_71
  %47 = call i1 @llvm.coro.done(ptr %45)
  br i1 %47, label %_llgo_74, label %_llgo_73

_llgo_73:                                         ; preds = %_llgo_72
  %48 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %48, label %_llgo_76 [
    i8 0, label %_llgo_75
    i8 1, label %_llgo_5
  ]

_llgo_74:                                         ; preds = %_llgo_72, %_llgo_70
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_4

_llgo_75:                                         ; preds = %_llgo_73
  br label %_llgo_70

_llgo_76:                                         ; preds = %_llgo_73
  ret ptr %6

_llgo_77:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_78:                                         ; preds = %_llgo_4
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
  %1 = alloca { i64, i64, i64 }, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %4, label %_llgo_8 [
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

_llgo_4:                                          ; preds = %_llgo_7
  %9 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %9, label %_llgo_10 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_4, %_llgo_1
  %10 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_10
  %11 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_7:                                          ; preds = %_llgo_1
  %12 = mul i64 %0, 2
  %13 = mul i64 %0, 3
  %14 = mul i64 %0, 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 16 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %15 = getelementptr inbounds { i64, i64, i64 }, ptr %1, i32 0, i32 0
  store i64 %12, ptr %15, align 4
  %16 = getelementptr inbounds { i64, i64, i64 }, ptr %1, i32 0, i32 1
  store i64 %13, ptr %16, align 4
  %17 = getelementptr inbounds { i64, i64, i64 }, ptr %1, i32 0, i32 2
  store i64 %14, ptr %17, align 4
  br label %_llgo_4

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %8

_llgo_9:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_4
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
  %1 = alloca i64, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 11 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %4, label %_llgo_8 [
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

_llgo_4:                                          ; preds = %_llgo_7
  %9 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %9, label %_llgo_10 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_4, %_llgo_1
  %10 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_10
  %11 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_7:                                          ; preds = %_llgo_1
  %12 = mul i64 %0, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 17 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  store i64 %12, ptr %1, align 4
  br label %_llgo_4

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %8

_llgo_9:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_4
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
  %1 = alloca { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr }, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 19 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %4, label %_llgo_8 [
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

_llgo_4:                                          ; preds = %_llgo_7
  %9 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %9, label %_llgo_10 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_4, %_llgo_1
  %10 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_10
  %11 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_7:                                          ; preds = %_llgo_1
  %12 = alloca %"github.com/goplus/llgo/cl/_testrt/cororet.Point", align 8
  call void @llvm.memset(ptr %12, i8 0, i64 16, i1 false)
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %12, i32 0, i32 0
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %12, i32 0, i32 1
  %15 = mul i64 %0, 2
  store i64 %0, ptr %13, align 4
  store i64 %15, ptr %14, align 4
  %16 = mul i64 %0, 3
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %17, i32 0, i32 0
  %19 = mul i64 %0, 4
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %17, i32 0, i32 1
  %21 = mul i64 %0, 5
  store i64 %19, ptr %18, align 4
  store i64 %21, ptr %20, align 4
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %12, i32 0, i32 0
  %23 = load i64, ptr %22, align 4
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %12, i32 0, i32 1
  %25 = load i64, ptr %24, align 4
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %17, i32 0, i32 0
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %17, i32 0, i32 1
  %29 = load i64, ptr %28, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %30 = load %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %12, align 4
  %31 = getelementptr inbounds { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr }, ptr %1, i32 0, i32 0
  store %"github.com/goplus/llgo/cl/_testrt/cororet.Point" %30, ptr %31, align 4
  %32 = getelementptr inbounds { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr }, ptr %1, i32 0, i32 1
  store i64 %16, ptr %32, align 4
  %33 = getelementptr inbounds { %"github.com/goplus/llgo/cl/_testrt/cororet.Point", i64, ptr }, ptr %1, i32 0, i32 2
  store ptr %17, ptr %33, align 8
  br label %_llgo_4

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %8

_llgo_9:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_4
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
  %1 = alloca ptr, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 17 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %4, label %_llgo_8 [
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

_llgo_4:                                          ; preds = %_llgo_7
  %9 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %9, label %_llgo_10 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_4, %_llgo_1
  %10 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_10
  %11 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_7:                                          ; preds = %_llgo_1
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %12, i32 0, i32 0
  %14 = mul i64 %0, 4
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %12, i32 0, i32 1
  %16 = mul i64 %0, 5
  store i64 %14, ptr %13, align 4
  store i64 %16, ptr %15, align 4
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %12, i32 0, i32 0
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %12, i32 0, i32 1
  %20 = load i64, ptr %19, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 23 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  store ptr %12, ptr %1, align 8
  br label %_llgo_4

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %8

_llgo_9:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_4
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
  %1 = alloca %"github.com/goplus/llgo/cl/_testrt/cororet.Point", align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 14 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %4, label %_llgo_8 [
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

_llgo_4:                                          ; preds = %_llgo_7
  %9 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %9, label %_llgo_10 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_4, %_llgo_1
  %10 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_10
  %11 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_7:                                          ; preds = %_llgo_1
  %12 = alloca %"github.com/goplus/llgo/cl/_testrt/cororet.Point", align 8
  call void @llvm.memset(ptr %12, i8 0, i64 16, i1 false)
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %12, i32 0, i32 0
  %14 = mul i64 %0, 2
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %12, i32 0, i32 1
  %16 = mul i64 %0, 3
  store i64 %14, ptr %13, align 4
  store i64 %16, ptr %15, align 4
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %12, i32 0, i32 0
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %12, i32 0, i32 1
  %20 = load i64, ptr %19, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 20 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %21 = load %"github.com/goplus/llgo/cl/_testrt/cororet.Point", ptr %12, align 4
  store %"github.com/goplus/llgo/cl/_testrt/cororet.Point" %21, ptr %1, align 4
  br label %_llgo_4

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %8

_llgo_9:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_4
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

declare void @llvm.coro.resume(ptr)

; Function Attrs: nounwind
declare i8 @llvm.coro.suspend(token, i1) #2

; Function Attrs: nounwind memory(none)
declare ptr @llvm.coro.promise(ptr nocapture, i32, i1) #3

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #5

declare void @free(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token) #2

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
