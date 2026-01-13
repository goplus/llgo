; ModuleID = 'github.com/goplus/llgo/cl/_testrt/sum'
source_filename = "github.com/goplus/llgo/cl/_testrt/sum"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/sum.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [10 x i8] c"Hello %d\0A\00", align 1
@1 = private unnamed_addr constant [10 x i8] c"Hello %d\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testrt/sum.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/sum.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/sum.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/sum.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %1 = getelementptr inbounds i64, ptr %0, i64 0
  store i64 1, ptr %1, align 4
  %2 = getelementptr inbounds i64, ptr %0, i64 1
  store i64 2, ptr %2, align 4
  %3 = getelementptr inbounds i64, ptr %0, i64 2
  store i64 3, ptr %3, align 4
  %4 = getelementptr inbounds i64, ptr %0, i64 3
  store i64 4, ptr %4, align 4
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %0, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 4, 1
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 4, 2
  %8 = call i64 @"github.com/goplus/llgo/cl/_testrt/sum.sum"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7)
  %9 = call i32 (ptr, ...) @printf(ptr @0, i64 %8)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/sum.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %5 = getelementptr inbounds i64, ptr %4, i64 0
  store i64 1, ptr %5, align 4
  %6 = getelementptr inbounds i64, ptr %4, i64 1
  store i64 2, ptr %6, align 4
  %7 = getelementptr inbounds i64, ptr %4, i64 2
  store i64 3, ptr %7, align 4
  %8 = getelementptr inbounds i64, ptr %4, i64 3
  store i64 4, ptr %8, align 4
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 4, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 4, 2
  %12 = call i64 @"github.com/goplus/llgo/cl/_testrt/sum.sum"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11)
  %13 = call i32 (ptr, ...) @printf(ptr @1, i64 %12)
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %14 = call i64 @llvm.coro.size.i64()
  %15 = call ptr @malloc(i64 %14)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %16 = phi ptr [ null, %_llgo_0 ], [ %15, %_llgo_2 ]
  %17 = call ptr @llvm.coro.begin(token %2, ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %18 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %18, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %19 = call i1 @llvm.coro.end(ptr %17, i1 false, token none)
  ret ptr %17

_llgo_5:                                          ; preds = %_llgo_1, %_llgo_3
  %20 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %20, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %21 = call ptr @llvm.coro.free(token %2, ptr %17)
  call void @free(ptr %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/sum.sum"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %2 = phi i64 [ 0, %_llgo_0 ], [ %13, %_llgo_2 ]
  %3 = phi i64 [ -1, %_llgo_0 ], [ %4, %_llgo_2 ]
  %4 = add i64 %3, 1
  %5 = icmp slt i64 %4, %1
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 0
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  %8 = icmp slt i64 %4, 0
  %9 = icmp sge i64 %4, %7
  %10 = or i1 %9, %8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %10)
  %11 = getelementptr inbounds i64, ptr %6, i64 %4
  %12 = load i64, ptr %11, align 4
  %13 = add i64 %2, %12
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret i64 %2
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/sum.sum$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0) #0 {
_llgo_0:
  %1 = alloca { ptr, i64 }, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_5, label %_llgo_6

_llgo_1:                                          ; preds = %_llgo_10
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %6 = phi i64 [ 0, %_llgo_1 ], [ %17, %_llgo_3 ]
  %7 = phi i64 [ -1, %_llgo_1 ], [ %8, %_llgo_3 ]
  %8 = add i64 %7, 1
  %9 = icmp slt i64 %8, %5
  br i1 %9, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %10 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 0
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  %12 = icmp slt i64 %8, 0
  %13 = icmp sge i64 %8, %11
  %14 = or i1 %13, %12
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %14)
  %15 = getelementptr inbounds i64, ptr %10, i64 %8
  %16 = load i64, ptr %15, align 4
  %17 = add i64 %6, %16
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_2
  %18 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 1
  store i64 %6, ptr %18, align 4
  br label %_llgo_8

_llgo_5:                                          ; preds = %_llgo_0
  %19 = call i64 @llvm.coro.size.i64()
  %20 = call ptr @malloc(i64 %19)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %21 = phi ptr [ null, %_llgo_0 ], [ %20, %_llgo_5 ]
  %22 = call ptr @llvm.coro.begin(token %3, ptr %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %23 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %23, label %_llgo_7 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_8
  ]

_llgo_7:                                          ; preds = %_llgo_9, %_llgo_8, %_llgo_6
  %24 = call i1 @llvm.coro.end(ptr %22, i1 false, token none)
  ret ptr %22

_llgo_8:                                          ; preds = %_llgo_4, %_llgo_6
  %25 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %25, label %_llgo_7 [
    i8 0, label %_llgo_11
    i8 1, label %_llgo_9
  ]

_llgo_9:                                          ; preds = %_llgo_11, %_llgo_8
  %26 = call ptr @llvm.coro.free(token %3, ptr %22)
  call void @free(ptr %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_7

_llgo_10:                                         ; preds = %_llgo_6
  br label %_llgo_1

_llgo_11:                                         ; preds = %_llgo_8
  br label %_llgo_9
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

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
declare i8 @llvm.coro.suspend(token, i1) #2

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token) #2

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #4

declare void @free(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

attributes #0 = { presplitcoroutine }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nounwind }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nounwind memory(argmem: read) }
