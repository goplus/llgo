; ModuleID = 'github.com/goplus/llgo/cl/_testrt/tpfunc'
source_filename = "github.com/goplus/llgo/cl/_testrt/tpfunc"

@"github.com/goplus/llgo/cl/_testrt/tpfunc.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/cl/_testrt/tpfunc.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/tpfunc.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/tpfunc.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/tpfunc.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/tpfunc.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
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

define void @"github.com/goplus/llgo/cl/_testrt/tpfunc.main$1"(ptr %0) {
_llgo_0:
  %1 = load i64, ptr %0, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/tpfunc.main$1$coro"(ptr %0) #0 {
_llgo_0:
  %1 = alloca { ptr }, align 8
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = load i64, ptr %0, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
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

define void @"github.com/goplus/llgo/cl/_testrt/tpfunc.main$2"(ptr %0) {
_llgo_0:
  %1 = load i64, ptr %0, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/tpfunc.main$2$coro"(ptr %0) #0 {
_llgo_0:
  %1 = alloca { ptr }, align 8
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = load i64, ptr %0, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
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

define void @"github.com/goplus/llgo/cl/_testrt/tpfunc.main$3"(ptr %0) {
_llgo_0:
  %1 = load i64, ptr %0, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/tpfunc.main$3$coro"(ptr %0) #0 {
_llgo_0:
  %1 = alloca { ptr }, align 8
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = load i64, ptr %0, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
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

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/tpfunc.main$1"(ptr %0, ptr %1) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/cl/_testrt/tpfunc.main$1"(ptr %1)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

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
declare i1 @llvm.coro.end(ptr, i1, token) #2

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr)

; Function Attrs: nounwind
declare i8 @llvm.coro.suspend(token, i1) #2

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #4

declare void @free(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

attributes #0 = { presplitcoroutine }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nounwind }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nounwind memory(argmem: read) }
