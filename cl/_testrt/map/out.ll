; ModuleID = 'github.com/goplus/llgo/cl/_testrt/map'
source_filename = "github.com/goplus/llgo/cl/_testrt/map"

%"github.com/goplus/llgo/runtime/abi.MapType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, ptr, ptr, { ptr, ptr, i1 }, i8, i8, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr, i1 }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.ArrayType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.SliceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }

@"github.com/goplus/llgo/cl/_testrt/map.init$guard" = global i1 false, align 1
@"map[_llgo_int]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1234063919, i8 0, i8 8, i8 8, i8 53, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 11 }, ptr @"*map[_llgo_int]_llgo_int" }, ptr @_llgo_int, ptr @_llgo_int, ptr @"github.com/goplus/llgo/cl/_testrt/map.struct$RSTTp_pTKglBmcdy0CMmgLp9HSGRvgD8UwNIoMFFyOg", { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehash", ptr @_llgo_int, i1 undef }, i8 8, i8 8, i16 144, i32 4 }, align 8
@0 = private unnamed_addr constant [11 x i8] c"map[int]int", align 1
@"*map[_llgo_int]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2028436283, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 11 }, ptr null }, ptr @"map[_llgo_int]_llgo_int" }, align 8
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 3 }, ptr @"*_llgo_int" }, align 8
@1 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"github.com/goplus/llgo/cl/_testrt/map.struct$RSTTp_pTKglBmcdy0CMmgLp9HSGRvgD8UwNIoMFFyOg" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 144, i64 0, i32 1251276052, i8 8, i8 8, i8 8, i8 25, { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"github.com/goplus/llgo/cl/_testrt/map.struct$RSTTp_pTKglBmcdy0CMmgLp9HSGRvgD8UwNIoMFFyOg", i1 undef }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 72 }, ptr @"*github.com/goplus/llgo/cl/_testrt/map.struct$RSTTp_pTKglBmcdy0CMmgLp9HSGRvgD8UwNIoMFFyOg" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/map.struct$RSTTp_pTKglBmcdy0CMmgLp9HSGRvgD8UwNIoMFFyOg$fields", i64 4, i64 4 } }, align 8
@2 = private unnamed_addr constant [72 x i8] c"struct { topbits [8]uint8; keys [8]int; elems [8]int; overflow uintptr }", align 1
@"*github.com/goplus/llgo/cl/_testrt/map.struct$RSTTp_pTKglBmcdy0CMmgLp9HSGRvgD8UwNIoMFFyOg" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1978801512, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 72 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testrt/map.struct$RSTTp_pTKglBmcdy0CMmgLp9HSGRvgD8UwNIoMFFyOg" }, align 8
@3 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@"[8]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 307038632, i8 8, i8 1, i8 1, i8 17, { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_uint8", i1 undef }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 8 }, ptr @"*[8]_llgo_uint8" }, ptr @_llgo_uint8, ptr @"[]_llgo_uint8", i64 8 }, align 8
@4 = private unnamed_addr constant [8 x i8] c"[8]uint8", align 1
@"*[8]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -566230779, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 8 }, ptr null }, ptr @"[8]_llgo_uint8" }, align 8
@_llgo_uint8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 269156761, i8 12, i8 1, i8 1, i8 40, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr @"*_llgo_uint8" }, align 8
@5 = private unnamed_addr constant [5 x i8] c"uint8", align 1
@"*_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1277858201, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr null }, ptr @_llgo_uint8 }, align 8
@"[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 370346748, i8 0, i8 8, i8 8, i8 23, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 7 }, ptr @"*[]_llgo_uint8" }, ptr @_llgo_uint8 }, align 8
@6 = private unnamed_addr constant [7 x i8] c"[]uint8", align 1
@"*[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2143776929, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 7 }, ptr null }, ptr @"[]_llgo_uint8" }, align 8
@7 = private unnamed_addr constant [4 x i8] c"keys", align 1
@"[8]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 0, i32 -1310855284, i8 8, i8 8, i8 8, i8 17, { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_int", i1 undef }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr @"*[8]_llgo_int" }, ptr @_llgo_int, ptr @"[]_llgo_int", i64 8 }, align 8
@8 = private unnamed_addr constant [6 x i8] c"[8]int", align 1
@"*[8]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1841254256, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr null }, ptr @"[8]_llgo_int" }, align 8
@"[]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -1129561019, i8 0, i8 8, i8 8, i8 23, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"*[]_llgo_int" }, ptr @_llgo_int }, align 8
@9 = private unnamed_addr constant [5 x i8] c"[]int", align 1
@"*[]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1428175521, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr null }, ptr @"[]_llgo_int" }, align 8
@10 = private unnamed_addr constant [5 x i8] c"elems", align 1
@11 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@_llgo_uintptr = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 1268343028, i8 12, i8 8, i8 8, i8 44, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 7 }, ptr @"*_llgo_uintptr" }, align 8
@12 = private unnamed_addr constant [7 x i8] c"uintptr", align 1
@"*_llgo_uintptr" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1684891952, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 7 }, ptr null }, ptr @_llgo_uintptr }, align 8
@"github.com/goplus/llgo/cl/_testrt/map.struct$RSTTp_pTKglBmcdy0CMmgLp9HSGRvgD8UwNIoMFFyOg$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, ptr @"[8]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 }, ptr @"[8]_llgo_int", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr @"[8]_llgo_int", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 8 }, ptr @_llgo_uintptr, i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@13 = private unnamed_addr constant [10 x i8] c"Hello %d\0A\00", align 1
@14 = private unnamed_addr constant [10 x i8] c"Hello %d\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testrt/map.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/map.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/map.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/map.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_int]_llgo_int", i64 2)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 23, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_int]_llgo_int", ptr %0, ptr %1)
  store i64 100, ptr %2, align 4
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 7, ptr %3, align 4
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_int]_llgo_int", ptr %0, ptr %3)
  store i64 29, ptr %4, align 4
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 23, ptr %5, align 4
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr @"map[_llgo_int]_llgo_int", ptr %0, ptr %5)
  %7 = load i64, ptr %6, align 4
  %8 = call i32 (ptr, ...) @printf(ptr @13, i64 %7)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/map.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_int]_llgo_int", i64 2)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 23, ptr %5, align 4
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_int]_llgo_int", ptr %4, ptr %5)
  store i64 100, ptr %6, align 4
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 7, ptr %7, align 4
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_int]_llgo_int", ptr %4, ptr %7)
  store i64 29, ptr %8, align 4
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 23, ptr %9, align 4
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr @"map[_llgo_int]_llgo_int", ptr %4, ptr %9)
  %11 = load i64, ptr %10, align 4
  %12 = call i32 (ptr, ...) @printf(ptr @14, i64 %11)
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %13 = call i64 @llvm.coro.size.i64()
  %14 = call ptr @malloc(i64 %13)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %15 = phi ptr [ null, %_llgo_0 ], [ %14, %_llgo_2 ]
  %16 = call ptr @llvm.coro.begin(token %2, ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %17 = call i1 @llvm.coro.end(ptr %16, i1 false, token none)
  ret ptr %16

_llgo_5:                                          ; preds = %_llgo_1
  %18 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %18)
  %19 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %19, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %20 = call ptr @llvm.coro.free(token %2, ptr %16)
  call void @free(ptr %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.typehash"(ptr, ptr, i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr, ptr, ptr)

declare i32 @printf(ptr, ...)

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

attributes #0 = { presplitcoroutine }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nounwind }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nounwind memory(argmem: read) }
