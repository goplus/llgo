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
@"map[_llgo_int]_llgo_string" = weak_odr global %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2084636366, i8 0, i8 8, i8 8, i8 53, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 14 }, ptr @"*map[_llgo_int]_llgo_string" }, ptr @_llgo_int, ptr @_llgo_string, ptr @"github.com/goplus/llgo/cl/_testrt/len.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ", { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehash", ptr @_llgo_int }, i8 8, i8 16, i16 208, i32 4 }, align 8
@0 = private unnamed_addr constant [14 x i8] c"map[int]string", align 1
@"*map[_llgo_int]_llgo_string" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 668541983, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 14 }, ptr null }, ptr @"map[_llgo_int]_llgo_string" }, align 8
@_llgo_int = weak_odr global %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 8, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 3 }, ptr @"*_llgo_int" }, align 8
@1 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@_llgo_string = weak_odr global %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 0, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr @"*_llgo_string" }, align 8
@2 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"github.com/goplus/llgo/cl/_testrt/len.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" = weak_odr global %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 208, i64 208, i32 122549684, i8 0, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"github.com/goplus/llgo/cl/_testrt/len.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 82 }, ptr @"*github.com/goplus/llgo/cl/_testrt/len.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 37 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/len.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ$fields", i64 4, i64 4 } }, align 8
@3 = private unnamed_addr constant [82 x i8] c"struct { topbits [8]uint8; keys [8]int; elems [8]string; overflow unsafe.Pointer }", align 1
@"*github.com/goplus/llgo/cl/_testrt/len.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1370513638, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 82 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testrt/len.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" }, align 8
@4 = private unnamed_addr constant [37 x i8] c"github.com/goplus/llgo/cl/_testrt/len", align 1
@5 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@"[8]_llgo_uint8" = weak_odr global %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 307038632, i8 8, i8 1, i8 1, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_uint8" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 8 }, ptr @"*[8]_llgo_uint8" }, ptr @_llgo_uint8, ptr @"[]_llgo_uint8", i64 8 }, align 8
@6 = private unnamed_addr constant [8 x i8] c"[8]uint8", align 1
@"*[8]_llgo_uint8" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -566230779, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 8 }, ptr null }, ptr @"[8]_llgo_uint8" }, align 8
@_llgo_uint8 = weak_odr global %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 269156761, i8 8, i8 1, i8 1, i8 40, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @"*_llgo_uint8" }, align 8
@7 = private unnamed_addr constant [5 x i8] c"uint8", align 1
@"*_llgo_uint8" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1277858201, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr null }, ptr @_llgo_uint8 }, align 8
@"[]_llgo_uint8" = weak_odr global %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 370346748, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 7 }, ptr @"*[]_llgo_uint8" }, ptr @_llgo_uint8 }, align 8
@8 = private unnamed_addr constant [7 x i8] c"[]uint8", align 1
@"*[]_llgo_uint8" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2143776929, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 7 }, ptr null }, ptr @"[]_llgo_uint8" }, align 8
@9 = private unnamed_addr constant [4 x i8] c"keys", align 1
@"[8]_llgo_int" = weak_odr global %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 0, i32 -1310855284, i8 8, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_int" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr @"*[8]_llgo_int" }, ptr @_llgo_int, ptr @"[]_llgo_int", i64 8 }, align 8
@10 = private unnamed_addr constant [6 x i8] c"[8]int", align 1
@"*[8]_llgo_int" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1841254256, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr null }, ptr @"[8]_llgo_int" }, align 8
@"[]_llgo_int" = weak_odr global %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -1129561019, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 5 }, ptr @"*[]_llgo_int" }, ptr @_llgo_int }, align 8
@11 = private unnamed_addr constant [5 x i8] c"[]int", align 1
@"*[]_llgo_int" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1428175521, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 5 }, ptr null }, ptr @"[]_llgo_int" }, align 8
@12 = private unnamed_addr constant [5 x i8] c"elems", align 1
@"[8]_llgo_string" = weak_odr global %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 128, i64 120, i32 460245566, i8 0, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_string" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 9 }, ptr @"*[8]_llgo_string" }, ptr @_llgo_string, ptr @"[]_llgo_string", i64 8 }, align 8
@13 = private unnamed_addr constant [9 x i8] c"[8]string", align 1
@"*[8]_llgo_string" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 368026044, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 9 }, ptr null }, ptr @"[8]_llgo_string" }, align 8
@"[]_llgo_string" = weak_odr global %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 608974920, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 8 }, ptr @"*[]_llgo_string" }, ptr @_llgo_string }, align 8
@14 = private unnamed_addr constant [8 x i8] c"[]string", align 1
@"*[]_llgo_string" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -157880218, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 8 }, ptr null }, ptr @"[]_llgo_string" }, align 8
@15 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@_llgo_Pointer = weak_odr global %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 8, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@16 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"github.com/goplus/llgo/cl/_testrt/len.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ$fields" = weak_odr global [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 7 }, ptr @"[8]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr @"[8]_llgo_int", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 5 }, ptr @"[8]_llgo_string", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 8 }, ptr @_llgo_Pointer, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@17 = private unnamed_addr constant [5 x i8] c"hello", align 1

define void @"github.com/goplus/llgo/cl/_testrt/len.init"() {
_llgo_0:
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
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 56)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, align 8
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %2, 1
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.ChanLen"(ptr %5)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr %8)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %0, i32 0, i32 3
  %11 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %10, align 8
  %12 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 1
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.ChanCap"(ptr %14)
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %0, i32 0, i32 3
  %17 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %16, align 8
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 56)
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %19, i32 0, i32 0
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %19, i32 0, i32 1
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64 8, i64 2)
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %19, i32 0, i32 2
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_int]_llgo_string", i64 1)
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %25, align 4
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_int]_llgo_string", ptr %24, ptr %25)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr %26, align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %19, i32 0, i32 3
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %29 = getelementptr inbounds i64, ptr %28, i64 0
  store i64 1, ptr %29, align 4
  %30 = getelementptr inbounds i64, ptr %28, i64 1
  store i64 2, ptr %30, align 4
  %31 = getelementptr inbounds i64, ptr %28, i64 2
  store i64 3, ptr %31, align 4
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %28, 0
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %32, i64 3, 1
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %33, i64 3, 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr %20, align 8
  store ptr %22, ptr %21, align 8
  store ptr %24, ptr %23, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, ptr %27, align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %19, i32 0, i32 0
  %36 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %35, align 8
  %37 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %36, 1
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %19, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.ChanLen"(ptr %39)
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %19, i32 0, i32 2
  %42 = load ptr, ptr %41, align 8
  %43 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr %42)
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %19, i32 0, i32 3
  %45 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %44, align 8
  %46 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %45, 1
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %19, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8
  %49 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.ChanCap"(ptr %48)
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %19, i32 0, i32 3
  %51 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %50, align 8
  %52 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %51, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %37)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %40)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %43)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %46)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %49)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %52)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.ChanLen"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.ChanCap"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64, i64)

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

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
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
