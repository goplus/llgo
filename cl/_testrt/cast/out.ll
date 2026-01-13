; ModuleID = 'github.com/goplus/llgo/cl/_testrt/cast'
source_filename = "github.com/goplus/llgo/cl/_testrt/cast"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr, i1 }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/cast.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr @"*_llgo_string" }, align 8
@1 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr null }, ptr @_llgo_string }, align 8

define void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32"(float %0, i32 %1) {
_llgo_0:
  %2 = fptosi float %0 to i32
  %3 = icmp ne i32 %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %4, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32$coro"(float %0, i32 %1) #0 {
_llgo_0:
  %2 = alloca { ptr }, align 8
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_9
  %6 = fptosi float %0 to i32
  %7 = icmp ne i32 %6, %1
  br i1 %7, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %8, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %9)
  br label %_llgo_7

_llgo_3:                                          ; preds = %_llgo_1
  br label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_0
  %10 = call i64 @llvm.coro.size.i64()
  %11 = call ptr @malloc(i64 %10)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %12 = phi ptr [ null, %_llgo_0 ], [ %11, %_llgo_4 ]
  %13 = call ptr @llvm.coro.begin(token %4, ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %14 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %14, label %_llgo_6 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_7
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7, %_llgo_5
  %15 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_7:                                          ; preds = %_llgo_3, %_llgo_2, %_llgo_5
  %16 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %16, label %_llgo_6 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_10, %_llgo_7
  %17 = call ptr @llvm.coro.free(token %4, ptr %13)
  call void @free(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_5
  br label %_llgo_1

_llgo_10:                                         ; preds = %_llgo_7
  br label %_llgo_8
}

define void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32U"(float %0, i32 %1) {
_llgo_0:
  %2 = fptoui float %0 to i32
  %3 = icmp ne i32 %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %4, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32U$coro"(float %0, i32 %1) #0 {
_llgo_0:
  %2 = alloca { ptr }, align 8
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_9
  %6 = fptoui float %0 to i32
  %7 = icmp ne i32 %6, %1
  br i1 %7, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %8, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %9)
  br label %_llgo_7

_llgo_3:                                          ; preds = %_llgo_1
  br label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_0
  %10 = call i64 @llvm.coro.size.i64()
  %11 = call ptr @malloc(i64 %10)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %12 = phi ptr [ null, %_llgo_0 ], [ %11, %_llgo_4 ]
  %13 = call ptr @llvm.coro.begin(token %4, ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %14 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %14, label %_llgo_6 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_7
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7, %_llgo_5
  %15 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_7:                                          ; preds = %_llgo_3, %_llgo_2, %_llgo_5
  %16 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %16, label %_llgo_6 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_10, %_llgo_7
  %17 = call ptr @llvm.coro.free(token %4, ptr %13)
  call void @free(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_5
  br label %_llgo_1

_llgo_10:                                         ; preds = %_llgo_7
  br label %_llgo_8
}

define void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto64F"(float %0, double %1) {
_llgo_0:
  %2 = fpext float %0 to double
  %3 = fcmp une double %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %4, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto64F$coro"(float %0, double %1) #0 {
_llgo_0:
  %2 = alloca { ptr }, align 8
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_9
  %6 = fpext float %0 to double
  %7 = fcmp une double %6, %1
  br i1 %7, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %8, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %9)
  br label %_llgo_7

_llgo_3:                                          ; preds = %_llgo_1
  br label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_0
  %10 = call i64 @llvm.coro.size.i64()
  %11 = call ptr @malloc(i64 %10)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %12 = phi ptr [ null, %_llgo_0 ], [ %11, %_llgo_4 ]
  %13 = call ptr @llvm.coro.begin(token %4, ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %14 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %14, label %_llgo_6 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_7
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7, %_llgo_5
  %15 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_7:                                          ; preds = %_llgo_3, %_llgo_2, %_llgo_5
  %16 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %16, label %_llgo_6 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_10, %_llgo_7
  %17 = call ptr @llvm.coro.free(token %4, ptr %13)
  call void @free(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_5
  br label %_llgo_1

_llgo_10:                                         ; preds = %_llgo_7
  br label %_llgo_8
}

define void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8"(float %0, i8 %1) {
_llgo_0:
  %2 = fptosi float %0 to i8
  %3 = icmp ne i8 %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %4, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8$coro"(float %0, i8 %1) #0 {
_llgo_0:
  %2 = alloca { ptr }, align 8
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_9
  %6 = fptosi float %0 to i8
  %7 = icmp ne i8 %6, %1
  br i1 %7, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %8, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %9)
  br label %_llgo_7

_llgo_3:                                          ; preds = %_llgo_1
  br label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_0
  %10 = call i64 @llvm.coro.size.i64()
  %11 = call ptr @malloc(i64 %10)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %12 = phi ptr [ null, %_llgo_0 ], [ %11, %_llgo_4 ]
  %13 = call ptr @llvm.coro.begin(token %4, ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %14 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %14, label %_llgo_6 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_7
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7, %_llgo_5
  %15 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_7:                                          ; preds = %_llgo_3, %_llgo_2, %_llgo_5
  %16 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %16, label %_llgo_6 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_10, %_llgo_7
  %17 = call ptr @llvm.coro.free(token %4, ptr %13)
  call void @free(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_5
  br label %_llgo_1

_llgo_10:                                         ; preds = %_llgo_7
  br label %_llgo_8
}

define void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8U"(float %0, i8 %1) {
_llgo_0:
  %2 = fptoui float %0 to i8
  %3 = icmp ne i8 %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %4, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8U$coro"(float %0, i8 %1) #0 {
_llgo_0:
  %2 = alloca { ptr }, align 8
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_9
  %6 = fptoui float %0 to i8
  %7 = icmp ne i8 %6, %1
  br i1 %7, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %8, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %9)
  br label %_llgo_7

_llgo_3:                                          ; preds = %_llgo_1
  br label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_0
  %10 = call i64 @llvm.coro.size.i64()
  %11 = call ptr @malloc(i64 %10)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %12 = phi ptr [ null, %_llgo_0 ], [ %11, %_llgo_4 ]
  %13 = call ptr @llvm.coro.begin(token %4, ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %14 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %14, label %_llgo_6 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_7
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7, %_llgo_5
  %15 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_7:                                          ; preds = %_llgo_3, %_llgo_2, %_llgo_5
  %16 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %16, label %_llgo_6 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_10, %_llgo_7
  %17 = call ptr @llvm.coro.free(token %4, ptr %13)
  call void @free(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_5
  br label %_llgo_1

_llgo_10:                                         ; preds = %_llgo_7
  br label %_llgo_8
}

define void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32to64"(i32 %0, i64 %1) {
_llgo_0:
  %2 = sext i32 %0 to i64
  %3 = icmp ne i64 %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %4, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32to64$coro"(i32 %0, i64 %1) #0 {
_llgo_0:
  %2 = alloca { ptr }, align 8
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_9
  %6 = sext i32 %0 to i64
  %7 = icmp ne i64 %6, %1
  br i1 %7, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %8, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %9)
  br label %_llgo_7

_llgo_3:                                          ; preds = %_llgo_1
  br label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_0
  %10 = call i64 @llvm.coro.size.i64()
  %11 = call ptr @malloc(i64 %10)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %12 = phi ptr [ null, %_llgo_0 ], [ %11, %_llgo_4 ]
  %13 = call ptr @llvm.coro.begin(token %4, ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %14 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %14, label %_llgo_6 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_7
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7, %_llgo_5
  %15 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_7:                                          ; preds = %_llgo_3, %_llgo_2, %_llgo_5
  %16 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %16, label %_llgo_6 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_10, %_llgo_7
  %17 = call ptr @llvm.coro.free(token %4, ptr %13)
  call void @free(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_5
  br label %_llgo_1

_llgo_10:                                         ; preds = %_llgo_7
  br label %_llgo_8
}

define void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Fto32F"(double %0, float %1) {
_llgo_0:
  %2 = fptrunc double %0 to float
  %3 = fcmp une float %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %4, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Fto32F$coro"(double %0, float %1) #0 {
_llgo_0:
  %2 = alloca { ptr }, align 8
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_9
  %6 = fptrunc double %0 to float
  %7 = fcmp une float %6, %1
  br i1 %7, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %8, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %9)
  br label %_llgo_7

_llgo_3:                                          ; preds = %_llgo_1
  br label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_0
  %10 = call i64 @llvm.coro.size.i64()
  %11 = call ptr @malloc(i64 %10)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %12 = phi ptr [ null, %_llgo_0 ], [ %11, %_llgo_4 ]
  %13 = call ptr @llvm.coro.begin(token %4, ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %14 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %14, label %_llgo_6 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_7
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7, %_llgo_5
  %15 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_7:                                          ; preds = %_llgo_3, %_llgo_2, %_llgo_5
  %16 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %16, label %_llgo_6 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_10, %_llgo_7
  %17 = call ptr @llvm.coro.free(token %4, ptr %13)
  call void @free(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_5
  br label %_llgo_1

_llgo_10:                                         ; preds = %_llgo_7
  br label %_llgo_8
}

define void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Uto64F"(i64 %0, double %1) {
_llgo_0:
  %2 = uitofp i64 %0 to double
  %3 = fcmp une double %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %4, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Uto64F$coro"(i64 %0, double %1) #0 {
_llgo_0:
  %2 = alloca { ptr }, align 8
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_9
  %6 = uitofp i64 %0 to double
  %7 = fcmp une double %6, %1
  br i1 %7, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %8, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %9)
  br label %_llgo_7

_llgo_3:                                          ; preds = %_llgo_1
  br label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_0
  %10 = call i64 @llvm.coro.size.i64()
  %11 = call ptr @malloc(i64 %10)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %12 = phi ptr [ null, %_llgo_0 ], [ %11, %_llgo_4 ]
  %13 = call ptr @llvm.coro.begin(token %4, ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %14 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %14, label %_llgo_6 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_7
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7, %_llgo_5
  %15 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_7:                                          ; preds = %_llgo_3, %_llgo_2, %_llgo_5
  %16 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %16, label %_llgo_6 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_10, %_llgo_7
  %17 = call ptr @llvm.coro.free(token %4, ptr %13)
  call void @free(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_5
  br label %_llgo_1

_llgo_10:                                         ; preds = %_llgo_7
  br label %_llgo_8
}

define void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to64F"(i64 %0, double %1) {
_llgo_0:
  %2 = sitofp i64 %0 to double
  %3 = fcmp une double %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %4, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to64F$coro"(i64 %0, double %1) #0 {
_llgo_0:
  %2 = alloca { ptr }, align 8
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_9
  %6 = sitofp i64 %0 to double
  %7 = fcmp une double %6, %1
  br i1 %7, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %8, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %9)
  br label %_llgo_7

_llgo_3:                                          ; preds = %_llgo_1
  br label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_0
  %10 = call i64 @llvm.coro.size.i64()
  %11 = call ptr @malloc(i64 %10)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %12 = phi ptr [ null, %_llgo_0 ], [ %11, %_llgo_4 ]
  %13 = call ptr @llvm.coro.begin(token %4, ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %14 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %14, label %_llgo_6 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_7
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7, %_llgo_5
  %15 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_7:                                          ; preds = %_llgo_3, %_llgo_2, %_llgo_5
  %16 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %16, label %_llgo_6 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_10, %_llgo_7
  %17 = call ptr @llvm.coro.free(token %4, ptr %13)
  call void @free(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_5
  br label %_llgo_1

_llgo_10:                                         ; preds = %_llgo_7
  br label %_llgo_8
}

define void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8"(i64 %0, i8 %1) {
_llgo_0:
  %2 = trunc i64 %0 to i8
  %3 = icmp ne i8 %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %4, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8$coro"(i64 %0, i8 %1) #0 {
_llgo_0:
  %2 = alloca { ptr }, align 8
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_9
  %6 = trunc i64 %0 to i8
  %7 = icmp ne i8 %6, %1
  br i1 %7, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %8, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %9)
  br label %_llgo_7

_llgo_3:                                          ; preds = %_llgo_1
  br label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_0
  %10 = call i64 @llvm.coro.size.i64()
  %11 = call ptr @malloc(i64 %10)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %12 = phi ptr [ null, %_llgo_0 ], [ %11, %_llgo_4 ]
  %13 = call ptr @llvm.coro.begin(token %4, ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %14 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %14, label %_llgo_6 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_7
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7, %_llgo_5
  %15 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_7:                                          ; preds = %_llgo_3, %_llgo_2, %_llgo_5
  %16 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %16, label %_llgo_6 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_10, %_llgo_7
  %17 = call ptr @llvm.coro.free(token %4, ptr %13)
  call void @free(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_5
  br label %_llgo_1

_llgo_10:                                         ; preds = %_llgo_7
  br label %_llgo_8
}

define void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8U"(i64 %0, i8 %1) {
_llgo_0:
  %2 = trunc i64 %0 to i8
  %3 = icmp ne i8 %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %4, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8U$coro"(i64 %0, i8 %1) #0 {
_llgo_0:
  %2 = alloca { ptr }, align 8
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_9
  %6 = trunc i64 %0 to i8
  %7 = icmp ne i8 %6, %1
  br i1 %7, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %8, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %9)
  br label %_llgo_7

_llgo_3:                                          ; preds = %_llgo_1
  br label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_0
  %10 = call i64 @llvm.coro.size.i64()
  %11 = call ptr @malloc(i64 %10)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %12 = phi ptr [ null, %_llgo_0 ], [ %11, %_llgo_4 ]
  %13 = call ptr @llvm.coro.begin(token %4, ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %14 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %14, label %_llgo_6 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_7
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7, %_llgo_5
  %15 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_7:                                          ; preds = %_llgo_3, %_llgo_2, %_llgo_5
  %16 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %16, label %_llgo_6 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_10, %_llgo_7
  %17 = call ptr @llvm.coro.free(token %4, ptr %13)
  call void @free(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_5
  br label %_llgo_1

_llgo_10:                                         ; preds = %_llgo_7
  br label %_llgo_8
}

define void @"github.com/goplus/llgo/cl/_testrt/cast.cvtUinptr"(i32 %0, i64 %1) {
_llgo_0:
  %2 = sext i32 %0 to i64
  %3 = icmp ne i64 %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %4, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %6 = trunc i64 %1 to i32
  %7 = icmp ne i32 %6, %0
  br i1 %7, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %8, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %9)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvtUinptr$coro"(i32 %0, i64 %1) #0 {
_llgo_0:
  %2 = alloca { ptr }, align 8
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_6, label %_llgo_7

_llgo_1:                                          ; preds = %_llgo_11
  %6 = sext i32 %0 to i64
  %7 = icmp ne i64 %6, %1
  br i1 %7, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %8, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %9)
  br label %_llgo_9

_llgo_3:                                          ; preds = %_llgo_1
  %10 = trunc i64 %1 to i32
  %11 = icmp ne i32 %10, %0
  br i1 %11, label %_llgo_4, label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_3
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %12, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %12, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %13)
  br label %_llgo_9

_llgo_5:                                          ; preds = %_llgo_3
  br label %_llgo_9

_llgo_6:                                          ; preds = %_llgo_0
  %14 = call i64 @llvm.coro.size.i64()
  %15 = call ptr @malloc(i64 %14)
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_0
  %16 = phi ptr [ null, %_llgo_0 ], [ %15, %_llgo_6 ]
  %17 = call ptr @llvm.coro.begin(token %4, ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %18 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %18, label %_llgo_8 [
    i8 0, label %_llgo_11
    i8 1, label %_llgo_9
  ]

_llgo_8:                                          ; preds = %_llgo_10, %_llgo_9, %_llgo_7
  %19 = call i1 @llvm.coro.end(ptr %17, i1 false, token none)
  ret ptr %17

_llgo_9:                                          ; preds = %_llgo_5, %_llgo_4, %_llgo_2, %_llgo_7
  %20 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %20, label %_llgo_8 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_10
  ]

_llgo_10:                                         ; preds = %_llgo_12, %_llgo_9
  %21 = call ptr @llvm.coro.free(token %4, ptr %17)
  call void @free(ptr %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_8

_llgo_11:                                         ; preds = %_llgo_7
  br label %_llgo_1

_llgo_12:                                         ; preds = %_llgo_9
  br label %_llgo_10
}

define void @"github.com/goplus/llgo/cl/_testrt/cast.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/cast.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/cast.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/cast.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8"(i64 0, i8 0)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8"(i64 127, i8 127)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8"(i64 128, i8 -128)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8"(i64 -128, i8 -128)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8"(i64 -129, i8 127)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8"(i64 256, i8 0)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8U"(i64 0, i8 0)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8U"(i64 255, i8 -1)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8U"(i64 256, i8 0)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8U"(i64 257, i8 1)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8U"(i64 -1, i8 -1)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8"(float 0x3FB99999A0000000, i8 0)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8"(float 0x405FC66660000000, i8 127)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8"(float 0x4060033340000000, i8 -128)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8"(float 0xC060033340000000, i8 -128)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8"(float 0xC060233340000000, i8 127)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8"(float 0x40700199A0000000, i8 0)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8U"(float 0.000000e+00, i8 0)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8U"(float 2.550000e+02, i8 -1)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8U"(float 2.560000e+02, i8 0)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8U"(float 2.570000e+02, i8 1)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8U"(float -1.000000e+00, i8 -1)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32"(float 0.000000e+00, i32 0)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32"(float 1.500000e+00, i32 1)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32"(float 0x41D1194D80000000, i32 1147483648)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32"(float 0xC1E0000000000000, i32 -2147483648)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32U"(float 0.000000e+00, i32 0)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32U"(float 1.500000e+00, i32 1)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32U"(float 0x41F0000000000000, i32 0)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32U"(float 0x41F3B9ACA0000000, i32 1000000000)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32U"(float 0xC1F0000000000000, i32 0)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32U"(float 0xC1D34BE880000000, i32 -1294967296)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32U"(float 0xBFF19999A0000000, i32 -1)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto64F"(float 0.000000e+00, double 0.000000e+00)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto64F"(float 1.500000e+00, double 1.500000e+00)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto64F"(float 1.000000e+10, double 1.000000e+10)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto64F"(float -1.000000e+10, double -1.000000e+10)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Fto32F"(double 0.000000e+00, float 0.000000e+00)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Fto32F"(double 1.500000e+00, float 1.500000e+00)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Fto32F"(double 1.000000e+10, float 1.000000e+10)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Fto32F"(double -1.000000e+10, float -1.000000e+10)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to64F"(i64 0, double 0.000000e+00)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to64F"(i64 10000000000, double 1.000000e+10)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to64F"(i64 9223372036854775807, double 0x43E0000000000000)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to64F"(i64 -9223372036854775807, double 0xC3E0000000000000)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Uto64F"(i64 0, double 0.000000e+00)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Uto64F"(i64 10000000000, double 1.000000e+10)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Uto64F"(i64 9223372036854775807, double 0x43E0000000000000)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Uto64F"(i64 -1, double 0x43F0000000000000)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32to64"(i32 0, i64 0)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32to64"(i32 2147483647, i64 2147483647)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvtUinptr"(i32 1024, i64 1024)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/cast.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %4 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8$coro"(i64 0, i8 0)
  br label %_llgo_8

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

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_212, %_llgo_208, %_llgo_204, %_llgo_200, %_llgo_196, %_llgo_192, %_llgo_188, %_llgo_184, %_llgo_180, %_llgo_176, %_llgo_172, %_llgo_168, %_llgo_164, %_llgo_160, %_llgo_156, %_llgo_152, %_llgo_148, %_llgo_144, %_llgo_140, %_llgo_136, %_llgo_132, %_llgo_128, %_llgo_124, %_llgo_120, %_llgo_116, %_llgo_112, %_llgo_108, %_llgo_104, %_llgo_100, %_llgo_96, %_llgo_92, %_llgo_88, %_llgo_84, %_llgo_80, %_llgo_76, %_llgo_72, %_llgo_68, %_llgo_64, %_llgo_60, %_llgo_56, %_llgo_52, %_llgo_48, %_llgo_44, %_llgo_40, %_llgo_36, %_llgo_32, %_llgo_28, %_llgo_24, %_llgo_20, %_llgo_16, %_llgo_12, %_llgo_8, %_llgo_3
  %10 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_5:                                          ; preds = %_llgo_215, %_llgo_214, %_llgo_212, %_llgo_210, %_llgo_208, %_llgo_206, %_llgo_204, %_llgo_202, %_llgo_200, %_llgo_198, %_llgo_196, %_llgo_194, %_llgo_192, %_llgo_190, %_llgo_188, %_llgo_186, %_llgo_184, %_llgo_182, %_llgo_180, %_llgo_178, %_llgo_176, %_llgo_174, %_llgo_172, %_llgo_170, %_llgo_168, %_llgo_166, %_llgo_164, %_llgo_162, %_llgo_160, %_llgo_158, %_llgo_156, %_llgo_154, %_llgo_152, %_llgo_150, %_llgo_148, %_llgo_146, %_llgo_144, %_llgo_142, %_llgo_140, %_llgo_138, %_llgo_136, %_llgo_134, %_llgo_132, %_llgo_130, %_llgo_128, %_llgo_126, %_llgo_124, %_llgo_122, %_llgo_120, %_llgo_118, %_llgo_116, %_llgo_114, %_llgo_112, %_llgo_110, %_llgo_108, %_llgo_106, %_llgo_104, %_llgo_102, %_llgo_100, %_llgo_98, %_llgo_96, %_llgo_94, %_llgo_92, %_llgo_90, %_llgo_88, %_llgo_86, %_llgo_84, %_llgo_82, %_llgo_80, %_llgo_78, %_llgo_76, %_llgo_74, %_llgo_72, %_llgo_70, %_llgo_68, %_llgo_66, %_llgo_64, %_llgo_62, %_llgo_60, %_llgo_58, %_llgo_56, %_llgo_54, %_llgo_52, %_llgo_50, %_llgo_48, %_llgo_46, %_llgo_44, %_llgo_42, %_llgo_40, %_llgo_38, %_llgo_36, %_llgo_34, %_llgo_32, %_llgo_30, %_llgo_28, %_llgo_26, %_llgo_24, %_llgo_22, %_llgo_20, %_llgo_18, %_llgo_16, %_llgo_14, %_llgo_12, %_llgo_10, %_llgo_8, %_llgo_3
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_216
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_216, %_llgo_5
  %12 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_1
  %13 = call ptr @llvm.coro.promise(ptr %4, i32 8, i1 false)
  %14 = getelementptr inbounds { ptr }, ptr %13, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %14, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %4)
  %15 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %15, label %_llgo_4 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_9:                                          ; preds = %_llgo_8
  %16 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %4)
  br i1 %16, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %17 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %17)
  br label %_llgo_5

_llgo_11:                                         ; preds = %_llgo_9
  %18 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8$coro"(i64 127, i8 127)
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  %19 = call ptr @llvm.coro.promise(ptr %18, i32 8, i1 false)
  %20 = getelementptr inbounds { ptr }, ptr %19, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %20, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %18)
  %21 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %21, label %_llgo_4 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_5
  ]

_llgo_13:                                         ; preds = %_llgo_12
  %22 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %18)
  br i1 %22, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  %23 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %23)
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_13
  %24 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8$coro"(i64 128, i8 -128)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15
  %25 = call ptr @llvm.coro.promise(ptr %24, i32 8, i1 false)
  %26 = getelementptr inbounds { ptr }, ptr %25, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %26, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %24)
  %27 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %27, label %_llgo_4 [
    i8 0, label %_llgo_17
    i8 1, label %_llgo_5
  ]

_llgo_17:                                         ; preds = %_llgo_16
  %28 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %24)
  br i1 %28, label %_llgo_18, label %_llgo_19

_llgo_18:                                         ; preds = %_llgo_17
  %29 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %29)
  br label %_llgo_5

_llgo_19:                                         ; preds = %_llgo_17
  %30 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8$coro"(i64 -128, i8 -128)
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19
  %31 = call ptr @llvm.coro.promise(ptr %30, i32 8, i1 false)
  %32 = getelementptr inbounds { ptr }, ptr %31, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %32, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %30)
  %33 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %33, label %_llgo_4 [
    i8 0, label %_llgo_21
    i8 1, label %_llgo_5
  ]

_llgo_21:                                         ; preds = %_llgo_20
  %34 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %30)
  br i1 %34, label %_llgo_22, label %_llgo_23

_llgo_22:                                         ; preds = %_llgo_21
  %35 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %30)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %30)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %35)
  br label %_llgo_5

_llgo_23:                                         ; preds = %_llgo_21
  %36 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8$coro"(i64 -129, i8 127)
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23
  %37 = call ptr @llvm.coro.promise(ptr %36, i32 8, i1 false)
  %38 = getelementptr inbounds { ptr }, ptr %37, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %38, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %36)
  %39 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %39, label %_llgo_4 [
    i8 0, label %_llgo_25
    i8 1, label %_llgo_5
  ]

_llgo_25:                                         ; preds = %_llgo_24
  %40 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %36)
  br i1 %40, label %_llgo_26, label %_llgo_27

_llgo_26:                                         ; preds = %_llgo_25
  %41 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %36)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %36)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %41)
  br label %_llgo_5

_llgo_27:                                         ; preds = %_llgo_25
  %42 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8$coro"(i64 256, i8 0)
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27
  %43 = call ptr @llvm.coro.promise(ptr %42, i32 8, i1 false)
  %44 = getelementptr inbounds { ptr }, ptr %43, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %44, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %42)
  %45 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %45, label %_llgo_4 [
    i8 0, label %_llgo_29
    i8 1, label %_llgo_5
  ]

_llgo_29:                                         ; preds = %_llgo_28
  %46 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %42)
  br i1 %46, label %_llgo_30, label %_llgo_31

_llgo_30:                                         ; preds = %_llgo_29
  %47 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %42)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %42)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %47)
  br label %_llgo_5

_llgo_31:                                         ; preds = %_llgo_29
  %48 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8U$coro"(i64 0, i8 0)
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31
  %49 = call ptr @llvm.coro.promise(ptr %48, i32 8, i1 false)
  %50 = getelementptr inbounds { ptr }, ptr %49, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %50, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %48)
  %51 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %51, label %_llgo_4 [
    i8 0, label %_llgo_33
    i8 1, label %_llgo_5
  ]

_llgo_33:                                         ; preds = %_llgo_32
  %52 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %48)
  br i1 %52, label %_llgo_34, label %_llgo_35

_llgo_34:                                         ; preds = %_llgo_33
  %53 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %48)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %48)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %53)
  br label %_llgo_5

_llgo_35:                                         ; preds = %_llgo_33
  %54 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8U$coro"(i64 255, i8 -1)
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35
  %55 = call ptr @llvm.coro.promise(ptr %54, i32 8, i1 false)
  %56 = getelementptr inbounds { ptr }, ptr %55, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %56, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %54)
  %57 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %57, label %_llgo_4 [
    i8 0, label %_llgo_37
    i8 1, label %_llgo_5
  ]

_llgo_37:                                         ; preds = %_llgo_36
  %58 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %54)
  br i1 %58, label %_llgo_38, label %_llgo_39

_llgo_38:                                         ; preds = %_llgo_37
  %59 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %54)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %54)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %59)
  br label %_llgo_5

_llgo_39:                                         ; preds = %_llgo_37
  %60 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8U$coro"(i64 256, i8 0)
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39
  %61 = call ptr @llvm.coro.promise(ptr %60, i32 8, i1 false)
  %62 = getelementptr inbounds { ptr }, ptr %61, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %62, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %60)
  %63 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %63, label %_llgo_4 [
    i8 0, label %_llgo_41
    i8 1, label %_llgo_5
  ]

_llgo_41:                                         ; preds = %_llgo_40
  %64 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %60)
  br i1 %64, label %_llgo_42, label %_llgo_43

_llgo_42:                                         ; preds = %_llgo_41
  %65 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %60)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %60)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %65)
  br label %_llgo_5

_llgo_43:                                         ; preds = %_llgo_41
  %66 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8U$coro"(i64 257, i8 1)
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43
  %67 = call ptr @llvm.coro.promise(ptr %66, i32 8, i1 false)
  %68 = getelementptr inbounds { ptr }, ptr %67, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %68, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %66)
  %69 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %69, label %_llgo_4 [
    i8 0, label %_llgo_45
    i8 1, label %_llgo_5
  ]

_llgo_45:                                         ; preds = %_llgo_44
  %70 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %66)
  br i1 %70, label %_llgo_46, label %_llgo_47

_llgo_46:                                         ; preds = %_llgo_45
  %71 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %66)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %66)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %71)
  br label %_llgo_5

_llgo_47:                                         ; preds = %_llgo_45
  %72 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8U$coro"(i64 -1, i8 -1)
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47
  %73 = call ptr @llvm.coro.promise(ptr %72, i32 8, i1 false)
  %74 = getelementptr inbounds { ptr }, ptr %73, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %74, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %72)
  %75 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %75, label %_llgo_4 [
    i8 0, label %_llgo_49
    i8 1, label %_llgo_5
  ]

_llgo_49:                                         ; preds = %_llgo_48
  %76 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %72)
  br i1 %76, label %_llgo_50, label %_llgo_51

_llgo_50:                                         ; preds = %_llgo_49
  %77 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %72)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %72)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %77)
  br label %_llgo_5

_llgo_51:                                         ; preds = %_llgo_49
  %78 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8$coro"(float 0x3FB99999A0000000, i8 0)
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51
  %79 = call ptr @llvm.coro.promise(ptr %78, i32 8, i1 false)
  %80 = getelementptr inbounds { ptr }, ptr %79, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %80, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %78)
  %81 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %81, label %_llgo_4 [
    i8 0, label %_llgo_53
    i8 1, label %_llgo_5
  ]

_llgo_53:                                         ; preds = %_llgo_52
  %82 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %78)
  br i1 %82, label %_llgo_54, label %_llgo_55

_llgo_54:                                         ; preds = %_llgo_53
  %83 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %78)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %78)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %83)
  br label %_llgo_5

_llgo_55:                                         ; preds = %_llgo_53
  %84 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8$coro"(float 0x405FC66660000000, i8 127)
  br label %_llgo_56

_llgo_56:                                         ; preds = %_llgo_55
  %85 = call ptr @llvm.coro.promise(ptr %84, i32 8, i1 false)
  %86 = getelementptr inbounds { ptr }, ptr %85, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %86, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %84)
  %87 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %87, label %_llgo_4 [
    i8 0, label %_llgo_57
    i8 1, label %_llgo_5
  ]

_llgo_57:                                         ; preds = %_llgo_56
  %88 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %84)
  br i1 %88, label %_llgo_58, label %_llgo_59

_llgo_58:                                         ; preds = %_llgo_57
  %89 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %84)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %84)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %89)
  br label %_llgo_5

_llgo_59:                                         ; preds = %_llgo_57
  %90 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8$coro"(float 0x4060033340000000, i8 -128)
  br label %_llgo_60

_llgo_60:                                         ; preds = %_llgo_59
  %91 = call ptr @llvm.coro.promise(ptr %90, i32 8, i1 false)
  %92 = getelementptr inbounds { ptr }, ptr %91, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %92, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %90)
  %93 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %93, label %_llgo_4 [
    i8 0, label %_llgo_61
    i8 1, label %_llgo_5
  ]

_llgo_61:                                         ; preds = %_llgo_60
  %94 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %90)
  br i1 %94, label %_llgo_62, label %_llgo_63

_llgo_62:                                         ; preds = %_llgo_61
  %95 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %90)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %90)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %95)
  br label %_llgo_5

_llgo_63:                                         ; preds = %_llgo_61
  %96 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8$coro"(float 0xC060033340000000, i8 -128)
  br label %_llgo_64

_llgo_64:                                         ; preds = %_llgo_63
  %97 = call ptr @llvm.coro.promise(ptr %96, i32 8, i1 false)
  %98 = getelementptr inbounds { ptr }, ptr %97, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %98, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %96)
  %99 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %99, label %_llgo_4 [
    i8 0, label %_llgo_65
    i8 1, label %_llgo_5
  ]

_llgo_65:                                         ; preds = %_llgo_64
  %100 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %96)
  br i1 %100, label %_llgo_66, label %_llgo_67

_llgo_66:                                         ; preds = %_llgo_65
  %101 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %96)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %96)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %101)
  br label %_llgo_5

_llgo_67:                                         ; preds = %_llgo_65
  %102 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8$coro"(float 0xC060233340000000, i8 127)
  br label %_llgo_68

_llgo_68:                                         ; preds = %_llgo_67
  %103 = call ptr @llvm.coro.promise(ptr %102, i32 8, i1 false)
  %104 = getelementptr inbounds { ptr }, ptr %103, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %104, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %102)
  %105 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %105, label %_llgo_4 [
    i8 0, label %_llgo_69
    i8 1, label %_llgo_5
  ]

_llgo_69:                                         ; preds = %_llgo_68
  %106 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %102)
  br i1 %106, label %_llgo_70, label %_llgo_71

_llgo_70:                                         ; preds = %_llgo_69
  %107 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %102)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %102)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %107)
  br label %_llgo_5

_llgo_71:                                         ; preds = %_llgo_69
  %108 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8$coro"(float 0x40700199A0000000, i8 0)
  br label %_llgo_72

_llgo_72:                                         ; preds = %_llgo_71
  %109 = call ptr @llvm.coro.promise(ptr %108, i32 8, i1 false)
  %110 = getelementptr inbounds { ptr }, ptr %109, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %110, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %108)
  %111 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %111, label %_llgo_4 [
    i8 0, label %_llgo_73
    i8 1, label %_llgo_5
  ]

_llgo_73:                                         ; preds = %_llgo_72
  %112 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %108)
  br i1 %112, label %_llgo_74, label %_llgo_75

_llgo_74:                                         ; preds = %_llgo_73
  %113 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %108)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %108)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %113)
  br label %_llgo_5

_llgo_75:                                         ; preds = %_llgo_73
  %114 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8U$coro"(float 0.000000e+00, i8 0)
  br label %_llgo_76

_llgo_76:                                         ; preds = %_llgo_75
  %115 = call ptr @llvm.coro.promise(ptr %114, i32 8, i1 false)
  %116 = getelementptr inbounds { ptr }, ptr %115, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %116, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %114)
  %117 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %117, label %_llgo_4 [
    i8 0, label %_llgo_77
    i8 1, label %_llgo_5
  ]

_llgo_77:                                         ; preds = %_llgo_76
  %118 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %114)
  br i1 %118, label %_llgo_78, label %_llgo_79

_llgo_78:                                         ; preds = %_llgo_77
  %119 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %114)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %114)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %119)
  br label %_llgo_5

_llgo_79:                                         ; preds = %_llgo_77
  %120 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8U$coro"(float 2.550000e+02, i8 -1)
  br label %_llgo_80

_llgo_80:                                         ; preds = %_llgo_79
  %121 = call ptr @llvm.coro.promise(ptr %120, i32 8, i1 false)
  %122 = getelementptr inbounds { ptr }, ptr %121, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %122, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %120)
  %123 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %123, label %_llgo_4 [
    i8 0, label %_llgo_81
    i8 1, label %_llgo_5
  ]

_llgo_81:                                         ; preds = %_llgo_80
  %124 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %120)
  br i1 %124, label %_llgo_82, label %_llgo_83

_llgo_82:                                         ; preds = %_llgo_81
  %125 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %120)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %120)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %125)
  br label %_llgo_5

_llgo_83:                                         ; preds = %_llgo_81
  %126 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8U$coro"(float 2.560000e+02, i8 0)
  br label %_llgo_84

_llgo_84:                                         ; preds = %_llgo_83
  %127 = call ptr @llvm.coro.promise(ptr %126, i32 8, i1 false)
  %128 = getelementptr inbounds { ptr }, ptr %127, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %128, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %126)
  %129 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %129, label %_llgo_4 [
    i8 0, label %_llgo_85
    i8 1, label %_llgo_5
  ]

_llgo_85:                                         ; preds = %_llgo_84
  %130 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %126)
  br i1 %130, label %_llgo_86, label %_llgo_87

_llgo_86:                                         ; preds = %_llgo_85
  %131 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %126)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %126)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %131)
  br label %_llgo_5

_llgo_87:                                         ; preds = %_llgo_85
  %132 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8U$coro"(float 2.570000e+02, i8 1)
  br label %_llgo_88

_llgo_88:                                         ; preds = %_llgo_87
  %133 = call ptr @llvm.coro.promise(ptr %132, i32 8, i1 false)
  %134 = getelementptr inbounds { ptr }, ptr %133, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %134, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %132)
  %135 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %135, label %_llgo_4 [
    i8 0, label %_llgo_89
    i8 1, label %_llgo_5
  ]

_llgo_89:                                         ; preds = %_llgo_88
  %136 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %132)
  br i1 %136, label %_llgo_90, label %_llgo_91

_llgo_90:                                         ; preds = %_llgo_89
  %137 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %132)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %132)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %137)
  br label %_llgo_5

_llgo_91:                                         ; preds = %_llgo_89
  %138 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8U$coro"(float -1.000000e+00, i8 -1)
  br label %_llgo_92

_llgo_92:                                         ; preds = %_llgo_91
  %139 = call ptr @llvm.coro.promise(ptr %138, i32 8, i1 false)
  %140 = getelementptr inbounds { ptr }, ptr %139, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %140, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %138)
  %141 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %141, label %_llgo_4 [
    i8 0, label %_llgo_93
    i8 1, label %_llgo_5
  ]

_llgo_93:                                         ; preds = %_llgo_92
  %142 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %138)
  br i1 %142, label %_llgo_94, label %_llgo_95

_llgo_94:                                         ; preds = %_llgo_93
  %143 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %138)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %138)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %143)
  br label %_llgo_5

_llgo_95:                                         ; preds = %_llgo_93
  %144 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32$coro"(float 0.000000e+00, i32 0)
  br label %_llgo_96

_llgo_96:                                         ; preds = %_llgo_95
  %145 = call ptr @llvm.coro.promise(ptr %144, i32 8, i1 false)
  %146 = getelementptr inbounds { ptr }, ptr %145, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %146, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %144)
  %147 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %147, label %_llgo_4 [
    i8 0, label %_llgo_97
    i8 1, label %_llgo_5
  ]

_llgo_97:                                         ; preds = %_llgo_96
  %148 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %144)
  br i1 %148, label %_llgo_98, label %_llgo_99

_llgo_98:                                         ; preds = %_llgo_97
  %149 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %144)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %144)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %149)
  br label %_llgo_5

_llgo_99:                                         ; preds = %_llgo_97
  %150 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32$coro"(float 1.500000e+00, i32 1)
  br label %_llgo_100

_llgo_100:                                        ; preds = %_llgo_99
  %151 = call ptr @llvm.coro.promise(ptr %150, i32 8, i1 false)
  %152 = getelementptr inbounds { ptr }, ptr %151, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %152, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %150)
  %153 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %153, label %_llgo_4 [
    i8 0, label %_llgo_101
    i8 1, label %_llgo_5
  ]

_llgo_101:                                        ; preds = %_llgo_100
  %154 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %150)
  br i1 %154, label %_llgo_102, label %_llgo_103

_llgo_102:                                        ; preds = %_llgo_101
  %155 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %150)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %150)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %155)
  br label %_llgo_5

_llgo_103:                                        ; preds = %_llgo_101
  %156 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32$coro"(float 0x41D1194D80000000, i32 1147483648)
  br label %_llgo_104

_llgo_104:                                        ; preds = %_llgo_103
  %157 = call ptr @llvm.coro.promise(ptr %156, i32 8, i1 false)
  %158 = getelementptr inbounds { ptr }, ptr %157, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %158, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %156)
  %159 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %159, label %_llgo_4 [
    i8 0, label %_llgo_105
    i8 1, label %_llgo_5
  ]

_llgo_105:                                        ; preds = %_llgo_104
  %160 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %156)
  br i1 %160, label %_llgo_106, label %_llgo_107

_llgo_106:                                        ; preds = %_llgo_105
  %161 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %156)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %156)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %161)
  br label %_llgo_5

_llgo_107:                                        ; preds = %_llgo_105
  %162 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32$coro"(float 0xC1E0000000000000, i32 -2147483648)
  br label %_llgo_108

_llgo_108:                                        ; preds = %_llgo_107
  %163 = call ptr @llvm.coro.promise(ptr %162, i32 8, i1 false)
  %164 = getelementptr inbounds { ptr }, ptr %163, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %164, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %162)
  %165 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %165, label %_llgo_4 [
    i8 0, label %_llgo_109
    i8 1, label %_llgo_5
  ]

_llgo_109:                                        ; preds = %_llgo_108
  %166 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %162)
  br i1 %166, label %_llgo_110, label %_llgo_111

_llgo_110:                                        ; preds = %_llgo_109
  %167 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %162)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %162)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %167)
  br label %_llgo_5

_llgo_111:                                        ; preds = %_llgo_109
  %168 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32U$coro"(float 0.000000e+00, i32 0)
  br label %_llgo_112

_llgo_112:                                        ; preds = %_llgo_111
  %169 = call ptr @llvm.coro.promise(ptr %168, i32 8, i1 false)
  %170 = getelementptr inbounds { ptr }, ptr %169, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %170, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %168)
  %171 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %171, label %_llgo_4 [
    i8 0, label %_llgo_113
    i8 1, label %_llgo_5
  ]

_llgo_113:                                        ; preds = %_llgo_112
  %172 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %168)
  br i1 %172, label %_llgo_114, label %_llgo_115

_llgo_114:                                        ; preds = %_llgo_113
  %173 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %168)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %168)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %173)
  br label %_llgo_5

_llgo_115:                                        ; preds = %_llgo_113
  %174 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32U$coro"(float 1.500000e+00, i32 1)
  br label %_llgo_116

_llgo_116:                                        ; preds = %_llgo_115
  %175 = call ptr @llvm.coro.promise(ptr %174, i32 8, i1 false)
  %176 = getelementptr inbounds { ptr }, ptr %175, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %176, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %174)
  %177 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %177, label %_llgo_4 [
    i8 0, label %_llgo_117
    i8 1, label %_llgo_5
  ]

_llgo_117:                                        ; preds = %_llgo_116
  %178 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %174)
  br i1 %178, label %_llgo_118, label %_llgo_119

_llgo_118:                                        ; preds = %_llgo_117
  %179 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %174)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %174)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %179)
  br label %_llgo_5

_llgo_119:                                        ; preds = %_llgo_117
  %180 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32U$coro"(float 0x41F0000000000000, i32 0)
  br label %_llgo_120

_llgo_120:                                        ; preds = %_llgo_119
  %181 = call ptr @llvm.coro.promise(ptr %180, i32 8, i1 false)
  %182 = getelementptr inbounds { ptr }, ptr %181, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %182, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %180)
  %183 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %183, label %_llgo_4 [
    i8 0, label %_llgo_121
    i8 1, label %_llgo_5
  ]

_llgo_121:                                        ; preds = %_llgo_120
  %184 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %180)
  br i1 %184, label %_llgo_122, label %_llgo_123

_llgo_122:                                        ; preds = %_llgo_121
  %185 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %180)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %180)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %185)
  br label %_llgo_5

_llgo_123:                                        ; preds = %_llgo_121
  %186 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32U$coro"(float 0x41F3B9ACA0000000, i32 1000000000)
  br label %_llgo_124

_llgo_124:                                        ; preds = %_llgo_123
  %187 = call ptr @llvm.coro.promise(ptr %186, i32 8, i1 false)
  %188 = getelementptr inbounds { ptr }, ptr %187, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %188, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %186)
  %189 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %189, label %_llgo_4 [
    i8 0, label %_llgo_125
    i8 1, label %_llgo_5
  ]

_llgo_125:                                        ; preds = %_llgo_124
  %190 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %186)
  br i1 %190, label %_llgo_126, label %_llgo_127

_llgo_126:                                        ; preds = %_llgo_125
  %191 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %186)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %186)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %191)
  br label %_llgo_5

_llgo_127:                                        ; preds = %_llgo_125
  %192 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32U$coro"(float 0xC1F0000000000000, i32 0)
  br label %_llgo_128

_llgo_128:                                        ; preds = %_llgo_127
  %193 = call ptr @llvm.coro.promise(ptr %192, i32 8, i1 false)
  %194 = getelementptr inbounds { ptr }, ptr %193, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %194, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %192)
  %195 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %195, label %_llgo_4 [
    i8 0, label %_llgo_129
    i8 1, label %_llgo_5
  ]

_llgo_129:                                        ; preds = %_llgo_128
  %196 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %192)
  br i1 %196, label %_llgo_130, label %_llgo_131

_llgo_130:                                        ; preds = %_llgo_129
  %197 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %192)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %192)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %197)
  br label %_llgo_5

_llgo_131:                                        ; preds = %_llgo_129
  %198 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32U$coro"(float 0xC1D34BE880000000, i32 -1294967296)
  br label %_llgo_132

_llgo_132:                                        ; preds = %_llgo_131
  %199 = call ptr @llvm.coro.promise(ptr %198, i32 8, i1 false)
  %200 = getelementptr inbounds { ptr }, ptr %199, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %200, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %198)
  %201 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %201, label %_llgo_4 [
    i8 0, label %_llgo_133
    i8 1, label %_llgo_5
  ]

_llgo_133:                                        ; preds = %_llgo_132
  %202 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %198)
  br i1 %202, label %_llgo_134, label %_llgo_135

_llgo_134:                                        ; preds = %_llgo_133
  %203 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %198)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %198)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %203)
  br label %_llgo_5

_llgo_135:                                        ; preds = %_llgo_133
  %204 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32U$coro"(float 0xBFF19999A0000000, i32 -1)
  br label %_llgo_136

_llgo_136:                                        ; preds = %_llgo_135
  %205 = call ptr @llvm.coro.promise(ptr %204, i32 8, i1 false)
  %206 = getelementptr inbounds { ptr }, ptr %205, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %206, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %204)
  %207 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %207, label %_llgo_4 [
    i8 0, label %_llgo_137
    i8 1, label %_llgo_5
  ]

_llgo_137:                                        ; preds = %_llgo_136
  %208 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %204)
  br i1 %208, label %_llgo_138, label %_llgo_139

_llgo_138:                                        ; preds = %_llgo_137
  %209 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %204)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %204)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %209)
  br label %_llgo_5

_llgo_139:                                        ; preds = %_llgo_137
  %210 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto64F$coro"(float 0.000000e+00, double 0.000000e+00)
  br label %_llgo_140

_llgo_140:                                        ; preds = %_llgo_139
  %211 = call ptr @llvm.coro.promise(ptr %210, i32 8, i1 false)
  %212 = getelementptr inbounds { ptr }, ptr %211, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %212, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %210)
  %213 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %213, label %_llgo_4 [
    i8 0, label %_llgo_141
    i8 1, label %_llgo_5
  ]

_llgo_141:                                        ; preds = %_llgo_140
  %214 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %210)
  br i1 %214, label %_llgo_142, label %_llgo_143

_llgo_142:                                        ; preds = %_llgo_141
  %215 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %210)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %210)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %215)
  br label %_llgo_5

_llgo_143:                                        ; preds = %_llgo_141
  %216 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto64F$coro"(float 1.500000e+00, double 1.500000e+00)
  br label %_llgo_144

_llgo_144:                                        ; preds = %_llgo_143
  %217 = call ptr @llvm.coro.promise(ptr %216, i32 8, i1 false)
  %218 = getelementptr inbounds { ptr }, ptr %217, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %218, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %216)
  %219 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %219, label %_llgo_4 [
    i8 0, label %_llgo_145
    i8 1, label %_llgo_5
  ]

_llgo_145:                                        ; preds = %_llgo_144
  %220 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %216)
  br i1 %220, label %_llgo_146, label %_llgo_147

_llgo_146:                                        ; preds = %_llgo_145
  %221 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %216)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %216)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %221)
  br label %_llgo_5

_llgo_147:                                        ; preds = %_llgo_145
  %222 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto64F$coro"(float 1.000000e+10, double 1.000000e+10)
  br label %_llgo_148

_llgo_148:                                        ; preds = %_llgo_147
  %223 = call ptr @llvm.coro.promise(ptr %222, i32 8, i1 false)
  %224 = getelementptr inbounds { ptr }, ptr %223, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %224, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %222)
  %225 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %225, label %_llgo_4 [
    i8 0, label %_llgo_149
    i8 1, label %_llgo_5
  ]

_llgo_149:                                        ; preds = %_llgo_148
  %226 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %222)
  br i1 %226, label %_llgo_150, label %_llgo_151

_llgo_150:                                        ; preds = %_llgo_149
  %227 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %222)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %222)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %227)
  br label %_llgo_5

_llgo_151:                                        ; preds = %_llgo_149
  %228 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto64F$coro"(float -1.000000e+10, double -1.000000e+10)
  br label %_llgo_152

_llgo_152:                                        ; preds = %_llgo_151
  %229 = call ptr @llvm.coro.promise(ptr %228, i32 8, i1 false)
  %230 = getelementptr inbounds { ptr }, ptr %229, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %230, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %228)
  %231 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %231, label %_llgo_4 [
    i8 0, label %_llgo_153
    i8 1, label %_llgo_5
  ]

_llgo_153:                                        ; preds = %_llgo_152
  %232 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %228)
  br i1 %232, label %_llgo_154, label %_llgo_155

_llgo_154:                                        ; preds = %_llgo_153
  %233 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %228)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %228)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %233)
  br label %_llgo_5

_llgo_155:                                        ; preds = %_llgo_153
  %234 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Fto32F$coro"(double 0.000000e+00, float 0.000000e+00)
  br label %_llgo_156

_llgo_156:                                        ; preds = %_llgo_155
  %235 = call ptr @llvm.coro.promise(ptr %234, i32 8, i1 false)
  %236 = getelementptr inbounds { ptr }, ptr %235, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %236, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %234)
  %237 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %237, label %_llgo_4 [
    i8 0, label %_llgo_157
    i8 1, label %_llgo_5
  ]

_llgo_157:                                        ; preds = %_llgo_156
  %238 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %234)
  br i1 %238, label %_llgo_158, label %_llgo_159

_llgo_158:                                        ; preds = %_llgo_157
  %239 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %234)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %234)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %239)
  br label %_llgo_5

_llgo_159:                                        ; preds = %_llgo_157
  %240 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Fto32F$coro"(double 1.500000e+00, float 1.500000e+00)
  br label %_llgo_160

_llgo_160:                                        ; preds = %_llgo_159
  %241 = call ptr @llvm.coro.promise(ptr %240, i32 8, i1 false)
  %242 = getelementptr inbounds { ptr }, ptr %241, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %242, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %240)
  %243 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %243, label %_llgo_4 [
    i8 0, label %_llgo_161
    i8 1, label %_llgo_5
  ]

_llgo_161:                                        ; preds = %_llgo_160
  %244 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %240)
  br i1 %244, label %_llgo_162, label %_llgo_163

_llgo_162:                                        ; preds = %_llgo_161
  %245 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %240)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %240)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %245)
  br label %_llgo_5

_llgo_163:                                        ; preds = %_llgo_161
  %246 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Fto32F$coro"(double 1.000000e+10, float 1.000000e+10)
  br label %_llgo_164

_llgo_164:                                        ; preds = %_llgo_163
  %247 = call ptr @llvm.coro.promise(ptr %246, i32 8, i1 false)
  %248 = getelementptr inbounds { ptr }, ptr %247, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %248, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %246)
  %249 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %249, label %_llgo_4 [
    i8 0, label %_llgo_165
    i8 1, label %_llgo_5
  ]

_llgo_165:                                        ; preds = %_llgo_164
  %250 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %246)
  br i1 %250, label %_llgo_166, label %_llgo_167

_llgo_166:                                        ; preds = %_llgo_165
  %251 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %246)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %246)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %251)
  br label %_llgo_5

_llgo_167:                                        ; preds = %_llgo_165
  %252 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Fto32F$coro"(double -1.000000e+10, float -1.000000e+10)
  br label %_llgo_168

_llgo_168:                                        ; preds = %_llgo_167
  %253 = call ptr @llvm.coro.promise(ptr %252, i32 8, i1 false)
  %254 = getelementptr inbounds { ptr }, ptr %253, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %254, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %252)
  %255 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %255, label %_llgo_4 [
    i8 0, label %_llgo_169
    i8 1, label %_llgo_5
  ]

_llgo_169:                                        ; preds = %_llgo_168
  %256 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %252)
  br i1 %256, label %_llgo_170, label %_llgo_171

_llgo_170:                                        ; preds = %_llgo_169
  %257 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %252)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %252)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %257)
  br label %_llgo_5

_llgo_171:                                        ; preds = %_llgo_169
  %258 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to64F$coro"(i64 0, double 0.000000e+00)
  br label %_llgo_172

_llgo_172:                                        ; preds = %_llgo_171
  %259 = call ptr @llvm.coro.promise(ptr %258, i32 8, i1 false)
  %260 = getelementptr inbounds { ptr }, ptr %259, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %260, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %258)
  %261 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %261, label %_llgo_4 [
    i8 0, label %_llgo_173
    i8 1, label %_llgo_5
  ]

_llgo_173:                                        ; preds = %_llgo_172
  %262 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %258)
  br i1 %262, label %_llgo_174, label %_llgo_175

_llgo_174:                                        ; preds = %_llgo_173
  %263 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %258)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %258)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %263)
  br label %_llgo_5

_llgo_175:                                        ; preds = %_llgo_173
  %264 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to64F$coro"(i64 10000000000, double 1.000000e+10)
  br label %_llgo_176

_llgo_176:                                        ; preds = %_llgo_175
  %265 = call ptr @llvm.coro.promise(ptr %264, i32 8, i1 false)
  %266 = getelementptr inbounds { ptr }, ptr %265, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %266, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %264)
  %267 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %267, label %_llgo_4 [
    i8 0, label %_llgo_177
    i8 1, label %_llgo_5
  ]

_llgo_177:                                        ; preds = %_llgo_176
  %268 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %264)
  br i1 %268, label %_llgo_178, label %_llgo_179

_llgo_178:                                        ; preds = %_llgo_177
  %269 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %264)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %264)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %269)
  br label %_llgo_5

_llgo_179:                                        ; preds = %_llgo_177
  %270 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to64F$coro"(i64 9223372036854775807, double 0x43E0000000000000)
  br label %_llgo_180

_llgo_180:                                        ; preds = %_llgo_179
  %271 = call ptr @llvm.coro.promise(ptr %270, i32 8, i1 false)
  %272 = getelementptr inbounds { ptr }, ptr %271, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %272, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %270)
  %273 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %273, label %_llgo_4 [
    i8 0, label %_llgo_181
    i8 1, label %_llgo_5
  ]

_llgo_181:                                        ; preds = %_llgo_180
  %274 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %270)
  br i1 %274, label %_llgo_182, label %_llgo_183

_llgo_182:                                        ; preds = %_llgo_181
  %275 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %270)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %270)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %275)
  br label %_llgo_5

_llgo_183:                                        ; preds = %_llgo_181
  %276 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to64F$coro"(i64 -9223372036854775807, double 0xC3E0000000000000)
  br label %_llgo_184

_llgo_184:                                        ; preds = %_llgo_183
  %277 = call ptr @llvm.coro.promise(ptr %276, i32 8, i1 false)
  %278 = getelementptr inbounds { ptr }, ptr %277, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %278, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %276)
  %279 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %279, label %_llgo_4 [
    i8 0, label %_llgo_185
    i8 1, label %_llgo_5
  ]

_llgo_185:                                        ; preds = %_llgo_184
  %280 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %276)
  br i1 %280, label %_llgo_186, label %_llgo_187

_llgo_186:                                        ; preds = %_llgo_185
  %281 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %276)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %276)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %281)
  br label %_llgo_5

_llgo_187:                                        ; preds = %_llgo_185
  %282 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Uto64F$coro"(i64 0, double 0.000000e+00)
  br label %_llgo_188

_llgo_188:                                        ; preds = %_llgo_187
  %283 = call ptr @llvm.coro.promise(ptr %282, i32 8, i1 false)
  %284 = getelementptr inbounds { ptr }, ptr %283, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %284, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %282)
  %285 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %285, label %_llgo_4 [
    i8 0, label %_llgo_189
    i8 1, label %_llgo_5
  ]

_llgo_189:                                        ; preds = %_llgo_188
  %286 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %282)
  br i1 %286, label %_llgo_190, label %_llgo_191

_llgo_190:                                        ; preds = %_llgo_189
  %287 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %282)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %282)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %287)
  br label %_llgo_5

_llgo_191:                                        ; preds = %_llgo_189
  %288 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Uto64F$coro"(i64 10000000000, double 1.000000e+10)
  br label %_llgo_192

_llgo_192:                                        ; preds = %_llgo_191
  %289 = call ptr @llvm.coro.promise(ptr %288, i32 8, i1 false)
  %290 = getelementptr inbounds { ptr }, ptr %289, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %290, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %288)
  %291 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %291, label %_llgo_4 [
    i8 0, label %_llgo_193
    i8 1, label %_llgo_5
  ]

_llgo_193:                                        ; preds = %_llgo_192
  %292 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %288)
  br i1 %292, label %_llgo_194, label %_llgo_195

_llgo_194:                                        ; preds = %_llgo_193
  %293 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %288)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %288)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %293)
  br label %_llgo_5

_llgo_195:                                        ; preds = %_llgo_193
  %294 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Uto64F$coro"(i64 9223372036854775807, double 0x43E0000000000000)
  br label %_llgo_196

_llgo_196:                                        ; preds = %_llgo_195
  %295 = call ptr @llvm.coro.promise(ptr %294, i32 8, i1 false)
  %296 = getelementptr inbounds { ptr }, ptr %295, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %296, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %294)
  %297 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %297, label %_llgo_4 [
    i8 0, label %_llgo_197
    i8 1, label %_llgo_5
  ]

_llgo_197:                                        ; preds = %_llgo_196
  %298 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %294)
  br i1 %298, label %_llgo_198, label %_llgo_199

_llgo_198:                                        ; preds = %_llgo_197
  %299 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %294)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %294)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %299)
  br label %_llgo_5

_llgo_199:                                        ; preds = %_llgo_197
  %300 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Uto64F$coro"(i64 -1, double 0x43F0000000000000)
  br label %_llgo_200

_llgo_200:                                        ; preds = %_llgo_199
  %301 = call ptr @llvm.coro.promise(ptr %300, i32 8, i1 false)
  %302 = getelementptr inbounds { ptr }, ptr %301, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %302, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %300)
  %303 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %303, label %_llgo_4 [
    i8 0, label %_llgo_201
    i8 1, label %_llgo_5
  ]

_llgo_201:                                        ; preds = %_llgo_200
  %304 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %300)
  br i1 %304, label %_llgo_202, label %_llgo_203

_llgo_202:                                        ; preds = %_llgo_201
  %305 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %300)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %300)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %305)
  br label %_llgo_5

_llgo_203:                                        ; preds = %_llgo_201
  %306 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32to64$coro"(i32 0, i64 0)
  br label %_llgo_204

_llgo_204:                                        ; preds = %_llgo_203
  %307 = call ptr @llvm.coro.promise(ptr %306, i32 8, i1 false)
  %308 = getelementptr inbounds { ptr }, ptr %307, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %308, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %306)
  %309 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %309, label %_llgo_4 [
    i8 0, label %_llgo_205
    i8 1, label %_llgo_5
  ]

_llgo_205:                                        ; preds = %_llgo_204
  %310 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %306)
  br i1 %310, label %_llgo_206, label %_llgo_207

_llgo_206:                                        ; preds = %_llgo_205
  %311 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %306)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %306)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %311)
  br label %_llgo_5

_llgo_207:                                        ; preds = %_llgo_205
  %312 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32to64$coro"(i32 2147483647, i64 2147483647)
  br label %_llgo_208

_llgo_208:                                        ; preds = %_llgo_207
  %313 = call ptr @llvm.coro.promise(ptr %312, i32 8, i1 false)
  %314 = getelementptr inbounds { ptr }, ptr %313, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %314, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %312)
  %315 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %315, label %_llgo_4 [
    i8 0, label %_llgo_209
    i8 1, label %_llgo_5
  ]

_llgo_209:                                        ; preds = %_llgo_208
  %316 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %312)
  br i1 %316, label %_llgo_210, label %_llgo_211

_llgo_210:                                        ; preds = %_llgo_209
  %317 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %312)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %312)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %317)
  br label %_llgo_5

_llgo_211:                                        ; preds = %_llgo_209
  %318 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvtUinptr$coro"(i32 1024, i64 1024)
  br label %_llgo_212

_llgo_212:                                        ; preds = %_llgo_211
  %319 = call ptr @llvm.coro.promise(ptr %318, i32 8, i1 false)
  %320 = getelementptr inbounds { ptr }, ptr %319, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %320, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %318)
  %321 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %321, label %_llgo_4 [
    i8 0, label %_llgo_213
    i8 1, label %_llgo_5
  ]

_llgo_213:                                        ; preds = %_llgo_212
  %322 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %318)
  br i1 %322, label %_llgo_214, label %_llgo_215

_llgo_214:                                        ; preds = %_llgo_213
  %323 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %318)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %318)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %323)
  br label %_llgo_5

_llgo_215:                                        ; preds = %_llgo_213
  br label %_llgo_5

_llgo_216:                                        ; preds = %_llgo_5
  br label %_llgo_6
}

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

; Function Attrs: nounwind
declare i8 @llvm.coro.suspend(token, i1) #2

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token) #2

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #4

declare void @free(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()

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
