; ModuleID = 'github.com/goplus/llgo/cl/_testrt/callback'
source_filename = "github.com/goplus/llgo/cl/_testrt/callback"

%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/callback.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [7 x i8] c"Hello\0A\00", align 1
@1 = private unnamed_addr constant [10 x i8] c"callback\0A\00", align 1
@2 = private unnamed_addr constant [7 x i8] c"Hello\0A\00", align 1
@3 = private unnamed_addr constant [10 x i8] c"callback\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testrt/callback.callback"(ptr %0, { ptr, ptr, i1 } %1) {
_llgo_0:
  %2 = extractvalue { ptr, ptr, i1 } %1, 0
  %3 = extractvalue { ptr, ptr, i1 } %1, 1
  %4 = extractvalue { ptr, ptr, i1 } %1, 2
  br i1 %4, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  call void %2(ptr %3, ptr %0)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call ptr %2(ptr %3, ptr %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %5)
  call void @llvm.coro.destroy(ptr %5)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/callback.callback$coro"(ptr %0, { ptr, ptr, i1 } %1) #0 {
_llgo_0:
  %2 = alloca { ptr }, align 8
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = extractvalue { ptr, ptr, i1 } %1, 0
  %7 = extractvalue { ptr, ptr, i1 } %1, 1
  %8 = extractvalue { ptr, ptr, i1 } %1, 2
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
  %14 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
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
  call void %6(ptr %7, ptr %0)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  %17 = call ptr %6(ptr %7, ptr %0)
  br label %_llgo_11

_llgo_9:                                          ; preds = %_llgo_18, %_llgo_7
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_11
  %18 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %17)
  br i1 %18, label %_llgo_17, label %_llgo_18

_llgo_11:                                         ; preds = %_llgo_16, %_llgo_15, %_llgo_8
  %19 = phi i1 [ true, %_llgo_8 ], [ false, %_llgo_13 ], [ false, %_llgo_14 ]
  %20 = call i1 @llvm.coro.done(ptr %17)
  br i1 %20, label %_llgo_10, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  br i1 %19, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %21 = call ptr @llvm.coro.promise(ptr %17, i32 8, i1 false)
  %22 = getelementptr inbounds { ptr }, ptr %21, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %22, ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %17)
  %23 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %23, label %_llgo_4 [
    i8 0, label %_llgo_15
    i8 1, label %_llgo_5
  ]

_llgo_14:                                         ; preds = %_llgo_12
  %24 = call ptr @llvm.coro.promise(ptr %17, i32 8, i1 false)
  %25 = getelementptr inbounds { ptr }, ptr %24, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %25, ptr %12)
  %26 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %26, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_5
  ]

_llgo_15:                                         ; preds = %_llgo_13
  br label %_llgo_11

_llgo_16:                                         ; preds = %_llgo_14
  br label %_llgo_11

_llgo_17:                                         ; preds = %_llgo_10
  %27 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %27)
  br label %_llgo_5

_llgo_18:                                         ; preds = %_llgo_10
  call void @llvm.coro.destroy(ptr %17)
  br label %_llgo_9

_llgo_19:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/callback.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/callback.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/callback.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/callback.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/cl/_testrt/callback.callback"(ptr @0, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/callback.print", ptr null, i1 false })
  call void @"github.com/goplus/llgo/cl/_testrt/callback.callback"(ptr @1, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/callback.print", ptr null, i1 false })
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/callback.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/cl/_testrt/callback.callback"(ptr @2, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/callback.print", ptr null, i1 false })
  call void @"github.com/goplus/llgo/cl/_testrt/callback.callback"(ptr @3, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/callback.print", ptr null, i1 false })
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %4 = call i64 @llvm.coro.size.i64()
  %5 = call ptr @malloc(i64 %4)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %6 = phi ptr [ null, %_llgo_0 ], [ %5, %_llgo_2 ]
  %7 = call ptr @llvm.coro.begin(token %2, ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %8 = call i1 @llvm.coro.end(ptr %7, i1 false, token none)
  ret ptr %7

_llgo_5:                                          ; preds = %_llgo_1
  %9 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %9)
  %10 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %10, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %11 = call ptr @llvm.coro.free(token %2, ptr %7)
  call void @free(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/callback.print"(ptr %0) {
_llgo_0:
  %1 = call i32 (ptr, ...) @printf(ptr %0)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/callback.print$coro"(ptr %0) #0 {
_llgo_0:
  %1 = alloca { ptr }, align 8
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = call i32 (ptr, ...) @printf(ptr %0)
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %6 = call i64 @llvm.coro.size.i64()
  %7 = call ptr @malloc(i64 %6)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %8 = phi ptr [ null, %_llgo_0 ], [ %7, %_llgo_2 ]
  %9 = call ptr @llvm.coro.begin(token %3, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %10 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_5:                                          ; preds = %_llgo_1
  %11 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %11)
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %13 = call ptr @llvm.coro.free(token %3, ptr %9)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

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

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/callback.print"(ptr %0, ptr %1) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/cl/_testrt/callback.print"(ptr %1)
  ret void
}

declare i32 @printf(ptr, ...)

attributes #0 = { presplitcoroutine }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nounwind }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nounwind memory(argmem: readwrite) }
attributes #5 = { nounwind memory(argmem: read) }
