; ModuleID = 'github.com/goplus/llgo/cl/_testrt/closureconv'
source_filename = "github.com/goplus/llgo/cl/_testrt/closureconv"

%"github.com/goplus/llgo/cl/_testrt/closureconv.Call" = type { %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", i64 }
%"github.com/goplus/llgo/cl/_testrt/closureconv.Func" = type { ptr, ptr }

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
  %3 = alloca i64, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %3, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = add i64 %1, %2
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %0, i32 0, i32 1
  %8 = load i64, ptr %7, align 4
  %9 = add i64 %6, %8
  store i64 %9, ptr %3, align 4
  br label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %10 = call i64 @llvm.coro.size.i64()
  %11 = call ptr @malloc(i64 %10)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %12 = phi ptr [ null, %_llgo_0 ], [ %11, %_llgo_2 ]
  %13 = call ptr @llvm.coro.begin(token %4, ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_1
  %14 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %14, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_4
  %15 = call ptr @llvm.coro.free(token %4, ptr %13)
  call void @free(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_8
  %16 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_7:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_4
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
  %2 = alloca i64, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = add i64 %0, %1
  store i64 %5, ptr %2, align 4
  br label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %6 = call i64 @llvm.coro.size.i64()
  %7 = call ptr @malloc(i64 %6)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %8 = phi ptr [ null, %_llgo_0 ], [ %7, %_llgo_2 ]
  %9 = call ptr @llvm.coro.begin(token %3, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_1
  %10 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %10, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_4
  %11 = call ptr @llvm.coro.free(token %3, ptr %9)
  call void @free(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_8
  %12 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_7:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_4
  br label %_llgo_6
}

define %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo1"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %1, i32 0, i32 1
  store i64 %0, ptr %2, align 4
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %4 = getelementptr inbounds { ptr }, ptr %3, i32 0, i32 0
  store ptr %1, ptr %4, align 8
  %5 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add$bound$coro", ptr undef }, ptr %3, 1
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %1, i32 0, i32 0
  %7 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  store { ptr, ptr } %5, ptr %7, align 8
  %8 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %7, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %8, ptr %6, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %1, i32 0, i32 0
  %10 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %9, align 8
  ret %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %10
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo1$coro"(i64 %0) #0 {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %4, i32 0, i32 1
  store i64 %0, ptr %5, align 4
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %7 = getelementptr inbounds { ptr }, ptr %6, i32 0, i32 0
  store ptr %4, ptr %7, align 8
  %8 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add$bound$coro", ptr undef }, ptr %6, 1
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %4, i32 0, i32 0
  %10 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  store { ptr, ptr } %8, ptr %10, align 8
  %11 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %10, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %11, ptr %9, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %4, i32 0, i32 0
  %13 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %12, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %13, ptr %1, align 8
  br label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %14 = call i64 @llvm.coro.size.i64()
  %15 = call ptr @malloc(i64 %14)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %16 = phi ptr [ null, %_llgo_0 ], [ %15, %_llgo_2 ]
  %17 = call ptr @llvm.coro.begin(token %2, ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_1
  %18 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %18, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_4
  %19 = call ptr @llvm.coro.free(token %2, ptr %17)
  call void @free(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_8
  %20 = call i1 @llvm.coro.end(ptr %17, i1 false, token none)
  ret ptr %17

_llgo_7:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_4
  br label %_llgo_6
}

define %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo2"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add$bound$coro", ptr undef }, ptr %1, 1
  %4 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  store { ptr, ptr } %3, ptr %4, align 8
  %5 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %4, align 8
  ret %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %5
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo2$coro"() #0 {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  %1 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %2 = call i1 @llvm.coro.alloc(token %1)
  br i1 %2, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %5 = getelementptr inbounds { ptr }, ptr %4, i32 0, i32 0
  store ptr %3, ptr %5, align 8
  %6 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add$bound$coro", ptr undef }, ptr %4, 1
  %7 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  store { ptr, ptr } %6, ptr %7, align 8
  %8 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %7, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %8, ptr %0, align 8
  br label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %9 = call i64 @llvm.coro.size.i64()
  %10 = call ptr @malloc(i64 %9)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %11 = phi ptr [ null, %_llgo_0 ], [ %10, %_llgo_2 ]
  %12 = call ptr @llvm.coro.begin(token %1, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_1
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_4
  %14 = call ptr @llvm.coro.free(token %1, ptr %12)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_8
  %15 = call i1 @llvm.coro.end(ptr %12, i1 false, token none)
  ret ptr %12

_llgo_7:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_4
  br label %_llgo_6
}

define %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo3"() {
_llgo_0:
  ret %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/closureconv.add", ptr null }
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo3$coro"() #0 {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  %1 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %2 = call i1 @llvm.coro.alloc(token %1)
  br i1 %2, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/closureconv.add", ptr null }, ptr %0, align 8
  br label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %3 = call i64 @llvm.coro.size.i64()
  %4 = call ptr @malloc(i64 %3)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %5 = phi ptr [ null, %_llgo_0 ], [ %4, %_llgo_2 ]
  %6 = call ptr @llvm.coro.begin(token %1, ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_1
  %7 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %7, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_4
  %8 = call ptr @llvm.coro.free(token %1, ptr %6)
  call void @free(ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_8
  %9 = call i1 @llvm.coro.end(ptr %6, i1 false, token none)
  ret ptr %6

_llgo_7:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_4
  br label %_llgo_6
}

define %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4"() {
_llgo_0:
  ret %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/closureconv.demo4$1$coro", ptr null }
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4$coro"() #0 {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  %1 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %2 = call i1 @llvm.coro.alloc(token %1)
  br i1 %2, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/closureconv.demo4$1$coro", ptr null }, ptr %0, align 8
  br label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %3 = call i64 @llvm.coro.size.i64()
  %4 = call ptr @malloc(i64 %3)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %5 = phi ptr [ null, %_llgo_0 ], [ %4, %_llgo_2 ]
  %6 = call ptr @llvm.coro.begin(token %1, ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_1
  %7 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %7, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_4
  %8 = call ptr @llvm.coro.free(token %1, ptr %6)
  call void @free(ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_8
  %9 = call i1 @llvm.coro.end(ptr %6, i1 false, token none)
  ret ptr %6

_llgo_7:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_4
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
  %2 = alloca i64, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = add i64 %0, %1
  store i64 %5, ptr %2, align 4
  br label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %6 = call i64 @llvm.coro.size.i64()
  %7 = call ptr @malloc(i64 %6)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %8 = phi ptr [ null, %_llgo_0 ], [ %7, %_llgo_2 ]
  %9 = call ptr @llvm.coro.begin(token %3, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_1
  %10 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %10, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_4
  %11 = call ptr @llvm.coro.free(token %3, ptr %9)
  call void @free(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_8
  %12 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_7:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_4
  br label %_llgo_6
}

define %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5$1$coro", ptr undef }, ptr %2, 1
  %5 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  store { ptr, ptr } %4, ptr %5, align 8
  %6 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %5, align 8
  ret %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %6
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5$coro"(i64 %0) #0 {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %4, align 4
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %6 = getelementptr inbounds { ptr }, ptr %5, i32 0, i32 0
  store ptr %4, ptr %6, align 8
  %7 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5$1$coro", ptr undef }, ptr %5, 1
  %8 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  store { ptr, ptr } %7, ptr %8, align 8
  %9 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %8, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %9, ptr %1, align 8
  br label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %10 = call i64 @llvm.coro.size.i64()
  %11 = call ptr @malloc(i64 %10)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %12 = phi ptr [ null, %_llgo_0 ], [ %11, %_llgo_2 ]
  %13 = call ptr @llvm.coro.begin(token %2, ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_1
  %14 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %14, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_4
  %15 = call ptr @llvm.coro.free(token %2, ptr %13)
  call void @free(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_8
  %16 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_7:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_4
  br label %_llgo_6
}

declare i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5$1"(ptr, i64, i64)

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5$1$coro"(ptr %0, i64 %1, i64 %2) #0 {
_llgo_0:
  %3 = load { ptr }, ptr %0, align 8
  %4 = alloca i64, align 8
  %5 = call token @llvm.coro.id(i32 0, ptr %4, ptr null, ptr null)
  %6 = call i1 @llvm.coro.alloc(token %5)
  br i1 %6, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %7 = add i64 %1, %2
  %8 = extractvalue { ptr } %3, 0
  %9 = load i64, ptr %8, align 4
  %10 = add i64 %7, %9
  store i64 %10, ptr %4, align 4
  br label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %11 = call i64 @llvm.coro.size.i64()
  %12 = call ptr @malloc(i64 %11)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %13 = phi ptr [ null, %_llgo_0 ], [ %12, %_llgo_2 ]
  %14 = call ptr @llvm.coro.begin(token %5, ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_1
  %15 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %15, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_4
  %16 = call ptr @llvm.coro.free(token %5, ptr %14)
  call void @free(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_8
  %17 = call i1 @llvm.coro.end(ptr %14, i1 false, token none)
  ret ptr %14

_llgo_7:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_4
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
  %3 = call ptr %1(ptr %2, i64 99, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %3)
  %4 = call ptr @llvm.coro.promise(ptr %3, i32 8, i1 false)
  %5 = load i64, ptr %4, align 4
  call void @llvm.coro.destroy(ptr %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %6 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo2"()
  %7 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %6, 0
  %8 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %6, 1
  %9 = call ptr %7(ptr %8, i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %9)
  %10 = call ptr @llvm.coro.promise(ptr %9, i32 8, i1 false)
  %11 = load i64, ptr %10, align 4
  call void @llvm.coro.destroy(ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %12 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo3"()
  %13 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %12, 0
  %14 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %12, 1
  %15 = call ptr %13(ptr %14, i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %15)
  %16 = call ptr @llvm.coro.promise(ptr %15, i32 8, i1 false)
  %17 = load i64, ptr %16, align 4
  call void @llvm.coro.destroy(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %18 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4"()
  %19 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %18, 0
  %20 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %18, 1
  %21 = call ptr %19(ptr %20, i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %21)
  %22 = call ptr @llvm.coro.promise(ptr %21, i32 8, i1 false)
  %23 = load i64, ptr %22, align 4
  call void @llvm.coro.destroy(ptr %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %24 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 1)
  %25 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %24, 0
  %26 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %24, 1
  %27 = call ptr %25(ptr %26, i64 99, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %27)
  %28 = call ptr @llvm.coro.promise(ptr %27, i32 8, i1 false)
  %29 = load i64, ptr %28, align 4
  call void @llvm.coro.destroy(ptr %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %30 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 1)
  %31 = alloca { ptr, ptr }, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %30, ptr %31, align 8
  %32 = load { ptr, ptr }, ptr %31, align 8
  %33 = extractvalue { ptr, ptr } %32, 0
  %34 = extractvalue { ptr, ptr } %32, 1
  %35 = call ptr %33(ptr %34, i64 99, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %35)
  %36 = call ptr @llvm.coro.promise(ptr %35, i32 8, i1 false)
  %37 = load i64, ptr %36, align 4
  call void @llvm.coro.destroy(ptr %35)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %37)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %38 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 1)
  %39 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %38, 0
  %40 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %38, 1
  %41 = call ptr %39(ptr %40, i64 99, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %41)
  %42 = call ptr @llvm.coro.promise(ptr %41, i32 8, i1 false)
  %43 = load i64, ptr %42, align 4
  call void @llvm.coro.destroy(ptr %41)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %43)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.main$coro"() #0 {
_llgo_0:
  %0 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %1 = call i1 @llvm.coro.alloc(token %0)
  br i1 %1, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %2 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo1"(i64 1)
  %3 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %2, 0
  %4 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %2, 1
  %5 = call ptr %3(ptr %4, i64 99, i64 200)
  br label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %6 = call i64 @llvm.coro.size.i64()
  %7 = call ptr @malloc(i64 %6)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %8 = phi ptr [ null, %_llgo_0 ], [ %7, %_llgo_2 ]
  %9 = call ptr @llvm.coro.begin(token %0, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_53
  %10 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %10, label %_llgo_57 [
    i8 0, label %_llgo_56
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_56, %_llgo_4, %_llgo_52, %_llgo_45, %_llgo_38, %_llgo_31, %_llgo_24, %_llgo_17, %_llgo_10
  %11 = call ptr @llvm.coro.free(token %0, ptr %9)
  call void @free(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_57
  %12 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_7:                                          ; preds = %_llgo_12, %_llgo_1
  %13 = call i1 @llvm.coro.done(ptr %5)
  br i1 %13, label %_llgo_11, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  call void @llvm.coro.resume(ptr %5)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  %14 = call i1 @llvm.coro.done(ptr %5)
  br i1 %14, label %_llgo_11, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  %15 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %15, label %_llgo_13 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9, %_llgo_7
  %16 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %17 = load i64, ptr %16, align 4
  call void @llvm.coro.destroy(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %18 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo2"()
  %19 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %18, 0
  %20 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %18, 1
  %21 = call ptr %19(ptr %20, i64 100, i64 200)
  br label %_llgo_14

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_7

_llgo_13:                                         ; preds = %_llgo_10
  ret ptr %9

_llgo_14:                                         ; preds = %_llgo_19, %_llgo_11
  %22 = call i1 @llvm.coro.done(ptr %21)
  br i1 %22, label %_llgo_18, label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14
  call void @llvm.coro.resume(ptr %21)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15
  %23 = call i1 @llvm.coro.done(ptr %21)
  br i1 %23, label %_llgo_18, label %_llgo_17

_llgo_17:                                         ; preds = %_llgo_16
  %24 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %24, label %_llgo_20 [
    i8 0, label %_llgo_19
    i8 1, label %_llgo_5
  ]

_llgo_18:                                         ; preds = %_llgo_16, %_llgo_14
  %25 = call ptr @llvm.coro.promise(ptr %21, i32 8, i1 false)
  %26 = load i64, ptr %25, align 4
  call void @llvm.coro.destroy(ptr %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %27 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo3"()
  %28 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %27, 0
  %29 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %27, 1
  %30 = call ptr %28(ptr %29, i64 100, i64 200)
  br label %_llgo_21

_llgo_19:                                         ; preds = %_llgo_17
  br label %_llgo_14

_llgo_20:                                         ; preds = %_llgo_17
  ret ptr %9

_llgo_21:                                         ; preds = %_llgo_26, %_llgo_18
  %31 = call i1 @llvm.coro.done(ptr %30)
  br i1 %31, label %_llgo_25, label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21
  call void @llvm.coro.resume(ptr %30)
  br label %_llgo_23

_llgo_23:                                         ; preds = %_llgo_22
  %32 = call i1 @llvm.coro.done(ptr %30)
  br i1 %32, label %_llgo_25, label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23
  %33 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %33, label %_llgo_27 [
    i8 0, label %_llgo_26
    i8 1, label %_llgo_5
  ]

_llgo_25:                                         ; preds = %_llgo_23, %_llgo_21
  %34 = call ptr @llvm.coro.promise(ptr %30, i32 8, i1 false)
  %35 = load i64, ptr %34, align 4
  call void @llvm.coro.destroy(ptr %30)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %35)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %36 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4"()
  %37 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %36, 0
  %38 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %36, 1
  %39 = call ptr %37(ptr %38, i64 100, i64 200)
  br label %_llgo_28

_llgo_26:                                         ; preds = %_llgo_24
  br label %_llgo_21

_llgo_27:                                         ; preds = %_llgo_24
  ret ptr %9

_llgo_28:                                         ; preds = %_llgo_33, %_llgo_25
  %40 = call i1 @llvm.coro.done(ptr %39)
  br i1 %40, label %_llgo_32, label %_llgo_29

_llgo_29:                                         ; preds = %_llgo_28
  call void @llvm.coro.resume(ptr %39)
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29
  %41 = call i1 @llvm.coro.done(ptr %39)
  br i1 %41, label %_llgo_32, label %_llgo_31

_llgo_31:                                         ; preds = %_llgo_30
  %42 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %42, label %_llgo_34 [
    i8 0, label %_llgo_33
    i8 1, label %_llgo_5
  ]

_llgo_32:                                         ; preds = %_llgo_30, %_llgo_28
  %43 = call ptr @llvm.coro.promise(ptr %39, i32 8, i1 false)
  %44 = load i64, ptr %43, align 4
  call void @llvm.coro.destroy(ptr %39)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %44)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %45 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 1)
  %46 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %45, 0
  %47 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %45, 1
  %48 = call ptr %46(ptr %47, i64 99, i64 200)
  br label %_llgo_35

_llgo_33:                                         ; preds = %_llgo_31
  br label %_llgo_28

_llgo_34:                                         ; preds = %_llgo_31
  ret ptr %9

_llgo_35:                                         ; preds = %_llgo_40, %_llgo_32
  %49 = call i1 @llvm.coro.done(ptr %48)
  br i1 %49, label %_llgo_39, label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35
  call void @llvm.coro.resume(ptr %48)
  br label %_llgo_37

_llgo_37:                                         ; preds = %_llgo_36
  %50 = call i1 @llvm.coro.done(ptr %48)
  br i1 %50, label %_llgo_39, label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37
  %51 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %51, label %_llgo_41 [
    i8 0, label %_llgo_40
    i8 1, label %_llgo_5
  ]

_llgo_39:                                         ; preds = %_llgo_37, %_llgo_35
  %52 = call ptr @llvm.coro.promise(ptr %48, i32 8, i1 false)
  %53 = load i64, ptr %52, align 4
  call void @llvm.coro.destroy(ptr %48)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %53)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %54 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 1)
  %55 = alloca { ptr, ptr }, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %54, ptr %55, align 8
  %56 = load { ptr, ptr }, ptr %55, align 8
  %57 = extractvalue { ptr, ptr } %56, 0
  %58 = extractvalue { ptr, ptr } %56, 1
  %59 = call ptr %57(ptr %58, i64 99, i64 200)
  br label %_llgo_42

_llgo_40:                                         ; preds = %_llgo_38
  br label %_llgo_35

_llgo_41:                                         ; preds = %_llgo_38
  ret ptr %9

_llgo_42:                                         ; preds = %_llgo_47, %_llgo_39
  %60 = call i1 @llvm.coro.done(ptr %59)
  br i1 %60, label %_llgo_46, label %_llgo_43

_llgo_43:                                         ; preds = %_llgo_42
  call void @llvm.coro.resume(ptr %59)
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43
  %61 = call i1 @llvm.coro.done(ptr %59)
  br i1 %61, label %_llgo_46, label %_llgo_45

_llgo_45:                                         ; preds = %_llgo_44
  %62 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %62, label %_llgo_48 [
    i8 0, label %_llgo_47
    i8 1, label %_llgo_5
  ]

_llgo_46:                                         ; preds = %_llgo_44, %_llgo_42
  %63 = call ptr @llvm.coro.promise(ptr %59, i32 8, i1 false)
  %64 = load i64, ptr %63, align 4
  call void @llvm.coro.destroy(ptr %59)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %64)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %65 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 1)
  %66 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %65, 0
  %67 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %65, 1
  %68 = call ptr %66(ptr %67, i64 99, i64 200)
  br label %_llgo_49

_llgo_47:                                         ; preds = %_llgo_45
  br label %_llgo_42

_llgo_48:                                         ; preds = %_llgo_45
  ret ptr %9

_llgo_49:                                         ; preds = %_llgo_54, %_llgo_46
  %69 = call i1 @llvm.coro.done(ptr %68)
  br i1 %69, label %_llgo_53, label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49
  call void @llvm.coro.resume(ptr %68)
  br label %_llgo_51

_llgo_51:                                         ; preds = %_llgo_50
  %70 = call i1 @llvm.coro.done(ptr %68)
  br i1 %70, label %_llgo_53, label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51
  %71 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %71, label %_llgo_55 [
    i8 0, label %_llgo_54
    i8 1, label %_llgo_5
  ]

_llgo_53:                                         ; preds = %_llgo_51, %_llgo_49
  %72 = call ptr @llvm.coro.promise(ptr %68, i32 8, i1 false)
  %73 = load i64, ptr %72, align 4
  call void @llvm.coro.destroy(ptr %68)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %73)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_4

_llgo_54:                                         ; preds = %_llgo_52
  br label %_llgo_49

_llgo_55:                                         ; preds = %_llgo_52
  ret ptr %9

_llgo_56:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_57:                                         ; preds = %_llgo_4
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

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #4

declare void @free(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token) #2

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add$bound"(ptr, i64, i64)

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add$bound$coro"(ptr %0, i64 %1, i64 %2) #0 {
_llgo_0:
  %3 = load { ptr }, ptr %0, align 8
  %4 = alloca i64, align 8
  %5 = call token @llvm.coro.id(i32 0, ptr %4, ptr null, ptr null)
  %6 = call i1 @llvm.coro.alloc(token %5)
  br i1 %6, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %7 = extractvalue { ptr } %3, 0
  %8 = call i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add"(ptr %7, i64 %1, i64 %2)
  store i64 %8, ptr %4, align 4
  br label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %9 = call i64 @llvm.coro.size.i64()
  %10 = call ptr @malloc(i64 %9)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %11 = phi ptr [ null, %_llgo_0 ], [ %10, %_llgo_2 ]
  %12 = call ptr @llvm.coro.begin(token %5, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_1
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_4
  %14 = call ptr @llvm.coro.free(token %5, ptr %12)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_8
  %15 = call i1 @llvm.coro.end(ptr %12, i1 false, token none)
  ret ptr %12

_llgo_7:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_4
  br label %_llgo_6
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/closureconv.add"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = tail call i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.add"(i64 %1, i64 %2)
  ret i64 %3
}

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/closureconv.demo4$1$coro"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = tail call i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4$1$coro"(i64 %1, i64 %2)
  ret i64 %3
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr)

; Function Attrs: nounwind memory(none)
declare ptr @llvm.coro.promise(ptr nocapture, i32, i1) #3

declare void @llvm.coro.destroy(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

; Function Attrs: nounwind memory(argmem: readwrite)
declare i1 @llvm.coro.done(ptr nocapture readonly) #5

declare void @llvm.coro.resume(ptr)

attributes #0 = { presplitcoroutine }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nounwind }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nounwind memory(argmem: read) }
attributes #5 = { nounwind memory(argmem: readwrite) }
