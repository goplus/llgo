; ModuleID = 'github.com/goplus/llgo/cl/_testrt/builtin'
source_filename = "github.com/goplus/llgo/cl/_testrt/builtin"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr, i1 }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/builtin.a" = global i64 0, align 8
@"github.com/goplus/llgo/cl/_testrt/builtin.b" = global i64 0, align 8
@"github.com/goplus/llgo/cl/_testrt/builtin.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/cl/_testrt/builtin.n" = global i64 0, align 8
@0 = private unnamed_addr constant [5 x i8] c"hello", align 1
@1 = private unnamed_addr constant [3 x i8] c"def", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 3 }, ptr @"*_llgo_int" }, align 8
@2 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@3 = private unnamed_addr constant [4 x i8] c"ABCD", align 1
@4 = private unnamed_addr constant [7 x i8] c"\E4\B8\ADabcd", align 1
@5 = private unnamed_addr constant [3 x i8] c"abc", align 1
@6 = private unnamed_addr constant [3 x i8] c"abd", align 1
@7 = private unnamed_addr constant [2 x i8] c"fn", align 1

define double @"github.com/goplus/llgo/cl/_testrt/builtin.Float64frombits"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = load double, ptr %1, align 8
  ret double %2
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/builtin.Float64frombits$coro"(i64 %0) #0 {
_llgo_0:
  %1 = alloca { ptr, double }, align 8
  %2 = getelementptr inbounds { ptr, double }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %5, align 4
  %6 = load double, ptr %5, align 8
  %7 = getelementptr inbounds { ptr, double }, ptr %1, i32 0, i32 1
  store double %6, ptr %7, align 8
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %8 = call i64 @llvm.coro.size.i64()
  %9 = call ptr @malloc(i64 %8)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %10 = phi ptr [ null, %_llgo_0 ], [ %9, %_llgo_2 ]
  %11 = call ptr @llvm.coro.begin(token %3, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %12 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_5:                                          ; preds = %_llgo_1
  %13 = getelementptr inbounds { ptr, double }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %13)
  %14 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %14, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %15 = call ptr @llvm.coro.free(token %3, ptr %11)
  call void @free(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define double @"github.com/goplus/llgo/cl/_testrt/builtin.Inf"(i64 %0) {
_llgo_0:
  %1 = icmp sge i64 %0, 0
  br i1 %1, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_0
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %2 = phi i64 [ 9218868437227405312, %_llgo_1 ], [ -4503599627370496, %_llgo_3 ]
  %3 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.Float64frombits"(i64 %2)
  ret double %3

_llgo_3:                                          ; preds = %_llgo_0
  br label %_llgo_2
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/builtin.Inf$coro"(i64 %0) #0 {
_llgo_0:
  %1 = alloca { ptr, double }, align 8
  %2 = getelementptr inbounds { ptr, double }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_5, label %_llgo_6

_llgo_1:                                          ; preds = %_llgo_6
  %5 = icmp sge i64 %0, 0
  br i1 %5, label %_llgo_2, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_1
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_4, %_llgo_2
  %6 = phi i64 [ 9218868437227405312, %_llgo_2 ], [ -4503599627370496, %_llgo_4 ]
  %7 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.Float64frombits"(i64 %6)
  %8 = getelementptr inbounds { ptr, double }, ptr %1, i32 0, i32 1
  store double %7, ptr %8, align 8
  br label %_llgo_8

_llgo_4:                                          ; preds = %_llgo_1
  br label %_llgo_3

_llgo_5:                                          ; preds = %_llgo_0
  %9 = call i64 @llvm.coro.size.i64()
  %10 = call ptr @malloc(i64 %9)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %11 = phi ptr [ null, %_llgo_0 ], [ %10, %_llgo_5 ]
  %12 = call ptr @llvm.coro.begin(token %3, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_7:                                          ; preds = %_llgo_9, %_llgo_8
  %13 = call i1 @llvm.coro.end(ptr %12, i1 false, token none)
  ret ptr %12

_llgo_8:                                          ; preds = %_llgo_3
  %14 = getelementptr inbounds { ptr, double }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %14)
  %15 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %15, label %_llgo_7 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_9
  ]

_llgo_9:                                          ; preds = %_llgo_10, %_llgo_8
  %16 = call ptr @llvm.coro.free(token %3, ptr %12)
  call void @free(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_7

_llgo_10:                                         ; preds = %_llgo_8
  br label %_llgo_9
}

define i1 @"github.com/goplus/llgo/cl/_testrt/builtin.IsNaN"(double %0) {
_llgo_0:
  %1 = fcmp une double %0, %0
  ret i1 %1
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/builtin.IsNaN$coro"(double %0) #0 {
_llgo_0:
  %1 = alloca { ptr, i1 }, align 8
  %2 = getelementptr inbounds { ptr, i1 }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = fcmp une double %0, %0
  %6 = getelementptr inbounds { ptr, i1 }, ptr %1, i32 0, i32 1
  store i1 %5, ptr %6, align 1
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %7 = call i64 @llvm.coro.size.i64()
  %8 = call ptr @malloc(i64 %7)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi ptr [ null, %_llgo_0 ], [ %8, %_llgo_2 ]
  %10 = call ptr @llvm.coro.begin(token %3, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %11 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_5:                                          ; preds = %_llgo_1
  %12 = getelementptr inbounds { ptr, i1 }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %12)
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %14 = call ptr @llvm.coro.free(token %3, ptr %10)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define double @"github.com/goplus/llgo/cl/_testrt/builtin.NaN"() {
_llgo_0:
  %0 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.Float64frombits"(i64 9221120237041090561)
  ret double %0
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/builtin.NaN$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr, double }, align 8
  %1 = getelementptr inbounds { ptr, double }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %4 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.Float64frombits"(i64 9221120237041090561)
  %5 = getelementptr inbounds { ptr, double }, ptr %0, i32 0, i32 1
  store double %4, ptr %5, align 8
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %6 = call i64 @llvm.coro.size.i64()
  %7 = call ptr @malloc(i64 %6)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %8 = phi ptr [ null, %_llgo_0 ], [ %7, %_llgo_2 ]
  %9 = call ptr @llvm.coro.begin(token %2, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %10 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_5:                                          ; preds = %_llgo_1
  %11 = getelementptr inbounds { ptr, double }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %11)
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %13 = call ptr @llvm.coro.free(token %2, ptr %9)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/builtin.demo"() {
_llgo_0:
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/builtin.demo$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %4 = call i64 @llvm.coro.size.i64()
  %5 = call ptr @malloc(i64 %4)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %6 = phi ptr [ null, %_llgo_0 ], [ %5, %_llgo_2 ]
  %7 = call ptr @llvm.coro.begin(token %2, ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %8 = call i1 @llvm.coro.end(ptr %7, i1 false, token none)
  ret ptr %7

_llgo_5:                                          ; preds = %_llgo_1
  %9 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %9)
  %10 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %10, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %11 = call ptr @llvm.coro.free(token %2, ptr %7)
  call void @free(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/builtin.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/builtin.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/builtin.init$guard", align 1
  store i64 9223372036854775807, ptr @"github.com/goplus/llgo/cl/_testrt/builtin.a", align 4
  store i64 -9223372036854775808, ptr @"github.com/goplus/llgo/cl/_testrt/builtin.b", align 4
  store i64 -1, ptr @"github.com/goplus/llgo/cl/_testrt/builtin.n", align 4
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/builtin.main"() {
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
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %9 = getelementptr inbounds i64, ptr %8, i64 0
  %10 = getelementptr inbounds i64, ptr %8, i64 1
  %11 = getelementptr inbounds i64, ptr %8, i64 2
  %12 = getelementptr inbounds i64, ptr %8, i64 3
  store i64 1, ptr %9, align 4
  store i64 2, ptr %10, align 4
  store i64 3, ptr %11, align 4
  store i64 4, ptr %12, align 4
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 10)
  %14 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %13, i64 1, i64 10, i64 0, i64 4, i64 10)
  %15 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 1
  %16 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %17 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, 1
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %20 = getelementptr inbounds i64, ptr %19, i64 0
  store i64 1, ptr %20, align 4
  %21 = getelementptr inbounds i64, ptr %19, i64 1
  store i64 2, ptr %21, align 4
  %22 = getelementptr inbounds i64, ptr %19, i64 2
  store i64 3, ptr %22, align 4
  %23 = getelementptr inbounds i64, ptr %19, i64 3
  store i64 4, ptr %23, align 4
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %19, 0
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, i64 4, 1
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25, i64 4, 2
  %27 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %28 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 2
  %29 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 1
  %30 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 0
  %31 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %30, i64 8, i64 %28, i64 1, i64 %29, i64 %28)
  %32 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31, 1
  %33 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 2
  %34 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 1
  %35 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 0
  %36 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %35, i64 8, i64 %33, i64 1, i64 %34, i64 %33)
  %37 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %36, 2
  %38 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 2
  %39 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 0
  %40 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %39, i64 8, i64 %38, i64 1, i64 2, i64 %38)
  %41 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, 1
  %42 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 2
  %43 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 0
  %44 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %43, i64 8, i64 %42, i64 1, i64 2, i64 %42)
  %45 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44, 2
  %46 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 2
  %47 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 0
  %48 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %47, i64 8, i64 %46, i64 1, i64 2, i64 2)
  %49 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %48, 1
  %50 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 2
  %51 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 0
  %52 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %51, i64 8, i64 %50, i64 1, i64 2, i64 2)
  %53 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %52, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %37)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %41)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %45)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %49)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %53)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %54 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 4, i64 4)
  %55 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %54, 1
  %56 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 4, i64 4)
  %57 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %56, 2
  %58 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 2, i64 4)
  %59 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58, 1
  %60 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 2, i64 4)
  %61 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, 2
  %62 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 2, i64 2)
  %63 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62, 1
  %64 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 2, i64 2)
  %65 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %64, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %55)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %57)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %59)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %61)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %63)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %65)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %66 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, i64 1, i64 5)
  %67 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, i64 1, i64 2)
  %68 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, i64 5, i64 5)
  %69 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %68, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %66)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %67)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %69)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %71 = getelementptr inbounds i64, ptr %70, i64 0
  store i64 5, ptr %71, align 4
  %72 = getelementptr inbounds i64, ptr %70, i64 1
  store i64 6, ptr %72, align 4
  %73 = getelementptr inbounds i64, ptr %70, i64 2
  store i64 7, ptr %73, align 4
  %74 = getelementptr inbounds i64, ptr %70, i64 3
  store i64 8, ptr %74, align 4
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %70, 0
  %76 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %75, i64 4, 1
  %77 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %76, i64 4, 2
  %78 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %77, 0
  %79 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %77, 1
  %80 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, ptr %78, i64 %79, i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %80)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %81 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 3)
  %82 = getelementptr inbounds i8, ptr %81, i64 0
  store i8 97, ptr %82, align 1
  %83 = getelementptr inbounds i8, ptr %81, i64 1
  store i8 98, ptr %83, align 1
  %84 = getelementptr inbounds i8, ptr %81, i64 2
  store i8 99, ptr %84, align 1
  %85 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %81, 0
  %86 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %85, i64 3, 1
  %87 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %86, i64 3, 2
  %88 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %87, ptr @1, i64 3, i64 1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %88)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %89 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 0)
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %89, 0
  %91 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %90, i64 0, 1
  %92 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %91, i64 0, 2
  %93 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %94 = getelementptr inbounds { ptr, ptr, i1 }, ptr %93, i64 0
  store { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/builtin.main$1", ptr null, i1 false }, ptr %94, align 8
  %95 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %93, 0
  %96 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %95, i64 1, 1
  %97 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %96, i64 1, 2
  %98 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %97, 0
  %99 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %97, 1
  %100 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %92, ptr %98, i64 %99, i64 24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %101 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 100 to ptr) }, ptr %101, align 8
  %102 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %101, align 8
  %103 = ptrtoint ptr %101 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 true)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 -100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 255)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 -100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double 0.000000e+00)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double 1.005000e+02)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintEface"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %102)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %101)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %103)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %104 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 3)
  %105 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %106 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %104, 0
  %107 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %106, i64 3, 1
  %108 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %107, i64 3, 2
  %109 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %88, 0
  %110 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %88, 1
  %111 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %108, ptr %109, i64 %110, i64 1)
  store i64 %111, ptr %105, align 4
  %112 = load i64, ptr %105, align 4
  %113 = getelementptr inbounds i8, ptr %104, i64 0
  %114 = load i8, ptr %113, align 1
  %115 = getelementptr inbounds i8, ptr %104, i64 1
  %116 = load i8, ptr %115, align 1
  %117 = getelementptr inbounds i8, ptr %104, i64 2
  %118 = load i8, ptr %117, align 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %112)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %119 = zext i8 %114 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %119)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %120 = zext i8 %116 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %120)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %121 = zext i8 %118 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %121)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %122 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %104, i64 1, i64 3, i64 1, i64 3, i64 3)
  %123 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %122, ptr @3, i64 4, i64 1)
  store i64 %123, ptr %105, align 4
  %124 = load i64, ptr %105, align 4
  %125 = getelementptr inbounds i8, ptr %104, i64 0
  %126 = load i8, ptr %125, align 1
  %127 = getelementptr inbounds i8, ptr %104, i64 1
  %128 = load i8, ptr %127, align 1
  %129 = getelementptr inbounds i8, ptr %104, i64 2
  %130 = load i8, ptr %129, align 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %124)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %131 = zext i8 %126 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %131)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %132 = zext i8 %128 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %132)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %133 = zext i8 %130 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %133)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %134 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %135 = getelementptr inbounds { ptr }, ptr %134, i32 0, i32 0
  store ptr %105, ptr %135, align 8
  %136 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/builtin.main$3", ptr undef, i1 undef }, ptr %134, 1
  %137 = insertvalue { ptr, ptr, i1 } %136, i1 false, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr @"github.com/goplus/llgo/cl/_testrt/builtin.demo")
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr @"github.com/goplus/llgo/cl/_testrt/builtin.demo")
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr @"github.com/goplus/llgo/cl/_testrt/builtin.main$2")
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %138 = extractvalue { ptr, ptr, i1 } %137, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %138)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %139 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewStringIter"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 })
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %140 = call { i1, i64, i32 } @"github.com/goplus/llgo/runtime/internal/runtime.StringIterNext"(ptr %139)
  %141 = extractvalue { i1, i64, i32 } %140, 0
  br i1 %141, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %142 = extractvalue { i1, i64, i32 } %140, 1
  %143 = extractvalue { i1, i64, i32 } %140, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %142)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %144 = sext i32 %143 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %144)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  %145 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.Inf"(i64 1)
  %146 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.Inf"(i64 -1)
  %147 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.NaN"()
  %148 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.NaN"()
  %149 = call i1 @"github.com/goplus/llgo/cl/_testrt/builtin.IsNaN"(double %148)
  %150 = call i1 @"github.com/goplus/llgo/cl/_testrt/builtin.IsNaN"(double 1.000000e+00)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %145)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %146)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %147)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %149)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %150)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %151 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 })
  %152 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToRunes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %151)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %152)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %153 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %151)
  %154 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRunes"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %152)
  %155 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %151, 0
  %156 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %151, 1
  %157 = icmp sge i64 3, %156
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %157)
  %158 = getelementptr inbounds i8, ptr %155, i64 3
  %159 = load i8, ptr %158, align 1
  %160 = zext i8 %159 to i32
  %161 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRune"(i32 %160)
  %162 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %152, 0
  %163 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %152, 1
  %164 = icmp sge i64 0, %163
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %164)
  %165 = getelementptr inbounds i32, ptr %162, i64 0
  %166 = load i32, ptr %165, align 4
  %167 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRune"(i32 %166)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %153)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %154)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %161)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %167)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %168 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 })
  %169 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 })
  %170 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 })
  %171 = xor i1 %170, true
  %172 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 })
  %173 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 })
  %174 = xor i1 %173, true
  %175 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 })
  %176 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 })
  %177 = xor i1 %176, true
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %168)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %169)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %171)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %172)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %174)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %175)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %177)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/builtin.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_5, label %_llgo_6

_llgo_1:                                          ; preds = %_llgo_6
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
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %13 = getelementptr inbounds i64, ptr %12, i64 0
  %14 = getelementptr inbounds i64, ptr %12, i64 1
  %15 = getelementptr inbounds i64, ptr %12, i64 2
  %16 = getelementptr inbounds i64, ptr %12, i64 3
  store i64 1, ptr %13, align 4
  store i64 2, ptr %14, align 4
  store i64 3, ptr %15, align 4
  store i64 4, ptr %16, align 4
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 10)
  %18 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %17, i64 1, i64 10, i64 0, i64 4, i64 10)
  %19 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 1
  %20 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %21 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, 1
  %22 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %24 = getelementptr inbounds i64, ptr %23, i64 0
  store i64 1, ptr %24, align 4
  %25 = getelementptr inbounds i64, ptr %23, i64 1
  store i64 2, ptr %25, align 4
  %26 = getelementptr inbounds i64, ptr %23, i64 2
  store i64 3, ptr %26, align 4
  %27 = getelementptr inbounds i64, ptr %23, i64 3
  store i64 4, ptr %27, align 4
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %23, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28, i64 4, 1
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, i64 4, 2
  %31 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %32 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 2
  %33 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 1
  %34 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 0
  %35 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %34, i64 8, i64 %32, i64 1, i64 %33, i64 %32)
  %36 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35, 1
  %37 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 2
  %38 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 1
  %39 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 0
  %40 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %39, i64 8, i64 %37, i64 1, i64 %38, i64 %37)
  %41 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, 2
  %42 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 2
  %43 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 0
  %44 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %43, i64 8, i64 %42, i64 1, i64 2, i64 %42)
  %45 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44, 1
  %46 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 2
  %47 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 0
  %48 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %47, i64 8, i64 %46, i64 1, i64 2, i64 %46)
  %49 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %48, 2
  %50 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 2
  %51 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 0
  %52 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %51, i64 8, i64 %50, i64 1, i64 2, i64 2)
  %53 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %52, 1
  %54 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 2
  %55 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 0
  %56 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %55, i64 8, i64 %54, i64 1, i64 2, i64 2)
  %57 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %56, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %36)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %41)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %45)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %49)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %53)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %57)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %58 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %12, i64 8, i64 4, i64 1, i64 4, i64 4)
  %59 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58, 1
  %60 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %12, i64 8, i64 4, i64 1, i64 4, i64 4)
  %61 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, 2
  %62 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %12, i64 8, i64 4, i64 1, i64 2, i64 4)
  %63 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62, 1
  %64 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %12, i64 8, i64 4, i64 1, i64 2, i64 4)
  %65 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %64, 2
  %66 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %12, i64 8, i64 4, i64 1, i64 2, i64 2)
  %67 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %66, 1
  %68 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %12, i64 8, i64 4, i64 1, i64 2, i64 2)
  %69 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %68, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %59)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %61)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %63)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %65)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %67)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %69)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %70 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, i64 1, i64 5)
  %71 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, i64 1, i64 2)
  %72 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, i64 5, i64 5)
  %73 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %72, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %70)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %71)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %73)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %74 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %75 = getelementptr inbounds i64, ptr %74, i64 0
  store i64 5, ptr %75, align 4
  %76 = getelementptr inbounds i64, ptr %74, i64 1
  store i64 6, ptr %76, align 4
  %77 = getelementptr inbounds i64, ptr %74, i64 2
  store i64 7, ptr %77, align 4
  %78 = getelementptr inbounds i64, ptr %74, i64 3
  store i64 8, ptr %78, align 4
  %79 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %74, 0
  %80 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %79, i64 4, 1
  %81 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %80, i64 4, 2
  %82 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %81, 0
  %83 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %81, 1
  %84 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, ptr %82, i64 %83, i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %84)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %85 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 3)
  %86 = getelementptr inbounds i8, ptr %85, i64 0
  store i8 97, ptr %86, align 1
  %87 = getelementptr inbounds i8, ptr %85, i64 1
  store i8 98, ptr %87, align 1
  %88 = getelementptr inbounds i8, ptr %85, i64 2
  store i8 99, ptr %88, align 1
  %89 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %85, 0
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %89, i64 3, 1
  %91 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %90, i64 3, 2
  %92 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %91, ptr @1, i64 3, i64 1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %92)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %93 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 0)
  %94 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %93, 0
  %95 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %94, i64 0, 1
  %96 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %95, i64 0, 2
  %97 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %98 = getelementptr inbounds { ptr, ptr, i1 }, ptr %97, i64 0
  store { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/builtin.main$1", ptr null, i1 false }, ptr %98, align 8
  %99 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %97, 0
  %100 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %99, i64 1, 1
  %101 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %100, i64 1, 2
  %102 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %101, 0
  %103 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %101, 1
  %104 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %96, ptr %102, i64 %103, i64 24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %104)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %105 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 100 to ptr) }, ptr %105, align 8
  %106 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %105, align 8
  %107 = ptrtoint ptr %105 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 true)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 -100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 255)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 -100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double 0.000000e+00)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double 1.005000e+02)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintEface"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %106)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %105)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %107)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %108 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 3)
  %109 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %110 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %108, 0
  %111 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %110, i64 3, 1
  %112 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %111, i64 3, 2
  %113 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %92, 0
  %114 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %92, 1
  %115 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %112, ptr %113, i64 %114, i64 1)
  store i64 %115, ptr %109, align 4
  %116 = load i64, ptr %109, align 4
  %117 = getelementptr inbounds i8, ptr %108, i64 0
  %118 = load i8, ptr %117, align 1
  %119 = getelementptr inbounds i8, ptr %108, i64 1
  %120 = load i8, ptr %119, align 1
  %121 = getelementptr inbounds i8, ptr %108, i64 2
  %122 = load i8, ptr %121, align 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %116)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %123 = zext i8 %118 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %123)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %124 = zext i8 %120 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %124)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %125 = zext i8 %122 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %125)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %126 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %108, i64 1, i64 3, i64 1, i64 3, i64 3)
  %127 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %126, ptr @3, i64 4, i64 1)
  store i64 %127, ptr %109, align 4
  %128 = load i64, ptr %109, align 4
  %129 = getelementptr inbounds i8, ptr %108, i64 0
  %130 = load i8, ptr %129, align 1
  %131 = getelementptr inbounds i8, ptr %108, i64 1
  %132 = load i8, ptr %131, align 1
  %133 = getelementptr inbounds i8, ptr %108, i64 2
  %134 = load i8, ptr %133, align 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %128)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %135 = zext i8 %130 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %135)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %136 = zext i8 %132 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %136)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %137 = zext i8 %134 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %137)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %138 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %139 = getelementptr inbounds { ptr }, ptr %138, i32 0, i32 0
  store ptr %109, ptr %139, align 8
  %140 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/builtin.main$3", ptr undef, i1 undef }, ptr %138, 1
  %141 = insertvalue { ptr, ptr, i1 } %140, i1 false, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr @"github.com/goplus/llgo/cl/_testrt/builtin.demo")
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr @"github.com/goplus/llgo/cl/_testrt/builtin.demo")
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr @"github.com/goplus/llgo/cl/_testrt/builtin.main$2")
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %142 = extractvalue { ptr, ptr, i1 } %141, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %142)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %143 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewStringIter"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 })
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %144 = call { i1, i64, i32 } @"github.com/goplus/llgo/runtime/internal/runtime.StringIterNext"(ptr %143)
  %145 = extractvalue { i1, i64, i32 } %144, 0
  br i1 %145, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %146 = extractvalue { i1, i64, i32 } %144, 1
  %147 = extractvalue { i1, i64, i32 } %144, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %146)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %148 = sext i32 %147 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %148)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_2
  %149 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.Inf"(i64 1)
  %150 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.Inf"(i64 -1)
  %151 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.NaN"()
  %152 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.NaN"()
  %153 = call i1 @"github.com/goplus/llgo/cl/_testrt/builtin.IsNaN"(double %152)
  %154 = call i1 @"github.com/goplus/llgo/cl/_testrt/builtin.IsNaN"(double 1.000000e+00)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %149)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %150)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %151)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %153)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %154)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %155 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 })
  %156 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToRunes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %155)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %156)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %157 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %155)
  %158 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRunes"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %156)
  %159 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %155, 0
  %160 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %155, 1
  %161 = icmp sge i64 3, %160
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %161)
  %162 = getelementptr inbounds i8, ptr %159, i64 3
  %163 = load i8, ptr %162, align 1
  %164 = zext i8 %163 to i32
  %165 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRune"(i32 %164)
  %166 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %156, 0
  %167 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %156, 1
  %168 = icmp sge i64 0, %167
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %168)
  %169 = getelementptr inbounds i32, ptr %166, i64 0
  %170 = load i32, ptr %169, align 4
  %171 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRune"(i32 %170)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %157)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %158)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %165)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %171)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %172 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 })
  %173 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 })
  %174 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 })
  %175 = xor i1 %174, true
  %176 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 })
  %177 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 })
  %178 = xor i1 %177, true
  %179 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 })
  %180 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 })
  %181 = xor i1 %180, true
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %172)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %173)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %175)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %176)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %178)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %179)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %181)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_8

_llgo_5:                                          ; preds = %_llgo_0
  %182 = call i64 @llvm.coro.size.i64()
  %183 = call ptr @malloc(i64 %182)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %184 = phi ptr [ null, %_llgo_0 ], [ %183, %_llgo_5 ]
  %185 = call ptr @llvm.coro.begin(token %2, ptr %184)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_7:                                          ; preds = %_llgo_9, %_llgo_8
  %186 = call i1 @llvm.coro.end(ptr %185, i1 false, token none)
  ret ptr %185

_llgo_8:                                          ; preds = %_llgo_4
  %187 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %187)
  %188 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %188, label %_llgo_7 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_9
  ]

_llgo_9:                                          ; preds = %_llgo_10, %_llgo_8
  %189 = call ptr @llvm.coro.free(token %2, ptr %185)
  call void @free(ptr %189)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_7

_llgo_10:                                         ; preds = %_llgo_8
  br label %_llgo_9
}

define void @"github.com/goplus/llgo/cl/_testrt/builtin.main$1"() {
_llgo_0:
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/builtin.main$1$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %4 = call i64 @llvm.coro.size.i64()
  %5 = call ptr @malloc(i64 %4)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %6 = phi ptr [ null, %_llgo_0 ], [ %5, %_llgo_2 ]
  %7 = call ptr @llvm.coro.begin(token %2, ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %8 = call i1 @llvm.coro.end(ptr %7, i1 false, token none)
  ret ptr %7

_llgo_5:                                          ; preds = %_llgo_1
  %9 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %9)
  %10 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %10, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %11 = call ptr @llvm.coro.free(token %2, ptr %7)
  call void @free(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/builtin.main$2"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 2 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/builtin.main$2$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 2 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %4 = call i64 @llvm.coro.size.i64()
  %5 = call ptr @malloc(i64 %4)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %6 = phi ptr [ null, %_llgo_0 ], [ %5, %_llgo_2 ]
  %7 = call ptr @llvm.coro.begin(token %2, ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %8 = call i1 @llvm.coro.end(ptr %7, i1 false, token none)
  ret ptr %7

_llgo_5:                                          ; preds = %_llgo_1
  %9 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %9)
  %10 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %10, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %11 = call ptr @llvm.coro.free(token %2, ptr %7)
  call void @free(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/builtin.main$3"(ptr %0) {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load i64, ptr %2, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/builtin.main$3$coro"(ptr %0) #0 {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = alloca { ptr }, align 8
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = extractvalue { ptr } %1, 0
  %7 = load i64, ptr %6, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
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
  %13 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
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

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

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

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr, i64, i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr, i64, i64)

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/builtin.main$1"(ptr %0) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/cl/_testrt/builtin.main$1"()
  ret void
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintEface"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewStringIter"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare { i1, i64, i32 } @"github.com/goplus/llgo/runtime/internal/runtime.StringIterNext"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToRunes"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRunes"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRune"(i32)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

attributes #0 = { presplitcoroutine }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nounwind }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nounwind memory(argmem: read) }
