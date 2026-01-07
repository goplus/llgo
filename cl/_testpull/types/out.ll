; ModuleID = 'github.com/goplus/llgo/cl/_testpull/types'
source_filename = "github.com/goplus/llgo/cl/_testpull/types"

%"github.com/goplus/llgo/runtime/abi.MapType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, ptr, ptr, { ptr, ptr }, i8, i8, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.ArrayType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.SliceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" = type { i1, %"github.com/goplus/llgo/async.Tuple2[int,int]" }
%"github.com/goplus/llgo/async.Tuple2[int,int]" = type { i64, i64 }
%"github.com/goplus/llgo/async.AsyncFuture[int]" = type { { ptr, ptr }, i1, i1, i64 }
%"github.com/goplus/llgo/async.Poll[int]" = type { i1, i64 }
%"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" = type { i1, %"github.com/goplus/llgo/async.Result[int]" }
%"github.com/goplus/llgo/async.Result[int]" = type { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testpull/types.Point" = type { i64, i64 }

@"map[_llgo_string]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1641501154, i8 0, i8 8, i8 8, i8 53, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 14 }, ptr @"*map[_llgo_string]_llgo_int" }, ptr @_llgo_string, ptr @_llgo_int, ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc", { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehash", ptr @_llgo_string }, i8 16, i8 8, i16 208, i32 12 }, align 8
@0 = private unnamed_addr constant [14 x i8] c"map[string]int", align 1
@"*map[_llgo_string]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 762774621, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 14 }, ptr null }, ptr @"map[_llgo_string]_llgo_int" }, align 8
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr @"*_llgo_string" }, align 8
@1 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 3 }, ptr @"*_llgo_int" }, align 8
@2 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 208, i64 208, i32 -2085301039, i8 0, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 82 }, ptr @"*github.com/goplus/llgo/cl/_testpull/types.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc$fields", i64 4, i64 4 } }, align 8
@3 = private unnamed_addr constant [82 x i8] c"struct { topbits [8]uint8; keys [8]string; elems [8]int; overflow unsafe.Pointer }", align 1
@"*github.com/goplus/llgo/cl/_testpull/types.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 3417020, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 82 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" }, align 8
@4 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@"[8]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 307038632, i8 8, i8 1, i8 1, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_uint8" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 8 }, ptr @"*[8]_llgo_uint8" }, ptr @_llgo_uint8, ptr @"[]_llgo_uint8", i64 8 }, align 8
@5 = private unnamed_addr constant [8 x i8] c"[8]uint8", align 1
@"*[8]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -566230779, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 8 }, ptr null }, ptr @"[8]_llgo_uint8" }, align 8
@_llgo_uint8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 269156761, i8 12, i8 1, i8 1, i8 40, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr @"*_llgo_uint8" }, align 8
@6 = private unnamed_addr constant [5 x i8] c"uint8", align 1
@"*_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1277858201, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr null }, ptr @_llgo_uint8 }, align 8
@"[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 370346748, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 7 }, ptr @"*[]_llgo_uint8" }, ptr @_llgo_uint8 }, align 8
@7 = private unnamed_addr constant [7 x i8] c"[]uint8", align 1
@"*[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2143776929, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 7 }, ptr null }, ptr @"[]_llgo_uint8" }, align 8
@8 = private unnamed_addr constant [4 x i8] c"keys", align 1
@"[8]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 128, i64 120, i32 460245566, i8 0, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_string" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 9 }, ptr @"*[8]_llgo_string" }, ptr @_llgo_string, ptr @"[]_llgo_string", i64 8 }, align 8
@9 = private unnamed_addr constant [9 x i8] c"[8]string", align 1
@"*[8]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 368026044, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 9 }, ptr null }, ptr @"[8]_llgo_string" }, align 8
@"[]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 608974920, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 8 }, ptr @"*[]_llgo_string" }, ptr @_llgo_string }, align 8
@10 = private unnamed_addr constant [8 x i8] c"[]string", align 1
@"*[]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -157880218, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 8 }, ptr null }, ptr @"[]_llgo_string" }, align 8
@11 = private unnamed_addr constant [5 x i8] c"elems", align 1
@"[8]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 0, i32 -1310855284, i8 8, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_int" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 6 }, ptr @"*[8]_llgo_int" }, ptr @_llgo_int, ptr @"[]_llgo_int", i64 8 }, align 8
@12 = private unnamed_addr constant [6 x i8] c"[8]int", align 1
@"*[8]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1841254256, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 6 }, ptr null }, ptr @"[8]_llgo_int" }, align 8
@"[]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -1129561019, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 5 }, ptr @"*[]_llgo_int" }, ptr @_llgo_int }, align 8
@13 = private unnamed_addr constant [5 x i8] c"[]int", align 1
@"*[]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1428175521, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 5 }, ptr null }, ptr @"[]_llgo_int" }, align 8
@14 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@15 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 }, ptr @"[8]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 4 }, ptr @"[8]_llgo_string", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 5 }, ptr @"[8]_llgo_int", i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 8 }, ptr @_llgo_Pointer, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/types.init$guard" = global i1 false, align 1

define %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" @"github.com/goplus/llgo/cl/_testpull/types.Divmod$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_4 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %13 = load i64, ptr %12, align 4
  %14 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 6
  %15 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %14, i32 0, i32 0
  %16 = getelementptr inbounds { ptr, ptr }, ptr %15, i32 0, i32 0
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %_llgo_5, label %_llgo_6

_llgo_2:                                          ; preds = %_llgo_7, %_llgo_0
  %19 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %24 = load i64, ptr %23, align 4
  %25 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %28 = load i64, ptr %27, align 4
  %29 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 7
  %30 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %29, i32 0, i32 0
  %31 = getelementptr inbounds { ptr, ptr }, ptr %30, i32 0, i32 0
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %_llgo_9, label %_llgo_10

_llgo_3:                                          ; preds = %_llgo_11, %_llgo_0
  %34 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %35 = load i64, ptr %34, align 4
  %36 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %39 = load i64, ptr %38, align 4
  %40 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %41 = load i64, ptr %40, align 4
  %42 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %43 = load i64, ptr %42, align 4
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" zeroinitializer

_llgo_4:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" zeroinitializer

_llgo_5:                                          ; preds = %_llgo_1
  %44 = sdiv i64 %9, %11
  %45 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %44)
  %46 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %45, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %46, ptr %14, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_1
  %47 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %14, ptr %1)
  %48 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %47, ptr %48, align 4
  %49 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %48, i32 0, i32 0
  %50 = load i1, ptr %49, align 1
  br i1 %50, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %51 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %48, i32 0, i32 1
  %52 = load i64, ptr %51, align 4
  %53 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  store i64 %52, ptr %53, align 4
  %54 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %54, align 1
  br label %_llgo_2

_llgo_8:                                          ; preds = %_llgo_6
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" zeroinitializer

_llgo_9:                                          ; preds = %_llgo_2
  %55 = srem i64 %24, %26
  %56 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %55)
  %57 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %56, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %57, ptr %29, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_2
  %58 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %29, ptr %1)
  %59 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %58, ptr %59, align 4
  %60 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %59, i32 0, i32 0
  %61 = load i1, ptr %60, align 1
  br i1 %61, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %62 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %59, i32 0, i32 1
  %63 = load i64, ptr %62, align 4
  %64 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %64, align 1
  br label %_llgo_3

_llgo_12:                                         ; preds = %_llgo_10
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt$1", ptr undef }, ptr %2, 1
  %5 = call ptr @"github.com/goplus/llgo/async.Async[int]"({ ptr, ptr } %4)
  ret ptr %5
}

define void @"github.com/goplus/llgo/cl/_testpull/types.StepInt$1"(ptr %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load i64, ptr %3, align 4
  %5 = extractvalue { ptr, ptr } %1, 1
  %6 = extractvalue { ptr, ptr } %1, 0
  call void %6(ptr %5, i64 %4)
  ret void
}

declare %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr, ptr)

define ptr @"github.com/goplus/llgo/cl/_testpull/types.Divmod"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 64)
  %3 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, ptr, ptr }, ptr %2, i32 0, i32 0
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, ptr, ptr }, ptr %2, i32 0, i32 1
  store i64 %0, ptr %4, align 4
  %5 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, ptr, ptr }, ptr %2, i32 0, i32 2
  store i64 %1, ptr %5, align 4
  %6 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, ptr, ptr }, ptr %2, i32 0, i32 3
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, ptr, ptr }, ptr %2, i32 0, i32 4
  store i64 0, ptr %7, align 4
  %8 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, ptr, ptr }, ptr %2, i32 0, i32 5
  store i64 0, ptr %8, align 4
  %9 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, ptr, ptr }, ptr %2, i32 0, i32 6
  store ptr null, ptr %9, align 8
  %10 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, ptr, ptr }, ptr %2, i32 0, i32 7
  store ptr null, ptr %10, align 8
  ret ptr %2
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" @"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_6 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds { i8, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds { i8, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds { i8, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds { i8, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %13 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %12, i32 0, i32 0
  %14 = getelementptr inbounds { ptr, ptr }, ptr %13, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %_llgo_7, label %_llgo_8

_llgo_2:                                          ; preds = %_llgo_9, %_llgo_0
  %17 = getelementptr inbounds { i8, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds { i8, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds { i8, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds { i8, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %24 = load i64, ptr %23, align 4
  %25 = getelementptr inbounds { i8, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 6
  %26 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %25, i32 0, i32 0
  %27 = getelementptr inbounds { ptr, ptr }, ptr %26, i32 0, i32 0
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %_llgo_11, label %_llgo_12

_llgo_3:                                          ; preds = %_llgo_13, %_llgo_0
  %30 = getelementptr inbounds { i8, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %31 = load i64, ptr %30, align 4
  %32 = getelementptr inbounds { i8, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %33 = load i64, ptr %32, align 4
  %34 = getelementptr inbounds { i8, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %35 = load i64, ptr %34, align 4
  %36 = getelementptr inbounds { i8, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds { i8, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %38, align 1
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_0
  %39 = getelementptr inbounds { i8, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %40 = load i64, ptr %39, align 4
  %41 = getelementptr inbounds { i8, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %42 = load i64, ptr %41, align 4
  %43 = getelementptr inbounds { i8, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %44 = load i64, ptr %43, align 4
  %45 = getelementptr inbounds { i8, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %46 = load i64, ptr %45, align 4
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" zeroinitializer

_llgo_5:                                          ; preds = %_llgo_0
  %47 = getelementptr inbounds { i8, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %48 = load i64, ptr %47, align 4
  %49 = getelementptr inbounds { i8, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %50 = load i64, ptr %49, align 4
  %51 = getelementptr inbounds { i8, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %52 = load i64, ptr %51, align 4
  %53 = getelementptr inbounds { i8, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %54 = load i64, ptr %53, align 4
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" zeroinitializer

_llgo_6:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" zeroinitializer

_llgo_7:                                          ; preds = %_llgo_1
  %55 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %5)
  %56 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %55, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %56, ptr %12, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_1
  %57 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %12, ptr %1)
  %58 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %57, ptr %58, align 4
  %59 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %58, i32 0, i32 0
  %60 = load i1, ptr %59, align 1
  br i1 %60, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %58, i32 0, i32 1
  %62 = load i64, ptr %61, align 4
  %63 = getelementptr inbounds { i8, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  store i64 %62, ptr %63, align 4
  %64 = getelementptr inbounds { i8, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %64, align 1
  br label %_llgo_2

_llgo_10:                                         ; preds = %_llgo_8
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" zeroinitializer

_llgo_11:                                         ; preds = %_llgo_2
  %65 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %22)
  %66 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %65, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %66, ptr %25, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_2
  %67 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %25, ptr %1)
  %68 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %67, ptr %68, align 4
  %69 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %68, i32 0, i32 0
  %70 = load i1, ptr %69, align 1
  br i1 %70, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %71 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %68, i32 0, i32 1
  %72 = load i64, ptr %71, align 4
  %73 = getelementptr inbounds { i8, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %73, align 1
  br label %_llgo_3

_llgo_14:                                         ; preds = %_llgo_12
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/types.GetMinMax"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 56)
  %3 = getelementptr inbounds { i8, i64, i64, i64, i64, ptr, ptr }, ptr %2, i32 0, i32 0
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds { i8, i64, i64, i64, i64, ptr, ptr }, ptr %2, i32 0, i32 1
  store i64 %0, ptr %4, align 4
  %5 = getelementptr inbounds { i8, i64, i64, i64, i64, ptr, ptr }, ptr %2, i32 0, i32 2
  store i64 %1, ptr %5, align 4
  %6 = getelementptr inbounds { i8, i64, i64, i64, i64, ptr, ptr }, ptr %2, i32 0, i32 3
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds { i8, i64, i64, i64, i64, ptr, ptr }, ptr %2, i32 0, i32 4
  store i64 0, ptr %7, align 4
  %8 = getelementptr inbounds { i8, i64, i64, i64, i64, ptr, ptr }, ptr %2, i32 0, i32 5
  store ptr null, ptr %8, align 8
  %9 = getelementptr inbounds { i8, i64, i64, i64, i64, ptr, ptr }, ptr %2, i32 0, i32 6
  store ptr null, ptr %9, align 8
  ret ptr %2
}

define %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" @"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_5 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %7 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %6, align 8
  %8 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %8, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %9 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %12 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %11, align 8
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" zeroinitializer

_llgo_3:                                          ; preds = %_llgo_0
  %13 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %16 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %15, align 8
  %17 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %18 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %17, i32 0, i32 0
  %19 = getelementptr inbounds { ptr, ptr }, ptr %18, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %_llgo_6, label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_8, %_llgo_0
  %22 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %25 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %24, align 8
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" zeroinitializer

_llgo_5:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" zeroinitializer

_llgo_6:                                          ; preds = %_llgo_3
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %16, ptr %26, align 8
  %27 = call { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr @"map[_llgo_string]_llgo_int", ptr %14, ptr %26)
  %28 = extractvalue { ptr, i1 } %27, 0
  %29 = load i64, ptr %28, align 4
  %30 = extractvalue { ptr, i1 } %27, 1
  %31 = insertvalue { i64, i1 } undef, i64 %29, 0
  %32 = insertvalue { i64, i1 } %31, i1 %30, 1
  %33 = extractvalue { i64, i1 } %32, 0
  %34 = mul i64 %33, 2
  %35 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %34)
  %36 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %35, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %36, ptr %17, align 8
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_3
  %37 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %17, ptr %1)
  %38 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %37, ptr %38, align 4
  %39 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %38, i32 0, i32 0
  %40 = load i1, ptr %39, align 1
  br i1 %40, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  %41 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %38, i32 0, i32 1
  %42 = load i64, ptr %41, align 4
  %43 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %43, align 1
  br label %_llgo_4

_llgo_9:                                          ; preds = %_llgo_7
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" zeroinitializer
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.typehash"(ptr, ptr, i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

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

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr, ptr, ptr)

define ptr @"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %3 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }, ptr %2, i32 0, i32 0
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }, ptr %2, i32 0, i32 1
  store ptr %0, ptr %4, align 8
  %5 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }, ptr %2, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %1, ptr %5, align 8
  %6 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }, ptr %2, i32 0, i32 3
  store ptr null, ptr %6, align 8
  ret ptr %2
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/types.MapParam$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_5 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %7 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %6, align 8
  %8 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %8, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %9 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %12 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %11, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_3:                                          ; preds = %_llgo_0
  %13 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %16 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %15, align 8
  %17 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %18 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %17, i32 0, i32 0
  %19 = getelementptr inbounds { ptr, ptr }, ptr %18, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %_llgo_6, label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_8, %_llgo_0
  %22 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %25 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %24, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_5:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_6:                                          ; preds = %_llgo_3
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %16, ptr %26, align 8
  %27 = call { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr @"map[_llgo_string]_llgo_int", ptr %14, ptr %26)
  %28 = extractvalue { ptr, i1 } %27, 0
  %29 = load i64, ptr %28, align 4
  %30 = extractvalue { ptr, i1 } %27, 1
  %31 = insertvalue { i64, i1 } undef, i64 %29, 0
  %32 = insertvalue { i64, i1 } %31, i1 %30, 1
  %33 = extractvalue { i64, i1 } %32, 0
  %34 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %33)
  %35 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %34, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %35, ptr %17, align 8
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_3
  %36 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %17, ptr %1)
  %37 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %36, ptr %37, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %37, i32 0, i32 0
  %39 = load i1, ptr %38, align 1
  br i1 %39, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  %40 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %37, i32 0, i32 1
  %41 = load i64, ptr %40, align 4
  %42 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %42, align 1
  br label %_llgo_4

_llgo_9:                                          ; preds = %_llgo_7
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/types.MapParam"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %3 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }, ptr %2, i32 0, i32 0
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }, ptr %2, i32 0, i32 1
  store ptr %0, ptr %4, align 8
  %5 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }, ptr %2, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %1, ptr %5, align 8
  %6 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }, ptr %2, i32 0, i32 3
  store ptr null, ptr %6, align 8
  ret ptr %2
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/types.PointerParam$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_5 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %6, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %7 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_3:                                          ; preds = %_llgo_0
  %9 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %12 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %11, i32 0, i32 0
  %13 = getelementptr inbounds { ptr, ptr }, ptr %12, i32 0, i32 0
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %_llgo_6, label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_8, %_llgo_0
  %16 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_5:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_6:                                          ; preds = %_llgo_3
  %18 = load i64, ptr %10, align 4
  %19 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %18)
  %20 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %19, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %20, ptr %11, align 8
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_3
  %21 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %11, ptr %1)
  %22 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %21, ptr %22, align 4
  %23 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %22, i32 0, i32 0
  %24 = load i1, ptr %23, align 1
  br i1 %24, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  %25 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %22, i32 0, i32 1
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds { i8, ptr, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %27, align 1
  br label %_llgo_4

_llgo_9:                                          ; preds = %_llgo_7
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/types.PointerParam"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %2 = getelementptr inbounds { i8, ptr, ptr }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, ptr, ptr }, ptr %1, i32 0, i32 1
  store ptr %0, ptr %3, align 8
  %4 = getelementptr inbounds { i8, ptr, ptr }, ptr %1, i32 0, i32 2
  store ptr null, ptr %4, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" @"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_5 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %8, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %9 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %12 = load i64, ptr %11, align 4
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" zeroinitializer

_llgo_3:                                          ; preds = %_llgo_0
  %13 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %14 = load i64, ptr %13, align 4
  %15 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %18 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %17, i32 0, i32 0
  %19 = getelementptr inbounds { ptr, ptr }, ptr %18, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %_llgo_6, label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_8, %_llgo_0
  %22 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %23 = load i64, ptr %22, align 4
  %24 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %25 = load i64, ptr %24, align 4
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" zeroinitializer

_llgo_5:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" zeroinitializer

_llgo_6:                                          ; preds = %_llgo_3
  %26 = sdiv i64 %14, %16
  %27 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %26)
  %28 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %27, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %28, ptr %17, align 8
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_3
  %29 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %17, ptr %1)
  %30 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %29, ptr %30, align 4
  %31 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %30, i32 0, i32 0
  %32 = load i1, ptr %31, align 1
  br i1 %32, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  %33 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %30, i32 0, i32 1
  %34 = load i64, ptr %33, align 4
  %35 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %35, align 1
  br label %_llgo_4

_llgo_9:                                          ; preds = %_llgo_7
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/types.SafeDivide"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %3 = getelementptr inbounds { i8, i64, i64, ptr }, ptr %2, i32 0, i32 0
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds { i8, i64, i64, ptr }, ptr %2, i32 0, i32 1
  store i64 %0, ptr %4, align 4
  %5 = getelementptr inbounds { i8, i64, i64, ptr }, ptr %2, i32 0, i32 2
  store i64 %1, ptr %5, align 4
  %6 = getelementptr inbounds { i8, i64, i64, ptr }, ptr %2, i32 0, i32 3
  store ptr null, ptr %6, align 8
  ret ptr %2
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/types.SliceParam$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_6 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %5 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %4, align 8
  %6 = getelementptr inbounds { i8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds { i8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %8, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %9 = getelementptr inbounds { i8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %10 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %9, align 8
  %11 = getelementptr inbounds { i8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds { i8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %13, align 1
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %14 = getelementptr inbounds { i8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %15 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %14, align 8
  %16 = getelementptr inbounds { i8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds { i8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %19 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %18, i32 0, i32 0
  %20 = getelementptr inbounds { ptr, ptr }, ptr %19, i32 0, i32 0
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %_llgo_7, label %_llgo_8

_llgo_4:                                          ; preds = %_llgo_9, %_llgo_0
  %23 = getelementptr inbounds { i8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %24 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %23, align 8
  %25 = getelementptr inbounds { i8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds { i8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 4, ptr %27, align 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %28 = getelementptr inbounds { i8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %29 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %28, align 8
  %30 = getelementptr inbounds { i8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %31 = load i64, ptr %30, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_6:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_7:                                          ; preds = %_llgo_3
  %32 = phi i64 
  %33 = add i64 %32, 1
  %34 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, 0
  %35 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, 1
  %36 = icmp slt i64 %33, 0
  %37 = icmp sge i64 %33, %35
  %38 = or i1 %37, %36
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %38)
  %39 = getelementptr inbounds i64, ptr %34, i64 %33
  %40 = load i64, ptr %39, align 4
  %41 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %40)
  %42 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %41, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %42, ptr %18, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_3
  %43 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %18, ptr %1)
  %44 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %43, ptr %44, align 4
  %45 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %44, i32 0, i32 0
  %46 = load i1, ptr %45, align 1
  br i1 %46, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %47 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %44, i32 0, i32 1
  %48 = load i64, ptr %47, align 4
  %49 = getelementptr inbounds { i8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %49, align 1
  br label %_llgo_4

_llgo_10:                                         ; preds = %_llgo_8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

define ptr @"github.com/goplus/llgo/cl/_testpull/types.SliceParam"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 48)
  %2 = getelementptr inbounds { i8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i64, ptr }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i64, ptr }, ptr %1, i32 0, i32 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, ptr %3, align 8
  %4 = getelementptr inbounds { i8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i64, ptr }, ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds { i8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i64, ptr }, ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/types.StringParam$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_3 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %5 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %4, align 8
  %6 = getelementptr inbounds { i8, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %7 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds { ptr, ptr }, ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6, %_llgo_0
  %11 = getelementptr inbounds { i8, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %12 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %11, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_3:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_4:                                          ; preds = %_llgo_1
  %13 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %5, 1
  %14 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %13)
  %15 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %14, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %15, ptr %6, align 8
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_1
  %16 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %6, ptr %1)
  %17 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %16, ptr %17, align 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %17, i32 0, i32 0
  %19 = load i1, ptr %18, align 1
  br i1 %19, label %_llgo_6, label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_5
  %20 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %17, i32 0, i32 1
  %21 = load i64, ptr %20, align 4
  %22 = getelementptr inbounds { i8, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %22, align 1
  br label %_llgo_2

_llgo_7:                                          ; preds = %_llgo_5
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/types.StringParam"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %2 = getelementptr inbounds { i8, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }, ptr %1, i32 0, i32 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %0, ptr %3, align 8
  %4 = getelementptr inbounds { i8, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }, ptr %1, i32 0, i32 2
  store ptr null, ptr %4, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_4 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %5 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %4, align 4
  %6 = getelementptr inbounds { i8, %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds { i8, %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds { i8, %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %10, i32 0, i32 0
  %12 = getelementptr inbounds { ptr, ptr }, ptr %11, i32 0, i32 0
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %_llgo_5, label %_llgo_6

_llgo_2:                                          ; preds = %_llgo_7, %_llgo_0
  %15 = getelementptr inbounds { i8, %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %16 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %15, align 4
  %17 = getelementptr inbounds { i8, %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds { i8, %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds { i8, %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %22 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %21, i32 0, i32 0
  %23 = getelementptr inbounds { ptr, ptr }, ptr %22, i32 0, i32 0
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %_llgo_9, label %_llgo_10

_llgo_3:                                          ; preds = %_llgo_11, %_llgo_0
  %26 = getelementptr inbounds { i8, %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %27 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %26, align 4
  %28 = getelementptr inbounds { i8, %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds { i8, %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %31 = load i64, ptr %30, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_4:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_5:                                          ; preds = %_llgo_1
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %7, i32 0, i32 0
  %33 = load i64, ptr %32, align 4
  %34 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %33)
  %35 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %34, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %35, ptr %10, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_1
  %36 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %10, ptr %1)
  %37 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %36, ptr %37, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %37, i32 0, i32 0
  %39 = load i1, ptr %38, align 1
  br i1 %39, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %40 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %37, i32 0, i32 1
  %41 = load i64, ptr %40, align 4
  %42 = getelementptr inbounds { i8, %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  store i64 %41, ptr %42, align 4
  %43 = getelementptr inbounds { i8, %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %43, align 1
  br label %_llgo_2

_llgo_8:                                          ; preds = %_llgo_6
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_9:                                          ; preds = %_llgo_2
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %18, i32 0, i32 1
  %45 = load i64, ptr %44, align 4
  %46 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %45)
  %47 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %46, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %47, ptr %21, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_2
  %48 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %21, ptr %1)
  %49 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %48, ptr %49, align 4
  %50 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %49, i32 0, i32 0
  %51 = load i1, ptr %50, align 1
  br i1 %51, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %52 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %49, i32 0, i32 1
  %53 = load i64, ptr %52, align 4
  %54 = getelementptr inbounds { i8, %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %54, align 1
  br label %_llgo_3

_llgo_12:                                         ; preds = %_llgo_10
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess"(%"github.com/goplus/llgo/cl/_testpull/types.Point" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 56)
  %2 = getelementptr inbounds { i8, %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr, i64, ptr, ptr }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr, i64, ptr, ptr }, ptr %1, i32 0, i32 1
  store %"github.com/goplus/llgo/cl/_testpull/types.Point" %0, ptr %3, align 4
  %4 = getelementptr inbounds { i8, %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr, i64, ptr, ptr }, ptr %1, i32 0, i32 2
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds { i8, %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr, i64, ptr, ptr }, ptr %1, i32 0, i32 3
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds { i8, %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr, i64, ptr, ptr }, ptr %1, i32 0, i32 4
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds { i8, %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr, i64, ptr, ptr }, ptr %1, i32 0, i32 5
  store ptr null, ptr %7, align 8
  ret ptr %1
}

define void @"github.com/goplus/llgo/cl/_testpull/types.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testpull/types.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testpull/types.init$guard", align 1
  call void @"github.com/goplus/llgo/async.init"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define linkonce ptr @"github.com/goplus/llgo/async.Async[int]"({ ptr, ptr } %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %1, i32 0, i32 0
  store { ptr, ptr } %0, ptr %2, align 8
  ret ptr %1
}

declare void @"github.com/goplus/llgo/async.init"()
