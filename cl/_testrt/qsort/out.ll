; ModuleID = 'github.com/goplus/llgo/cl/_testrt/qsort'
source_filename = "github.com/goplus/llgo/cl/_testrt/qsort"

@"github.com/goplus/llgo/cl/_testrt/qsort.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testrt/qsort.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/qsort.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/qsort.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/qsort.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %1 = getelementptr inbounds i64, ptr %0, i64 0
  %2 = getelementptr inbounds i64, ptr %0, i64 1
  %3 = getelementptr inbounds i64, ptr %0, i64 2
  %4 = getelementptr inbounds i64, ptr %0, i64 3
  %5 = getelementptr inbounds i64, ptr %0, i64 4
  store i64 100, ptr %1, align 4
  store i64 8, ptr %2, align 4
  store i64 23, ptr %3, align 4
  store i64 2, ptr %4, align 4
  store i64 7, ptr %5, align 4
  %6 = getelementptr inbounds i64, ptr %0, i64 0
  call void @qsort(ptr %6, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsort.main$1")
  %7 = load [5 x i64], ptr %0, align 4
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %8 = phi i64 [ -1, %_llgo_0 ], [ %9, %_llgo_2 ]
  %9 = add i64 %8, 1
  %10 = icmp slt i64 %9, 5
  br i1 %10, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %11 = icmp slt i64 %9, 0
  %12 = icmp sge i64 %9, 5
  %13 = or i1 %12, %11
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %13)
  %14 = getelementptr inbounds i64, ptr %0, i64 %9
  %15 = load i64, ptr %14, align 4
  %16 = call i32 (ptr, ...) @printf(ptr @0, i64 %15)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/qsort.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_5, label %_llgo_6

_llgo_1:                                          ; preds = %_llgo_6
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %5 = getelementptr inbounds i64, ptr %4, i64 0
  %6 = getelementptr inbounds i64, ptr %4, i64 1
  %7 = getelementptr inbounds i64, ptr %4, i64 2
  %8 = getelementptr inbounds i64, ptr %4, i64 3
  %9 = getelementptr inbounds i64, ptr %4, i64 4
  store i64 100, ptr %5, align 4
  store i64 8, ptr %6, align 4
  store i64 23, ptr %7, align 4
  store i64 2, ptr %8, align 4
  store i64 7, ptr %9, align 4
  %10 = getelementptr inbounds i64, ptr %4, i64 0
  call void @qsort(ptr %10, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsort.main$1")
  %11 = load [5 x i64], ptr %4, align 4
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %12 = phi i64 [ -1, %_llgo_1 ], [ %13, %_llgo_3 ]
  %13 = add i64 %12, 1
  %14 = icmp slt i64 %13, 5
  br i1 %14, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %15 = icmp slt i64 %13, 0
  %16 = icmp sge i64 %13, 5
  %17 = or i1 %16, %15
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %17)
  %18 = getelementptr inbounds i64, ptr %4, i64 %13
  %19 = load i64, ptr %18, align 4
  %20 = call i32 (ptr, ...) @printf(ptr @1, i64 %19)
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_2
  br label %_llgo_8

_llgo_5:                                          ; preds = %_llgo_0
  %21 = call i64 @llvm.coro.size.i64()
  %22 = call ptr @malloc(i64 %21)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %23 = phi ptr [ null, %_llgo_0 ], [ %22, %_llgo_5 ]
  %24 = call ptr @llvm.coro.begin(token %2, ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_7:                                          ; preds = %_llgo_9, %_llgo_8
  %25 = call i1 @llvm.coro.end(ptr %24, i1 false, token none)
  ret ptr %24

_llgo_8:                                          ; preds = %_llgo_4
  %26 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %26)
  %27 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %27, label %_llgo_7 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_9
  ]

_llgo_9:                                          ; preds = %_llgo_10, %_llgo_8
  %28 = call ptr @llvm.coro.free(token %2, ptr %24)
  call void @free(ptr %28)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_7

_llgo_10:                                         ; preds = %_llgo_8
  br label %_llgo_9
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsort.main$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load i64, ptr %0, align 4
  %3 = load i64, ptr %1, align 4
  %4 = sub i64 %2, %3
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/qsort.main$1$coro"(ptr %0, ptr %1) #0 {
_llgo_0:
  %2 = alloca { ptr, i32 }, align 8
  %3 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = load i64, ptr %0, align 4
  %7 = load i64, ptr %1, align 4
  %8 = sub i64 %6, %7
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %11 = call i64 @llvm.coro.size.i64()
  %12 = call ptr @malloc(i64 %11)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %13 = phi ptr [ null, %_llgo_0 ], [ %12, %_llgo_2 ]
  %14 = call ptr @llvm.coro.begin(token %4, ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %15 = call i1 @llvm.coro.end(ptr %14, i1 false, token none)
  ret ptr %14

_llgo_5:                                          ; preds = %_llgo_1
  %16 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %16)
  %17 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %17, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %18 = call ptr @llvm.coro.free(token %4, ptr %14)
  call void @free(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @qsort(ptr, i64, i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

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
