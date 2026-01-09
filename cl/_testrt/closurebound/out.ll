; ModuleID = 'github.com/goplus/llgo/cl/_testrt/closurebound'
source_filename = "github.com/goplus/llgo/cl/_testrt/closurebound"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" = type {}
%"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" = type {}
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/closurebound.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/cl/_testrt/closurebound.my" = global { ptr, ptr } zeroinitializer, align 8
@0 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr @"*_llgo_string" }, align 8
@1 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr null }, ptr @_llgo_string }, align 8

define i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.demo1.encode"(%"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" %0) {
_llgo_0:
  ret i64 1
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closurebound.demo1.encode$coro"(%"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" %0) #0 {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  store i64 1, ptr %1, align 4
  br label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %4 = call i64 @llvm.coro.size.i64()
  %5 = call ptr @malloc(i64 %4)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %6 = phi ptr [ null, %_llgo_0 ], [ %5, %_llgo_2 ]
  %7 = call ptr @llvm.coro.begin(token %2, ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_1
  %8 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %8, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_4
  %9 = call ptr @llvm.coro.free(token %2, ptr %7)
  call void @free(ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_8
  %10 = call i1 @llvm.coro.end(ptr %7, i1 false, token none)
  ret ptr %7

_llgo_7:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_4
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
  %1 = alloca i64, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %4 = load %"github.com/goplus/llgo/cl/_testrt/closurebound.demo1", ptr %0, align 1
  %5 = call i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.demo1.encode"(%"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" %4)
  store i64 %5, ptr %1, align 4
  br label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %6 = call i64 @llvm.coro.size.i64()
  %7 = call ptr @malloc(i64 %6)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %8 = phi ptr [ null, %_llgo_0 ], [ %7, %_llgo_2 ]
  %9 = call ptr @llvm.coro.begin(token %2, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_1
  %10 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %10, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_4
  %11 = call ptr @llvm.coro.free(token %2, ptr %9)
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

define i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.demo2.encode"(%"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" %0) {
_llgo_0:
  ret i64 2
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closurebound.demo2.encode$coro"(%"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" %0) #0 {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  store i64 2, ptr %1, align 4
  br label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %4 = call i64 @llvm.coro.size.i64()
  %5 = call ptr @malloc(i64 %4)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %6 = phi ptr [ null, %_llgo_0 ], [ %5, %_llgo_2 ]
  %7 = call ptr @llvm.coro.begin(token %2, ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_1
  %8 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %8, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_4
  %9 = call ptr @llvm.coro.free(token %2, ptr %7)
  call void @free(ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_8
  %10 = call i1 @llvm.coro.end(ptr %7, i1 false, token none)
  ret ptr %7

_llgo_7:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_4
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
  %1 = alloca i64, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %4 = load %"github.com/goplus/llgo/cl/_testrt/closurebound.demo2", ptr %0, align 1
  %5 = call i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.demo2.encode"(%"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" %4)
  store i64 %5, ptr %1, align 4
  br label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %6 = call i64 @llvm.coro.size.i64()
  %7 = call ptr @malloc(i64 %6)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %8 = phi ptr [ null, %_llgo_0 ], [ %7, %_llgo_2 ]
  %9 = call ptr @llvm.coro.begin(token %2, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_1
  %10 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %10, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_4
  %11 = call ptr @llvm.coro.free(token %2, ptr %9)
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

define void @"github.com/goplus/llgo/cl/_testrt/closurebound.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/closurebound.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/closurebound.init$guard", align 1
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %2 = getelementptr inbounds { %"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" }, ptr %1, i32 0, i32 0
  store %"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" zeroinitializer, ptr %2, align 1
  %3 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/closurebound.demo2.encode$bound$coro", ptr undef }, ptr %1, 1
  store { ptr, ptr } %3, ptr @"github.com/goplus/llgo/cl/_testrt/closurebound.my", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/closurebound.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %1 = getelementptr inbounds { %"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" }, ptr %0, i32 0, i32 0
  store %"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" zeroinitializer, ptr %1, align 1
  %2 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/closurebound.demo1.encode$bound$coro", ptr undef }, ptr %0, 1
  %3 = extractvalue { ptr, ptr } %2, 0
  %4 = extractvalue { ptr, ptr } %2, 1
  %5 = call ptr %3(ptr %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %5)
  %6 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %7 = load i64, ptr %6, align 4
  call void @llvm.coro.destroy(ptr %5)
  %8 = icmp ne i64 %7, 1
  br i1 %8, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %9, align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %9, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %10)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closurebound.main$coro"() #0 {
_llgo_0:
  %0 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %1 = call i1 @llvm.coro.alloc(token %0)
  br i1 %1, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_5
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %3 = getelementptr inbounds { %"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" }, ptr %2, i32 0, i32 0
  store %"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" zeroinitializer, ptr %3, align 1
  %4 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/closurebound.demo1.encode$bound$coro", ptr undef }, ptr %2, 1
  %5 = extractvalue { ptr, ptr } %4, 0
  %6 = extractvalue { ptr, ptr } %4, 1
  %7 = call ptr %5(ptr %6)
  br label %_llgo_9

_llgo_2:                                          ; preds = %_llgo_13
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %8, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %9)
  unreachable

_llgo_3:                                          ; preds = %_llgo_13
  br label %_llgo_6

_llgo_4:                                          ; preds = %_llgo_0
  %10 = call i64 @llvm.coro.size.i64()
  %11 = call ptr @malloc(i64 %10)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %12 = phi ptr [ null, %_llgo_0 ], [ %11, %_llgo_4 ]
  %13 = call ptr @llvm.coro.begin(token %0, ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_6:                                          ; preds = %_llgo_3
  %14 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %14, label %_llgo_17 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_7
  ]

_llgo_7:                                          ; preds = %_llgo_16, %_llgo_6, %_llgo_12
  %15 = call ptr @llvm.coro.free(token %0, ptr %13)
  call void @free(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_17
  %16 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_9:                                          ; preds = %_llgo_14, %_llgo_1
  %17 = call i1 @llvm.coro.done(ptr %7)
  br i1 %17, label %_llgo_13, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  call void @llvm.coro.resume(ptr %7)
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10
  %18 = call i1 @llvm.coro.done(ptr %7)
  br i1 %18, label %_llgo_13, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  %19 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %19, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_7
  ]

_llgo_13:                                         ; preds = %_llgo_11, %_llgo_9
  %20 = call ptr @llvm.coro.promise(ptr %7, i32 8, i1 false)
  %21 = load i64, ptr %20, align 4
  call void @llvm.coro.destroy(ptr %7)
  %22 = icmp ne i64 %21, 1
  br i1 %22, label %_llgo_2, label %_llgo_3

_llgo_14:                                         ; preds = %_llgo_12
  br label %_llgo_9

_llgo_15:                                         ; preds = %_llgo_12
  ret ptr %13

_llgo_16:                                         ; preds = %_llgo_6
  br label %_llgo_7

_llgo_17:                                         ; preds = %_llgo_6
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

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #4

declare void @free(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token) #2

declare i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.demo2.encode$bound"(ptr)

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closurebound.demo2.encode$bound$coro"(ptr %0) #0 {
_llgo_0:
  %1 = load { %"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" }, ptr %0, align 1
  %2 = alloca i64, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = extractvalue { %"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" } %1, 0
  %6 = call i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.demo2.encode"(%"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" %5)
  store i64 %6, ptr %2, align 4
  br label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %7 = call i64 @llvm.coro.size.i64()
  %8 = call ptr @malloc(i64 %7)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi ptr [ null, %_llgo_0 ], [ %8, %_llgo_2 ]
  %10 = call ptr @llvm.coro.begin(token %3, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_1
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_4
  %12 = call ptr @llvm.coro.free(token %3, ptr %10)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_8
  %13 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_7:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_4
  br label %_llgo_6
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.demo1.encode$bound"(ptr)

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closurebound.demo1.encode$bound$coro"(ptr %0) #0 {
_llgo_0:
  %1 = load { %"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" }, ptr %0, align 1
  %2 = alloca i64, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = extractvalue { %"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" } %1, 0
  %6 = call i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.demo1.encode"(%"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" %5)
  store i64 %6, ptr %2, align 4
  br label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %7 = call i64 @llvm.coro.size.i64()
  %8 = call ptr @malloc(i64 %7)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi ptr [ null, %_llgo_0 ], [ %8, %_llgo_2 ]
  %10 = call ptr @llvm.coro.begin(token %3, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_1
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_4
  %12 = call ptr @llvm.coro.free(token %3, ptr %10)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_8
  %13 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_7:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_4
  br label %_llgo_6
}

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

; Function Attrs: nounwind memory(argmem: readwrite)
declare i1 @llvm.coro.done(ptr nocapture readonly) #5

declare void @llvm.coro.resume(ptr)

attributes #0 = { presplitcoroutine }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nounwind }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nounwind memory(argmem: read) }
attributes #5 = { nounwind memory(argmem: readwrite) }
