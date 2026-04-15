; ModuleID = 'github.com/goplus/llgo/cl/_testrt/makemap'
source_filename = "github.com/goplus/llgo/cl/_testrt/makemap"

%"github.com/goplus/llgo/runtime/abi.MapType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, ptr, ptr, { ptr, ptr }, i8, i8, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.ArrayType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.SliceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.InterfaceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.ChanType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testrt/makemap.N" = type { i8, i8 }

@"github.com/goplus/llgo/cl/_testrt/makemap.init$guard" = global i1 false, align 1
@"map[_llgo_int]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2084636366, i8 0, i8 8, i8 8, i8 53, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 14 }, ptr @"*map[_llgo_int]_llgo_string" }, ptr @_llgo_int, ptr @_llgo_string, ptr @"_llgo_struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ", { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehash", ptr @_llgo_int }, i8 8, i8 16, i16 208, i32 4 }, align 8
@0 = private unnamed_addr constant [14 x i8] c"map[int]string", align 1
@"*map[_llgo_int]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 668541983, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 14 }, ptr null }, ptr @"map[_llgo_int]_llgo_string" }, align 8
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 2, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 3 }, ptr @"*_llgo_int" }, align 8
@1 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr @"*_llgo_string" }, align 8
@2 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"_llgo_struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 208, i64 208, i32 1935989513, i8 0, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 82 }, ptr @"*_llgo_struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ$fields", i64 4, i64 4 } }, align 8
@3 = private unnamed_addr constant [82 x i8] c"struct { topbits [8]uint8; keys [8]int; elems [8]string; overflow unsafe.Pointer }", align 1
@"*_llgo_struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 597085808, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 82 }, ptr null }, ptr @"_llgo_struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" }, align 8
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
@"_llgo_struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 }, ptr @"[8]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 4 }, ptr @"[8]_llgo_int", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 5 }, ptr @"[8]_llgo_string", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 8 }, ptr @_llgo_Pointer, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@16 = private unnamed_addr constant [5 x i8] c"hello", align 1
@17 = private unnamed_addr constant [5 x i8] c"world", align 1
@18 = private unnamed_addr constant [4 x i8] c"llgo", align 1
@19 = private unnamed_addr constant [1 x i8] c":", align 1
@"map[_llgo_string]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1641501154, i8 0, i8 8, i8 8, i8 53, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 14 }, ptr @"*map[_llgo_string]_llgo_int" }, ptr @_llgo_string, ptr @_llgo_int, ptr @"_llgo_struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc", { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehash", ptr @_llgo_string }, i8 16, i8 8, i16 208, i32 12 }, align 8
@20 = private unnamed_addr constant [14 x i8] c"map[string]int", align 1
@"*map[_llgo_string]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 762774621, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 14 }, ptr null }, ptr @"map[_llgo_string]_llgo_int" }, align 8
@"_llgo_struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 208, i64 208, i32 -814565913, i8 0, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 82 }, ptr @"*_llgo_struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc$fields", i64 4, i64 4 } }, align 8
@21 = private unnamed_addr constant [82 x i8] c"struct { topbits [8]uint8; keys [8]string; elems [8]int; overflow unsafe.Pointer }", align 1
@"*_llgo_struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2123736037, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 82 }, ptr null }, ptr @"_llgo_struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" }, align 8
@"_llgo_struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 }, ptr @"[8]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 4 }, ptr @"[8]_llgo_string", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 5 }, ptr @"[8]_llgo_int", i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 8 }, ptr @_llgo_Pointer, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@22 = private unnamed_addr constant [2 x i8] c"go", align 1
@23 = private unnamed_addr constant [7 x i8] c"bad key", align 1
@24 = private unnamed_addr constant [7 x i8] c"bad len", align 1
@"map[_llgo_any]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1757098085, i8 0, i8 8, i8 8, i8 53, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 20 }, ptr @"*map[_llgo_any]_llgo_int" }, ptr @_llgo_any, ptr @_llgo_int, ptr @"_llgo_struct$9fzK8iv9NREHM30G-Ea6p38YjudCiRiAagptdq1kJbs", { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehash", ptr @_llgo_any }, i8 16, i8 8, i16 208, i32 24 }, align 8
@25 = private unnamed_addr constant [20 x i8] c"map[interface {}]int", align 1
@"*map[_llgo_any]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 704453536, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 20 }, ptr null }, ptr @"map[_llgo_any]_llgo_int" }, align 8
@_llgo_any = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1376530322, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 12 }, ptr @"*_llgo_any" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@26 = private unnamed_addr constant [12 x i8] c"interface {}", align 1
@"*_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1741196194, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 12 }, ptr null }, ptr @_llgo_any }, align 8
@27 = private unnamed_addr constant [41 x i8] c"github.com/goplus/llgo/cl/_testrt/makemap", align 1
@"_llgo_struct$9fzK8iv9NREHM30G-Ea6p38YjudCiRiAagptdq1kJbs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 208, i64 208, i32 1990094313, i8 0, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_struct$9fzK8iv9NREHM30G-Ea6p38YjudCiRiAagptdq1kJbs" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 88 }, ptr @"*_llgo_struct$9fzK8iv9NREHM30G-Ea6p38YjudCiRiAagptdq1kJbs" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$9fzK8iv9NREHM30G-Ea6p38YjudCiRiAagptdq1kJbs$fields", i64 4, i64 4 } }, align 8
@28 = private unnamed_addr constant [88 x i8] c"struct { topbits [8]uint8; keys [8]interface {}; elems [8]int; overflow unsafe.Pointer }", align 1
@"*_llgo_struct$9fzK8iv9NREHM30G-Ea6p38YjudCiRiAagptdq1kJbs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 908014156, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 88 }, ptr null }, ptr @"_llgo_struct$9fzK8iv9NREHM30G-Ea6p38YjudCiRiAagptdq1kJbs" }, align 8
@"[8]_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 128, i64 128, i32 1470789279, i8 0, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_any" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 15 }, ptr @"*[8]_llgo_any" }, ptr @_llgo_any, ptr @"[]_llgo_any", i64 8 }, align 8
@29 = private unnamed_addr constant [15 x i8] c"[8]interface {}", align 1
@"*[8]_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -281120639, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 15 }, ptr null }, ptr @"[8]_llgo_any" }, align 8
@"[]_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -396233978, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 14 }, ptr @"*[]_llgo_any" }, ptr @_llgo_any }, align 8
@30 = private unnamed_addr constant [14 x i8] c"[]interface {}", align 1
@"*[]_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1171476965, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 14 }, ptr null }, ptr @"[]_llgo_any" }, align 8
@"_llgo_struct$9fzK8iv9NREHM30G-Ea6p38YjudCiRiAagptdq1kJbs$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 }, ptr @"[8]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 4 }, ptr @"[8]_llgo_any", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 5 }, ptr @"[8]_llgo_int", i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 8 }, ptr @_llgo_Pointer, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.ArrayType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 1575369363, i8 13, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 7 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1" }, ptr @_llgo_int, ptr @"[]_llgo_int", i64 1 }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@31 = private unnamed_addr constant [7 x i8] c"main.N1", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 180030794, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 7 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1" }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.ArrayType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 2, i64 0, i32 -606356617, i8 13, i8 1, i8 1, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K" }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", ptr @"[]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", i64 1 }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@32 = private unnamed_addr constant [6 x i8] c"main.K", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1592755158, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K" }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 2, i64 0, i32 -1436087883, i8 13, i8 1, i8 1, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$e65EDK9vxC36Nz3YTgO1ulssLlNH03Bva_WWaCjH-4A$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@33 = private unnamed_addr constant [6 x i8] c"main.N", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 274039324, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" }, align 8
@34 = private unnamed_addr constant [2 x i8] c"n1", align 1
@_llgo_int8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 1444672578, i8 12, i8 1, i8 1, i8 3, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 4 }, ptr @"*_llgo_int8" }, align 8
@35 = private unnamed_addr constant [4 x i8] c"int8", align 1
@"*_llgo_int8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1399554408, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 4 }, ptr null }, ptr @_llgo_int8 }, align 8
@36 = private unnamed_addr constant [2 x i8] c"n2", align 1
@"github.com/goplus/llgo/cl/_testrt/makemap.struct$e65EDK9vxC36Nz3YTgO1ulssLlNH03Bva_WWaCjH-4A$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 2 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 2 }, ptr @_llgo_int8, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"[]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 1367285445, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 8 }, ptr @"*[]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" }, align 8
@37 = private unnamed_addr constant [8 x i8] c"[]main.N", align 1
@"*[]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1800078399, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 8 }, ptr null }, ptr @"[]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.ArrayType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 700304692, i8 13, i8 8, i8 8, i8 49, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 7 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2" }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", ptr @"[]*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", i64 1 }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@38 = private unnamed_addr constant [7 x i8] c"main.K2", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -107137747, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 7 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2" }, align 8
@"[]*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -134178614, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 9 }, ptr @"*[]*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" }, align 8
@39 = private unnamed_addr constant [9 x i8] c"[]*main.N", align 1
@"*[]*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1993310787, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 9 }, ptr null }, ptr @"[]*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" }, align 8
@"chan _llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ChanType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1550885616, i8 8, i8 8, i8 8, i8 50, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 8 }, ptr @"*chan _llgo_int" }, ptr @_llgo_int, i64 3 }, align 8
@40 = private unnamed_addr constant [8 x i8] c"chan int", align 1
@"*chan _llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -751933087, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 8 }, ptr null }, ptr @"chan _llgo_int" }, align 8
@"map[chan _llgo_int]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1193918658, i8 0, i8 8, i8 8, i8 53, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 16 }, ptr @"*map[chan _llgo_int]_llgo_int" }, ptr @"chan _llgo_int", ptr @_llgo_int, ptr @"_llgo_struct$4KcdkUR5FbDYt3NIiEtVCxQ6i6838GczSLNb-BPAixI", { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehash", ptr @"chan _llgo_int" }, i8 8, i8 8, i16 144, i32 4 }, align 8
@41 = private unnamed_addr constant [16 x i8] c"map[chan int]int", align 1
@"*map[chan _llgo_int]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 501491728, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 16 }, ptr null }, ptr @"map[chan _llgo_int]_llgo_int" }, align 8
@"_llgo_struct$4KcdkUR5FbDYt3NIiEtVCxQ6i6838GczSLNb-BPAixI" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 144, i64 144, i32 -1184082782, i8 8, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_struct$4KcdkUR5FbDYt3NIiEtVCxQ6i6838GczSLNb-BPAixI" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 84 }, ptr @"*_llgo_struct$4KcdkUR5FbDYt3NIiEtVCxQ6i6838GczSLNb-BPAixI" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$4KcdkUR5FbDYt3NIiEtVCxQ6i6838GczSLNb-BPAixI$fields", i64 4, i64 4 } }, align 8
@42 = private unnamed_addr constant [84 x i8] c"struct { topbits [8]uint8; keys [8]chan int; elems [8]int; overflow unsafe.Pointer }", align 1
@"*_llgo_struct$4KcdkUR5FbDYt3NIiEtVCxQ6i6838GczSLNb-BPAixI" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -592148459, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 84 }, ptr null }, ptr @"_llgo_struct$4KcdkUR5FbDYt3NIiEtVCxQ6i6838GczSLNb-BPAixI" }, align 8
@"[8]chan _llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 64, i32 -462547445, i8 8, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]chan _llgo_int" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 11 }, ptr @"*[8]chan _llgo_int" }, ptr @"chan _llgo_int", ptr @"[]chan _llgo_int", i64 8 }, align 8
@43 = private unnamed_addr constant [11 x i8] c"[8]chan int", align 1
@"*[8]chan _llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2030067792, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 11 }, ptr null }, ptr @"[8]chan _llgo_int" }, align 8
@"[]chan _llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 214104305, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 10 }, ptr @"*[]chan _llgo_int" }, ptr @"chan _llgo_int" }, align 8
@44 = private unnamed_addr constant [10 x i8] c"[]chan int", align 1
@"*[]chan _llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -385425152, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 10 }, ptr null }, ptr @"[]chan _llgo_int" }, align 8
@"_llgo_struct$4KcdkUR5FbDYt3NIiEtVCxQ6i6838GczSLNb-BPAixI$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 }, ptr @"[8]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 4 }, ptr @"[8]chan _llgo_int", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 5 }, ptr @"[8]_llgo_int", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 8 }, ptr @_llgo_Pointer, i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.M" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.MapType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -928142936, i8 5, i8 8, i8 8, i8 53, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.M" }, ptr @_llgo_int, ptr @_llgo_string, ptr @"_llgo_struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ", { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehash", ptr @_llgo_int }, i8 8, i8 16, i16 208, i32 4 }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@45 = private unnamed_addr constant [6 x i8] c"main.M", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.M" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1213381365, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.M" }, align 8
@"map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1422302973, i8 0, i8 8, i8 8, i8 53, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 17 }, ptr @"*map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0]_llgo_string" }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0", ptr @_llgo_string, ptr @"_llgo_struct$tJooAKjBfWFVdIN3UQAErvHaJ-wlhiEZpoJy2GckluU", { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehash", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0" }, i8 8, i8 16, i16 208, i32 4 }, align 8
@46 = private unnamed_addr constant [17 x i8] c"map[main.N]string", align 1
@"*map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -216263446, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 17 }, ptr null }, ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0]_llgo_string" }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -531504893, i8 13, i8 8, i8 8, i8 2, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1451283354, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0" }, align 8
@"_llgo_struct$tJooAKjBfWFVdIN3UQAErvHaJ-wlhiEZpoJy2GckluU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 208, i64 208, i32 -1223537830, i8 0, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_struct$tJooAKjBfWFVdIN3UQAErvHaJ-wlhiEZpoJy2GckluU" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 85 }, ptr @"*_llgo_struct$tJooAKjBfWFVdIN3UQAErvHaJ-wlhiEZpoJy2GckluU" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$tJooAKjBfWFVdIN3UQAErvHaJ-wlhiEZpoJy2GckluU$fields", i64 4, i64 4 } }, align 8
@47 = private unnamed_addr constant [85 x i8] c"struct { topbits [8]uint8; keys [8]main.N; elems [8]string; overflow unsafe.Pointer }", align 1
@"*_llgo_struct$tJooAKjBfWFVdIN3UQAErvHaJ-wlhiEZpoJy2GckluU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 597868386, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 85 }, ptr null }, ptr @"_llgo_struct$tJooAKjBfWFVdIN3UQAErvHaJ-wlhiEZpoJy2GckluU" }, align 8
@"[8]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 0, i32 -248464144, i8 8, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 9 }, ptr @"*[8]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0" }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0", ptr @"[]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0", i64 8 }, align 8
@48 = private unnamed_addr constant [9 x i8] c"[8]main.N", align 1
@"*[8]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -615844884, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 9 }, ptr null }, ptr @"[8]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0" }, align 8
@"[]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 1834209043, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 8 }, ptr @"*[]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0" }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0" }, align 8
@"*[]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1663940180, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 8 }, ptr null }, ptr @"[]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0" }, align 8
@"_llgo_struct$tJooAKjBfWFVdIN3UQAErvHaJ-wlhiEZpoJy2GckluU$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 }, ptr @"[8]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 4 }, ptr @"[8]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 5 }, ptr @"[8]_llgo_string", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 8 }, ptr @_llgo_Pointer, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8

define void @"github.com/goplus/llgo/cl/_testrt/makemap.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/makemap.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/makemap.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/makemap.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/cl/_testrt/makemap.make1"()
  call void @"github.com/goplus/llgo/cl/_testrt/makemap.make2"()
  call void @"github.com/goplus/llgo/cl/_testrt/makemap.make3"()
  call void @"github.com/goplus/llgo/cl/_testrt/makemap.make4"()
  call void @"github.com/goplus/llgo/cl/_testrt/makemap.make5"()
  call void @"github.com/goplus/llgo/cl/_testrt/makemap.make6"()
  call void @"github.com/goplus/llgo/cl/_testrt/makemap.make7"()
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/makemap.make1"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_int]_llgo_string", i64 0)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_int]_llgo_string", ptr %0, ptr %1)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 5 }, ptr %2, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %3, align 4
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_int]_llgo_string", ptr %0, ptr %3)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr %4, align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 3, ptr %5, align 4
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_int]_llgo_string", ptr %0, ptr %5)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 4 }, ptr %6, align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %7, align 4
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr @"map[_llgo_int]_llgo_string", ptr %0, ptr %7)
  %9 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %8, align 8
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %10, align 4
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr @"map[_llgo_int]_llgo_string", ptr %0, ptr %10)
  %12 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %11, align 8
  %13 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr @"map[_llgo_int]_llgo_string", ptr %0)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %15 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %14)
  %16 = extractvalue { i1, ptr, ptr } %15, 0
  br i1 %16, label %_llgo_11, label %_llgo_12

_llgo_2:                                          ; preds = %_llgo_13
  %17 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %68, 1
  %18 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %68, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 1 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_13
  %19 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr %0)
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_string]_llgo_int", i64 %19)
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr @"map[_llgo_int]_llgo_string", ptr %0)
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_3
  %22 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %21)
  %23 = extractvalue { i1, ptr, ptr } %22, 0
  br i1 %23, label %_llgo_14, label %_llgo_15

_llgo_5:                                          ; preds = %_llgo_16
  %24 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %76, 1
  %25 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %76, 2
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %25, ptr %26, align 8
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_string]_llgo_int", ptr %20, ptr %26)
  store i64 %24, ptr %27, align 4
  br label %_llgo_4

_llgo_6:                                          ; preds = %_llgo_16
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 4 }, ptr %28, align 8
  %29 = call { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr @"map[_llgo_string]_llgo_int", ptr %20, ptr %28)
  %30 = extractvalue { ptr, i1 } %29, 0
  %31 = load i64, ptr %30, align 4
  %32 = extractvalue { ptr, i1 } %29, 1
  %33 = insertvalue { i64, i1 } undef, i64 %31, 0
  %34 = insertvalue { i64, i1 } %33, i1 %32, 1
  %35 = extractvalue { i64, i1 } %34, 0
  %36 = extractvalue { i64, i1 } %34, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %35)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %36)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 2 }, ptr %37, align 8
  %38 = call { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr @"map[_llgo_string]_llgo_int", ptr %20, ptr %37)
  %39 = extractvalue { ptr, i1 } %38, 0
  %40 = load i64, ptr %39, align 4
  %41 = extractvalue { ptr, i1 } %38, 1
  %42 = insertvalue { i64, i1 } undef, i64 %40, 0
  %43 = insertvalue { i64, i1 } %42, i1 %41, 1
  %44 = extractvalue { i64, i1 } %43, 0
  %45 = extractvalue { i64, i1 } %43, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 2 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %44)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %45)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %46 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 4 }, ptr %46, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.MapDelete"(ptr @"map[_llgo_string]_llgo_int", ptr %20, ptr %46)
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 4 }, ptr %47, align 8
  %48 = call { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr @"map[_llgo_string]_llgo_int", ptr %20, ptr %47)
  %49 = extractvalue { ptr, i1 } %48, 0
  %50 = load i64, ptr %49, align 4
  %51 = extractvalue { ptr, i1 } %48, 1
  %52 = insertvalue { i64, i1 } undef, i64 %50, 0
  %53 = insertvalue { i64, i1 } %52, i1 %51, 1
  %54 = extractvalue { i64, i1 } %53, 0
  %55 = extractvalue { i64, i1 } %53, 1
  br i1 %55, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %56 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 7 }, ptr %56, align 8
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %56, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %57)
  unreachable

_llgo_8:                                          ; preds = %_llgo_6
  %58 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr %20)
  %59 = icmp ne i64 %58, 2
  br i1 %59, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %60 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 7 }, ptr %60, align 8
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %60, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %61)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  ret void

_llgo_11:                                         ; preds = %_llgo_1
  %62 = extractvalue { i1, ptr, ptr } %15, 1
  %63 = extractvalue { i1, ptr, ptr } %15, 2
  %64 = load i64, ptr %62, align 4
  %65 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %63, align 8
  %66 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" undef }, i64 %64, 1
  %67 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %66, %"github.com/goplus/llgo/runtime/internal/runtime.String" %65, 2
  br label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_1
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_11
  %68 = phi { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } [ %67, %_llgo_11 ], [ zeroinitializer, %_llgo_12 ]
  %69 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %68, 0
  br i1 %69, label %_llgo_2, label %_llgo_3

_llgo_14:                                         ; preds = %_llgo_4
  %70 = extractvalue { i1, ptr, ptr } %22, 1
  %71 = extractvalue { i1, ptr, ptr } %22, 2
  %72 = load i64, ptr %70, align 4
  %73 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %71, align 8
  %74 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" undef }, i64 %72, 1
  %75 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %74, %"github.com/goplus/llgo/runtime/internal/runtime.String" %73, 2
  br label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_4
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %76 = phi { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } [ %75, %_llgo_14 ], [ zeroinitializer, %_llgo_15 ]
  %77 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %76, 0
  br i1 %77, label %_llgo_5, label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/makemap.make2"() {
_llgo_0:
  %0 = alloca [1 x i64], align 8
  %1 = alloca [1 x i64], align 8
  %2 = alloca [1 x i64], align 8
  %3 = alloca [1 x i64], align 8
  %4 = alloca [1 x i64], align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_int]_llgo_string", i64 0)
  %6 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr %5)
  %7 = icmp eq ptr %5, null
  %8 = icmp ne ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %9 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 true)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_any]_llgo_int", i64 0)
  call void @llvm.memset(ptr %4, i8 0, i64 8, i1 false)
  %11 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = getelementptr inbounds i64, ptr %4, i64 0
  store i64 1, ptr %12, align 4
  %13 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = load [1 x i64], ptr %4, align 4
  %15 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %15)
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", ptr %16, ptr %4)
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", ptr undef }, ptr %16, 1
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %17, ptr %18, align 8
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_any]_llgo_int", ptr %10, ptr %18)
  store i64 100, ptr %19, align 4
  call void @llvm.memset(ptr %3, i8 0, i64 8, i1 false)
  %20 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = getelementptr inbounds i64, ptr %3, i64 0
  store i64 2, ptr %21, align 4
  %22 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load [1 x i64], ptr %3, align 4
  %24 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", ptr %25, ptr %3)
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", ptr undef }, ptr %25, 1
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %26, ptr %27, align 8
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_any]_llgo_int", ptr %10, ptr %27)
  store i64 200, ptr %28, align 4
  call void @llvm.memset(ptr %2, i8 0, i64 8, i1 false)
  %29 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %29)
  %30 = getelementptr inbounds i64, ptr %2, i64 0
  store i64 3, ptr %30, align 4
  %31 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %31)
  %32 = load [1 x i64], ptr %2, align 4
  %33 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %33)
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", ptr %34, ptr %2)
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", ptr undef }, ptr %34, 1
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %35, ptr %36, align 8
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_any]_llgo_int", ptr %10, ptr %36)
  store i64 300, ptr %37, align 4
  call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
  %38 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %38)
  %39 = getelementptr inbounds i64, ptr %1, i64 0
  store i64 2, ptr %39, align 4
  %40 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %40)
  %41 = load [1 x i64], ptr %1, align 4
  %42 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %42)
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", ptr %43, ptr %1)
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", ptr undef }, ptr %43, 1
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %44, ptr %45, align 8
  %46 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_any]_llgo_int", ptr %10, ptr %45)
  store i64 -200, ptr %46, align 4
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr @"map[_llgo_any]_llgo_int", ptr %10)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_7, %_llgo_0
  %48 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %47)
  %49 = extractvalue { i1, ptr, ptr } %48, 0
  br i1 %49, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %50 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %60, 1
  %51 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %60, 2
  %52 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %50, 0
  %53 = icmp eq ptr %52, @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1"
  br i1 %53, label %_llgo_7, label %_llgo_8

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %54 = extractvalue { i1, ptr, ptr } %48, 1
  %55 = extractvalue { i1, ptr, ptr } %48, 2
  %56 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %54, align 8
  %57 = load i64, ptr %55, align 4
  %58 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } { i1 true, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, i64 undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %56, 1
  %59 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %58, i64 %57, 2
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %60 = phi { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } [ %59, %_llgo_4 ], [ zeroinitializer, %_llgo_5 ]
  %61 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %60, 0
  br i1 %61, label %_llgo_2, label %_llgo_3

_llgo_7:                                          ; preds = %_llgo_2
  %62 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %50, 1
  %63 = load [1 x i64], ptr %62, align 4
  call void @llvm.memset(ptr %0, i8 0, i64 8, i1 false)
  store [1 x i64] %63, ptr %0, align 4
  %64 = getelementptr inbounds i64, ptr %0, i64 0
  %65 = load i64, ptr %64, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %65)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %51)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PanicTypeAssert"(ptr @_llgo_any, ptr %52, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1")
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testrt/makemap.make3"() {
_llgo_0:
  %0 = alloca [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], align 8
  %1 = alloca [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], align 8
  %2 = alloca [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], align 8
  %3 = alloca [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], align 8
  %4 = alloca [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], align 8
  call void @llvm.memset(ptr %4, i8 0, i64 2, i1 false)
  %5 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %4, i64 0
  %7 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %6, i32 0, i32 0
  %9 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %6, i32 0, i32 1
  store i8 1, ptr %8, align 1
  store i8 2, ptr %10, align 1
  %11 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = load [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], ptr %4, align 1
  %13 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", ptr %14, ptr %4)
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", ptr undef }, ptr %14, 1
  call void @llvm.memset(ptr %3, i8 0, i64 2, i1 false)
  %16 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %16)
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %3, i64 0
  %18 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %18)
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %17, i32 0, i32 0
  %20 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %17, i32 0, i32 1
  store i8 1, ptr %19, align 1
  store i8 2, ptr %21, align 1
  %22 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], ptr %3, align 1
  %24 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", ptr %25, ptr %3)
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", ptr undef }, ptr %25, 1
  %27 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %15, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_any]_llgo_int", i64 0)
  call void @llvm.memset(ptr %2, i8 0, i64 2, i1 false)
  %29 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %29)
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %2, i64 0
  %31 = icmp eq ptr %30, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %31)
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %30, i32 0, i32 0
  %33 = icmp eq ptr %30, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %33)
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %30, i32 0, i32 1
  store i8 1, ptr %32, align 1
  store i8 2, ptr %34, align 1
  %35 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %35)
  %36 = load [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], ptr %2, align 1
  %37 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", ptr %38, ptr %2)
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", ptr undef }, ptr %38, 1
  %40 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %39, ptr %40, align 8
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_any]_llgo_int", ptr %28, ptr %40)
  store i64 100, ptr %41, align 4
  call void @llvm.memset(ptr %1, i8 0, i64 2, i1 false)
  %42 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %42)
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %1, i64 0
  %44 = icmp eq ptr %43, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %44)
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %43, i32 0, i32 0
  %46 = icmp eq ptr %43, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %46)
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %43, i32 0, i32 1
  store i8 3, ptr %45, align 1
  store i8 4, ptr %47, align 1
  %48 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %48)
  %49 = load [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], ptr %1, align 1
  %50 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %50)
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", ptr %51, ptr %1)
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", ptr undef }, ptr %51, 1
  %53 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %52, ptr %53, align 8
  %54 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_any]_llgo_int", ptr %28, ptr %53)
  store i64 200, ptr %54, align 4
  %55 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr @"map[_llgo_any]_llgo_int", ptr %28)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_7, %_llgo_0
  %56 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %55)
  %57 = extractvalue { i1, ptr, ptr } %56, 0
  br i1 %57, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %58 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %68, 1
  %59 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %68, 2
  %60 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %58, 0
  %61 = icmp eq ptr %60, @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K"
  br i1 %61, label %_llgo_7, label %_llgo_8

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %62 = extractvalue { i1, ptr, ptr } %56, 1
  %63 = extractvalue { i1, ptr, ptr } %56, 2
  %64 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %62, align 8
  %65 = load i64, ptr %63, align 4
  %66 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } { i1 true, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, i64 undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %64, 1
  %67 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %66, i64 %65, 2
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %68 = phi { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } [ %67, %_llgo_4 ], [ zeroinitializer, %_llgo_5 ]
  %69 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %68, 0
  br i1 %69, label %_llgo_2, label %_llgo_3

_llgo_7:                                          ; preds = %_llgo_2
  %70 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %58, 1
  %71 = load [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], ptr %70, align 1
  call void @llvm.memset(ptr %0, i8 0, i64 2, i1 false)
  store [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"] %71, ptr %0, align 1
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %0, i64 0
  %73 = load %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %72, align 1
  %74 = extractvalue %"github.com/goplus/llgo/cl/_testrt/makemap.N" %73, 0
  %75 = sext i8 %74 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %75)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %59)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PanicTypeAssert"(ptr @_llgo_any, ptr %60, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K")
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testrt/makemap.make4"() {
_llgo_0:
  %0 = alloca [1 x ptr], align 8
  %1 = alloca [1 x ptr], align 8
  %2 = alloca [1 x ptr], align 8
  %3 = alloca [1 x ptr], align 8
  call void @llvm.memset(ptr %3, i8 0, i64 8, i1 false)
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = getelementptr inbounds ptr, ptr %3, i64 0
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 2)
  %7 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %6, i32 0, i32 0
  %9 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %6, i32 0, i32 1
  store i8 1, ptr %8, align 1
  store i8 2, ptr %10, align 1
  store ptr %6, ptr %5, align 8
  %11 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = load [1 x ptr], ptr %3, align 8
  %13 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = load [1 x ptr], ptr %3, align 8
  %15 = extractvalue [1 x ptr] %14, 0
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2", ptr undef }, ptr %15, 1
  call void @llvm.memset(ptr %2, i8 0, i64 8, i1 false)
  %17 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %17)
  %18 = getelementptr inbounds ptr, ptr %2, i64 0
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 2)
  %20 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %19, i32 0, i32 0
  %22 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %19, i32 0, i32 1
  store i8 1, ptr %21, align 1
  store i8 2, ptr %23, align 1
  store ptr %19, ptr %18, align 8
  %24 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load [1 x ptr], ptr %2, align 8
  %26 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load [1 x ptr], ptr %2, align 8
  %28 = extractvalue [1 x ptr] %27, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2", ptr undef }, ptr %28, 1
  %30 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %16, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %30)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_any]_llgo_int", i64 0)
  call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
  %32 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %32)
  %33 = getelementptr inbounds ptr, ptr %1, i64 0
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 2)
  %35 = icmp eq ptr %34, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %35)
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %34, i32 0, i32 0
  %37 = icmp eq ptr %34, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %34, i32 0, i32 1
  store i8 1, ptr %36, align 1
  store i8 2, ptr %38, align 1
  store ptr %34, ptr %33, align 8
  %39 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %39)
  %40 = load [1 x ptr], ptr %1, align 8
  %41 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %41)
  %42 = load [1 x ptr], ptr %1, align 8
  %43 = extractvalue [1 x ptr] %42, 0
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2", ptr undef }, ptr %43, 1
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %44, ptr %45, align 8
  %46 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_any]_llgo_int", ptr %31, ptr %45)
  store i64 100, ptr %46, align 4
  call void @llvm.memset(ptr %0, i8 0, i64 8, i1 false)
  %47 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %47)
  %48 = getelementptr inbounds ptr, ptr %0, i64 0
  %49 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 2)
  %50 = icmp eq ptr %49, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %50)
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %49, i32 0, i32 0
  %52 = icmp eq ptr %49, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %52)
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %49, i32 0, i32 1
  store i8 3, ptr %51, align 1
  store i8 4, ptr %53, align 1
  store ptr %49, ptr %48, align 8
  %54 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %54)
  %55 = load [1 x ptr], ptr %0, align 8
  %56 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %56)
  %57 = load [1 x ptr], ptr %0, align 8
  %58 = extractvalue [1 x ptr] %57, 0
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2", ptr undef }, ptr %58, 1
  %60 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %59, ptr %60, align 8
  %61 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_any]_llgo_int", ptr %31, ptr %60)
  store i64 200, ptr %61, align 4
  %62 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr @"map[_llgo_any]_llgo_int", ptr %31)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_7, %_llgo_0
  %63 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %62)
  %64 = extractvalue { i1, ptr, ptr } %63, 0
  br i1 %64, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %65 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %75, 1
  %66 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %75, 2
  %67 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %65, 0
  %68 = icmp eq ptr %67, @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2"
  br i1 %68, label %_llgo_7, label %_llgo_8

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %69 = extractvalue { i1, ptr, ptr } %63, 1
  %70 = extractvalue { i1, ptr, ptr } %63, 2
  %71 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %69, align 8
  %72 = load i64, ptr %70, align 4
  %73 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } { i1 true, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, i64 undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %71, 1
  %74 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %73, i64 %72, 2
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %75 = phi { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } [ %74, %_llgo_4 ], [ zeroinitializer, %_llgo_5 ]
  %76 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %75, 0
  br i1 %76, label %_llgo_2, label %_llgo_3

_llgo_7:                                          ; preds = %_llgo_2
  %77 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %65, 1
  %78 = icmp eq ptr %77, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %78)
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %77, i32 0, i32 0
  %80 = icmp eq ptr %79, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %80)
  %81 = load i8, ptr %79, align 1
  %82 = sext i8 %81 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %82)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %66)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PanicTypeAssert"(ptr @_llgo_any, ptr %67, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2")
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testrt/makemap.make5"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64 8, i64 0)
  %1 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"chan _llgo_int", ptr undef }, ptr %0, 1
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"chan _llgo_int", ptr undef }, ptr %0, 1
  %3 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %1, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[chan _llgo_int]_llgo_int", i64 0)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store ptr %0, ptr %5, align 8
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[chan _llgo_int]_llgo_int", ptr %4, ptr %5)
  store i64 100, ptr %6, align 4
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store ptr %0, ptr %7, align 8
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[chan _llgo_int]_llgo_int", ptr %4, ptr %7)
  store i64 200, ptr %8, align 4
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr @"map[chan _llgo_int]_llgo_int", ptr %4)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %10 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %9)
  %11 = extractvalue { i1, ptr, ptr } %10, 0
  br i1 %11, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %12 = extractvalue { i1, ptr, i64 } %20, 1
  %13 = extractvalue { i1, ptr, i64 } %20, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %14 = extractvalue { i1, ptr, ptr } %10, 1
  %15 = extractvalue { i1, ptr, ptr } %10, 2
  %16 = load ptr, ptr %14, align 8
  %17 = load i64, ptr %15, align 4
  %18 = insertvalue { i1, ptr, i64 } { i1 true, ptr undef, i64 undef }, ptr %16, 1
  %19 = insertvalue { i1, ptr, i64 } %18, i64 %17, 2
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %20 = phi { i1, ptr, i64 } [ %19, %_llgo_4 ], [ zeroinitializer, %_llgo_5 ]
  %21 = extractvalue { i1, ptr, i64 } %20, 0
  br i1 %21, label %_llgo_2, label %_llgo_3
}

define void @"github.com/goplus/llgo/cl/_testrt/makemap.make6"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_int]_llgo_string", i64 0)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.M", ptr %0, ptr %1)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 5 }, ptr %2, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.M", ptr %0)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %4 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %3)
  %5 = extractvalue { i1, ptr, ptr } %4, 0
  br i1 %5, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %6 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %14, 1
  %7 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %14, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %8 = extractvalue { i1, ptr, ptr } %4, 1
  %9 = extractvalue { i1, ptr, ptr } %4, 2
  %10 = load i64, ptr %8, align 4
  %11 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %9, align 8
  %12 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" undef }, i64 %10, 1
  %13 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %12, %"github.com/goplus/llgo/runtime/internal/runtime.String" %11, 2
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %14 = phi { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } [ %13, %_llgo_4 ], [ zeroinitializer, %_llgo_5 ]
  %15 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %14, 0
  br i1 %15, label %_llgo_2, label %_llgo_3
}

define void @"github.com/goplus/llgo/cl/_testrt/makemap.make7"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0]_llgo_string", i64 2)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0]_llgo_string", ptr %0, ptr %1)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 5 }, ptr %2, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %3, align 4
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0]_llgo_string", ptr %0, ptr %3)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr %4, align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0]_llgo_string", ptr %0)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %6 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %5)
  %7 = extractvalue { i1, ptr, ptr } %6, 0
  br i1 %7, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %8 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %19, 1
  %9 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %19, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_6
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %10, align 4
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0]_llgo_string", ptr %0, ptr %10)
  %12 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %11, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %13 = extractvalue { i1, ptr, ptr } %6, 1
  %14 = extractvalue { i1, ptr, ptr } %6, 2
  %15 = load i64, ptr %13, align 4
  %16 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %14, align 8
  %17 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" undef }, i64 %15, 1
  %18 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %17, %"github.com/goplus/llgo/runtime/internal/runtime.String" %16, 2
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %19 = phi { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } [ %18, %_llgo_4 ], [ zeroinitializer, %_llgo_5 ]
  %20 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %19, 0
  br i1 %20, label %_llgo_2, label %_llgo_3
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

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr, ptr, ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr, ptr)

declare { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr)

declare { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.MapDelete"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %1, ptr %2)
  ret i1 %3
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PanicTypeAssert"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64, i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
