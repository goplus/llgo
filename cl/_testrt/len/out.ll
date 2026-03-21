; ModuleID = 'github.com/goplus/llgo/cl/_testrt/len'
source_filename = "github.com/goplus/llgo/cl/_testrt/len"

%"github.com/goplus/llgo/runtime/abi.MapType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, ptr, ptr, { ptr, ptr }, i8, i8, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.ArrayType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.SliceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/cl/_testrt/len.data" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }

@"github.com/goplus/llgo/cl/_testrt/len.init$guard" = global i1 false, align 1
@"map[_llgo_int]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2084636366, i8 0, i8 8, i8 8, i8 53, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 14 }, ptr @"*map[_llgo_int]_llgo_string" }, ptr @_llgo_int, ptr @_llgo_string, ptr @"github.com/goplus/llgo/cl/_testrt/len.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ", { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehash", ptr @_llgo_int }, i8 8, i8 16, i16 208, i32 4 }, align 8
@0 = private unnamed_addr constant [14 x i8] c"map[int]string", align 1
@"*map[_llgo_int]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 668541983, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 14 }, ptr null }, ptr @"map[_llgo_int]_llgo_string" }, align 8
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 2, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 3 }, ptr @"*_llgo_int" }, align 8
@1 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr @"*_llgo_string" }, align 8
@2 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"github.com/goplus/llgo/cl/_testrt/len.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 208, i64 208, i32 122549684, i8 0, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"github.com/goplus/llgo/cl/_testrt/len.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 82 }, ptr @"*github.com/goplus/llgo/cl/_testrt/len.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/len.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ$fields", i64 4, i64 4 } }, align 8
@3 = private unnamed_addr constant [82 x i8] c"struct { topbits [8]uint8; keys [8]int; elems [8]string; overflow unsafe.Pointer }", align 1
@"*github.com/goplus/llgo/cl/_testrt/len.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1370513638, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 82 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testrt/len.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" }, align 8
@4 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@"[8]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 307038632, i8 8, i8 1, i8 1, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_uint8" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 8 }, ptr @"*[8]_llgo_uint8" }, ptr @_llgo_uint8, ptr @"[]_llgo_uint8", i64 8 }, align 8
@5 = private unnamed_addr constant [8 x i8] c"[8]uint8", align 1
@"*[8]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -566230779, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 8 }, ptr null }, ptr @"[8]_llgo_uint8" }, align 8
@_llgo_uint8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 269156761, i8 12, i8 1, i8 1, i8 8, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr @"*_llgo_uint8" }, align 8
@6 = private unnamed_addr constant [5 x i8] c"uint8", align 1
@"*_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1277858201, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr null }, ptr @_llgo_uint8 }, align 8
@"[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 370346748, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 7 }, ptr @"*[]_llgo_uint8" }, ptr @_llgo_uint8 }, align 8
@7 = private unnamed_addr constant [7 x i8] c"[]uint8", align 1
@"*[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2143776929, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 7 }, ptr null }, ptr @"[]_llgo_uint8" }, align 8
@8 = private unnamed_addr constant [4 x i8] c"keys", align 1
@"[8]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 0, i32 -1310855284, i8 8, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_int" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 6 }, ptr @"*[8]_llgo_int" }, ptr @_llgo_int, ptr @"[]_llgo_int", i64 8 }, align 8
@9 = private unnamed_addr constant [6 x i8] c"[8]int", align 1
@"*[8]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1841254256, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 6 }, ptr null }, ptr @"[8]_llgo_int" }, align 8
@"[]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -1129561019, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr @"*[]_llgo_int" }, ptr @_llgo_int }, align 8
@10 = private unnamed_addr constant [5 x i8] c"[]int", align 1
@"*[]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1428175521, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr null }, ptr @"[]_llgo_int" }, align 8
@11 = private unnamed_addr constant [5 x i8] c"elems", align 1
@"[8]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 128, i64 120, i32 460245566, i8 0, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_string" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 9 }, ptr @"*[8]_llgo_string" }, ptr @_llgo_string, ptr @"[]_llgo_string", i64 8 }, align 8
@12 = private unnamed_addr constant [9 x i8] c"[8]string", align 1
@"*[8]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 368026044, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 9 }, ptr null }, ptr @"[8]_llgo_string" }, align 8
@"[]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 608974920, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 8 }, ptr @"*[]_llgo_string" }, ptr @_llgo_string }, align 8
@13 = private unnamed_addr constant [8 x i8] c"[]string", align 1
@"*[]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -157880218, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 8 }, ptr null }, ptr @"[]_llgo_string" }, align 8
@14 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@15 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"github.com/goplus/llgo/cl/_testrt/len.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 }, ptr @"[8]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 4 }, ptr @"[8]_llgo_int", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 5 }, ptr @"[8]_llgo_string", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 8 }, ptr @_llgo_Pointer, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@16 = private unnamed_addr constant [5 x i8] c"hello", align 1

define void @"github.com/goplus/llgo/cl/_testrt/len.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/len.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/len.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/len.main"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca { i64, i64 }, align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr null, ptr %8, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  store ptr null, ptr %11, align 8
  %12 = alloca { i64, i64, i64 }, align 8
  %13 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %13, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  store ptr null, ptr %15, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i64, align 8
  %18 = alloca ptr, align 8
  store ptr null, ptr %18, align 8
  %19 = alloca { i64, i64, i64 }, align 8
  %20 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %20, align 8
  %21 = alloca i64, align 8
  %22 = alloca ptr, align 8
  store ptr null, ptr %22, align 8
  %23 = alloca i64, align 8
  %24 = alloca ptr, align 8
  store ptr null, ptr %24, align 8
  %25 = alloca ptr, align 8
  %26 = alloca i64, align 8
  %27 = alloca ptr, align 8
  store ptr null, ptr %27, align 8
  %28 = alloca ptr, align 8
  %29 = alloca i64, align 8
  %30 = alloca ptr, align 8
  store ptr null, ptr %30, align 8
  %31 = alloca i64, align 8
  %32 = alloca ptr, align 8
  store ptr null, ptr %32, align 8
  %33 = alloca i64, align 8
  %34 = alloca ptr, align 8
  store ptr null, ptr %34, align 8
  %35 = alloca i64, align 8
  %36 = alloca ptr, align 8
  store ptr null, ptr %36, align 8
  %37 = alloca i64, align 8
  %38 = alloca ptr, align 8
  store ptr null, ptr %38, align 8
  %39 = alloca { i64, i64, i64 }, align 8
  %40 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %40, align 8
  %41 = alloca i64, align 8
  %42 = alloca ptr, align 8
  store ptr null, ptr %42, align 8
  %43 = alloca { i64, i64 }, align 8
  %44 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %44, align 8
  %45 = alloca i64, align 8
  %46 = alloca ptr, align 8
  store ptr null, ptr %46, align 8
  %47 = alloca ptr, align 8
  %48 = alloca i64, align 8
  %49 = alloca ptr, align 8
  store ptr null, ptr %49, align 8
  %50 = alloca ptr, align 8
  %51 = alloca i64, align 8
  %52 = alloca ptr, align 8
  store ptr null, ptr %52, align 8
  %53 = alloca { i64, i64, i64 }, align 8
  %54 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %54, align 8
  %55 = alloca i64, align 8
  %56 = alloca ptr, align 8
  store ptr null, ptr %56, align 8
  %57 = alloca ptr, align 8
  %58 = alloca i64, align 8
  %59 = alloca ptr, align 8
  store ptr null, ptr %59, align 8
  %60 = alloca { i64, i64, i64 }, align 8
  %61 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %61, align 8
  %62 = alloca %"github.com/goplus/llgo/cl/_testrt/len.data", align 8
  call void @llvm.memset(ptr %62, i8 0, i64 56, i1 false)
  %63 = icmp eq ptr %62, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %63)
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %62, i32 0, i32 0
  %65 = ptrtoint ptr %64 to i64
  %66 = and i64 %65, 72057594037927935
  %67 = xor i64 %66, 25399393228665167
  %68 = shl i64 %67, 17
  %69 = select i1 false, i64 0, i64 %68
  %70 = lshr i64 %67, 39
  %71 = select i1 false, i64 0, i64 %70
  %72 = or i64 %69, %71
  %73 = and i64 %72, 72057594037927935
  %74 = or i64 %73, -6557241057451442176
  store i64 %74, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %74)
  call void @runtime.ClobberPointerRegs()
  %75 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %75)
  %76 = load i64, ptr %0, align 4
  %77 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @runtime.LoadHiddenPointee(ptr %77, i64 %76, i64 16)
  %78 = icmp eq ptr %77, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %78)
  %79 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %77, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %77, align 8
  %80 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %79, ptr %80, align 8
  %81 = icmp eq ptr %80, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %81)
  %82 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %80, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %82, ptr %3, align 8
  %83 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %82, 0
  %84 = ptrtoint ptr %83 to i64
  %85 = and i64 %84, 72057594037927935
  %86 = xor i64 %85, 25399393228665167
  %87 = shl i64 %86, 17
  %88 = select i1 false, i64 0, i64 %87
  %89 = lshr i64 %86, 39
  %90 = select i1 false, i64 0, i64 %89
  %91 = or i64 %88, %90
  %92 = and i64 %91, 72057594037927935
  %93 = or i64 %92, -6557241057451442176
  %94 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %82, 1
  %95 = insertvalue { i64, i64 } undef, i64 %93, 0
  %96 = insertvalue { i64, i64 } %95, i64 %94, 1
  store { i64, i64 } %96, ptr %2, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %80, align 8
  call void @runtime.TouchConservativeSlot(ptr %80, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %97 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %98 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %98)
  %99 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %3, align 8
  store { i64, i64 } zeroinitializer, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  call void @runtime.ClobberPointerRegs()
  %100 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %99, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %97)
  %101 = icmp eq ptr %62, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %101)
  %102 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %62, i32 0, i32 1
  %103 = ptrtoint ptr %102 to i64
  %104 = and i64 %103, 72057594037927935
  %105 = xor i64 %104, 25399393228665167
  %106 = shl i64 %105, 17
  %107 = select i1 false, i64 0, i64 %106
  %108 = lshr i64 %105, 39
  %109 = select i1 false, i64 0, i64 %108
  %110 = or i64 %107, %109
  %111 = and i64 %110, 72057594037927935
  %112 = or i64 %111, -6557241057451442176
  store i64 %112, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %112)
  call void @runtime.ClobberPointerRegs()
  %113 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %113)
  %114 = load i64, ptr %4, align 4
  %115 = alloca ptr, align 8
  call void @runtime.LoadHiddenPointee(ptr %115, i64 %114, i64 8)
  %116 = icmp eq ptr %115, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %116)
  %117 = load ptr, ptr %115, align 8
  store ptr null, ptr %115, align 8
  store ptr %117, ptr %6, align 8
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %118 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %119 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %119)
  %120 = load ptr, ptr %6, align 8
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  call void @runtime.ClobberPointerRegs()
  %121 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.ChanLen"(ptr %120)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %118)
  %122 = icmp eq ptr %62, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %122)
  %123 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %62, i32 0, i32 2
  %124 = ptrtoint ptr %123 to i64
  %125 = and i64 %124, 72057594037927935
  %126 = xor i64 %125, 25399393228665167
  %127 = shl i64 %126, 17
  %128 = select i1 false, i64 0, i64 %127
  %129 = lshr i64 %126, 39
  %130 = select i1 false, i64 0, i64 %129
  %131 = or i64 %128, %130
  %132 = and i64 %131, 72057594037927935
  %133 = or i64 %132, -6557241057451442176
  store i64 %133, ptr %7, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %8, i64 %133)
  call void @runtime.ClobberPointerRegs()
  %134 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %134)
  %135 = load i64, ptr %7, align 4
  %136 = alloca ptr, align 8
  call void @runtime.LoadHiddenPointee(ptr %136, i64 %135, i64 8)
  %137 = icmp eq ptr %136, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %137)
  %138 = load ptr, ptr %136, align 8
  store ptr null, ptr %136, align 8
  store ptr %138, ptr %9, align 8
  store i64 0, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  store ptr null, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  call void @runtime.ClobberPointerRegs()
  %139 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %140 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %140)
  %141 = load ptr, ptr %9, align 8
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %142 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr %141)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %139)
  %143 = icmp eq ptr %62, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %143)
  %144 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %62, i32 0, i32 3
  %145 = ptrtoint ptr %144 to i64
  %146 = and i64 %145, 72057594037927935
  %147 = xor i64 %146, 25399393228665167
  %148 = shl i64 %147, 17
  %149 = select i1 false, i64 0, i64 %148
  %150 = lshr i64 %147, 39
  %151 = select i1 false, i64 0, i64 %150
  %152 = or i64 %149, %151
  %153 = and i64 %152, 72057594037927935
  %154 = or i64 %153, -6557241057451442176
  store i64 %154, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %154)
  call void @runtime.ClobberPointerRegs()
  %155 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %155)
  %156 = load i64, ptr %10, align 4
  %157 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @runtime.LoadHiddenPointee(ptr %157, i64 %156, i64 24)
  %158 = icmp eq ptr %157, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %158)
  %159 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %157, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %157, align 8
  %160 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %159, ptr %160, align 8
  %161 = icmp eq ptr %160, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %161)
  %162 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %160, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %162, ptr %13, align 8
  %163 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %162, 0
  %164 = ptrtoint ptr %163 to i64
  %165 = and i64 %164, 72057594037927935
  %166 = xor i64 %165, 25399393228665167
  %167 = shl i64 %166, 17
  %168 = select i1 false, i64 0, i64 %167
  %169 = lshr i64 %166, 39
  %170 = select i1 false, i64 0, i64 %169
  %171 = or i64 %168, %170
  %172 = and i64 %171, 72057594037927935
  %173 = or i64 %172, -6557241057451442176
  %174 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %162, 1
  %175 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %162, 2
  %176 = insertvalue { i64, i64, i64 } undef, i64 %173, 0
  %177 = insertvalue { i64, i64, i64 } %176, i64 %174, 1
  %178 = insertvalue { i64, i64, i64 } %177, i64 %175, 2
  store { i64, i64, i64 } %178, ptr %12, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %160, align 8
  call void @runtime.TouchConservativeSlot(ptr %160, i64 24)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %179 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %180 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %180)
  %181 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %13, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 24)
  call void @runtime.ClobberPointerRegs()
  %182 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %181, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %179)
  %183 = icmp eq ptr %62, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %183)
  %184 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %62, i32 0, i32 1
  %185 = ptrtoint ptr %184 to i64
  %186 = and i64 %185, 72057594037927935
  %187 = xor i64 %186, 25399393228665167
  %188 = shl i64 %187, 17
  %189 = select i1 false, i64 0, i64 %188
  %190 = lshr i64 %187, 39
  %191 = select i1 false, i64 0, i64 %190
  %192 = or i64 %189, %191
  %193 = and i64 %192, 72057594037927935
  %194 = or i64 %193, -6557241057451442176
  store i64 %194, ptr %14, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %15, i64 %194)
  call void @runtime.ClobberPointerRegs()
  %195 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %195)
  %196 = load i64, ptr %14, align 4
  %197 = alloca ptr, align 8
  call void @runtime.LoadHiddenPointee(ptr %197, i64 %196, i64 8)
  %198 = icmp eq ptr %197, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %198)
  %199 = load ptr, ptr %197, align 8
  store ptr null, ptr %197, align 8
  store ptr %199, ptr %16, align 8
  store i64 0, ptr %14, align 4
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store ptr null, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  call void @runtime.ClobberPointerRegs()
  %200 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %201 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %201)
  %202 = load ptr, ptr %16, align 8
  store ptr null, ptr %16, align 8
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  call void @runtime.ClobberPointerRegs()
  %203 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.ChanCap"(ptr %202)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %200)
  %204 = icmp eq ptr %62, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %204)
  %205 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %62, i32 0, i32 3
  %206 = ptrtoint ptr %205 to i64
  %207 = and i64 %206, 72057594037927935
  %208 = xor i64 %207, 25399393228665167
  %209 = shl i64 %208, 17
  %210 = select i1 false, i64 0, i64 %209
  %211 = lshr i64 %208, 39
  %212 = select i1 false, i64 0, i64 %211
  %213 = or i64 %210, %212
  %214 = and i64 %213, 72057594037927935
  %215 = or i64 %214, -6557241057451442176
  store i64 %215, ptr %17, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %18, i64 %215)
  call void @runtime.ClobberPointerRegs()
  %216 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %216)
  %217 = load i64, ptr %17, align 4
  %218 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @runtime.LoadHiddenPointee(ptr %218, i64 %217, i64 24)
  %219 = icmp eq ptr %218, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %219)
  %220 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %218, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %218, align 8
  %221 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %220, ptr %221, align 8
  %222 = icmp eq ptr %221, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %222)
  %223 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %221, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %223, ptr %20, align 8
  %224 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %223, 0
  %225 = ptrtoint ptr %224 to i64
  %226 = and i64 %225, 72057594037927935
  %227 = xor i64 %226, 25399393228665167
  %228 = shl i64 %227, 17
  %229 = select i1 false, i64 0, i64 %228
  %230 = lshr i64 %227, 39
  %231 = select i1 false, i64 0, i64 %230
  %232 = or i64 %229, %231
  %233 = and i64 %232, 72057594037927935
  %234 = or i64 %233, -6557241057451442176
  %235 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %223, 1
  %236 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %223, 2
  %237 = insertvalue { i64, i64, i64 } undef, i64 %234, 0
  %238 = insertvalue { i64, i64, i64 } %237, i64 %235, 1
  %239 = insertvalue { i64, i64, i64 } %238, i64 %236, 2
  store { i64, i64, i64 } %239, ptr %19, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %221, align 8
  call void @runtime.TouchConservativeSlot(ptr %221, i64 24)
  call void @runtime.ClobberPointerRegs()
  store %"github.com/goplus/llgo/cl/_testrt/len.data" zeroinitializer, ptr %62, align 8
  call void @runtime.TouchConservativeSlot(ptr %62, i64 56)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %17, align 4
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  store ptr null, ptr %18, align 8
  call void @runtime.TouchConservativeSlot(ptr %18, i64 8)
  call void @runtime.ClobberPointerRegs()
  %240 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %241 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %241)
  %242 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %20, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %19, align 4
  call void @runtime.TouchConservativeSlot(ptr %19, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %20, align 8
  call void @runtime.TouchConservativeSlot(ptr %20, i64 24)
  call void @runtime.ClobberPointerRegs()
  %243 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %242, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %240)
  %244 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %121)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %142)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %182)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %203)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %243)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %244)
  %245 = alloca %"github.com/goplus/llgo/cl/_testrt/len.data", align 8
  call void @llvm.memset(ptr %245, i8 0, i64 56, i1 false)
  %246 = icmp eq ptr %245, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %246)
  %247 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %245, i32 0, i32 0
  %248 = ptrtoint ptr %247 to i64
  %249 = and i64 %248, 72057594037927935
  %250 = xor i64 %249, 25399393228665167
  %251 = shl i64 %250, 17
  %252 = select i1 false, i64 0, i64 %251
  %253 = lshr i64 %250, 39
  %254 = select i1 false, i64 0, i64 %253
  %255 = or i64 %252, %254
  %256 = and i64 %255, 72057594037927935
  %257 = or i64 %256, -6557241057451442176
  store i64 %257, ptr %21, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %22, i64 %257)
  call void @runtime.ClobberPointerRegs()
  %258 = icmp eq ptr %245, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %258)
  %259 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %245, i32 0, i32 1
  %260 = ptrtoint ptr %259 to i64
  %261 = and i64 %260, 72057594037927935
  %262 = xor i64 %261, 25399393228665167
  %263 = shl i64 %262, 17
  %264 = select i1 false, i64 0, i64 %263
  %265 = lshr i64 %262, 39
  %266 = select i1 false, i64 0, i64 %265
  %267 = or i64 %264, %266
  %268 = and i64 %267, 72057594037927935
  %269 = or i64 %268, -6557241057451442176
  store i64 %269, ptr %23, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %24, i64 %269)
  call void @runtime.ClobberPointerRegs()
  %270 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64 8, i64 2)
  store ptr %270, ptr %25, align 8
  %271 = icmp eq ptr %245, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %271)
  %272 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %245, i32 0, i32 2
  %273 = ptrtoint ptr %272 to i64
  %274 = and i64 %273, 72057594037927935
  %275 = xor i64 %274, 25399393228665167
  %276 = shl i64 %275, 17
  %277 = select i1 false, i64 0, i64 %276
  %278 = lshr i64 %275, 39
  %279 = select i1 false, i64 0, i64 %278
  %280 = or i64 %277, %279
  %281 = and i64 %280, 72057594037927935
  %282 = or i64 %281, -6557241057451442176
  store i64 %282, ptr %26, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %27, i64 %282)
  call void @runtime.ClobberPointerRegs()
  %283 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_int]_llgo_string", i64 1)
  store ptr %283, ptr %28, align 8
  %284 = icmp eq ptr %28, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %284)
  %285 = load ptr, ptr %28, align 8
  %286 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %286, align 4
  %287 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_int]_llgo_string", ptr %285, ptr %286)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 5 }, ptr %287, align 8
  call void @llvm.memset(ptr %286, i8 0, i64 8, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %286, i64 8)
  %288 = icmp eq ptr %245, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %288)
  %289 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %245, i32 0, i32 3
  %290 = ptrtoint ptr %289 to i64
  %291 = and i64 %290, 72057594037927935
  %292 = xor i64 %291, 25399393228665167
  %293 = shl i64 %292, 17
  %294 = select i1 false, i64 0, i64 %293
  %295 = lshr i64 %292, 39
  %296 = select i1 false, i64 0, i64 %295
  %297 = or i64 %294, %296
  %298 = and i64 %297, 72057594037927935
  %299 = or i64 %298, -6557241057451442176
  store i64 %299, ptr %29, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %30, i64 %299)
  call void @runtime.ClobberPointerRegs()
  %300 = call i64 @runtime.AllocZHidden(i64 24)
  store i64 %300, ptr %31, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %32, i64 %300)
  %301 = icmp eq ptr %31, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %301)
  %302 = load i64, ptr %31, align 4
  %303 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 3)
  %304 = mul i64 %303, 8
  %305 = call i64 @runtime.AdvanceHiddenPointer(i64 %302, i64 %304)
  store i64 %305, ptr %33, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %34, i64 %305)
  %306 = icmp eq ptr %33, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %306)
  %307 = load i64, ptr %33, align 4
  %308 = alloca i64, align 8
  store i64 1, ptr %308, align 4
  call void @runtime.StoreHiddenPointee(i64 %307, ptr %308, i64 8)
  store i64 0, ptr %308, align 4
  store i64 0, ptr %33, align 4
  call void @runtime.TouchConservativeSlot(ptr %33, i64 8)
  store ptr null, ptr %34, align 8
  call void @runtime.TouchConservativeSlot(ptr %34, i64 8)
  call void @runtime.ClobberPointerRegs()
  %309 = icmp eq ptr %31, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %309)
  %310 = load i64, ptr %31, align 4
  %311 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 3)
  %312 = mul i64 %311, 8
  %313 = call i64 @runtime.AdvanceHiddenPointer(i64 %310, i64 %312)
  store i64 %313, ptr %35, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %36, i64 %313)
  %314 = icmp eq ptr %35, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %314)
  %315 = load i64, ptr %35, align 4
  %316 = alloca i64, align 8
  store i64 2, ptr %316, align 4
  call void @runtime.StoreHiddenPointee(i64 %315, ptr %316, i64 8)
  store i64 0, ptr %316, align 4
  store i64 0, ptr %35, align 4
  call void @runtime.TouchConservativeSlot(ptr %35, i64 8)
  store ptr null, ptr %36, align 8
  call void @runtime.TouchConservativeSlot(ptr %36, i64 8)
  call void @runtime.ClobberPointerRegs()
  %317 = icmp eq ptr %31, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %317)
  %318 = load i64, ptr %31, align 4
  %319 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 3)
  %320 = mul i64 %319, 8
  %321 = call i64 @runtime.AdvanceHiddenPointer(i64 %318, i64 %320)
  store i64 %321, ptr %37, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %38, i64 %321)
  %322 = icmp eq ptr %37, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %322)
  %323 = load i64, ptr %37, align 4
  %324 = alloca i64, align 8
  store i64 3, ptr %324, align 4
  call void @runtime.StoreHiddenPointee(i64 %323, ptr %324, i64 8)
  store i64 0, ptr %324, align 4
  store i64 0, ptr %37, align 4
  call void @runtime.TouchConservativeSlot(ptr %37, i64 8)
  store ptr null, ptr %38, align 8
  call void @runtime.TouchConservativeSlot(ptr %38, i64 8)
  call void @runtime.ClobberPointerRegs()
  %325 = icmp eq ptr %31, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %325)
  %326 = load i64, ptr %31, align 4
  %327 = and i64 %326, 72057594037927935
  %328 = lshr i64 %327, 17
  %329 = select i1 false, i64 0, i64 %328
  %330 = shl i64 %327, 39
  %331 = select i1 false, i64 0, i64 %330
  %332 = or i64 %329, %331
  %333 = and i64 %332, 72057594037927935
  %334 = xor i64 %333, 25399393228665167
  %335 = inttoptr i64 %334 to ptr
  %336 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %335, 0
  %337 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %336, i64 3, 1
  %338 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %337, i64 3, 2
  %339 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %338, ptr %339, align 8
  %340 = icmp eq ptr %339, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %340)
  %341 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %339, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %341, ptr %40, align 8
  %342 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %341, 0
  %343 = ptrtoint ptr %342 to i64
  %344 = and i64 %343, 72057594037927935
  %345 = xor i64 %344, 25399393228665167
  %346 = shl i64 %345, 17
  %347 = select i1 false, i64 0, i64 %346
  %348 = lshr i64 %345, 39
  %349 = select i1 false, i64 0, i64 %348
  %350 = or i64 %347, %349
  %351 = and i64 %350, 72057594037927935
  %352 = or i64 %351, -6557241057451442176
  %353 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %341, 1
  %354 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %341, 2
  %355 = insertvalue { i64, i64, i64 } undef, i64 %352, 0
  %356 = insertvalue { i64, i64, i64 } %355, i64 %353, 1
  %357 = insertvalue { i64, i64, i64 } %356, i64 %354, 2
  store { i64, i64, i64 } %357, ptr %39, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %339, align 8
  call void @runtime.TouchConservativeSlot(ptr %339, i64 24)
  call void @runtime.ClobberPointerRegs()
  %358 = icmp eq ptr %21, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %358)
  %359 = load i64, ptr %21, align 4
  %360 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 5 }, ptr %360, align 8
  call void @runtime.StoreHiddenPointee(i64 %359, ptr %360, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %360, align 8
  call void @runtime.TouchConservativeSlot(ptr %360, i64 16)
  store i64 0, ptr %21, align 4
  call void @runtime.TouchConservativeSlot(ptr %21, i64 8)
  store ptr null, ptr %22, align 8
  call void @runtime.TouchConservativeSlot(ptr %22, i64 8)
  call void @runtime.ClobberPointerRegs()
  %361 = icmp eq ptr %23, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %361)
  %362 = load i64, ptr %23, align 4
  %363 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %363)
  %364 = load ptr, ptr %25, align 8
  %365 = alloca ptr, align 8
  store ptr %364, ptr %365, align 8
  call void @runtime.StoreHiddenPointee(i64 %362, ptr %365, i64 8)
  store ptr null, ptr %365, align 8
  call void @runtime.TouchConservativeSlot(ptr %365, i64 8)
  store i64 0, ptr %23, align 4
  call void @runtime.TouchConservativeSlot(ptr %23, i64 8)
  store ptr null, ptr %24, align 8
  call void @runtime.TouchConservativeSlot(ptr %24, i64 8)
  store ptr null, ptr %25, align 8
  call void @runtime.TouchConservativeSlot(ptr %25, i64 8)
  call void @runtime.ClobberPointerRegs()
  %366 = icmp eq ptr %26, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %366)
  %367 = load i64, ptr %26, align 4
  %368 = icmp eq ptr %28, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %368)
  %369 = load ptr, ptr %28, align 8
  %370 = alloca ptr, align 8
  store ptr %369, ptr %370, align 8
  call void @runtime.StoreHiddenPointee(i64 %367, ptr %370, i64 8)
  store ptr null, ptr %370, align 8
  call void @runtime.TouchConservativeSlot(ptr %370, i64 8)
  store i64 0, ptr %26, align 4
  call void @runtime.TouchConservativeSlot(ptr %26, i64 8)
  store ptr null, ptr %27, align 8
  call void @runtime.TouchConservativeSlot(ptr %27, i64 8)
  store ptr null, ptr %28, align 8
  call void @runtime.TouchConservativeSlot(ptr %28, i64 8)
  call void @runtime.ClobberPointerRegs()
  %371 = icmp eq ptr %29, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %371)
  %372 = load i64, ptr %29, align 4
  %373 = icmp eq ptr %40, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %373)
  %374 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %40, align 8
  %375 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %374, ptr %375, align 8
  call void @runtime.StoreHiddenPointee(i64 %372, ptr %375, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %375, align 8
  call void @runtime.TouchConservativeSlot(ptr %375, i64 24)
  store i64 0, ptr %29, align 4
  call void @runtime.TouchConservativeSlot(ptr %29, i64 8)
  store ptr null, ptr %30, align 8
  call void @runtime.TouchConservativeSlot(ptr %30, i64 8)
  store i64 0, ptr %31, align 4
  call void @runtime.TouchConservativeSlot(ptr %31, i64 8)
  store ptr null, ptr %32, align 8
  call void @runtime.TouchConservativeSlot(ptr %32, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %39, align 4
  call void @runtime.TouchConservativeSlot(ptr %39, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %40, align 8
  call void @runtime.TouchConservativeSlot(ptr %40, i64 24)
  call void @runtime.ClobberPointerRegs()
  %376 = icmp eq ptr %245, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %376)
  %377 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %245, i32 0, i32 0
  %378 = ptrtoint ptr %377 to i64
  %379 = and i64 %378, 72057594037927935
  %380 = xor i64 %379, 25399393228665167
  %381 = shl i64 %380, 17
  %382 = select i1 false, i64 0, i64 %381
  %383 = lshr i64 %380, 39
  %384 = select i1 false, i64 0, i64 %383
  %385 = or i64 %382, %384
  %386 = and i64 %385, 72057594037927935
  %387 = or i64 %386, -6557241057451442176
  store i64 %387, ptr %41, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %42, i64 %387)
  call void @runtime.ClobberPointerRegs()
  %388 = icmp eq ptr %41, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %388)
  %389 = load i64, ptr %41, align 4
  %390 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @runtime.LoadHiddenPointee(ptr %390, i64 %389, i64 16)
  %391 = icmp eq ptr %390, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %391)
  %392 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %390, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %390, align 8
  %393 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %392, ptr %393, align 8
  %394 = icmp eq ptr %393, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %394)
  %395 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %393, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %395, ptr %44, align 8
  %396 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %395, 0
  %397 = ptrtoint ptr %396 to i64
  %398 = and i64 %397, 72057594037927935
  %399 = xor i64 %398, 25399393228665167
  %400 = shl i64 %399, 17
  %401 = select i1 false, i64 0, i64 %400
  %402 = lshr i64 %399, 39
  %403 = select i1 false, i64 0, i64 %402
  %404 = or i64 %401, %403
  %405 = and i64 %404, 72057594037927935
  %406 = or i64 %405, -6557241057451442176
  %407 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %395, 1
  %408 = insertvalue { i64, i64 } undef, i64 %406, 0
  %409 = insertvalue { i64, i64 } %408, i64 %407, 1
  store { i64, i64 } %409, ptr %43, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %393, align 8
  call void @runtime.TouchConservativeSlot(ptr %393, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %41, align 4
  call void @runtime.TouchConservativeSlot(ptr %41, i64 8)
  store ptr null, ptr %42, align 8
  call void @runtime.TouchConservativeSlot(ptr %42, i64 8)
  call void @runtime.ClobberPointerRegs()
  %410 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %411 = icmp eq ptr %44, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %411)
  %412 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %44, align 8
  store { i64, i64 } zeroinitializer, ptr %43, align 4
  call void @runtime.TouchConservativeSlot(ptr %43, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %44, align 8
  call void @runtime.TouchConservativeSlot(ptr %44, i64 16)
  call void @runtime.ClobberPointerRegs()
  %413 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %412, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %410)
  %414 = icmp eq ptr %245, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %414)
  %415 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %245, i32 0, i32 1
  %416 = ptrtoint ptr %415 to i64
  %417 = and i64 %416, 72057594037927935
  %418 = xor i64 %417, 25399393228665167
  %419 = shl i64 %418, 17
  %420 = select i1 false, i64 0, i64 %419
  %421 = lshr i64 %418, 39
  %422 = select i1 false, i64 0, i64 %421
  %423 = or i64 %420, %422
  %424 = and i64 %423, 72057594037927935
  %425 = or i64 %424, -6557241057451442176
  store i64 %425, ptr %45, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %46, i64 %425)
  call void @runtime.ClobberPointerRegs()
  %426 = icmp eq ptr %45, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %426)
  %427 = load i64, ptr %45, align 4
  %428 = alloca ptr, align 8
  call void @runtime.LoadHiddenPointee(ptr %428, i64 %427, i64 8)
  %429 = icmp eq ptr %428, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %429)
  %430 = load ptr, ptr %428, align 8
  store ptr null, ptr %428, align 8
  store ptr %430, ptr %47, align 8
  store i64 0, ptr %45, align 4
  call void @runtime.TouchConservativeSlot(ptr %45, i64 8)
  store ptr null, ptr %46, align 8
  call void @runtime.TouchConservativeSlot(ptr %46, i64 8)
  call void @runtime.ClobberPointerRegs()
  %431 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %432 = icmp eq ptr %47, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %432)
  %433 = load ptr, ptr %47, align 8
  store ptr null, ptr %47, align 8
  call void @runtime.TouchConservativeSlot(ptr %47, i64 8)
  call void @runtime.ClobberPointerRegs()
  %434 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.ChanLen"(ptr %433)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %431)
  %435 = icmp eq ptr %245, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %435)
  %436 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %245, i32 0, i32 2
  %437 = ptrtoint ptr %436 to i64
  %438 = and i64 %437, 72057594037927935
  %439 = xor i64 %438, 25399393228665167
  %440 = shl i64 %439, 17
  %441 = select i1 false, i64 0, i64 %440
  %442 = lshr i64 %439, 39
  %443 = select i1 false, i64 0, i64 %442
  %444 = or i64 %441, %443
  %445 = and i64 %444, 72057594037927935
  %446 = or i64 %445, -6557241057451442176
  store i64 %446, ptr %48, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %49, i64 %446)
  call void @runtime.ClobberPointerRegs()
  %447 = icmp eq ptr %48, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %447)
  %448 = load i64, ptr %48, align 4
  %449 = alloca ptr, align 8
  call void @runtime.LoadHiddenPointee(ptr %449, i64 %448, i64 8)
  %450 = icmp eq ptr %449, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %450)
  %451 = load ptr, ptr %449, align 8
  store ptr null, ptr %449, align 8
  store ptr %451, ptr %50, align 8
  store i64 0, ptr %48, align 4
  call void @runtime.TouchConservativeSlot(ptr %48, i64 8)
  store ptr null, ptr %49, align 8
  call void @runtime.TouchConservativeSlot(ptr %49, i64 8)
  call void @runtime.ClobberPointerRegs()
  %452 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %453 = icmp eq ptr %50, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %453)
  %454 = load ptr, ptr %50, align 8
  store ptr null, ptr %50, align 8
  call void @runtime.TouchConservativeSlot(ptr %50, i64 8)
  call void @runtime.ClobberPointerRegs()
  %455 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr %454)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %452)
  %456 = icmp eq ptr %245, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %456)
  %457 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %245, i32 0, i32 3
  %458 = ptrtoint ptr %457 to i64
  %459 = and i64 %458, 72057594037927935
  %460 = xor i64 %459, 25399393228665167
  %461 = shl i64 %460, 17
  %462 = select i1 false, i64 0, i64 %461
  %463 = lshr i64 %460, 39
  %464 = select i1 false, i64 0, i64 %463
  %465 = or i64 %462, %464
  %466 = and i64 %465, 72057594037927935
  %467 = or i64 %466, -6557241057451442176
  store i64 %467, ptr %51, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %52, i64 %467)
  call void @runtime.ClobberPointerRegs()
  %468 = icmp eq ptr %51, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %468)
  %469 = load i64, ptr %51, align 4
  %470 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @runtime.LoadHiddenPointee(ptr %470, i64 %469, i64 24)
  %471 = icmp eq ptr %470, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %471)
  %472 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %470, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %470, align 8
  %473 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %472, ptr %473, align 8
  %474 = icmp eq ptr %473, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %474)
  %475 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %473, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %475, ptr %54, align 8
  %476 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %475, 0
  %477 = ptrtoint ptr %476 to i64
  %478 = and i64 %477, 72057594037927935
  %479 = xor i64 %478, 25399393228665167
  %480 = shl i64 %479, 17
  %481 = select i1 false, i64 0, i64 %480
  %482 = lshr i64 %479, 39
  %483 = select i1 false, i64 0, i64 %482
  %484 = or i64 %481, %483
  %485 = and i64 %484, 72057594037927935
  %486 = or i64 %485, -6557241057451442176
  %487 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %475, 1
  %488 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %475, 2
  %489 = insertvalue { i64, i64, i64 } undef, i64 %486, 0
  %490 = insertvalue { i64, i64, i64 } %489, i64 %487, 1
  %491 = insertvalue { i64, i64, i64 } %490, i64 %488, 2
  store { i64, i64, i64 } %491, ptr %53, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %473, align 8
  call void @runtime.TouchConservativeSlot(ptr %473, i64 24)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %51, align 4
  call void @runtime.TouchConservativeSlot(ptr %51, i64 8)
  store ptr null, ptr %52, align 8
  call void @runtime.TouchConservativeSlot(ptr %52, i64 8)
  call void @runtime.ClobberPointerRegs()
  %492 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %493 = icmp eq ptr %54, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %493)
  %494 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %54, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %53, align 4
  call void @runtime.TouchConservativeSlot(ptr %53, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %54, align 8
  call void @runtime.TouchConservativeSlot(ptr %54, i64 24)
  call void @runtime.ClobberPointerRegs()
  %495 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %494, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %492)
  %496 = icmp eq ptr %245, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %496)
  %497 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %245, i32 0, i32 1
  %498 = ptrtoint ptr %497 to i64
  %499 = and i64 %498, 72057594037927935
  %500 = xor i64 %499, 25399393228665167
  %501 = shl i64 %500, 17
  %502 = select i1 false, i64 0, i64 %501
  %503 = lshr i64 %500, 39
  %504 = select i1 false, i64 0, i64 %503
  %505 = or i64 %502, %504
  %506 = and i64 %505, 72057594037927935
  %507 = or i64 %506, -6557241057451442176
  store i64 %507, ptr %55, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %56, i64 %507)
  call void @runtime.ClobberPointerRegs()
  %508 = icmp eq ptr %55, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %508)
  %509 = load i64, ptr %55, align 4
  %510 = alloca ptr, align 8
  call void @runtime.LoadHiddenPointee(ptr %510, i64 %509, i64 8)
  %511 = icmp eq ptr %510, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %511)
  %512 = load ptr, ptr %510, align 8
  store ptr null, ptr %510, align 8
  store ptr %512, ptr %57, align 8
  store i64 0, ptr %55, align 4
  call void @runtime.TouchConservativeSlot(ptr %55, i64 8)
  store ptr null, ptr %56, align 8
  call void @runtime.TouchConservativeSlot(ptr %56, i64 8)
  call void @runtime.ClobberPointerRegs()
  %513 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %514 = icmp eq ptr %57, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %514)
  %515 = load ptr, ptr %57, align 8
  store ptr null, ptr %57, align 8
  call void @runtime.TouchConservativeSlot(ptr %57, i64 8)
  call void @runtime.ClobberPointerRegs()
  %516 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.ChanCap"(ptr %515)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %513)
  %517 = icmp eq ptr %245, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %517)
  %518 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %245, i32 0, i32 3
  %519 = ptrtoint ptr %518 to i64
  %520 = and i64 %519, 72057594037927935
  %521 = xor i64 %520, 25399393228665167
  %522 = shl i64 %521, 17
  %523 = select i1 false, i64 0, i64 %522
  %524 = lshr i64 %521, 39
  %525 = select i1 false, i64 0, i64 %524
  %526 = or i64 %523, %525
  %527 = and i64 %526, 72057594037927935
  %528 = or i64 %527, -6557241057451442176
  store i64 %528, ptr %58, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %59, i64 %528)
  call void @runtime.ClobberPointerRegs()
  %529 = icmp eq ptr %58, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %529)
  %530 = load i64, ptr %58, align 4
  %531 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @runtime.LoadHiddenPointee(ptr %531, i64 %530, i64 24)
  %532 = icmp eq ptr %531, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %532)
  %533 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %531, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %531, align 8
  %534 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %533, ptr %534, align 8
  %535 = icmp eq ptr %534, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %535)
  %536 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %534, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %536, ptr %61, align 8
  %537 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %536, 0
  %538 = ptrtoint ptr %537 to i64
  %539 = and i64 %538, 72057594037927935
  %540 = xor i64 %539, 25399393228665167
  %541 = shl i64 %540, 17
  %542 = select i1 false, i64 0, i64 %541
  %543 = lshr i64 %540, 39
  %544 = select i1 false, i64 0, i64 %543
  %545 = or i64 %542, %544
  %546 = and i64 %545, 72057594037927935
  %547 = or i64 %546, -6557241057451442176
  %548 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %536, 1
  %549 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %536, 2
  %550 = insertvalue { i64, i64, i64 } undef, i64 %547, 0
  %551 = insertvalue { i64, i64, i64 } %550, i64 %548, 1
  %552 = insertvalue { i64, i64, i64 } %551, i64 %549, 2
  store { i64, i64, i64 } %552, ptr %60, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %534, align 8
  call void @runtime.TouchConservativeSlot(ptr %534, i64 24)
  call void @runtime.ClobberPointerRegs()
  store %"github.com/goplus/llgo/cl/_testrt/len.data" zeroinitializer, ptr %245, align 8
  call void @runtime.TouchConservativeSlot(ptr %245, i64 56)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %58, align 4
  call void @runtime.TouchConservativeSlot(ptr %58, i64 8)
  store ptr null, ptr %59, align 8
  call void @runtime.TouchConservativeSlot(ptr %59, i64 8)
  call void @runtime.ClobberPointerRegs()
  %553 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %554 = icmp eq ptr %61, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %554)
  %555 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %61, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %60, align 4
  call void @runtime.TouchConservativeSlot(ptr %60, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %61, align 8
  call void @runtime.TouchConservativeSlot(ptr %61, i64 24)
  call void @runtime.ClobberPointerRegs()
  %556 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %555, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %553)
  %557 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %413)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %434)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %455)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %495)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %516)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %556)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %557)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.ChanLen"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.ChanCap"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64, i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.typehash"(ptr, ptr, i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal64")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.strequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal8")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr, ptr, ptr)

declare i64 @runtime.AllocZHidden(i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64, i64)

declare i64 @runtime.AdvanceHiddenPointer(i64, i64)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
