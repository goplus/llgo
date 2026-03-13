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
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr @"*_llgo_int" }, align 8
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
@_llgo_uint8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 269156761, i8 12, i8 1, i8 1, i8 40, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, ptr @"*_llgo_uint8" }, align 8
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
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/equal.init#1$2", ptr undef }, ptr %1, 1
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  %4 = extractvalue { ptr, ptr } %3, 0
  %5 = icmp ne ptr %4, null
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %5)
  %6 = extractvalue { ptr, ptr } %3, 0
  %7 = icmp ne ptr null, %6
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %7)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/equal.init#2"() {
_llgo_0:
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  %0 = alloca [3 x i64], align 8
  call void @llvm.memset(ptr %0, i8 0, i64 24, i1 false)
  %1 = getelementptr inbounds i64, ptr %0, i64 0
  %2 = getelementptr inbounds i64, ptr %0, i64 1
  %3 = getelementptr inbounds i64, ptr %0, i64 2
  store i64 1, ptr %1, align 4
  store i64 2, ptr %2, align 4
  store i64 3, ptr %3, align 4
  %4 = alloca [3 x i64], align 8
  call void @llvm.memset(ptr %4, i8 0, i64 24, i1 false)
  %5 = getelementptr inbounds i64, ptr %4, i64 0
  %6 = getelementptr inbounds i64, ptr %4, i64 1
  %7 = getelementptr inbounds i64, ptr %4, i64 2
  store i64 1, ptr %5, align 4
  store i64 2, ptr %6, align 4
  store i64 3, ptr %7, align 4
  %8 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = load [3 x i64], ptr %0, align 4
  %10 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = load [3 x i64], ptr %4, align 4
  %12 = extractvalue [3 x i64] %9, 0
  %13 = extractvalue [3 x i64] %11, 0
  %14 = icmp eq i64 %12, %13
  %15 = and i1 true, %14
  %16 = extractvalue [3 x i64] %9, 1
  %17 = extractvalue [3 x i64] %11, 1
  %18 = icmp eq i64 %16, %17
  %19 = and i1 %15, %18
  %20 = extractvalue [3 x i64] %9, 2
  %21 = extractvalue [3 x i64] %11, 2
  %22 = icmp eq i64 %20, %21
  %23 = and i1 %19, %22
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %23)
  %24 = getelementptr inbounds i64, ptr %4, i64 1
  store i64 1, ptr %24, align 4
  %25 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %25)
  %26 = load [3 x i64], ptr %0, align 4
  %27 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %27)
  %28 = load [3 x i64], ptr %4, align 4
  %29 = extractvalue [3 x i64] %26, 0
  %30 = extractvalue [3 x i64] %28, 0
  %31 = icmp eq i64 %29, %30
  %32 = and i1 true, %31
  %33 = extractvalue [3 x i64] %26, 1
  %34 = extractvalue [3 x i64] %28, 1
  %35 = icmp eq i64 %33, %34
  %36 = and i1 %32, %35
  %37 = extractvalue [3 x i64] %26, 2
  %38 = extractvalue [3 x i64] %28, 2
  %39 = icmp eq i64 %37, %38
  %40 = and i1 %36, %39
  %41 = xor i1 %40, true
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %41)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/equal.init#3"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/cl/_testgo/equal.T", align 8
  call void @llvm.memset(ptr %0, i8 0, i64 48, i1 false)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %0, i32 0, i32 0
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %0, i32 0, i32 3
  store i64 10, ptr %1, align 4
  store i64 20, ptr %2, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %3, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 1 to ptr) }, ptr %4, align 8
  %5 = alloca %"github.com/goplus/llgo/cl/_testgo/equal.T", align 8
  call void @llvm.memset(ptr %5, i8 0, i64 48, i1 false)
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %5, i32 0, i32 1
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %5, i32 0, i32 2
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %5, i32 0, i32 3
  store i64 10, ptr %6, align 4
  store i64 20, ptr %7, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %8, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 1 to ptr) }, ptr %9, align 8
  %10 = alloca %"github.com/goplus/llgo/cl/_testgo/equal.T", align 8
  call void @llvm.memset(ptr %10, i8 0, i64 48, i1 false)
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %10, i32 0, i32 0
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %10, i32 0, i32 1
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %10, i32 0, i32 2
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %10, i32 0, i32 3
  store i64 10, ptr %11, align 4
  store i64 20, ptr %12, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %13, align 8
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 2 }, ptr %15, align 8
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %15, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %16, ptr %14, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  %17 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer)
  %18 = and i1 true, %17
  %19 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer)
  %20 = and i1 %18, %19
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %20)
  %21 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %0, align 8
  %23 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %5, align 8
  %25 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %22, 0
  %26 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %24, 0
  %27 = icmp eq i64 %25, %26
  %28 = and i1 true, %27
  %29 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %22, 1
  %30 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %24, 1
  %31 = icmp eq i64 %29, %30
  %32 = and i1 %28, %31
  %33 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %22, 2
  %34 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %24, 2
  %35 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %33, %"github.com/goplus/llgo/runtime/internal/runtime.String" %34)
  %36 = and i1 %32, %35
  %37 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %22, 3
  %38 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %24, 3
  %39 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %37, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %38)
  %40 = and i1 %36, %39
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %40)
  %41 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %41)
  %42 = load %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %0, align 8
  %43 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = load %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %10, align 8
  %45 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %42, 0
  %46 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %44, 0
  %47 = icmp eq i64 %45, %46
  %48 = and i1 true, %47
  %49 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %42, 1
  %50 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %44, 1
  %51 = icmp eq i64 %49, %50
  %52 = and i1 %48, %51
  %53 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %42, 2
  %54 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %44, 2
  %55 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %53, %"github.com/goplus/llgo/runtime/internal/runtime.String" %54)
  %56 = and i1 %52, %55
  %57 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %42, 3
  %58 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %44, 3
  %59 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %57, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %58)
  %60 = and i1 %56, %59
  %61 = xor i1 %60, true
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %61)
  %62 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %62)
  %63 = load %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %5, align 8
  %64 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %64)
  %65 = load %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %10, align 8
  %66 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %63, 0
  %67 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %65, 0
  %68 = icmp eq i64 %66, %67
  %69 = and i1 true, %68
  %70 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %63, 1
  %71 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %65, 1
  %72 = icmp eq i64 %70, %71
  %73 = and i1 %69, %72
  %74 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %63, 2
  %75 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %65, 2
  %76 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %74, %"github.com/goplus/llgo/runtime/internal/runtime.String" %75)
  %77 = and i1 %73, %76
  %78 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %63, 3
  %79 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %65, 3
  %80 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %78, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %79)
  %81 = and i1 %77, %80
  %82 = xor i1 %81, true
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %82)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/equal.init#4"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %1 = getelementptr inbounds i64, ptr %0, i64 0
  store i64 1, ptr %1, align 4
  %2 = getelementptr inbounds i64, ptr %0, i64 1
  store i64 2, ptr %2, align 4
  %3 = getelementptr inbounds i64, ptr %0, i64 2
  store i64 3, ptr %3, align 4
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %0, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 3, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 3, 2
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %8 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %7, i64 8, i64 2, i64 0, i64 2, i64 2)
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %10 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %9, i64 8, i64 2, i64 0, i64 0, i64 2)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, 0
  %12 = icmp ne ptr %11, null
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %12)
  %13 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, 0
  %14 = icmp ne ptr %13, null
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %14)
  %15 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, 0
  %16 = icmp ne ptr %15, null
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %16)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/equal.init#5"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store {} zeroinitializer, ptr %0, align 1
  %1 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", ptr undef }, ptr %0, 1
  %2 = alloca %"github.com/goplus/llgo/cl/_testgo/equal.T", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 48, i1 false)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %2, i32 0, i32 0
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %2, i32 0, i32 1
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %2, i32 0, i32 2
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %2, i32 0, i32 3
  store i64 10, ptr %3, align 4
  store i64 20, ptr %4, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %5, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 1 to ptr) }, ptr %6, align 8
  %7 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = load %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %2, align 8
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  store %"github.com/goplus/llgo/cl/_testgo/equal.T" %8, ptr %9, align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/equal.T", ptr undef }, ptr %9, 1
  %11 = alloca %"github.com/goplus/llgo/cl/_testgo/equal.T", align 8
  call void @llvm.memset(ptr %11, i8 0, i64 48, i1 false)
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %11, i32 0, i32 0
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %11, i32 0, i32 1
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %11, i32 0, i32 2
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %11, i32 0, i32 3
  store i64 10, ptr %12, align 4
  store i64 20, ptr %13, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %14, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 1 to ptr) }, ptr %15, align 8
  %16 = alloca %"github.com/goplus/llgo/cl/_testgo/equal.T", align 8
  call void @llvm.memset(ptr %16, i8 0, i64 48, i1 false)
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %16, i32 0, i32 0
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %16, i32 0, i32 1
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %16, i32 0, i32 2
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %16, i32 0, i32 3
  store i64 10, ptr %17, align 4
  store i64 20, ptr %18, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %19, align 8
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 2 }, ptr %21, align 8
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %21, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %22, ptr %20, align 8
  %23 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 100 to ptr) }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 100 to ptr) })
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %23)
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store {} zeroinitializer, ptr %24, align 1
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", ptr undef }, ptr %24, 1
  %26 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %1, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %25)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %26)
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/cl/_testgo/equal.N" zeroinitializer, ptr %27, align 1
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/equal.N", ptr undef }, ptr %27, 1
  %29 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %1, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %28)
  %30 = xor i1 %29, true
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %30)
  %31 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %31)
  %32 = load %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %11, align 8
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  store %"github.com/goplus/llgo/cl/_testgo/equal.T" %32, ptr %33, align 8
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/equal.T", ptr undef }, ptr %33, 1
  %35 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %10, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %34)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %35)
  %36 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %36)
  %37 = load %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %16, align 8
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  store %"github.com/goplus/llgo/cl/_testgo/equal.T" %37, ptr %38, align 8
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/equal.T", ptr undef }, ptr %38, 1
  %40 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %10, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %39)
  %41 = xor i1 %40, true
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %41)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/equal.init#6"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64 8, i64 0)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64 8, i64 0)
  %2 = icmp eq ptr %0, %0
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %2)
  %3 = icmp ne ptr %0, %1
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %3)
  %4 = icmp ne ptr %0, null
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %4)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/equal.init#7"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_int]_llgo_string", i64 0)
  %1 = icmp ne ptr %0, null
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %1)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
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

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr, i64, i64, i64, i64, i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64, i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.typehash"(ptr, ptr, i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr, i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
