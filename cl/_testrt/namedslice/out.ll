; ModuleID = 'github.com/goplus/llgo/cl/_testrt/namedslice'
source_filename = "github.com/goplus/llgo/cl/_testrt/namedslice"

%"github.com/goplus/llgo/runtime/abi.SliceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr, i1 }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/namedslice.init$guard" = global i1 false, align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/namedslice.MyBytes" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.SliceType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -429486748, i8 5, i8 8, i8 8, i8 23, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 12 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/namedslice.MyBytes" }, ptr @_llgo_uint8 }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 44 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@0 = private unnamed_addr constant [12 x i8] c"main.MyBytes", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/namedslice.MyBytes" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1016845880, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 12 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/namedslice.MyBytes" }, align 8
@_llgo_uint8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 269156761, i8 12, i8 1, i8 1, i8 40, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, ptr @"*_llgo_uint8" }, align 8
@1 = private unnamed_addr constant [4 x i8] c"byte", align 1
@"*_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1277858201, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, ptr null }, ptr @_llgo_uint8 }, align 8
@2 = private unnamed_addr constant [44 x i8] c"github.com/goplus/llgo/cl/_testrt/namedslice", align 1
@3 = private unnamed_addr constant [9 x i8] c"bad slice", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 6 }, ptr @"*_llgo_string" }, align 8
@4 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 6 }, ptr null }, ptr @_llgo_string }, align 8

define void @"github.com/goplus/llgo/cl/_testrt/namedslice.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/namedslice.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/namedslice.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/namedslice.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 0)
  %1 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %0, 0
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, i64 0, 1
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, i64 0, 2
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/namedslice.MyBytes", ptr undef }, ptr %4, 1
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %5, 0
  %7 = icmp eq ptr %6, @"_llgo_github.com/goplus/llgo/cl/_testrt/namedslice.MyBytes"
  br i1 %7, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 9 }, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %8, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %9)
  unreachable

_llgo_2:                                          ; preds = %_llgo_5
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %10 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %5, 1
  %11 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %10, align 8
  %12 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 0
  %13 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 } %12, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %14 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 } [ %13, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %15 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 } %14, 0
  %16 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 } %14, 1
  br i1 %16, label %_llgo_2, label %_llgo_1
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/namedslice.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_9
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 0)
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 0, 1
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 0, 2
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/namedslice.MyBytes", ptr undef }, ptr %8, 1
  %10 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, 0
  %11 = icmp eq ptr %10, @"_llgo_github.com/goplus/llgo/cl/_testrt/namedslice.MyBytes"
  br i1 %11, label %_llgo_10, label %_llgo_11

_llgo_2:                                          ; preds = %_llgo_12
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 9 }, ptr %12, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %12, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %13)
  br label %_llgo_7

_llgo_3:                                          ; preds = %_llgo_12
  br label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_0
  %14 = call i64 @llvm.coro.size.i64()
  %15 = call ptr @malloc(i64 %14)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %16 = phi ptr [ null, %_llgo_0 ], [ %15, %_llgo_4 ]
  %17 = call ptr @llvm.coro.begin(token %2, ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %18 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %18, label %_llgo_6 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_7
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7, %_llgo_5
  %19 = call i1 @llvm.coro.end(ptr %17, i1 false, token none)
  ret ptr %17

_llgo_7:                                          ; preds = %_llgo_2, %_llgo_3, %_llgo_5
  %20 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %20, label %_llgo_6 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_13, %_llgo_7
  %21 = call ptr @llvm.coro.free(token %2, ptr %17)
  call void @free(ptr %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_5
  br label %_llgo_1

_llgo_10:                                         ; preds = %_llgo_1
  %22 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, 1
  %23 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %22, align 8
  %24 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, 0
  %25 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 } %24, i1 true, 1
  br label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_1
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %26 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 } [ %25, %_llgo_10 ], [ zeroinitializer, %_llgo_11 ]
  %27 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 } %26, 0
  %28 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 } %26, 1
  br i1 %28, label %_llgo_3, label %_llgo_2

_llgo_13:                                         ; preds = %_llgo_7
  br label %_llgo_8
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

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

attributes #0 = { presplitcoroutine }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nounwind }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nounwind memory(argmem: read) }
