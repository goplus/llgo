; ModuleID = 'command-line-arguments'
source_filename = "command-line-arguments"

@command-line-arguments.format = global [10 x i8] zeroinitializer, align 1
@"command-line-arguments.init$guard" = global i1 false, align 1

define void @command-line-arguments.init() {
_llgo_0:
  %0 = load i1, ptr @"command-line-arguments.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"command-line-arguments.init$guard", align 1
  store i8 72, ptr @command-line-arguments.format, align 1
  store i8 101, ptr getelementptr inbounds (i8, ptr @command-line-arguments.format, i64 1), align 1
  store i8 108, ptr getelementptr inbounds (i8, ptr @command-line-arguments.format, i64 2), align 1
  store i8 108, ptr getelementptr inbounds (i8, ptr @command-line-arguments.format, i64 3), align 1
  store i8 111, ptr getelementptr inbounds (i8, ptr @command-line-arguments.format, i64 4), align 1
  store i8 32, ptr getelementptr inbounds (i8, ptr @command-line-arguments.format, i64 5), align 1
  store i8 37, ptr getelementptr inbounds (i8, ptr @command-line-arguments.format, i64 6), align 1
  store i8 100, ptr getelementptr inbounds (i8, ptr @command-line-arguments.format, i64 7), align 1
  store i8 10, ptr getelementptr inbounds (i8, ptr @command-line-arguments.format, i64 8), align 1
  store i8 0, ptr getelementptr inbounds (i8, ptr @command-line-arguments.format, i64 9), align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @command-line-arguments.main() {
_llgo_0:
  %0 = call i32 @strlen(ptr @command-line-arguments.format)
  call void (ptr, ...) @printf(ptr @command-line-arguments.format, i32 %0)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"command-line-arguments.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %4 = call i32 @strlen(ptr @command-line-arguments.format)
  call void (ptr, ...) @printf(ptr @command-line-arguments.format, i32 %4)
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call i64 @llvm.coro.size.i64()
  %6 = call ptr @malloc(i64 %5)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %7 = phi ptr [ null, %_llgo_0 ], [ %6, %_llgo_2 ]
  %8 = call ptr @llvm.coro.begin(token %2, ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %9 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_5:                                          ; preds = %_llgo_1
  %10 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %10, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %11 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

declare i32 @strlen(ptr)

declare void @printf(ptr, ...)

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
