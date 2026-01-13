; ModuleID = 'github.com/goplus/llgo/cl/_testrt/makemap'
source_filename = "github.com/goplus/llgo/cl/_testrt/makemap"

%"github.com/goplus/llgo/runtime/abi.MapType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, ptr, ptr, { ptr, ptr, i1 }, i8, i8, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr, i1 }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
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
@"map[_llgo_int]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2084636366, i8 0, i8 8, i8 8, i8 53, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 14 }, ptr @"*map[_llgo_int]_llgo_string" }, ptr @_llgo_int, ptr @_llgo_string, ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ", { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehash", ptr @_llgo_int, i1 undef }, i8 8, i8 16, i16 208, i32 4 }, align 8
@0 = private unnamed_addr constant [14 x i8] c"map[int]string", align 1
@"*map[_llgo_int]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 668541983, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 14 }, ptr null }, ptr @"map[_llgo_int]_llgo_string" }, align 8
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 3 }, ptr @"*_llgo_int" }, align 8
@1 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr @"*_llgo_string" }, align 8
@2 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"github.com/goplus/llgo/cl/_testrt/makemap.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 208, i64 208, i32 852563527, i8 0, i8 8, i8 8, i8 25, { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ", i1 undef }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 82 }, ptr @"*github.com/goplus/llgo/cl/_testrt/makemap.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ$fields", i64 4, i64 4 } }, align 8
@3 = private unnamed_addr constant [82 x i8] c"struct { topbits [8]uint8; keys [8]int; elems [8]string; overflow unsafe.Pointer }", align 1
@"*github.com/goplus/llgo/cl/_testrt/makemap.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 464772172, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 82 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" }, align 8
@4 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@"[8]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 307038632, i8 8, i8 1, i8 1, i8 17, { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_uint8", i1 undef }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 8 }, ptr @"*[8]_llgo_uint8" }, ptr @_llgo_uint8, ptr @"[]_llgo_uint8", i64 8 }, align 8
@5 = private unnamed_addr constant [8 x i8] c"[8]uint8", align 1
@"*[8]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -566230779, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 8 }, ptr null }, ptr @"[8]_llgo_uint8" }, align 8
@_llgo_uint8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 269156761, i8 12, i8 1, i8 1, i8 40, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr @"*_llgo_uint8" }, align 8
@6 = private unnamed_addr constant [5 x i8] c"uint8", align 1
@"*_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1277858201, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr null }, ptr @_llgo_uint8 }, align 8
@"[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 370346748, i8 0, i8 8, i8 8, i8 23, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 7 }, ptr @"*[]_llgo_uint8" }, ptr @_llgo_uint8 }, align 8
@7 = private unnamed_addr constant [7 x i8] c"[]uint8", align 1
@"*[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2143776929, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 7 }, ptr null }, ptr @"[]_llgo_uint8" }, align 8
@8 = private unnamed_addr constant [4 x i8] c"keys", align 1
@"[8]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 0, i32 -1310855284, i8 8, i8 8, i8 8, i8 17, { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_int", i1 undef }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 6 }, ptr @"*[8]_llgo_int" }, ptr @_llgo_int, ptr @"[]_llgo_int", i64 8 }, align 8
@9 = private unnamed_addr constant [6 x i8] c"[8]int", align 1
@"*[8]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1841254256, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 6 }, ptr null }, ptr @"[8]_llgo_int" }, align 8
@"[]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -1129561019, i8 0, i8 8, i8 8, i8 23, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr @"*[]_llgo_int" }, ptr @_llgo_int }, align 8
@10 = private unnamed_addr constant [5 x i8] c"[]int", align 1
@"*[]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1428175521, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr null }, ptr @"[]_llgo_int" }, align 8
@11 = private unnamed_addr constant [5 x i8] c"elems", align 1
@"[8]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 128, i64 120, i32 460245566, i8 0, i8 8, i8 8, i8 17, { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_string", i1 undef }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 9 }, ptr @"*[8]_llgo_string" }, ptr @_llgo_string, ptr @"[]_llgo_string", i64 8 }, align 8
@12 = private unnamed_addr constant [9 x i8] c"[8]string", align 1
@"*[8]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 368026044, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 9 }, ptr null }, ptr @"[8]_llgo_string" }, align 8
@"[]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 608974920, i8 0, i8 8, i8 8, i8 23, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 8 }, ptr @"*[]_llgo_string" }, ptr @_llgo_string }, align 8
@13 = private unnamed_addr constant [8 x i8] c"[]string", align 1
@"*[]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -157880218, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 8 }, ptr null }, ptr @"[]_llgo_string" }, align 8
@14 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@15 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"github.com/goplus/llgo/cl/_testrt/makemap.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 }, ptr @"[8]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 4 }, ptr @"[8]_llgo_int", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 5 }, ptr @"[8]_llgo_string", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 8 }, ptr @_llgo_Pointer, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@16 = private unnamed_addr constant [5 x i8] c"hello", align 1
@17 = private unnamed_addr constant [5 x i8] c"world", align 1
@18 = private unnamed_addr constant [4 x i8] c"llgo", align 1
@19 = private unnamed_addr constant [1 x i8] c":", align 1
@"map[_llgo_string]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1641501154, i8 0, i8 8, i8 8, i8 53, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 14 }, ptr @"*map[_llgo_string]_llgo_int" }, ptr @_llgo_string, ptr @_llgo_int, ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc", { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehash", ptr @_llgo_string, i1 undef }, i8 16, i8 8, i16 208, i32 12 }, align 8
@20 = private unnamed_addr constant [14 x i8] c"map[string]int", align 1
@"*map[_llgo_string]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 762774621, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 14 }, ptr null }, ptr @"map[_llgo_string]_llgo_int" }, align 8
@"github.com/goplus/llgo/cl/_testrt/makemap.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 208, i64 208, i32 -731533550, i8 0, i8 8, i8 8, i8 25, { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc", i1 undef }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 82 }, ptr @"*github.com/goplus/llgo/cl/_testrt/makemap.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc$fields", i64 4, i64 4 } }, align 8
@21 = private unnamed_addr constant [82 x i8] c"struct { topbits [8]uint8; keys [8]string; elems [8]int; overflow unsafe.Pointer }", align 1
@"*github.com/goplus/llgo/cl/_testrt/makemap.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -556211674, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 82 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" }, align 8
@"github.com/goplus/llgo/cl/_testrt/makemap.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 }, ptr @"[8]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 4 }, ptr @"[8]_llgo_string", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 5 }, ptr @"[8]_llgo_int", i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 8 }, ptr @_llgo_Pointer, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@22 = private unnamed_addr constant [2 x i8] c"go", align 1
@23 = private unnamed_addr constant [7 x i8] c"bad key", align 1
@24 = private unnamed_addr constant [7 x i8] c"bad len", align 1
@"map[_llgo_any]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1757098085, i8 0, i8 8, i8 8, i8 53, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 20 }, ptr @"*map[_llgo_any]_llgo_int" }, ptr @_llgo_any, ptr @_llgo_int, ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$9fzK8iv9NREHM30G-Ea6p38YjudCiRiAagptdq1kJbs", { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehash", ptr @_llgo_any, i1 undef }, i8 16, i8 8, i16 208, i32 24 }, align 8
@25 = private unnamed_addr constant [20 x i8] c"map[interface {}]int", align 1
@"*map[_llgo_any]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 704453536, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 20 }, ptr null }, ptr @"map[_llgo_any]_llgo_int" }, align 8
@_llgo_any = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1376530322, i8 0, i8 8, i8 8, i8 20, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 12 }, ptr @"*_llgo_any" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@26 = private unnamed_addr constant [12 x i8] c"interface {}", align 1
@"*_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1741196194, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 12 }, ptr null }, ptr @_llgo_any }, align 8
@27 = private unnamed_addr constant [41 x i8] c"github.com/goplus/llgo/cl/_testrt/makemap", align 1
@"github.com/goplus/llgo/cl/_testrt/makemap.struct$9fzK8iv9NREHM30G-Ea6p38YjudCiRiAagptdq1kJbs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 208, i64 208, i32 23526460, i8 0, i8 8, i8 8, i8 25, { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$9fzK8iv9NREHM30G-Ea6p38YjudCiRiAagptdq1kJbs", i1 undef }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 88 }, ptr @"*github.com/goplus/llgo/cl/_testrt/makemap.struct$9fzK8iv9NREHM30G-Ea6p38YjudCiRiAagptdq1kJbs" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$9fzK8iv9NREHM30G-Ea6p38YjudCiRiAagptdq1kJbs$fields", i64 4, i64 4 } }, align 8
@28 = private unnamed_addr constant [88 x i8] c"struct { topbits [8]uint8; keys [8]interface {}; elems [8]int; overflow unsafe.Pointer }", align 1
@"*github.com/goplus/llgo/cl/_testrt/makemap.struct$9fzK8iv9NREHM30G-Ea6p38YjudCiRiAagptdq1kJbs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1437071136, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 88 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$9fzK8iv9NREHM30G-Ea6p38YjudCiRiAagptdq1kJbs" }, align 8
@"[8]_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 128, i64 128, i32 1470789279, i8 0, i8 8, i8 8, i8 17, { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_any", i1 undef }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 15 }, ptr @"*[8]_llgo_any" }, ptr @_llgo_any, ptr @"[]_llgo_any", i64 8 }, align 8
@29 = private unnamed_addr constant [15 x i8] c"[8]interface {}", align 1
@"*[8]_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -281120639, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 15 }, ptr null }, ptr @"[8]_llgo_any" }, align 8
@"[]_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -396233978, i8 0, i8 8, i8 8, i8 23, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 14 }, ptr @"*[]_llgo_any" }, ptr @_llgo_any }, align 8
@30 = private unnamed_addr constant [14 x i8] c"[]interface {}", align 1
@"*[]_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1171476965, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 14 }, ptr null }, ptr @"[]_llgo_any" }, align 8
@"github.com/goplus/llgo/cl/_testrt/makemap.struct$9fzK8iv9NREHM30G-Ea6p38YjudCiRiAagptdq1kJbs$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 }, ptr @"[8]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 4 }, ptr @"[8]_llgo_any", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 5 }, ptr @"[8]_llgo_int", i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 8 }, ptr @_llgo_Pointer, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.ArrayType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 1575369363, i8 13, i8 8, i8 8, i8 49, { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", i1 undef }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 7 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1" }, ptr @_llgo_int, ptr @"[]_llgo_int", i64 1 }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@31 = private unnamed_addr constant [7 x i8] c"main.N1", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 180030794, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 7 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1" }, align 8
@32 = private unnamed_addr constant [73 x i8] c"type assertion any -> github.com/goplus/llgo/cl/_testrt/makemap.N1 failed", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.ArrayType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 2, i64 0, i32 -606356617, i8 13, i8 1, i8 1, i8 17, { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", i1 undef }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K" }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", ptr @"[]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", i64 1 }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@33 = private unnamed_addr constant [6 x i8] c"main.K", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1592755158, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K" }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 2, i64 0, i32 -1436087883, i8 13, i8 1, i8 1, i8 25, { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", i1 undef }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$e65EDK9vxC36Nz3YTgO1ulssLlNH03Bva_WWaCjH-4A$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@34 = private unnamed_addr constant [6 x i8] c"main.N", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 274039324, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" }, align 8
@35 = private unnamed_addr constant [2 x i8] c"n1", align 1
@_llgo_int8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 1444672578, i8 12, i8 1, i8 1, i8 35, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @"*_llgo_int8" }, align 8
@36 = private unnamed_addr constant [4 x i8] c"int8", align 1
@"*_llgo_int8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1399554408, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr null }, ptr @_llgo_int8 }, align 8
@37 = private unnamed_addr constant [2 x i8] c"n2", align 1
@"github.com/goplus/llgo/cl/_testrt/makemap.struct$e65EDK9vxC36Nz3YTgO1ulssLlNH03Bva_WWaCjH-4A$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 2 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 2 }, ptr @_llgo_int8, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"[]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 1367285445, i8 0, i8 8, i8 8, i8 23, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 8 }, ptr @"*[]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" }, align 8
@38 = private unnamed_addr constant [8 x i8] c"[]main.N", align 1
@"*[]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1800078399, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 8 }, ptr null }, ptr @"[]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" }, align 8
@39 = private unnamed_addr constant [72 x i8] c"type assertion any -> github.com/goplus/llgo/cl/_testrt/makemap.K failed", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.ArrayType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 700304692, i8 13, i8 8, i8 8, i8 49, { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2", i1 undef }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 7 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2" }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", ptr @"[]*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", i64 1 }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@40 = private unnamed_addr constant [7 x i8] c"main.K2", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -107137747, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 7 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2" }, align 8
@"[]*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -134178614, i8 0, i8 8, i8 8, i8 23, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr @"*[]*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" }, align 8
@41 = private unnamed_addr constant [9 x i8] c"[]*main.N", align 1
@"*[]*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1993310787, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr null }, ptr @"[]*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" }, align 8
@42 = private unnamed_addr constant [73 x i8] c"type assertion any -> github.com/goplus/llgo/cl/_testrt/makemap.K2 failed", align 1
@"chan _llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ChanType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1550885616, i8 8, i8 8, i8 8, i8 50, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 8 }, ptr @"*chan _llgo_int" }, ptr @_llgo_int, i64 3 }, align 8
@43 = private unnamed_addr constant [8 x i8] c"chan int", align 1
@"*chan _llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -751933087, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 8 }, ptr null }, ptr @"chan _llgo_int" }, align 8
@"map[chan _llgo_int]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1193918658, i8 0, i8 8, i8 8, i8 53, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 16 }, ptr @"*map[chan _llgo_int]_llgo_int" }, ptr @"chan _llgo_int", ptr @_llgo_int, ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$4KcdkUR5FbDYt3NIiEtVCxQ6i6838GczSLNb-BPAixI", { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehash", ptr @"chan _llgo_int", i1 undef }, i8 8, i8 8, i16 144, i32 4 }, align 8
@44 = private unnamed_addr constant [16 x i8] c"map[chan int]int", align 1
@"*map[chan _llgo_int]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 501491728, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 16 }, ptr null }, ptr @"map[chan _llgo_int]_llgo_int" }, align 8
@"github.com/goplus/llgo/cl/_testrt/makemap.struct$4KcdkUR5FbDYt3NIiEtVCxQ6i6838GczSLNb-BPAixI" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 144, i64 144, i32 -1404142371, i8 8, i8 8, i8 8, i8 25, { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$4KcdkUR5FbDYt3NIiEtVCxQ6i6838GczSLNb-BPAixI", i1 undef }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 84 }, ptr @"*github.com/goplus/llgo/cl/_testrt/makemap.struct$4KcdkUR5FbDYt3NIiEtVCxQ6i6838GczSLNb-BPAixI" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$4KcdkUR5FbDYt3NIiEtVCxQ6i6838GczSLNb-BPAixI$fields", i64 4, i64 4 } }, align 8
@45 = private unnamed_addr constant [84 x i8] c"struct { topbits [8]uint8; keys [8]chan int; elems [8]int; overflow unsafe.Pointer }", align 1
@"*github.com/goplus/llgo/cl/_testrt/makemap.struct$4KcdkUR5FbDYt3NIiEtVCxQ6i6838GczSLNb-BPAixI" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 460156441, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 84 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$4KcdkUR5FbDYt3NIiEtVCxQ6i6838GczSLNb-BPAixI" }, align 8
@"[8]chan _llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 64, i32 -462547445, i8 8, i8 8, i8 8, i8 17, { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]chan _llgo_int", i1 undef }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 11 }, ptr @"*[8]chan _llgo_int" }, ptr @"chan _llgo_int", ptr @"[]chan _llgo_int", i64 8 }, align 8
@46 = private unnamed_addr constant [11 x i8] c"[8]chan int", align 1
@"*[8]chan _llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2030067792, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 11 }, ptr null }, ptr @"[8]chan _llgo_int" }, align 8
@"[]chan _llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 214104305, i8 0, i8 8, i8 8, i8 23, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 10 }, ptr @"*[]chan _llgo_int" }, ptr @"chan _llgo_int" }, align 8
@47 = private unnamed_addr constant [10 x i8] c"[]chan int", align 1
@"*[]chan _llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -385425152, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 10 }, ptr null }, ptr @"[]chan _llgo_int" }, align 8
@"github.com/goplus/llgo/cl/_testrt/makemap.struct$4KcdkUR5FbDYt3NIiEtVCxQ6i6838GczSLNb-BPAixI$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 }, ptr @"[8]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 4 }, ptr @"[8]chan _llgo_int", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 5 }, ptr @"[8]_llgo_int", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 8 }, ptr @_llgo_Pointer, i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.M" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.MapType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -928142936, i8 5, i8 8, i8 8, i8 53, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.M" }, ptr @_llgo_int, ptr @_llgo_string, ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ", { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehash", ptr @_llgo_int, i1 undef }, i8 8, i8 16, i16 208, i32 4 }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@48 = private unnamed_addr constant [6 x i8] c"main.M", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.M" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1213381365, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.M" }, align 8
@"map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1422302973, i8 0, i8 8, i8 8, i8 53, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 17 }, ptr @"*map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0]_llgo_string" }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0", ptr @_llgo_string, ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$tJooAKjBfWFVdIN3UQAErvHaJ-wlhiEZpoJy2GckluU", { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehash", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0", i1 undef }, i8 8, i8 16, i16 208, i32 4 }, align 8
@49 = private unnamed_addr constant [17 x i8] c"map[main.N]string", align 1
@"*map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -216263446, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 17 }, ptr null }, ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0]_llgo_string" }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -531504893, i8 13, i8 8, i8 8, i8 34, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1451283354, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0" }, align 8
@"github.com/goplus/llgo/cl/_testrt/makemap.struct$tJooAKjBfWFVdIN3UQAErvHaJ-wlhiEZpoJy2GckluU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 208, i64 208, i32 1188731439, i8 0, i8 8, i8 8, i8 25, { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$tJooAKjBfWFVdIN3UQAErvHaJ-wlhiEZpoJy2GckluU", i1 undef }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 85 }, ptr @"*github.com/goplus/llgo/cl/_testrt/makemap.struct$tJooAKjBfWFVdIN3UQAErvHaJ-wlhiEZpoJy2GckluU" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$tJooAKjBfWFVdIN3UQAErvHaJ-wlhiEZpoJy2GckluU$fields", i64 4, i64 4 } }, align 8
@50 = private unnamed_addr constant [85 x i8] c"struct { topbits [8]uint8; keys [8]main.N; elems [8]string; overflow unsafe.Pointer }", align 1
@"*github.com/goplus/llgo/cl/_testrt/makemap.struct$tJooAKjBfWFVdIN3UQAErvHaJ-wlhiEZpoJy2GckluU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 260618100, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 85 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$tJooAKjBfWFVdIN3UQAErvHaJ-wlhiEZpoJy2GckluU" }, align 8
@"[8]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 0, i32 -248464144, i8 8, i8 8, i8 8, i8 17, { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0", i1 undef }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 9 }, ptr @"*[8]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0" }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0", ptr @"[]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0", i64 8 }, align 8
@51 = private unnamed_addr constant [9 x i8] c"[8]main.N", align 1
@"*[8]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -615844884, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 9 }, ptr null }, ptr @"[8]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0" }, align 8
@"[]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 1834209043, i8 0, i8 8, i8 8, i8 23, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 8 }, ptr @"*[]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0" }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0" }, align 8
@"*[]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1663940180, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 8 }, ptr null }, ptr @"[]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0" }, align 8
@"github.com/goplus/llgo/cl/_testrt/makemap.struct$tJooAKjBfWFVdIN3UQAErvHaJ-wlhiEZpoJy2GckluU$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 }, ptr @"[8]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 4 }, ptr @"[8]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 5 }, ptr @"[8]_llgo_string", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 8 }, ptr @_llgo_Pointer, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8

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

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/makemap.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %4 = call ptr @"github.com/goplus/llgo/cl/_testrt/makemap.make1$coro"()
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

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_8, %_llgo_3
  %10 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_5:                                          ; preds = %_llgo_11, %_llgo_10, %_llgo_8, %_llgo_3
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_12, %_llgo_5
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
  call void @"github.com/goplus/llgo/cl/_testrt/makemap.make2"()
  call void @"github.com/goplus/llgo/cl/_testrt/makemap.make3"()
  call void @"github.com/goplus/llgo/cl/_testrt/makemap.make4"()
  call void @"github.com/goplus/llgo/cl/_testrt/makemap.make5"()
  call void @"github.com/goplus/llgo/cl/_testrt/makemap.make6"()
  call void @"github.com/goplus/llgo/cl/_testrt/makemap.make7"()
  br label %_llgo_5

_llgo_12:                                         ; preds = %_llgo_5
  br label %_llgo_6
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

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/makemap.make1$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_12, label %_llgo_13

_llgo_1:                                          ; preds = %_llgo_17
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_int]_llgo_string", i64 0)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %5, align 4
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_int]_llgo_string", ptr %4, ptr %5)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 5 }, ptr %6, align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %7, align 4
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_int]_llgo_string", ptr %4, ptr %7)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr %8, align 8
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 3, ptr %9, align 4
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_int]_llgo_string", ptr %4, ptr %9)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 4 }, ptr %10, align 8
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %11, align 4
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr @"map[_llgo_int]_llgo_string", ptr %4, ptr %11)
  %13 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %12, align 8
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %14, align 4
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr @"map[_llgo_int]_llgo_string", ptr %4, ptr %14)
  %16 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %15, align 8
  %17 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr @"map[_llgo_int]_llgo_string", ptr %4)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %19 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %18)
  %20 = extractvalue { i1, ptr, ptr } %19, 0
  br i1 %20, label %_llgo_18, label %_llgo_19

_llgo_3:                                          ; preds = %_llgo_20
  %21 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %80, 1
  %22 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %80, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 1 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_20
  %23 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr %4)
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_string]_llgo_int", i64 %23)
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr @"map[_llgo_int]_llgo_string", ptr %4)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_6, %_llgo_4
  %26 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %25)
  %27 = extractvalue { i1, ptr, ptr } %26, 0
  br i1 %27, label %_llgo_21, label %_llgo_22

_llgo_6:                                          ; preds = %_llgo_23
  %28 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %88, 1
  %29 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %88, 2
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %29, ptr %30, align 8
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_string]_llgo_int", ptr %24, ptr %30)
  store i64 %28, ptr %31, align 4
  br label %_llgo_5

_llgo_7:                                          ; preds = %_llgo_23
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 4 }, ptr %32, align 8
  %33 = call { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr @"map[_llgo_string]_llgo_int", ptr %24, ptr %32)
  %34 = extractvalue { ptr, i1 } %33, 0
  %35 = load i64, ptr %34, align 4
  %36 = extractvalue { ptr, i1 } %33, 1
  %37 = insertvalue { i64, i1 } undef, i64 %35, 0
  %38 = insertvalue { i64, i1 } %37, i1 %36, 1
  %39 = extractvalue { i64, i1 } %38, 0
  %40 = extractvalue { i64, i1 } %38, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %39)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %40)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 2 }, ptr %41, align 8
  %42 = call { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr @"map[_llgo_string]_llgo_int", ptr %24, ptr %41)
  %43 = extractvalue { ptr, i1 } %42, 0
  %44 = load i64, ptr %43, align 4
  %45 = extractvalue { ptr, i1 } %42, 1
  %46 = insertvalue { i64, i1 } undef, i64 %44, 0
  %47 = insertvalue { i64, i1 } %46, i1 %45, 1
  %48 = extractvalue { i64, i1 } %47, 0
  %49 = extractvalue { i64, i1 } %47, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 2 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %48)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %49)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 4 }, ptr %50, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.MapDelete"(ptr @"map[_llgo_string]_llgo_int", ptr %24, ptr %50)
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 4 }, ptr %51, align 8
  %52 = call { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr @"map[_llgo_string]_llgo_int", ptr %24, ptr %51)
  %53 = extractvalue { ptr, i1 } %52, 0
  %54 = load i64, ptr %53, align 4
  %55 = extractvalue { ptr, i1 } %52, 1
  %56 = insertvalue { i64, i1 } undef, i64 %54, 0
  %57 = insertvalue { i64, i1 } %56, i1 %55, 1
  %58 = extractvalue { i64, i1 } %57, 0
  %59 = extractvalue { i64, i1 } %57, 1
  br i1 %59, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  %60 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 7 }, ptr %60, align 8
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %60, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %61)
  br label %_llgo_15

_llgo_9:                                          ; preds = %_llgo_7
  %62 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr %24)
  %63 = icmp ne i64 %62, 2
  br i1 %63, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 7 }, ptr %64, align 8
  %65 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %64, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %65)
  br label %_llgo_15

_llgo_11:                                         ; preds = %_llgo_9
  br label %_llgo_15

_llgo_12:                                         ; preds = %_llgo_0
  %66 = call i64 @llvm.coro.size.i64()
  %67 = call ptr @malloc(i64 %66)
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_0
  %68 = phi ptr [ null, %_llgo_0 ], [ %67, %_llgo_12 ]
  %69 = call ptr @llvm.coro.begin(token %2, ptr %68)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %70 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %70, label %_llgo_14 [
    i8 0, label %_llgo_17
    i8 1, label %_llgo_15
  ]

_llgo_14:                                         ; preds = %_llgo_16, %_llgo_15, %_llgo_13
  %71 = call i1 @llvm.coro.end(ptr %69, i1 false, token none)
  ret ptr %69

_llgo_15:                                         ; preds = %_llgo_11, %_llgo_10, %_llgo_8, %_llgo_13
  %72 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %72, label %_llgo_14 [
    i8 0, label %_llgo_24
    i8 1, label %_llgo_16
  ]

_llgo_16:                                         ; preds = %_llgo_24, %_llgo_15
  %73 = call ptr @llvm.coro.free(token %2, ptr %69)
  call void @free(ptr %73)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_14

_llgo_17:                                         ; preds = %_llgo_13
  br label %_llgo_1

_llgo_18:                                         ; preds = %_llgo_2
  %74 = extractvalue { i1, ptr, ptr } %19, 1
  %75 = extractvalue { i1, ptr, ptr } %19, 2
  %76 = load i64, ptr %74, align 4
  %77 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %75, align 8
  %78 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" undef }, i64 %76, 1
  %79 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %78, %"github.com/goplus/llgo/runtime/internal/runtime.String" %77, 2
  br label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_2
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %80 = phi { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } [ %79, %_llgo_18 ], [ zeroinitializer, %_llgo_19 ]
  %81 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %80, 0
  br i1 %81, label %_llgo_3, label %_llgo_4

_llgo_21:                                         ; preds = %_llgo_5
  %82 = extractvalue { i1, ptr, ptr } %26, 1
  %83 = extractvalue { i1, ptr, ptr } %26, 2
  %84 = load i64, ptr %82, align 4
  %85 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %83, align 8
  %86 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" undef }, i64 %84, 1
  %87 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %86, %"github.com/goplus/llgo/runtime/internal/runtime.String" %85, 2
  br label %_llgo_23

_llgo_22:                                         ; preds = %_llgo_5
  br label %_llgo_23

_llgo_23:                                         ; preds = %_llgo_22, %_llgo_21
  %88 = phi { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } [ %87, %_llgo_21 ], [ zeroinitializer, %_llgo_22 ]
  %89 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %88, 0
  br i1 %89, label %_llgo_6, label %_llgo_7

_llgo_24:                                         ; preds = %_llgo_15
  br label %_llgo_16
}

define void @"github.com/goplus/llgo/cl/_testrt/makemap.make2"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_int]_llgo_string", i64 0)
  %1 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr %0)
  %2 = icmp eq ptr %0, null
  %3 = icmp ne ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 true)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_any]_llgo_int", i64 0)
  %6 = alloca [1 x i64], align 8
  call void @llvm.memset(ptr %6, i8 0, i64 8, i1 false)
  %7 = getelementptr inbounds i64, ptr %6, i64 0
  store i64 1, ptr %7, align 4
  %8 = load [1 x i64], ptr %6, align 4
  %9 = extractvalue [1 x i64] %8, 0
  %10 = inttoptr i64 %9 to ptr
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", ptr undef }, ptr %10, 1
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %11, ptr %12, align 8
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_any]_llgo_int", ptr %5, ptr %12)
  store i64 100, ptr %13, align 4
  %14 = alloca [1 x i64], align 8
  call void @llvm.memset(ptr %14, i8 0, i64 8, i1 false)
  %15 = getelementptr inbounds i64, ptr %14, i64 0
  store i64 2, ptr %15, align 4
  %16 = load [1 x i64], ptr %14, align 4
  %17 = extractvalue [1 x i64] %16, 0
  %18 = inttoptr i64 %17 to ptr
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", ptr undef }, ptr %18, 1
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %19, ptr %20, align 8
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_any]_llgo_int", ptr %5, ptr %20)
  store i64 200, ptr %21, align 4
  %22 = alloca [1 x i64], align 8
  call void @llvm.memset(ptr %22, i8 0, i64 8, i1 false)
  %23 = getelementptr inbounds i64, ptr %22, i64 0
  store i64 3, ptr %23, align 4
  %24 = load [1 x i64], ptr %22, align 4
  %25 = extractvalue [1 x i64] %24, 0
  %26 = inttoptr i64 %25 to ptr
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", ptr undef }, ptr %26, 1
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %27, ptr %28, align 8
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_any]_llgo_int", ptr %5, ptr %28)
  store i64 300, ptr %29, align 4
  %30 = alloca [1 x i64], align 8
  call void @llvm.memset(ptr %30, i8 0, i64 8, i1 false)
  %31 = getelementptr inbounds i64, ptr %30, i64 0
  store i64 2, ptr %31, align 4
  %32 = load [1 x i64], ptr %30, align 4
  %33 = extractvalue [1 x i64] %32, 0
  %34 = inttoptr i64 %33 to ptr
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", ptr undef }, ptr %34, 1
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %35, ptr %36, align 8
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_any]_llgo_int", ptr %5, ptr %36)
  store i64 -200, ptr %37, align 4
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr @"map[_llgo_any]_llgo_int", ptr %5)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_7, %_llgo_0
  %39 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %38)
  %40 = extractvalue { i1, ptr, ptr } %39, 0
  br i1 %40, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %41 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %51, 1
  %42 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %51, 2
  %43 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %41, 0
  %44 = icmp eq ptr %43, @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1"
  br i1 %44, label %_llgo_7, label %_llgo_8

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %45 = extractvalue { i1, ptr, ptr } %39, 1
  %46 = extractvalue { i1, ptr, ptr } %39, 2
  %47 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %45, align 8
  %48 = load i64, ptr %46, align 4
  %49 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } { i1 true, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, i64 undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %47, 1
  %50 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %49, i64 %48, 2
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %51 = phi { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } [ %50, %_llgo_4 ], [ zeroinitializer, %_llgo_5 ]
  %52 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %51, 0
  br i1 %52, label %_llgo_2, label %_llgo_3

_llgo_7:                                          ; preds = %_llgo_2
  %53 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %41, 1
  %54 = ptrtoint ptr %53 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %54)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %42)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_2
  %55 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 73 }, ptr %55, align 8
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %55, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %56)
  unreachable
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/makemap.make2$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_5, label %_llgo_6

_llgo_1:                                          ; preds = %_llgo_10
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_int]_llgo_string", i64 0)
  %5 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr %4)
  %6 = icmp eq ptr %4, null
  %7 = icmp ne ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %8 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 true)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_any]_llgo_int", i64 0)
  %10 = alloca [1 x i64], align 8
  call void @llvm.memset(ptr %10, i8 0, i64 8, i1 false)
  %11 = getelementptr inbounds i64, ptr %10, i64 0
  store i64 1, ptr %11, align 4
  %12 = load [1 x i64], ptr %10, align 4
  %13 = extractvalue [1 x i64] %12, 0
  %14 = inttoptr i64 %13 to ptr
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", ptr undef }, ptr %14, 1
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %15, ptr %16, align 8
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_any]_llgo_int", ptr %9, ptr %16)
  store i64 100, ptr %17, align 4
  %18 = alloca [1 x i64], align 8
  call void @llvm.memset(ptr %18, i8 0, i64 8, i1 false)
  %19 = getelementptr inbounds i64, ptr %18, i64 0
  store i64 2, ptr %19, align 4
  %20 = load [1 x i64], ptr %18, align 4
  %21 = extractvalue [1 x i64] %20, 0
  %22 = inttoptr i64 %21 to ptr
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", ptr undef }, ptr %22, 1
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %23, ptr %24, align 8
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_any]_llgo_int", ptr %9, ptr %24)
  store i64 200, ptr %25, align 4
  %26 = alloca [1 x i64], align 8
  call void @llvm.memset(ptr %26, i8 0, i64 8, i1 false)
  %27 = getelementptr inbounds i64, ptr %26, i64 0
  store i64 3, ptr %27, align 4
  %28 = load [1 x i64], ptr %26, align 4
  %29 = extractvalue [1 x i64] %28, 0
  %30 = inttoptr i64 %29 to ptr
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", ptr undef }, ptr %30, 1
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %31, ptr %32, align 8
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_any]_llgo_int", ptr %9, ptr %32)
  store i64 300, ptr %33, align 4
  %34 = alloca [1 x i64], align 8
  call void @llvm.memset(ptr %34, i8 0, i64 8, i1 false)
  %35 = getelementptr inbounds i64, ptr %34, i64 0
  store i64 2, ptr %35, align 4
  %36 = load [1 x i64], ptr %34, align 4
  %37 = extractvalue [1 x i64] %36, 0
  %38 = inttoptr i64 %37 to ptr
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", ptr undef }, ptr %38, 1
  %40 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %39, ptr %40, align 8
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_any]_llgo_int", ptr %9, ptr %40)
  store i64 -200, ptr %41, align 4
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr @"map[_llgo_any]_llgo_int", ptr %9)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_14, %_llgo_1
  %43 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %42)
  %44 = extractvalue { i1, ptr, ptr } %43, 0
  br i1 %44, label %_llgo_11, label %_llgo_12

_llgo_3:                                          ; preds = %_llgo_13
  %45 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %63, 1
  %46 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %63, 2
  %47 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %45, 0
  %48 = icmp eq ptr %47, @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1"
  br i1 %48, label %_llgo_14, label %_llgo_15

_llgo_4:                                          ; preds = %_llgo_13
  br label %_llgo_8

_llgo_5:                                          ; preds = %_llgo_0
  %49 = call i64 @llvm.coro.size.i64()
  %50 = call ptr @malloc(i64 %49)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %51 = phi ptr [ null, %_llgo_0 ], [ %50, %_llgo_5 ]
  %52 = call ptr @llvm.coro.begin(token %2, ptr %51)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %53 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %53, label %_llgo_7 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_8
  ]

_llgo_7:                                          ; preds = %_llgo_9, %_llgo_8, %_llgo_6
  %54 = call i1 @llvm.coro.end(ptr %52, i1 false, token none)
  ret ptr %52

_llgo_8:                                          ; preds = %_llgo_4, %_llgo_6
  %55 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %55, label %_llgo_7 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_9
  ]

_llgo_9:                                          ; preds = %_llgo_16, %_llgo_8
  %56 = call ptr @llvm.coro.free(token %2, ptr %52)
  call void @free(ptr %56)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_7

_llgo_10:                                         ; preds = %_llgo_6
  br label %_llgo_1

_llgo_11:                                         ; preds = %_llgo_2
  %57 = extractvalue { i1, ptr, ptr } %43, 1
  %58 = extractvalue { i1, ptr, ptr } %43, 2
  %59 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %57, align 8
  %60 = load i64, ptr %58, align 4
  %61 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } { i1 true, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, i64 undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %59, 1
  %62 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %61, i64 %60, 2
  br label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_2
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_11
  %63 = phi { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } [ %62, %_llgo_11 ], [ zeroinitializer, %_llgo_12 ]
  %64 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %63, 0
  br i1 %64, label %_llgo_3, label %_llgo_4

_llgo_14:                                         ; preds = %_llgo_3
  %65 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %45, 1
  %66 = ptrtoint ptr %65 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %66)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %46)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_15:                                         ; preds = %_llgo_3
  %67 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 73 }, ptr %67, align 8
  %68 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %67, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %68)
  unreachable

_llgo_16:                                         ; preds = %_llgo_8
  br label %_llgo_9
}

define void @"github.com/goplus/llgo/cl/_testrt/makemap.make3"() {
_llgo_0:
  %0 = alloca [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], align 8
  call void @llvm.memset(ptr %0, i8 0, i64 2, i1 false)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %0, i64 0
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %1, i32 0, i32 0
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %1, i32 0, i32 1
  store i8 1, ptr %2, align 1
  store i8 2, ptr %3, align 1
  %4 = load [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], ptr %0, align 1
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 2)
  store [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"] %4, ptr %5, align 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", ptr undef }, ptr %5, 1
  %7 = alloca [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], align 8
  call void @llvm.memset(ptr %7, i8 0, i64 2, i1 false)
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %7, i64 0
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %8, i32 0, i32 0
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %8, i32 0, i32 1
  store i8 1, ptr %9, align 1
  store i8 2, ptr %10, align 1
  %11 = load [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], ptr %7, align 1
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 2)
  store [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"] %11, ptr %12, align 1
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", ptr undef }, ptr %12, 1
  %14 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_any]_llgo_int", i64 0)
  %16 = alloca [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], align 8
  call void @llvm.memset(ptr %16, i8 0, i64 2, i1 false)
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %16, i64 0
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %17, i32 0, i32 0
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %17, i32 0, i32 1
  store i8 1, ptr %18, align 1
  store i8 2, ptr %19, align 1
  %20 = load [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], ptr %16, align 1
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 2)
  store [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"] %20, ptr %21, align 1
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", ptr undef }, ptr %21, 1
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %22, ptr %23, align 8
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_any]_llgo_int", ptr %15, ptr %23)
  store i64 100, ptr %24, align 4
  %25 = alloca [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], align 8
  call void @llvm.memset(ptr %25, i8 0, i64 2, i1 false)
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %25, i64 0
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %26, i32 0, i32 0
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %26, i32 0, i32 1
  store i8 3, ptr %27, align 1
  store i8 4, ptr %28, align 1
  %29 = load [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], ptr %25, align 1
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 2)
  store [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"] %29, ptr %30, align 1
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", ptr undef }, ptr %30, 1
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %31, ptr %32, align 8
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_any]_llgo_int", ptr %15, ptr %32)
  store i64 200, ptr %33, align 4
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr @"map[_llgo_any]_llgo_int", ptr %15)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_7, %_llgo_0
  %35 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %34)
  %36 = extractvalue { i1, ptr, ptr } %35, 0
  br i1 %36, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %37 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %47, 1
  %38 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %47, 2
  %39 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %37, 0
  %40 = icmp eq ptr %39, @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K"
  br i1 %40, label %_llgo_7, label %_llgo_8

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %41 = extractvalue { i1, ptr, ptr } %35, 1
  %42 = extractvalue { i1, ptr, ptr } %35, 2
  %43 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %41, align 8
  %44 = load i64, ptr %42, align 4
  %45 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } { i1 true, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, i64 undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %43, 1
  %46 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %45, i64 %44, 2
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %47 = phi { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } [ %46, %_llgo_4 ], [ zeroinitializer, %_llgo_5 ]
  %48 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %47, 0
  br i1 %48, label %_llgo_2, label %_llgo_3

_llgo_7:                                          ; preds = %_llgo_2
  %49 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %37, 1
  %50 = load [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], ptr %49, align 1
  %51 = alloca [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], align 8
  call void @llvm.memset(ptr %51, i8 0, i64 2, i1 false)
  store [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"] %50, ptr %51, align 1
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %51, i64 0
  %53 = load %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %52, align 1
  %54 = extractvalue %"github.com/goplus/llgo/cl/_testrt/makemap.N" %53, 0
  %55 = sext i8 %54 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %55)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %38)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_2
  %56 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 72 }, ptr %56, align 8
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %56, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %57)
  unreachable
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/makemap.make3$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_5, label %_llgo_6

_llgo_1:                                          ; preds = %_llgo_10
  %4 = alloca [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], align 8
  call void @llvm.memset(ptr %4, i8 0, i64 2, i1 false)
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %4, i64 0
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %5, i32 0, i32 1
  store i8 1, ptr %6, align 1
  store i8 2, ptr %7, align 1
  %8 = load [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], ptr %4, align 1
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 2)
  store [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"] %8, ptr %9, align 1
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", ptr undef }, ptr %9, 1
  %11 = alloca [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], align 8
  call void @llvm.memset(ptr %11, i8 0, i64 2, i1 false)
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %11, i64 0
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %12, i32 0, i32 0
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %12, i32 0, i32 1
  store i8 1, ptr %13, align 1
  store i8 2, ptr %14, align 1
  %15 = load [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], ptr %11, align 1
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 2)
  store [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"] %15, ptr %16, align 1
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", ptr undef }, ptr %16, 1
  %18 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %10, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_any]_llgo_int", i64 0)
  %20 = alloca [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], align 8
  call void @llvm.memset(ptr %20, i8 0, i64 2, i1 false)
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %20, i64 0
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %21, i32 0, i32 0
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %21, i32 0, i32 1
  store i8 1, ptr %22, align 1
  store i8 2, ptr %23, align 1
  %24 = load [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], ptr %20, align 1
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 2)
  store [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"] %24, ptr %25, align 1
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", ptr undef }, ptr %25, 1
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %26, ptr %27, align 8
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_any]_llgo_int", ptr %19, ptr %27)
  store i64 100, ptr %28, align 4
  %29 = alloca [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], align 8
  call void @llvm.memset(ptr %29, i8 0, i64 2, i1 false)
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %29, i64 0
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %30, i32 0, i32 0
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %30, i32 0, i32 1
  store i8 3, ptr %31, align 1
  store i8 4, ptr %32, align 1
  %33 = load [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], ptr %29, align 1
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 2)
  store [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"] %33, ptr %34, align 1
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", ptr undef }, ptr %34, 1
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %35, ptr %36, align 8
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_any]_llgo_int", ptr %19, ptr %36)
  store i64 200, ptr %37, align 4
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr @"map[_llgo_any]_llgo_int", ptr %19)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_14, %_llgo_1
  %39 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %38)
  %40 = extractvalue { i1, ptr, ptr } %39, 0
  br i1 %40, label %_llgo_11, label %_llgo_12

_llgo_3:                                          ; preds = %_llgo_13
  %41 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %59, 1
  %42 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %59, 2
  %43 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %41, 0
  %44 = icmp eq ptr %43, @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K"
  br i1 %44, label %_llgo_14, label %_llgo_15

_llgo_4:                                          ; preds = %_llgo_13
  br label %_llgo_8

_llgo_5:                                          ; preds = %_llgo_0
  %45 = call i64 @llvm.coro.size.i64()
  %46 = call ptr @malloc(i64 %45)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %47 = phi ptr [ null, %_llgo_0 ], [ %46, %_llgo_5 ]
  %48 = call ptr @llvm.coro.begin(token %2, ptr %47)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %49 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %49, label %_llgo_7 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_8
  ]

_llgo_7:                                          ; preds = %_llgo_9, %_llgo_8, %_llgo_6
  %50 = call i1 @llvm.coro.end(ptr %48, i1 false, token none)
  ret ptr %48

_llgo_8:                                          ; preds = %_llgo_4, %_llgo_6
  %51 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %51, label %_llgo_7 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_9
  ]

_llgo_9:                                          ; preds = %_llgo_16, %_llgo_8
  %52 = call ptr @llvm.coro.free(token %2, ptr %48)
  call void @free(ptr %52)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_7

_llgo_10:                                         ; preds = %_llgo_6
  br label %_llgo_1

_llgo_11:                                         ; preds = %_llgo_2
  %53 = extractvalue { i1, ptr, ptr } %39, 1
  %54 = extractvalue { i1, ptr, ptr } %39, 2
  %55 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %53, align 8
  %56 = load i64, ptr %54, align 4
  %57 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } { i1 true, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, i64 undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %55, 1
  %58 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %57, i64 %56, 2
  br label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_2
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_11
  %59 = phi { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } [ %58, %_llgo_11 ], [ zeroinitializer, %_llgo_12 ]
  %60 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %59, 0
  br i1 %60, label %_llgo_3, label %_llgo_4

_llgo_14:                                         ; preds = %_llgo_3
  %61 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %41, 1
  %62 = load [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], ptr %61, align 1
  %63 = alloca [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], align 8
  call void @llvm.memset(ptr %63, i8 0, i64 2, i1 false)
  store [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"] %62, ptr %63, align 1
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %63, i64 0
  %65 = load %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %64, align 1
  %66 = extractvalue %"github.com/goplus/llgo/cl/_testrt/makemap.N" %65, 0
  %67 = sext i8 %66 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %67)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %42)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_15:                                         ; preds = %_llgo_3
  %68 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 72 }, ptr %68, align 8
  %69 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %68, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %69)
  unreachable

_llgo_16:                                         ; preds = %_llgo_8
  br label %_llgo_9
}

define void @"github.com/goplus/llgo/cl/_testrt/makemap.make4"() {
_llgo_0:
  %0 = alloca [1 x ptr], align 8
  call void @llvm.memset(ptr %0, i8 0, i64 8, i1 false)
  %1 = getelementptr inbounds ptr, ptr %0, i64 0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 2)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %2, i32 0, i32 0
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %2, i32 0, i32 1
  store i8 1, ptr %3, align 1
  store i8 2, ptr %4, align 1
  store ptr %2, ptr %1, align 8
  %5 = load [1 x ptr], ptr %0, align 8
  %6 = extractvalue [1 x ptr] %5, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2", ptr undef }, ptr %6, 1
  %8 = alloca [1 x ptr], align 8
  call void @llvm.memset(ptr %8, i8 0, i64 8, i1 false)
  %9 = getelementptr inbounds ptr, ptr %8, i64 0
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 2)
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %10, i32 0, i32 0
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %10, i32 0, i32 1
  store i8 1, ptr %11, align 1
  store i8 2, ptr %12, align 1
  store ptr %10, ptr %9, align 8
  %13 = load [1 x ptr], ptr %8, align 8
  %14 = extractvalue [1 x ptr] %13, 0
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2", ptr undef }, ptr %14, 1
  %16 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_any]_llgo_int", i64 0)
  %18 = alloca [1 x ptr], align 8
  call void @llvm.memset(ptr %18, i8 0, i64 8, i1 false)
  %19 = getelementptr inbounds ptr, ptr %18, i64 0
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 2)
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %20, i32 0, i32 0
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %20, i32 0, i32 1
  store i8 1, ptr %21, align 1
  store i8 2, ptr %22, align 1
  store ptr %20, ptr %19, align 8
  %23 = load [1 x ptr], ptr %18, align 8
  %24 = extractvalue [1 x ptr] %23, 0
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2", ptr undef }, ptr %24, 1
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %25, ptr %26, align 8
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_any]_llgo_int", ptr %17, ptr %26)
  store i64 100, ptr %27, align 4
  %28 = alloca [1 x ptr], align 8
  call void @llvm.memset(ptr %28, i8 0, i64 8, i1 false)
  %29 = getelementptr inbounds ptr, ptr %28, i64 0
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 2)
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %30, i32 0, i32 0
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %30, i32 0, i32 1
  store i8 3, ptr %31, align 1
  store i8 4, ptr %32, align 1
  store ptr %30, ptr %29, align 8
  %33 = load [1 x ptr], ptr %28, align 8
  %34 = extractvalue [1 x ptr] %33, 0
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2", ptr undef }, ptr %34, 1
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %35, ptr %36, align 8
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_any]_llgo_int", ptr %17, ptr %36)
  store i64 200, ptr %37, align 4
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr @"map[_llgo_any]_llgo_int", ptr %17)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_7, %_llgo_0
  %39 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %38)
  %40 = extractvalue { i1, ptr, ptr } %39, 0
  br i1 %40, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %41 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %51, 1
  %42 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %51, 2
  %43 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %41, 0
  %44 = icmp eq ptr %43, @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2"
  br i1 %44, label %_llgo_7, label %_llgo_8

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %45 = extractvalue { i1, ptr, ptr } %39, 1
  %46 = extractvalue { i1, ptr, ptr } %39, 2
  %47 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %45, align 8
  %48 = load i64, ptr %46, align 4
  %49 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } { i1 true, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, i64 undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %47, 1
  %50 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %49, i64 %48, 2
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %51 = phi { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } [ %50, %_llgo_4 ], [ zeroinitializer, %_llgo_5 ]
  %52 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %51, 0
  br i1 %52, label %_llgo_2, label %_llgo_3

_llgo_7:                                          ; preds = %_llgo_2
  %53 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %41, 1
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %53, i32 0, i32 0
  %55 = load i8, ptr %54, align 1
  %56 = sext i8 %55 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %56)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %42)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_2
  %57 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 73 }, ptr %57, align 8
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %57, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %58)
  unreachable
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/makemap.make4$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_5, label %_llgo_6

_llgo_1:                                          ; preds = %_llgo_10
  %4 = alloca [1 x ptr], align 8
  call void @llvm.memset(ptr %4, i8 0, i64 8, i1 false)
  %5 = getelementptr inbounds ptr, ptr %4, i64 0
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 2)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %6, i32 0, i32 1
  store i8 1, ptr %7, align 1
  store i8 2, ptr %8, align 1
  store ptr %6, ptr %5, align 8
  %9 = load [1 x ptr], ptr %4, align 8
  %10 = extractvalue [1 x ptr] %9, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2", ptr undef }, ptr %10, 1
  %12 = alloca [1 x ptr], align 8
  call void @llvm.memset(ptr %12, i8 0, i64 8, i1 false)
  %13 = getelementptr inbounds ptr, ptr %12, i64 0
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 2)
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %14, i32 0, i32 0
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %14, i32 0, i32 1
  store i8 1, ptr %15, align 1
  store i8 2, ptr %16, align 1
  store ptr %14, ptr %13, align 8
  %17 = load [1 x ptr], ptr %12, align 8
  %18 = extractvalue [1 x ptr] %17, 0
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2", ptr undef }, ptr %18, 1
  %20 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %11, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_any]_llgo_int", i64 0)
  %22 = alloca [1 x ptr], align 8
  call void @llvm.memset(ptr %22, i8 0, i64 8, i1 false)
  %23 = getelementptr inbounds ptr, ptr %22, i64 0
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 2)
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %24, i32 0, i32 0
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %24, i32 0, i32 1
  store i8 1, ptr %25, align 1
  store i8 2, ptr %26, align 1
  store ptr %24, ptr %23, align 8
  %27 = load [1 x ptr], ptr %22, align 8
  %28 = extractvalue [1 x ptr] %27, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2", ptr undef }, ptr %28, 1
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %29, ptr %30, align 8
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_any]_llgo_int", ptr %21, ptr %30)
  store i64 100, ptr %31, align 4
  %32 = alloca [1 x ptr], align 8
  call void @llvm.memset(ptr %32, i8 0, i64 8, i1 false)
  %33 = getelementptr inbounds ptr, ptr %32, i64 0
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 2)
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %34, i32 0, i32 0
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %34, i32 0, i32 1
  store i8 3, ptr %35, align 1
  store i8 4, ptr %36, align 1
  store ptr %34, ptr %33, align 8
  %37 = load [1 x ptr], ptr %32, align 8
  %38 = extractvalue [1 x ptr] %37, 0
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2", ptr undef }, ptr %38, 1
  %40 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %39, ptr %40, align 8
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_any]_llgo_int", ptr %21, ptr %40)
  store i64 200, ptr %41, align 4
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr @"map[_llgo_any]_llgo_int", ptr %21)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_14, %_llgo_1
  %43 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %42)
  %44 = extractvalue { i1, ptr, ptr } %43, 0
  br i1 %44, label %_llgo_11, label %_llgo_12

_llgo_3:                                          ; preds = %_llgo_13
  %45 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %63, 1
  %46 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %63, 2
  %47 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %45, 0
  %48 = icmp eq ptr %47, @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2"
  br i1 %48, label %_llgo_14, label %_llgo_15

_llgo_4:                                          ; preds = %_llgo_13
  br label %_llgo_8

_llgo_5:                                          ; preds = %_llgo_0
  %49 = call i64 @llvm.coro.size.i64()
  %50 = call ptr @malloc(i64 %49)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %51 = phi ptr [ null, %_llgo_0 ], [ %50, %_llgo_5 ]
  %52 = call ptr @llvm.coro.begin(token %2, ptr %51)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %53 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %53, label %_llgo_7 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_8
  ]

_llgo_7:                                          ; preds = %_llgo_9, %_llgo_8, %_llgo_6
  %54 = call i1 @llvm.coro.end(ptr %52, i1 false, token none)
  ret ptr %52

_llgo_8:                                          ; preds = %_llgo_4, %_llgo_6
  %55 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %55, label %_llgo_7 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_9
  ]

_llgo_9:                                          ; preds = %_llgo_16, %_llgo_8
  %56 = call ptr @llvm.coro.free(token %2, ptr %52)
  call void @free(ptr %56)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_7

_llgo_10:                                         ; preds = %_llgo_6
  br label %_llgo_1

_llgo_11:                                         ; preds = %_llgo_2
  %57 = extractvalue { i1, ptr, ptr } %43, 1
  %58 = extractvalue { i1, ptr, ptr } %43, 2
  %59 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %57, align 8
  %60 = load i64, ptr %58, align 4
  %61 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } { i1 true, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, i64 undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %59, 1
  %62 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %61, i64 %60, 2
  br label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_2
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_11
  %63 = phi { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } [ %62, %_llgo_11 ], [ zeroinitializer, %_llgo_12 ]
  %64 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %63, 0
  br i1 %64, label %_llgo_3, label %_llgo_4

_llgo_14:                                         ; preds = %_llgo_3
  %65 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %45, 1
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %65, i32 0, i32 0
  %67 = load i8, ptr %66, align 1
  %68 = sext i8 %67 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %68)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %46)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_15:                                         ; preds = %_llgo_3
  %69 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 73 }, ptr %69, align 8
  %70 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %69, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %70)
  unreachable

_llgo_16:                                         ; preds = %_llgo_8
  br label %_llgo_9
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

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/makemap.make5$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_5, label %_llgo_6

_llgo_1:                                          ; preds = %_llgo_10
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64 8, i64 0)
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"chan _llgo_int", ptr undef }, ptr %4, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"chan _llgo_int", ptr undef }, ptr %4, 1
  %7 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[chan _llgo_int]_llgo_int", i64 0)
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store ptr %4, ptr %9, align 8
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[chan _llgo_int]_llgo_int", ptr %8, ptr %9)
  store i64 100, ptr %10, align 4
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store ptr %4, ptr %11, align 8
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[chan _llgo_int]_llgo_int", ptr %8, ptr %11)
  store i64 200, ptr %12, align 4
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr @"map[chan _llgo_int]_llgo_int", ptr %8)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %14 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %13)
  %15 = extractvalue { i1, ptr, ptr } %14, 0
  br i1 %15, label %_llgo_11, label %_llgo_12

_llgo_3:                                          ; preds = %_llgo_13
  %16 = extractvalue { i1, ptr, i64 } %32, 1
  %17 = extractvalue { i1, ptr, i64 } %32, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_13
  br label %_llgo_8

_llgo_5:                                          ; preds = %_llgo_0
  %18 = call i64 @llvm.coro.size.i64()
  %19 = call ptr @malloc(i64 %18)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %20 = phi ptr [ null, %_llgo_0 ], [ %19, %_llgo_5 ]
  %21 = call ptr @llvm.coro.begin(token %2, ptr %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %22 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %22, label %_llgo_7 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_8
  ]

_llgo_7:                                          ; preds = %_llgo_9, %_llgo_8, %_llgo_6
  %23 = call i1 @llvm.coro.end(ptr %21, i1 false, token none)
  ret ptr %21

_llgo_8:                                          ; preds = %_llgo_4, %_llgo_6
  %24 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %24, label %_llgo_7 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_9
  ]

_llgo_9:                                          ; preds = %_llgo_14, %_llgo_8
  %25 = call ptr @llvm.coro.free(token %2, ptr %21)
  call void @free(ptr %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_7

_llgo_10:                                         ; preds = %_llgo_6
  br label %_llgo_1

_llgo_11:                                         ; preds = %_llgo_2
  %26 = extractvalue { i1, ptr, ptr } %14, 1
  %27 = extractvalue { i1, ptr, ptr } %14, 2
  %28 = load ptr, ptr %26, align 8
  %29 = load i64, ptr %27, align 4
  %30 = insertvalue { i1, ptr, i64 } { i1 true, ptr undef, i64 undef }, ptr %28, 1
  %31 = insertvalue { i1, ptr, i64 } %30, i64 %29, 2
  br label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_2
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_11
  %32 = phi { i1, ptr, i64 } [ %31, %_llgo_11 ], [ zeroinitializer, %_llgo_12 ]
  %33 = extractvalue { i1, ptr, i64 } %32, 0
  br i1 %33, label %_llgo_3, label %_llgo_4

_llgo_14:                                         ; preds = %_llgo_8
  br label %_llgo_9
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

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/makemap.make6$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_5, label %_llgo_6

_llgo_1:                                          ; preds = %_llgo_10
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_int]_llgo_string", i64 0)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %5, align 4
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.M", ptr %4, ptr %5)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 5 }, ptr %6, align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.M", ptr %4)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %8 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %7)
  %9 = extractvalue { i1, ptr, ptr } %8, 0
  br i1 %9, label %_llgo_11, label %_llgo_12

_llgo_3:                                          ; preds = %_llgo_13
  %10 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %26, 1
  %11 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %26, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_13
  br label %_llgo_8

_llgo_5:                                          ; preds = %_llgo_0
  %12 = call i64 @llvm.coro.size.i64()
  %13 = call ptr @malloc(i64 %12)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %14 = phi ptr [ null, %_llgo_0 ], [ %13, %_llgo_5 ]
  %15 = call ptr @llvm.coro.begin(token %2, ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %16 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %16, label %_llgo_7 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_8
  ]

_llgo_7:                                          ; preds = %_llgo_9, %_llgo_8, %_llgo_6
  %17 = call i1 @llvm.coro.end(ptr %15, i1 false, token none)
  ret ptr %15

_llgo_8:                                          ; preds = %_llgo_4, %_llgo_6
  %18 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %18, label %_llgo_7 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_9
  ]

_llgo_9:                                          ; preds = %_llgo_14, %_llgo_8
  %19 = call ptr @llvm.coro.free(token %2, ptr %15)
  call void @free(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_7

_llgo_10:                                         ; preds = %_llgo_6
  br label %_llgo_1

_llgo_11:                                         ; preds = %_llgo_2
  %20 = extractvalue { i1, ptr, ptr } %8, 1
  %21 = extractvalue { i1, ptr, ptr } %8, 2
  %22 = load i64, ptr %20, align 4
  %23 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %21, align 8
  %24 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" undef }, i64 %22, 1
  %25 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %24, %"github.com/goplus/llgo/runtime/internal/runtime.String" %23, 2
  br label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_2
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_11
  %26 = phi { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } [ %25, %_llgo_11 ], [ zeroinitializer, %_llgo_12 ]
  %27 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %26, 0
  br i1 %27, label %_llgo_3, label %_llgo_4

_llgo_14:                                         ; preds = %_llgo_8
  br label %_llgo_9
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

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/makemap.make7$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_5, label %_llgo_6

_llgo_1:                                          ; preds = %_llgo_10
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0]_llgo_string", i64 2)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %5, align 4
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0]_llgo_string", ptr %4, ptr %5)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 5 }, ptr %6, align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %7, align 4
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0]_llgo_string", ptr %4, ptr %7)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr %8, align 8
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0]_llgo_string", ptr %4)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %10 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %9)
  %11 = extractvalue { i1, ptr, ptr } %10, 0
  br i1 %11, label %_llgo_11, label %_llgo_12

_llgo_3:                                          ; preds = %_llgo_13
  %12 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %31, 1
  %13 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %31, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_13
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %14, align 4
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N.7.0]_llgo_string", ptr %4, ptr %14)
  %16 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %15, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_8

_llgo_5:                                          ; preds = %_llgo_0
  %17 = call i64 @llvm.coro.size.i64()
  %18 = call ptr @malloc(i64 %17)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %19 = phi ptr [ null, %_llgo_0 ], [ %18, %_llgo_5 ]
  %20 = call ptr @llvm.coro.begin(token %2, ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %21 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %21, label %_llgo_7 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_8
  ]

_llgo_7:                                          ; preds = %_llgo_9, %_llgo_8, %_llgo_6
  %22 = call i1 @llvm.coro.end(ptr %20, i1 false, token none)
  ret ptr %20

_llgo_8:                                          ; preds = %_llgo_4, %_llgo_6
  %23 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %23, label %_llgo_7 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_9
  ]

_llgo_9:                                          ; preds = %_llgo_14, %_llgo_8
  %24 = call ptr @llvm.coro.free(token %2, ptr %20)
  call void @free(ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_7

_llgo_10:                                         ; preds = %_llgo_6
  br label %_llgo_1

_llgo_11:                                         ; preds = %_llgo_2
  %25 = extractvalue { i1, ptr, ptr } %10, 1
  %26 = extractvalue { i1, ptr, ptr } %10, 2
  %27 = load i64, ptr %25, align 4
  %28 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %26, align 8
  %29 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" undef }, i64 %27, 1
  %30 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %29, %"github.com/goplus/llgo/runtime/internal/runtime.String" %28, 2
  br label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_2
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_11
  %31 = phi { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } [ %30, %_llgo_11 ], [ zeroinitializer, %_llgo_12 ]
  %32 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %31, 0
  br i1 %32, label %_llgo_3, label %_llgo_4

_llgo_14:                                         ; preds = %_llgo_8
  br label %_llgo_9
}

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

; Function Attrs: nounwind memory(none)
declare ptr @llvm.coro.promise(ptr nocapture, i32, i1) #3

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token) #2

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #4

declare void @free(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()

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
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64, i64)

attributes #0 = { presplitcoroutine }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nounwind }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nounwind memory(argmem: read) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
