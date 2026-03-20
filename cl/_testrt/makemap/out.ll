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
@"map[_llgo_int]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2084636366, i8 0, i8 8, i8 8, i8 53, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 14 }, ptr @"*map[_llgo_int]_llgo_string" }, ptr @_llgo_int, ptr @_llgo_string, ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ", { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehash", ptr @_llgo_int }, i8 8, i8 16, i16 208, i32 4 }, align 8
@0 = private unnamed_addr constant [14 x i8] c"map[int]string", align 1
@"*map[_llgo_int]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 668541983, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 14 }, ptr null }, ptr @"map[_llgo_int]_llgo_string" }, align 8
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 2, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 3 }, ptr @"*_llgo_int" }, align 8
@1 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr @"*_llgo_string" }, align 8
@2 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"github.com/goplus/llgo/cl/_testrt/makemap.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 208, i64 208, i32 852563527, i8 0, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 82 }, ptr @"*github.com/goplus/llgo/cl/_testrt/makemap.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ$fields", i64 4, i64 4 } }, align 8
@3 = private unnamed_addr constant [82 x i8] c"struct { topbits [8]uint8; keys [8]int; elems [8]string; overflow unsafe.Pointer }", align 1
@"*github.com/goplus/llgo/cl/_testrt/makemap.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 464772172, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 82 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" }, align 8
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
@"github.com/goplus/llgo/cl/_testrt/makemap.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 }, ptr @"[8]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 4 }, ptr @"[8]_llgo_int", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 5 }, ptr @"[8]_llgo_string", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 8 }, ptr @_llgo_Pointer, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@16 = private unnamed_addr constant [5 x i8] c"hello", align 1
@17 = private unnamed_addr constant [5 x i8] c"world", align 1
@18 = private unnamed_addr constant [4 x i8] c"llgo", align 1
@19 = private unnamed_addr constant [1 x i8] c":", align 1
@"map[_llgo_string]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1641501154, i8 0, i8 8, i8 8, i8 53, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 14 }, ptr @"*map[_llgo_string]_llgo_int" }, ptr @_llgo_string, ptr @_llgo_int, ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc", { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehash", ptr @_llgo_string }, i8 16, i8 8, i16 208, i32 12 }, align 8
@20 = private unnamed_addr constant [14 x i8] c"map[string]int", align 1
@"*map[_llgo_string]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 762774621, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 14 }, ptr null }, ptr @"map[_llgo_string]_llgo_int" }, align 8
@"github.com/goplus/llgo/cl/_testrt/makemap.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 208, i64 208, i32 -731533550, i8 0, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 82 }, ptr @"*github.com/goplus/llgo/cl/_testrt/makemap.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc$fields", i64 4, i64 4 } }, align 8
@21 = private unnamed_addr constant [82 x i8] c"struct { topbits [8]uint8; keys [8]string; elems [8]int; overflow unsafe.Pointer }", align 1
@"*github.com/goplus/llgo/cl/_testrt/makemap.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -556211674, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 82 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" }, align 8
@"github.com/goplus/llgo/cl/_testrt/makemap.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 }, ptr @"[8]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 4 }, ptr @"[8]_llgo_string", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 5 }, ptr @"[8]_llgo_int", i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 8 }, ptr @_llgo_Pointer, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@22 = private unnamed_addr constant [2 x i8] c"go", align 1
@23 = private unnamed_addr constant [7 x i8] c"bad key", align 1
@24 = private unnamed_addr constant [7 x i8] c"bad len", align 1
@"map[_llgo_any]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1757098085, i8 0, i8 8, i8 8, i8 53, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 20 }, ptr @"*map[_llgo_any]_llgo_int" }, ptr @_llgo_any, ptr @_llgo_int, ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$9fzK8iv9NREHM30G-Ea6p38YjudCiRiAagptdq1kJbs", { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehash", ptr @_llgo_any }, i8 16, i8 8, i16 208, i32 24 }, align 8
@25 = private unnamed_addr constant [20 x i8] c"map[interface {}]int", align 1
@"*map[_llgo_any]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 704453536, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 20 }, ptr null }, ptr @"map[_llgo_any]_llgo_int" }, align 8
@_llgo_any = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1376530322, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 12 }, ptr @"*_llgo_any" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@26 = private unnamed_addr constant [12 x i8] c"interface {}", align 1
@"*_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1741196194, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 12 }, ptr null }, ptr @_llgo_any }, align 8
@27 = private unnamed_addr constant [41 x i8] c"github.com/goplus/llgo/cl/_testrt/makemap", align 1
@"github.com/goplus/llgo/cl/_testrt/makemap.struct$9fzK8iv9NREHM30G-Ea6p38YjudCiRiAagptdq1kJbs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 208, i64 208, i32 23526460, i8 0, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$9fzK8iv9NREHM30G-Ea6p38YjudCiRiAagptdq1kJbs" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 88 }, ptr @"*github.com/goplus/llgo/cl/_testrt/makemap.struct$9fzK8iv9NREHM30G-Ea6p38YjudCiRiAagptdq1kJbs" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$9fzK8iv9NREHM30G-Ea6p38YjudCiRiAagptdq1kJbs$fields", i64 4, i64 4 } }, align 8
@28 = private unnamed_addr constant [88 x i8] c"struct { topbits [8]uint8; keys [8]interface {}; elems [8]int; overflow unsafe.Pointer }", align 1
@"*github.com/goplus/llgo/cl/_testrt/makemap.struct$9fzK8iv9NREHM30G-Ea6p38YjudCiRiAagptdq1kJbs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1437071136, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 88 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$9fzK8iv9NREHM30G-Ea6p38YjudCiRiAagptdq1kJbs" }, align 8
@"[8]_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 128, i64 128, i32 1470789279, i8 0, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_any" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 15 }, ptr @"*[8]_llgo_any" }, ptr @_llgo_any, ptr @"[]_llgo_any", i64 8 }, align 8
@29 = private unnamed_addr constant [15 x i8] c"[8]interface {}", align 1
@"*[8]_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -281120639, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 15 }, ptr null }, ptr @"[8]_llgo_any" }, align 8
@"[]_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -396233978, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 14 }, ptr @"*[]_llgo_any" }, ptr @_llgo_any }, align 8
@30 = private unnamed_addr constant [14 x i8] c"[]interface {}", align 1
@"*[]_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1171476965, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 14 }, ptr null }, ptr @"[]_llgo_any" }, align 8
@"github.com/goplus/llgo/cl/_testrt/makemap.struct$9fzK8iv9NREHM30G-Ea6p38YjudCiRiAagptdq1kJbs$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 }, ptr @"[8]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 4 }, ptr @"[8]_llgo_any", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 5 }, ptr @"[8]_llgo_int", i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 8 }, ptr @_llgo_Pointer, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.ArrayType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 1575369363, i8 13, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 7 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1" }, ptr @_llgo_int, ptr @"[]_llgo_int", i64 1 }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@31 = private unnamed_addr constant [7 x i8] c"main.N1", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 180030794, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 7 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1" }, align 8
@32 = private unnamed_addr constant [14 x i8] c"interface {  }", align 1
@33 = private unnamed_addr constant [44 x i8] c"github.com/goplus/llgo/cl/_testrt/makemap.N1", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.ArrayType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 2, i64 0, i32 -606356617, i8 13, i8 1, i8 1, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K" }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", ptr @"[]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", i64 1 }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@34 = private unnamed_addr constant [6 x i8] c"main.K", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1592755158, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K" }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 2, i64 0, i32 -1436087883, i8 13, i8 1, i8 1, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$e65EDK9vxC36Nz3YTgO1ulssLlNH03Bva_WWaCjH-4A$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@35 = private unnamed_addr constant [6 x i8] c"main.N", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 274039324, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" }, align 8
@36 = private unnamed_addr constant [2 x i8] c"n1", align 1
@_llgo_int8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 1444672578, i8 12, i8 1, i8 1, i8 3, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @"*_llgo_int8" }, align 8
@37 = private unnamed_addr constant [4 x i8] c"int8", align 1
@"*_llgo_int8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1399554408, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr null }, ptr @_llgo_int8 }, align 8
@38 = private unnamed_addr constant [2 x i8] c"n2", align 1
@"github.com/goplus/llgo/cl/_testrt/makemap.struct$e65EDK9vxC36Nz3YTgO1ulssLlNH03Bva_WWaCjH-4A$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 2 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 2 }, ptr @_llgo_int8, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"[]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 1367285445, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 8 }, ptr @"*[]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" }, align 8
@39 = private unnamed_addr constant [8 x i8] c"[]main.N", align 1
@"*[]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1800078399, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 8 }, ptr null }, ptr @"[]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" }, align 8
@40 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testrt/makemap.K", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.ArrayType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 700304692, i8 13, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 7 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2" }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", ptr @"[]*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", i64 1 }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@41 = private unnamed_addr constant [7 x i8] c"main.K2", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -107137747, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 7 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2" }, align 8
@"[]*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -134178614, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 9 }, ptr @"*[]*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" }, align 8
@42 = private unnamed_addr constant [9 x i8] c"[]*main.N", align 1
@"*[]*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1993310787, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 9 }, ptr null }, ptr @"[]*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" }, align 8
@43 = private unnamed_addr constant [44 x i8] c"github.com/goplus/llgo/cl/_testrt/makemap.K2", align 1
@"chan _llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ChanType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1550885616, i8 8, i8 8, i8 8, i8 50, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 8 }, ptr @"*chan _llgo_int" }, ptr @_llgo_int, i64 3 }, align 8
@44 = private unnamed_addr constant [8 x i8] c"chan int", align 1
@"*chan _llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -751933087, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 8 }, ptr null }, ptr @"chan _llgo_int" }, align 8
@"map[chan _llgo_int]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1193918658, i8 0, i8 8, i8 8, i8 53, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 16 }, ptr @"*map[chan _llgo_int]_llgo_int" }, ptr @"chan _llgo_int", ptr @_llgo_int, ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$4KcdkUR5FbDYt3NIiEtVCxQ6i6838GczSLNb-BPAixI", { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehash", ptr @"chan _llgo_int" }, i8 8, i8 8, i16 144, i32 4 }, align 8
@45 = private unnamed_addr constant [16 x i8] c"map[chan int]int", align 1
@"*map[chan _llgo_int]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 501491728, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 16 }, ptr null }, ptr @"map[chan _llgo_int]_llgo_int" }, align 8
@"github.com/goplus/llgo/cl/_testrt/makemap.struct$4KcdkUR5FbDYt3NIiEtVCxQ6i6838GczSLNb-BPAixI" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 144, i64 144, i32 -1404142371, i8 8, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$4KcdkUR5FbDYt3NIiEtVCxQ6i6838GczSLNb-BPAixI" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 84 }, ptr @"*github.com/goplus/llgo/cl/_testrt/makemap.struct$4KcdkUR5FbDYt3NIiEtVCxQ6i6838GczSLNb-BPAixI" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$4KcdkUR5FbDYt3NIiEtVCxQ6i6838GczSLNb-BPAixI$fields", i64 4, i64 4 } }, align 8
@46 = private unnamed_addr constant [84 x i8] c"struct { topbits [8]uint8; keys [8]chan int; elems [8]int; overflow unsafe.Pointer }", align 1
@"*github.com/goplus/llgo/cl/_testrt/makemap.struct$4KcdkUR5FbDYt3NIiEtVCxQ6i6838GczSLNb-BPAixI" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 460156441, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 84 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$4KcdkUR5FbDYt3NIiEtVCxQ6i6838GczSLNb-BPAixI" }, align 8
@"[8]chan _llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 64, i32 -462547445, i8 8, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]chan _llgo_int" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 11 }, ptr @"*[8]chan _llgo_int" }, ptr @"chan _llgo_int", ptr @"[]chan _llgo_int", i64 8 }, align 8
@47 = private unnamed_addr constant [11 x i8] c"[8]chan int", align 1
@"*[8]chan _llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2030067792, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 11 }, ptr null }, ptr @"[8]chan _llgo_int" }, align 8
@"[]chan _llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 214104305, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 10 }, ptr @"*[]chan _llgo_int" }, ptr @"chan _llgo_int" }, align 8
@48 = private unnamed_addr constant [10 x i8] c"[]chan int", align 1
@"*[]chan _llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -385425152, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 10 }, ptr null }, ptr @"[]chan _llgo_int" }, align 8
@"github.com/goplus/llgo/cl/_testrt/makemap.struct$4KcdkUR5FbDYt3NIiEtVCxQ6i6838GczSLNb-BPAixI$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 }, ptr @"[8]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 4 }, ptr @"[8]chan _llgo_int", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 5 }, ptr @"[8]_llgo_int", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 8 }, ptr @_llgo_Pointer, i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.M" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.MapType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -928142936, i8 5, i8 8, i8 8, i8 21, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.M" }, ptr @_llgo_int, ptr @_llgo_string, ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ", { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehash", ptr @_llgo_int }, i8 8, i8 16, i16 208, i32 4 }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@49 = private unnamed_addr constant [6 x i8] c"main.M", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.M" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1213381365, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.M" }, align 8
@"map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.0.7]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1509960736, i8 0, i8 8, i8 8, i8 53, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 17 }, ptr @"*map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.0.7]_llgo_string" }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.0.7", ptr @_llgo_string, ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$ws3s9hUQypYILGSHcy8spXz46axi_uE_hYji6FIeFOs", { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehash", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.0.7" }, i8 8, i8 16, i16 208, i32 4 }, align 8
@50 = private unnamed_addr constant [17 x i8] c"map[main.N]string", align 1
@"*map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.0.7]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1247585167, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 17 }, ptr null }, ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.0.7]_llgo_string" }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.0.7" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1509397800, i8 13, i8 8, i8 8, i8 2, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.0.7" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.0.7" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -394273570, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.0.7" }, align 8
@"github.com/goplus/llgo/cl/_testrt/makemap.struct$ws3s9hUQypYILGSHcy8spXz46axi_uE_hYji6FIeFOs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 208, i64 208, i32 78128008, i8 0, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$ws3s9hUQypYILGSHcy8spXz46axi_uE_hYji6FIeFOs" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 85 }, ptr @"*github.com/goplus/llgo/cl/_testrt/makemap.struct$ws3s9hUQypYILGSHcy8spXz46axi_uE_hYji6FIeFOs" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$ws3s9hUQypYILGSHcy8spXz46axi_uE_hYji6FIeFOs$fields", i64 4, i64 4 } }, align 8
@51 = private unnamed_addr constant [85 x i8] c"struct { topbits [8]uint8; keys [8]main.N; elems [8]string; overflow unsafe.Pointer }", align 1
@"*github.com/goplus/llgo/cl/_testrt/makemap.struct$ws3s9hUQypYILGSHcy8spXz46axi_uE_hYji6FIeFOs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -225034983, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 85 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$ws3s9hUQypYILGSHcy8spXz46axi_uE_hYji6FIeFOs" }, align 8
@"[8]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.0.7" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 0, i32 49018315, i8 8, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.0.7" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 9 }, ptr @"*[8]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.0.7" }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.0.7", ptr @"[]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.0.7", i64 8 }, align 8
@52 = private unnamed_addr constant [9 x i8] c"[8]main.N", align 1
@"*[8]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.0.7" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1577962221, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 9 }, ptr null }, ptr @"[8]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.0.7" }, align 8
@"[]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.0.7" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 403271817, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 8 }, ptr @"*[]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.0.7" }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.0.7" }, align 8
@"*[]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.0.7" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1394280932, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 8 }, ptr null }, ptr @"[]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.0.7" }, align 8
@"github.com/goplus/llgo/cl/_testrt/makemap.struct$ws3s9hUQypYILGSHcy8spXz46axi_uE_hYji6FIeFOs$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 }, ptr @"[8]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 4 }, ptr @"[8]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.0.7", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 5 }, ptr @"[8]_llgo_string", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 8 }, ptr @_llgo_Pointer, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8

define void @"github.com/goplus/llgo/cl/_testrt/makemap.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
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
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/makemap.make1"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %0)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/makemap.make2"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/makemap.make3"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %2)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/makemap.make4"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/makemap.make5"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %4)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/makemap.make6"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %5)
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/makemap.make7"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %6)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/makemap.make1"() {
_llgo_0:
  %0 = alloca ptr, align 8
  %1 = alloca { i64, i64 }, align 8
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %2, align 8
  %3 = alloca { i64, i64 }, align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %4, align 8
  %5 = alloca { i64, i64 }, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  %7 = alloca { i64, i64 }, align 8
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %8, align 8
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_int]_llgo_string", i64 0)
  store ptr %9, ptr %0, align 8
  %10 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = load ptr, ptr %0, align 8
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %12, align 4
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_int]_llgo_string", ptr %11, ptr %12)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 5 }, ptr %13, align 8
  call void @llvm.memset(ptr %12, i8 0, i64 8, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  %14 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %14)
  %15 = load ptr, ptr %0, align 8
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %16, align 4
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_int]_llgo_string", ptr %15, ptr %16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr %17, align 8
  call void @llvm.memset(ptr %16, i8 0, i64 8, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  %18 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %18)
  %19 = load ptr, ptr %0, align 8
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 3, ptr %20, align 4
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_int]_llgo_string", ptr %19, ptr %20)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 4 }, ptr %21, align 8
  call void @llvm.memset(ptr %20, i8 0, i64 8, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  %22 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load ptr, ptr %0, align 8
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %24, align 4
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr @"map[_llgo_int]_llgo_string", ptr %23, ptr %24)
  %26 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %25, align 8
  call void @llvm.memset(ptr %24, i8 0, i64 8, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %24, i64 8)
  %28 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %27, ptr %28, align 8
  %29 = icmp eq ptr %28, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %29)
  %30 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %28, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %30, ptr %2, align 8
  %31 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %30, 0
  %32 = ptrtoint ptr %31 to i64
  %33 = and i64 %32, 72057594037927935
  %34 = xor i64 %33, 25399393228665167
  %35 = shl i64 %34, 17
  %36 = select i1 false, i64 0, i64 %35
  %37 = lshr i64 %34, 39
  %38 = select i1 false, i64 0, i64 %37
  %39 = or i64 %36, %38
  %40 = and i64 %39, 72057594037927935
  %41 = or i64 %40, -6557241057451442176
  %42 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %30, 1
  %43 = insertvalue { i64, i64 } undef, i64 %41, 0
  %44 = insertvalue { i64, i64 } %43, i64 %42, 1
  store { i64, i64 } %44, ptr %1, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %28, align 8
  call void @runtime.TouchConservativeSlot(ptr %28, i64 16)
  call void @runtime.ClobberPointerRegs()
  %45 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = load ptr, ptr %0, align 8
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %47, align 4
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr @"map[_llgo_int]_llgo_string", ptr %46, ptr %47)
  %49 = icmp eq ptr %48, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %49)
  %50 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %48, align 8
  call void @llvm.memset(ptr %47, i8 0, i64 8, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %47, i64 8)
  %51 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %50, ptr %51, align 8
  %52 = icmp eq ptr %51, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %52)
  %53 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %51, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %53, ptr %4, align 8
  %54 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %53, 0
  %55 = ptrtoint ptr %54 to i64
  %56 = and i64 %55, 72057594037927935
  %57 = xor i64 %56, 25399393228665167
  %58 = shl i64 %57, 17
  %59 = select i1 false, i64 0, i64 %58
  %60 = lshr i64 %57, 39
  %61 = select i1 false, i64 0, i64 %60
  %62 = or i64 %59, %61
  %63 = and i64 %62, 72057594037927935
  %64 = or i64 %63, -6557241057451442176
  %65 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %53, 1
  %66 = insertvalue { i64, i64 } undef, i64 %64, 0
  %67 = insertvalue { i64, i64 } %66, i64 %65, 1
  store { i64, i64 } %67, ptr %3, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %51, align 8
  call void @runtime.TouchConservativeSlot(ptr %51, i64 16)
  call void @runtime.ClobberPointerRegs()
  %68 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %69 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %69)
  %70 = load ptr, ptr %0, align 8
  %71 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr %70)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %68)
  %72 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %73 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %73)
  %74 = load ptr, ptr %0, align 8
  %75 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %75)
  %76 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, align 8
  %77 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %77)
  %78 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %4, align 8
  store { i64, i64 } zeroinitializer, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 16)
  store { i64, i64 } zeroinitializer, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %74)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %76)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %78)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %71)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %72)
  %79 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %79)
  %80 = load ptr, ptr %0, align 8
  %81 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewRangeMapIter"(ptr @"map[_llgo_int]_llgo_string", ptr %80)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %82 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.RangeMapIterNext"(ptr %81)
  %83 = extractvalue { i1, ptr, ptr } %82, 0
  br i1 %83, label %_llgo_11, label %_llgo_12

_llgo_2:                                          ; preds = %_llgo_13
  %84 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %85 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %153, 1
  %86 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %153, 2
  %87 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %86, ptr %87, align 8
  %88 = icmp eq ptr %87, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %88)
  %89 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %87, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %89, ptr %6, align 8
  %90 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %89, 0
  %91 = ptrtoint ptr %90 to i64
  %92 = and i64 %91, 72057594037927935
  %93 = xor i64 %92, 25399393228665167
  %94 = shl i64 %93, 17
  %95 = select i1 false, i64 0, i64 %94
  %96 = lshr i64 %93, 39
  %97 = select i1 false, i64 0, i64 %96
  %98 = or i64 %95, %97
  %99 = and i64 %98, 72057594037927935
  %100 = or i64 %99, -6557241057451442176
  %101 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %89, 1
  %102 = insertvalue { i64, i64 } undef, i64 %100, 0
  %103 = insertvalue { i64, i64 } %102, i64 %101, 1
  store { i64, i64 } %103, ptr %5, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %87, align 8
  call void @runtime.TouchConservativeSlot(ptr %87, i64 16)
  call void @runtime.ClobberPointerRegs()
  %104 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %104)
  %105 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %6, align 8
  store { i64, i64 } zeroinitializer, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %85)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 1 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %105)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %84)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_13
  %106 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %107 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %107)
  %108 = load ptr, ptr %0, align 8
  %109 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr %108)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %106)
  %110 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_string]_llgo_int", i64 %109)
  %111 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %111)
  %112 = load ptr, ptr %0, align 8
  %113 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewRangeMapIter"(ptr @"map[_llgo_int]_llgo_string", ptr %112)
  store ptr null, ptr %0, align 8
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  call void @runtime.ClobberPointerRegs()
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_3
  %114 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.RangeMapIterNext"(ptr %113)
  %115 = extractvalue { i1, ptr, ptr } %114, 0
  br i1 %115, label %_llgo_14, label %_llgo_15

_llgo_5:                                          ; preds = %_llgo_16
  %116 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %161, 1
  %117 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %161, 2
  %118 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %117, ptr %118, align 8
  %119 = icmp eq ptr %118, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %119)
  %120 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %118, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %120, ptr %8, align 8
  %121 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %120, 0
  %122 = ptrtoint ptr %121 to i64
  %123 = and i64 %122, 72057594037927935
  %124 = xor i64 %123, 25399393228665167
  %125 = shl i64 %124, 17
  %126 = select i1 false, i64 0, i64 %125
  %127 = lshr i64 %124, 39
  %128 = select i1 false, i64 0, i64 %127
  %129 = or i64 %126, %128
  %130 = and i64 %129, 72057594037927935
  %131 = or i64 %130, -6557241057451442176
  %132 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %120, 1
  %133 = insertvalue { i64, i64 } undef, i64 %131, 0
  %134 = insertvalue { i64, i64 } %133, i64 %132, 1
  store { i64, i64 } %134, ptr %7, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %118, align 8
  call void @runtime.TouchConservativeSlot(ptr %118, i64 16)
  call void @runtime.ClobberPointerRegs()
  %135 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_string]_llgo_int", ptr %110, ptr %8)
  store i64 %116, ptr %135, align 4
  store { i64, i64 } zeroinitializer, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  call void @runtime.ClobberPointerRegs()
  store { i64, i64 } zeroinitializer, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  call void @runtime.ClobberPointerRegs()
  br label %_llgo_4

_llgo_6:                                          ; preds = %_llgo_16
  %136 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 4 }, ptr %136, align 8
  %137 = call { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr @"map[_llgo_string]_llgo_int", ptr %110, ptr %136)
  %138 = extractvalue { ptr, i1 } %137, 1
  call void @llvm.memset(ptr %136, i8 0, i64 16, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %136, i64 16)
  %139 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 0, ptr %139, align 4
  br i1 %138, label %_llgo_17, label %_llgo_18

_llgo_7:                                          ; preds = %_llgo_22
  %140 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 7 }, ptr %140, align 8
  %141 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %140, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %141)
  unreachable

_llgo_8:                                          ; preds = %_llgo_22
  %142 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %143 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr %110)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %142)
  %144 = icmp ne i64 %143, 2
  br i1 %144, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %145 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 7 }, ptr %145, align 8
  %146 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %145, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %146)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  ret void

_llgo_11:                                         ; preds = %_llgo_1
  %147 = extractvalue { i1, ptr, ptr } %82, 1
  %148 = extractvalue { i1, ptr, ptr } %82, 2
  %149 = load i64, ptr %147, align 4
  %150 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %148, align 8
  %151 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" undef }, i64 %149, 1
  %152 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %151, %"github.com/goplus/llgo/runtime/internal/runtime.String" %150, 2
  br label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_1
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_11
  %153 = phi { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } [ %152, %_llgo_11 ], [ zeroinitializer, %_llgo_12 ]
  %154 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %153, 0
  br i1 %154, label %_llgo_2, label %_llgo_3

_llgo_14:                                         ; preds = %_llgo_4
  %155 = extractvalue { i1, ptr, ptr } %114, 1
  %156 = extractvalue { i1, ptr, ptr } %114, 2
  %157 = load i64, ptr %155, align 4
  %158 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %156, align 8
  %159 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" undef }, i64 %157, 1
  %160 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %159, %"github.com/goplus/llgo/runtime/internal/runtime.String" %158, 2
  br label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_4
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %161 = phi { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } [ %160, %_llgo_14 ], [ zeroinitializer, %_llgo_15 ]
  %162 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %161, 0
  br i1 %162, label %_llgo_5, label %_llgo_6

_llgo_17:                                         ; preds = %_llgo_6
  %163 = extractvalue { ptr, i1 } %137, 0
  %164 = icmp eq ptr %163, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %164)
  %165 = load i64, ptr %163, align 4
  store i64 %165, ptr %139, align 4
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_6
  %166 = icmp eq ptr %139, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %166)
  %167 = load i64, ptr %139, align 4
  %168 = insertvalue { i64, i1 } undef, i64 %167, 0
  %169 = insertvalue { i64, i1 } %168, i1 %138, 1
  %170 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %171 = extractvalue { i64, i1 } %169, 0
  %172 = extractvalue { i64, i1 } %169, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %171)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %172)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %170)
  %173 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 2 }, ptr %173, align 8
  %174 = call { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr @"map[_llgo_string]_llgo_int", ptr %110, ptr %173)
  %175 = extractvalue { ptr, i1 } %174, 1
  call void @llvm.memset(ptr %173, i8 0, i64 16, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %173, i64 16)
  %176 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 0, ptr %176, align 4
  br i1 %175, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %177 = extractvalue { ptr, i1 } %174, 0
  %178 = icmp eq ptr %177, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %178)
  %179 = load i64, ptr %177, align 4
  store i64 %179, ptr %176, align 4
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %180 = icmp eq ptr %176, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %180)
  %181 = load i64, ptr %176, align 4
  %182 = insertvalue { i64, i1 } undef, i64 %181, 0
  %183 = insertvalue { i64, i1 } %182, i1 %175, 1
  %184 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %185 = extractvalue { i64, i1 } %183, 0
  %186 = extractvalue { i64, i1 } %183, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 2 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %185)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %186)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %184)
  %187 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %188 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 4 }, ptr %188, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.MapDelete"(ptr @"map[_llgo_string]_llgo_int", ptr %110, ptr %188)
  call void @llvm.memset(ptr %188, i8 0, i64 16, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %188, i64 16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %187)
  %189 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 4 }, ptr %189, align 8
  %190 = call { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr @"map[_llgo_string]_llgo_int", ptr %110, ptr %189)
  %191 = extractvalue { ptr, i1 } %190, 1
  call void @llvm.memset(ptr %189, i8 0, i64 16, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %189, i64 16)
  %192 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 0, ptr %192, align 4
  br i1 %191, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %193 = extractvalue { ptr, i1 } %190, 0
  %194 = icmp eq ptr %193, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %194)
  %195 = load i64, ptr %193, align 4
  store i64 %195, ptr %192, align 4
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %196 = icmp eq ptr %192, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %196)
  %197 = load i64, ptr %192, align 4
  %198 = insertvalue { i64, i1 } undef, i64 %197, 0
  %199 = insertvalue { i64, i1 } %198, i1 %191, 1
  %200 = extractvalue { i64, i1 } %199, 0
  %201 = extractvalue { i64, i1 } %199, 1
  call void @runtime.ClobberPointerRegs()
  br i1 %201, label %_llgo_7, label %_llgo_8

_llgo_23:                                         ; No predecessors!
  unreachable

_llgo_24:                                         ; No predecessors!
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testrt/makemap.make2"() {
_llgo_0:
  %0 = alloca ptr, align 8
  %1 = alloca ptr, align 8
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr null, ptr %7, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  store ptr null, ptr %9, align 8
  %10 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_int]_llgo_string", i64 0)
  store ptr %11, ptr %0, align 8
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %13 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = load ptr, ptr %0, align 8
  %15 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %12)
  %16 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %16)
  %17 = load ptr, ptr %0, align 8
  %18 = icmp eq ptr %17, null
  %19 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = load ptr, ptr %0, align 8
  %21 = icmp ne ptr %20, null
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %23 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load ptr, ptr %0, align 8
  store ptr null, ptr %0, align 8
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %22)
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %26 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %25)
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 true)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %27)
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_any]_llgo_int", i64 0)
  store ptr %28, ptr %1, align 8
  %29 = alloca [1 x i64], align 8
  call void @llvm.memset(ptr %29, i8 0, i64 8, i1 false)
  %30 = icmp eq ptr %29, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %30)
  %31 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %32 = getelementptr inbounds i64, ptr %29, i64 %31
  %33 = ptrtoint ptr %32 to i64
  %34 = and i64 %33, 72057594037927935
  %35 = xor i64 %34, 25399393228665167
  %36 = shl i64 %35, 17
  %37 = select i1 false, i64 0, i64 %36
  %38 = lshr i64 %35, 39
  %39 = select i1 false, i64 0, i64 %38
  %40 = or i64 %37, %39
  %41 = and i64 %40, 72057594037927935
  %42 = or i64 %41, -6557241057451442176
  store i64 %42, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %42)
  call void @runtime.ClobberPointerRegs()
  %43 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = load i64, ptr %2, align 4
  %45 = alloca i64, align 8
  store i64 1, ptr %45, align 4
  call void @runtime.StoreHiddenPointee(i64 %44, ptr %45, i64 8)
  store i64 0, ptr %45, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %46 = icmp eq ptr %29, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %46)
  %47 = load [1 x i64], ptr %29, align 4
  store [1 x i64] zeroinitializer, ptr %29, align 4
  call void @runtime.ClobberPointerRegs()
  %48 = icmp eq ptr %29, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %48)
  %49 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", ptr %49, ptr %29)
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", ptr undef }, ptr %49, 1
  %51 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %51)
  %52 = load ptr, ptr %1, align 8
  %53 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %50, ptr %53, align 8
  %54 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_any]_llgo_int", ptr %52, ptr %53)
  store i64 100, ptr %54, align 4
  call void @llvm.memset(ptr %53, i8 0, i64 16, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %53, i64 16)
  %55 = alloca [1 x i64], align 8
  call void @llvm.memset(ptr %55, i8 0, i64 8, i1 false)
  %56 = icmp eq ptr %55, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %56)
  %57 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %58 = getelementptr inbounds i64, ptr %55, i64 %57
  %59 = ptrtoint ptr %58 to i64
  %60 = and i64 %59, 72057594037927935
  %61 = xor i64 %60, 25399393228665167
  %62 = shl i64 %61, 17
  %63 = select i1 false, i64 0, i64 %62
  %64 = lshr i64 %61, 39
  %65 = select i1 false, i64 0, i64 %64
  %66 = or i64 %63, %65
  %67 = and i64 %66, 72057594037927935
  %68 = or i64 %67, -6557241057451442176
  store i64 %68, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %68)
  call void @runtime.ClobberPointerRegs()
  %69 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %69)
  %70 = load i64, ptr %4, align 4
  %71 = alloca i64, align 8
  store i64 2, ptr %71, align 4
  call void @runtime.StoreHiddenPointee(i64 %70, ptr %71, i64 8)
  store i64 0, ptr %71, align 4
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %72 = icmp eq ptr %55, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %72)
  %73 = load [1 x i64], ptr %55, align 4
  store [1 x i64] zeroinitializer, ptr %55, align 4
  call void @runtime.ClobberPointerRegs()
  %74 = icmp eq ptr %55, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %74)
  %75 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", ptr %75, ptr %55)
  %76 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", ptr undef }, ptr %75, 1
  %77 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %77)
  %78 = load ptr, ptr %1, align 8
  %79 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %76, ptr %79, align 8
  %80 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_any]_llgo_int", ptr %78, ptr %79)
  store i64 200, ptr %80, align 4
  call void @llvm.memset(ptr %79, i8 0, i64 16, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %79, i64 16)
  %81 = alloca [1 x i64], align 8
  call void @llvm.memset(ptr %81, i8 0, i64 8, i1 false)
  %82 = icmp eq ptr %81, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %82)
  %83 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %84 = getelementptr inbounds i64, ptr %81, i64 %83
  %85 = ptrtoint ptr %84 to i64
  %86 = and i64 %85, 72057594037927935
  %87 = xor i64 %86, 25399393228665167
  %88 = shl i64 %87, 17
  %89 = select i1 false, i64 0, i64 %88
  %90 = lshr i64 %87, 39
  %91 = select i1 false, i64 0, i64 %90
  %92 = or i64 %89, %91
  %93 = and i64 %92, 72057594037927935
  %94 = or i64 %93, -6557241057451442176
  store i64 %94, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %94)
  call void @runtime.ClobberPointerRegs()
  %95 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %95)
  %96 = load i64, ptr %6, align 4
  %97 = alloca i64, align 8
  store i64 3, ptr %97, align 4
  call void @runtime.StoreHiddenPointee(i64 %96, ptr %97, i64 8)
  store i64 0, ptr %97, align 4
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %98 = icmp eq ptr %81, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %98)
  %99 = load [1 x i64], ptr %81, align 4
  store [1 x i64] zeroinitializer, ptr %81, align 4
  call void @runtime.ClobberPointerRegs()
  %100 = icmp eq ptr %81, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %100)
  %101 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", ptr %101, ptr %81)
  %102 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", ptr undef }, ptr %101, 1
  %103 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %103)
  %104 = load ptr, ptr %1, align 8
  %105 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %102, ptr %105, align 8
  %106 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_any]_llgo_int", ptr %104, ptr %105)
  store i64 300, ptr %106, align 4
  call void @llvm.memset(ptr %105, i8 0, i64 16, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %105, i64 16)
  %107 = alloca [1 x i64], align 8
  call void @llvm.memset(ptr %107, i8 0, i64 8, i1 false)
  %108 = icmp eq ptr %107, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %108)
  %109 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %110 = getelementptr inbounds i64, ptr %107, i64 %109
  %111 = ptrtoint ptr %110 to i64
  %112 = and i64 %111, 72057594037927935
  %113 = xor i64 %112, 25399393228665167
  %114 = shl i64 %113, 17
  %115 = select i1 false, i64 0, i64 %114
  %116 = lshr i64 %113, 39
  %117 = select i1 false, i64 0, i64 %116
  %118 = or i64 %115, %117
  %119 = and i64 %118, 72057594037927935
  %120 = or i64 %119, -6557241057451442176
  store i64 %120, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %120)
  call void @runtime.ClobberPointerRegs()
  %121 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %121)
  %122 = load i64, ptr %8, align 4
  %123 = alloca i64, align 8
  store i64 2, ptr %123, align 4
  call void @runtime.StoreHiddenPointee(i64 %122, ptr %123, i64 8)
  store i64 0, ptr %123, align 4
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %124 = icmp eq ptr %107, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %124)
  %125 = load [1 x i64], ptr %107, align 4
  store [1 x i64] zeroinitializer, ptr %107, align 4
  call void @runtime.ClobberPointerRegs()
  %126 = icmp eq ptr %107, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %126)
  %127 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", ptr %127, ptr %107)
  %128 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", ptr undef }, ptr %127, 1
  %129 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %129)
  %130 = load ptr, ptr %1, align 8
  %131 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %128, ptr %131, align 8
  %132 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_any]_llgo_int", ptr %130, ptr %131)
  store i64 -200, ptr %132, align 4
  call void @llvm.memset(ptr %131, i8 0, i64 16, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %131, i64 16)
  %133 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %133)
  %134 = load ptr, ptr %1, align 8
  %135 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewRangeMapIter"(ptr @"map[_llgo_any]_llgo_int", ptr %134)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_7, %_llgo_0
  %136 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.RangeMapIterNext"(ptr %135)
  %137 = extractvalue { i1, ptr, ptr } %136, 0
  br i1 %137, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %138 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %149, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %138, ptr %10, align 8
  %139 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %139)
  %140 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %10, align 8
  %141 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %140, 0
  %142 = icmp eq ptr %141, @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1"
  br i1 %142, label %_llgo_7, label %_llgo_8

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %143 = extractvalue { i1, ptr, ptr } %136, 1
  %144 = extractvalue { i1, ptr, ptr } %136, 2
  %145 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %143, align 8
  %146 = load i64, ptr %144, align 4
  %147 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } { i1 true, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, i64 undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %145, 1
  %148 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %147, i64 %146, 2
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %149 = phi { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } [ %148, %_llgo_4 ], [ zeroinitializer, %_llgo_5 ]
  %150 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %149, 0
  br i1 %150, label %_llgo_2, label %_llgo_3

_llgo_7:                                          ; preds = %_llgo_2
  %151 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %140, 1
  %152 = load [1 x i64], ptr %151, align 4
  %153 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %154 = alloca [1 x i64], align 8
  call void @llvm.memset(ptr %154, i8 0, i64 8, i1 false)
  store [1 x i64] %152, ptr %154, align 4
  %155 = getelementptr inbounds i64, ptr %154, i64 %153
  %156 = icmp eq ptr %155, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %156)
  %157 = load i64, ptr %155, align 4
  %158 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %159 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %149, 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %157)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %159)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %158)
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_2
  %160 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakeTypeAssertionError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 14 }, ptr %141, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %160)
  unreachable

_llgo_9:                                          ; No predecessors!
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testrt/makemap.make3"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr null, ptr %7, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  store ptr null, ptr %9, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  store ptr null, ptr %11, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  store ptr null, ptr %14, align 8
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  store ptr null, ptr %16, align 8
  %17 = alloca i64, align 8
  %18 = alloca ptr, align 8
  store ptr null, ptr %18, align 8
  %19 = alloca i64, align 8
  %20 = alloca ptr, align 8
  store ptr null, ptr %20, align 8
  %21 = alloca i64, align 8
  %22 = alloca ptr, align 8
  store ptr null, ptr %22, align 8
  %23 = alloca i64, align 8
  %24 = alloca ptr, align 8
  store ptr null, ptr %24, align 8
  %25 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  %26 = alloca [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], align 8
  call void @llvm.memset(ptr %26, i8 0, i64 2, i1 false)
  %27 = icmp eq ptr %26, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %27)
  %28 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %26, i64 %28
  %30 = ptrtoint ptr %29 to i64
  %31 = and i64 %30, 72057594037927935
  %32 = xor i64 %31, 25399393228665167
  %33 = shl i64 %32, 17
  %34 = select i1 false, i64 0, i64 %33
  %35 = lshr i64 %32, 39
  %36 = select i1 false, i64 0, i64 %35
  %37 = or i64 %34, %36
  %38 = and i64 %37, 72057594037927935
  %39 = or i64 %38, -6557241057451442176
  store i64 %39, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %39)
  call void @runtime.ClobberPointerRegs()
  %40 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %40)
  %41 = load i64, ptr %0, align 4
  %42 = and i64 %41, 72057594037927935
  %43 = lshr i64 %42, 17
  %44 = select i1 false, i64 0, i64 %43
  %45 = shl i64 %42, 39
  %46 = select i1 false, i64 0, i64 %45
  %47 = or i64 %44, %46
  %48 = and i64 %47, 72057594037927935
  %49 = xor i64 %48, 25399393228665167
  %50 = inttoptr i64 %49 to ptr
  %51 = icmp eq ptr %50, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %51)
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %50, i32 0, i32 0
  %53 = ptrtoint ptr %52 to i64
  %54 = and i64 %53, 72057594037927935
  %55 = xor i64 %54, 25399393228665167
  %56 = shl i64 %55, 17
  %57 = select i1 false, i64 0, i64 %56
  %58 = lshr i64 %55, 39
  %59 = select i1 false, i64 0, i64 %58
  %60 = or i64 %57, %59
  %61 = and i64 %60, 72057594037927935
  %62 = or i64 %61, -6557241057451442176
  store i64 %62, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %62)
  call void @runtime.ClobberPointerRegs()
  %63 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %63)
  %64 = load i64, ptr %0, align 4
  %65 = and i64 %64, 72057594037927935
  %66 = lshr i64 %65, 17
  %67 = select i1 false, i64 0, i64 %66
  %68 = shl i64 %65, 39
  %69 = select i1 false, i64 0, i64 %68
  %70 = or i64 %67, %69
  %71 = and i64 %70, 72057594037927935
  %72 = xor i64 %71, 25399393228665167
  %73 = inttoptr i64 %72 to ptr
  %74 = icmp eq ptr %73, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %74)
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %73, i32 0, i32 1
  %76 = ptrtoint ptr %75 to i64
  %77 = and i64 %76, 72057594037927935
  %78 = xor i64 %77, 25399393228665167
  %79 = shl i64 %78, 17
  %80 = select i1 false, i64 0, i64 %79
  %81 = lshr i64 %78, 39
  %82 = select i1 false, i64 0, i64 %81
  %83 = or i64 %80, %82
  %84 = and i64 %83, 72057594037927935
  %85 = or i64 %84, -6557241057451442176
  store i64 %85, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %85)
  call void @runtime.ClobberPointerRegs()
  %86 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %86)
  %87 = load i64, ptr %2, align 4
  %88 = alloca i8, align 1
  store i8 1, ptr %88, align 1
  call void @runtime.StoreHiddenPointee(i64 %87, ptr %88, i64 1)
  store i8 0, ptr %88, align 1
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %89 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %89)
  %90 = load i64, ptr %4, align 4
  %91 = alloca i8, align 1
  store i8 2, ptr %91, align 1
  call void @runtime.StoreHiddenPointee(i64 %90, ptr %91, i64 1)
  store i8 0, ptr %91, align 1
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %92 = icmp eq ptr %26, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %92)
  %93 = load [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], ptr %26, align 1
  store [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"] zeroinitializer, ptr %26, align 1
  call void @runtime.ClobberPointerRegs()
  %94 = icmp eq ptr %26, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %94)
  %95 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", ptr %95, ptr %26)
  %96 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", ptr undef }, ptr %95, 1
  %97 = alloca [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], align 8
  call void @llvm.memset(ptr %97, i8 0, i64 2, i1 false)
  %98 = icmp eq ptr %97, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %98)
  %99 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %100 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %97, i64 %99
  %101 = ptrtoint ptr %100 to i64
  %102 = and i64 %101, 72057594037927935
  %103 = xor i64 %102, 25399393228665167
  %104 = shl i64 %103, 17
  %105 = select i1 false, i64 0, i64 %104
  %106 = lshr i64 %103, 39
  %107 = select i1 false, i64 0, i64 %106
  %108 = or i64 %105, %107
  %109 = and i64 %108, 72057594037927935
  %110 = or i64 %109, -6557241057451442176
  store i64 %110, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %110)
  call void @runtime.ClobberPointerRegs()
  %111 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %111)
  %112 = load i64, ptr %6, align 4
  %113 = and i64 %112, 72057594037927935
  %114 = lshr i64 %113, 17
  %115 = select i1 false, i64 0, i64 %114
  %116 = shl i64 %113, 39
  %117 = select i1 false, i64 0, i64 %116
  %118 = or i64 %115, %117
  %119 = and i64 %118, 72057594037927935
  %120 = xor i64 %119, 25399393228665167
  %121 = inttoptr i64 %120 to ptr
  %122 = icmp eq ptr %121, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %122)
  %123 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %121, i32 0, i32 0
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
  store i64 %133, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %133)
  call void @runtime.ClobberPointerRegs()
  %134 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %134)
  %135 = load i64, ptr %6, align 4
  %136 = and i64 %135, 72057594037927935
  %137 = lshr i64 %136, 17
  %138 = select i1 false, i64 0, i64 %137
  %139 = shl i64 %136, 39
  %140 = select i1 false, i64 0, i64 %139
  %141 = or i64 %138, %140
  %142 = and i64 %141, 72057594037927935
  %143 = xor i64 %142, 25399393228665167
  %144 = inttoptr i64 %143 to ptr
  %145 = icmp eq ptr %144, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %145)
  %146 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %144, i32 0, i32 1
  %147 = ptrtoint ptr %146 to i64
  %148 = and i64 %147, 72057594037927935
  %149 = xor i64 %148, 25399393228665167
  %150 = shl i64 %149, 17
  %151 = select i1 false, i64 0, i64 %150
  %152 = lshr i64 %149, 39
  %153 = select i1 false, i64 0, i64 %152
  %154 = or i64 %151, %153
  %155 = and i64 %154, 72057594037927935
  %156 = or i64 %155, -6557241057451442176
  store i64 %156, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %156)
  call void @runtime.ClobberPointerRegs()
  %157 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %157)
  %158 = load i64, ptr %8, align 4
  %159 = alloca i8, align 1
  store i8 1, ptr %159, align 1
  call void @runtime.StoreHiddenPointee(i64 %158, ptr %159, i64 1)
  store i8 0, ptr %159, align 1
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %160 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %160)
  %161 = load i64, ptr %10, align 4
  %162 = alloca i8, align 1
  store i8 2, ptr %162, align 1
  call void @runtime.StoreHiddenPointee(i64 %161, ptr %162, i64 1)
  store i8 0, ptr %162, align 1
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %163 = icmp eq ptr %97, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %163)
  %164 = load [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], ptr %97, align 1
  store [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"] zeroinitializer, ptr %97, align 1
  call void @runtime.ClobberPointerRegs()
  %165 = icmp eq ptr %97, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %165)
  %166 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", ptr %166, ptr %97)
  %167 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", ptr undef }, ptr %166, 1
  %168 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %96, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %167)
  %169 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %168)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %169)
  %170 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_any]_llgo_int", i64 0)
  store ptr %170, ptr %12, align 8
  %171 = alloca [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], align 8
  call void @llvm.memset(ptr %171, i8 0, i64 2, i1 false)
  %172 = icmp eq ptr %171, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %172)
  %173 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %174 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %171, i64 %173
  %175 = ptrtoint ptr %174 to i64
  %176 = and i64 %175, 72057594037927935
  %177 = xor i64 %176, 25399393228665167
  %178 = shl i64 %177, 17
  %179 = select i1 false, i64 0, i64 %178
  %180 = lshr i64 %177, 39
  %181 = select i1 false, i64 0, i64 %180
  %182 = or i64 %179, %181
  %183 = and i64 %182, 72057594037927935
  %184 = or i64 %183, -6557241057451442176
  store i64 %184, ptr %13, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %14, i64 %184)
  call void @runtime.ClobberPointerRegs()
  %185 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %185)
  %186 = load i64, ptr %13, align 4
  %187 = and i64 %186, 72057594037927935
  %188 = lshr i64 %187, 17
  %189 = select i1 false, i64 0, i64 %188
  %190 = shl i64 %187, 39
  %191 = select i1 false, i64 0, i64 %190
  %192 = or i64 %189, %191
  %193 = and i64 %192, 72057594037927935
  %194 = xor i64 %193, 25399393228665167
  %195 = inttoptr i64 %194 to ptr
  %196 = icmp eq ptr %195, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %196)
  %197 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %195, i32 0, i32 0
  %198 = ptrtoint ptr %197 to i64
  %199 = and i64 %198, 72057594037927935
  %200 = xor i64 %199, 25399393228665167
  %201 = shl i64 %200, 17
  %202 = select i1 false, i64 0, i64 %201
  %203 = lshr i64 %200, 39
  %204 = select i1 false, i64 0, i64 %203
  %205 = or i64 %202, %204
  %206 = and i64 %205, 72057594037927935
  %207 = or i64 %206, -6557241057451442176
  store i64 %207, ptr %15, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %16, i64 %207)
  call void @runtime.ClobberPointerRegs()
  %208 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %208)
  %209 = load i64, ptr %13, align 4
  %210 = and i64 %209, 72057594037927935
  %211 = lshr i64 %210, 17
  %212 = select i1 false, i64 0, i64 %211
  %213 = shl i64 %210, 39
  %214 = select i1 false, i64 0, i64 %213
  %215 = or i64 %212, %214
  %216 = and i64 %215, 72057594037927935
  %217 = xor i64 %216, 25399393228665167
  %218 = inttoptr i64 %217 to ptr
  %219 = icmp eq ptr %218, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %219)
  %220 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %218, i32 0, i32 1
  %221 = ptrtoint ptr %220 to i64
  %222 = and i64 %221, 72057594037927935
  %223 = xor i64 %222, 25399393228665167
  %224 = shl i64 %223, 17
  %225 = select i1 false, i64 0, i64 %224
  %226 = lshr i64 %223, 39
  %227 = select i1 false, i64 0, i64 %226
  %228 = or i64 %225, %227
  %229 = and i64 %228, 72057594037927935
  %230 = or i64 %229, -6557241057451442176
  store i64 %230, ptr %17, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %18, i64 %230)
  call void @runtime.ClobberPointerRegs()
  %231 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %231)
  %232 = load i64, ptr %15, align 4
  %233 = alloca i8, align 1
  store i8 1, ptr %233, align 1
  call void @runtime.StoreHiddenPointee(i64 %232, ptr %233, i64 1)
  store i8 0, ptr %233, align 1
  store i64 0, ptr %15, align 4
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  store ptr null, ptr %16, align 8
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  call void @runtime.ClobberPointerRegs()
  %234 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %234)
  %235 = load i64, ptr %17, align 4
  %236 = alloca i8, align 1
  store i8 2, ptr %236, align 1
  call void @runtime.StoreHiddenPointee(i64 %235, ptr %236, i64 1)
  store i8 0, ptr %236, align 1
  store i64 0, ptr %13, align 4
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  store ptr null, ptr %14, align 8
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store i64 0, ptr %17, align 4
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  store ptr null, ptr %18, align 8
  call void @runtime.TouchConservativeSlot(ptr %18, i64 8)
  call void @runtime.ClobberPointerRegs()
  %237 = icmp eq ptr %171, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %237)
  %238 = load [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], ptr %171, align 1
  store [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"] zeroinitializer, ptr %171, align 1
  call void @runtime.ClobberPointerRegs()
  %239 = icmp eq ptr %171, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %239)
  %240 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", ptr %240, ptr %171)
  %241 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", ptr undef }, ptr %240, 1
  %242 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %242)
  %243 = load ptr, ptr %12, align 8
  %244 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %241, ptr %244, align 8
  %245 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_any]_llgo_int", ptr %243, ptr %244)
  store i64 100, ptr %245, align 4
  call void @llvm.memset(ptr %244, i8 0, i64 16, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %244, i64 16)
  %246 = alloca [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], align 8
  call void @llvm.memset(ptr %246, i8 0, i64 2, i1 false)
  %247 = icmp eq ptr %246, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %247)
  %248 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %249 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %246, i64 %248
  %250 = ptrtoint ptr %249 to i64
  %251 = and i64 %250, 72057594037927935
  %252 = xor i64 %251, 25399393228665167
  %253 = shl i64 %252, 17
  %254 = select i1 false, i64 0, i64 %253
  %255 = lshr i64 %252, 39
  %256 = select i1 false, i64 0, i64 %255
  %257 = or i64 %254, %256
  %258 = and i64 %257, 72057594037927935
  %259 = or i64 %258, -6557241057451442176
  store i64 %259, ptr %19, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %20, i64 %259)
  call void @runtime.ClobberPointerRegs()
  %260 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %260)
  %261 = load i64, ptr %19, align 4
  %262 = and i64 %261, 72057594037927935
  %263 = lshr i64 %262, 17
  %264 = select i1 false, i64 0, i64 %263
  %265 = shl i64 %262, 39
  %266 = select i1 false, i64 0, i64 %265
  %267 = or i64 %264, %266
  %268 = and i64 %267, 72057594037927935
  %269 = xor i64 %268, 25399393228665167
  %270 = inttoptr i64 %269 to ptr
  %271 = icmp eq ptr %270, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %271)
  %272 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %270, i32 0, i32 0
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
  store i64 %282, ptr %21, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %22, i64 %282)
  call void @runtime.ClobberPointerRegs()
  %283 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %283)
  %284 = load i64, ptr %19, align 4
  %285 = and i64 %284, 72057594037927935
  %286 = lshr i64 %285, 17
  %287 = select i1 false, i64 0, i64 %286
  %288 = shl i64 %285, 39
  %289 = select i1 false, i64 0, i64 %288
  %290 = or i64 %287, %289
  %291 = and i64 %290, 72057594037927935
  %292 = xor i64 %291, 25399393228665167
  %293 = inttoptr i64 %292 to ptr
  %294 = icmp eq ptr %293, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %294)
  %295 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %293, i32 0, i32 1
  %296 = ptrtoint ptr %295 to i64
  %297 = and i64 %296, 72057594037927935
  %298 = xor i64 %297, 25399393228665167
  %299 = shl i64 %298, 17
  %300 = select i1 false, i64 0, i64 %299
  %301 = lshr i64 %298, 39
  %302 = select i1 false, i64 0, i64 %301
  %303 = or i64 %300, %302
  %304 = and i64 %303, 72057594037927935
  %305 = or i64 %304, -6557241057451442176
  store i64 %305, ptr %23, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %24, i64 %305)
  call void @runtime.ClobberPointerRegs()
  %306 = icmp eq ptr %21, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %306)
  %307 = load i64, ptr %21, align 4
  %308 = alloca i8, align 1
  store i8 3, ptr %308, align 1
  call void @runtime.StoreHiddenPointee(i64 %307, ptr %308, i64 1)
  store i8 0, ptr %308, align 1
  store i64 0, ptr %21, align 4
  call void @runtime.TouchConservativeSlot(ptr %21, i64 8)
  store ptr null, ptr %22, align 8
  call void @runtime.TouchConservativeSlot(ptr %22, i64 8)
  call void @runtime.ClobberPointerRegs()
  %309 = icmp eq ptr %23, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %309)
  %310 = load i64, ptr %23, align 4
  %311 = alloca i8, align 1
  store i8 4, ptr %311, align 1
  call void @runtime.StoreHiddenPointee(i64 %310, ptr %311, i64 1)
  store i8 0, ptr %311, align 1
  store i64 0, ptr %19, align 4
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  store ptr null, ptr %20, align 8
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  store i64 0, ptr %23, align 4
  call void @runtime.TouchConservativeSlot(ptr %23, i64 8)
  store ptr null, ptr %24, align 8
  call void @runtime.TouchConservativeSlot(ptr %24, i64 8)
  call void @runtime.ClobberPointerRegs()
  %312 = icmp eq ptr %246, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %312)
  %313 = load [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], ptr %246, align 1
  store [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"] zeroinitializer, ptr %246, align 1
  call void @runtime.ClobberPointerRegs()
  %314 = icmp eq ptr %246, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %314)
  %315 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", ptr %315, ptr %246)
  %316 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", ptr undef }, ptr %315, 1
  %317 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %317)
  %318 = load ptr, ptr %12, align 8
  %319 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %316, ptr %319, align 8
  %320 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_any]_llgo_int", ptr %318, ptr %319)
  store i64 200, ptr %320, align 4
  call void @llvm.memset(ptr %319, i8 0, i64 16, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %319, i64 16)
  %321 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %321)
  %322 = load ptr, ptr %12, align 8
  %323 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewRangeMapIter"(ptr @"map[_llgo_any]_llgo_int", ptr %322)
  store ptr null, ptr %12, align 8
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  call void @runtime.ClobberPointerRegs()
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_7, %_llgo_0
  %324 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.RangeMapIterNext"(ptr %323)
  %325 = extractvalue { i1, ptr, ptr } %324, 0
  br i1 %325, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %326 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %337, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %326, ptr %25, align 8
  %327 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %327)
  %328 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %25, align 8
  %329 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %328, 0
  %330 = icmp eq ptr %329, @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K"
  br i1 %330, label %_llgo_7, label %_llgo_8

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %331 = extractvalue { i1, ptr, ptr } %324, 1
  %332 = extractvalue { i1, ptr, ptr } %324, 2
  %333 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %331, align 8
  %334 = load i64, ptr %332, align 4
  %335 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } { i1 true, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, i64 undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %333, 1
  %336 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %335, i64 %334, 2
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %337 = phi { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } [ %336, %_llgo_4 ], [ zeroinitializer, %_llgo_5 ]
  %338 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %337, 0
  br i1 %338, label %_llgo_2, label %_llgo_3

_llgo_7:                                          ; preds = %_llgo_2
  %339 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %328, 1
  %340 = load [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], ptr %339, align 1
  %341 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %342 = alloca [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], align 8
  call void @llvm.memset(ptr %342, i8 0, i64 2, i1 false)
  store [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"] %340, ptr %342, align 1
  %343 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %342, i64 %341
  %344 = icmp eq ptr %343, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %344)
  %345 = load %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %343, align 1
  %346 = extractvalue %"github.com/goplus/llgo/cl/_testrt/makemap.N" %345, 0
  %347 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %348 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %337, 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %25, align 8
  call void @runtime.TouchConservativeSlot(ptr %25, i64 16)
  call void @runtime.ClobberPointerRegs()
  %349 = sext i8 %346 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %349)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %348)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %347)
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_2
  %350 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakeTypeAssertionError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 14 }, ptr %329, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %350)
  unreachable

_llgo_9:                                          ; No predecessors!
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testrt/makemap.make4"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr null, ptr %7, align 8
  %8 = alloca [1 x ptr], align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  store ptr null, ptr %10, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  store ptr null, ptr %12, align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  store ptr null, ptr %14, align 8
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  store ptr null, ptr %16, align 8
  %17 = alloca [1 x ptr], align 8
  %18 = alloca ptr, align 8
  %19 = alloca i64, align 8
  %20 = alloca ptr, align 8
  store ptr null, ptr %20, align 8
  %21 = alloca i64, align 8
  %22 = alloca ptr, align 8
  store ptr null, ptr %22, align 8
  %23 = alloca i64, align 8
  %24 = alloca ptr, align 8
  store ptr null, ptr %24, align 8
  %25 = alloca i64, align 8
  %26 = alloca ptr, align 8
  store ptr null, ptr %26, align 8
  %27 = alloca [1 x ptr], align 8
  %28 = alloca i64, align 8
  %29 = alloca ptr, align 8
  store ptr null, ptr %29, align 8
  %30 = alloca i64, align 8
  %31 = alloca ptr, align 8
  store ptr null, ptr %31, align 8
  %32 = alloca i64, align 8
  %33 = alloca ptr, align 8
  store ptr null, ptr %33, align 8
  %34 = alloca i64, align 8
  %35 = alloca ptr, align 8
  store ptr null, ptr %35, align 8
  %36 = alloca [1 x ptr], align 8
  %37 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  %38 = alloca [1 x ptr], align 8
  %39 = alloca i64, align 8
  %40 = alloca ptr, align 8
  store ptr null, ptr %40, align 8
  %41 = alloca i64, align 8
  %42 = alloca ptr, align 8
  store ptr null, ptr %42, align 8
  %43 = alloca [1 x ptr], align 8
  call void @llvm.memset(ptr %43, i8 0, i64 8, i1 false)
  %44 = icmp eq ptr %43, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %44)
  %45 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %46 = getelementptr inbounds ptr, ptr %43, i64 %45
  %47 = ptrtoint ptr %46 to i64
  %48 = and i64 %47, 72057594037927935
  %49 = xor i64 %48, 25399393228665167
  %50 = shl i64 %49, 17
  %51 = select i1 false, i64 0, i64 %50
  %52 = lshr i64 %49, 39
  %53 = select i1 false, i64 0, i64 %52
  %54 = or i64 %51, %53
  %55 = and i64 %54, 72057594037927935
  %56 = or i64 %55, -6557241057451442176
  store i64 %56, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %56)
  call void @runtime.ClobberPointerRegs()
  %57 = call i64 @runtime.AllocZHidden(i64 2)
  store i64 %57, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %57)
  %58 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %58)
  %59 = load i64, ptr %2, align 4
  %60 = and i64 %59, 72057594037927935
  %61 = lshr i64 %60, 17
  %62 = select i1 false, i64 0, i64 %61
  %63 = shl i64 %60, 39
  %64 = select i1 false, i64 0, i64 %63
  %65 = or i64 %62, %64
  %66 = and i64 %65, 72057594037927935
  %67 = xor i64 %66, 25399393228665167
  %68 = inttoptr i64 %67 to ptr
  %69 = icmp eq ptr %68, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %69)
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %68, i32 0, i32 0
  %71 = ptrtoint ptr %70 to i64
  %72 = and i64 %71, 72057594037927935
  %73 = xor i64 %72, 25399393228665167
  %74 = shl i64 %73, 17
  %75 = select i1 false, i64 0, i64 %74
  %76 = lshr i64 %73, 39
  %77 = select i1 false, i64 0, i64 %76
  %78 = or i64 %75, %77
  %79 = and i64 %78, 72057594037927935
  %80 = or i64 %79, -6557241057451442176
  store i64 %80, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %80)
  call void @runtime.ClobberPointerRegs()
  %81 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %81)
  %82 = load i64, ptr %2, align 4
  %83 = and i64 %82, 72057594037927935
  %84 = lshr i64 %83, 17
  %85 = select i1 false, i64 0, i64 %84
  %86 = shl i64 %83, 39
  %87 = select i1 false, i64 0, i64 %86
  %88 = or i64 %85, %87
  %89 = and i64 %88, 72057594037927935
  %90 = xor i64 %89, 25399393228665167
  %91 = inttoptr i64 %90 to ptr
  %92 = icmp eq ptr %91, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %92)
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %91, i32 0, i32 1
  %94 = ptrtoint ptr %93 to i64
  %95 = and i64 %94, 72057594037927935
  %96 = xor i64 %95, 25399393228665167
  %97 = shl i64 %96, 17
  %98 = select i1 false, i64 0, i64 %97
  %99 = lshr i64 %96, 39
  %100 = select i1 false, i64 0, i64 %99
  %101 = or i64 %98, %100
  %102 = and i64 %101, 72057594037927935
  %103 = or i64 %102, -6557241057451442176
  store i64 %103, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %103)
  call void @runtime.ClobberPointerRegs()
  %104 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %104)
  %105 = load i64, ptr %4, align 4
  %106 = alloca i8, align 1
  store i8 1, ptr %106, align 1
  call void @runtime.StoreHiddenPointee(i64 %105, ptr %106, i64 1)
  store i8 0, ptr %106, align 1
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %107 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %107)
  %108 = load i64, ptr %6, align 4
  %109 = alloca i8, align 1
  store i8 2, ptr %109, align 1
  call void @runtime.StoreHiddenPointee(i64 %108, ptr %109, i64 1)
  store i8 0, ptr %109, align 1
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %110 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %110)
  %111 = load i64, ptr %0, align 4
  %112 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %112)
  %113 = load i64, ptr %2, align 4
  %114 = and i64 %113, 72057594037927935
  %115 = lshr i64 %114, 17
  %116 = select i1 false, i64 0, i64 %115
  %117 = shl i64 %114, 39
  %118 = select i1 false, i64 0, i64 %117
  %119 = or i64 %116, %118
  %120 = and i64 %119, 72057594037927935
  %121 = xor i64 %120, 25399393228665167
  %122 = inttoptr i64 %121 to ptr
  %123 = alloca ptr, align 8
  store ptr %122, ptr %123, align 8
  call void @runtime.StoreHiddenPointee(i64 %111, ptr %123, i64 8)
  store ptr null, ptr %123, align 8
  call void @runtime.TouchConservativeSlot(ptr %123, i64 8)
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %124 = icmp eq ptr %43, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %124)
  %125 = load [1 x ptr], ptr %43, align 8
  store [1 x ptr] %125, ptr %8, align 8
  store [1 x ptr] zeroinitializer, ptr %43, align 8
  call void @runtime.TouchConservativeSlot(ptr %43, i64 8)
  call void @runtime.ClobberPointerRegs()
  %126 = icmp eq ptr %43, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %126)
  %127 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2", ptr %127, ptr %43)
  %128 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2", ptr undef }, ptr %127, 1
  %129 = alloca [1 x ptr], align 8
  call void @llvm.memset(ptr %129, i8 0, i64 8, i1 false)
  %130 = icmp eq ptr %129, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %130)
  %131 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %132 = getelementptr inbounds ptr, ptr %129, i64 %131
  %133 = ptrtoint ptr %132 to i64
  %134 = and i64 %133, 72057594037927935
  %135 = xor i64 %134, 25399393228665167
  %136 = shl i64 %135, 17
  %137 = select i1 false, i64 0, i64 %136
  %138 = lshr i64 %135, 39
  %139 = select i1 false, i64 0, i64 %138
  %140 = or i64 %137, %139
  %141 = and i64 %140, 72057594037927935
  %142 = or i64 %141, -6557241057451442176
  store i64 %142, ptr %9, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %10, i64 %142)
  call void @runtime.ClobberPointerRegs()
  %143 = call i64 @runtime.AllocZHidden(i64 2)
  store i64 %143, ptr %11, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %12, i64 %143)
  %144 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %144)
  %145 = load i64, ptr %11, align 4
  %146 = and i64 %145, 72057594037927935
  %147 = lshr i64 %146, 17
  %148 = select i1 false, i64 0, i64 %147
  %149 = shl i64 %146, 39
  %150 = select i1 false, i64 0, i64 %149
  %151 = or i64 %148, %150
  %152 = and i64 %151, 72057594037927935
  %153 = xor i64 %152, 25399393228665167
  %154 = inttoptr i64 %153 to ptr
  %155 = icmp eq ptr %154, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %155)
  %156 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %154, i32 0, i32 0
  %157 = ptrtoint ptr %156 to i64
  %158 = and i64 %157, 72057594037927935
  %159 = xor i64 %158, 25399393228665167
  %160 = shl i64 %159, 17
  %161 = select i1 false, i64 0, i64 %160
  %162 = lshr i64 %159, 39
  %163 = select i1 false, i64 0, i64 %162
  %164 = or i64 %161, %163
  %165 = and i64 %164, 72057594037927935
  %166 = or i64 %165, -6557241057451442176
  store i64 %166, ptr %13, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %14, i64 %166)
  call void @runtime.ClobberPointerRegs()
  %167 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %167)
  %168 = load i64, ptr %11, align 4
  %169 = and i64 %168, 72057594037927935
  %170 = lshr i64 %169, 17
  %171 = select i1 false, i64 0, i64 %170
  %172 = shl i64 %169, 39
  %173 = select i1 false, i64 0, i64 %172
  %174 = or i64 %171, %173
  %175 = and i64 %174, 72057594037927935
  %176 = xor i64 %175, 25399393228665167
  %177 = inttoptr i64 %176 to ptr
  %178 = icmp eq ptr %177, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %178)
  %179 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %177, i32 0, i32 1
  %180 = ptrtoint ptr %179 to i64
  %181 = and i64 %180, 72057594037927935
  %182 = xor i64 %181, 25399393228665167
  %183 = shl i64 %182, 17
  %184 = select i1 false, i64 0, i64 %183
  %185 = lshr i64 %182, 39
  %186 = select i1 false, i64 0, i64 %185
  %187 = or i64 %184, %186
  %188 = and i64 %187, 72057594037927935
  %189 = or i64 %188, -6557241057451442176
  store i64 %189, ptr %15, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %16, i64 %189)
  call void @runtime.ClobberPointerRegs()
  %190 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %190)
  %191 = load i64, ptr %13, align 4
  %192 = alloca i8, align 1
  store i8 1, ptr %192, align 1
  call void @runtime.StoreHiddenPointee(i64 %191, ptr %192, i64 1)
  store i8 0, ptr %192, align 1
  store i64 0, ptr %13, align 4
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  store ptr null, ptr %14, align 8
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  call void @runtime.ClobberPointerRegs()
  %193 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %193)
  %194 = load i64, ptr %15, align 4
  %195 = alloca i8, align 1
  store i8 2, ptr %195, align 1
  call void @runtime.StoreHiddenPointee(i64 %194, ptr %195, i64 1)
  store i8 0, ptr %195, align 1
  store i64 0, ptr %15, align 4
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  store ptr null, ptr %16, align 8
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  call void @runtime.ClobberPointerRegs()
  %196 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %196)
  %197 = load i64, ptr %9, align 4
  %198 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %198)
  %199 = load i64, ptr %11, align 4
  %200 = and i64 %199, 72057594037927935
  %201 = lshr i64 %200, 17
  %202 = select i1 false, i64 0, i64 %201
  %203 = shl i64 %200, 39
  %204 = select i1 false, i64 0, i64 %203
  %205 = or i64 %202, %204
  %206 = and i64 %205, 72057594037927935
  %207 = xor i64 %206, 25399393228665167
  %208 = inttoptr i64 %207 to ptr
  %209 = alloca ptr, align 8
  store ptr %208, ptr %209, align 8
  call void @runtime.StoreHiddenPointee(i64 %197, ptr %209, i64 8)
  store ptr null, ptr %209, align 8
  call void @runtime.TouchConservativeSlot(ptr %209, i64 8)
  store i64 0, ptr %9, align 4
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  store ptr null, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store i64 0, ptr %11, align 4
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  store ptr null, ptr %12, align 8
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  call void @runtime.ClobberPointerRegs()
  %210 = icmp eq ptr %129, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %210)
  %211 = load [1 x ptr], ptr %129, align 8
  store [1 x ptr] %211, ptr %17, align 8
  store [1 x ptr] zeroinitializer, ptr %129, align 8
  call void @runtime.TouchConservativeSlot(ptr %129, i64 8)
  call void @runtime.ClobberPointerRegs()
  %212 = icmp eq ptr %129, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %212)
  %213 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2", ptr %213, ptr %129)
  %214 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2", ptr undef }, ptr %213, 1
  %215 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %128, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %214)
  store [1 x ptr] zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store [1 x ptr] zeroinitializer, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  call void @runtime.ClobberPointerRegs()
  %216 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %215)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %216)
  %217 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_any]_llgo_int", i64 0)
  store ptr %217, ptr %18, align 8
  %218 = alloca [1 x ptr], align 8
  call void @llvm.memset(ptr %218, i8 0, i64 8, i1 false)
  %219 = icmp eq ptr %218, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %219)
  %220 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %221 = getelementptr inbounds ptr, ptr %218, i64 %220
  %222 = ptrtoint ptr %221 to i64
  %223 = and i64 %222, 72057594037927935
  %224 = xor i64 %223, 25399393228665167
  %225 = shl i64 %224, 17
  %226 = select i1 false, i64 0, i64 %225
  %227 = lshr i64 %224, 39
  %228 = select i1 false, i64 0, i64 %227
  %229 = or i64 %226, %228
  %230 = and i64 %229, 72057594037927935
  %231 = or i64 %230, -6557241057451442176
  store i64 %231, ptr %19, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %20, i64 %231)
  call void @runtime.ClobberPointerRegs()
  %232 = call i64 @runtime.AllocZHidden(i64 2)
  store i64 %232, ptr %21, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %22, i64 %232)
  %233 = icmp eq ptr %21, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %233)
  %234 = load i64, ptr %21, align 4
  %235 = and i64 %234, 72057594037927935
  %236 = lshr i64 %235, 17
  %237 = select i1 false, i64 0, i64 %236
  %238 = shl i64 %235, 39
  %239 = select i1 false, i64 0, i64 %238
  %240 = or i64 %237, %239
  %241 = and i64 %240, 72057594037927935
  %242 = xor i64 %241, 25399393228665167
  %243 = inttoptr i64 %242 to ptr
  %244 = icmp eq ptr %243, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %244)
  %245 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %243, i32 0, i32 0
  %246 = ptrtoint ptr %245 to i64
  %247 = and i64 %246, 72057594037927935
  %248 = xor i64 %247, 25399393228665167
  %249 = shl i64 %248, 17
  %250 = select i1 false, i64 0, i64 %249
  %251 = lshr i64 %248, 39
  %252 = select i1 false, i64 0, i64 %251
  %253 = or i64 %250, %252
  %254 = and i64 %253, 72057594037927935
  %255 = or i64 %254, -6557241057451442176
  store i64 %255, ptr %23, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %24, i64 %255)
  call void @runtime.ClobberPointerRegs()
  %256 = icmp eq ptr %21, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %256)
  %257 = load i64, ptr %21, align 4
  %258 = and i64 %257, 72057594037927935
  %259 = lshr i64 %258, 17
  %260 = select i1 false, i64 0, i64 %259
  %261 = shl i64 %258, 39
  %262 = select i1 false, i64 0, i64 %261
  %263 = or i64 %260, %262
  %264 = and i64 %263, 72057594037927935
  %265 = xor i64 %264, 25399393228665167
  %266 = inttoptr i64 %265 to ptr
  %267 = icmp eq ptr %266, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %267)
  %268 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %266, i32 0, i32 1
  %269 = ptrtoint ptr %268 to i64
  %270 = and i64 %269, 72057594037927935
  %271 = xor i64 %270, 25399393228665167
  %272 = shl i64 %271, 17
  %273 = select i1 false, i64 0, i64 %272
  %274 = lshr i64 %271, 39
  %275 = select i1 false, i64 0, i64 %274
  %276 = or i64 %273, %275
  %277 = and i64 %276, 72057594037927935
  %278 = or i64 %277, -6557241057451442176
  store i64 %278, ptr %25, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %26, i64 %278)
  call void @runtime.ClobberPointerRegs()
  %279 = icmp eq ptr %23, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %279)
  %280 = load i64, ptr %23, align 4
  %281 = alloca i8, align 1
  store i8 1, ptr %281, align 1
  call void @runtime.StoreHiddenPointee(i64 %280, ptr %281, i64 1)
  store i8 0, ptr %281, align 1
  store i64 0, ptr %23, align 4
  call void @runtime.TouchConservativeSlot(ptr %23, i64 8)
  store ptr null, ptr %24, align 8
  call void @runtime.TouchConservativeSlot(ptr %24, i64 8)
  call void @runtime.ClobberPointerRegs()
  %282 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %282)
  %283 = load i64, ptr %25, align 4
  %284 = alloca i8, align 1
  store i8 2, ptr %284, align 1
  call void @runtime.StoreHiddenPointee(i64 %283, ptr %284, i64 1)
  store i8 0, ptr %284, align 1
  store i64 0, ptr %25, align 4
  call void @runtime.TouchConservativeSlot(ptr %25, i64 8)
  store ptr null, ptr %26, align 8
  call void @runtime.TouchConservativeSlot(ptr %26, i64 8)
  call void @runtime.ClobberPointerRegs()
  %285 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %285)
  %286 = load i64, ptr %19, align 4
  %287 = icmp eq ptr %21, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %287)
  %288 = load i64, ptr %21, align 4
  %289 = and i64 %288, 72057594037927935
  %290 = lshr i64 %289, 17
  %291 = select i1 false, i64 0, i64 %290
  %292 = shl i64 %289, 39
  %293 = select i1 false, i64 0, i64 %292
  %294 = or i64 %291, %293
  %295 = and i64 %294, 72057594037927935
  %296 = xor i64 %295, 25399393228665167
  %297 = inttoptr i64 %296 to ptr
  %298 = alloca ptr, align 8
  store ptr %297, ptr %298, align 8
  call void @runtime.StoreHiddenPointee(i64 %286, ptr %298, i64 8)
  store ptr null, ptr %298, align 8
  call void @runtime.TouchConservativeSlot(ptr %298, i64 8)
  store i64 0, ptr %19, align 4
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  store ptr null, ptr %20, align 8
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  store i64 0, ptr %21, align 4
  call void @runtime.TouchConservativeSlot(ptr %21, i64 8)
  store ptr null, ptr %22, align 8
  call void @runtime.TouchConservativeSlot(ptr %22, i64 8)
  call void @runtime.ClobberPointerRegs()
  %299 = icmp eq ptr %218, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %299)
  %300 = load [1 x ptr], ptr %218, align 8
  store [1 x ptr] %300, ptr %27, align 8
  store [1 x ptr] zeroinitializer, ptr %218, align 8
  call void @runtime.TouchConservativeSlot(ptr %218, i64 8)
  call void @runtime.ClobberPointerRegs()
  %301 = icmp eq ptr %218, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %301)
  %302 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2", ptr %302, ptr %218)
  %303 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2", ptr undef }, ptr %302, 1
  %304 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %304)
  %305 = load ptr, ptr %18, align 8
  %306 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %303, ptr %306, align 8
  %307 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_any]_llgo_int", ptr %305, ptr %306)
  store i64 100, ptr %307, align 4
  call void @llvm.memset(ptr %306, i8 0, i64 16, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %306, i64 16)
  store [1 x ptr] zeroinitializer, ptr %27, align 8
  call void @runtime.TouchConservativeSlot(ptr %27, i64 8)
  call void @runtime.ClobberPointerRegs()
  store [1 x ptr] zeroinitializer, ptr %27, align 8
  call void @runtime.TouchConservativeSlot(ptr %27, i64 8)
  call void @runtime.ClobberPointerRegs()
  %308 = alloca [1 x ptr], align 8
  call void @llvm.memset(ptr %308, i8 0, i64 8, i1 false)
  %309 = icmp eq ptr %308, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %309)
  %310 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %311 = getelementptr inbounds ptr, ptr %308, i64 %310
  %312 = ptrtoint ptr %311 to i64
  %313 = and i64 %312, 72057594037927935
  %314 = xor i64 %313, 25399393228665167
  %315 = shl i64 %314, 17
  %316 = select i1 false, i64 0, i64 %315
  %317 = lshr i64 %314, 39
  %318 = select i1 false, i64 0, i64 %317
  %319 = or i64 %316, %318
  %320 = and i64 %319, 72057594037927935
  %321 = or i64 %320, -6557241057451442176
  store i64 %321, ptr %28, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %29, i64 %321)
  call void @runtime.ClobberPointerRegs()
  %322 = call i64 @runtime.AllocZHidden(i64 2)
  store i64 %322, ptr %30, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %31, i64 %322)
  %323 = icmp eq ptr %30, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %323)
  %324 = load i64, ptr %30, align 4
  %325 = and i64 %324, 72057594037927935
  %326 = lshr i64 %325, 17
  %327 = select i1 false, i64 0, i64 %326
  %328 = shl i64 %325, 39
  %329 = select i1 false, i64 0, i64 %328
  %330 = or i64 %327, %329
  %331 = and i64 %330, 72057594037927935
  %332 = xor i64 %331, 25399393228665167
  %333 = inttoptr i64 %332 to ptr
  %334 = icmp eq ptr %333, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %334)
  %335 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %333, i32 0, i32 0
  %336 = ptrtoint ptr %335 to i64
  %337 = and i64 %336, 72057594037927935
  %338 = xor i64 %337, 25399393228665167
  %339 = shl i64 %338, 17
  %340 = select i1 false, i64 0, i64 %339
  %341 = lshr i64 %338, 39
  %342 = select i1 false, i64 0, i64 %341
  %343 = or i64 %340, %342
  %344 = and i64 %343, 72057594037927935
  %345 = or i64 %344, -6557241057451442176
  store i64 %345, ptr %32, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %33, i64 %345)
  call void @runtime.ClobberPointerRegs()
  %346 = icmp eq ptr %30, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %346)
  %347 = load i64, ptr %30, align 4
  %348 = and i64 %347, 72057594037927935
  %349 = lshr i64 %348, 17
  %350 = select i1 false, i64 0, i64 %349
  %351 = shl i64 %348, 39
  %352 = select i1 false, i64 0, i64 %351
  %353 = or i64 %350, %352
  %354 = and i64 %353, 72057594037927935
  %355 = xor i64 %354, 25399393228665167
  %356 = inttoptr i64 %355 to ptr
  %357 = icmp eq ptr %356, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %357)
  %358 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %356, i32 0, i32 1
  %359 = ptrtoint ptr %358 to i64
  %360 = and i64 %359, 72057594037927935
  %361 = xor i64 %360, 25399393228665167
  %362 = shl i64 %361, 17
  %363 = select i1 false, i64 0, i64 %362
  %364 = lshr i64 %361, 39
  %365 = select i1 false, i64 0, i64 %364
  %366 = or i64 %363, %365
  %367 = and i64 %366, 72057594037927935
  %368 = or i64 %367, -6557241057451442176
  store i64 %368, ptr %34, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %35, i64 %368)
  call void @runtime.ClobberPointerRegs()
  %369 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %369)
  %370 = load i64, ptr %32, align 4
  %371 = alloca i8, align 1
  store i8 3, ptr %371, align 1
  call void @runtime.StoreHiddenPointee(i64 %370, ptr %371, i64 1)
  store i8 0, ptr %371, align 1
  store i64 0, ptr %32, align 4
  call void @runtime.TouchConservativeSlot(ptr %32, i64 8)
  store ptr null, ptr %33, align 8
  call void @runtime.TouchConservativeSlot(ptr %33, i64 8)
  call void @runtime.ClobberPointerRegs()
  %372 = icmp eq ptr %34, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %372)
  %373 = load i64, ptr %34, align 4
  %374 = alloca i8, align 1
  store i8 4, ptr %374, align 1
  call void @runtime.StoreHiddenPointee(i64 %373, ptr %374, i64 1)
  store i8 0, ptr %374, align 1
  store i64 0, ptr %34, align 4
  call void @runtime.TouchConservativeSlot(ptr %34, i64 8)
  store ptr null, ptr %35, align 8
  call void @runtime.TouchConservativeSlot(ptr %35, i64 8)
  call void @runtime.ClobberPointerRegs()
  %375 = icmp eq ptr %28, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %375)
  %376 = load i64, ptr %28, align 4
  %377 = icmp eq ptr %30, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %377)
  %378 = load i64, ptr %30, align 4
  %379 = and i64 %378, 72057594037927935
  %380 = lshr i64 %379, 17
  %381 = select i1 false, i64 0, i64 %380
  %382 = shl i64 %379, 39
  %383 = select i1 false, i64 0, i64 %382
  %384 = or i64 %381, %383
  %385 = and i64 %384, 72057594037927935
  %386 = xor i64 %385, 25399393228665167
  %387 = inttoptr i64 %386 to ptr
  %388 = alloca ptr, align 8
  store ptr %387, ptr %388, align 8
  call void @runtime.StoreHiddenPointee(i64 %376, ptr %388, i64 8)
  store ptr null, ptr %388, align 8
  call void @runtime.TouchConservativeSlot(ptr %388, i64 8)
  store i64 0, ptr %28, align 4
  call void @runtime.TouchConservativeSlot(ptr %28, i64 8)
  store ptr null, ptr %29, align 8
  call void @runtime.TouchConservativeSlot(ptr %29, i64 8)
  store i64 0, ptr %30, align 4
  call void @runtime.TouchConservativeSlot(ptr %30, i64 8)
  store ptr null, ptr %31, align 8
  call void @runtime.TouchConservativeSlot(ptr %31, i64 8)
  call void @runtime.ClobberPointerRegs()
  %389 = icmp eq ptr %308, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %389)
  %390 = load [1 x ptr], ptr %308, align 8
  store [1 x ptr] %390, ptr %36, align 8
  store [1 x ptr] zeroinitializer, ptr %308, align 8
  call void @runtime.TouchConservativeSlot(ptr %308, i64 8)
  call void @runtime.ClobberPointerRegs()
  %391 = icmp eq ptr %308, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %391)
  %392 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2", ptr %392, ptr %308)
  %393 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2", ptr undef }, ptr %392, 1
  %394 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %394)
  %395 = load ptr, ptr %18, align 8
  %396 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %393, ptr %396, align 8
  %397 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_any]_llgo_int", ptr %395, ptr %396)
  store i64 200, ptr %397, align 4
  call void @llvm.memset(ptr %396, i8 0, i64 16, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %396, i64 16)
  store [1 x ptr] zeroinitializer, ptr %36, align 8
  call void @runtime.TouchConservativeSlot(ptr %36, i64 8)
  call void @runtime.ClobberPointerRegs()
  store [1 x ptr] zeroinitializer, ptr %36, align 8
  call void @runtime.TouchConservativeSlot(ptr %36, i64 8)
  call void @runtime.ClobberPointerRegs()
  %398 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %398)
  %399 = load ptr, ptr %18, align 8
  %400 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewRangeMapIter"(ptr @"map[_llgo_any]_llgo_int", ptr %399)
  store ptr null, ptr %18, align 8
  call void @runtime.TouchConservativeSlot(ptr %18, i64 8)
  call void @runtime.ClobberPointerRegs()
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_7, %_llgo_0
  %401 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.RangeMapIterNext"(ptr %400)
  %402 = extractvalue { i1, ptr, ptr } %401, 0
  br i1 %402, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %403 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %414, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %403, ptr %37, align 8
  %404 = icmp eq ptr %37, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %404)
  %405 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %37, align 8
  %406 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %405, 0
  %407 = icmp eq ptr %406, @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2"
  br i1 %407, label %_llgo_7, label %_llgo_8

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %408 = extractvalue { i1, ptr, ptr } %401, 1
  %409 = extractvalue { i1, ptr, ptr } %401, 2
  %410 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %408, align 8
  %411 = load i64, ptr %409, align 4
  %412 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } { i1 true, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, i64 undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %410, 1
  %413 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %412, i64 %411, 2
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %414 = phi { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } [ %413, %_llgo_4 ], [ zeroinitializer, %_llgo_5 ]
  %415 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %414, 0
  br i1 %415, label %_llgo_2, label %_llgo_3

_llgo_7:                                          ; preds = %_llgo_2
  %416 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %405, 1
  %417 = load [1 x ptr], ptr %416, align 8
  store [1 x ptr] %417, ptr %38, align 8
  %418 = icmp eq ptr %38, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %418)
  %419 = load [1 x ptr], ptr %38, align 8
  %420 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %421 = alloca [1 x ptr], align 8
  call void @llvm.memset(ptr %421, i8 0, i64 8, i1 false)
  store [1 x ptr] %419, ptr %421, align 8
  %422 = getelementptr inbounds ptr, ptr %421, i64 %420
  %423 = icmp eq ptr %422, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %423)
  %424 = load ptr, ptr %422, align 8
  %425 = ptrtoint ptr %424 to i64
  %426 = and i64 %425, 72057594037927935
  %427 = xor i64 %426, 25399393228665167
  %428 = shl i64 %427, 17
  %429 = select i1 false, i64 0, i64 %428
  %430 = lshr i64 %427, 39
  %431 = select i1 false, i64 0, i64 %430
  %432 = or i64 %429, %431
  %433 = and i64 %432, 72057594037927935
  %434 = or i64 %433, -6557241057451442176
  store i64 %434, ptr %39, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %40, i64 %434)
  call void @runtime.ClobberPointerRegs()
  %435 = icmp eq ptr %39, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %435)
  %436 = load i64, ptr %39, align 4
  %437 = and i64 %436, 72057594037927935
  %438 = lshr i64 %437, 17
  %439 = select i1 false, i64 0, i64 %438
  %440 = shl i64 %437, 39
  %441 = select i1 false, i64 0, i64 %440
  %442 = or i64 %439, %441
  %443 = and i64 %442, 72057594037927935
  %444 = xor i64 %443, 25399393228665167
  %445 = inttoptr i64 %444 to ptr
  %446 = icmp eq ptr %445, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %446)
  %447 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %445, i32 0, i32 0
  %448 = ptrtoint ptr %447 to i64
  %449 = and i64 %448, 72057594037927935
  %450 = xor i64 %449, 25399393228665167
  %451 = shl i64 %450, 17
  %452 = select i1 false, i64 0, i64 %451
  %453 = lshr i64 %450, 39
  %454 = select i1 false, i64 0, i64 %453
  %455 = or i64 %452, %454
  %456 = and i64 %455, 72057594037927935
  %457 = or i64 %456, -6557241057451442176
  store i64 %457, ptr %41, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %42, i64 %457)
  call void @runtime.ClobberPointerRegs()
  %458 = icmp eq ptr %41, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %458)
  %459 = load i64, ptr %41, align 4
  %460 = alloca i8, align 1
  call void @runtime.LoadHiddenPointee(ptr %460, i64 %459, i64 1)
  %461 = icmp eq ptr %460, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %461)
  %462 = load i8, ptr %460, align 1
  store i8 0, ptr %460, align 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %37, align 8
  call void @runtime.TouchConservativeSlot(ptr %37, i64 16)
  store [1 x ptr] zeroinitializer, ptr %38, align 8
  call void @runtime.TouchConservativeSlot(ptr %38, i64 8)
  store i64 0, ptr %39, align 4
  call void @runtime.TouchConservativeSlot(ptr %39, i64 8)
  store ptr null, ptr %40, align 8
  call void @runtime.TouchConservativeSlot(ptr %40, i64 8)
  store i64 0, ptr %41, align 4
  call void @runtime.TouchConservativeSlot(ptr %41, i64 8)
  store ptr null, ptr %42, align 8
  call void @runtime.TouchConservativeSlot(ptr %42, i64 8)
  call void @runtime.ClobberPointerRegs()
  %463 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %464 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %414, 2
  %465 = sext i8 %462 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %465)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %464)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %463)
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_2
  %466 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakeTypeAssertionError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 14 }, ptr %406, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %466)
  unreachable

_llgo_9:                                          ; No predecessors!
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testrt/makemap.make5"() {
_llgo_0:
  %0 = alloca ptr, align 8
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64 8, i64 0)
  store ptr %3, ptr %0, align 8
  %4 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load ptr, ptr %0, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"chan _llgo_int", ptr undef }, ptr %5, 1
  %7 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = load ptr, ptr %0, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"chan _llgo_int", ptr undef }, ptr %8, 1
  %10 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %11)
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[chan _llgo_int]_llgo_int", i64 0)
  store ptr %12, ptr %1, align 8
  %13 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = load ptr, ptr %1, align 8
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[chan _llgo_int]_llgo_int", ptr %14, ptr %0)
  store i64 100, ptr %15, align 4
  %16 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %16)
  %17 = load ptr, ptr %1, align 8
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[chan _llgo_int]_llgo_int", ptr %17, ptr %0)
  store i64 200, ptr %18, align 4
  store ptr null, ptr %0, align 8
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  call void @runtime.ClobberPointerRegs()
  store ptr null, ptr %0, align 8
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  call void @runtime.ClobberPointerRegs()
  %19 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = load ptr, ptr %1, align 8
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewRangeMapIter"(ptr @"map[chan _llgo_int]_llgo_int", ptr %20)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %22 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.RangeMapIterNext"(ptr %21)
  %23 = extractvalue { i1, ptr, ptr } %22, 0
  br i1 %23, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %25 = extractvalue { i1, ptr, i64 } %35, 1
  store ptr %25, ptr %2, align 8
  %26 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load ptr, ptr %2, align 8
  %28 = extractvalue { i1, ptr, i64 } %35, 2
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %28)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %24)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %29 = extractvalue { i1, ptr, ptr } %22, 1
  %30 = extractvalue { i1, ptr, ptr } %22, 2
  %31 = load ptr, ptr %29, align 8
  %32 = load i64, ptr %30, align 4
  %33 = insertvalue { i1, ptr, i64 } { i1 true, ptr undef, i64 undef }, ptr %31, 1
  %34 = insertvalue { i1, ptr, i64 } %33, i64 %32, 2
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %35 = phi { i1, ptr, i64 } [ %34, %_llgo_4 ], [ zeroinitializer, %_llgo_5 ]
  %36 = extractvalue { i1, ptr, i64 } %35, 0
  br i1 %36, label %_llgo_2, label %_llgo_3
}

define void @"github.com/goplus/llgo/cl/_testrt/makemap.make6"() {
_llgo_0:
  %0 = alloca ptr, align 8
  %1 = alloca ptr, align 8
  %2 = alloca { i64, i64 }, align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %3, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_int]_llgo_string", i64 0)
  store ptr %4, ptr %0, align 8
  %5 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = load ptr, ptr %0, align 8
  store ptr %6, ptr %1, align 8
  %7 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = load ptr, ptr %1, align 8
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %9, align 4
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.M", ptr %8, ptr %9)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 5 }, ptr %10, align 8
  call void @llvm.memset(ptr %9, i8 0, i64 8, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  %11 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = load ptr, ptr %1, align 8
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewRangeMapIter"(ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.M", ptr %12)
  store ptr null, ptr %0, align 8
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %14 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.RangeMapIterNext"(ptr %13)
  %15 = extractvalue { i1, ptr, ptr } %14, 0
  br i1 %15, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %17 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %44, 1
  %18 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %44, 2
  %19 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %18, ptr %19, align 8
  %20 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %19, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %21, ptr %3, align 8
  %22 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %21, 0
  %23 = ptrtoint ptr %22 to i64
  %24 = and i64 %23, 72057594037927935
  %25 = xor i64 %24, 25399393228665167
  %26 = shl i64 %25, 17
  %27 = select i1 false, i64 0, i64 %26
  %28 = lshr i64 %25, 39
  %29 = select i1 false, i64 0, i64 %28
  %30 = or i64 %27, %29
  %31 = and i64 %30, 72057594037927935
  %32 = or i64 %31, -6557241057451442176
  %33 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %21, 1
  %34 = insertvalue { i64, i64 } undef, i64 %32, 0
  %35 = insertvalue { i64, i64 } %34, i64 %33, 1
  store { i64, i64 } %35, ptr %2, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %19, align 8
  call void @runtime.TouchConservativeSlot(ptr %19, i64 16)
  call void @runtime.ClobberPointerRegs()
  %36 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %36)
  %37 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %3, align 8
  store { i64, i64 } zeroinitializer, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %37)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %16)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %38 = extractvalue { i1, ptr, ptr } %14, 1
  %39 = extractvalue { i1, ptr, ptr } %14, 2
  %40 = load i64, ptr %38, align 4
  %41 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %39, align 8
  %42 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" undef }, i64 %40, 1
  %43 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %42, %"github.com/goplus/llgo/runtime/internal/runtime.String" %41, 2
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %44 = phi { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } [ %43, %_llgo_4 ], [ zeroinitializer, %_llgo_5 ]
  %45 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %44, 0
  br i1 %45, label %_llgo_2, label %_llgo_3
}

define void @"github.com/goplus/llgo/cl/_testrt/makemap.make7"() {
_llgo_0:
  %0 = alloca ptr, align 8
  %1 = alloca { i64, i64 }, align 8
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %2, align 8
  %3 = alloca { i64, i64 }, align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %4, align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.0.7]_llgo_string", i64 2)
  store ptr %5, ptr %0, align 8
  %6 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load ptr, ptr %0, align 8
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %8, align 4
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.0.7]_llgo_string", ptr %7, ptr %8)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 5 }, ptr %9, align 8
  call void @llvm.memset(ptr %8, i8 0, i64 8, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  %10 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = load ptr, ptr %0, align 8
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %12, align 4
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.0.7]_llgo_string", ptr %11, ptr %12)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr %13, align 8
  call void @llvm.memset(ptr %12, i8 0, i64 8, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  %14 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %14)
  %15 = load ptr, ptr %0, align 8
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewRangeMapIter"(ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.0.7]_llgo_string", ptr %15)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %17 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.RangeMapIterNext"(ptr %16)
  %18 = extractvalue { i1, ptr, ptr } %17, 0
  br i1 %18, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %20 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %73, 1
  %21 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %73, 2
  %22 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %21, ptr %22, align 8
  %23 = icmp eq ptr %22, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %22, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %24, ptr %2, align 8
  %25 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %24, 0
  %26 = ptrtoint ptr %25 to i64
  %27 = and i64 %26, 72057594037927935
  %28 = xor i64 %27, 25399393228665167
  %29 = shl i64 %28, 17
  %30 = select i1 false, i64 0, i64 %29
  %31 = lshr i64 %28, 39
  %32 = select i1 false, i64 0, i64 %31
  %33 = or i64 %30, %32
  %34 = and i64 %33, 72057594037927935
  %35 = or i64 %34, -6557241057451442176
  %36 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %24, 1
  %37 = insertvalue { i64, i64 } undef, i64 %35, 0
  %38 = insertvalue { i64, i64 } %37, i64 %36, 1
  store { i64, i64 } %38, ptr %1, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %22, align 8
  call void @runtime.TouchConservativeSlot(ptr %22, i64 16)
  call void @runtime.ClobberPointerRegs()
  %39 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %39)
  %40 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, align 8
  store { i64, i64 } zeroinitializer, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %40)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %19)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_6
  %41 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %41)
  %42 = load ptr, ptr %0, align 8
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %43, align 4
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.0.7]_llgo_string", ptr %42, ptr %43)
  %45 = icmp eq ptr %44, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %44, align 8
  call void @llvm.memset(ptr %43, i8 0, i64 8, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %43, i64 8)
  %47 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %46, ptr %47, align 8
  %48 = icmp eq ptr %47, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %48)
  %49 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %47, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %49, ptr %4, align 8
  %50 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %49, 0
  %51 = ptrtoint ptr %50 to i64
  %52 = and i64 %51, 72057594037927935
  %53 = xor i64 %52, 25399393228665167
  %54 = shl i64 %53, 17
  %55 = select i1 false, i64 0, i64 %54
  %56 = lshr i64 %53, 39
  %57 = select i1 false, i64 0, i64 %56
  %58 = or i64 %55, %57
  %59 = and i64 %58, 72057594037927935
  %60 = or i64 %59, -6557241057451442176
  %61 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %49, 1
  %62 = insertvalue { i64, i64 } undef, i64 %60, 0
  %63 = insertvalue { i64, i64 } %62, i64 %61, 1
  store { i64, i64 } %63, ptr %3, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %47, align 8
  call void @runtime.TouchConservativeSlot(ptr %47, i64 16)
  call void @runtime.ClobberPointerRegs()
  store ptr null, ptr %0, align 8
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  call void @runtime.ClobberPointerRegs()
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %65 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %65)
  %66 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %4, align 8
  store { i64, i64 } zeroinitializer, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %66)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %64)
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %67 = extractvalue { i1, ptr, ptr } %17, 1
  %68 = extractvalue { i1, ptr, ptr } %17, 2
  %69 = load i64, ptr %67, align 4
  %70 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %68, align 8
  %71 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" undef }, i64 %69, 1
  %72 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %71, %"github.com/goplus/llgo/runtime/internal/runtime.String" %70, 2
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %73 = phi { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } [ %72, %_llgo_4 ], [ zeroinitializer, %_llgo_5 ]
  %74 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %73, 0
  br i1 %74, label %_llgo_2, label %_llgo_3
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr, ptr, ptr)

declare void @runtime.ClobberPointerRegs()

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewRangeMapIter"(ptr, ptr)

declare { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.RangeMapIterNext"(ptr)

declare { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.MapDelete"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64, i64)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr, ptr, ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakeTypeAssertionError"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare i64 @runtime.AllocZHidden(i64)

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64, i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
