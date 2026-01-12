; ModuleID = 'github.com/goplus/llgo/cl/_testrt/alloca'
source_filename = "github.com/goplus/llgo/cl/_testrt/alloca"

@"github.com/goplus/llgo/cl/_testrt/alloca.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [4 x i8] c"Hi\0A\00", align 1
@1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@2 = private unnamed_addr constant [4 x i8] c"Hi\0A\00", align 1
@3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

define void @"github.com/goplus/llgo/cl/_testrt/alloca.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/alloca.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/alloca.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/alloca.main"() {
_llgo_0:
  %0 = alloca i8, i64 4, align 1
  %1 = call ptr @memcpy(ptr %0, ptr @0, i64 4)
  %2 = call i32 (ptr, ...) @printf(ptr @1, ptr %0)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/alloca.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %4 = alloca i8, i64 4, align 1
  %5 = call ptr @memcpy(ptr %4, ptr @2, i64 4)
  %6 = call i32 (ptr, ...) @printf(ptr @3, ptr %4)
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %7 = call i64 @llvm.coro.size.i64()
  %8 = call ptr @malloc(i64 %7)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi ptr [ null, %_llgo_0 ], [ %8, %_llgo_2 ]
  %10 = call ptr @llvm.coro.begin(token %2, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %11 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_5:                                          ; preds = %_llgo_1
  %12 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %12)
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %14 = call ptr @llvm.coro.free(token %2, ptr %10)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

declare ptr @memcpy(ptr, ptr, i64)

declare i32 @printf(ptr, ...)

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

attributes #0 = { presplitcoroutine }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nounwind }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nounwind memory(argmem: read) }
