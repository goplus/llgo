; ModuleID = 'github.com/goplus/llgo/cl/_testrt/corodual'
source_filename = "github.com/goplus/llgo/cl/_testrt/corodual"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testrt/corodual.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [6 x i8] c"helper", align 1
@1 = private unnamed_addr constant [16 x i8] c": calling worker", align 1
@2 = private unnamed_addr constant [17 x i8] c": worker returned", align 1
@3 = private unnamed_addr constant [17 x i8] c"=== sync call ===", align 1
@4 = private unnamed_addr constant [18 x i8] c"=== async call ===", align 1
@5 = private unnamed_addr constant [14 x i8] c"main: after go", align 1
@6 = private unnamed_addr constant [10 x i8] c"main: done", align 1
@7 = private unnamed_addr constant [6 x i8] c"worker", align 1
@8 = private unnamed_addr constant [7 x i8] c": start", align 1
@9 = private unnamed_addr constant [6 x i8] c": done", align 1

define void @"github.com/goplus/llgo/cl/_testrt/corodual.helper"(i64 %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 16 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/cl/_testrt/corodual.worker"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 17 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/corodual.helper$coro"(i64 %0) #0 {
_llgo_0:
  %1 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %2 = call i1 @llvm.coro.alloc(token %1)
  br i1 %2, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 16 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = call ptr @"github.com/goplus/llgo/cl/_testrt/corodual.worker$coro"(i64 %0)
  br label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %4 = call i64 @llvm.coro.size.i64()
  %5 = call ptr @malloc(i64 %4)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %6 = phi ptr [ null, %_llgo_0 ], [ %5, %_llgo_2 ]
  %7 = call ptr @llvm.coro.begin(token %1, ptr %6)
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
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 17 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_4

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_7

_llgo_13:                                         ; preds = %_llgo_10
  ret ptr %7

_llgo_14:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_4
  ret ptr %7
}

define void @"github.com/goplus/llgo/cl/_testrt/corodual.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/corodual.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/corodual.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/corodual.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 17 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/cl/_testrt/corodual.helper"(i64 0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 18 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call ptr @"github.com/goplus/llgo/cl/_testrt/corodual.helper$coro"(i64 1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %0)
  %1 = call ptr @"github.com/goplus/llgo/cl/_testrt/corodual.helper$coro"(i64 2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 14 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/corodual.main$coro"() #0 {
_llgo_0:
  %0 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %1 = call i1 @llvm.coro.alloc(token %0)
  br i1 %1, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 17 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = call ptr @"github.com/goplus/llgo/cl/_testrt/corodual.helper$coro"(i64 0)
  br label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %3 = call i64 @llvm.coro.size.i64()
  %4 = call ptr @malloc(i64 %3)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %5 = phi ptr [ null, %_llgo_0 ], [ %4, %_llgo_2 ]
  %6 = call ptr @llvm.coro.begin(token %0, ptr %5)
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_25
  %7 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %7, label %_llgo_29 [
    i8 0, label %_llgo_28
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_28, %_llgo_4, %_llgo_24, %_llgo_17, %_llgo_10
  %8 = call ptr @llvm.coro.free(token %0, ptr %6)
  call void @free(ptr %8)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 18 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %13 = call ptr @"github.com/goplus/llgo/cl/_testrt/corodual.helper$coro"(i64 1)
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
  %17 = call ptr @"github.com/goplus/llgo/cl/_testrt/corodual.helper$coro"(i64 2)
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 14 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_4

_llgo_26:                                         ; preds = %_llgo_24
  br label %_llgo_21

_llgo_27:                                         ; preds = %_llgo_24
  ret ptr %6

_llgo_28:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_29:                                         ; preds = %_llgo_4
  ret ptr %6
}

define void @"github.com/goplus/llgo/cl/_testrt/corodual.worker"(i64 %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/corodual.worker$coro"(i64 %0) #0 {
_llgo_0:
  %1 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %2 = call i1 @llvm.coro.alloc(token %1)
  br i1 %2, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %3, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_2:                                          ; preds = %_llgo_0
  %4 = call i64 @llvm.coro.size.i64()
  %5 = call ptr @malloc(i64 %4)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %6 = phi ptr [ null, %_llgo_0 ], [ %5, %_llgo_2 ]
  %7 = call ptr @llvm.coro.begin(token %1, ptr %6)
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_7
  %8 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %8, label %_llgo_10 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_4, %_llgo_1
  %9 = call ptr @llvm.coro.free(token %1, ptr %7)
  call void @free(ptr %9)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5
  %10 = call i1 @llvm.coro.end(ptr %7, i1 false, token none)
  ret ptr %7

_llgo_7:                                          ; preds = %_llgo_1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_4

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %7

_llgo_9:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_4
  ret ptr %7
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

; Function Attrs: nounwind memory(argmem: readwrite)
declare i1 @llvm.coro.done(ptr nocapture readonly) #4

declare void @llvm.coro.resume(ptr)

; Function Attrs: nounwind
declare i8 @llvm.coro.suspend(token, i1) #2

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #5

declare void @free(ptr)

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token) #2

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr)

attributes #0 = { presplitcoroutine }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nounwind }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nounwind memory(argmem: readwrite) }
attributes #5 = { nounwind memory(argmem: read) }
