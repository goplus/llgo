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

_llgo_1:                                          ; preds = %_llgo_3
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
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %16 = call i1 @llvm.coro.end(ptr %15, i1 false, token none)
  ret ptr %15

_llgo_5:                                          ; preds = %_llgo_1
  %17 = getelementptr inbounds { ptr, i64 }, ptr %3, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %17)
  %18 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %18, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %19 = call ptr @llvm.coro.free(token %5, ptr %15)
  call void @free(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_3
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
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %12 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_5:                                          ; preds = %_llgo_1
  %13 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %13)
  %14 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %14, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %15 = call ptr @llvm.coro.free(token %4, ptr %11)
  call void @free(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_3
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
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %21 = call i1 @llvm.coro.end(ptr %20, i1 false, token none)
  ret ptr %20

_llgo_5:                                          ; preds = %_llgo_1
  %22 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %22)
  %23 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %23, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %24 = call ptr @llvm.coro.free(token %3, ptr %20)
  call void @free(ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_3
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
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %16 = call i1 @llvm.coro.end(ptr %15, i1 false, token none)
  ret ptr %15

_llgo_5:                                          ; preds = %_llgo_1
  %17 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %17)
  %18 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %18, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %19 = call ptr @llvm.coro.free(token %2, ptr %15)
  call void @free(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_3
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
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %9 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_5:                                          ; preds = %_llgo_1
  %10 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %10)
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %12 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_3
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
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %9 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_5:                                          ; preds = %_llgo_1
  %10 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %10)
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %12 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_3
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
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %12 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_5:                                          ; preds = %_llgo_1
  %13 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %13)
  %14 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %14, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %15 = call ptr @llvm.coro.free(token %4, ptr %11)
  call void @free(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_3
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
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %17 = call i1 @llvm.coro.end(ptr %16, i1 false, token none)
  ret ptr %16

_llgo_5:                                          ; preds = %_llgo_1
  %18 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %18)
  %19 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %19, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %20 = call ptr @llvm.coro.free(token %3, ptr %16)
  call void @free(ptr %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
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
  %3 = load { ptr }, ptr %0, align 8
  %4 = alloca { ptr, i64 }, align 8
  %5 = getelementptr inbounds { ptr, i64 }, ptr %4, i32 0, i32 0
  store ptr null, ptr %5, align 8
  %6 = call token @llvm.coro.id(i32 0, ptr %4, ptr null, ptr null)
  %7 = call i1 @llvm.coro.alloc(token %6)
  br i1 %7, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %8 = add i64 %1, %2
  %9 = extractvalue { ptr } %3, 0
  %10 = load i64, ptr %9, align 4
  %11 = add i64 %8, %10
  %12 = getelementptr inbounds { ptr, i64 }, ptr %4, i32 0, i32 1
  store i64 %11, ptr %12, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %13 = call i64 @llvm.coro.size.i64()
  %14 = call ptr @malloc(i64 %13)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %15 = phi ptr [ null, %_llgo_0 ], [ %14, %_llgo_2 ]
  %16 = call ptr @llvm.coro.begin(token %6, ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %17 = call i1 @llvm.coro.end(ptr %16, i1 false, token none)
  ret ptr %16

_llgo_5:                                          ; preds = %_llgo_1
  %18 = getelementptr inbounds { ptr, i64 }, ptr %4, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %18)
  %19 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %19, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %20 = call ptr @llvm.coro.free(token %6, ptr %16)
  call void @free(ptr %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_3
  %4 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo1"(i64 1)
  %5 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %4, 0
  %6 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %4, 1
  %7 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %4, 2
  br i1 %7, label %_llgo_8, label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %8 = call i64 @llvm.coro.size.i64()
  %9 = call ptr @malloc(i64 %8)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %10 = phi ptr [ null, %_llgo_0 ], [ %9, %_llgo_2 ]
  %11 = call ptr @llvm.coro.begin(token %2, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_86, %_llgo_85, %_llgo_74, %_llgo_73, %_llgo_62, %_llgo_61, %_llgo_50, %_llgo_49, %_llgo_38, %_llgo_37, %_llgo_26, %_llgo_25, %_llgo_14, %_llgo_13
  %12 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_5:                                          ; preds = %_llgo_81, %_llgo_89, %_llgo_86, %_llgo_85, %_llgo_77, %_llgo_74, %_llgo_73, %_llgo_65, %_llgo_62, %_llgo_61, %_llgo_53, %_llgo_50, %_llgo_49, %_llgo_41, %_llgo_38, %_llgo_37, %_llgo_29, %_llgo_26, %_llgo_25, %_llgo_17, %_llgo_14, %_llgo_13
  %13 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %13)
  %14 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %14, label %_llgo_4 [
    i8 0, label %_llgo_91
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_91, %_llgo_5
  %15 = call ptr @llvm.coro.free(token %2, ptr %11)
  call void @free(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %16 = call i64 %5(ptr %6, i64 99, i64 200)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  %17 = call ptr %5(ptr %6, i64 99, i64 200)
  br label %_llgo_11

_llgo_9:                                          ; preds = %_llgo_18, %_llgo_7
  %18 = phi i64 [ %16, %_llgo_7 ], [ %35, %_llgo_18 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %19 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo2"()
  %20 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %19, 0
  %21 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %19, 1
  %22 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %19, 2
  br i1 %22, label %_llgo_20, label %_llgo_19

_llgo_10:                                         ; preds = %_llgo_11
  %23 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %17)
  br i1 %23, label %_llgo_17, label %_llgo_18

_llgo_11:                                         ; preds = %_llgo_16, %_llgo_15, %_llgo_8
  %24 = phi i1 [ true, %_llgo_8 ], [ false, %_llgo_13 ], [ false, %_llgo_14 ]
  %25 = call i1 @llvm.coro.done(ptr %17)
  br i1 %25, label %_llgo_10, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  br i1 %24, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %26 = call ptr @llvm.coro.promise(ptr %17, i32 8, i1 false)
  %27 = getelementptr inbounds { ptr, i64 }, ptr %26, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %27, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %17)
  %28 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %28, label %_llgo_4 [
    i8 0, label %_llgo_15
    i8 1, label %_llgo_5
  ]

_llgo_14:                                         ; preds = %_llgo_12
  %29 = call ptr @llvm.coro.promise(ptr %17, i32 8, i1 false)
  %30 = getelementptr inbounds { ptr, i64 }, ptr %29, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %30, ptr %11)
  %31 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %31, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_5
  ]

_llgo_15:                                         ; preds = %_llgo_13
  br label %_llgo_11

_llgo_16:                                         ; preds = %_llgo_14
  br label %_llgo_11

_llgo_17:                                         ; preds = %_llgo_10
  %32 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %32)
  br label %_llgo_5

_llgo_18:                                         ; preds = %_llgo_10
  %33 = call ptr @llvm.coro.promise(ptr %17, i32 8, i1 false)
  %34 = getelementptr inbounds { ptr, i64 }, ptr %33, i32 0, i32 1
  %35 = load i64, ptr %34, align 4
  call void @llvm.coro.destroy(ptr %17)
  br label %_llgo_9

_llgo_19:                                         ; preds = %_llgo_9
  %36 = call i64 %20(ptr %21, i64 100, i64 200)
  br label %_llgo_21

_llgo_20:                                         ; preds = %_llgo_9
  %37 = call ptr %20(ptr %21, i64 100, i64 200)
  br label %_llgo_23

_llgo_21:                                         ; preds = %_llgo_30, %_llgo_19
  %38 = phi i64 [ %36, %_llgo_19 ], [ %55, %_llgo_30 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %38)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %39 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo3"()
  %40 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %39, 0
  %41 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %39, 1
  %42 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %39, 2
  br i1 %42, label %_llgo_32, label %_llgo_31

_llgo_22:                                         ; preds = %_llgo_23
  %43 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %37)
  br i1 %43, label %_llgo_29, label %_llgo_30

_llgo_23:                                         ; preds = %_llgo_28, %_llgo_27, %_llgo_20
  %44 = phi i1 [ true, %_llgo_20 ], [ false, %_llgo_25 ], [ false, %_llgo_26 ]
  %45 = call i1 @llvm.coro.done(ptr %37)
  br i1 %45, label %_llgo_22, label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23
  br i1 %44, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %46 = call ptr @llvm.coro.promise(ptr %37, i32 8, i1 false)
  %47 = getelementptr inbounds { ptr, i64 }, ptr %46, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %47, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %37)
  %48 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %48, label %_llgo_4 [
    i8 0, label %_llgo_27
    i8 1, label %_llgo_5
  ]

_llgo_26:                                         ; preds = %_llgo_24
  %49 = call ptr @llvm.coro.promise(ptr %37, i32 8, i1 false)
  %50 = getelementptr inbounds { ptr, i64 }, ptr %49, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %50, ptr %11)
  %51 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %51, label %_llgo_4 [
    i8 0, label %_llgo_28
    i8 1, label %_llgo_5
  ]

_llgo_27:                                         ; preds = %_llgo_25
  br label %_llgo_23

_llgo_28:                                         ; preds = %_llgo_26
  br label %_llgo_23

_llgo_29:                                         ; preds = %_llgo_22
  %52 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %37)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %37)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %52)
  br label %_llgo_5

_llgo_30:                                         ; preds = %_llgo_22
  %53 = call ptr @llvm.coro.promise(ptr %37, i32 8, i1 false)
  %54 = getelementptr inbounds { ptr, i64 }, ptr %53, i32 0, i32 1
  %55 = load i64, ptr %54, align 4
  call void @llvm.coro.destroy(ptr %37)
  br label %_llgo_21

_llgo_31:                                         ; preds = %_llgo_21
  %56 = call i64 %40(ptr %41, i64 100, i64 200)
  br label %_llgo_33

_llgo_32:                                         ; preds = %_llgo_21
  %57 = call ptr %40(ptr %41, i64 100, i64 200)
  br label %_llgo_35

_llgo_33:                                         ; preds = %_llgo_42, %_llgo_31
  %58 = phi i64 [ %56, %_llgo_31 ], [ %75, %_llgo_42 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %59 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4"()
  %60 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %59, 0
  %61 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %59, 1
  %62 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %59, 2
  br i1 %62, label %_llgo_44, label %_llgo_43

_llgo_34:                                         ; preds = %_llgo_35
  %63 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %57)
  br i1 %63, label %_llgo_41, label %_llgo_42

_llgo_35:                                         ; preds = %_llgo_40, %_llgo_39, %_llgo_32
  %64 = phi i1 [ true, %_llgo_32 ], [ false, %_llgo_37 ], [ false, %_llgo_38 ]
  %65 = call i1 @llvm.coro.done(ptr %57)
  br i1 %65, label %_llgo_34, label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35
  br i1 %64, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %66 = call ptr @llvm.coro.promise(ptr %57, i32 8, i1 false)
  %67 = getelementptr inbounds { ptr, i64 }, ptr %66, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %67, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %57)
  %68 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %68, label %_llgo_4 [
    i8 0, label %_llgo_39
    i8 1, label %_llgo_5
  ]

_llgo_38:                                         ; preds = %_llgo_36
  %69 = call ptr @llvm.coro.promise(ptr %57, i32 8, i1 false)
  %70 = getelementptr inbounds { ptr, i64 }, ptr %69, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %70, ptr %11)
  %71 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %71, label %_llgo_4 [
    i8 0, label %_llgo_40
    i8 1, label %_llgo_5
  ]

_llgo_39:                                         ; preds = %_llgo_37
  br label %_llgo_35

_llgo_40:                                         ; preds = %_llgo_38
  br label %_llgo_35

_llgo_41:                                         ; preds = %_llgo_34
  %72 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %57)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %57)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %72)
  br label %_llgo_5

_llgo_42:                                         ; preds = %_llgo_34
  %73 = call ptr @llvm.coro.promise(ptr %57, i32 8, i1 false)
  %74 = getelementptr inbounds { ptr, i64 }, ptr %73, i32 0, i32 1
  %75 = load i64, ptr %74, align 4
  call void @llvm.coro.destroy(ptr %57)
  br label %_llgo_33

_llgo_43:                                         ; preds = %_llgo_33
  %76 = call i64 %60(ptr %61, i64 100, i64 200)
  br label %_llgo_45

_llgo_44:                                         ; preds = %_llgo_33
  %77 = call ptr %60(ptr %61, i64 100, i64 200)
  br label %_llgo_47

_llgo_45:                                         ; preds = %_llgo_54, %_llgo_43
  %78 = phi i64 [ %76, %_llgo_43 ], [ %95, %_llgo_54 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %78)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %79 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 1)
  %80 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %79, 0
  %81 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %79, 1
  %82 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %79, 2
  br i1 %82, label %_llgo_56, label %_llgo_55

_llgo_46:                                         ; preds = %_llgo_47
  %83 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %77)
  br i1 %83, label %_llgo_53, label %_llgo_54

_llgo_47:                                         ; preds = %_llgo_52, %_llgo_51, %_llgo_44
  %84 = phi i1 [ true, %_llgo_44 ], [ false, %_llgo_49 ], [ false, %_llgo_50 ]
  %85 = call i1 @llvm.coro.done(ptr %77)
  br i1 %85, label %_llgo_46, label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47
  br i1 %84, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  %86 = call ptr @llvm.coro.promise(ptr %77, i32 8, i1 false)
  %87 = getelementptr inbounds { ptr, i64 }, ptr %86, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %87, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %77)
  %88 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %88, label %_llgo_4 [
    i8 0, label %_llgo_51
    i8 1, label %_llgo_5
  ]

_llgo_50:                                         ; preds = %_llgo_48
  %89 = call ptr @llvm.coro.promise(ptr %77, i32 8, i1 false)
  %90 = getelementptr inbounds { ptr, i64 }, ptr %89, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %90, ptr %11)
  %91 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %91, label %_llgo_4 [
    i8 0, label %_llgo_52
    i8 1, label %_llgo_5
  ]

_llgo_51:                                         ; preds = %_llgo_49
  br label %_llgo_47

_llgo_52:                                         ; preds = %_llgo_50
  br label %_llgo_47

_llgo_53:                                         ; preds = %_llgo_46
  %92 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %77)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %77)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %92)
  br label %_llgo_5

_llgo_54:                                         ; preds = %_llgo_46
  %93 = call ptr @llvm.coro.promise(ptr %77, i32 8, i1 false)
  %94 = getelementptr inbounds { ptr, i64 }, ptr %93, i32 0, i32 1
  %95 = load i64, ptr %94, align 4
  call void @llvm.coro.destroy(ptr %77)
  br label %_llgo_45

_llgo_55:                                         ; preds = %_llgo_45
  %96 = call i64 %80(ptr %81, i64 99, i64 200)
  br label %_llgo_57

_llgo_56:                                         ; preds = %_llgo_45
  %97 = call ptr %80(ptr %81, i64 99, i64 200)
  br label %_llgo_59

_llgo_57:                                         ; preds = %_llgo_66, %_llgo_55
  %98 = phi i64 [ %96, %_llgo_55 ], [ %117, %_llgo_66 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %98)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %99 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 1)
  %100 = alloca { ptr, ptr, i1 }, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %99, ptr %100, align 8
  %101 = load { ptr, ptr, i1 }, ptr %100, align 8
  %102 = extractvalue { ptr, ptr, i1 } %101, 0
  %103 = extractvalue { ptr, ptr, i1 } %101, 1
  %104 = extractvalue { ptr, ptr, i1 } %101, 2
  br i1 %104, label %_llgo_68, label %_llgo_67

_llgo_58:                                         ; preds = %_llgo_59
  %105 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %97)
  br i1 %105, label %_llgo_65, label %_llgo_66

_llgo_59:                                         ; preds = %_llgo_64, %_llgo_63, %_llgo_56
  %106 = phi i1 [ true, %_llgo_56 ], [ false, %_llgo_61 ], [ false, %_llgo_62 ]
  %107 = call i1 @llvm.coro.done(ptr %97)
  br i1 %107, label %_llgo_58, label %_llgo_60

_llgo_60:                                         ; preds = %_llgo_59
  br i1 %106, label %_llgo_61, label %_llgo_62

_llgo_61:                                         ; preds = %_llgo_60
  %108 = call ptr @llvm.coro.promise(ptr %97, i32 8, i1 false)
  %109 = getelementptr inbounds { ptr, i64 }, ptr %108, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %109, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %97)
  %110 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %110, label %_llgo_4 [
    i8 0, label %_llgo_63
    i8 1, label %_llgo_5
  ]

_llgo_62:                                         ; preds = %_llgo_60
  %111 = call ptr @llvm.coro.promise(ptr %97, i32 8, i1 false)
  %112 = getelementptr inbounds { ptr, i64 }, ptr %111, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %112, ptr %11)
  %113 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %113, label %_llgo_4 [
    i8 0, label %_llgo_64
    i8 1, label %_llgo_5
  ]

_llgo_63:                                         ; preds = %_llgo_61
  br label %_llgo_59

_llgo_64:                                         ; preds = %_llgo_62
  br label %_llgo_59

_llgo_65:                                         ; preds = %_llgo_58
  %114 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %97)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %97)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %114)
  br label %_llgo_5

_llgo_66:                                         ; preds = %_llgo_58
  %115 = call ptr @llvm.coro.promise(ptr %97, i32 8, i1 false)
  %116 = getelementptr inbounds { ptr, i64 }, ptr %115, i32 0, i32 1
  %117 = load i64, ptr %116, align 4
  call void @llvm.coro.destroy(ptr %97)
  br label %_llgo_57

_llgo_67:                                         ; preds = %_llgo_57
  %118 = call i64 %102(ptr %103, i64 99, i64 200)
  br label %_llgo_69

_llgo_68:                                         ; preds = %_llgo_57
  %119 = call ptr %102(ptr %103, i64 99, i64 200)
  br label %_llgo_71

_llgo_69:                                         ; preds = %_llgo_78, %_llgo_67
  %120 = phi i64 [ %118, %_llgo_67 ], [ %137, %_llgo_78 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %120)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %121 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 1)
  %122 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %121, 0
  %123 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %121, 1
  %124 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %121, 2
  br i1 %124, label %_llgo_80, label %_llgo_79

_llgo_70:                                         ; preds = %_llgo_71
  %125 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %119)
  br i1 %125, label %_llgo_77, label %_llgo_78

_llgo_71:                                         ; preds = %_llgo_76, %_llgo_75, %_llgo_68
  %126 = phi i1 [ true, %_llgo_68 ], [ false, %_llgo_73 ], [ false, %_llgo_74 ]
  %127 = call i1 @llvm.coro.done(ptr %119)
  br i1 %127, label %_llgo_70, label %_llgo_72

_llgo_72:                                         ; preds = %_llgo_71
  br i1 %126, label %_llgo_73, label %_llgo_74

_llgo_73:                                         ; preds = %_llgo_72
  %128 = call ptr @llvm.coro.promise(ptr %119, i32 8, i1 false)
  %129 = getelementptr inbounds { ptr, i64 }, ptr %128, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %129, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %119)
  %130 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %130, label %_llgo_4 [
    i8 0, label %_llgo_75
    i8 1, label %_llgo_5
  ]

_llgo_74:                                         ; preds = %_llgo_72
  %131 = call ptr @llvm.coro.promise(ptr %119, i32 8, i1 false)
  %132 = getelementptr inbounds { ptr, i64 }, ptr %131, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %132, ptr %11)
  %133 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %133, label %_llgo_4 [
    i8 0, label %_llgo_76
    i8 1, label %_llgo_5
  ]

_llgo_75:                                         ; preds = %_llgo_73
  br label %_llgo_71

_llgo_76:                                         ; preds = %_llgo_74
  br label %_llgo_71

_llgo_77:                                         ; preds = %_llgo_70
  %134 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %119)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %119)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %134)
  br label %_llgo_5

_llgo_78:                                         ; preds = %_llgo_70
  %135 = call ptr @llvm.coro.promise(ptr %119, i32 8, i1 false)
  %136 = getelementptr inbounds { ptr, i64 }, ptr %135, i32 0, i32 1
  %137 = load i64, ptr %136, align 4
  call void @llvm.coro.destroy(ptr %119)
  br label %_llgo_69

_llgo_79:                                         ; preds = %_llgo_69
  %138 = call i64 %122(ptr %123, i64 99, i64 200)
  br label %_llgo_81

_llgo_80:                                         ; preds = %_llgo_69
  %139 = call ptr %122(ptr %123, i64 99, i64 200)
  br label %_llgo_83

_llgo_81:                                         ; preds = %_llgo_90, %_llgo_79
  %140 = phi i64 [ %138, %_llgo_79 ], [ %153, %_llgo_90 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %140)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_82:                                         ; preds = %_llgo_83
  %141 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %139)
  br i1 %141, label %_llgo_89, label %_llgo_90

_llgo_83:                                         ; preds = %_llgo_88, %_llgo_87, %_llgo_80
  %142 = phi i1 [ true, %_llgo_80 ], [ false, %_llgo_85 ], [ false, %_llgo_86 ]
  %143 = call i1 @llvm.coro.done(ptr %139)
  br i1 %143, label %_llgo_82, label %_llgo_84

_llgo_84:                                         ; preds = %_llgo_83
  br i1 %142, label %_llgo_85, label %_llgo_86

_llgo_85:                                         ; preds = %_llgo_84
  %144 = call ptr @llvm.coro.promise(ptr %139, i32 8, i1 false)
  %145 = getelementptr inbounds { ptr, i64 }, ptr %144, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %145, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %139)
  %146 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %146, label %_llgo_4 [
    i8 0, label %_llgo_87
    i8 1, label %_llgo_5
  ]

_llgo_86:                                         ; preds = %_llgo_84
  %147 = call ptr @llvm.coro.promise(ptr %139, i32 8, i1 false)
  %148 = getelementptr inbounds { ptr, i64 }, ptr %147, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %148, ptr %11)
  %149 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %149, label %_llgo_4 [
    i8 0, label %_llgo_88
    i8 1, label %_llgo_5
  ]

_llgo_87:                                         ; preds = %_llgo_85
  br label %_llgo_83

_llgo_88:                                         ; preds = %_llgo_86
  br label %_llgo_83

_llgo_89:                                         ; preds = %_llgo_82
  %150 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %139)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %139)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %150)
  br label %_llgo_5

_llgo_90:                                         ; preds = %_llgo_82
  %151 = call ptr @llvm.coro.promise(ptr %139, i32 8, i1 false)
  %152 = getelementptr inbounds { ptr, i64 }, ptr %151, i32 0, i32 1
  %153 = load i64, ptr %152, align 4
  call void @llvm.coro.destroy(ptr %139)
  br label %_llgo_81

_llgo_91:                                         ; preds = %_llgo_5
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
declare i1 @llvm.coro.end(ptr, i1, token) #2

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr)

; Function Attrs: nounwind
declare i8 @llvm.coro.suspend(token, i1) #2

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
  %3 = load { ptr }, ptr %0, align 8
  %4 = alloca { ptr, i64 }, align 8
  %5 = getelementptr inbounds { ptr, i64 }, ptr %4, i32 0, i32 0
  store ptr null, ptr %5, align 8
  %6 = call token @llvm.coro.id(i32 0, ptr %4, ptr null, ptr null)
  %7 = call i1 @llvm.coro.alloc(token %6)
  br i1 %7, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %8 = extractvalue { ptr } %3, 0
  %9 = call i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add"(ptr %8, i64 %1, i64 %2)
  %10 = getelementptr inbounds { ptr, i64 }, ptr %4, i32 0, i32 1
  store i64 %9, ptr %10, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %11 = call i64 @llvm.coro.size.i64()
  %12 = call ptr @malloc(i64 %11)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %13 = phi ptr [ null, %_llgo_0 ], [ %12, %_llgo_2 ]
  %14 = call ptr @llvm.coro.begin(token %6, ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %15 = call i1 @llvm.coro.end(ptr %14, i1 false, token none)
  ret ptr %14

_llgo_5:                                          ; preds = %_llgo_1
  %16 = getelementptr inbounds { ptr, i64 }, ptr %4, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %16)
  %17 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %17, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %18 = call ptr @llvm.coro.free(token %6, ptr %14)
  call void @free(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
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

; Function Attrs: nounwind memory(argmem: readwrite)
declare i1 @llvm.coro.done(ptr nocapture readonly) #5

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
attributes #5 = { nounwind memory(argmem: readwrite) }
