; ModuleID = 'github.com/goplus/llgo/cl/_testrt/closurebound'
source_filename = "github.com/goplus/llgo/cl/_testrt/closurebound"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr, i1 }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" = type {}
%"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" = type {}
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/closurebound.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/cl/_testrt/closurebound.my" = global { ptr, ptr, i1 } zeroinitializer, align 8
@0 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr @"*_llgo_string" }, align 8
@1 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr null }, ptr @_llgo_string }, align 8

define i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.demo1.encode"(%"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" %0) {
_llgo_0:
  ret i64 1
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closurebound.demo1.encode$coro"(%"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" %0) #0 {
_llgo_0:
  %1 = alloca { ptr, i64 }, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %5 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 1
  store i64 1, ptr %5, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %6 = call i64 @llvm.coro.size.i64()
  %7 = call ptr @malloc(i64 %6)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %8 = phi ptr [ null, %_llgo_0 ], [ %7, %_llgo_2 ]
  %9 = call ptr @llvm.coro.begin(token %3, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %10 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %10, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %11 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_5:                                          ; preds = %_llgo_1, %_llgo_3
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %13 = call ptr @llvm.coro.free(token %3, ptr %9)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.(*demo1).encode"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testrt/closurebound.demo1", ptr %0, align 1
  %2 = call i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.demo1.encode"(%"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" %1)
  ret i64 %2
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closurebound.(*demo1).encode$coro"(ptr %0) #0 {
_llgo_0:
  %1 = alloca { ptr, i64 }, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %5 = load %"github.com/goplus/llgo/cl/_testrt/closurebound.demo1", ptr %0, align 1
  %6 = call i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.demo1.encode"(%"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" %5)
  %7 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 1
  store i64 %6, ptr %7, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %8 = call i64 @llvm.coro.size.i64()
  %9 = call ptr @malloc(i64 %8)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %10 = phi ptr [ null, %_llgo_0 ], [ %9, %_llgo_2 ]
  %11 = call ptr @llvm.coro.begin(token %3, ptr %10)
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
  %15 = call ptr @llvm.coro.free(token %3, ptr %11)
  call void @free(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.demo2.encode"(%"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" %0) {
_llgo_0:
  ret i64 2
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closurebound.demo2.encode$coro"(%"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" %0) #0 {
_llgo_0:
  %1 = alloca { ptr, i64 }, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %5 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 1
  store i64 2, ptr %5, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %6 = call i64 @llvm.coro.size.i64()
  %7 = call ptr @malloc(i64 %6)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %8 = phi ptr [ null, %_llgo_0 ], [ %7, %_llgo_2 ]
  %9 = call ptr @llvm.coro.begin(token %3, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %10 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %10, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %11 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_5:                                          ; preds = %_llgo_1, %_llgo_3
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %13 = call ptr @llvm.coro.free(token %3, ptr %9)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.(*demo2).encode"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testrt/closurebound.demo2", ptr %0, align 1
  %2 = call i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.demo2.encode"(%"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" %1)
  ret i64 %2
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closurebound.(*demo2).encode$coro"(ptr %0) #0 {
_llgo_0:
  %1 = alloca { ptr, i64 }, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %5 = load %"github.com/goplus/llgo/cl/_testrt/closurebound.demo2", ptr %0, align 1
  %6 = call i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.demo2.encode"(%"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" %5)
  %7 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 1
  store i64 %6, ptr %7, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %8 = call i64 @llvm.coro.size.i64()
  %9 = call ptr @malloc(i64 %8)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %10 = phi ptr [ null, %_llgo_0 ], [ %9, %_llgo_2 ]
  %11 = call ptr @llvm.coro.begin(token %3, ptr %10)
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
  %15 = call ptr @llvm.coro.free(token %3, ptr %11)
  call void @free(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/closurebound.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/closurebound.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/closurebound.init$guard", align 1
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %2 = getelementptr inbounds { %"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" }, ptr %1, i32 0, i32 0
  store %"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" zeroinitializer, ptr %2, align 1
  %3 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/closurebound.demo2.encode$bound", ptr undef, i1 undef }, ptr %1, 1
  %4 = insertvalue { ptr, ptr, i1 } %3, i1 false, 2
  store { ptr, ptr, i1 } %4, ptr @"github.com/goplus/llgo/cl/_testrt/closurebound.my", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/closurebound.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %1 = getelementptr inbounds { %"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" }, ptr %0, i32 0, i32 0
  store %"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" zeroinitializer, ptr %1, align 1
  %2 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/closurebound.demo1.encode$bound", ptr undef, i1 undef }, ptr %0, 1
  %3 = insertvalue { ptr, ptr, i1 } %2, i1 false, 2
  %4 = extractvalue { ptr, ptr, i1 } %3, 0
  %5 = extractvalue { ptr, ptr, i1 } %3, 1
  %6 = extractvalue { ptr, ptr, i1 } %3, 2
  br i1 %6, label %_llgo_4, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_5
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %7, align 8
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %7, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %8)
  unreachable

_llgo_2:                                          ; preds = %_llgo_5
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %9 = call i64 %4(ptr %5)
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  %10 = call ptr %4(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %10)
  %11 = call ptr @llvm.coro.promise(ptr %10, i32 8, i1 false)
  %12 = getelementptr inbounds { ptr, i64 }, ptr %11, i32 0, i32 1
  %13 = load i64, ptr %12, align 4
  call void @llvm.coro.destroy(ptr %10)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %14 = phi i64 [ %9, %_llgo_3 ], [ %13, %_llgo_4 ]
  %15 = icmp ne i64 %14, 1
  br i1 %15, label %_llgo_1, label %_llgo_2
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closurebound.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_9
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %5 = getelementptr inbounds { %"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" }, ptr %4, i32 0, i32 0
  store %"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" zeroinitializer, ptr %5, align 1
  %6 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/closurebound.demo1.encode$bound", ptr undef, i1 undef }, ptr %4, 1
  %7 = insertvalue { ptr, ptr, i1 } %6, i1 false, 2
  %8 = extractvalue { ptr, ptr, i1 } %7, 0
  %9 = extractvalue { ptr, ptr, i1 } %7, 1
  %10 = extractvalue { ptr, ptr, i1 } %7, 2
  br i1 %10, label %_llgo_11, label %_llgo_10

_llgo_2:                                          ; preds = %_llgo_12
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %11, align 8
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %11, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %12)
  br label %_llgo_7

_llgo_3:                                          ; preds = %_llgo_12
  br label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_0
  %13 = call i64 @llvm.coro.size.i64()
  %14 = call ptr @malloc(i64 %13)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %15 = phi ptr [ null, %_llgo_0 ], [ %14, %_llgo_4 ]
  %16 = call ptr @llvm.coro.begin(token %2, ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %17 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %17, label %_llgo_6 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_7
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7, %_llgo_13, %_llgo_5
  %18 = call i1 @llvm.coro.end(ptr %16, i1 false, token none)
  ret ptr %16

_llgo_7:                                          ; preds = %_llgo_3, %_llgo_2, %_llgo_15, %_llgo_13, %_llgo_5
  %19 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %19, label %_llgo_6 [
    i8 0, label %_llgo_17
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_17, %_llgo_7
  %20 = call ptr @llvm.coro.free(token %2, ptr %16)
  call void @free(ptr %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_5
  br label %_llgo_1

_llgo_10:                                         ; preds = %_llgo_1
  %21 = call i64 %8(ptr %9)
  br label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_1
  %22 = call ptr %8(ptr %9)
  br label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_16, %_llgo_10
  %23 = phi i64 [ %21, %_llgo_10 ], [ %32, %_llgo_16 ]
  %24 = icmp ne i64 %23, 1
  br i1 %24, label %_llgo_2, label %_llgo_3

_llgo_13:                                         ; preds = %_llgo_11
  %25 = call ptr @llvm.coro.promise(ptr %22, i32 8, i1 false)
  %26 = getelementptr inbounds { ptr, i64 }, ptr %25, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %26, ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %22)
  %27 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %27, label %_llgo_6 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_7
  ]

_llgo_14:                                         ; preds = %_llgo_13
  %28 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %22)
  br i1 %28, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %29 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %29)
  br label %_llgo_7

_llgo_16:                                         ; preds = %_llgo_14
  %30 = call ptr @llvm.coro.promise(ptr %22, i32 8, i1 false)
  %31 = getelementptr inbounds { ptr, i64 }, ptr %30, i32 0, i32 1
  %32 = load i64, ptr %31, align 4
  call void @llvm.coro.destroy(ptr %22)
  br label %_llgo_12

_llgo_17:                                         ; preds = %_llgo_7
  br label %_llgo_8
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

define i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.demo2.encode$bound"(ptr %0) {
_llgo_0:
  %1 = load { %"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" }, ptr %0, align 1
  %2 = extractvalue { %"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" } %1, 0
  %3 = call i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.demo2.encode"(%"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" %2)
  ret i64 %3
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closurebound.demo2.encode$bound$coro"(ptr %0) #0 {
_llgo_0:
  %1 = alloca { ptr, i64 }, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %5 = load { %"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" }, ptr %0, align 1
  %6 = extractvalue { %"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" } %5, 0
  %7 = call i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.demo2.encode"(%"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" %6)
  %8 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 1
  store i64 %7, ptr %8, align 4
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

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.demo1.encode$bound"(ptr %0) {
_llgo_0:
  %1 = load { %"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" }, ptr %0, align 1
  %2 = extractvalue { %"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" } %1, 0
  %3 = call i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.demo1.encode"(%"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" %2)
  ret i64 %3
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closurebound.demo1.encode$bound$coro"(ptr %0) #0 {
_llgo_0:
  %1 = alloca { ptr, i64 }, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %5 = load { %"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" }, ptr %0, align 1
  %6 = extractvalue { %"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" } %5, 0
  %7 = call i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.demo1.encode"(%"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" %6)
  %8 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 1
  store i64 %7, ptr %8, align 4
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

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr)

; Function Attrs: nounwind memory(none)
declare ptr @llvm.coro.promise(ptr nocapture, i32, i1) #3

declare void @llvm.coro.destroy(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

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
