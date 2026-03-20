; ModuleID = 'github.com/goplus/llgo/cl/_testgo/equal'
source_filename = "github.com/goplus/llgo/cl/_testgo/equal"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.InterfaceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.MapType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, ptr, ptr, { ptr, ptr }, i8, i8, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.ArrayType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.SliceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testgo/equal.T" = type { i64, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.eface" }
%"github.com/goplus/llgo/cl/_testgo/equal.N" = type {}

@"github.com/goplus/llgo/cl/_testgo/equal.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [6 x i8] c"failed", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr @"*_llgo_string" }, align 8
@1 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@2 = private unnamed_addr constant [5 x i8] c"hello", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 2, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr @"*_llgo_int" }, align 8
@3 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@4 = private unnamed_addr constant [2 x i8] c"ok", align 1
@"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 0, i64 0, i32 -933246747, i8 8, i8 1, i8 1, i8 25, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 9 }, ptr @"*_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@5 = private unnamed_addr constant [9 x i8] c"struct {}", align 1
@"*_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -803316201, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 9 }, ptr null }, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw" }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/equal.T" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 48, i64 48, i32 -947268935, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/equal.T" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/equal.T" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$5D_KhR3tDEp-wpx9caTiVZca43wS-XW6slE9Bsr8rsk$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 39 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@6 = private unnamed_addr constant [6 x i8] c"main.T", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/equal.T" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2036255336, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/equal.T" }, align 8
@7 = private unnamed_addr constant [1 x i8] c"X", align 1
@8 = private unnamed_addr constant [1 x i8] c"Y", align 1
@9 = private unnamed_addr constant [1 x i8] c"Z", align 1
@10 = private unnamed_addr constant [1 x i8] c"V", align 1
@_llgo_any = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1376530322, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 12 }, ptr @"*_llgo_any" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 39 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@11 = private unnamed_addr constant [12 x i8] c"interface {}", align 1
@"*_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1741196194, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 12 }, ptr null }, ptr @_llgo_any }, align 8
@12 = private unnamed_addr constant [39 x i8] c"github.com/goplus/llgo/cl/_testgo/equal", align 1
@"_llgo_struct$5D_KhR3tDEp-wpx9caTiVZca43wS-XW6slE9Bsr8rsk$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 1 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 1 }, ptr @_llgo_string, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 1 }, ptr @_llgo_any, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/equal.N" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 0, i64 0, i32 1023992119, i8 13, i8 1, i8 1, i8 25, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/equal.N" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 39 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@13 = private unnamed_addr constant [6 x i8] c"main.N", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/equal.N" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1357440894, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/equal.N" }, align 8
@"map[_llgo_int]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2084636366, i8 0, i8 8, i8 8, i8 53, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 14 }, ptr @"*map[_llgo_int]_llgo_string" }, ptr @_llgo_int, ptr @_llgo_string, ptr @"github.com/goplus/llgo/cl/_testgo/equal.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ", { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehash", ptr @_llgo_int }, i8 8, i8 16, i16 208, i32 4 }, align 8
@14 = private unnamed_addr constant [14 x i8] c"map[int]string", align 1
@"*map[_llgo_int]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 668541983, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 14 }, ptr null }, ptr @"map[_llgo_int]_llgo_string" }, align 8
@"github.com/goplus/llgo/cl/_testgo/equal.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 208, i64 208, i32 201808136, i8 0, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"github.com/goplus/llgo/cl/_testgo/equal.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 82 }, ptr @"*github.com/goplus/llgo/cl/_testgo/equal.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/equal.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ$fields", i64 4, i64 4 } }, align 8
@15 = private unnamed_addr constant [82 x i8] c"struct { topbits [8]uint8; keys [8]int; elems [8]string; overflow unsafe.Pointer }", align 1
@"*github.com/goplus/llgo/cl/_testgo/equal.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -395333500, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 82 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testgo/equal.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" }, align 8
@16 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@"[8]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 307038632, i8 8, i8 1, i8 1, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_uint8" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 8 }, ptr @"*[8]_llgo_uint8" }, ptr @_llgo_uint8, ptr @"[]_llgo_uint8", i64 8 }, align 8
@17 = private unnamed_addr constant [8 x i8] c"[8]uint8", align 1
@"*[8]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -566230779, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 8 }, ptr null }, ptr @"[8]_llgo_uint8" }, align 8
@_llgo_uint8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 269156761, i8 12, i8 1, i8 1, i8 8, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, ptr @"*_llgo_uint8" }, align 8
@18 = private unnamed_addr constant [5 x i8] c"uint8", align 1
@"*_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1277858201, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, ptr null }, ptr @_llgo_uint8 }, align 8
@"[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 370346748, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 7 }, ptr @"*[]_llgo_uint8" }, ptr @_llgo_uint8 }, align 8
@19 = private unnamed_addr constant [7 x i8] c"[]uint8", align 1
@"*[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2143776929, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 7 }, ptr null }, ptr @"[]_llgo_uint8" }, align 8
@20 = private unnamed_addr constant [4 x i8] c"keys", align 1
@"[8]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 0, i32 -1310855284, i8 8, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_int" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 6 }, ptr @"*[8]_llgo_int" }, ptr @_llgo_int, ptr @"[]_llgo_int", i64 8 }, align 8
@21 = private unnamed_addr constant [6 x i8] c"[8]int", align 1
@"*[8]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1841254256, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 6 }, ptr null }, ptr @"[8]_llgo_int" }, align 8
@"[]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -1129561019, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr @"*[]_llgo_int" }, ptr @_llgo_int }, align 8
@22 = private unnamed_addr constant [5 x i8] c"[]int", align 1
@"*[]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1428175521, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr null }, ptr @"[]_llgo_int" }, align 8
@23 = private unnamed_addr constant [5 x i8] c"elems", align 1
@"[8]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 128, i64 120, i32 460245566, i8 0, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_string" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 9 }, ptr @"*[8]_llgo_string" }, ptr @_llgo_string, ptr @"[]_llgo_string", i64 8 }, align 8
@24 = private unnamed_addr constant [9 x i8] c"[8]string", align 1
@"*[8]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 368026044, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 9 }, ptr null }, ptr @"[8]_llgo_string" }, align 8
@"[]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 608974920, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 8 }, ptr @"*[]_llgo_string" }, ptr @_llgo_string }, align 8
@25 = private unnamed_addr constant [8 x i8] c"[]string", align 1
@"*[]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -157880218, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 8 }, ptr null }, ptr @"[]_llgo_string" }, align 8
@26 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@27 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"github.com/goplus/llgo/cl/_testgo/equal.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 7 }, ptr @"[8]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 4 }, ptr @"[8]_llgo_int", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 5 }, ptr @"[8]_llgo_string", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr @_llgo_Pointer, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8

define void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %0) {
_llgo_0:
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, ptr %1, align 8
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %1, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %2)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void

_llgo_3:                                          ; No predecessors!
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testgo/equal.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/equal.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/equal.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testgo/equal.init#1"()
  call void @"github.com/goplus/llgo/cl/_testgo/equal.init#2"()
  call void @"github.com/goplus/llgo/cl/_testgo/equal.init#3"()
  call void @"github.com/goplus/llgo/cl/_testgo/equal.init#4"()
  call void @"github.com/goplus/llgo/cl/_testgo/equal.init#5"()
  call void @"github.com/goplus/llgo/cl/_testgo/equal.init#6"()
  call void @"github.com/goplus/llgo/cl/_testgo/equal.init#7"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/equal.init#1"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca { ptr, ptr }, align 8
  %3 = call i64 @runtime.AllocZHidden(i64 8)
  store i64 %3, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %3)
  %4 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load i64, ptr %0, align 4
  %6 = and i64 %5, 72057594037927935
  %7 = lshr i64 %6, 17
  %8 = select i1 false, i64 0, i64 %7
  %9 = shl i64 %6, 39
  %10 = select i1 false, i64 0, i64 %9
  %11 = or i64 %8, %10
  %12 = and i64 %11, 72057594037927935
  %13 = xor i64 %12, 25399393228665167
  %14 = inttoptr i64 %13 to ptr
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %16 = getelementptr inbounds { ptr }, ptr %15, i32 0, i32 0
  store ptr %14, ptr %16, align 8
  %17 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/equal.init#1$2", ptr undef }, ptr %15, 1
  store { ptr, ptr } %17, ptr %2, align 8
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %18)
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %19)
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %20)
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %21)
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %22)
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %23)
  %24 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load { ptr, ptr }, ptr %2, align 8
  %26 = extractvalue { ptr, ptr } %25, 0
  %27 = icmp ne ptr %26, null
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %28)
  %29 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %29)
  %30 = load { ptr, ptr }, ptr %2, align 8
  %31 = extractvalue { ptr, ptr } %30, 0
  %32 = icmp ne ptr null, %31
  store { ptr, ptr } zeroinitializer, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 16)
  call void @runtime.ClobberPointerRegs()
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %33)
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %34)
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %35)
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testgo/equal.init#1$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define void @"github.com/goplus/llgo/cl/_testgo/equal.init#1$2"(ptr %0) {
_llgo_0:
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load i64, ptr %3, align 4
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %6)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/equal.init#2"() {
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
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  store ptr null, ptr %13, align 8
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %14)
  %15 = alloca [3 x i64], align 8
  call void @llvm.memset(ptr %15, i8 0, i64 24, i1 false)
  %16 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %16)
  %17 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 3)
  %18 = getelementptr inbounds i64, ptr %15, i64 %17
  %19 = ptrtoint ptr %18 to i64
  %20 = and i64 %19, 72057594037927935
  %21 = xor i64 %20, 25399393228665167
  %22 = shl i64 %21, 17
  %23 = select i1 false, i64 0, i64 %22
  %24 = lshr i64 %21, 39
  %25 = select i1 false, i64 0, i64 %24
  %26 = or i64 %23, %25
  %27 = and i64 %26, 72057594037927935
  %28 = or i64 %27, -6557241057451442176
  store i64 %28, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %28)
  call void @runtime.ClobberPointerRegs()
  %29 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %29)
  %30 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 3)
  %31 = getelementptr inbounds i64, ptr %15, i64 %30
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
  store i64 %41, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %41)
  call void @runtime.ClobberPointerRegs()
  %42 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %42)
  %43 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 3)
  %44 = getelementptr inbounds i64, ptr %15, i64 %43
  %45 = ptrtoint ptr %44 to i64
  %46 = and i64 %45, 72057594037927935
  %47 = xor i64 %46, 25399393228665167
  %48 = shl i64 %47, 17
  %49 = select i1 false, i64 0, i64 %48
  %50 = lshr i64 %47, 39
  %51 = select i1 false, i64 0, i64 %50
  %52 = or i64 %49, %51
  %53 = and i64 %52, 72057594037927935
  %54 = or i64 %53, -6557241057451442176
  store i64 %54, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %54)
  call void @runtime.ClobberPointerRegs()
  %55 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %55)
  %56 = load i64, ptr %0, align 4
  %57 = alloca i64, align 8
  store i64 1, ptr %57, align 4
  call void @runtime.StoreHiddenPointee(i64 %56, ptr %57, i64 8)
  store i64 0, ptr %57, align 4
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %58 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %58)
  %59 = load i64, ptr %2, align 4
  %60 = alloca i64, align 8
  store i64 2, ptr %60, align 4
  call void @runtime.StoreHiddenPointee(i64 %59, ptr %60, i64 8)
  store i64 0, ptr %60, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %61 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %61)
  %62 = load i64, ptr %4, align 4
  %63 = alloca i64, align 8
  store i64 3, ptr %63, align 4
  call void @runtime.StoreHiddenPointee(i64 %62, ptr %63, i64 8)
  store i64 0, ptr %63, align 4
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %64 = alloca [3 x i64], align 8
  call void @llvm.memset(ptr %64, i8 0, i64 24, i1 false)
  %65 = icmp eq ptr %64, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %65)
  %66 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 3)
  %67 = getelementptr inbounds i64, ptr %64, i64 %66
  %68 = ptrtoint ptr %67 to i64
  %69 = and i64 %68, 72057594037927935
  %70 = xor i64 %69, 25399393228665167
  %71 = shl i64 %70, 17
  %72 = select i1 false, i64 0, i64 %71
  %73 = lshr i64 %70, 39
  %74 = select i1 false, i64 0, i64 %73
  %75 = or i64 %72, %74
  %76 = and i64 %75, 72057594037927935
  %77 = or i64 %76, -6557241057451442176
  store i64 %77, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %77)
  call void @runtime.ClobberPointerRegs()
  %78 = icmp eq ptr %64, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %78)
  %79 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 3)
  %80 = getelementptr inbounds i64, ptr %64, i64 %79
  %81 = ptrtoint ptr %80 to i64
  %82 = and i64 %81, 72057594037927935
  %83 = xor i64 %82, 25399393228665167
  %84 = shl i64 %83, 17
  %85 = select i1 false, i64 0, i64 %84
  %86 = lshr i64 %83, 39
  %87 = select i1 false, i64 0, i64 %86
  %88 = or i64 %85, %87
  %89 = and i64 %88, 72057594037927935
  %90 = or i64 %89, -6557241057451442176
  store i64 %90, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %90)
  call void @runtime.ClobberPointerRegs()
  %91 = icmp eq ptr %64, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %91)
  %92 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 3)
  %93 = getelementptr inbounds i64, ptr %64, i64 %92
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
  store i64 %103, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %103)
  call void @runtime.ClobberPointerRegs()
  %104 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %104)
  %105 = load i64, ptr %6, align 4
  %106 = alloca i64, align 8
  store i64 1, ptr %106, align 4
  call void @runtime.StoreHiddenPointee(i64 %105, ptr %106, i64 8)
  store i64 0, ptr %106, align 4
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %107 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %107)
  %108 = load i64, ptr %8, align 4
  %109 = alloca i64, align 8
  store i64 2, ptr %109, align 4
  call void @runtime.StoreHiddenPointee(i64 %108, ptr %109, i64 8)
  store i64 0, ptr %109, align 4
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %110 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %110)
  %111 = load i64, ptr %10, align 4
  %112 = alloca i64, align 8
  store i64 3, ptr %112, align 4
  call void @runtime.StoreHiddenPointee(i64 %111, ptr %112, i64 8)
  store i64 0, ptr %112, align 4
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %113 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %113)
  %114 = load [3 x i64], ptr %15, align 4
  %115 = icmp eq ptr %64, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %115)
  %116 = load [3 x i64], ptr %64, align 4
  %117 = extractvalue [3 x i64] %114, 0
  %118 = extractvalue [3 x i64] %116, 0
  %119 = icmp eq i64 %117, %118
  %120 = and i1 true, %119
  %121 = extractvalue [3 x i64] %114, 1
  %122 = extractvalue [3 x i64] %116, 1
  %123 = icmp eq i64 %121, %122
  %124 = and i1 %120, %123
  %125 = extractvalue [3 x i64] %114, 2
  %126 = extractvalue [3 x i64] %116, 2
  %127 = icmp eq i64 %125, %126
  %128 = and i1 %124, %127
  %129 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %128)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %129)
  %130 = icmp eq ptr %64, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %130)
  %131 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 3)
  %132 = getelementptr inbounds i64, ptr %64, i64 %131
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
  store i64 %142, ptr %12, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %13, i64 %142)
  call void @runtime.ClobberPointerRegs()
  %143 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %143)
  %144 = load i64, ptr %12, align 4
  %145 = alloca i64, align 8
  store i64 1, ptr %145, align 4
  call void @runtime.StoreHiddenPointee(i64 %144, ptr %145, i64 8)
  store i64 0, ptr %145, align 4
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  call void @runtime.ClobberPointerRegs()
  %146 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %146)
  %147 = load [3 x i64], ptr %15, align 4
  store [3 x i64] zeroinitializer, ptr %15, align 4
  call void @runtime.ClobberPointerRegs()
  %148 = icmp eq ptr %64, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %148)
  %149 = load [3 x i64], ptr %64, align 4
  store [3 x i64] zeroinitializer, ptr %64, align 4
  call void @runtime.ClobberPointerRegs()
  %150 = extractvalue [3 x i64] %147, 0
  %151 = extractvalue [3 x i64] %149, 0
  %152 = icmp eq i64 %150, %151
  %153 = and i1 true, %152
  %154 = extractvalue [3 x i64] %147, 1
  %155 = extractvalue [3 x i64] %149, 1
  %156 = icmp eq i64 %154, %155
  %157 = and i1 %153, %156
  %158 = extractvalue [3 x i64] %147, 2
  %159 = extractvalue [3 x i64] %149, 2
  %160 = icmp eq i64 %158, %159
  %161 = and i1 %157, %160
  %162 = xor i1 %161, true
  %163 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %162)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %163)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/equal.init#3"() {
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
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  store ptr null, ptr %13, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  store ptr null, ptr %15, align 8
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  store ptr null, ptr %17, align 8
  %18 = alloca i64, align 8
  %19 = alloca ptr, align 8
  store ptr null, ptr %19, align 8
  %20 = alloca i64, align 8
  %21 = alloca ptr, align 8
  store ptr null, ptr %21, align 8
  %22 = alloca i64, align 8
  %23 = alloca ptr, align 8
  store ptr null, ptr %23, align 8
  %24 = alloca %"github.com/goplus/llgo/cl/_testgo/equal.T", align 8
  %25 = alloca %"github.com/goplus/llgo/cl/_testgo/equal.T", align 8
  %26 = alloca %"github.com/goplus/llgo/cl/_testgo/equal.T", align 8
  %27 = alloca %"github.com/goplus/llgo/cl/_testgo/equal.T", align 8
  %28 = alloca %"github.com/goplus/llgo/cl/_testgo/equal.T", align 8
  %29 = alloca %"github.com/goplus/llgo/cl/_testgo/equal.T", align 8
  %30 = alloca %"github.com/goplus/llgo/cl/_testgo/equal.T", align 8
  call void @llvm.memset(ptr %30, i8 0, i64 48, i1 false)
  %31 = icmp eq ptr %30, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %31)
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %30, i32 0, i32 0
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
  store i64 %42, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %42)
  call void @runtime.ClobberPointerRegs()
  %43 = icmp eq ptr %30, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %30, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i64
  %46 = and i64 %45, 72057594037927935
  %47 = xor i64 %46, 25399393228665167
  %48 = shl i64 %47, 17
  %49 = select i1 false, i64 0, i64 %48
  %50 = lshr i64 %47, 39
  %51 = select i1 false, i64 0, i64 %50
  %52 = or i64 %49, %51
  %53 = and i64 %52, 72057594037927935
  %54 = or i64 %53, -6557241057451442176
  store i64 %54, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %54)
  call void @runtime.ClobberPointerRegs()
  %55 = icmp eq ptr %30, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %55)
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %30, i32 0, i32 2
  %57 = ptrtoint ptr %56 to i64
  %58 = and i64 %57, 72057594037927935
  %59 = xor i64 %58, 25399393228665167
  %60 = shl i64 %59, 17
  %61 = select i1 false, i64 0, i64 %60
  %62 = lshr i64 %59, 39
  %63 = select i1 false, i64 0, i64 %62
  %64 = or i64 %61, %63
  %65 = and i64 %64, 72057594037927935
  %66 = or i64 %65, -6557241057451442176
  store i64 %66, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %66)
  call void @runtime.ClobberPointerRegs()
  %67 = icmp eq ptr %30, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %67)
  %68 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %30, i32 0, i32 3
  %69 = ptrtoint ptr %68 to i64
  %70 = and i64 %69, 72057594037927935
  %71 = xor i64 %70, 25399393228665167
  %72 = shl i64 %71, 17
  %73 = select i1 false, i64 0, i64 %72
  %74 = lshr i64 %71, 39
  %75 = select i1 false, i64 0, i64 %74
  %76 = or i64 %73, %75
  %77 = and i64 %76, 72057594037927935
  %78 = or i64 %77, -6557241057451442176
  store i64 %78, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %78)
  call void @runtime.ClobberPointerRegs()
  %79 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %79)
  %80 = load i64, ptr %0, align 4
  %81 = alloca i64, align 8
  store i64 10, ptr %81, align 4
  call void @runtime.StoreHiddenPointee(i64 %80, ptr %81, i64 8)
  store i64 0, ptr %81, align 4
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %82 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %82)
  %83 = load i64, ptr %2, align 4
  %84 = alloca i64, align 8
  store i64 20, ptr %84, align 4
  call void @runtime.StoreHiddenPointee(i64 %83, ptr %84, i64 8)
  store i64 0, ptr %84, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %85 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %85)
  %86 = load i64, ptr %4, align 4
  %87 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %87, align 8
  call void @runtime.StoreHiddenPointee(i64 %86, ptr %87, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %87, align 8
  call void @runtime.TouchConservativeSlot(ptr %87, i64 16)
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %88 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %88, align 4
  %89 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %88, 1
  %90 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %90)
  %91 = load i64, ptr %6, align 4
  %92 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %89, ptr %92, align 8
  call void @runtime.StoreHiddenPointee(i64 %91, ptr %92, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %92, align 8
  call void @runtime.TouchConservativeSlot(ptr %92, i64 16)
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %93 = alloca %"github.com/goplus/llgo/cl/_testgo/equal.T", align 8
  call void @llvm.memset(ptr %93, i8 0, i64 48, i1 false)
  %94 = icmp eq ptr %93, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %94)
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %93, i32 0, i32 0
  %96 = ptrtoint ptr %95 to i64
  %97 = and i64 %96, 72057594037927935
  %98 = xor i64 %97, 25399393228665167
  %99 = shl i64 %98, 17
  %100 = select i1 false, i64 0, i64 %99
  %101 = lshr i64 %98, 39
  %102 = select i1 false, i64 0, i64 %101
  %103 = or i64 %100, %102
  %104 = and i64 %103, 72057594037927935
  %105 = or i64 %104, -6557241057451442176
  store i64 %105, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %105)
  call void @runtime.ClobberPointerRegs()
  %106 = icmp eq ptr %93, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %106)
  %107 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %93, i32 0, i32 1
  %108 = ptrtoint ptr %107 to i64
  %109 = and i64 %108, 72057594037927935
  %110 = xor i64 %109, 25399393228665167
  %111 = shl i64 %110, 17
  %112 = select i1 false, i64 0, i64 %111
  %113 = lshr i64 %110, 39
  %114 = select i1 false, i64 0, i64 %113
  %115 = or i64 %112, %114
  %116 = and i64 %115, 72057594037927935
  %117 = or i64 %116, -6557241057451442176
  store i64 %117, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %117)
  call void @runtime.ClobberPointerRegs()
  %118 = icmp eq ptr %93, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %118)
  %119 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %93, i32 0, i32 2
  %120 = ptrtoint ptr %119 to i64
  %121 = and i64 %120, 72057594037927935
  %122 = xor i64 %121, 25399393228665167
  %123 = shl i64 %122, 17
  %124 = select i1 false, i64 0, i64 %123
  %125 = lshr i64 %122, 39
  %126 = select i1 false, i64 0, i64 %125
  %127 = or i64 %124, %126
  %128 = and i64 %127, 72057594037927935
  %129 = or i64 %128, -6557241057451442176
  store i64 %129, ptr %12, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %13, i64 %129)
  call void @runtime.ClobberPointerRegs()
  %130 = icmp eq ptr %93, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %130)
  %131 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %93, i32 0, i32 3
  %132 = ptrtoint ptr %131 to i64
  %133 = and i64 %132, 72057594037927935
  %134 = xor i64 %133, 25399393228665167
  %135 = shl i64 %134, 17
  %136 = select i1 false, i64 0, i64 %135
  %137 = lshr i64 %134, 39
  %138 = select i1 false, i64 0, i64 %137
  %139 = or i64 %136, %138
  %140 = and i64 %139, 72057594037927935
  %141 = or i64 %140, -6557241057451442176
  store i64 %141, ptr %14, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %15, i64 %141)
  call void @runtime.ClobberPointerRegs()
  %142 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %142)
  %143 = load i64, ptr %8, align 4
  %144 = alloca i64, align 8
  store i64 10, ptr %144, align 4
  call void @runtime.StoreHiddenPointee(i64 %143, ptr %144, i64 8)
  store i64 0, ptr %144, align 4
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %145 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %145)
  %146 = load i64, ptr %10, align 4
  %147 = alloca i64, align 8
  store i64 20, ptr %147, align 4
  call void @runtime.StoreHiddenPointee(i64 %146, ptr %147, i64 8)
  store i64 0, ptr %147, align 4
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %148 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %148)
  %149 = load i64, ptr %12, align 4
  %150 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %150, align 8
  call void @runtime.StoreHiddenPointee(i64 %149, ptr %150, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %150, align 8
  call void @runtime.TouchConservativeSlot(ptr %150, i64 16)
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  call void @runtime.ClobberPointerRegs()
  %151 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %151, align 4
  %152 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %151, 1
  %153 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %153)
  %154 = load i64, ptr %14, align 4
  %155 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %152, ptr %155, align 8
  call void @runtime.StoreHiddenPointee(i64 %154, ptr %155, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %155, align 8
  call void @runtime.TouchConservativeSlot(ptr %155, i64 16)
  store i64 0, ptr %14, align 4
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store ptr null, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  call void @runtime.ClobberPointerRegs()
  %156 = alloca %"github.com/goplus/llgo/cl/_testgo/equal.T", align 8
  call void @llvm.memset(ptr %156, i8 0, i64 48, i1 false)
  %157 = icmp eq ptr %156, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %157)
  %158 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %156, i32 0, i32 0
  %159 = ptrtoint ptr %158 to i64
  %160 = and i64 %159, 72057594037927935
  %161 = xor i64 %160, 25399393228665167
  %162 = shl i64 %161, 17
  %163 = select i1 false, i64 0, i64 %162
  %164 = lshr i64 %161, 39
  %165 = select i1 false, i64 0, i64 %164
  %166 = or i64 %163, %165
  %167 = and i64 %166, 72057594037927935
  %168 = or i64 %167, -6557241057451442176
  store i64 %168, ptr %16, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %17, i64 %168)
  call void @runtime.ClobberPointerRegs()
  %169 = icmp eq ptr %156, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %169)
  %170 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %156, i32 0, i32 1
  %171 = ptrtoint ptr %170 to i64
  %172 = and i64 %171, 72057594037927935
  %173 = xor i64 %172, 25399393228665167
  %174 = shl i64 %173, 17
  %175 = select i1 false, i64 0, i64 %174
  %176 = lshr i64 %173, 39
  %177 = select i1 false, i64 0, i64 %176
  %178 = or i64 %175, %177
  %179 = and i64 %178, 72057594037927935
  %180 = or i64 %179, -6557241057451442176
  store i64 %180, ptr %18, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %19, i64 %180)
  call void @runtime.ClobberPointerRegs()
  %181 = icmp eq ptr %156, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %181)
  %182 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %156, i32 0, i32 2
  %183 = ptrtoint ptr %182 to i64
  %184 = and i64 %183, 72057594037927935
  %185 = xor i64 %184, 25399393228665167
  %186 = shl i64 %185, 17
  %187 = select i1 false, i64 0, i64 %186
  %188 = lshr i64 %185, 39
  %189 = select i1 false, i64 0, i64 %188
  %190 = or i64 %187, %189
  %191 = and i64 %190, 72057594037927935
  %192 = or i64 %191, -6557241057451442176
  store i64 %192, ptr %20, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %21, i64 %192)
  call void @runtime.ClobberPointerRegs()
  %193 = icmp eq ptr %156, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %193)
  %194 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %156, i32 0, i32 3
  %195 = ptrtoint ptr %194 to i64
  %196 = and i64 %195, 72057594037927935
  %197 = xor i64 %196, 25399393228665167
  %198 = shl i64 %197, 17
  %199 = select i1 false, i64 0, i64 %198
  %200 = lshr i64 %197, 39
  %201 = select i1 false, i64 0, i64 %200
  %202 = or i64 %199, %201
  %203 = and i64 %202, 72057594037927935
  %204 = or i64 %203, -6557241057451442176
  store i64 %204, ptr %22, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %23, i64 %204)
  call void @runtime.ClobberPointerRegs()
  %205 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %205)
  %206 = load i64, ptr %16, align 4
  %207 = alloca i64, align 8
  store i64 10, ptr %207, align 4
  call void @runtime.StoreHiddenPointee(i64 %206, ptr %207, i64 8)
  store i64 0, ptr %207, align 4
  store i64 0, ptr %16, align 4
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  store ptr null, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  call void @runtime.ClobberPointerRegs()
  %208 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %208)
  %209 = load i64, ptr %18, align 4
  %210 = alloca i64, align 8
  store i64 20, ptr %210, align 4
  call void @runtime.StoreHiddenPointee(i64 %209, ptr %210, i64 8)
  store i64 0, ptr %210, align 4
  store i64 0, ptr %18, align 4
  call void @runtime.TouchConservativeSlot(ptr %18, i64 8)
  store ptr null, ptr %19, align 8
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  call void @runtime.ClobberPointerRegs()
  %211 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %211)
  %212 = load i64, ptr %20, align 4
  %213 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %213, align 8
  call void @runtime.StoreHiddenPointee(i64 %212, ptr %213, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %213, align 8
  call void @runtime.TouchConservativeSlot(ptr %213, i64 16)
  store i64 0, ptr %20, align 4
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  store ptr null, ptr %21, align 8
  call void @runtime.TouchConservativeSlot(ptr %21, i64 8)
  call void @runtime.ClobberPointerRegs()
  %214 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 2 }, ptr %214, align 8
  %215 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %214, 1
  %216 = icmp eq ptr %22, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %216)
  %217 = load i64, ptr %22, align 4
  %218 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %215, ptr %218, align 8
  call void @runtime.StoreHiddenPointee(i64 %217, ptr %218, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %218, align 8
  call void @runtime.TouchConservativeSlot(ptr %218, i64 16)
  store i64 0, ptr %22, align 4
  call void @runtime.TouchConservativeSlot(ptr %22, i64 8)
  store ptr null, ptr %23, align 8
  call void @runtime.TouchConservativeSlot(ptr %23, i64 8)
  call void @runtime.ClobberPointerRegs()
  %219 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %219)
  %220 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %220)
  %221 = icmp eq ptr %30, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %221)
  %222 = load %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %30, align 8
  store %"github.com/goplus/llgo/cl/_testgo/equal.T" %222, ptr %24, align 8
  %223 = icmp eq ptr %93, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %223)
  %224 = load %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %93, align 8
  store %"github.com/goplus/llgo/cl/_testgo/equal.T" %224, ptr %25, align 8
  %225 = icmp eq ptr %24, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %225)
  %226 = load %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %24, align 8
  %227 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %227)
  %228 = load %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %25, align 8
  %229 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %226, 0
  %230 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %228, 0
  %231 = icmp eq i64 %229, %230
  %232 = and i1 true, %231
  %233 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %226, 1
  %234 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %228, 1
  %235 = icmp eq i64 %233, %234
  %236 = and i1 %232, %235
  %237 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %226, 2
  %238 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %228, 2
  %239 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %237, %"github.com/goplus/llgo/runtime/internal/runtime.String" %238)
  %240 = and i1 %236, %239
  %241 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %226, 3
  %242 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %228, 3
  %243 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %241, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %242)
  %244 = and i1 %240, %243
  store %"github.com/goplus/llgo/cl/_testgo/equal.T" zeroinitializer, ptr %24, align 8
  call void @runtime.TouchConservativeSlot(ptr %24, i64 48)
  store %"github.com/goplus/llgo/cl/_testgo/equal.T" zeroinitializer, ptr %25, align 8
  call void @runtime.TouchConservativeSlot(ptr %25, i64 48)
  call void @runtime.ClobberPointerRegs()
  %245 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %244)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %245)
  %246 = icmp eq ptr %30, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %246)
  %247 = load %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %30, align 8
  store %"github.com/goplus/llgo/cl/_testgo/equal.T" %247, ptr %26, align 8
  store %"github.com/goplus/llgo/cl/_testgo/equal.T" zeroinitializer, ptr %30, align 8
  call void @runtime.TouchConservativeSlot(ptr %30, i64 48)
  call void @runtime.ClobberPointerRegs()
  %248 = icmp eq ptr %156, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %248)
  %249 = load %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %156, align 8
  store %"github.com/goplus/llgo/cl/_testgo/equal.T" %249, ptr %27, align 8
  %250 = icmp eq ptr %26, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %250)
  %251 = load %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %26, align 8
  %252 = icmp eq ptr %27, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %252)
  %253 = load %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %27, align 8
  %254 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %251, 0
  %255 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %253, 0
  %256 = icmp eq i64 %254, %255
  %257 = and i1 true, %256
  %258 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %251, 1
  %259 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %253, 1
  %260 = icmp eq i64 %258, %259
  %261 = and i1 %257, %260
  %262 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %251, 2
  %263 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %253, 2
  %264 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %262, %"github.com/goplus/llgo/runtime/internal/runtime.String" %263)
  %265 = and i1 %261, %264
  %266 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %251, 3
  %267 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %253, 3
  %268 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %266, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %267)
  %269 = and i1 %265, %268
  %270 = xor i1 %269, true
  store %"github.com/goplus/llgo/cl/_testgo/equal.T" zeroinitializer, ptr %26, align 8
  call void @runtime.TouchConservativeSlot(ptr %26, i64 48)
  store %"github.com/goplus/llgo/cl/_testgo/equal.T" zeroinitializer, ptr %27, align 8
  call void @runtime.TouchConservativeSlot(ptr %27, i64 48)
  call void @runtime.ClobberPointerRegs()
  %271 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %270)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %271)
  %272 = icmp eq ptr %93, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %272)
  %273 = load %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %93, align 8
  store %"github.com/goplus/llgo/cl/_testgo/equal.T" %273, ptr %28, align 8
  store %"github.com/goplus/llgo/cl/_testgo/equal.T" zeroinitializer, ptr %93, align 8
  call void @runtime.TouchConservativeSlot(ptr %93, i64 48)
  call void @runtime.ClobberPointerRegs()
  %274 = icmp eq ptr %156, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %274)
  %275 = load %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %156, align 8
  store %"github.com/goplus/llgo/cl/_testgo/equal.T" %275, ptr %29, align 8
  store %"github.com/goplus/llgo/cl/_testgo/equal.T" zeroinitializer, ptr %156, align 8
  call void @runtime.TouchConservativeSlot(ptr %156, i64 48)
  call void @runtime.ClobberPointerRegs()
  %276 = icmp eq ptr %28, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %276)
  %277 = load %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %28, align 8
  %278 = icmp eq ptr %29, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %278)
  %279 = load %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %29, align 8
  %280 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %277, 0
  %281 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %279, 0
  %282 = icmp eq i64 %280, %281
  %283 = and i1 true, %282
  %284 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %277, 1
  %285 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %279, 1
  %286 = icmp eq i64 %284, %285
  %287 = and i1 %283, %286
  %288 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %277, 2
  %289 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %279, 2
  %290 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %288, %"github.com/goplus/llgo/runtime/internal/runtime.String" %289)
  %291 = and i1 %287, %290
  %292 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %277, 3
  %293 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %279, 3
  %294 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %292, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %293)
  %295 = and i1 %291, %294
  %296 = xor i1 %295, true
  store %"github.com/goplus/llgo/cl/_testgo/equal.T" zeroinitializer, ptr %28, align 8
  call void @runtime.TouchConservativeSlot(ptr %28, i64 48)
  store %"github.com/goplus/llgo/cl/_testgo/equal.T" zeroinitializer, ptr %29, align 8
  call void @runtime.TouchConservativeSlot(ptr %29, i64 48)
  call void @runtime.ClobberPointerRegs()
  %297 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %296)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %297)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/equal.init#4"() {
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
  %8 = alloca { i64, i64, i64 }, align 8
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %9, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  store ptr null, ptr %11, align 8
  %12 = alloca { i64, i64, i64 }, align 8
  %13 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %13, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  store ptr null, ptr %15, align 8
  %16 = alloca { i64, i64, i64 }, align 8
  %17 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %17, align 8
  %18 = call i64 @runtime.AllocZHidden(i64 24)
  store i64 %18, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %18)
  %19 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = load i64, ptr %0, align 4
  %21 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 3)
  %22 = mul i64 %21, 8
  %23 = call i64 @runtime.AdvanceHiddenPointer(i64 %20, i64 %22)
  store i64 %23, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %23)
  %24 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load i64, ptr %2, align 4
  %26 = alloca i64, align 8
  store i64 1, ptr %26, align 4
  call void @runtime.StoreHiddenPointee(i64 %25, ptr %26, i64 8)
  store i64 0, ptr %26, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %27 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %27)
  %28 = load i64, ptr %0, align 4
  %29 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 3)
  %30 = mul i64 %29, 8
  %31 = call i64 @runtime.AdvanceHiddenPointer(i64 %28, i64 %30)
  store i64 %31, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %31)
  %32 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %32)
  %33 = load i64, ptr %4, align 4
  %34 = alloca i64, align 8
  store i64 2, ptr %34, align 4
  call void @runtime.StoreHiddenPointee(i64 %33, ptr %34, i64 8)
  store i64 0, ptr %34, align 4
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %35 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %35)
  %36 = load i64, ptr %0, align 4
  %37 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 3)
  %38 = mul i64 %37, 8
  %39 = call i64 @runtime.AdvanceHiddenPointer(i64 %36, i64 %38)
  store i64 %39, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %39)
  %40 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %40)
  %41 = load i64, ptr %6, align 4
  %42 = alloca i64, align 8
  store i64 3, ptr %42, align 4
  call void @runtime.StoreHiddenPointee(i64 %41, ptr %42, i64 8)
  store i64 0, ptr %42, align 4
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %43 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = load i64, ptr %0, align 4
  %45 = and i64 %44, 72057594037927935
  %46 = lshr i64 %45, 17
  %47 = select i1 false, i64 0, i64 %46
  %48 = shl i64 %45, 39
  %49 = select i1 false, i64 0, i64 %48
  %50 = or i64 %47, %49
  %51 = and i64 %50, 72057594037927935
  %52 = xor i64 %51, 25399393228665167
  %53 = inttoptr i64 %52 to ptr
  %54 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %53, 0
  %55 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %54, i64 3, 1
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %55, i64 3, 2
  %57 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %56, ptr %57, align 8
  %58 = icmp eq ptr %57, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %58)
  %59 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %57, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %59, ptr %9, align 8
  %60 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %59, 0
  %61 = ptrtoint ptr %60 to i64
  %62 = and i64 %61, 72057594037927935
  %63 = xor i64 %62, 25399393228665167
  %64 = shl i64 %63, 17
  %65 = select i1 false, i64 0, i64 %64
  %66 = lshr i64 %63, 39
  %67 = select i1 false, i64 0, i64 %66
  %68 = or i64 %65, %67
  %69 = and i64 %68, 72057594037927935
  %70 = or i64 %69, -6557241057451442176
  %71 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %59, 1
  %72 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %59, 2
  %73 = insertvalue { i64, i64, i64 } undef, i64 %70, 0
  %74 = insertvalue { i64, i64, i64 } %73, i64 %71, 1
  %75 = insertvalue { i64, i64, i64 } %74, i64 %72, 2
  store { i64, i64, i64 } %75, ptr %8, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %57, align 8
  call void @runtime.TouchConservativeSlot(ptr %57, i64 24)
  call void @runtime.ClobberPointerRegs()
  %76 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.MakeSliceTo"(ptr %76, i64 2, i64 2, i64 8)
  %77 = icmp eq ptr %76, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %77)
  %78 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %76, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %78, ptr %13, align 8
  %79 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %78, 0
  %80 = ptrtoint ptr %79 to i64
  %81 = and i64 %80, 72057594037927935
  %82 = xor i64 %81, 25399393228665167
  %83 = shl i64 %82, 17
  %84 = select i1 false, i64 0, i64 %83
  %85 = lshr i64 %82, 39
  %86 = select i1 false, i64 0, i64 %85
  %87 = or i64 %84, %86
  %88 = and i64 %87, 72057594037927935
  %89 = or i64 %88, -6557241057451442176
  %90 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %78, 1
  %91 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %78, 2
  %92 = insertvalue { i64, i64, i64 } undef, i64 %89, 0
  %93 = insertvalue { i64, i64, i64 } %92, i64 %90, 1
  %94 = insertvalue { i64, i64, i64 } %93, i64 %91, 2
  store { i64, i64, i64 } %94, ptr %12, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %76, align 8
  call void @runtime.TouchConservativeSlot(ptr %76, i64 24)
  call void @runtime.ClobberPointerRegs()
  %95 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.MakeSliceTo"(ptr %95, i64 0, i64 2, i64 8)
  %96 = icmp eq ptr %95, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %96)
  %97 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %95, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %97, ptr %17, align 8
  %98 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %97, 0
  %99 = ptrtoint ptr %98 to i64
  %100 = and i64 %99, 72057594037927935
  %101 = xor i64 %100, 25399393228665167
  %102 = shl i64 %101, 17
  %103 = select i1 false, i64 0, i64 %102
  %104 = lshr i64 %101, 39
  %105 = select i1 false, i64 0, i64 %104
  %106 = or i64 %103, %105
  %107 = and i64 %106, 72057594037927935
  %108 = or i64 %107, -6557241057451442176
  %109 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %97, 1
  %110 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %97, 2
  %111 = insertvalue { i64, i64, i64 } undef, i64 %108, 0
  %112 = insertvalue { i64, i64, i64 } %111, i64 %109, 1
  %113 = insertvalue { i64, i64, i64 } %112, i64 %110, 2
  store { i64, i64, i64 } %113, ptr %16, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %95, align 8
  call void @runtime.TouchConservativeSlot(ptr %95, i64 24)
  call void @runtime.ClobberPointerRegs()
  %114 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %114)
  %115 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %115)
  %116 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %9, align 8
  %117 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %116, 0
  %118 = icmp ne ptr %117, null
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 24)
  call void @runtime.ClobberPointerRegs()
  %119 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %118)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %119)
  %120 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %120)
  %121 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %13, align 8
  %122 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %121, 0
  %123 = icmp ne ptr %122, null
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 24)
  call void @runtime.ClobberPointerRegs()
  %124 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %123)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %124)
  %125 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %125)
  %126 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %17, align 8
  %127 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %126, 0
  %128 = icmp ne ptr %127, null
  store i64 0, ptr %14, align 4
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store ptr null, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %16, align 4
  call void @runtime.TouchConservativeSlot(ptr %16, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 24)
  call void @runtime.ClobberPointerRegs()
  %129 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %128)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %129)
  %130 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %130)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/equal.init#5"() {
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
  %8 = alloca %"github.com/goplus/llgo/cl/_testgo/equal.T", align 8
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
  %25 = alloca %"github.com/goplus/llgo/cl/_testgo/equal.T", align 8
  %26 = alloca %"github.com/goplus/llgo/cl/_testgo/equal.T", align 8
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 100, ptr %27, align 4
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %27, 1
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store {} zeroinitializer, ptr %29, align 1
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", ptr undef }, ptr %29, 1
  %31 = alloca %"github.com/goplus/llgo/cl/_testgo/equal.T", align 8
  call void @llvm.memset(ptr %31, i8 0, i64 48, i1 false)
  %32 = icmp eq ptr %31, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %32)
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %31, i32 0, i32 0
  %34 = ptrtoint ptr %33 to i64
  %35 = and i64 %34, 72057594037927935
  %36 = xor i64 %35, 25399393228665167
  %37 = shl i64 %36, 17
  %38 = select i1 false, i64 0, i64 %37
  %39 = lshr i64 %36, 39
  %40 = select i1 false, i64 0, i64 %39
  %41 = or i64 %38, %40
  %42 = and i64 %41, 72057594037927935
  %43 = or i64 %42, -6557241057451442176
  store i64 %43, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %43)
  call void @runtime.ClobberPointerRegs()
  %44 = icmp eq ptr %31, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %44)
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %31, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i64
  %47 = and i64 %46, 72057594037927935
  %48 = xor i64 %47, 25399393228665167
  %49 = shl i64 %48, 17
  %50 = select i1 false, i64 0, i64 %49
  %51 = lshr i64 %48, 39
  %52 = select i1 false, i64 0, i64 %51
  %53 = or i64 %50, %52
  %54 = and i64 %53, 72057594037927935
  %55 = or i64 %54, -6557241057451442176
  store i64 %55, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %55)
  call void @runtime.ClobberPointerRegs()
  %56 = icmp eq ptr %31, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %56)
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %31, i32 0, i32 2
  %58 = ptrtoint ptr %57 to i64
  %59 = and i64 %58, 72057594037927935
  %60 = xor i64 %59, 25399393228665167
  %61 = shl i64 %60, 17
  %62 = select i1 false, i64 0, i64 %61
  %63 = lshr i64 %60, 39
  %64 = select i1 false, i64 0, i64 %63
  %65 = or i64 %62, %64
  %66 = and i64 %65, 72057594037927935
  %67 = or i64 %66, -6557241057451442176
  store i64 %67, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %67)
  call void @runtime.ClobberPointerRegs()
  %68 = icmp eq ptr %31, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %68)
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %31, i32 0, i32 3
  %70 = ptrtoint ptr %69 to i64
  %71 = and i64 %70, 72057594037927935
  %72 = xor i64 %71, 25399393228665167
  %73 = shl i64 %72, 17
  %74 = select i1 false, i64 0, i64 %73
  %75 = lshr i64 %72, 39
  %76 = select i1 false, i64 0, i64 %75
  %77 = or i64 %74, %76
  %78 = and i64 %77, 72057594037927935
  %79 = or i64 %78, -6557241057451442176
  store i64 %79, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %79)
  call void @runtime.ClobberPointerRegs()
  %80 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %80)
  %81 = load i64, ptr %0, align 4
  %82 = alloca i64, align 8
  store i64 10, ptr %82, align 4
  call void @runtime.StoreHiddenPointee(i64 %81, ptr %82, i64 8)
  store i64 0, ptr %82, align 4
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %83 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %83)
  %84 = load i64, ptr %2, align 4
  %85 = alloca i64, align 8
  store i64 20, ptr %85, align 4
  call void @runtime.StoreHiddenPointee(i64 %84, ptr %85, i64 8)
  store i64 0, ptr %85, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %86 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %86)
  %87 = load i64, ptr %4, align 4
  %88 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %88, align 8
  call void @runtime.StoreHiddenPointee(i64 %87, ptr %88, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %88, align 8
  call void @runtime.TouchConservativeSlot(ptr %88, i64 16)
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %89 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %89, align 4
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %89, 1
  %91 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %91)
  %92 = load i64, ptr %6, align 4
  %93 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %90, ptr %93, align 8
  call void @runtime.StoreHiddenPointee(i64 %92, ptr %93, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %93, align 8
  call void @runtime.TouchConservativeSlot(ptr %93, i64 16)
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %94 = icmp eq ptr %31, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %94)
  %95 = load %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %31, align 8
  store %"github.com/goplus/llgo/cl/_testgo/equal.T" %95, ptr %8, align 8
  store %"github.com/goplus/llgo/cl/_testgo/equal.T" zeroinitializer, ptr %31, align 8
  call void @runtime.TouchConservativeSlot(ptr %31, i64 48)
  call void @runtime.ClobberPointerRegs()
  %96 = icmp eq ptr %31, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %96)
  %97 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/equal.T", ptr %97, ptr %31)
  %98 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/equal.T", ptr undef }, ptr %97, 1
  %99 = alloca %"github.com/goplus/llgo/cl/_testgo/equal.T", align 8
  call void @llvm.memset(ptr %99, i8 0, i64 48, i1 false)
  %100 = icmp eq ptr %99, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %100)
  %101 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %99, i32 0, i32 0
  %102 = ptrtoint ptr %101 to i64
  %103 = and i64 %102, 72057594037927935
  %104 = xor i64 %103, 25399393228665167
  %105 = shl i64 %104, 17
  %106 = select i1 false, i64 0, i64 %105
  %107 = lshr i64 %104, 39
  %108 = select i1 false, i64 0, i64 %107
  %109 = or i64 %106, %108
  %110 = and i64 %109, 72057594037927935
  %111 = or i64 %110, -6557241057451442176
  store i64 %111, ptr %9, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %10, i64 %111)
  call void @runtime.ClobberPointerRegs()
  %112 = icmp eq ptr %99, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %112)
  %113 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %99, i32 0, i32 1
  %114 = ptrtoint ptr %113 to i64
  %115 = and i64 %114, 72057594037927935
  %116 = xor i64 %115, 25399393228665167
  %117 = shl i64 %116, 17
  %118 = select i1 false, i64 0, i64 %117
  %119 = lshr i64 %116, 39
  %120 = select i1 false, i64 0, i64 %119
  %121 = or i64 %118, %120
  %122 = and i64 %121, 72057594037927935
  %123 = or i64 %122, -6557241057451442176
  store i64 %123, ptr %11, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %12, i64 %123)
  call void @runtime.ClobberPointerRegs()
  %124 = icmp eq ptr %99, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %124)
  %125 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %99, i32 0, i32 2
  %126 = ptrtoint ptr %125 to i64
  %127 = and i64 %126, 72057594037927935
  %128 = xor i64 %127, 25399393228665167
  %129 = shl i64 %128, 17
  %130 = select i1 false, i64 0, i64 %129
  %131 = lshr i64 %128, 39
  %132 = select i1 false, i64 0, i64 %131
  %133 = or i64 %130, %132
  %134 = and i64 %133, 72057594037927935
  %135 = or i64 %134, -6557241057451442176
  store i64 %135, ptr %13, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %14, i64 %135)
  call void @runtime.ClobberPointerRegs()
  %136 = icmp eq ptr %99, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %136)
  %137 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %99, i32 0, i32 3
  %138 = ptrtoint ptr %137 to i64
  %139 = and i64 %138, 72057594037927935
  %140 = xor i64 %139, 25399393228665167
  %141 = shl i64 %140, 17
  %142 = select i1 false, i64 0, i64 %141
  %143 = lshr i64 %140, 39
  %144 = select i1 false, i64 0, i64 %143
  %145 = or i64 %142, %144
  %146 = and i64 %145, 72057594037927935
  %147 = or i64 %146, -6557241057451442176
  store i64 %147, ptr %15, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %16, i64 %147)
  call void @runtime.ClobberPointerRegs()
  %148 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %148)
  %149 = load i64, ptr %9, align 4
  %150 = alloca i64, align 8
  store i64 10, ptr %150, align 4
  call void @runtime.StoreHiddenPointee(i64 %149, ptr %150, i64 8)
  store i64 0, ptr %150, align 4
  store i64 0, ptr %9, align 4
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  store ptr null, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  call void @runtime.ClobberPointerRegs()
  %151 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %151)
  %152 = load i64, ptr %11, align 4
  %153 = alloca i64, align 8
  store i64 20, ptr %153, align 4
  call void @runtime.StoreHiddenPointee(i64 %152, ptr %153, i64 8)
  store i64 0, ptr %153, align 4
  store i64 0, ptr %11, align 4
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  store ptr null, ptr %12, align 8
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  call void @runtime.ClobberPointerRegs()
  %154 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %154)
  %155 = load i64, ptr %13, align 4
  %156 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %156, align 8
  call void @runtime.StoreHiddenPointee(i64 %155, ptr %156, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %156, align 8
  call void @runtime.TouchConservativeSlot(ptr %156, i64 16)
  store i64 0, ptr %13, align 4
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  store ptr null, ptr %14, align 8
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  call void @runtime.ClobberPointerRegs()
  %157 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %157, align 4
  %158 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %157, 1
  %159 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %159)
  %160 = load i64, ptr %15, align 4
  %161 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %158, ptr %161, align 8
  call void @runtime.StoreHiddenPointee(i64 %160, ptr %161, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %161, align 8
  call void @runtime.TouchConservativeSlot(ptr %161, i64 16)
  store i64 0, ptr %15, align 4
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  store ptr null, ptr %16, align 8
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  call void @runtime.ClobberPointerRegs()
  %162 = alloca %"github.com/goplus/llgo/cl/_testgo/equal.T", align 8
  call void @llvm.memset(ptr %162, i8 0, i64 48, i1 false)
  %163 = icmp eq ptr %162, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %163)
  %164 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %162, i32 0, i32 0
  %165 = ptrtoint ptr %164 to i64
  %166 = and i64 %165, 72057594037927935
  %167 = xor i64 %166, 25399393228665167
  %168 = shl i64 %167, 17
  %169 = select i1 false, i64 0, i64 %168
  %170 = lshr i64 %167, 39
  %171 = select i1 false, i64 0, i64 %170
  %172 = or i64 %169, %171
  %173 = and i64 %172, 72057594037927935
  %174 = or i64 %173, -6557241057451442176
  store i64 %174, ptr %17, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %18, i64 %174)
  call void @runtime.ClobberPointerRegs()
  %175 = icmp eq ptr %162, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %175)
  %176 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %162, i32 0, i32 1
  %177 = ptrtoint ptr %176 to i64
  %178 = and i64 %177, 72057594037927935
  %179 = xor i64 %178, 25399393228665167
  %180 = shl i64 %179, 17
  %181 = select i1 false, i64 0, i64 %180
  %182 = lshr i64 %179, 39
  %183 = select i1 false, i64 0, i64 %182
  %184 = or i64 %181, %183
  %185 = and i64 %184, 72057594037927935
  %186 = or i64 %185, -6557241057451442176
  store i64 %186, ptr %19, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %20, i64 %186)
  call void @runtime.ClobberPointerRegs()
  %187 = icmp eq ptr %162, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %187)
  %188 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %162, i32 0, i32 2
  %189 = ptrtoint ptr %188 to i64
  %190 = and i64 %189, 72057594037927935
  %191 = xor i64 %190, 25399393228665167
  %192 = shl i64 %191, 17
  %193 = select i1 false, i64 0, i64 %192
  %194 = lshr i64 %191, 39
  %195 = select i1 false, i64 0, i64 %194
  %196 = or i64 %193, %195
  %197 = and i64 %196, 72057594037927935
  %198 = or i64 %197, -6557241057451442176
  store i64 %198, ptr %21, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %22, i64 %198)
  call void @runtime.ClobberPointerRegs()
  %199 = icmp eq ptr %162, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %199)
  %200 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %162, i32 0, i32 3
  %201 = ptrtoint ptr %200 to i64
  %202 = and i64 %201, 72057594037927935
  %203 = xor i64 %202, 25399393228665167
  %204 = shl i64 %203, 17
  %205 = select i1 false, i64 0, i64 %204
  %206 = lshr i64 %203, 39
  %207 = select i1 false, i64 0, i64 %206
  %208 = or i64 %205, %207
  %209 = and i64 %208, 72057594037927935
  %210 = or i64 %209, -6557241057451442176
  store i64 %210, ptr %23, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %24, i64 %210)
  call void @runtime.ClobberPointerRegs()
  %211 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %211)
  %212 = load i64, ptr %17, align 4
  %213 = alloca i64, align 8
  store i64 10, ptr %213, align 4
  call void @runtime.StoreHiddenPointee(i64 %212, ptr %213, i64 8)
  store i64 0, ptr %213, align 4
  store i64 0, ptr %17, align 4
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  store ptr null, ptr %18, align 8
  call void @runtime.TouchConservativeSlot(ptr %18, i64 8)
  call void @runtime.ClobberPointerRegs()
  %214 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %214)
  %215 = load i64, ptr %19, align 4
  %216 = alloca i64, align 8
  store i64 20, ptr %216, align 4
  call void @runtime.StoreHiddenPointee(i64 %215, ptr %216, i64 8)
  store i64 0, ptr %216, align 4
  store i64 0, ptr %19, align 4
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  store ptr null, ptr %20, align 8
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  call void @runtime.ClobberPointerRegs()
  %217 = icmp eq ptr %21, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %217)
  %218 = load i64, ptr %21, align 4
  %219 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %219, align 8
  call void @runtime.StoreHiddenPointee(i64 %218, ptr %219, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %219, align 8
  call void @runtime.TouchConservativeSlot(ptr %219, i64 16)
  store i64 0, ptr %21, align 4
  call void @runtime.TouchConservativeSlot(ptr %21, i64 8)
  store ptr null, ptr %22, align 8
  call void @runtime.TouchConservativeSlot(ptr %22, i64 8)
  call void @runtime.ClobberPointerRegs()
  %220 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 2 }, ptr %220, align 8
  %221 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %220, 1
  %222 = icmp eq ptr %23, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %222)
  %223 = load i64, ptr %23, align 4
  %224 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %221, ptr %224, align 8
  call void @runtime.StoreHiddenPointee(i64 %223, ptr %224, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %224, align 8
  call void @runtime.TouchConservativeSlot(ptr %224, i64 16)
  store i64 0, ptr %23, align 4
  call void @runtime.TouchConservativeSlot(ptr %23, i64 8)
  store ptr null, ptr %24, align 8
  call void @runtime.TouchConservativeSlot(ptr %24, i64 8)
  call void @runtime.ClobberPointerRegs()
  %225 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 100, ptr %225, align 4
  %226 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %225, 1
  %227 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %28, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %226)
  %228 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %227)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %228)
  %229 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store {} zeroinitializer, ptr %229, align 1
  %230 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", ptr undef }, ptr %229, 1
  %231 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %30, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %230)
  %232 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %231)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %232)
  %233 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/cl/_testgo/equal.N" zeroinitializer, ptr %233, align 1
  %234 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/equal.N", ptr undef }, ptr %233, 1
  %235 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %30, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %234)
  %236 = xor i1 %235, true
  %237 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %236)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %237)
  %238 = icmp eq ptr %99, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %238)
  %239 = load %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %99, align 8
  store %"github.com/goplus/llgo/cl/_testgo/equal.T" %239, ptr %25, align 8
  store %"github.com/goplus/llgo/cl/_testgo/equal.T" zeroinitializer, ptr %99, align 8
  call void @runtime.TouchConservativeSlot(ptr %99, i64 48)
  call void @runtime.ClobberPointerRegs()
  %240 = icmp eq ptr %99, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %240)
  %241 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/equal.T", ptr %241, ptr %99)
  %242 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/equal.T", ptr undef }, ptr %241, 1
  %243 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %98, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %242)
  store %"github.com/goplus/llgo/cl/_testgo/equal.T" zeroinitializer, ptr %25, align 8
  call void @runtime.TouchConservativeSlot(ptr %25, i64 48)
  call void @runtime.ClobberPointerRegs()
  %244 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %243)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %244)
  %245 = icmp eq ptr %162, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %245)
  %246 = load %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %162, align 8
  store %"github.com/goplus/llgo/cl/_testgo/equal.T" %246, ptr %26, align 8
  store %"github.com/goplus/llgo/cl/_testgo/equal.T" zeroinitializer, ptr %162, align 8
  call void @runtime.TouchConservativeSlot(ptr %162, i64 48)
  call void @runtime.ClobberPointerRegs()
  %247 = icmp eq ptr %162, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %247)
  %248 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/equal.T", ptr %248, ptr %162)
  %249 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/equal.T", ptr undef }, ptr %248, 1
  %250 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %98, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %249)
  %251 = xor i1 %250, true
  store %"github.com/goplus/llgo/cl/_testgo/equal.T" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 48)
  store %"github.com/goplus/llgo/cl/_testgo/equal.T" zeroinitializer, ptr %26, align 8
  call void @runtime.TouchConservativeSlot(ptr %26, i64 48)
  call void @runtime.ClobberPointerRegs()
  %252 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %251)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %252)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/equal.init#6"() {
_llgo_0:
  %0 = alloca ptr, align 8
  %1 = alloca ptr, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64 8, i64 0)
  store ptr %2, ptr %0, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64 8, i64 0)
  store ptr %3, ptr %1, align 8
  %4 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load ptr, ptr %0, align 8
  %6 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load ptr, ptr %0, align 8
  %8 = icmp eq ptr %5, %7
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %9)
  %10 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = load ptr, ptr %0, align 8
  %12 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %12)
  %13 = load ptr, ptr %1, align 8
  %14 = icmp ne ptr %11, %13
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %15)
  %16 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %16)
  %17 = load ptr, ptr %0, align 8
  %18 = icmp ne ptr %17, null
  store ptr null, ptr %0, align 8
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  call void @runtime.ClobberPointerRegs()
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %19)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/equal.init#7"() {
_llgo_0:
  %0 = alloca ptr, align 8
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_int]_llgo_string", i64 0)
  store ptr %1, ptr %0, align 8
  %2 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = load ptr, ptr %0, align 8
  %4 = icmp ne ptr %3, null
  store ptr null, ptr %0, align 8
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  call void @runtime.ClobberPointerRegs()
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %5)
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %6)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/equal.main"() {
_llgo_0:
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/equal.test"() {
_llgo_0:
  ret void
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.strequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare i64 @runtime.AllocZHidden(i64)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64, i64)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal64")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare i64 @runtime.AdvanceHiddenPointer(i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.MakeSliceTo"(ptr, i64, i64, i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal0")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64, i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.typehash"(ptr, ptr, i64)

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

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
