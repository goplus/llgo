; ModuleID = 'github.com/goplus/llgo/cl/_testrt/float2any'
source_filename = "github.com/goplus/llgo/cl/_testrt/float2any"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr, i1 }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/float2any.init$guard" = global i1 false, align 1
@_llgo_float32 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 4, i64 0, i32 62173712, i8 4, i8 4, i8 4, i8 45, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.f32equal", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 }, ptr @"*_llgo_float32" }, align 8
@0 = private unnamed_addr constant [7 x i8] c"float32", align 1
@"*_llgo_float32" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1426958587, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 }, ptr null }, ptr @_llgo_float32 }, align 8
@1 = private unnamed_addr constant [36 x i8] c"type assertion any -> float32 failed", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr @"*_llgo_string" }, align 8
@2 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@3 = private unnamed_addr constant [9 x i8] c"error f32", align 1
@_llgo_float64 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1233032631, i8 4, i8 8, i8 8, i8 46, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.f64equal", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 }, ptr @"*_llgo_float64" }, align 8
@4 = private unnamed_addr constant [7 x i8] c"float64", align 1
@"*_llgo_float64" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1664509894, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 }, ptr null }, ptr @_llgo_float64 }, align 8
@5 = private unnamed_addr constant [36 x i8] c"type assertion any -> float64 failed", align 1
@6 = private unnamed_addr constant [9 x i8] c"error f64", align 1

define void @"github.com/goplus/llgo/cl/_testrt/float2any.check32"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %2 = icmp eq ptr %1, @_llgo_float32
  br i1 %2, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_3
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 9 }, ptr %3, align 8
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %3, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %4)
  unreachable

_llgo_2:                                          ; preds = %_llgo_3
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %6 = ptrtoint ptr %5 to i64
  %7 = trunc i64 %6 to i32
  %8 = bitcast i32 %7 to float
  %9 = fcmp une float %8, 0x400921FB60000000
  br i1 %9, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_0
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 36 }, ptr %10, align 8
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %10, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %11)
  unreachable
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/float2any.check32$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %0) #0 {
_llgo_0:
  %1 = alloca { ptr }, align 8
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_5
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %6 = icmp eq ptr %5, @_llgo_float32
  br i1 %6, label %_llgo_9, label %_llgo_10

_llgo_2:                                          ; preds = %_llgo_9
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 9 }, ptr %7, align 8
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %7, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %8)
  br label %_llgo_7

_llgo_3:                                          ; preds = %_llgo_9
  br label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_0
  %9 = call i64 @llvm.coro.size.i64()
  %10 = call ptr @malloc(i64 %9)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %11 = phi ptr [ null, %_llgo_0 ], [ %10, %_llgo_4 ]
  %12 = call ptr @llvm.coro.begin(token %3, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7
  %13 = call i1 @llvm.coro.end(ptr %12, i1 false, token none)
  ret ptr %12

_llgo_7:                                          ; preds = %_llgo_3, %_llgo_2
  %14 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %14)
  %15 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %15, label %_llgo_6 [
    i8 0, label %_llgo_11
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_11, %_llgo_7
  %16 = call ptr @llvm.coro.free(token %3, ptr %12)
  call void @free(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_1
  %17 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %18 = ptrtoint ptr %17 to i64
  %19 = trunc i64 %18 to i32
  %20 = bitcast i32 %19 to float
  %21 = fcmp une float %20, 0x400921FB60000000
  br i1 %21, label %_llgo_2, label %_llgo_3

_llgo_10:                                         ; preds = %_llgo_1
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 36 }, ptr %22, align 8
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %22, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %23)
  unreachable

_llgo_11:                                         ; preds = %_llgo_7
  br label %_llgo_8
}

define void @"github.com/goplus/llgo/cl/_testrt/float2any.check64"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %2 = icmp eq ptr %1, @_llgo_float64
  br i1 %2, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_3
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 9 }, ptr %3, align 8
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %3, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %4)
  unreachable

_llgo_2:                                          ; preds = %_llgo_3
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %6 = ptrtoint ptr %5 to i64
  %7 = bitcast i64 %6 to double
  %8 = fcmp une double %7, 0x400921FB53C8D4F1
  br i1 %8, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_0
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 36 }, ptr %9, align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %9, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %10)
  unreachable
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/float2any.check64$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %0) #0 {
_llgo_0:
  %1 = alloca { ptr }, align 8
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_5
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %6 = icmp eq ptr %5, @_llgo_float64
  br i1 %6, label %_llgo_9, label %_llgo_10

_llgo_2:                                          ; preds = %_llgo_9
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 9 }, ptr %7, align 8
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %7, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %8)
  br label %_llgo_7

_llgo_3:                                          ; preds = %_llgo_9
  br label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_0
  %9 = call i64 @llvm.coro.size.i64()
  %10 = call ptr @malloc(i64 %9)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %11 = phi ptr [ null, %_llgo_0 ], [ %10, %_llgo_4 ]
  %12 = call ptr @llvm.coro.begin(token %3, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7
  %13 = call i1 @llvm.coro.end(ptr %12, i1 false, token none)
  ret ptr %12

_llgo_7:                                          ; preds = %_llgo_3, %_llgo_2
  %14 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %14)
  %15 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %15, label %_llgo_6 [
    i8 0, label %_llgo_11
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_11, %_llgo_7
  %16 = call ptr @llvm.coro.free(token %3, ptr %12)
  call void @free(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_1
  %17 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %18 = ptrtoint ptr %17 to i64
  %19 = bitcast i64 %18 to double
  %20 = fcmp une double %19, 0x400921FB53C8D4F1
  br i1 %20, label %_llgo_2, label %_llgo_3

_llgo_10:                                         ; preds = %_llgo_1
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 36 }, ptr %21, align 8
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %21, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %22)
  unreachable

_llgo_11:                                         ; preds = %_llgo_7
  br label %_llgo_8
}

define float @"github.com/goplus/llgo/cl/_testrt/float2any.f32"() {
_llgo_0:
  ret float 0x400921FB60000000
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/float2any.f32$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr, float }, align 8
  %1 = getelementptr inbounds { ptr, float }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %4 = getelementptr inbounds { ptr, float }, ptr %0, i32 0, i32 1
  store float 0x400921FB60000000, ptr %4, align 4
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
  %10 = getelementptr inbounds { ptr, float }, ptr %0, i32 0, i32 0
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

define double @"github.com/goplus/llgo/cl/_testrt/float2any.f64"() {
_llgo_0:
  ret double 0x400921FB53C8D4F1
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/float2any.f64$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr, double }, align 8
  %1 = getelementptr inbounds { ptr, double }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %4 = getelementptr inbounds { ptr, double }, ptr %0, i32 0, i32 1
  store double 0x400921FB53C8D4F1, ptr %4, align 8
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
  %10 = getelementptr inbounds { ptr, double }, ptr %0, i32 0, i32 0
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

define void @"github.com/goplus/llgo/cl/_testrt/float2any.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/float2any.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/float2any.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/float2any.main"() {
_llgo_0:
  %0 = call float @"github.com/goplus/llgo/cl/_testrt/float2any.f32"()
  %1 = bitcast float %0 to i32
  %2 = inttoptr i32 %1 to ptr
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_float32, ptr undef }, ptr %2, 1
  call void @"github.com/goplus/llgo/cl/_testrt/float2any.check32"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %3)
  %4 = call double @"github.com/goplus/llgo/cl/_testrt/float2any.f64"()
  %5 = bitcast double %4 to i64
  %6 = inttoptr i64 %5 to ptr
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_float64, ptr undef }, ptr %6, 1
  call void @"github.com/goplus/llgo/cl/_testrt/float2any.check64"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %7)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/float2any.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %4 = call float @"github.com/goplus/llgo/cl/_testrt/float2any.f32"()
  %5 = bitcast float %4 to i32
  %6 = inttoptr i32 %5 to ptr
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_float32, ptr undef }, ptr %6, 1
  %8 = call ptr @"github.com/goplus/llgo/cl/_testrt/float2any.check32$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %7)
  br label %_llgo_8

_llgo_2:                                          ; preds = %_llgo_0
  %9 = call i64 @llvm.coro.size.i64()
  %10 = call ptr @malloc(i64 %9)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %11 = phi ptr [ null, %_llgo_0 ], [ %10, %_llgo_2 ]
  %12 = call ptr @llvm.coro.begin(token %2, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_20, %_llgo_19, %_llgo_11, %_llgo_10
  %13 = call i1 @llvm.coro.end(ptr %12, i1 false, token none)
  ret ptr %12

_llgo_5:                                          ; preds = %_llgo_24, %_llgo_23, %_llgo_20, %_llgo_19, %_llgo_14, %_llgo_11, %_llgo_10
  %14 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %14)
  %15 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %15, label %_llgo_4 [
    i8 0, label %_llgo_25
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_25, %_llgo_5
  %16 = call ptr @llvm.coro.free(token %2, ptr %12)
  call void @free(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_8
  %17 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %8)
  br i1 %17, label %_llgo_14, label %_llgo_15

_llgo_8:                                          ; preds = %_llgo_13, %_llgo_12, %_llgo_1
  %18 = phi i1 [ true, %_llgo_1 ], [ false, %_llgo_10 ], [ false, %_llgo_11 ]
  %19 = call i1 @llvm.coro.done(ptr %8)
  br i1 %19, label %_llgo_7, label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  br i1 %18, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %20 = call ptr @llvm.coro.promise(ptr %8, i32 8, i1 false)
  %21 = getelementptr inbounds { ptr }, ptr %20, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %21, ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %8)
  %22 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %22, label %_llgo_4 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9
  %23 = call ptr @llvm.coro.promise(ptr %8, i32 8, i1 false)
  %24 = getelementptr inbounds { ptr }, ptr %23, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %24, ptr %12)
  %25 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %25, label %_llgo_4 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_5
  ]

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_8

_llgo_13:                                         ; preds = %_llgo_11
  br label %_llgo_8

_llgo_14:                                         ; preds = %_llgo_7
  %26 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %26)
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_7
  %27 = call double @"github.com/goplus/llgo/cl/_testrt/float2any.f64"()
  %28 = bitcast double %27 to i64
  %29 = inttoptr i64 %28 to ptr
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_float64, ptr undef }, ptr %29, 1
  %31 = call ptr @"github.com/goplus/llgo/cl/_testrt/float2any.check64$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %30)
  br label %_llgo_17

_llgo_16:                                         ; preds = %_llgo_17
  %32 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %31)
  br i1 %32, label %_llgo_23, label %_llgo_24

_llgo_17:                                         ; preds = %_llgo_22, %_llgo_21, %_llgo_15
  %33 = phi i1 [ true, %_llgo_15 ], [ false, %_llgo_19 ], [ false, %_llgo_20 ]
  %34 = call i1 @llvm.coro.done(ptr %31)
  br i1 %34, label %_llgo_16, label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17
  br i1 %33, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %35 = call ptr @llvm.coro.promise(ptr %31, i32 8, i1 false)
  %36 = getelementptr inbounds { ptr }, ptr %35, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %36, ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %31)
  %37 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %37, label %_llgo_4 [
    i8 0, label %_llgo_21
    i8 1, label %_llgo_5
  ]

_llgo_20:                                         ; preds = %_llgo_18
  %38 = call ptr @llvm.coro.promise(ptr %31, i32 8, i1 false)
  %39 = getelementptr inbounds { ptr }, ptr %38, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %39, ptr %12)
  %40 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %40, label %_llgo_4 [
    i8 0, label %_llgo_22
    i8 1, label %_llgo_5
  ]

_llgo_21:                                         ; preds = %_llgo_19
  br label %_llgo_17

_llgo_22:                                         ; preds = %_llgo_20
  br label %_llgo_17

_llgo_23:                                         ; preds = %_llgo_16
  %41 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %41)
  br label %_llgo_5

_llgo_24:                                         ; preds = %_llgo_16
  br label %_llgo_5

_llgo_25:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.f32equal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.f32equal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.f32equal"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

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

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token) #2

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr)

; Function Attrs: nounwind
declare i8 @llvm.coro.suspend(token, i1) #2

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #4

declare void @free(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.f64equal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.f64equal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.f64equal"(ptr %1, ptr %2)
  ret i1 %3
}

; Function Attrs: nounwind memory(argmem: readwrite)
declare i1 @llvm.coro.done(ptr nocapture readonly) #5

; Function Attrs: nounwind memory(none)
declare ptr @llvm.coro.promise(ptr nocapture, i32, i1) #3

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr)

attributes #0 = { presplitcoroutine }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nounwind }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nounwind memory(argmem: read) }
attributes #5 = { nounwind memory(argmem: readwrite) }
