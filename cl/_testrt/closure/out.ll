; ModuleID = 'github.com/goplus/llgo/cl/_testrt/closure'
source_filename = "github.com/goplus/llgo/cl/_testrt/closure"

@"github.com/goplus/llgo/cl/_testrt/closure.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@1 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@2 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@3 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testrt/closure.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/closure.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/closure.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/closure.main"() {
_llgo_0:
  %0 = alloca { ptr, ptr }, align 8
  store ptr @"github.com/goplus/llgo/cl/_testrt/closure.main$1$coro", ptr %0, align 8
  %1 = getelementptr { ptr, ptr }, ptr %0, i32 0, i32 0
  %2 = getelementptr { ptr, ptr }, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %1, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = call ptr %3(i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %5)
  call void @llvm.coro.destroy(ptr %5)
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/closure.main$2$coro", ptr null }, ptr %6, align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %8 = getelementptr inbounds { ptr }, ptr %7, i32 0, i32 0
  store ptr %6, ptr %8, align 8
  %9 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/closure.main$3$coro", ptr undef }, ptr %7, 1
  %10 = extractvalue { ptr, ptr } %9, 0
  %11 = extractvalue { ptr, ptr } %9, 1
  %12 = call ptr %10(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %12)
  call void @llvm.coro.destroy(ptr %12)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closure.main$coro"() #0 {
_llgo_0:
  %0 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %1 = call i1 @llvm.coro.alloc(token %0)
  br i1 %1, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %2 = alloca { ptr, ptr }, align 8
  store ptr @"github.com/goplus/llgo/cl/_testrt/closure.main$1$coro", ptr %2, align 8
  %3 = getelementptr { ptr, ptr }, ptr %2, i32 0, i32 0
  %4 = getelementptr { ptr, ptr }, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr %5(i64 100, i64 200)
  br label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %8 = call i64 @llvm.coro.size.i64()
  %9 = call ptr @malloc(i64 %8)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %10 = phi ptr [ null, %_llgo_0 ], [ %9, %_llgo_2 ]
  %11 = call ptr @llvm.coro.begin(token %0, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_18
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_22 [
    i8 0, label %_llgo_21
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_21, %_llgo_4, %_llgo_17, %_llgo_10
  %13 = call ptr @llvm.coro.free(token %0, ptr %11)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_22
  %14 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_7:                                          ; preds = %_llgo_12, %_llgo_1
  %15 = call i1 @llvm.coro.done(ptr %7)
  br i1 %15, label %_llgo_11, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  call void @llvm.coro.resume(ptr %7)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  %16 = call i1 @llvm.coro.done(ptr %7)
  br i1 %16, label %_llgo_11, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  %17 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %17, label %_llgo_13 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9, %_llgo_7
  call void @llvm.coro.destroy(ptr %7)
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/closure.main$2$coro", ptr null }, ptr %18, align 8
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %20 = getelementptr inbounds { ptr }, ptr %19, i32 0, i32 0
  store ptr %18, ptr %20, align 8
  %21 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/closure.main$3$coro", ptr undef }, ptr %19, 1
  %22 = extractvalue { ptr, ptr } %21, 0
  %23 = extractvalue { ptr, ptr } %21, 1
  %24 = call ptr %22(ptr %23)
  br label %_llgo_14

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_7

_llgo_13:                                         ; preds = %_llgo_10
  ret ptr %11

_llgo_14:                                         ; preds = %_llgo_19, %_llgo_11
  %25 = call i1 @llvm.coro.done(ptr %24)
  br i1 %25, label %_llgo_18, label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14
  call void @llvm.coro.resume(ptr %24)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15
  %26 = call i1 @llvm.coro.done(ptr %24)
  br i1 %26, label %_llgo_18, label %_llgo_17

_llgo_17:                                         ; preds = %_llgo_16
  %27 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %27, label %_llgo_20 [
    i8 0, label %_llgo_19
    i8 1, label %_llgo_5
  ]

_llgo_18:                                         ; preds = %_llgo_16, %_llgo_14
  call void @llvm.coro.destroy(ptr %24)
  br label %_llgo_4

_llgo_19:                                         ; preds = %_llgo_17
  br label %_llgo_14

_llgo_20:                                         ; preds = %_llgo_17
  ret ptr %11

_llgo_21:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_22:                                         ; preds = %_llgo_4
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/closure.main$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call i32 (ptr, ...) @printf(ptr @0, i64 %0, i64 %1)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closure.main$1$coro"(i64 %0, i64 %1) #0 {
_llgo_0:
  %2 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %4 = call i32 (ptr, ...) @printf(ptr @1, i64 %0, i64 %1)
  br label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call i64 @llvm.coro.size.i64()
  %6 = call ptr @malloc(i64 %5)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %7 = phi ptr [ null, %_llgo_0 ], [ %6, %_llgo_2 ]
  %8 = call ptr @llvm.coro.begin(token %2, ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_1
  %9 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %9, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_4
  %10 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_8
  %11 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_7:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_4
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/closure.main$2"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call i32 (ptr, ...) @printf(ptr @2, i64 %0, i64 %1)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closure.main$2$coro"(i64 %0, i64 %1) #0 {
_llgo_0:
  %2 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %4 = call i32 (ptr, ...) @printf(ptr @3, i64 %0, i64 %1)
  br label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call i64 @llvm.coro.size.i64()
  %6 = call ptr @malloc(i64 %5)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %7 = phi ptr [ null, %_llgo_0 ], [ %6, %_llgo_2 ]
  %8 = call ptr @llvm.coro.begin(token %2, ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_1
  %9 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %9, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_4
  %10 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_8
  %11 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_7:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_4
  br label %_llgo_6
}

declare void @"github.com/goplus/llgo/cl/_testrt/closure.main$3"(ptr)

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closure.main$3$coro"(ptr %0) #0 {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %4 = extractvalue { ptr } %1, 0
  %5 = load { ptr, ptr }, ptr %4, align 8
  %6 = extractvalue { ptr, ptr } %5, 0
  %7 = extractvalue { ptr, ptr } %5, 1
  %8 = call ptr %6(ptr %7, i64 100, i64 200)
  br label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %9 = call i64 @llvm.coro.size.i64()
  %10 = call ptr @malloc(i64 %9)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %11 = phi ptr [ null, %_llgo_0 ], [ %10, %_llgo_2 ]
  %12 = call ptr @llvm.coro.begin(token %2, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_11
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_14, %_llgo_4, %_llgo_10
  %14 = call ptr @llvm.coro.free(token %2, ptr %12)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_15
  %15 = call i1 @llvm.coro.end(ptr %12, i1 false, token none)
  ret ptr %12

_llgo_7:                                          ; preds = %_llgo_12, %_llgo_1
  %16 = call i1 @llvm.coro.done(ptr %8)
  br i1 %16, label %_llgo_11, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  call void @llvm.coro.resume(ptr %8)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  %17 = call i1 @llvm.coro.done(ptr %8)
  br i1 %17, label %_llgo_11, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  %18 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %18, label %_llgo_13 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9, %_llgo_7
  call void @llvm.coro.destroy(ptr %8)
  br label %_llgo_4

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_7

_llgo_13:                                         ; preds = %_llgo_10
  ret ptr %12

_llgo_14:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_4
  br label %_llgo_6
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr)

declare void @llvm.coro.destroy(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/closure.main$2$coro"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/cl/_testrt/closure.main$2$coro"(i64 %1, i64 %2)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

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

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #5

declare void @free(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token) #2

declare i32 @printf(ptr, ...)

attributes #0 = { presplitcoroutine }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nounwind }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nounwind memory(argmem: readwrite) }
attributes #5 = { nounwind memory(argmem: read) }
