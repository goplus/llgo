; ModuleID = 'github.com/goplus/llgo/cl/_testrt/closure'
source_filename = "github.com/goplus/llgo/cl/_testrt/closure"

%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

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
  call void @"github.com/goplus/llgo/cl/_testrt/closure.main$1"(i64 100, i64 200)
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  store { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/closure.main$2", ptr null, i1 false }, ptr %0, align 8
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/closure.main$3", ptr undef, i1 undef }, ptr %1, 1
  %4 = insertvalue { ptr, ptr, i1 } %3, i1 false, 2
  %5 = extractvalue { ptr, ptr, i1 } %4, 0
  %6 = extractvalue { ptr, ptr, i1 } %4, 1
  %7 = extractvalue { ptr, ptr, i1 } %4, 2
  br i1 %7, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  call void %5(ptr %6)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  %8 = call ptr %5(ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %8)
  call void @llvm.coro.destroy(ptr %8)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closure.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/cl/_testrt/closure.main$1"(i64 100, i64 200)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  store { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/closure.main$2", ptr null, i1 false }, ptr %4, align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %6 = getelementptr inbounds { ptr }, ptr %5, i32 0, i32 0
  store ptr %4, ptr %6, align 8
  %7 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/closure.main$3", ptr undef, i1 undef }, ptr %5, 1
  %8 = insertvalue { ptr, ptr, i1 } %7, i1 false, 2
  %9 = extractvalue { ptr, ptr, i1 } %8, 0
  %10 = extractvalue { ptr, ptr, i1 } %8, 1
  %11 = extractvalue { ptr, ptr, i1 } %8, 2
  br i1 %11, label %_llgo_8, label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %12 = call i64 @llvm.coro.size.i64()
  %13 = call ptr @malloc(i64 %12)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %14 = phi ptr [ null, %_llgo_0 ], [ %13, %_llgo_2 ]
  %15 = call ptr @llvm.coro.begin(token %2, ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_14, %_llgo_13
  %16 = call i1 @llvm.coro.end(ptr %15, i1 false, token none)
  ret ptr %15

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_17, %_llgo_14, %_llgo_13
  %17 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %17)
  %18 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %18, label %_llgo_4 [
    i8 0, label %_llgo_19
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_19, %_llgo_5
  %19 = call ptr @llvm.coro.free(token %2, ptr %15)
  call void @free(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  call void %9(ptr %10)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  %20 = call ptr %9(ptr %10)
  br label %_llgo_11

_llgo_9:                                          ; preds = %_llgo_18, %_llgo_7
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_11
  %21 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %20)
  br i1 %21, label %_llgo_17, label %_llgo_18

_llgo_11:                                         ; preds = %_llgo_16, %_llgo_15, %_llgo_8
  %22 = phi i1 [ true, %_llgo_8 ], [ false, %_llgo_13 ], [ false, %_llgo_14 ]
  %23 = call i1 @llvm.coro.done(ptr %20)
  br i1 %23, label %_llgo_10, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  br i1 %22, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %24 = call ptr @llvm.coro.promise(ptr %20, i32 8, i1 false)
  %25 = getelementptr inbounds { ptr }, ptr %24, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %25, ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %20)
  %26 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %26, label %_llgo_4 [
    i8 0, label %_llgo_15
    i8 1, label %_llgo_5
  ]

_llgo_14:                                         ; preds = %_llgo_12
  %27 = call ptr @llvm.coro.promise(ptr %20, i32 8, i1 false)
  %28 = getelementptr inbounds { ptr }, ptr %27, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %28, ptr %15)
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
  %30 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %30)
  br label %_llgo_5

_llgo_18:                                         ; preds = %_llgo_10
  call void @llvm.coro.destroy(ptr %20)
  br label %_llgo_9

_llgo_19:                                         ; preds = %_llgo_5
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
  %2 = alloca { ptr }, align 8
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = call i32 (ptr, ...) @printf(ptr @1, i64 %0, i64 %1)
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %7 = call i64 @llvm.coro.size.i64()
  %8 = call ptr @malloc(i64 %7)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi ptr [ null, %_llgo_0 ], [ %8, %_llgo_2 ]
  %10 = call ptr @llvm.coro.begin(token %4, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %11 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_5:                                          ; preds = %_llgo_1
  %12 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %12)
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %14 = call ptr @llvm.coro.free(token %4, ptr %10)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
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
  %2 = alloca { ptr }, align 8
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = call i32 (ptr, ...) @printf(ptr @3, i64 %0, i64 %1)
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %7 = call i64 @llvm.coro.size.i64()
  %8 = call ptr @malloc(i64 %7)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi ptr [ null, %_llgo_0 ], [ %8, %_llgo_2 ]
  %10 = call ptr @llvm.coro.begin(token %4, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %11 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_5:                                          ; preds = %_llgo_1
  %12 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %12)
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %14 = call ptr @llvm.coro.free(token %4, ptr %10)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/closure.main$3"(ptr %0) {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load { ptr, ptr, i1 }, ptr %2, align 8
  %4 = extractvalue { ptr, ptr, i1 } %3, 0
  %5 = extractvalue { ptr, ptr, i1 } %3, 1
  %6 = extractvalue { ptr, ptr, i1 } %3, 2
  br i1 %6, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  call void %4(ptr %5, i64 100, i64 200)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  %7 = call ptr %4(ptr %5, i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %7)
  call void @llvm.coro.destroy(ptr %7)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closure.main$3$coro"(ptr %0) #0 {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = alloca { ptr }, align 8
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = extractvalue { ptr } %1, 0
  %7 = load { ptr, ptr, i1 }, ptr %6, align 8
  %8 = extractvalue { ptr, ptr, i1 } %7, 0
  %9 = extractvalue { ptr, ptr, i1 } %7, 1
  %10 = extractvalue { ptr, ptr, i1 } %7, 2
  br i1 %10, label %_llgo_8, label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %11 = call i64 @llvm.coro.size.i64()
  %12 = call ptr @malloc(i64 %11)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %13 = phi ptr [ null, %_llgo_0 ], [ %12, %_llgo_2 ]
  %14 = call ptr @llvm.coro.begin(token %4, ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_14, %_llgo_13
  %15 = call i1 @llvm.coro.end(ptr %14, i1 false, token none)
  ret ptr %14

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_17, %_llgo_14, %_llgo_13
  %16 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %16)
  %17 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %17, label %_llgo_4 [
    i8 0, label %_llgo_19
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_19, %_llgo_5
  %18 = call ptr @llvm.coro.free(token %4, ptr %14)
  call void @free(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  call void %8(ptr %9, i64 100, i64 200)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  %19 = call ptr %8(ptr %9, i64 100, i64 200)
  br label %_llgo_11

_llgo_9:                                          ; preds = %_llgo_18, %_llgo_7
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_11
  %20 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %19)
  br i1 %20, label %_llgo_17, label %_llgo_18

_llgo_11:                                         ; preds = %_llgo_16, %_llgo_15, %_llgo_8
  %21 = phi i1 [ true, %_llgo_8 ], [ false, %_llgo_13 ], [ false, %_llgo_14 ]
  %22 = call i1 @llvm.coro.done(ptr %19)
  br i1 %22, label %_llgo_10, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  br i1 %21, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %23 = call ptr @llvm.coro.promise(ptr %19, i32 8, i1 false)
  %24 = getelementptr inbounds { ptr }, ptr %23, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %24, ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %19)
  %25 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %25, label %_llgo_4 [
    i8 0, label %_llgo_15
    i8 1, label %_llgo_5
  ]

_llgo_14:                                         ; preds = %_llgo_12
  %26 = call ptr @llvm.coro.promise(ptr %19, i32 8, i1 false)
  %27 = getelementptr inbounds { ptr }, ptr %26, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %27, ptr %14)
  %28 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %28, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_5
  ]

_llgo_15:                                         ; preds = %_llgo_13
  br label %_llgo_11

_llgo_16:                                         ; preds = %_llgo_14
  br label %_llgo_11

_llgo_17:                                         ; preds = %_llgo_10
  %29 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %29)
  br label %_llgo_5

_llgo_18:                                         ; preds = %_llgo_10
  call void @llvm.coro.destroy(ptr %19)
  br label %_llgo_9

_llgo_19:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/closure.main$2"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/cl/_testrt/closure.main$2"(i64 %1, i64 %2)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr)

declare void @llvm.coro.destroy(ptr)

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

declare i32 @printf(ptr, ...)

attributes #0 = { presplitcoroutine }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nounwind }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nounwind memory(argmem: readwrite) }
attributes #5 = { nounwind memory(argmem: read) }
