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

_llgo_1:                                          ; preds = %_llgo_5
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
  br label %_llgo_1

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7
  %14 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_7:                                          ; preds = %_llgo_3, %_llgo_2
  %15 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %15)
  %16 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %16, label %_llgo_6 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_9, %_llgo_7
  %17 = call ptr @llvm.coro.free(token %4, ptr %13)
  call void @free(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_7
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

_llgo_1:                                          ; preds = %_llgo_5
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
  br label %_llgo_1

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7
  %14 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_7:                                          ; preds = %_llgo_3, %_llgo_2
  %15 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %15)
  %16 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %16, label %_llgo_6 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_9, %_llgo_7
  %17 = call ptr @llvm.coro.free(token %4, ptr %13)
  call void @free(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_7
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

_llgo_1:                                          ; preds = %_llgo_5
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
  br label %_llgo_1

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7
  %14 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_7:                                          ; preds = %_llgo_3, %_llgo_2
  %15 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %15)
  %16 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %16, label %_llgo_6 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_9, %_llgo_7
  %17 = call ptr @llvm.coro.free(token %4, ptr %13)
  call void @free(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_7
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

_llgo_1:                                          ; preds = %_llgo_5
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
  br label %_llgo_1

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7
  %14 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_7:                                          ; preds = %_llgo_3, %_llgo_2
  %15 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %15)
  %16 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %16, label %_llgo_6 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_9, %_llgo_7
  %17 = call ptr @llvm.coro.free(token %4, ptr %13)
  call void @free(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_7
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

_llgo_1:                                          ; preds = %_llgo_5
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
  br label %_llgo_1

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7
  %14 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_7:                                          ; preds = %_llgo_3, %_llgo_2
  %15 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %15)
  %16 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %16, label %_llgo_6 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_9, %_llgo_7
  %17 = call ptr @llvm.coro.free(token %4, ptr %13)
  call void @free(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_7
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

_llgo_1:                                          ; preds = %_llgo_5
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
  br label %_llgo_1

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7
  %14 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_7:                                          ; preds = %_llgo_3, %_llgo_2
  %15 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %15)
  %16 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %16, label %_llgo_6 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_9, %_llgo_7
  %17 = call ptr @llvm.coro.free(token %4, ptr %13)
  call void @free(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_7
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

_llgo_1:                                          ; preds = %_llgo_5
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
  br label %_llgo_1

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7
  %14 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_7:                                          ; preds = %_llgo_3, %_llgo_2
  %15 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %15)
  %16 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %16, label %_llgo_6 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_9, %_llgo_7
  %17 = call ptr @llvm.coro.free(token %4, ptr %13)
  call void @free(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_7
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

_llgo_1:                                          ; preds = %_llgo_5
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
  br label %_llgo_1

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7
  %14 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_7:                                          ; preds = %_llgo_3, %_llgo_2
  %15 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %15)
  %16 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %16, label %_llgo_6 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_9, %_llgo_7
  %17 = call ptr @llvm.coro.free(token %4, ptr %13)
  call void @free(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_7
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

_llgo_1:                                          ; preds = %_llgo_5
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
  br label %_llgo_1

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7
  %14 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_7:                                          ; preds = %_llgo_3, %_llgo_2
  %15 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %15)
  %16 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %16, label %_llgo_6 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_9, %_llgo_7
  %17 = call ptr @llvm.coro.free(token %4, ptr %13)
  call void @free(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_7
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

_llgo_1:                                          ; preds = %_llgo_5
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
  br label %_llgo_1

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7
  %14 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_7:                                          ; preds = %_llgo_3, %_llgo_2
  %15 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %15)
  %16 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %16, label %_llgo_6 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_9, %_llgo_7
  %17 = call ptr @llvm.coro.free(token %4, ptr %13)
  call void @free(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_7
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

_llgo_1:                                          ; preds = %_llgo_5
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
  br label %_llgo_1

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7
  %14 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_7:                                          ; preds = %_llgo_3, %_llgo_2
  %15 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %15)
  %16 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %16, label %_llgo_6 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_9, %_llgo_7
  %17 = call ptr @llvm.coro.free(token %4, ptr %13)
  call void @free(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_7
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

_llgo_1:                                          ; preds = %_llgo_7
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
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_10, %_llgo_9
  %18 = call i1 @llvm.coro.end(ptr %17, i1 false, token none)
  ret ptr %17

_llgo_9:                                          ; preds = %_llgo_5, %_llgo_4, %_llgo_2
  %19 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %19)
  %20 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %20, label %_llgo_8 [
    i8 0, label %_llgo_11
    i8 1, label %_llgo_10
  ]

_llgo_10:                                         ; preds = %_llgo_11, %_llgo_9
  %21 = call ptr @llvm.coro.free(token %4, ptr %17)
  call void @free(ptr %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_8

_llgo_11:                                         ; preds = %_llgo_9
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

_llgo_1:                                          ; preds = %_llgo_3
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
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_470, %_llgo_469, %_llgo_461, %_llgo_460, %_llgo_452, %_llgo_451, %_llgo_443, %_llgo_442, %_llgo_434, %_llgo_433, %_llgo_425, %_llgo_424, %_llgo_416, %_llgo_415, %_llgo_407, %_llgo_406, %_llgo_398, %_llgo_397, %_llgo_389, %_llgo_388, %_llgo_380, %_llgo_379, %_llgo_371, %_llgo_370, %_llgo_362, %_llgo_361, %_llgo_353, %_llgo_352, %_llgo_344, %_llgo_343, %_llgo_335, %_llgo_334, %_llgo_326, %_llgo_325, %_llgo_317, %_llgo_316, %_llgo_308, %_llgo_307, %_llgo_299, %_llgo_298, %_llgo_290, %_llgo_289, %_llgo_281, %_llgo_280, %_llgo_272, %_llgo_271, %_llgo_263, %_llgo_262, %_llgo_254, %_llgo_253, %_llgo_245, %_llgo_244, %_llgo_236, %_llgo_235, %_llgo_227, %_llgo_226, %_llgo_218, %_llgo_217, %_llgo_209, %_llgo_208, %_llgo_200, %_llgo_199, %_llgo_191, %_llgo_190, %_llgo_182, %_llgo_181, %_llgo_173, %_llgo_172, %_llgo_164, %_llgo_163, %_llgo_155, %_llgo_154, %_llgo_146, %_llgo_145, %_llgo_137, %_llgo_136, %_llgo_128, %_llgo_127, %_llgo_119, %_llgo_118, %_llgo_110, %_llgo_109, %_llgo_101, %_llgo_100, %_llgo_92, %_llgo_91, %_llgo_83, %_llgo_82, %_llgo_74, %_llgo_73, %_llgo_65, %_llgo_64, %_llgo_56, %_llgo_55, %_llgo_47, %_llgo_46, %_llgo_38, %_llgo_37, %_llgo_29, %_llgo_28, %_llgo_20, %_llgo_19, %_llgo_11, %_llgo_10
  %9 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_5:                                          ; preds = %_llgo_474, %_llgo_473, %_llgo_470, %_llgo_469, %_llgo_464, %_llgo_461, %_llgo_460, %_llgo_455, %_llgo_452, %_llgo_451, %_llgo_446, %_llgo_443, %_llgo_442, %_llgo_437, %_llgo_434, %_llgo_433, %_llgo_428, %_llgo_425, %_llgo_424, %_llgo_419, %_llgo_416, %_llgo_415, %_llgo_410, %_llgo_407, %_llgo_406, %_llgo_401, %_llgo_398, %_llgo_397, %_llgo_392, %_llgo_389, %_llgo_388, %_llgo_383, %_llgo_380, %_llgo_379, %_llgo_374, %_llgo_371, %_llgo_370, %_llgo_365, %_llgo_362, %_llgo_361, %_llgo_356, %_llgo_353, %_llgo_352, %_llgo_347, %_llgo_344, %_llgo_343, %_llgo_338, %_llgo_335, %_llgo_334, %_llgo_329, %_llgo_326, %_llgo_325, %_llgo_320, %_llgo_317, %_llgo_316, %_llgo_311, %_llgo_308, %_llgo_307, %_llgo_302, %_llgo_299, %_llgo_298, %_llgo_293, %_llgo_290, %_llgo_289, %_llgo_284, %_llgo_281, %_llgo_280, %_llgo_275, %_llgo_272, %_llgo_271, %_llgo_266, %_llgo_263, %_llgo_262, %_llgo_257, %_llgo_254, %_llgo_253, %_llgo_248, %_llgo_245, %_llgo_244, %_llgo_239, %_llgo_236, %_llgo_235, %_llgo_230, %_llgo_227, %_llgo_226, %_llgo_221, %_llgo_218, %_llgo_217, %_llgo_212, %_llgo_209, %_llgo_208, %_llgo_203, %_llgo_200, %_llgo_199, %_llgo_194, %_llgo_191, %_llgo_190, %_llgo_185, %_llgo_182, %_llgo_181, %_llgo_176, %_llgo_173, %_llgo_172, %_llgo_167, %_llgo_164, %_llgo_163, %_llgo_158, %_llgo_155, %_llgo_154, %_llgo_149, %_llgo_146, %_llgo_145, %_llgo_140, %_llgo_137, %_llgo_136, %_llgo_131, %_llgo_128, %_llgo_127, %_llgo_122, %_llgo_119, %_llgo_118, %_llgo_113, %_llgo_110, %_llgo_109, %_llgo_104, %_llgo_101, %_llgo_100, %_llgo_95, %_llgo_92, %_llgo_91, %_llgo_86, %_llgo_83, %_llgo_82, %_llgo_77, %_llgo_74, %_llgo_73, %_llgo_68, %_llgo_65, %_llgo_64, %_llgo_59, %_llgo_56, %_llgo_55, %_llgo_50, %_llgo_47, %_llgo_46, %_llgo_41, %_llgo_38, %_llgo_37, %_llgo_32, %_llgo_29, %_llgo_28, %_llgo_23, %_llgo_20, %_llgo_19, %_llgo_14, %_llgo_11, %_llgo_10
  %10 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %10)
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_475
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_475, %_llgo_5
  %12 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_8
  %13 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %4)
  br i1 %13, label %_llgo_14, label %_llgo_15

_llgo_8:                                          ; preds = %_llgo_13, %_llgo_12, %_llgo_1
  %14 = phi i1 [ true, %_llgo_1 ], [ false, %_llgo_10 ], [ false, %_llgo_11 ]
  %15 = call i1 @llvm.coro.done(ptr %4)
  br i1 %15, label %_llgo_7, label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  br i1 %14, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %16 = call ptr @llvm.coro.promise(ptr %4, i32 8, i1 false)
  %17 = getelementptr inbounds { ptr }, ptr %16, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %17, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %4)
  %18 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %18, label %_llgo_4 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9
  %19 = call ptr @llvm.coro.promise(ptr %4, i32 8, i1 false)
  %20 = getelementptr inbounds { ptr }, ptr %19, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %20, ptr %8)
  %21 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %21, label %_llgo_4 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_5
  ]

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_8

_llgo_13:                                         ; preds = %_llgo_11
  br label %_llgo_8

_llgo_14:                                         ; preds = %_llgo_7
  %22 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %22)
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_7
  %23 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8$coro"(i64 127, i8 127)
  br label %_llgo_17

_llgo_16:                                         ; preds = %_llgo_17
  %24 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %23)
  br i1 %24, label %_llgo_23, label %_llgo_24

_llgo_17:                                         ; preds = %_llgo_22, %_llgo_21, %_llgo_15
  %25 = phi i1 [ true, %_llgo_15 ], [ false, %_llgo_19 ], [ false, %_llgo_20 ]
  %26 = call i1 @llvm.coro.done(ptr %23)
  br i1 %26, label %_llgo_16, label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17
  br i1 %25, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %27 = call ptr @llvm.coro.promise(ptr %23, i32 8, i1 false)
  %28 = getelementptr inbounds { ptr }, ptr %27, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %28, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %23)
  %29 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %29, label %_llgo_4 [
    i8 0, label %_llgo_21
    i8 1, label %_llgo_5
  ]

_llgo_20:                                         ; preds = %_llgo_18
  %30 = call ptr @llvm.coro.promise(ptr %23, i32 8, i1 false)
  %31 = getelementptr inbounds { ptr }, ptr %30, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %31, ptr %8)
  %32 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %32, label %_llgo_4 [
    i8 0, label %_llgo_22
    i8 1, label %_llgo_5
  ]

_llgo_21:                                         ; preds = %_llgo_19
  br label %_llgo_17

_llgo_22:                                         ; preds = %_llgo_20
  br label %_llgo_17

_llgo_23:                                         ; preds = %_llgo_16
  %33 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %33)
  br label %_llgo_5

_llgo_24:                                         ; preds = %_llgo_16
  %34 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8$coro"(i64 128, i8 -128)
  br label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_26
  %35 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %34)
  br i1 %35, label %_llgo_32, label %_llgo_33

_llgo_26:                                         ; preds = %_llgo_31, %_llgo_30, %_llgo_24
  %36 = phi i1 [ true, %_llgo_24 ], [ false, %_llgo_28 ], [ false, %_llgo_29 ]
  %37 = call i1 @llvm.coro.done(ptr %34)
  br i1 %37, label %_llgo_25, label %_llgo_27

_llgo_27:                                         ; preds = %_llgo_26
  br i1 %36, label %_llgo_28, label %_llgo_29

_llgo_28:                                         ; preds = %_llgo_27
  %38 = call ptr @llvm.coro.promise(ptr %34, i32 8, i1 false)
  %39 = getelementptr inbounds { ptr }, ptr %38, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %39, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %34)
  %40 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %40, label %_llgo_4 [
    i8 0, label %_llgo_30
    i8 1, label %_llgo_5
  ]

_llgo_29:                                         ; preds = %_llgo_27
  %41 = call ptr @llvm.coro.promise(ptr %34, i32 8, i1 false)
  %42 = getelementptr inbounds { ptr }, ptr %41, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %42, ptr %8)
  %43 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %43, label %_llgo_4 [
    i8 0, label %_llgo_31
    i8 1, label %_llgo_5
  ]

_llgo_30:                                         ; preds = %_llgo_28
  br label %_llgo_26

_llgo_31:                                         ; preds = %_llgo_29
  br label %_llgo_26

_llgo_32:                                         ; preds = %_llgo_25
  %44 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %44)
  br label %_llgo_5

_llgo_33:                                         ; preds = %_llgo_25
  %45 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8$coro"(i64 -128, i8 -128)
  br label %_llgo_35

_llgo_34:                                         ; preds = %_llgo_35
  %46 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %45)
  br i1 %46, label %_llgo_41, label %_llgo_42

_llgo_35:                                         ; preds = %_llgo_40, %_llgo_39, %_llgo_33
  %47 = phi i1 [ true, %_llgo_33 ], [ false, %_llgo_37 ], [ false, %_llgo_38 ]
  %48 = call i1 @llvm.coro.done(ptr %45)
  br i1 %48, label %_llgo_34, label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35
  br i1 %47, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %49 = call ptr @llvm.coro.promise(ptr %45, i32 8, i1 false)
  %50 = getelementptr inbounds { ptr }, ptr %49, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %50, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %45)
  %51 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %51, label %_llgo_4 [
    i8 0, label %_llgo_39
    i8 1, label %_llgo_5
  ]

_llgo_38:                                         ; preds = %_llgo_36
  %52 = call ptr @llvm.coro.promise(ptr %45, i32 8, i1 false)
  %53 = getelementptr inbounds { ptr }, ptr %52, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %53, ptr %8)
  %54 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %54, label %_llgo_4 [
    i8 0, label %_llgo_40
    i8 1, label %_llgo_5
  ]

_llgo_39:                                         ; preds = %_llgo_37
  br label %_llgo_35

_llgo_40:                                         ; preds = %_llgo_38
  br label %_llgo_35

_llgo_41:                                         ; preds = %_llgo_34
  %55 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %45)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %45)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %55)
  br label %_llgo_5

_llgo_42:                                         ; preds = %_llgo_34
  %56 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8$coro"(i64 -129, i8 127)
  br label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_44
  %57 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %56)
  br i1 %57, label %_llgo_50, label %_llgo_51

_llgo_44:                                         ; preds = %_llgo_49, %_llgo_48, %_llgo_42
  %58 = phi i1 [ true, %_llgo_42 ], [ false, %_llgo_46 ], [ false, %_llgo_47 ]
  %59 = call i1 @llvm.coro.done(ptr %56)
  br i1 %59, label %_llgo_43, label %_llgo_45

_llgo_45:                                         ; preds = %_llgo_44
  br i1 %58, label %_llgo_46, label %_llgo_47

_llgo_46:                                         ; preds = %_llgo_45
  %60 = call ptr @llvm.coro.promise(ptr %56, i32 8, i1 false)
  %61 = getelementptr inbounds { ptr }, ptr %60, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %61, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %56)
  %62 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %62, label %_llgo_4 [
    i8 0, label %_llgo_48
    i8 1, label %_llgo_5
  ]

_llgo_47:                                         ; preds = %_llgo_45
  %63 = call ptr @llvm.coro.promise(ptr %56, i32 8, i1 false)
  %64 = getelementptr inbounds { ptr }, ptr %63, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %64, ptr %8)
  %65 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %65, label %_llgo_4 [
    i8 0, label %_llgo_49
    i8 1, label %_llgo_5
  ]

_llgo_48:                                         ; preds = %_llgo_46
  br label %_llgo_44

_llgo_49:                                         ; preds = %_llgo_47
  br label %_llgo_44

_llgo_50:                                         ; preds = %_llgo_43
  %66 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %56)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %56)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %66)
  br label %_llgo_5

_llgo_51:                                         ; preds = %_llgo_43
  %67 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8$coro"(i64 256, i8 0)
  br label %_llgo_53

_llgo_52:                                         ; preds = %_llgo_53
  %68 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %67)
  br i1 %68, label %_llgo_59, label %_llgo_60

_llgo_53:                                         ; preds = %_llgo_58, %_llgo_57, %_llgo_51
  %69 = phi i1 [ true, %_llgo_51 ], [ false, %_llgo_55 ], [ false, %_llgo_56 ]
  %70 = call i1 @llvm.coro.done(ptr %67)
  br i1 %70, label %_llgo_52, label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53
  br i1 %69, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  %71 = call ptr @llvm.coro.promise(ptr %67, i32 8, i1 false)
  %72 = getelementptr inbounds { ptr }, ptr %71, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %72, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %67)
  %73 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %73, label %_llgo_4 [
    i8 0, label %_llgo_57
    i8 1, label %_llgo_5
  ]

_llgo_56:                                         ; preds = %_llgo_54
  %74 = call ptr @llvm.coro.promise(ptr %67, i32 8, i1 false)
  %75 = getelementptr inbounds { ptr }, ptr %74, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %75, ptr %8)
  %76 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %76, label %_llgo_4 [
    i8 0, label %_llgo_58
    i8 1, label %_llgo_5
  ]

_llgo_57:                                         ; preds = %_llgo_55
  br label %_llgo_53

_llgo_58:                                         ; preds = %_llgo_56
  br label %_llgo_53

_llgo_59:                                         ; preds = %_llgo_52
  %77 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %67)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %67)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %77)
  br label %_llgo_5

_llgo_60:                                         ; preds = %_llgo_52
  %78 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8U$coro"(i64 0, i8 0)
  br label %_llgo_62

_llgo_61:                                         ; preds = %_llgo_62
  %79 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %78)
  br i1 %79, label %_llgo_68, label %_llgo_69

_llgo_62:                                         ; preds = %_llgo_67, %_llgo_66, %_llgo_60
  %80 = phi i1 [ true, %_llgo_60 ], [ false, %_llgo_64 ], [ false, %_llgo_65 ]
  %81 = call i1 @llvm.coro.done(ptr %78)
  br i1 %81, label %_llgo_61, label %_llgo_63

_llgo_63:                                         ; preds = %_llgo_62
  br i1 %80, label %_llgo_64, label %_llgo_65

_llgo_64:                                         ; preds = %_llgo_63
  %82 = call ptr @llvm.coro.promise(ptr %78, i32 8, i1 false)
  %83 = getelementptr inbounds { ptr }, ptr %82, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %83, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %78)
  %84 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %84, label %_llgo_4 [
    i8 0, label %_llgo_66
    i8 1, label %_llgo_5
  ]

_llgo_65:                                         ; preds = %_llgo_63
  %85 = call ptr @llvm.coro.promise(ptr %78, i32 8, i1 false)
  %86 = getelementptr inbounds { ptr }, ptr %85, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %86, ptr %8)
  %87 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %87, label %_llgo_4 [
    i8 0, label %_llgo_67
    i8 1, label %_llgo_5
  ]

_llgo_66:                                         ; preds = %_llgo_64
  br label %_llgo_62

_llgo_67:                                         ; preds = %_llgo_65
  br label %_llgo_62

_llgo_68:                                         ; preds = %_llgo_61
  %88 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %78)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %78)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %88)
  br label %_llgo_5

_llgo_69:                                         ; preds = %_llgo_61
  %89 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8U$coro"(i64 255, i8 -1)
  br label %_llgo_71

_llgo_70:                                         ; preds = %_llgo_71
  %90 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %89)
  br i1 %90, label %_llgo_77, label %_llgo_78

_llgo_71:                                         ; preds = %_llgo_76, %_llgo_75, %_llgo_69
  %91 = phi i1 [ true, %_llgo_69 ], [ false, %_llgo_73 ], [ false, %_llgo_74 ]
  %92 = call i1 @llvm.coro.done(ptr %89)
  br i1 %92, label %_llgo_70, label %_llgo_72

_llgo_72:                                         ; preds = %_llgo_71
  br i1 %91, label %_llgo_73, label %_llgo_74

_llgo_73:                                         ; preds = %_llgo_72
  %93 = call ptr @llvm.coro.promise(ptr %89, i32 8, i1 false)
  %94 = getelementptr inbounds { ptr }, ptr %93, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %94, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %89)
  %95 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %95, label %_llgo_4 [
    i8 0, label %_llgo_75
    i8 1, label %_llgo_5
  ]

_llgo_74:                                         ; preds = %_llgo_72
  %96 = call ptr @llvm.coro.promise(ptr %89, i32 8, i1 false)
  %97 = getelementptr inbounds { ptr }, ptr %96, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %97, ptr %8)
  %98 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %98, label %_llgo_4 [
    i8 0, label %_llgo_76
    i8 1, label %_llgo_5
  ]

_llgo_75:                                         ; preds = %_llgo_73
  br label %_llgo_71

_llgo_76:                                         ; preds = %_llgo_74
  br label %_llgo_71

_llgo_77:                                         ; preds = %_llgo_70
  %99 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %89)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %89)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %99)
  br label %_llgo_5

_llgo_78:                                         ; preds = %_llgo_70
  %100 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8U$coro"(i64 256, i8 0)
  br label %_llgo_80

_llgo_79:                                         ; preds = %_llgo_80
  %101 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %100)
  br i1 %101, label %_llgo_86, label %_llgo_87

_llgo_80:                                         ; preds = %_llgo_85, %_llgo_84, %_llgo_78
  %102 = phi i1 [ true, %_llgo_78 ], [ false, %_llgo_82 ], [ false, %_llgo_83 ]
  %103 = call i1 @llvm.coro.done(ptr %100)
  br i1 %103, label %_llgo_79, label %_llgo_81

_llgo_81:                                         ; preds = %_llgo_80
  br i1 %102, label %_llgo_82, label %_llgo_83

_llgo_82:                                         ; preds = %_llgo_81
  %104 = call ptr @llvm.coro.promise(ptr %100, i32 8, i1 false)
  %105 = getelementptr inbounds { ptr }, ptr %104, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %105, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %100)
  %106 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %106, label %_llgo_4 [
    i8 0, label %_llgo_84
    i8 1, label %_llgo_5
  ]

_llgo_83:                                         ; preds = %_llgo_81
  %107 = call ptr @llvm.coro.promise(ptr %100, i32 8, i1 false)
  %108 = getelementptr inbounds { ptr }, ptr %107, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %108, ptr %8)
  %109 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %109, label %_llgo_4 [
    i8 0, label %_llgo_85
    i8 1, label %_llgo_5
  ]

_llgo_84:                                         ; preds = %_llgo_82
  br label %_llgo_80

_llgo_85:                                         ; preds = %_llgo_83
  br label %_llgo_80

_llgo_86:                                         ; preds = %_llgo_79
  %110 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %110)
  br label %_llgo_5

_llgo_87:                                         ; preds = %_llgo_79
  %111 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8U$coro"(i64 257, i8 1)
  br label %_llgo_89

_llgo_88:                                         ; preds = %_llgo_89
  %112 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %111)
  br i1 %112, label %_llgo_95, label %_llgo_96

_llgo_89:                                         ; preds = %_llgo_94, %_llgo_93, %_llgo_87
  %113 = phi i1 [ true, %_llgo_87 ], [ false, %_llgo_91 ], [ false, %_llgo_92 ]
  %114 = call i1 @llvm.coro.done(ptr %111)
  br i1 %114, label %_llgo_88, label %_llgo_90

_llgo_90:                                         ; preds = %_llgo_89
  br i1 %113, label %_llgo_91, label %_llgo_92

_llgo_91:                                         ; preds = %_llgo_90
  %115 = call ptr @llvm.coro.promise(ptr %111, i32 8, i1 false)
  %116 = getelementptr inbounds { ptr }, ptr %115, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %116, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %111)
  %117 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %117, label %_llgo_4 [
    i8 0, label %_llgo_93
    i8 1, label %_llgo_5
  ]

_llgo_92:                                         ; preds = %_llgo_90
  %118 = call ptr @llvm.coro.promise(ptr %111, i32 8, i1 false)
  %119 = getelementptr inbounds { ptr }, ptr %118, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %119, ptr %8)
  %120 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %120, label %_llgo_4 [
    i8 0, label %_llgo_94
    i8 1, label %_llgo_5
  ]

_llgo_93:                                         ; preds = %_llgo_91
  br label %_llgo_89

_llgo_94:                                         ; preds = %_llgo_92
  br label %_llgo_89

_llgo_95:                                         ; preds = %_llgo_88
  %121 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %111)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %111)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %121)
  br label %_llgo_5

_llgo_96:                                         ; preds = %_llgo_88
  %122 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8U$coro"(i64 -1, i8 -1)
  br label %_llgo_98

_llgo_97:                                         ; preds = %_llgo_98
  %123 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %122)
  br i1 %123, label %_llgo_104, label %_llgo_105

_llgo_98:                                         ; preds = %_llgo_103, %_llgo_102, %_llgo_96
  %124 = phi i1 [ true, %_llgo_96 ], [ false, %_llgo_100 ], [ false, %_llgo_101 ]
  %125 = call i1 @llvm.coro.done(ptr %122)
  br i1 %125, label %_llgo_97, label %_llgo_99

_llgo_99:                                         ; preds = %_llgo_98
  br i1 %124, label %_llgo_100, label %_llgo_101

_llgo_100:                                        ; preds = %_llgo_99
  %126 = call ptr @llvm.coro.promise(ptr %122, i32 8, i1 false)
  %127 = getelementptr inbounds { ptr }, ptr %126, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %127, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %122)
  %128 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %128, label %_llgo_4 [
    i8 0, label %_llgo_102
    i8 1, label %_llgo_5
  ]

_llgo_101:                                        ; preds = %_llgo_99
  %129 = call ptr @llvm.coro.promise(ptr %122, i32 8, i1 false)
  %130 = getelementptr inbounds { ptr }, ptr %129, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %130, ptr %8)
  %131 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %131, label %_llgo_4 [
    i8 0, label %_llgo_103
    i8 1, label %_llgo_5
  ]

_llgo_102:                                        ; preds = %_llgo_100
  br label %_llgo_98

_llgo_103:                                        ; preds = %_llgo_101
  br label %_llgo_98

_llgo_104:                                        ; preds = %_llgo_97
  %132 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %122)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %122)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %132)
  br label %_llgo_5

_llgo_105:                                        ; preds = %_llgo_97
  %133 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8$coro"(float 0x3FB99999A0000000, i8 0)
  br label %_llgo_107

_llgo_106:                                        ; preds = %_llgo_107
  %134 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %133)
  br i1 %134, label %_llgo_113, label %_llgo_114

_llgo_107:                                        ; preds = %_llgo_112, %_llgo_111, %_llgo_105
  %135 = phi i1 [ true, %_llgo_105 ], [ false, %_llgo_109 ], [ false, %_llgo_110 ]
  %136 = call i1 @llvm.coro.done(ptr %133)
  br i1 %136, label %_llgo_106, label %_llgo_108

_llgo_108:                                        ; preds = %_llgo_107
  br i1 %135, label %_llgo_109, label %_llgo_110

_llgo_109:                                        ; preds = %_llgo_108
  %137 = call ptr @llvm.coro.promise(ptr %133, i32 8, i1 false)
  %138 = getelementptr inbounds { ptr }, ptr %137, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %138, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %133)
  %139 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %139, label %_llgo_4 [
    i8 0, label %_llgo_111
    i8 1, label %_llgo_5
  ]

_llgo_110:                                        ; preds = %_llgo_108
  %140 = call ptr @llvm.coro.promise(ptr %133, i32 8, i1 false)
  %141 = getelementptr inbounds { ptr }, ptr %140, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %141, ptr %8)
  %142 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %142, label %_llgo_4 [
    i8 0, label %_llgo_112
    i8 1, label %_llgo_5
  ]

_llgo_111:                                        ; preds = %_llgo_109
  br label %_llgo_107

_llgo_112:                                        ; preds = %_llgo_110
  br label %_llgo_107

_llgo_113:                                        ; preds = %_llgo_106
  %143 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %133)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %133)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %143)
  br label %_llgo_5

_llgo_114:                                        ; preds = %_llgo_106
  %144 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8$coro"(float 0x405FC66660000000, i8 127)
  br label %_llgo_116

_llgo_115:                                        ; preds = %_llgo_116
  %145 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %144)
  br i1 %145, label %_llgo_122, label %_llgo_123

_llgo_116:                                        ; preds = %_llgo_121, %_llgo_120, %_llgo_114
  %146 = phi i1 [ true, %_llgo_114 ], [ false, %_llgo_118 ], [ false, %_llgo_119 ]
  %147 = call i1 @llvm.coro.done(ptr %144)
  br i1 %147, label %_llgo_115, label %_llgo_117

_llgo_117:                                        ; preds = %_llgo_116
  br i1 %146, label %_llgo_118, label %_llgo_119

_llgo_118:                                        ; preds = %_llgo_117
  %148 = call ptr @llvm.coro.promise(ptr %144, i32 8, i1 false)
  %149 = getelementptr inbounds { ptr }, ptr %148, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %149, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %144)
  %150 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %150, label %_llgo_4 [
    i8 0, label %_llgo_120
    i8 1, label %_llgo_5
  ]

_llgo_119:                                        ; preds = %_llgo_117
  %151 = call ptr @llvm.coro.promise(ptr %144, i32 8, i1 false)
  %152 = getelementptr inbounds { ptr }, ptr %151, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %152, ptr %8)
  %153 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %153, label %_llgo_4 [
    i8 0, label %_llgo_121
    i8 1, label %_llgo_5
  ]

_llgo_120:                                        ; preds = %_llgo_118
  br label %_llgo_116

_llgo_121:                                        ; preds = %_llgo_119
  br label %_llgo_116

_llgo_122:                                        ; preds = %_llgo_115
  %154 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %144)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %144)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %154)
  br label %_llgo_5

_llgo_123:                                        ; preds = %_llgo_115
  %155 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8$coro"(float 0x4060033340000000, i8 -128)
  br label %_llgo_125

_llgo_124:                                        ; preds = %_llgo_125
  %156 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %155)
  br i1 %156, label %_llgo_131, label %_llgo_132

_llgo_125:                                        ; preds = %_llgo_130, %_llgo_129, %_llgo_123
  %157 = phi i1 [ true, %_llgo_123 ], [ false, %_llgo_127 ], [ false, %_llgo_128 ]
  %158 = call i1 @llvm.coro.done(ptr %155)
  br i1 %158, label %_llgo_124, label %_llgo_126

_llgo_126:                                        ; preds = %_llgo_125
  br i1 %157, label %_llgo_127, label %_llgo_128

_llgo_127:                                        ; preds = %_llgo_126
  %159 = call ptr @llvm.coro.promise(ptr %155, i32 8, i1 false)
  %160 = getelementptr inbounds { ptr }, ptr %159, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %160, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %155)
  %161 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %161, label %_llgo_4 [
    i8 0, label %_llgo_129
    i8 1, label %_llgo_5
  ]

_llgo_128:                                        ; preds = %_llgo_126
  %162 = call ptr @llvm.coro.promise(ptr %155, i32 8, i1 false)
  %163 = getelementptr inbounds { ptr }, ptr %162, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %163, ptr %8)
  %164 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %164, label %_llgo_4 [
    i8 0, label %_llgo_130
    i8 1, label %_llgo_5
  ]

_llgo_129:                                        ; preds = %_llgo_127
  br label %_llgo_125

_llgo_130:                                        ; preds = %_llgo_128
  br label %_llgo_125

_llgo_131:                                        ; preds = %_llgo_124
  %165 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %155)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %155)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %165)
  br label %_llgo_5

_llgo_132:                                        ; preds = %_llgo_124
  %166 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8$coro"(float 0xC060033340000000, i8 -128)
  br label %_llgo_134

_llgo_133:                                        ; preds = %_llgo_134
  %167 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %166)
  br i1 %167, label %_llgo_140, label %_llgo_141

_llgo_134:                                        ; preds = %_llgo_139, %_llgo_138, %_llgo_132
  %168 = phi i1 [ true, %_llgo_132 ], [ false, %_llgo_136 ], [ false, %_llgo_137 ]
  %169 = call i1 @llvm.coro.done(ptr %166)
  br i1 %169, label %_llgo_133, label %_llgo_135

_llgo_135:                                        ; preds = %_llgo_134
  br i1 %168, label %_llgo_136, label %_llgo_137

_llgo_136:                                        ; preds = %_llgo_135
  %170 = call ptr @llvm.coro.promise(ptr %166, i32 8, i1 false)
  %171 = getelementptr inbounds { ptr }, ptr %170, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %171, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %166)
  %172 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %172, label %_llgo_4 [
    i8 0, label %_llgo_138
    i8 1, label %_llgo_5
  ]

_llgo_137:                                        ; preds = %_llgo_135
  %173 = call ptr @llvm.coro.promise(ptr %166, i32 8, i1 false)
  %174 = getelementptr inbounds { ptr }, ptr %173, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %174, ptr %8)
  %175 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %175, label %_llgo_4 [
    i8 0, label %_llgo_139
    i8 1, label %_llgo_5
  ]

_llgo_138:                                        ; preds = %_llgo_136
  br label %_llgo_134

_llgo_139:                                        ; preds = %_llgo_137
  br label %_llgo_134

_llgo_140:                                        ; preds = %_llgo_133
  %176 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %166)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %166)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %176)
  br label %_llgo_5

_llgo_141:                                        ; preds = %_llgo_133
  %177 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8$coro"(float 0xC060233340000000, i8 127)
  br label %_llgo_143

_llgo_142:                                        ; preds = %_llgo_143
  %178 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %177)
  br i1 %178, label %_llgo_149, label %_llgo_150

_llgo_143:                                        ; preds = %_llgo_148, %_llgo_147, %_llgo_141
  %179 = phi i1 [ true, %_llgo_141 ], [ false, %_llgo_145 ], [ false, %_llgo_146 ]
  %180 = call i1 @llvm.coro.done(ptr %177)
  br i1 %180, label %_llgo_142, label %_llgo_144

_llgo_144:                                        ; preds = %_llgo_143
  br i1 %179, label %_llgo_145, label %_llgo_146

_llgo_145:                                        ; preds = %_llgo_144
  %181 = call ptr @llvm.coro.promise(ptr %177, i32 8, i1 false)
  %182 = getelementptr inbounds { ptr }, ptr %181, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %182, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %177)
  %183 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %183, label %_llgo_4 [
    i8 0, label %_llgo_147
    i8 1, label %_llgo_5
  ]

_llgo_146:                                        ; preds = %_llgo_144
  %184 = call ptr @llvm.coro.promise(ptr %177, i32 8, i1 false)
  %185 = getelementptr inbounds { ptr }, ptr %184, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %185, ptr %8)
  %186 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %186, label %_llgo_4 [
    i8 0, label %_llgo_148
    i8 1, label %_llgo_5
  ]

_llgo_147:                                        ; preds = %_llgo_145
  br label %_llgo_143

_llgo_148:                                        ; preds = %_llgo_146
  br label %_llgo_143

_llgo_149:                                        ; preds = %_llgo_142
  %187 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %177)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %177)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %187)
  br label %_llgo_5

_llgo_150:                                        ; preds = %_llgo_142
  %188 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8$coro"(float 0x40700199A0000000, i8 0)
  br label %_llgo_152

_llgo_151:                                        ; preds = %_llgo_152
  %189 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %188)
  br i1 %189, label %_llgo_158, label %_llgo_159

_llgo_152:                                        ; preds = %_llgo_157, %_llgo_156, %_llgo_150
  %190 = phi i1 [ true, %_llgo_150 ], [ false, %_llgo_154 ], [ false, %_llgo_155 ]
  %191 = call i1 @llvm.coro.done(ptr %188)
  br i1 %191, label %_llgo_151, label %_llgo_153

_llgo_153:                                        ; preds = %_llgo_152
  br i1 %190, label %_llgo_154, label %_llgo_155

_llgo_154:                                        ; preds = %_llgo_153
  %192 = call ptr @llvm.coro.promise(ptr %188, i32 8, i1 false)
  %193 = getelementptr inbounds { ptr }, ptr %192, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %193, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %188)
  %194 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %194, label %_llgo_4 [
    i8 0, label %_llgo_156
    i8 1, label %_llgo_5
  ]

_llgo_155:                                        ; preds = %_llgo_153
  %195 = call ptr @llvm.coro.promise(ptr %188, i32 8, i1 false)
  %196 = getelementptr inbounds { ptr }, ptr %195, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %196, ptr %8)
  %197 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %197, label %_llgo_4 [
    i8 0, label %_llgo_157
    i8 1, label %_llgo_5
  ]

_llgo_156:                                        ; preds = %_llgo_154
  br label %_llgo_152

_llgo_157:                                        ; preds = %_llgo_155
  br label %_llgo_152

_llgo_158:                                        ; preds = %_llgo_151
  %198 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %188)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %188)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %198)
  br label %_llgo_5

_llgo_159:                                        ; preds = %_llgo_151
  %199 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8U$coro"(float 0.000000e+00, i8 0)
  br label %_llgo_161

_llgo_160:                                        ; preds = %_llgo_161
  %200 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %199)
  br i1 %200, label %_llgo_167, label %_llgo_168

_llgo_161:                                        ; preds = %_llgo_166, %_llgo_165, %_llgo_159
  %201 = phi i1 [ true, %_llgo_159 ], [ false, %_llgo_163 ], [ false, %_llgo_164 ]
  %202 = call i1 @llvm.coro.done(ptr %199)
  br i1 %202, label %_llgo_160, label %_llgo_162

_llgo_162:                                        ; preds = %_llgo_161
  br i1 %201, label %_llgo_163, label %_llgo_164

_llgo_163:                                        ; preds = %_llgo_162
  %203 = call ptr @llvm.coro.promise(ptr %199, i32 8, i1 false)
  %204 = getelementptr inbounds { ptr }, ptr %203, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %204, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %199)
  %205 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %205, label %_llgo_4 [
    i8 0, label %_llgo_165
    i8 1, label %_llgo_5
  ]

_llgo_164:                                        ; preds = %_llgo_162
  %206 = call ptr @llvm.coro.promise(ptr %199, i32 8, i1 false)
  %207 = getelementptr inbounds { ptr }, ptr %206, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %207, ptr %8)
  %208 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %208, label %_llgo_4 [
    i8 0, label %_llgo_166
    i8 1, label %_llgo_5
  ]

_llgo_165:                                        ; preds = %_llgo_163
  br label %_llgo_161

_llgo_166:                                        ; preds = %_llgo_164
  br label %_llgo_161

_llgo_167:                                        ; preds = %_llgo_160
  %209 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %199)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %199)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %209)
  br label %_llgo_5

_llgo_168:                                        ; preds = %_llgo_160
  %210 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8U$coro"(float 2.550000e+02, i8 -1)
  br label %_llgo_170

_llgo_169:                                        ; preds = %_llgo_170
  %211 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %210)
  br i1 %211, label %_llgo_176, label %_llgo_177

_llgo_170:                                        ; preds = %_llgo_175, %_llgo_174, %_llgo_168
  %212 = phi i1 [ true, %_llgo_168 ], [ false, %_llgo_172 ], [ false, %_llgo_173 ]
  %213 = call i1 @llvm.coro.done(ptr %210)
  br i1 %213, label %_llgo_169, label %_llgo_171

_llgo_171:                                        ; preds = %_llgo_170
  br i1 %212, label %_llgo_172, label %_llgo_173

_llgo_172:                                        ; preds = %_llgo_171
  %214 = call ptr @llvm.coro.promise(ptr %210, i32 8, i1 false)
  %215 = getelementptr inbounds { ptr }, ptr %214, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %215, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %210)
  %216 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %216, label %_llgo_4 [
    i8 0, label %_llgo_174
    i8 1, label %_llgo_5
  ]

_llgo_173:                                        ; preds = %_llgo_171
  %217 = call ptr @llvm.coro.promise(ptr %210, i32 8, i1 false)
  %218 = getelementptr inbounds { ptr }, ptr %217, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %218, ptr %8)
  %219 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %219, label %_llgo_4 [
    i8 0, label %_llgo_175
    i8 1, label %_llgo_5
  ]

_llgo_174:                                        ; preds = %_llgo_172
  br label %_llgo_170

_llgo_175:                                        ; preds = %_llgo_173
  br label %_llgo_170

_llgo_176:                                        ; preds = %_llgo_169
  %220 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %210)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %210)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %220)
  br label %_llgo_5

_llgo_177:                                        ; preds = %_llgo_169
  %221 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8U$coro"(float 2.560000e+02, i8 0)
  br label %_llgo_179

_llgo_178:                                        ; preds = %_llgo_179
  %222 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %221)
  br i1 %222, label %_llgo_185, label %_llgo_186

_llgo_179:                                        ; preds = %_llgo_184, %_llgo_183, %_llgo_177
  %223 = phi i1 [ true, %_llgo_177 ], [ false, %_llgo_181 ], [ false, %_llgo_182 ]
  %224 = call i1 @llvm.coro.done(ptr %221)
  br i1 %224, label %_llgo_178, label %_llgo_180

_llgo_180:                                        ; preds = %_llgo_179
  br i1 %223, label %_llgo_181, label %_llgo_182

_llgo_181:                                        ; preds = %_llgo_180
  %225 = call ptr @llvm.coro.promise(ptr %221, i32 8, i1 false)
  %226 = getelementptr inbounds { ptr }, ptr %225, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %226, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %221)
  %227 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %227, label %_llgo_4 [
    i8 0, label %_llgo_183
    i8 1, label %_llgo_5
  ]

_llgo_182:                                        ; preds = %_llgo_180
  %228 = call ptr @llvm.coro.promise(ptr %221, i32 8, i1 false)
  %229 = getelementptr inbounds { ptr }, ptr %228, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %229, ptr %8)
  %230 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %230, label %_llgo_4 [
    i8 0, label %_llgo_184
    i8 1, label %_llgo_5
  ]

_llgo_183:                                        ; preds = %_llgo_181
  br label %_llgo_179

_llgo_184:                                        ; preds = %_llgo_182
  br label %_llgo_179

_llgo_185:                                        ; preds = %_llgo_178
  %231 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %221)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %221)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %231)
  br label %_llgo_5

_llgo_186:                                        ; preds = %_llgo_178
  %232 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8U$coro"(float 2.570000e+02, i8 1)
  br label %_llgo_188

_llgo_187:                                        ; preds = %_llgo_188
  %233 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %232)
  br i1 %233, label %_llgo_194, label %_llgo_195

_llgo_188:                                        ; preds = %_llgo_193, %_llgo_192, %_llgo_186
  %234 = phi i1 [ true, %_llgo_186 ], [ false, %_llgo_190 ], [ false, %_llgo_191 ]
  %235 = call i1 @llvm.coro.done(ptr %232)
  br i1 %235, label %_llgo_187, label %_llgo_189

_llgo_189:                                        ; preds = %_llgo_188
  br i1 %234, label %_llgo_190, label %_llgo_191

_llgo_190:                                        ; preds = %_llgo_189
  %236 = call ptr @llvm.coro.promise(ptr %232, i32 8, i1 false)
  %237 = getelementptr inbounds { ptr }, ptr %236, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %237, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %232)
  %238 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %238, label %_llgo_4 [
    i8 0, label %_llgo_192
    i8 1, label %_llgo_5
  ]

_llgo_191:                                        ; preds = %_llgo_189
  %239 = call ptr @llvm.coro.promise(ptr %232, i32 8, i1 false)
  %240 = getelementptr inbounds { ptr }, ptr %239, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %240, ptr %8)
  %241 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %241, label %_llgo_4 [
    i8 0, label %_llgo_193
    i8 1, label %_llgo_5
  ]

_llgo_192:                                        ; preds = %_llgo_190
  br label %_llgo_188

_llgo_193:                                        ; preds = %_llgo_191
  br label %_llgo_188

_llgo_194:                                        ; preds = %_llgo_187
  %242 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %232)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %232)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %242)
  br label %_llgo_5

_llgo_195:                                        ; preds = %_llgo_187
  %243 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8U$coro"(float -1.000000e+00, i8 -1)
  br label %_llgo_197

_llgo_196:                                        ; preds = %_llgo_197
  %244 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %243)
  br i1 %244, label %_llgo_203, label %_llgo_204

_llgo_197:                                        ; preds = %_llgo_202, %_llgo_201, %_llgo_195
  %245 = phi i1 [ true, %_llgo_195 ], [ false, %_llgo_199 ], [ false, %_llgo_200 ]
  %246 = call i1 @llvm.coro.done(ptr %243)
  br i1 %246, label %_llgo_196, label %_llgo_198

_llgo_198:                                        ; preds = %_llgo_197
  br i1 %245, label %_llgo_199, label %_llgo_200

_llgo_199:                                        ; preds = %_llgo_198
  %247 = call ptr @llvm.coro.promise(ptr %243, i32 8, i1 false)
  %248 = getelementptr inbounds { ptr }, ptr %247, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %248, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %243)
  %249 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %249, label %_llgo_4 [
    i8 0, label %_llgo_201
    i8 1, label %_llgo_5
  ]

_llgo_200:                                        ; preds = %_llgo_198
  %250 = call ptr @llvm.coro.promise(ptr %243, i32 8, i1 false)
  %251 = getelementptr inbounds { ptr }, ptr %250, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %251, ptr %8)
  %252 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %252, label %_llgo_4 [
    i8 0, label %_llgo_202
    i8 1, label %_llgo_5
  ]

_llgo_201:                                        ; preds = %_llgo_199
  br label %_llgo_197

_llgo_202:                                        ; preds = %_llgo_200
  br label %_llgo_197

_llgo_203:                                        ; preds = %_llgo_196
  %253 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %243)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %243)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %253)
  br label %_llgo_5

_llgo_204:                                        ; preds = %_llgo_196
  %254 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32$coro"(float 0.000000e+00, i32 0)
  br label %_llgo_206

_llgo_205:                                        ; preds = %_llgo_206
  %255 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %254)
  br i1 %255, label %_llgo_212, label %_llgo_213

_llgo_206:                                        ; preds = %_llgo_211, %_llgo_210, %_llgo_204
  %256 = phi i1 [ true, %_llgo_204 ], [ false, %_llgo_208 ], [ false, %_llgo_209 ]
  %257 = call i1 @llvm.coro.done(ptr %254)
  br i1 %257, label %_llgo_205, label %_llgo_207

_llgo_207:                                        ; preds = %_llgo_206
  br i1 %256, label %_llgo_208, label %_llgo_209

_llgo_208:                                        ; preds = %_llgo_207
  %258 = call ptr @llvm.coro.promise(ptr %254, i32 8, i1 false)
  %259 = getelementptr inbounds { ptr }, ptr %258, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %259, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %254)
  %260 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %260, label %_llgo_4 [
    i8 0, label %_llgo_210
    i8 1, label %_llgo_5
  ]

_llgo_209:                                        ; preds = %_llgo_207
  %261 = call ptr @llvm.coro.promise(ptr %254, i32 8, i1 false)
  %262 = getelementptr inbounds { ptr }, ptr %261, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %262, ptr %8)
  %263 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %263, label %_llgo_4 [
    i8 0, label %_llgo_211
    i8 1, label %_llgo_5
  ]

_llgo_210:                                        ; preds = %_llgo_208
  br label %_llgo_206

_llgo_211:                                        ; preds = %_llgo_209
  br label %_llgo_206

_llgo_212:                                        ; preds = %_llgo_205
  %264 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %254)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %254)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %264)
  br label %_llgo_5

_llgo_213:                                        ; preds = %_llgo_205
  %265 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32$coro"(float 1.500000e+00, i32 1)
  br label %_llgo_215

_llgo_214:                                        ; preds = %_llgo_215
  %266 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %265)
  br i1 %266, label %_llgo_221, label %_llgo_222

_llgo_215:                                        ; preds = %_llgo_220, %_llgo_219, %_llgo_213
  %267 = phi i1 [ true, %_llgo_213 ], [ false, %_llgo_217 ], [ false, %_llgo_218 ]
  %268 = call i1 @llvm.coro.done(ptr %265)
  br i1 %268, label %_llgo_214, label %_llgo_216

_llgo_216:                                        ; preds = %_llgo_215
  br i1 %267, label %_llgo_217, label %_llgo_218

_llgo_217:                                        ; preds = %_llgo_216
  %269 = call ptr @llvm.coro.promise(ptr %265, i32 8, i1 false)
  %270 = getelementptr inbounds { ptr }, ptr %269, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %270, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %265)
  %271 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %271, label %_llgo_4 [
    i8 0, label %_llgo_219
    i8 1, label %_llgo_5
  ]

_llgo_218:                                        ; preds = %_llgo_216
  %272 = call ptr @llvm.coro.promise(ptr %265, i32 8, i1 false)
  %273 = getelementptr inbounds { ptr }, ptr %272, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %273, ptr %8)
  %274 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %274, label %_llgo_4 [
    i8 0, label %_llgo_220
    i8 1, label %_llgo_5
  ]

_llgo_219:                                        ; preds = %_llgo_217
  br label %_llgo_215

_llgo_220:                                        ; preds = %_llgo_218
  br label %_llgo_215

_llgo_221:                                        ; preds = %_llgo_214
  %275 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %265)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %265)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %275)
  br label %_llgo_5

_llgo_222:                                        ; preds = %_llgo_214
  %276 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32$coro"(float 0x41D1194D80000000, i32 1147483648)
  br label %_llgo_224

_llgo_223:                                        ; preds = %_llgo_224
  %277 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %276)
  br i1 %277, label %_llgo_230, label %_llgo_231

_llgo_224:                                        ; preds = %_llgo_229, %_llgo_228, %_llgo_222
  %278 = phi i1 [ true, %_llgo_222 ], [ false, %_llgo_226 ], [ false, %_llgo_227 ]
  %279 = call i1 @llvm.coro.done(ptr %276)
  br i1 %279, label %_llgo_223, label %_llgo_225

_llgo_225:                                        ; preds = %_llgo_224
  br i1 %278, label %_llgo_226, label %_llgo_227

_llgo_226:                                        ; preds = %_llgo_225
  %280 = call ptr @llvm.coro.promise(ptr %276, i32 8, i1 false)
  %281 = getelementptr inbounds { ptr }, ptr %280, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %281, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %276)
  %282 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %282, label %_llgo_4 [
    i8 0, label %_llgo_228
    i8 1, label %_llgo_5
  ]

_llgo_227:                                        ; preds = %_llgo_225
  %283 = call ptr @llvm.coro.promise(ptr %276, i32 8, i1 false)
  %284 = getelementptr inbounds { ptr }, ptr %283, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %284, ptr %8)
  %285 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %285, label %_llgo_4 [
    i8 0, label %_llgo_229
    i8 1, label %_llgo_5
  ]

_llgo_228:                                        ; preds = %_llgo_226
  br label %_llgo_224

_llgo_229:                                        ; preds = %_llgo_227
  br label %_llgo_224

_llgo_230:                                        ; preds = %_llgo_223
  %286 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %276)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %276)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %286)
  br label %_llgo_5

_llgo_231:                                        ; preds = %_llgo_223
  %287 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32$coro"(float 0xC1E0000000000000, i32 -2147483648)
  br label %_llgo_233

_llgo_232:                                        ; preds = %_llgo_233
  %288 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %287)
  br i1 %288, label %_llgo_239, label %_llgo_240

_llgo_233:                                        ; preds = %_llgo_238, %_llgo_237, %_llgo_231
  %289 = phi i1 [ true, %_llgo_231 ], [ false, %_llgo_235 ], [ false, %_llgo_236 ]
  %290 = call i1 @llvm.coro.done(ptr %287)
  br i1 %290, label %_llgo_232, label %_llgo_234

_llgo_234:                                        ; preds = %_llgo_233
  br i1 %289, label %_llgo_235, label %_llgo_236

_llgo_235:                                        ; preds = %_llgo_234
  %291 = call ptr @llvm.coro.promise(ptr %287, i32 8, i1 false)
  %292 = getelementptr inbounds { ptr }, ptr %291, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %292, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %287)
  %293 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %293, label %_llgo_4 [
    i8 0, label %_llgo_237
    i8 1, label %_llgo_5
  ]

_llgo_236:                                        ; preds = %_llgo_234
  %294 = call ptr @llvm.coro.promise(ptr %287, i32 8, i1 false)
  %295 = getelementptr inbounds { ptr }, ptr %294, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %295, ptr %8)
  %296 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %296, label %_llgo_4 [
    i8 0, label %_llgo_238
    i8 1, label %_llgo_5
  ]

_llgo_237:                                        ; preds = %_llgo_235
  br label %_llgo_233

_llgo_238:                                        ; preds = %_llgo_236
  br label %_llgo_233

_llgo_239:                                        ; preds = %_llgo_232
  %297 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %287)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %287)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %297)
  br label %_llgo_5

_llgo_240:                                        ; preds = %_llgo_232
  %298 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32U$coro"(float 0.000000e+00, i32 0)
  br label %_llgo_242

_llgo_241:                                        ; preds = %_llgo_242
  %299 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %298)
  br i1 %299, label %_llgo_248, label %_llgo_249

_llgo_242:                                        ; preds = %_llgo_247, %_llgo_246, %_llgo_240
  %300 = phi i1 [ true, %_llgo_240 ], [ false, %_llgo_244 ], [ false, %_llgo_245 ]
  %301 = call i1 @llvm.coro.done(ptr %298)
  br i1 %301, label %_llgo_241, label %_llgo_243

_llgo_243:                                        ; preds = %_llgo_242
  br i1 %300, label %_llgo_244, label %_llgo_245

_llgo_244:                                        ; preds = %_llgo_243
  %302 = call ptr @llvm.coro.promise(ptr %298, i32 8, i1 false)
  %303 = getelementptr inbounds { ptr }, ptr %302, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %303, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %298)
  %304 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %304, label %_llgo_4 [
    i8 0, label %_llgo_246
    i8 1, label %_llgo_5
  ]

_llgo_245:                                        ; preds = %_llgo_243
  %305 = call ptr @llvm.coro.promise(ptr %298, i32 8, i1 false)
  %306 = getelementptr inbounds { ptr }, ptr %305, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %306, ptr %8)
  %307 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %307, label %_llgo_4 [
    i8 0, label %_llgo_247
    i8 1, label %_llgo_5
  ]

_llgo_246:                                        ; preds = %_llgo_244
  br label %_llgo_242

_llgo_247:                                        ; preds = %_llgo_245
  br label %_llgo_242

_llgo_248:                                        ; preds = %_llgo_241
  %308 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %298)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %298)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %308)
  br label %_llgo_5

_llgo_249:                                        ; preds = %_llgo_241
  %309 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32U$coro"(float 1.500000e+00, i32 1)
  br label %_llgo_251

_llgo_250:                                        ; preds = %_llgo_251
  %310 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %309)
  br i1 %310, label %_llgo_257, label %_llgo_258

_llgo_251:                                        ; preds = %_llgo_256, %_llgo_255, %_llgo_249
  %311 = phi i1 [ true, %_llgo_249 ], [ false, %_llgo_253 ], [ false, %_llgo_254 ]
  %312 = call i1 @llvm.coro.done(ptr %309)
  br i1 %312, label %_llgo_250, label %_llgo_252

_llgo_252:                                        ; preds = %_llgo_251
  br i1 %311, label %_llgo_253, label %_llgo_254

_llgo_253:                                        ; preds = %_llgo_252
  %313 = call ptr @llvm.coro.promise(ptr %309, i32 8, i1 false)
  %314 = getelementptr inbounds { ptr }, ptr %313, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %314, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %309)
  %315 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %315, label %_llgo_4 [
    i8 0, label %_llgo_255
    i8 1, label %_llgo_5
  ]

_llgo_254:                                        ; preds = %_llgo_252
  %316 = call ptr @llvm.coro.promise(ptr %309, i32 8, i1 false)
  %317 = getelementptr inbounds { ptr }, ptr %316, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %317, ptr %8)
  %318 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %318, label %_llgo_4 [
    i8 0, label %_llgo_256
    i8 1, label %_llgo_5
  ]

_llgo_255:                                        ; preds = %_llgo_253
  br label %_llgo_251

_llgo_256:                                        ; preds = %_llgo_254
  br label %_llgo_251

_llgo_257:                                        ; preds = %_llgo_250
  %319 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %309)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %309)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %319)
  br label %_llgo_5

_llgo_258:                                        ; preds = %_llgo_250
  %320 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32U$coro"(float 0x41F0000000000000, i32 0)
  br label %_llgo_260

_llgo_259:                                        ; preds = %_llgo_260
  %321 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %320)
  br i1 %321, label %_llgo_266, label %_llgo_267

_llgo_260:                                        ; preds = %_llgo_265, %_llgo_264, %_llgo_258
  %322 = phi i1 [ true, %_llgo_258 ], [ false, %_llgo_262 ], [ false, %_llgo_263 ]
  %323 = call i1 @llvm.coro.done(ptr %320)
  br i1 %323, label %_llgo_259, label %_llgo_261

_llgo_261:                                        ; preds = %_llgo_260
  br i1 %322, label %_llgo_262, label %_llgo_263

_llgo_262:                                        ; preds = %_llgo_261
  %324 = call ptr @llvm.coro.promise(ptr %320, i32 8, i1 false)
  %325 = getelementptr inbounds { ptr }, ptr %324, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %325, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %320)
  %326 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %326, label %_llgo_4 [
    i8 0, label %_llgo_264
    i8 1, label %_llgo_5
  ]

_llgo_263:                                        ; preds = %_llgo_261
  %327 = call ptr @llvm.coro.promise(ptr %320, i32 8, i1 false)
  %328 = getelementptr inbounds { ptr }, ptr %327, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %328, ptr %8)
  %329 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %329, label %_llgo_4 [
    i8 0, label %_llgo_265
    i8 1, label %_llgo_5
  ]

_llgo_264:                                        ; preds = %_llgo_262
  br label %_llgo_260

_llgo_265:                                        ; preds = %_llgo_263
  br label %_llgo_260

_llgo_266:                                        ; preds = %_llgo_259
  %330 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %320)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %320)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %330)
  br label %_llgo_5

_llgo_267:                                        ; preds = %_llgo_259
  %331 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32U$coro"(float 0x41F3B9ACA0000000, i32 1000000000)
  br label %_llgo_269

_llgo_268:                                        ; preds = %_llgo_269
  %332 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %331)
  br i1 %332, label %_llgo_275, label %_llgo_276

_llgo_269:                                        ; preds = %_llgo_274, %_llgo_273, %_llgo_267
  %333 = phi i1 [ true, %_llgo_267 ], [ false, %_llgo_271 ], [ false, %_llgo_272 ]
  %334 = call i1 @llvm.coro.done(ptr %331)
  br i1 %334, label %_llgo_268, label %_llgo_270

_llgo_270:                                        ; preds = %_llgo_269
  br i1 %333, label %_llgo_271, label %_llgo_272

_llgo_271:                                        ; preds = %_llgo_270
  %335 = call ptr @llvm.coro.promise(ptr %331, i32 8, i1 false)
  %336 = getelementptr inbounds { ptr }, ptr %335, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %336, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %331)
  %337 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %337, label %_llgo_4 [
    i8 0, label %_llgo_273
    i8 1, label %_llgo_5
  ]

_llgo_272:                                        ; preds = %_llgo_270
  %338 = call ptr @llvm.coro.promise(ptr %331, i32 8, i1 false)
  %339 = getelementptr inbounds { ptr }, ptr %338, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %339, ptr %8)
  %340 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %340, label %_llgo_4 [
    i8 0, label %_llgo_274
    i8 1, label %_llgo_5
  ]

_llgo_273:                                        ; preds = %_llgo_271
  br label %_llgo_269

_llgo_274:                                        ; preds = %_llgo_272
  br label %_llgo_269

_llgo_275:                                        ; preds = %_llgo_268
  %341 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %331)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %331)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %341)
  br label %_llgo_5

_llgo_276:                                        ; preds = %_llgo_268
  %342 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32U$coro"(float 0xC1F0000000000000, i32 0)
  br label %_llgo_278

_llgo_277:                                        ; preds = %_llgo_278
  %343 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %342)
  br i1 %343, label %_llgo_284, label %_llgo_285

_llgo_278:                                        ; preds = %_llgo_283, %_llgo_282, %_llgo_276
  %344 = phi i1 [ true, %_llgo_276 ], [ false, %_llgo_280 ], [ false, %_llgo_281 ]
  %345 = call i1 @llvm.coro.done(ptr %342)
  br i1 %345, label %_llgo_277, label %_llgo_279

_llgo_279:                                        ; preds = %_llgo_278
  br i1 %344, label %_llgo_280, label %_llgo_281

_llgo_280:                                        ; preds = %_llgo_279
  %346 = call ptr @llvm.coro.promise(ptr %342, i32 8, i1 false)
  %347 = getelementptr inbounds { ptr }, ptr %346, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %347, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %342)
  %348 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %348, label %_llgo_4 [
    i8 0, label %_llgo_282
    i8 1, label %_llgo_5
  ]

_llgo_281:                                        ; preds = %_llgo_279
  %349 = call ptr @llvm.coro.promise(ptr %342, i32 8, i1 false)
  %350 = getelementptr inbounds { ptr }, ptr %349, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %350, ptr %8)
  %351 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %351, label %_llgo_4 [
    i8 0, label %_llgo_283
    i8 1, label %_llgo_5
  ]

_llgo_282:                                        ; preds = %_llgo_280
  br label %_llgo_278

_llgo_283:                                        ; preds = %_llgo_281
  br label %_llgo_278

_llgo_284:                                        ; preds = %_llgo_277
  %352 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %342)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %342)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %352)
  br label %_llgo_5

_llgo_285:                                        ; preds = %_llgo_277
  %353 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32U$coro"(float 0xC1D34BE880000000, i32 -1294967296)
  br label %_llgo_287

_llgo_286:                                        ; preds = %_llgo_287
  %354 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %353)
  br i1 %354, label %_llgo_293, label %_llgo_294

_llgo_287:                                        ; preds = %_llgo_292, %_llgo_291, %_llgo_285
  %355 = phi i1 [ true, %_llgo_285 ], [ false, %_llgo_289 ], [ false, %_llgo_290 ]
  %356 = call i1 @llvm.coro.done(ptr %353)
  br i1 %356, label %_llgo_286, label %_llgo_288

_llgo_288:                                        ; preds = %_llgo_287
  br i1 %355, label %_llgo_289, label %_llgo_290

_llgo_289:                                        ; preds = %_llgo_288
  %357 = call ptr @llvm.coro.promise(ptr %353, i32 8, i1 false)
  %358 = getelementptr inbounds { ptr }, ptr %357, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %358, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %353)
  %359 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %359, label %_llgo_4 [
    i8 0, label %_llgo_291
    i8 1, label %_llgo_5
  ]

_llgo_290:                                        ; preds = %_llgo_288
  %360 = call ptr @llvm.coro.promise(ptr %353, i32 8, i1 false)
  %361 = getelementptr inbounds { ptr }, ptr %360, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %361, ptr %8)
  %362 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %362, label %_llgo_4 [
    i8 0, label %_llgo_292
    i8 1, label %_llgo_5
  ]

_llgo_291:                                        ; preds = %_llgo_289
  br label %_llgo_287

_llgo_292:                                        ; preds = %_llgo_290
  br label %_llgo_287

_llgo_293:                                        ; preds = %_llgo_286
  %363 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %353)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %353)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %363)
  br label %_llgo_5

_llgo_294:                                        ; preds = %_llgo_286
  %364 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32U$coro"(float 0xBFF19999A0000000, i32 -1)
  br label %_llgo_296

_llgo_295:                                        ; preds = %_llgo_296
  %365 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %364)
  br i1 %365, label %_llgo_302, label %_llgo_303

_llgo_296:                                        ; preds = %_llgo_301, %_llgo_300, %_llgo_294
  %366 = phi i1 [ true, %_llgo_294 ], [ false, %_llgo_298 ], [ false, %_llgo_299 ]
  %367 = call i1 @llvm.coro.done(ptr %364)
  br i1 %367, label %_llgo_295, label %_llgo_297

_llgo_297:                                        ; preds = %_llgo_296
  br i1 %366, label %_llgo_298, label %_llgo_299

_llgo_298:                                        ; preds = %_llgo_297
  %368 = call ptr @llvm.coro.promise(ptr %364, i32 8, i1 false)
  %369 = getelementptr inbounds { ptr }, ptr %368, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %369, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %364)
  %370 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %370, label %_llgo_4 [
    i8 0, label %_llgo_300
    i8 1, label %_llgo_5
  ]

_llgo_299:                                        ; preds = %_llgo_297
  %371 = call ptr @llvm.coro.promise(ptr %364, i32 8, i1 false)
  %372 = getelementptr inbounds { ptr }, ptr %371, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %372, ptr %8)
  %373 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %373, label %_llgo_4 [
    i8 0, label %_llgo_301
    i8 1, label %_llgo_5
  ]

_llgo_300:                                        ; preds = %_llgo_298
  br label %_llgo_296

_llgo_301:                                        ; preds = %_llgo_299
  br label %_llgo_296

_llgo_302:                                        ; preds = %_llgo_295
  %374 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %364)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %364)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %374)
  br label %_llgo_5

_llgo_303:                                        ; preds = %_llgo_295
  %375 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto64F$coro"(float 0.000000e+00, double 0.000000e+00)
  br label %_llgo_305

_llgo_304:                                        ; preds = %_llgo_305
  %376 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %375)
  br i1 %376, label %_llgo_311, label %_llgo_312

_llgo_305:                                        ; preds = %_llgo_310, %_llgo_309, %_llgo_303
  %377 = phi i1 [ true, %_llgo_303 ], [ false, %_llgo_307 ], [ false, %_llgo_308 ]
  %378 = call i1 @llvm.coro.done(ptr %375)
  br i1 %378, label %_llgo_304, label %_llgo_306

_llgo_306:                                        ; preds = %_llgo_305
  br i1 %377, label %_llgo_307, label %_llgo_308

_llgo_307:                                        ; preds = %_llgo_306
  %379 = call ptr @llvm.coro.promise(ptr %375, i32 8, i1 false)
  %380 = getelementptr inbounds { ptr }, ptr %379, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %380, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %375)
  %381 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %381, label %_llgo_4 [
    i8 0, label %_llgo_309
    i8 1, label %_llgo_5
  ]

_llgo_308:                                        ; preds = %_llgo_306
  %382 = call ptr @llvm.coro.promise(ptr %375, i32 8, i1 false)
  %383 = getelementptr inbounds { ptr }, ptr %382, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %383, ptr %8)
  %384 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %384, label %_llgo_4 [
    i8 0, label %_llgo_310
    i8 1, label %_llgo_5
  ]

_llgo_309:                                        ; preds = %_llgo_307
  br label %_llgo_305

_llgo_310:                                        ; preds = %_llgo_308
  br label %_llgo_305

_llgo_311:                                        ; preds = %_llgo_304
  %385 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %375)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %375)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %385)
  br label %_llgo_5

_llgo_312:                                        ; preds = %_llgo_304
  %386 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto64F$coro"(float 1.500000e+00, double 1.500000e+00)
  br label %_llgo_314

_llgo_313:                                        ; preds = %_llgo_314
  %387 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %386)
  br i1 %387, label %_llgo_320, label %_llgo_321

_llgo_314:                                        ; preds = %_llgo_319, %_llgo_318, %_llgo_312
  %388 = phi i1 [ true, %_llgo_312 ], [ false, %_llgo_316 ], [ false, %_llgo_317 ]
  %389 = call i1 @llvm.coro.done(ptr %386)
  br i1 %389, label %_llgo_313, label %_llgo_315

_llgo_315:                                        ; preds = %_llgo_314
  br i1 %388, label %_llgo_316, label %_llgo_317

_llgo_316:                                        ; preds = %_llgo_315
  %390 = call ptr @llvm.coro.promise(ptr %386, i32 8, i1 false)
  %391 = getelementptr inbounds { ptr }, ptr %390, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %391, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %386)
  %392 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %392, label %_llgo_4 [
    i8 0, label %_llgo_318
    i8 1, label %_llgo_5
  ]

_llgo_317:                                        ; preds = %_llgo_315
  %393 = call ptr @llvm.coro.promise(ptr %386, i32 8, i1 false)
  %394 = getelementptr inbounds { ptr }, ptr %393, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %394, ptr %8)
  %395 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %395, label %_llgo_4 [
    i8 0, label %_llgo_319
    i8 1, label %_llgo_5
  ]

_llgo_318:                                        ; preds = %_llgo_316
  br label %_llgo_314

_llgo_319:                                        ; preds = %_llgo_317
  br label %_llgo_314

_llgo_320:                                        ; preds = %_llgo_313
  %396 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %386)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %386)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %396)
  br label %_llgo_5

_llgo_321:                                        ; preds = %_llgo_313
  %397 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto64F$coro"(float 1.000000e+10, double 1.000000e+10)
  br label %_llgo_323

_llgo_322:                                        ; preds = %_llgo_323
  %398 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %397)
  br i1 %398, label %_llgo_329, label %_llgo_330

_llgo_323:                                        ; preds = %_llgo_328, %_llgo_327, %_llgo_321
  %399 = phi i1 [ true, %_llgo_321 ], [ false, %_llgo_325 ], [ false, %_llgo_326 ]
  %400 = call i1 @llvm.coro.done(ptr %397)
  br i1 %400, label %_llgo_322, label %_llgo_324

_llgo_324:                                        ; preds = %_llgo_323
  br i1 %399, label %_llgo_325, label %_llgo_326

_llgo_325:                                        ; preds = %_llgo_324
  %401 = call ptr @llvm.coro.promise(ptr %397, i32 8, i1 false)
  %402 = getelementptr inbounds { ptr }, ptr %401, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %402, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %397)
  %403 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %403, label %_llgo_4 [
    i8 0, label %_llgo_327
    i8 1, label %_llgo_5
  ]

_llgo_326:                                        ; preds = %_llgo_324
  %404 = call ptr @llvm.coro.promise(ptr %397, i32 8, i1 false)
  %405 = getelementptr inbounds { ptr }, ptr %404, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %405, ptr %8)
  %406 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %406, label %_llgo_4 [
    i8 0, label %_llgo_328
    i8 1, label %_llgo_5
  ]

_llgo_327:                                        ; preds = %_llgo_325
  br label %_llgo_323

_llgo_328:                                        ; preds = %_llgo_326
  br label %_llgo_323

_llgo_329:                                        ; preds = %_llgo_322
  %407 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %397)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %397)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %407)
  br label %_llgo_5

_llgo_330:                                        ; preds = %_llgo_322
  %408 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto64F$coro"(float -1.000000e+10, double -1.000000e+10)
  br label %_llgo_332

_llgo_331:                                        ; preds = %_llgo_332
  %409 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %408)
  br i1 %409, label %_llgo_338, label %_llgo_339

_llgo_332:                                        ; preds = %_llgo_337, %_llgo_336, %_llgo_330
  %410 = phi i1 [ true, %_llgo_330 ], [ false, %_llgo_334 ], [ false, %_llgo_335 ]
  %411 = call i1 @llvm.coro.done(ptr %408)
  br i1 %411, label %_llgo_331, label %_llgo_333

_llgo_333:                                        ; preds = %_llgo_332
  br i1 %410, label %_llgo_334, label %_llgo_335

_llgo_334:                                        ; preds = %_llgo_333
  %412 = call ptr @llvm.coro.promise(ptr %408, i32 8, i1 false)
  %413 = getelementptr inbounds { ptr }, ptr %412, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %413, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %408)
  %414 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %414, label %_llgo_4 [
    i8 0, label %_llgo_336
    i8 1, label %_llgo_5
  ]

_llgo_335:                                        ; preds = %_llgo_333
  %415 = call ptr @llvm.coro.promise(ptr %408, i32 8, i1 false)
  %416 = getelementptr inbounds { ptr }, ptr %415, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %416, ptr %8)
  %417 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %417, label %_llgo_4 [
    i8 0, label %_llgo_337
    i8 1, label %_llgo_5
  ]

_llgo_336:                                        ; preds = %_llgo_334
  br label %_llgo_332

_llgo_337:                                        ; preds = %_llgo_335
  br label %_llgo_332

_llgo_338:                                        ; preds = %_llgo_331
  %418 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %408)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %408)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %418)
  br label %_llgo_5

_llgo_339:                                        ; preds = %_llgo_331
  %419 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Fto32F$coro"(double 0.000000e+00, float 0.000000e+00)
  br label %_llgo_341

_llgo_340:                                        ; preds = %_llgo_341
  %420 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %419)
  br i1 %420, label %_llgo_347, label %_llgo_348

_llgo_341:                                        ; preds = %_llgo_346, %_llgo_345, %_llgo_339
  %421 = phi i1 [ true, %_llgo_339 ], [ false, %_llgo_343 ], [ false, %_llgo_344 ]
  %422 = call i1 @llvm.coro.done(ptr %419)
  br i1 %422, label %_llgo_340, label %_llgo_342

_llgo_342:                                        ; preds = %_llgo_341
  br i1 %421, label %_llgo_343, label %_llgo_344

_llgo_343:                                        ; preds = %_llgo_342
  %423 = call ptr @llvm.coro.promise(ptr %419, i32 8, i1 false)
  %424 = getelementptr inbounds { ptr }, ptr %423, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %424, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %419)
  %425 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %425, label %_llgo_4 [
    i8 0, label %_llgo_345
    i8 1, label %_llgo_5
  ]

_llgo_344:                                        ; preds = %_llgo_342
  %426 = call ptr @llvm.coro.promise(ptr %419, i32 8, i1 false)
  %427 = getelementptr inbounds { ptr }, ptr %426, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %427, ptr %8)
  %428 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %428, label %_llgo_4 [
    i8 0, label %_llgo_346
    i8 1, label %_llgo_5
  ]

_llgo_345:                                        ; preds = %_llgo_343
  br label %_llgo_341

_llgo_346:                                        ; preds = %_llgo_344
  br label %_llgo_341

_llgo_347:                                        ; preds = %_llgo_340
  %429 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %419)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %419)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %429)
  br label %_llgo_5

_llgo_348:                                        ; preds = %_llgo_340
  %430 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Fto32F$coro"(double 1.500000e+00, float 1.500000e+00)
  br label %_llgo_350

_llgo_349:                                        ; preds = %_llgo_350
  %431 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %430)
  br i1 %431, label %_llgo_356, label %_llgo_357

_llgo_350:                                        ; preds = %_llgo_355, %_llgo_354, %_llgo_348
  %432 = phi i1 [ true, %_llgo_348 ], [ false, %_llgo_352 ], [ false, %_llgo_353 ]
  %433 = call i1 @llvm.coro.done(ptr %430)
  br i1 %433, label %_llgo_349, label %_llgo_351

_llgo_351:                                        ; preds = %_llgo_350
  br i1 %432, label %_llgo_352, label %_llgo_353

_llgo_352:                                        ; preds = %_llgo_351
  %434 = call ptr @llvm.coro.promise(ptr %430, i32 8, i1 false)
  %435 = getelementptr inbounds { ptr }, ptr %434, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %435, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %430)
  %436 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %436, label %_llgo_4 [
    i8 0, label %_llgo_354
    i8 1, label %_llgo_5
  ]

_llgo_353:                                        ; preds = %_llgo_351
  %437 = call ptr @llvm.coro.promise(ptr %430, i32 8, i1 false)
  %438 = getelementptr inbounds { ptr }, ptr %437, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %438, ptr %8)
  %439 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %439, label %_llgo_4 [
    i8 0, label %_llgo_355
    i8 1, label %_llgo_5
  ]

_llgo_354:                                        ; preds = %_llgo_352
  br label %_llgo_350

_llgo_355:                                        ; preds = %_llgo_353
  br label %_llgo_350

_llgo_356:                                        ; preds = %_llgo_349
  %440 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %430)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %430)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %440)
  br label %_llgo_5

_llgo_357:                                        ; preds = %_llgo_349
  %441 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Fto32F$coro"(double 1.000000e+10, float 1.000000e+10)
  br label %_llgo_359

_llgo_358:                                        ; preds = %_llgo_359
  %442 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %441)
  br i1 %442, label %_llgo_365, label %_llgo_366

_llgo_359:                                        ; preds = %_llgo_364, %_llgo_363, %_llgo_357
  %443 = phi i1 [ true, %_llgo_357 ], [ false, %_llgo_361 ], [ false, %_llgo_362 ]
  %444 = call i1 @llvm.coro.done(ptr %441)
  br i1 %444, label %_llgo_358, label %_llgo_360

_llgo_360:                                        ; preds = %_llgo_359
  br i1 %443, label %_llgo_361, label %_llgo_362

_llgo_361:                                        ; preds = %_llgo_360
  %445 = call ptr @llvm.coro.promise(ptr %441, i32 8, i1 false)
  %446 = getelementptr inbounds { ptr }, ptr %445, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %446, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %441)
  %447 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %447, label %_llgo_4 [
    i8 0, label %_llgo_363
    i8 1, label %_llgo_5
  ]

_llgo_362:                                        ; preds = %_llgo_360
  %448 = call ptr @llvm.coro.promise(ptr %441, i32 8, i1 false)
  %449 = getelementptr inbounds { ptr }, ptr %448, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %449, ptr %8)
  %450 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %450, label %_llgo_4 [
    i8 0, label %_llgo_364
    i8 1, label %_llgo_5
  ]

_llgo_363:                                        ; preds = %_llgo_361
  br label %_llgo_359

_llgo_364:                                        ; preds = %_llgo_362
  br label %_llgo_359

_llgo_365:                                        ; preds = %_llgo_358
  %451 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %441)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %441)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %451)
  br label %_llgo_5

_llgo_366:                                        ; preds = %_llgo_358
  %452 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Fto32F$coro"(double -1.000000e+10, float -1.000000e+10)
  br label %_llgo_368

_llgo_367:                                        ; preds = %_llgo_368
  %453 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %452)
  br i1 %453, label %_llgo_374, label %_llgo_375

_llgo_368:                                        ; preds = %_llgo_373, %_llgo_372, %_llgo_366
  %454 = phi i1 [ true, %_llgo_366 ], [ false, %_llgo_370 ], [ false, %_llgo_371 ]
  %455 = call i1 @llvm.coro.done(ptr %452)
  br i1 %455, label %_llgo_367, label %_llgo_369

_llgo_369:                                        ; preds = %_llgo_368
  br i1 %454, label %_llgo_370, label %_llgo_371

_llgo_370:                                        ; preds = %_llgo_369
  %456 = call ptr @llvm.coro.promise(ptr %452, i32 8, i1 false)
  %457 = getelementptr inbounds { ptr }, ptr %456, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %457, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %452)
  %458 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %458, label %_llgo_4 [
    i8 0, label %_llgo_372
    i8 1, label %_llgo_5
  ]

_llgo_371:                                        ; preds = %_llgo_369
  %459 = call ptr @llvm.coro.promise(ptr %452, i32 8, i1 false)
  %460 = getelementptr inbounds { ptr }, ptr %459, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %460, ptr %8)
  %461 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %461, label %_llgo_4 [
    i8 0, label %_llgo_373
    i8 1, label %_llgo_5
  ]

_llgo_372:                                        ; preds = %_llgo_370
  br label %_llgo_368

_llgo_373:                                        ; preds = %_llgo_371
  br label %_llgo_368

_llgo_374:                                        ; preds = %_llgo_367
  %462 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %452)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %452)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %462)
  br label %_llgo_5

_llgo_375:                                        ; preds = %_llgo_367
  %463 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to64F$coro"(i64 0, double 0.000000e+00)
  br label %_llgo_377

_llgo_376:                                        ; preds = %_llgo_377
  %464 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %463)
  br i1 %464, label %_llgo_383, label %_llgo_384

_llgo_377:                                        ; preds = %_llgo_382, %_llgo_381, %_llgo_375
  %465 = phi i1 [ true, %_llgo_375 ], [ false, %_llgo_379 ], [ false, %_llgo_380 ]
  %466 = call i1 @llvm.coro.done(ptr %463)
  br i1 %466, label %_llgo_376, label %_llgo_378

_llgo_378:                                        ; preds = %_llgo_377
  br i1 %465, label %_llgo_379, label %_llgo_380

_llgo_379:                                        ; preds = %_llgo_378
  %467 = call ptr @llvm.coro.promise(ptr %463, i32 8, i1 false)
  %468 = getelementptr inbounds { ptr }, ptr %467, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %468, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %463)
  %469 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %469, label %_llgo_4 [
    i8 0, label %_llgo_381
    i8 1, label %_llgo_5
  ]

_llgo_380:                                        ; preds = %_llgo_378
  %470 = call ptr @llvm.coro.promise(ptr %463, i32 8, i1 false)
  %471 = getelementptr inbounds { ptr }, ptr %470, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %471, ptr %8)
  %472 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %472, label %_llgo_4 [
    i8 0, label %_llgo_382
    i8 1, label %_llgo_5
  ]

_llgo_381:                                        ; preds = %_llgo_379
  br label %_llgo_377

_llgo_382:                                        ; preds = %_llgo_380
  br label %_llgo_377

_llgo_383:                                        ; preds = %_llgo_376
  %473 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %463)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %463)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %473)
  br label %_llgo_5

_llgo_384:                                        ; preds = %_llgo_376
  %474 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to64F$coro"(i64 10000000000, double 1.000000e+10)
  br label %_llgo_386

_llgo_385:                                        ; preds = %_llgo_386
  %475 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %474)
  br i1 %475, label %_llgo_392, label %_llgo_393

_llgo_386:                                        ; preds = %_llgo_391, %_llgo_390, %_llgo_384
  %476 = phi i1 [ true, %_llgo_384 ], [ false, %_llgo_388 ], [ false, %_llgo_389 ]
  %477 = call i1 @llvm.coro.done(ptr %474)
  br i1 %477, label %_llgo_385, label %_llgo_387

_llgo_387:                                        ; preds = %_llgo_386
  br i1 %476, label %_llgo_388, label %_llgo_389

_llgo_388:                                        ; preds = %_llgo_387
  %478 = call ptr @llvm.coro.promise(ptr %474, i32 8, i1 false)
  %479 = getelementptr inbounds { ptr }, ptr %478, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %479, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %474)
  %480 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %480, label %_llgo_4 [
    i8 0, label %_llgo_390
    i8 1, label %_llgo_5
  ]

_llgo_389:                                        ; preds = %_llgo_387
  %481 = call ptr @llvm.coro.promise(ptr %474, i32 8, i1 false)
  %482 = getelementptr inbounds { ptr }, ptr %481, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %482, ptr %8)
  %483 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %483, label %_llgo_4 [
    i8 0, label %_llgo_391
    i8 1, label %_llgo_5
  ]

_llgo_390:                                        ; preds = %_llgo_388
  br label %_llgo_386

_llgo_391:                                        ; preds = %_llgo_389
  br label %_llgo_386

_llgo_392:                                        ; preds = %_llgo_385
  %484 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %474)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %474)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %484)
  br label %_llgo_5

_llgo_393:                                        ; preds = %_llgo_385
  %485 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to64F$coro"(i64 9223372036854775807, double 0x43E0000000000000)
  br label %_llgo_395

_llgo_394:                                        ; preds = %_llgo_395
  %486 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %485)
  br i1 %486, label %_llgo_401, label %_llgo_402

_llgo_395:                                        ; preds = %_llgo_400, %_llgo_399, %_llgo_393
  %487 = phi i1 [ true, %_llgo_393 ], [ false, %_llgo_397 ], [ false, %_llgo_398 ]
  %488 = call i1 @llvm.coro.done(ptr %485)
  br i1 %488, label %_llgo_394, label %_llgo_396

_llgo_396:                                        ; preds = %_llgo_395
  br i1 %487, label %_llgo_397, label %_llgo_398

_llgo_397:                                        ; preds = %_llgo_396
  %489 = call ptr @llvm.coro.promise(ptr %485, i32 8, i1 false)
  %490 = getelementptr inbounds { ptr }, ptr %489, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %490, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %485)
  %491 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %491, label %_llgo_4 [
    i8 0, label %_llgo_399
    i8 1, label %_llgo_5
  ]

_llgo_398:                                        ; preds = %_llgo_396
  %492 = call ptr @llvm.coro.promise(ptr %485, i32 8, i1 false)
  %493 = getelementptr inbounds { ptr }, ptr %492, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %493, ptr %8)
  %494 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %494, label %_llgo_4 [
    i8 0, label %_llgo_400
    i8 1, label %_llgo_5
  ]

_llgo_399:                                        ; preds = %_llgo_397
  br label %_llgo_395

_llgo_400:                                        ; preds = %_llgo_398
  br label %_llgo_395

_llgo_401:                                        ; preds = %_llgo_394
  %495 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %485)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %485)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %495)
  br label %_llgo_5

_llgo_402:                                        ; preds = %_llgo_394
  %496 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to64F$coro"(i64 -9223372036854775807, double 0xC3E0000000000000)
  br label %_llgo_404

_llgo_403:                                        ; preds = %_llgo_404
  %497 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %496)
  br i1 %497, label %_llgo_410, label %_llgo_411

_llgo_404:                                        ; preds = %_llgo_409, %_llgo_408, %_llgo_402
  %498 = phi i1 [ true, %_llgo_402 ], [ false, %_llgo_406 ], [ false, %_llgo_407 ]
  %499 = call i1 @llvm.coro.done(ptr %496)
  br i1 %499, label %_llgo_403, label %_llgo_405

_llgo_405:                                        ; preds = %_llgo_404
  br i1 %498, label %_llgo_406, label %_llgo_407

_llgo_406:                                        ; preds = %_llgo_405
  %500 = call ptr @llvm.coro.promise(ptr %496, i32 8, i1 false)
  %501 = getelementptr inbounds { ptr }, ptr %500, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %501, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %496)
  %502 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %502, label %_llgo_4 [
    i8 0, label %_llgo_408
    i8 1, label %_llgo_5
  ]

_llgo_407:                                        ; preds = %_llgo_405
  %503 = call ptr @llvm.coro.promise(ptr %496, i32 8, i1 false)
  %504 = getelementptr inbounds { ptr }, ptr %503, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %504, ptr %8)
  %505 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %505, label %_llgo_4 [
    i8 0, label %_llgo_409
    i8 1, label %_llgo_5
  ]

_llgo_408:                                        ; preds = %_llgo_406
  br label %_llgo_404

_llgo_409:                                        ; preds = %_llgo_407
  br label %_llgo_404

_llgo_410:                                        ; preds = %_llgo_403
  %506 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %496)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %496)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %506)
  br label %_llgo_5

_llgo_411:                                        ; preds = %_llgo_403
  %507 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Uto64F$coro"(i64 0, double 0.000000e+00)
  br label %_llgo_413

_llgo_412:                                        ; preds = %_llgo_413
  %508 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %507)
  br i1 %508, label %_llgo_419, label %_llgo_420

_llgo_413:                                        ; preds = %_llgo_418, %_llgo_417, %_llgo_411
  %509 = phi i1 [ true, %_llgo_411 ], [ false, %_llgo_415 ], [ false, %_llgo_416 ]
  %510 = call i1 @llvm.coro.done(ptr %507)
  br i1 %510, label %_llgo_412, label %_llgo_414

_llgo_414:                                        ; preds = %_llgo_413
  br i1 %509, label %_llgo_415, label %_llgo_416

_llgo_415:                                        ; preds = %_llgo_414
  %511 = call ptr @llvm.coro.promise(ptr %507, i32 8, i1 false)
  %512 = getelementptr inbounds { ptr }, ptr %511, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %512, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %507)
  %513 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %513, label %_llgo_4 [
    i8 0, label %_llgo_417
    i8 1, label %_llgo_5
  ]

_llgo_416:                                        ; preds = %_llgo_414
  %514 = call ptr @llvm.coro.promise(ptr %507, i32 8, i1 false)
  %515 = getelementptr inbounds { ptr }, ptr %514, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %515, ptr %8)
  %516 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %516, label %_llgo_4 [
    i8 0, label %_llgo_418
    i8 1, label %_llgo_5
  ]

_llgo_417:                                        ; preds = %_llgo_415
  br label %_llgo_413

_llgo_418:                                        ; preds = %_llgo_416
  br label %_llgo_413

_llgo_419:                                        ; preds = %_llgo_412
  %517 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %507)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %507)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %517)
  br label %_llgo_5

_llgo_420:                                        ; preds = %_llgo_412
  %518 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Uto64F$coro"(i64 10000000000, double 1.000000e+10)
  br label %_llgo_422

_llgo_421:                                        ; preds = %_llgo_422
  %519 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %518)
  br i1 %519, label %_llgo_428, label %_llgo_429

_llgo_422:                                        ; preds = %_llgo_427, %_llgo_426, %_llgo_420
  %520 = phi i1 [ true, %_llgo_420 ], [ false, %_llgo_424 ], [ false, %_llgo_425 ]
  %521 = call i1 @llvm.coro.done(ptr %518)
  br i1 %521, label %_llgo_421, label %_llgo_423

_llgo_423:                                        ; preds = %_llgo_422
  br i1 %520, label %_llgo_424, label %_llgo_425

_llgo_424:                                        ; preds = %_llgo_423
  %522 = call ptr @llvm.coro.promise(ptr %518, i32 8, i1 false)
  %523 = getelementptr inbounds { ptr }, ptr %522, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %523, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %518)
  %524 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %524, label %_llgo_4 [
    i8 0, label %_llgo_426
    i8 1, label %_llgo_5
  ]

_llgo_425:                                        ; preds = %_llgo_423
  %525 = call ptr @llvm.coro.promise(ptr %518, i32 8, i1 false)
  %526 = getelementptr inbounds { ptr }, ptr %525, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %526, ptr %8)
  %527 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %527, label %_llgo_4 [
    i8 0, label %_llgo_427
    i8 1, label %_llgo_5
  ]

_llgo_426:                                        ; preds = %_llgo_424
  br label %_llgo_422

_llgo_427:                                        ; preds = %_llgo_425
  br label %_llgo_422

_llgo_428:                                        ; preds = %_llgo_421
  %528 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %518)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %518)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %528)
  br label %_llgo_5

_llgo_429:                                        ; preds = %_llgo_421
  %529 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Uto64F$coro"(i64 9223372036854775807, double 0x43E0000000000000)
  br label %_llgo_431

_llgo_430:                                        ; preds = %_llgo_431
  %530 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %529)
  br i1 %530, label %_llgo_437, label %_llgo_438

_llgo_431:                                        ; preds = %_llgo_436, %_llgo_435, %_llgo_429
  %531 = phi i1 [ true, %_llgo_429 ], [ false, %_llgo_433 ], [ false, %_llgo_434 ]
  %532 = call i1 @llvm.coro.done(ptr %529)
  br i1 %532, label %_llgo_430, label %_llgo_432

_llgo_432:                                        ; preds = %_llgo_431
  br i1 %531, label %_llgo_433, label %_llgo_434

_llgo_433:                                        ; preds = %_llgo_432
  %533 = call ptr @llvm.coro.promise(ptr %529, i32 8, i1 false)
  %534 = getelementptr inbounds { ptr }, ptr %533, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %534, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %529)
  %535 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %535, label %_llgo_4 [
    i8 0, label %_llgo_435
    i8 1, label %_llgo_5
  ]

_llgo_434:                                        ; preds = %_llgo_432
  %536 = call ptr @llvm.coro.promise(ptr %529, i32 8, i1 false)
  %537 = getelementptr inbounds { ptr }, ptr %536, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %537, ptr %8)
  %538 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %538, label %_llgo_4 [
    i8 0, label %_llgo_436
    i8 1, label %_llgo_5
  ]

_llgo_435:                                        ; preds = %_llgo_433
  br label %_llgo_431

_llgo_436:                                        ; preds = %_llgo_434
  br label %_llgo_431

_llgo_437:                                        ; preds = %_llgo_430
  %539 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %529)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %529)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %539)
  br label %_llgo_5

_llgo_438:                                        ; preds = %_llgo_430
  %540 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Uto64F$coro"(i64 -1, double 0x43F0000000000000)
  br label %_llgo_440

_llgo_439:                                        ; preds = %_llgo_440
  %541 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %540)
  br i1 %541, label %_llgo_446, label %_llgo_447

_llgo_440:                                        ; preds = %_llgo_445, %_llgo_444, %_llgo_438
  %542 = phi i1 [ true, %_llgo_438 ], [ false, %_llgo_442 ], [ false, %_llgo_443 ]
  %543 = call i1 @llvm.coro.done(ptr %540)
  br i1 %543, label %_llgo_439, label %_llgo_441

_llgo_441:                                        ; preds = %_llgo_440
  br i1 %542, label %_llgo_442, label %_llgo_443

_llgo_442:                                        ; preds = %_llgo_441
  %544 = call ptr @llvm.coro.promise(ptr %540, i32 8, i1 false)
  %545 = getelementptr inbounds { ptr }, ptr %544, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %545, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %540)
  %546 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %546, label %_llgo_4 [
    i8 0, label %_llgo_444
    i8 1, label %_llgo_5
  ]

_llgo_443:                                        ; preds = %_llgo_441
  %547 = call ptr @llvm.coro.promise(ptr %540, i32 8, i1 false)
  %548 = getelementptr inbounds { ptr }, ptr %547, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %548, ptr %8)
  %549 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %549, label %_llgo_4 [
    i8 0, label %_llgo_445
    i8 1, label %_llgo_5
  ]

_llgo_444:                                        ; preds = %_llgo_442
  br label %_llgo_440

_llgo_445:                                        ; preds = %_llgo_443
  br label %_llgo_440

_llgo_446:                                        ; preds = %_llgo_439
  %550 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %540)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %540)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %550)
  br label %_llgo_5

_llgo_447:                                        ; preds = %_llgo_439
  %551 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32to64$coro"(i32 0, i64 0)
  br label %_llgo_449

_llgo_448:                                        ; preds = %_llgo_449
  %552 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %551)
  br i1 %552, label %_llgo_455, label %_llgo_456

_llgo_449:                                        ; preds = %_llgo_454, %_llgo_453, %_llgo_447
  %553 = phi i1 [ true, %_llgo_447 ], [ false, %_llgo_451 ], [ false, %_llgo_452 ]
  %554 = call i1 @llvm.coro.done(ptr %551)
  br i1 %554, label %_llgo_448, label %_llgo_450

_llgo_450:                                        ; preds = %_llgo_449
  br i1 %553, label %_llgo_451, label %_llgo_452

_llgo_451:                                        ; preds = %_llgo_450
  %555 = call ptr @llvm.coro.promise(ptr %551, i32 8, i1 false)
  %556 = getelementptr inbounds { ptr }, ptr %555, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %556, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %551)
  %557 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %557, label %_llgo_4 [
    i8 0, label %_llgo_453
    i8 1, label %_llgo_5
  ]

_llgo_452:                                        ; preds = %_llgo_450
  %558 = call ptr @llvm.coro.promise(ptr %551, i32 8, i1 false)
  %559 = getelementptr inbounds { ptr }, ptr %558, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %559, ptr %8)
  %560 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %560, label %_llgo_4 [
    i8 0, label %_llgo_454
    i8 1, label %_llgo_5
  ]

_llgo_453:                                        ; preds = %_llgo_451
  br label %_llgo_449

_llgo_454:                                        ; preds = %_llgo_452
  br label %_llgo_449

_llgo_455:                                        ; preds = %_llgo_448
  %561 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %551)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %551)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %561)
  br label %_llgo_5

_llgo_456:                                        ; preds = %_llgo_448
  %562 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvt32to64$coro"(i32 2147483647, i64 2147483647)
  br label %_llgo_458

_llgo_457:                                        ; preds = %_llgo_458
  %563 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %562)
  br i1 %563, label %_llgo_464, label %_llgo_465

_llgo_458:                                        ; preds = %_llgo_463, %_llgo_462, %_llgo_456
  %564 = phi i1 [ true, %_llgo_456 ], [ false, %_llgo_460 ], [ false, %_llgo_461 ]
  %565 = call i1 @llvm.coro.done(ptr %562)
  br i1 %565, label %_llgo_457, label %_llgo_459

_llgo_459:                                        ; preds = %_llgo_458
  br i1 %564, label %_llgo_460, label %_llgo_461

_llgo_460:                                        ; preds = %_llgo_459
  %566 = call ptr @llvm.coro.promise(ptr %562, i32 8, i1 false)
  %567 = getelementptr inbounds { ptr }, ptr %566, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %567, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %562)
  %568 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %568, label %_llgo_4 [
    i8 0, label %_llgo_462
    i8 1, label %_llgo_5
  ]

_llgo_461:                                        ; preds = %_llgo_459
  %569 = call ptr @llvm.coro.promise(ptr %562, i32 8, i1 false)
  %570 = getelementptr inbounds { ptr }, ptr %569, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %570, ptr %8)
  %571 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %571, label %_llgo_4 [
    i8 0, label %_llgo_463
    i8 1, label %_llgo_5
  ]

_llgo_462:                                        ; preds = %_llgo_460
  br label %_llgo_458

_llgo_463:                                        ; preds = %_llgo_461
  br label %_llgo_458

_llgo_464:                                        ; preds = %_llgo_457
  %572 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %562)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %562)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %572)
  br label %_llgo_5

_llgo_465:                                        ; preds = %_llgo_457
  %573 = call ptr @"github.com/goplus/llgo/cl/_testrt/cast.cvtUinptr$coro"(i32 1024, i64 1024)
  br label %_llgo_467

_llgo_466:                                        ; preds = %_llgo_467
  %574 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %573)
  br i1 %574, label %_llgo_473, label %_llgo_474

_llgo_467:                                        ; preds = %_llgo_472, %_llgo_471, %_llgo_465
  %575 = phi i1 [ true, %_llgo_465 ], [ false, %_llgo_469 ], [ false, %_llgo_470 ]
  %576 = call i1 @llvm.coro.done(ptr %573)
  br i1 %576, label %_llgo_466, label %_llgo_468

_llgo_468:                                        ; preds = %_llgo_467
  br i1 %575, label %_llgo_469, label %_llgo_470

_llgo_469:                                        ; preds = %_llgo_468
  %577 = call ptr @llvm.coro.promise(ptr %573, i32 8, i1 false)
  %578 = getelementptr inbounds { ptr }, ptr %577, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %578, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %573)
  %579 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %579, label %_llgo_4 [
    i8 0, label %_llgo_471
    i8 1, label %_llgo_5
  ]

_llgo_470:                                        ; preds = %_llgo_468
  %580 = call ptr @llvm.coro.promise(ptr %573, i32 8, i1 false)
  %581 = getelementptr inbounds { ptr }, ptr %580, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %581, ptr %8)
  %582 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %582, label %_llgo_4 [
    i8 0, label %_llgo_472
    i8 1, label %_llgo_5
  ]

_llgo_471:                                        ; preds = %_llgo_469
  br label %_llgo_467

_llgo_472:                                        ; preds = %_llgo_470
  br label %_llgo_467

_llgo_473:                                        ; preds = %_llgo_466
  %583 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %573)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %573)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %583)
  br label %_llgo_5

_llgo_474:                                        ; preds = %_llgo_466
  br label %_llgo_5

_llgo_475:                                        ; preds = %_llgo_5
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
