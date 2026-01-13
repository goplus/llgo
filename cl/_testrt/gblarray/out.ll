; ModuleID = 'github.com/goplus/llgo/cl/_testrt/gblarray'
source_filename = "github.com/goplus/llgo/cl/_testrt/gblarray"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr, i1 }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testrt/gblarray.basicTypes" = global [25 x ptr] zeroinitializer, align 8
@"github.com/goplus/llgo/cl/_testrt/gblarray.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/cl/_testrt/gblarray.sizeBasicTypes" = global [25 x i64] zeroinitializer, align 8
@0 = private unnamed_addr constant [20 x i8] c"Kind: %d, Size: %d\0A\00", align 1
@1 = private unnamed_addr constant [20 x i8] c"Kind: %d, Size: %d\0A\00", align 1

define ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.Basic"(i64 %0) {
_llgo_0:
  %1 = icmp sge i64 %0, 25
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %1)
  %2 = getelementptr inbounds ptr, ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.basicTypes", i64 %0
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.Basic$coro"(i64 %0) #0 {
_llgo_0:
  %1 = alloca { ptr, ptr }, align 8
  %2 = getelementptr inbounds { ptr, ptr }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %5 = icmp sge i64 %0, 25
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %5)
  %6 = getelementptr inbounds ptr, ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.basicTypes", i64 %0
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds { ptr, ptr }, ptr %1, i32 0, i32 1
  store ptr %7, ptr %8, align 8
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %9 = call i64 @llvm.coro.size.i64()
  %10 = call ptr @malloc(i64 %9)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %11 = phi ptr [ null, %_llgo_0 ], [ %10, %_llgo_2 ]
  %12 = call ptr @llvm.coro.begin(token %3, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %13 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %13, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %14 = call i1 @llvm.coro.end(ptr %12, i1 false, token none)
  ret ptr %12

_llgo_5:                                          ; preds = %_llgo_1, %_llgo_3
  %15 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %15, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %16 = call ptr @llvm.coro.free(token %3, ptr %12)
  call void @free(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.basicType"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 80)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %1, i32 0, i32 0
  %3 = icmp sge i64 %0, 25
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %3)
  %4 = getelementptr inbounds i64, ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.sizeBasicTypes", i64 %0
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %1, i32 0, i32 2
  %7 = trunc i64 %0 to i32
  %8 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %1, i32 0, i32 6
  %9 = trunc i64 %0 to i8
  store i64 %5, ptr %2, align 4
  store i32 %7, ptr %6, align 4
  store i8 %9, ptr %8, align 1
  ret ptr %1
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.basicType$coro"(i64 %0) #0 {
_llgo_0:
  %1 = alloca { ptr, ptr }, align 8
  %2 = getelementptr inbounds { ptr, ptr }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 80)
  %6 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %5, i32 0, i32 0
  %7 = icmp sge i64 %0, 25
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %7)
  %8 = getelementptr inbounds i64, ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.sizeBasicTypes", i64 %0
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %5, i32 0, i32 2
  %11 = trunc i64 %0 to i32
  %12 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %5, i32 0, i32 6
  %13 = trunc i64 %0 to i8
  store i64 %9, ptr %6, align 4
  store i32 %11, ptr %10, align 4
  store i8 %13, ptr %12, align 1
  %14 = getelementptr inbounds { ptr, ptr }, ptr %1, i32 0, i32 1
  store ptr %5, ptr %14, align 8
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %15 = call i64 @llvm.coro.size.i64()
  %16 = call ptr @malloc(i64 %15)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %17 = phi ptr [ null, %_llgo_0 ], [ %16, %_llgo_2 ]
  %18 = call ptr @llvm.coro.begin(token %3, ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %19 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %19, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %20 = call i1 @llvm.coro.end(ptr %18, i1 false, token none)
  ret ptr %18

_llgo_5:                                          ; preds = %_llgo_1, %_llgo_3
  %21 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %21, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %22 = call ptr @llvm.coro.free(token %3, ptr %18)
  call void @free(ptr %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/gblarray.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.init$guard", align 1
  call void @"github.com/goplus/llgo/runtime/abi.init"()
  store i64 16, ptr getelementptr inbounds (i64, ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.sizeBasicTypes", i64 24), align 4
  %1 = call ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.basicType"(i64 24)
  store ptr %1, ptr getelementptr inbounds (ptr, ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.basicTypes", i64 24), align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/gblarray.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.Basic"(i64 24)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 6
  %2 = load i8, ptr %1, align 1
  %3 = zext i8 %2 to i64
  %4 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 0
  %5 = load i64, ptr %4, align 4
  %6 = call i32 (ptr, ...) @printf(ptr @0, i64 %3, i64 %5)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %4 = call ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.Basic"(i64 24)
  %5 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %4, i32 0, i32 6
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %4, i32 0, i32 0
  %9 = load i64, ptr %8, align 4
  %10 = call i32 (ptr, ...) @printf(ptr @1, i64 %7, i64 %9)
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %11 = call i64 @llvm.coro.size.i64()
  %12 = call ptr @malloc(i64 %11)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %13 = phi ptr [ null, %_llgo_0 ], [ %12, %_llgo_2 ]
  %14 = call ptr @llvm.coro.begin(token %2, ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %15 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %15, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %16 = call i1 @llvm.coro.end(ptr %14, i1 false, token none)
  ret ptr %14

_llgo_5:                                          ; preds = %_llgo_1, %_llgo_3
  %17 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %17, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %18 = call ptr @llvm.coro.free(token %2, ptr %14)
  call void @free(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

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

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/abi.init"()

declare i32 @printf(ptr, ...)

attributes #0 = { presplitcoroutine }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nounwind }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nounwind memory(argmem: read) }
