; ModuleID = 'github.com/goplus/llgo/cl/_testrt/closureconv'
source_filename = "github.com/goplus/llgo/cl/_testrt/closureconv"

%"github.com/goplus/llgo/cl/_testrt/closureconv.Call" = type { %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", i64 }
%"github.com/goplus/llgo/cl/_testrt/closureconv.Func" = type { ptr, ptr, i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/closureconv.init$guard" = global i1 false, align 1

define i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = add i64 %1, %2
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = add i64 %3, %5
  ret i64 %6
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add$coro"(ptr %0, i64 %1, i64 %2) #0 {
_llgo_0:
  %3 = alloca { ptr, i64 }, align 8
  %4 = getelementptr inbounds { ptr, i64 }, ptr %3, i32 0, i32 0
  store ptr null, ptr %4, align 8
  %5 = call token @llvm.coro.id(i32 0, ptr %3, ptr null, ptr null)
  %6 = call i1 @llvm.coro.alloc(token %5)
  br i1 %6, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %7 = add i64 %1, %2
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %0, i32 0, i32 1
  %9 = load i64, ptr %8, align 4
  %10 = add i64 %7, %9
  %11 = getelementptr inbounds { ptr, i64 }, ptr %3, i32 0, i32 1
  store i64 %10, ptr %11, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %12 = call i64 @llvm.coro.size.i64()
  %13 = call ptr @malloc(i64 %12)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %14 = phi ptr [ null, %_llgo_0 ], [ %13, %_llgo_2 ]
  %15 = call ptr @llvm.coro.begin(token %5, ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %16 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %16, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %17 = call i1 @llvm.coro.end(ptr %15, i1 false, token none)
  ret ptr %15

_llgo_5:                                          ; preds = %_llgo_1, %_llgo_3
  %18 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %18, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %19 = call ptr @llvm.coro.free(token %5, ptr %15)
  call void @free(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.add"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.add$coro"(i64 %0, i64 %1) #0 {
_llgo_0:
  %2 = alloca { ptr, i64 }, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %6 = add i64 %0, %1
  %7 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 %6, ptr %7, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %8 = call i64 @llvm.coro.size.i64()
  %9 = call ptr @malloc(i64 %8)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %10 = phi ptr [ null, %_llgo_0 ], [ %9, %_llgo_2 ]
  %11 = call ptr @llvm.coro.begin(token %4, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %12 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %13 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_5:                                          ; preds = %_llgo_1, %_llgo_3
  %14 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %14, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %15 = call ptr @llvm.coro.free(token %4, ptr %11)
  call void @free(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo1"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %1, i32 0, i32 1
  store i64 %0, ptr %2, align 4
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %4 = getelementptr inbounds { ptr }, ptr %3, i32 0, i32 0
  store ptr %1, ptr %4, align 8
  %5 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add$bound", ptr undef, i1 undef }, ptr %3, 1
  %6 = insertvalue { ptr, ptr, i1 } %5, i1 false, 2
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %1, i32 0, i32 0
  %8 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  store { ptr, ptr, i1 } %6, ptr %8, align 8
  %9 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %8, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %9, ptr %7, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %1, i32 0, i32 0
  %11 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %10, align 8
  ret %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %11
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo1$coro"(i64 %0) #0 {
_llgo_0:
  %1 = alloca { ptr, %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" }, align 8
  %2 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %5, i32 0, i32 1
  store i64 %0, ptr %6, align 4
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %8 = getelementptr inbounds { ptr }, ptr %7, i32 0, i32 0
  store ptr %5, ptr %8, align 8
  %9 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add$bound", ptr undef, i1 undef }, ptr %7, 1
  %10 = insertvalue { ptr, ptr, i1 } %9, i1 false, 2
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %5, i32 0, i32 0
  %12 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  store { ptr, ptr, i1 } %10, ptr %12, align 8
  %13 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %12, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %13, ptr %11, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %5, i32 0, i32 0
  %15 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %14, align 8
  %16 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" }, ptr %1, i32 0, i32 1
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %15, ptr %16, align 8
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %17 = call i64 @llvm.coro.size.i64()
  %18 = call ptr @malloc(i64 %17)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %19 = phi ptr [ null, %_llgo_0 ], [ %18, %_llgo_2 ]
  %20 = call ptr @llvm.coro.begin(token %3, ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %21 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %21, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %22 = call i1 @llvm.coro.end(ptr %20, i1 false, token none)
  ret ptr %20

_llgo_5:                                          ; preds = %_llgo_1, %_llgo_3
  %23 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %23, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %24 = call ptr @llvm.coro.free(token %3, ptr %20)
  call void @free(ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo2"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add$bound", ptr undef, i1 undef }, ptr %1, 1
  %4 = insertvalue { ptr, ptr, i1 } %3, i1 false, 2
  %5 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  store { ptr, ptr, i1 } %4, ptr %5, align 8
  %6 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %5, align 8
  ret %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %6
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo2$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr, %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" }, align 8
  %1 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %6 = getelementptr inbounds { ptr }, ptr %5, i32 0, i32 0
  store ptr %4, ptr %6, align 8
  %7 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add$bound", ptr undef, i1 undef }, ptr %5, 1
  %8 = insertvalue { ptr, ptr, i1 } %7, i1 false, 2
  %9 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  store { ptr, ptr, i1 } %8, ptr %9, align 8
  %10 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %9, align 8
  %11 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" }, ptr %0, i32 0, i32 1
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %10, ptr %11, align 8
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %12 = call i64 @llvm.coro.size.i64()
  %13 = call ptr @malloc(i64 %12)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %14 = phi ptr [ null, %_llgo_0 ], [ %13, %_llgo_2 ]
  %15 = call ptr @llvm.coro.begin(token %2, ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %16 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %16, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %17 = call i1 @llvm.coro.end(ptr %15, i1 false, token none)
  ret ptr %15

_llgo_5:                                          ; preds = %_llgo_1, %_llgo_3
  %18 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %18, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %19 = call ptr @llvm.coro.free(token %2, ptr %15)
  call void @free(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo3"() {
_llgo_0:
  ret %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/closureconv.add", ptr null, i1 false }
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo3$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr, %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" }, align 8
  %1 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %4 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" }, ptr %0, i32 0, i32 1
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/closureconv.add", ptr null, i1 false }, ptr %4, align 8
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call i64 @llvm.coro.size.i64()
  %6 = call ptr @malloc(i64 %5)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %7 = phi ptr [ null, %_llgo_0 ], [ %6, %_llgo_2 ]
  %8 = call ptr @llvm.coro.begin(token %2, ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %9 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %9, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %10 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_5:                                          ; preds = %_llgo_1, %_llgo_3
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %12 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4"() {
_llgo_0:
  ret %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/closureconv.demo4$1", ptr null, i1 false }
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr, %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" }, align 8
  %1 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %4 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" }, ptr %0, i32 0, i32 1
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/closureconv.demo4$1", ptr null, i1 false }, ptr %4, align 8
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call i64 @llvm.coro.size.i64()
  %6 = call ptr @malloc(i64 %5)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %7 = phi ptr [ null, %_llgo_0 ], [ %6, %_llgo_2 ]
  %8 = call ptr @llvm.coro.begin(token %2, ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %9 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %9, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %10 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_5:                                          ; preds = %_llgo_1, %_llgo_3
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %12 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4$1$coro"(i64 %0, i64 %1) #0 {
_llgo_0:
  %2 = alloca { ptr, i64 }, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %6 = add i64 %0, %1
  %7 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 %6, ptr %7, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %8 = call i64 @llvm.coro.size.i64()
  %9 = call ptr @malloc(i64 %8)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %10 = phi ptr [ null, %_llgo_0 ], [ %9, %_llgo_2 ]
  %11 = call ptr @llvm.coro.begin(token %4, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %12 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %13 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_5:                                          ; preds = %_llgo_1, %_llgo_3
  %14 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %14, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %15 = call ptr @llvm.coro.free(token %4, ptr %11)
  call void @free(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5$1", ptr undef, i1 undef }, ptr %2, 1
  %5 = insertvalue { ptr, ptr, i1 } %4, i1 false, 2
  %6 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  store { ptr, ptr, i1 } %5, ptr %6, align 8
  %7 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %6, align 8
  ret %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %7
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5$coro"(i64 %0) #0 {
_llgo_0:
  %1 = alloca { ptr, %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" }, align 8
  %2 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %5, align 4
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %7 = getelementptr inbounds { ptr }, ptr %6, i32 0, i32 0
  store ptr %5, ptr %7, align 8
  %8 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5$1", ptr undef, i1 undef }, ptr %6, 1
  %9 = insertvalue { ptr, ptr, i1 } %8, i1 false, 2
  %10 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  store { ptr, ptr, i1 } %9, ptr %10, align 8
  %11 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %10, align 8
  %12 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" }, ptr %1, i32 0, i32 1
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %11, ptr %12, align 8
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %13 = call i64 @llvm.coro.size.i64()
  %14 = call ptr @malloc(i64 %13)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %15 = phi ptr [ null, %_llgo_0 ], [ %14, %_llgo_2 ]
  %16 = call ptr @llvm.coro.begin(token %3, ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %17 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %17, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %18 = call i1 @llvm.coro.end(ptr %16, i1 false, token none)
  ret ptr %16

_llgo_5:                                          ; preds = %_llgo_1, %_llgo_3
  %19 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %19, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %20 = call ptr @llvm.coro.free(token %3, ptr %16)
  call void @free(ptr %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5$1"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = add i64 %1, %2
  %4 = load { ptr }, ptr %0, align 8
  %5 = extractvalue { ptr } %4, 0
  %6 = load i64, ptr %5, align 4
  %7 = add i64 %3, %6
  ret i64 %7
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5$1$coro"(ptr %0, i64 %1, i64 %2) #0 {
_llgo_0:
  %3 = alloca { ptr, i64 }, align 8
  %4 = getelementptr inbounds { ptr, i64 }, ptr %3, i32 0, i32 0
  store ptr null, ptr %4, align 8
  %5 = call token @llvm.coro.id(i32 0, ptr %3, ptr null, ptr null)
  %6 = call i1 @llvm.coro.alloc(token %5)
  br i1 %6, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %7 = add i64 %1, %2
  %8 = load { ptr }, ptr %0, align 8
  %9 = extractvalue { ptr } %8, 0
  %10 = load i64, ptr %9, align 4
  %11 = add i64 %7, %10
  %12 = getelementptr inbounds { ptr, i64 }, ptr %3, i32 0, i32 1
  store i64 %11, ptr %12, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %13 = call i64 @llvm.coro.size.i64()
  %14 = call ptr @malloc(i64 %13)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %15 = phi ptr [ null, %_llgo_0 ], [ %14, %_llgo_2 ]
  %16 = call ptr @llvm.coro.begin(token %5, ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %17 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %17, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %18 = call i1 @llvm.coro.end(ptr %16, i1 false, token none)
  ret ptr %16

_llgo_5:                                          ; preds = %_llgo_1, %_llgo_3
  %19 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %19, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %20 = call ptr @llvm.coro.free(token %5, ptr %16)
  call void @free(ptr %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/closureconv.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/closureconv.main"() {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo1"(i64 1)
  %1 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %0, 0
  %2 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %0, 1
  %3 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %0, 2
  br i1 %3, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call i64 %1(ptr %2, i64 99, i64 200)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call ptr %1(ptr %2, i64 99, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %5)
  %6 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %7 = getelementptr inbounds { ptr, i64 }, ptr %6, i32 0, i32 1
  %8 = load i64, ptr %7, align 4
  call void @llvm.coro.destroy(ptr %5)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  %9 = phi i64 [ %4, %_llgo_1 ], [ %8, %_llgo_2 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %10 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo2"()
  %11 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %10, 0
  %12 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %10, 1
  %13 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %10, 2
  br i1 %13, label %_llgo_5, label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3
  %14 = call i64 %11(ptr %12, i64 100, i64 200)
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_3
  %15 = call ptr %11(ptr %12, i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %15)
  %16 = call ptr @llvm.coro.promise(ptr %15, i32 8, i1 false)
  %17 = getelementptr inbounds { ptr, i64 }, ptr %16, i32 0, i32 1
  %18 = load i64, ptr %17, align 4
  call void @llvm.coro.destroy(ptr %15)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %19 = phi i64 [ %14, %_llgo_4 ], [ %18, %_llgo_5 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %20 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo3"()
  %21 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %20, 0
  %22 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %20, 1
  %23 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %20, 2
  br i1 %23, label %_llgo_8, label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6
  %24 = call i64 %21(ptr %22, i64 100, i64 200)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_6
  %25 = call ptr %21(ptr %22, i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %25)
  %26 = call ptr @llvm.coro.promise(ptr %25, i32 8, i1 false)
  %27 = getelementptr inbounds { ptr, i64 }, ptr %26, i32 0, i32 1
  %28 = load i64, ptr %27, align 4
  call void @llvm.coro.destroy(ptr %25)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_7
  %29 = phi i64 [ %24, %_llgo_7 ], [ %28, %_llgo_8 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %30 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4"()
  %31 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %30, 0
  %32 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %30, 1
  %33 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %30, 2
  br i1 %33, label %_llgo_11, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  %34 = call i64 %31(ptr %32, i64 100, i64 200)
  br label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_9
  %35 = call ptr %31(ptr %32, i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %35)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %35)
  %36 = call ptr @llvm.coro.promise(ptr %35, i32 8, i1 false)
  %37 = getelementptr inbounds { ptr, i64 }, ptr %36, i32 0, i32 1
  %38 = load i64, ptr %37, align 4
  call void @llvm.coro.destroy(ptr %35)
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %39 = phi i64 [ %34, %_llgo_10 ], [ %38, %_llgo_11 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %39)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %40 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 1)
  %41 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %40, 0
  %42 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %40, 1
  %43 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %40, 2
  br i1 %43, label %_llgo_14, label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12
  %44 = call i64 %41(ptr %42, i64 99, i64 200)
  br label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_12
  %45 = call ptr %41(ptr %42, i64 99, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %45)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %45)
  %46 = call ptr @llvm.coro.promise(ptr %45, i32 8, i1 false)
  %47 = getelementptr inbounds { ptr, i64 }, ptr %46, i32 0, i32 1
  %48 = load i64, ptr %47, align 4
  call void @llvm.coro.destroy(ptr %45)
  br label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14, %_llgo_13
  %49 = phi i64 [ %44, %_llgo_13 ], [ %48, %_llgo_14 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %49)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %50 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 1)
  %51 = alloca { ptr, ptr, i1 }, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %50, ptr %51, align 8
  %52 = load { ptr, ptr, i1 }, ptr %51, align 8
  %53 = extractvalue { ptr, ptr, i1 } %52, 0
  %54 = extractvalue { ptr, ptr, i1 } %52, 1
  %55 = extractvalue { ptr, ptr, i1 } %52, 2
  br i1 %55, label %_llgo_17, label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15
  %56 = call i64 %53(ptr %54, i64 99, i64 200)
  br label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_15
  %57 = call ptr %53(ptr %54, i64 99, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %57)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %57)
  %58 = call ptr @llvm.coro.promise(ptr %57, i32 8, i1 false)
  %59 = getelementptr inbounds { ptr, i64 }, ptr %58, i32 0, i32 1
  %60 = load i64, ptr %59, align 4
  call void @llvm.coro.destroy(ptr %57)
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %61 = phi i64 [ %56, %_llgo_16 ], [ %60, %_llgo_17 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %61)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %62 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 1)
  %63 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %62, 0
  %64 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %62, 1
  %65 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %62, 2
  br i1 %65, label %_llgo_20, label %_llgo_19

_llgo_19:                                         ; preds = %_llgo_18
  %66 = call i64 %63(ptr %64, i64 99, i64 200)
  br label %_llgo_21

_llgo_20:                                         ; preds = %_llgo_18
  %67 = call ptr %63(ptr %64, i64 99, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %67)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %67)
  %68 = call ptr @llvm.coro.promise(ptr %67, i32 8, i1 false)
  %69 = getelementptr inbounds { ptr, i64 }, ptr %68, i32 0, i32 1
  %70 = load i64, ptr %69, align 4
  call void @llvm.coro.destroy(ptr %67)
  br label %_llgo_21

_llgo_21:                                         ; preds = %_llgo_20, %_llgo_19
  %71 = phi i64 [ %66, %_llgo_19 ], [ %70, %_llgo_20 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %71)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %4 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo1"(i64 1)
  %5 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %4, 0
  %6 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %4, 1
  %7 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %4, 2
  br i1 %7, label %_llgo_9, label %_llgo_8

_llgo_2:                                          ; preds = %_llgo_0
  %8 = call i64 @llvm.coro.size.i64()
  %9 = call ptr @malloc(i64 %8)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %10 = phi ptr [ null, %_llgo_0 ], [ %9, %_llgo_2 ]
  %11 = call ptr @llvm.coro.begin(token %2, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %12 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_53, %_llgo_46, %_llgo_39, %_llgo_32, %_llgo_25, %_llgo_18, %_llgo_11, %_llgo_3
  %13 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_5:                                          ; preds = %_llgo_52, %_llgo_55, %_llgo_53, %_llgo_48, %_llgo_46, %_llgo_41, %_llgo_39, %_llgo_34, %_llgo_32, %_llgo_27, %_llgo_25, %_llgo_20, %_llgo_18, %_llgo_13, %_llgo_11, %_llgo_3
  %14 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %14, label %_llgo_4 [
    i8 0, label %_llgo_57
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_57, %_llgo_5
  %15 = call ptr @llvm.coro.free(token %2, ptr %11)
  call void @free(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_1
  %16 = call i64 %5(ptr %6, i64 99, i64 200)
  br label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_1
  %17 = call ptr %5(ptr %6, i64 99, i64 200)
  br label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_14, %_llgo_8
  %18 = phi i64 [ %16, %_llgo_8 ], [ %30, %_llgo_14 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %19 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo2"()
  %20 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %19, 0
  %21 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %19, 1
  %22 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %19, 2
  br i1 %22, label %_llgo_16, label %_llgo_15

_llgo_11:                                         ; preds = %_llgo_9
  %23 = call ptr @llvm.coro.promise(ptr %17, i32 8, i1 false)
  %24 = getelementptr inbounds { ptr, i64 }, ptr %23, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %24, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %17)
  %25 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %25, label %_llgo_4 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_12:                                         ; preds = %_llgo_11
  %26 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %17)
  br i1 %26, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %27 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %27)
  br label %_llgo_5

_llgo_14:                                         ; preds = %_llgo_12
  %28 = call ptr @llvm.coro.promise(ptr %17, i32 8, i1 false)
  %29 = getelementptr inbounds { ptr, i64 }, ptr %28, i32 0, i32 1
  %30 = load i64, ptr %29, align 4
  call void @llvm.coro.destroy(ptr %17)
  br label %_llgo_10

_llgo_15:                                         ; preds = %_llgo_10
  %31 = call i64 %20(ptr %21, i64 100, i64 200)
  br label %_llgo_17

_llgo_16:                                         ; preds = %_llgo_10
  %32 = call ptr %20(ptr %21, i64 100, i64 200)
  br label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_21, %_llgo_15
  %33 = phi i64 [ %31, %_llgo_15 ], [ %45, %_llgo_21 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %33)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %34 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo3"()
  %35 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %34, 0
  %36 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %34, 1
  %37 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %34, 2
  br i1 %37, label %_llgo_23, label %_llgo_22

_llgo_18:                                         ; preds = %_llgo_16
  %38 = call ptr @llvm.coro.promise(ptr %32, i32 8, i1 false)
  %39 = getelementptr inbounds { ptr, i64 }, ptr %38, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %39, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %32)
  %40 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %40, label %_llgo_4 [
    i8 0, label %_llgo_19
    i8 1, label %_llgo_5
  ]

_llgo_19:                                         ; preds = %_llgo_18
  %41 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %32)
  br i1 %41, label %_llgo_20, label %_llgo_21

_llgo_20:                                         ; preds = %_llgo_19
  %42 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %42)
  br label %_llgo_5

_llgo_21:                                         ; preds = %_llgo_19
  %43 = call ptr @llvm.coro.promise(ptr %32, i32 8, i1 false)
  %44 = getelementptr inbounds { ptr, i64 }, ptr %43, i32 0, i32 1
  %45 = load i64, ptr %44, align 4
  call void @llvm.coro.destroy(ptr %32)
  br label %_llgo_17

_llgo_22:                                         ; preds = %_llgo_17
  %46 = call i64 %35(ptr %36, i64 100, i64 200)
  br label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_17
  %47 = call ptr %35(ptr %36, i64 100, i64 200)
  br label %_llgo_25

_llgo_24:                                         ; preds = %_llgo_28, %_llgo_22
  %48 = phi i64 [ %46, %_llgo_22 ], [ %60, %_llgo_28 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %48)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %49 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4"()
  %50 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %49, 0
  %51 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %49, 1
  %52 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %49, 2
  br i1 %52, label %_llgo_30, label %_llgo_29

_llgo_25:                                         ; preds = %_llgo_23
  %53 = call ptr @llvm.coro.promise(ptr %47, i32 8, i1 false)
  %54 = getelementptr inbounds { ptr, i64 }, ptr %53, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %54, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %47)
  %55 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %55, label %_llgo_4 [
    i8 0, label %_llgo_26
    i8 1, label %_llgo_5
  ]

_llgo_26:                                         ; preds = %_llgo_25
  %56 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %47)
  br i1 %56, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %57 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %47)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %47)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %57)
  br label %_llgo_5

_llgo_28:                                         ; preds = %_llgo_26
  %58 = call ptr @llvm.coro.promise(ptr %47, i32 8, i1 false)
  %59 = getelementptr inbounds { ptr, i64 }, ptr %58, i32 0, i32 1
  %60 = load i64, ptr %59, align 4
  call void @llvm.coro.destroy(ptr %47)
  br label %_llgo_24

_llgo_29:                                         ; preds = %_llgo_24
  %61 = call i64 %50(ptr %51, i64 100, i64 200)
  br label %_llgo_31

_llgo_30:                                         ; preds = %_llgo_24
  %62 = call ptr %50(ptr %51, i64 100, i64 200)
  br label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_35, %_llgo_29
  %63 = phi i64 [ %61, %_llgo_29 ], [ %75, %_llgo_35 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %63)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %64 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 1)
  %65 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %64, 0
  %66 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %64, 1
  %67 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %64, 2
  br i1 %67, label %_llgo_37, label %_llgo_36

_llgo_32:                                         ; preds = %_llgo_30
  %68 = call ptr @llvm.coro.promise(ptr %62, i32 8, i1 false)
  %69 = getelementptr inbounds { ptr, i64 }, ptr %68, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %69, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %62)
  %70 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %70, label %_llgo_4 [
    i8 0, label %_llgo_33
    i8 1, label %_llgo_5
  ]

_llgo_33:                                         ; preds = %_llgo_32
  %71 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %62)
  br i1 %71, label %_llgo_34, label %_llgo_35

_llgo_34:                                         ; preds = %_llgo_33
  %72 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %62)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %62)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %72)
  br label %_llgo_5

_llgo_35:                                         ; preds = %_llgo_33
  %73 = call ptr @llvm.coro.promise(ptr %62, i32 8, i1 false)
  %74 = getelementptr inbounds { ptr, i64 }, ptr %73, i32 0, i32 1
  %75 = load i64, ptr %74, align 4
  call void @llvm.coro.destroy(ptr %62)
  br label %_llgo_31

_llgo_36:                                         ; preds = %_llgo_31
  %76 = call i64 %65(ptr %66, i64 99, i64 200)
  br label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_31
  %77 = call ptr %65(ptr %66, i64 99, i64 200)
  br label %_llgo_39

_llgo_38:                                         ; preds = %_llgo_42, %_llgo_36
  %78 = phi i64 [ %76, %_llgo_36 ], [ %92, %_llgo_42 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %78)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %79 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 1)
  %80 = alloca { ptr, ptr, i1 }, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %79, ptr %80, align 8
  %81 = load { ptr, ptr, i1 }, ptr %80, align 8
  %82 = extractvalue { ptr, ptr, i1 } %81, 0
  %83 = extractvalue { ptr, ptr, i1 } %81, 1
  %84 = extractvalue { ptr, ptr, i1 } %81, 2
  br i1 %84, label %_llgo_44, label %_llgo_43

_llgo_39:                                         ; preds = %_llgo_37
  %85 = call ptr @llvm.coro.promise(ptr %77, i32 8, i1 false)
  %86 = getelementptr inbounds { ptr, i64 }, ptr %85, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %86, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %77)
  %87 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %87, label %_llgo_4 [
    i8 0, label %_llgo_40
    i8 1, label %_llgo_5
  ]

_llgo_40:                                         ; preds = %_llgo_39
  %88 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %77)
  br i1 %88, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %89 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %77)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %77)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %89)
  br label %_llgo_5

_llgo_42:                                         ; preds = %_llgo_40
  %90 = call ptr @llvm.coro.promise(ptr %77, i32 8, i1 false)
  %91 = getelementptr inbounds { ptr, i64 }, ptr %90, i32 0, i32 1
  %92 = load i64, ptr %91, align 4
  call void @llvm.coro.destroy(ptr %77)
  br label %_llgo_38

_llgo_43:                                         ; preds = %_llgo_38
  %93 = call i64 %82(ptr %83, i64 99, i64 200)
  br label %_llgo_45

_llgo_44:                                         ; preds = %_llgo_38
  %94 = call ptr %82(ptr %83, i64 99, i64 200)
  br label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_49, %_llgo_43
  %95 = phi i64 [ %93, %_llgo_43 ], [ %107, %_llgo_49 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %95)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %96 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 1)
  %97 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %96, 0
  %98 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %96, 1
  %99 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %96, 2
  br i1 %99, label %_llgo_51, label %_llgo_50

_llgo_46:                                         ; preds = %_llgo_44
  %100 = call ptr @llvm.coro.promise(ptr %94, i32 8, i1 false)
  %101 = getelementptr inbounds { ptr, i64 }, ptr %100, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %101, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %94)
  %102 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %102, label %_llgo_4 [
    i8 0, label %_llgo_47
    i8 1, label %_llgo_5
  ]

_llgo_47:                                         ; preds = %_llgo_46
  %103 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %94)
  br i1 %103, label %_llgo_48, label %_llgo_49

_llgo_48:                                         ; preds = %_llgo_47
  %104 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %94)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %94)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %104)
  br label %_llgo_5

_llgo_49:                                         ; preds = %_llgo_47
  %105 = call ptr @llvm.coro.promise(ptr %94, i32 8, i1 false)
  %106 = getelementptr inbounds { ptr, i64 }, ptr %105, i32 0, i32 1
  %107 = load i64, ptr %106, align 4
  call void @llvm.coro.destroy(ptr %94)
  br label %_llgo_45

_llgo_50:                                         ; preds = %_llgo_45
  %108 = call i64 %97(ptr %98, i64 99, i64 200)
  br label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_45
  %109 = call ptr %97(ptr %98, i64 99, i64 200)
  br label %_llgo_53

_llgo_52:                                         ; preds = %_llgo_56, %_llgo_50
  %110 = phi i64 [ %108, %_llgo_50 ], [ %118, %_llgo_56 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %110)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_53:                                         ; preds = %_llgo_51
  %111 = call ptr @llvm.coro.promise(ptr %109, i32 8, i1 false)
  %112 = getelementptr inbounds { ptr, i64 }, ptr %111, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %112, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %109)
  %113 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %113, label %_llgo_4 [
    i8 0, label %_llgo_54
    i8 1, label %_llgo_5
  ]

_llgo_54:                                         ; preds = %_llgo_53
  %114 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %109)
  br i1 %114, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  %115 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %109)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %109)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %115)
  br label %_llgo_5

_llgo_56:                                         ; preds = %_llgo_54
  %116 = call ptr @llvm.coro.promise(ptr %109, i32 8, i1 false)
  %117 = getelementptr inbounds { ptr, i64 }, ptr %116, i32 0, i32 1
  %118 = load i64, ptr %117, align 4
  call void @llvm.coro.destroy(ptr %109)
  br label %_llgo_52

_llgo_57:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

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

define i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add$bound"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = load { ptr }, ptr %0, align 8
  %4 = extractvalue { ptr } %3, 0
  %5 = call i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add"(ptr %4, i64 %1, i64 %2)
  ret i64 %5
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add$bound$coro"(ptr %0, i64 %1, i64 %2) #0 {
_llgo_0:
  %3 = alloca { ptr, i64 }, align 8
  %4 = getelementptr inbounds { ptr, i64 }, ptr %3, i32 0, i32 0
  store ptr null, ptr %4, align 8
  %5 = call token @llvm.coro.id(i32 0, ptr %3, ptr null, ptr null)
  %6 = call i1 @llvm.coro.alloc(token %5)
  br i1 %6, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %7 = load { ptr }, ptr %0, align 8
  %8 = extractvalue { ptr } %7, 0
  %9 = call i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add"(ptr %8, i64 %1, i64 %2)
  %10 = getelementptr inbounds { ptr, i64 }, ptr %3, i32 0, i32 1
  store i64 %9, ptr %10, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %11 = call i64 @llvm.coro.size.i64()
  %12 = call ptr @malloc(i64 %11)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %13 = phi ptr [ null, %_llgo_0 ], [ %12, %_llgo_2 ]
  %14 = call ptr @llvm.coro.begin(token %5, ptr %13)
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
  %18 = call ptr @llvm.coro.free(token %5, ptr %14)
  call void @free(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/closureconv.add"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = tail call i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.add"(i64 %1, i64 %2)
  ret i64 %3
}

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/closureconv.demo4$1"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = tail call i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4$1"(i64 %1, i64 %2)
  ret i64 %3
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr)

; Function Attrs: nounwind memory(none)
declare ptr @llvm.coro.promise(ptr nocapture, i32, i1) #3

declare void @llvm.coro.destroy(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

attributes #0 = { presplitcoroutine }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nounwind }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nounwind memory(argmem: read) }
