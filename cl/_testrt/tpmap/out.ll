; ModuleID = 'github.com/goplus/llgo/cl/_testrt/tpmap'
source_filename = "github.com/goplus/llgo/cl/_testrt/tpmap"

%"github.com/goplus/llgo/runtime/abi.MapType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, ptr, ptr, { ptr, ptr }, i8, i8, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.InterfaceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.ArrayType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.SliceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey" = type { i64, %"github.com/goplus/llgo/cl/_testrt/tpmap.T2", %"github.com/goplus/llgo/cl/_testrt/tpmap.T3[any]", ptr, i64 }
%"github.com/goplus/llgo/cl/_testrt/tpmap.T2" = type { i64 }
%"github.com/goplus/llgo/cl/_testrt/tpmap.T3[any]" = type { %"github.com/goplus/llgo/runtime/internal/runtime.eface" }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/tpmap.init$guard" = global i1 false, align 1
@"map[_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 991773486, i8 0, i8 8, i8 8, i8 53, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 24 }, ptr @"*map[_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey]_llgo_string" }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", ptr @_llgo_string, ptr @"github.com/goplus/llgo/cl/_testrt/tpmap.struct$ibdiBmDH7G4iiypsSuNnfN36hpedh02DKMXmXLR4D0g", { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehash", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey" }, i8 48, i8 16, i16 528, i32 24 }, align 8
@0 = private unnamed_addr constant [24 x i8] c"map[main.cacheKey]string", align 1
@"*map[_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1960879842, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 24 }, ptr null }, ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey]_llgo_string" }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 48, i64 32, i32 432286152, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 13 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 39 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/tpmap.struct$phCK-T684g3enhknCOfRlq7bWO8q6jPkTysM4zTiUJ8$fields", i64 5, i64 5 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 39 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@1 = private unnamed_addr constant [13 x i8] c"main.cacheKey", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2132600452, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 13 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey" }, align 8
@2 = private unnamed_addr constant [39 x i8] c"github.com/goplus/llgo/cl/_testrt/tpmap", align 1
@3 = private unnamed_addr constant [2 x i8] c"t1", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T1" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1406311802, i8 13, i8 8, i8 8, i8 2, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T1" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 39 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@4 = private unnamed_addr constant [7 x i8] c"main.T1", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T1" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1360547137, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T1" }, align 8
@5 = private unnamed_addr constant [2 x i8] c"t2", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T2" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 335154174, i8 13, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T2" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 7 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T2" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 39 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/tpmap.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 39 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@6 = private unnamed_addr constant [7 x i8] c"main.T2", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T2" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2100686654, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 7 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T2" }, align 8
@7 = private unnamed_addr constant [1 x i8] c"v", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 2, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 3 }, ptr @"*_llgo_int" }, align 8
@8 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"github.com/goplus/llgo/cl/_testrt/tpmap.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@9 = private unnamed_addr constant [2 x i8] c"t3", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T3[any]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 130177416, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T3[any]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 12 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T3[any]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 39 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/tpmap.struct$op7q0963ur0ih9ul6OteH-C75UVydPxwKOVpX1hUjzo$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 39 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@10 = private unnamed_addr constant [12 x i8] c"main.T3[any]", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T3[any]" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1601801132, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 12 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T3[any]" }, align 8
@_llgo_any = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1376530322, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 12 }, ptr @"*_llgo_any" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 39 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@11 = private unnamed_addr constant [12 x i8] c"interface {}", align 1
@"*_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1741196194, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 12 }, ptr null }, ptr @_llgo_any }, align 8
@"github.com/goplus/llgo/cl/_testrt/tpmap.struct$op7q0963ur0ih9ul6OteH-C75UVydPxwKOVpX1hUjzo$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 1 }, ptr @_llgo_any, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@12 = private unnamed_addr constant [2 x i8] c"t4", align 1
@13 = private unnamed_addr constant [2 x i8] c"t5", align 1
@_llgo_uintptr = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 1268343028, i8 12, i8 8, i8 8, i8 12, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 7 }, ptr @"*_llgo_uintptr" }, align 8
@14 = private unnamed_addr constant [7 x i8] c"uintptr", align 1
@"*_llgo_uintptr" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1684891952, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 7 }, ptr null }, ptr @_llgo_uintptr }, align 8
@"github.com/goplus/llgo/cl/_testrt/tpmap.struct$phCK-T684g3enhknCOfRlq7bWO8q6jPkTysM4zTiUJ8$fields" = weak_odr constant [5 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 2 }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T1", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T2", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 2 }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T3[any]", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 2 }, ptr @"*_llgo_int", i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 2 }, ptr @_llgo_uintptr, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, ptr @"*_llgo_string" }, align 8
@15 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"github.com/goplus/llgo/cl/_testrt/tpmap.struct$ibdiBmDH7G4iiypsSuNnfN36hpedh02DKMXmXLR4D0g" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 528, i64 528, i32 1375967069, i8 0, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"github.com/goplus/llgo/cl/_testrt/tpmap.struct$ibdiBmDH7G4iiypsSuNnfN36hpedh02DKMXmXLR4D0g" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 92 }, ptr @"*github.com/goplus/llgo/cl/_testrt/tpmap.struct$ibdiBmDH7G4iiypsSuNnfN36hpedh02DKMXmXLR4D0g" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/tpmap.struct$ibdiBmDH7G4iiypsSuNnfN36hpedh02DKMXmXLR4D0g$fields", i64 4, i64 4 } }, align 8
@16 = private unnamed_addr constant [92 x i8] c"struct { topbits [8]uint8; keys [8]main.cacheKey; elems [8]string; overflow unsafe.Pointer }", align 1
@"*github.com/goplus/llgo/cl/_testrt/tpmap.struct$ibdiBmDH7G4iiypsSuNnfN36hpedh02DKMXmXLR4D0g" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1496781970, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 92 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testrt/tpmap.struct$ibdiBmDH7G4iiypsSuNnfN36hpedh02DKMXmXLR4D0g" }, align 8
@17 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@"[8]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 307038632, i8 8, i8 1, i8 1, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_uint8" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 8 }, ptr @"*[8]_llgo_uint8" }, ptr @_llgo_uint8, ptr @"[]_llgo_uint8", i64 8 }, align 8
@18 = private unnamed_addr constant [8 x i8] c"[8]uint8", align 1
@"*[8]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -566230779, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 8 }, ptr null }, ptr @"[8]_llgo_uint8" }, align 8
@_llgo_uint8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 269156761, i8 12, i8 1, i8 1, i8 8, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 5 }, ptr @"*_llgo_uint8" }, align 8
@19 = private unnamed_addr constant [5 x i8] c"uint8", align 1
@"*_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1277858201, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 5 }, ptr null }, ptr @_llgo_uint8 }, align 8
@"[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 370346748, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 7 }, ptr @"*[]_llgo_uint8" }, ptr @_llgo_uint8 }, align 8
@20 = private unnamed_addr constant [7 x i8] c"[]uint8", align 1
@"*[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2143776929, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 7 }, ptr null }, ptr @"[]_llgo_uint8" }, align 8
@21 = private unnamed_addr constant [4 x i8] c"keys", align 1
@"[8]_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 384, i64 368, i32 1071232596, i8 0, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 16 }, ptr @"*[8]_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey" }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", ptr @"[]_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", i64 8 }, align 8
@22 = private unnamed_addr constant [16 x i8] c"[8]main.cacheKey", align 1
@"*[8]_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1657871583, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 16 }, ptr null }, ptr @"[8]_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey" }, align 8
@"[]_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -477128867, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 15 }, ptr @"*[]_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey" }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey" }, align 8
@23 = private unnamed_addr constant [15 x i8] c"[]main.cacheKey", align 1
@"*[]_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -384400292, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 15 }, ptr null }, ptr @"[]_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey" }, align 8
@24 = private unnamed_addr constant [5 x i8] c"elems", align 1
@"[8]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 128, i64 120, i32 460245566, i8 0, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_string" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 9 }, ptr @"*[8]_llgo_string" }, ptr @_llgo_string, ptr @"[]_llgo_string", i64 8 }, align 8
@25 = private unnamed_addr constant [9 x i8] c"[8]string", align 1
@"*[8]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 368026044, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 9 }, ptr null }, ptr @"[8]_llgo_string" }, align 8
@"[]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 608974920, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr @"*[]_llgo_string" }, ptr @_llgo_string }, align 8
@26 = private unnamed_addr constant [8 x i8] c"[]string", align 1
@"*[]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -157880218, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr null }, ptr @"[]_llgo_string" }, align 8
@27 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@28 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"github.com/goplus/llgo/cl/_testrt/tpmap.struct$ibdiBmDH7G4iiypsSuNnfN36hpedh02DKMXmXLR4D0g$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 7 }, ptr @"[8]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 4 }, ptr @"[8]_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 5 }, ptr @"[8]_llgo_string", i64 392, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 8 }, ptr @_llgo_Pointer, i64 520, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@29 = private unnamed_addr constant [5 x i8] c"world", align 1

define void @"github.com/goplus/llgo/cl/_testrt/tpmap.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/tpmap.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/tpmap.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/tpmap.main"() {
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
  %24 = alloca { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }, align 8
  %25 = alloca { i64, i64 }, align 8
  %26 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %26, align 8
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey]_llgo_string", i64 0)
  %28 = alloca %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", align 8
  call void @llvm.memset(ptr %28, i8 0, i64 48, i1 false)
  %29 = icmp eq ptr %28, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %29)
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", ptr %28, i32 0, i32 0
  %31 = ptrtoint ptr %30 to i64
  %32 = and i64 %31, 72057594037927935
  %33 = xor i64 %32, 25399393228665167
  %34 = shl i64 %33, 17
  %35 = select i1 false, i64 0, i64 %34
  %36 = lshr i64 %33, 39
  %37 = select i1 false, i64 0, i64 %36
  %38 = or i64 %35, %37
  %39 = and i64 %38, 72057594037927935
  %40 = or i64 %39, -6557241057451442176
  store i64 %40, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %40)
  call void @runtime.ClobberPointerRegs()
  %41 = icmp eq ptr %28, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %41)
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", ptr %28, i32 0, i32 1
  %43 = ptrtoint ptr %42 to i64
  %44 = and i64 %43, 72057594037927935
  %45 = xor i64 %44, 25399393228665167
  %46 = shl i64 %45, 17
  %47 = select i1 false, i64 0, i64 %46
  %48 = lshr i64 %45, 39
  %49 = select i1 false, i64 0, i64 %48
  %50 = or i64 %47, %49
  %51 = and i64 %50, 72057594037927935
  %52 = or i64 %51, -6557241057451442176
  store i64 %52, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %52)
  call void @runtime.ClobberPointerRegs()
  %53 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %53)
  %54 = load i64, ptr %2, align 4
  %55 = and i64 %54, 72057594037927935
  %56 = lshr i64 %55, 17
  %57 = select i1 false, i64 0, i64 %56
  %58 = shl i64 %55, 39
  %59 = select i1 false, i64 0, i64 %58
  %60 = or i64 %57, %59
  %61 = and i64 %60, 72057594037927935
  %62 = xor i64 %61, 25399393228665167
  %63 = inttoptr i64 %62 to ptr
  %64 = icmp eq ptr %63, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %64)
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmap.T2", ptr %63, i32 0, i32 0
  %66 = ptrtoint ptr %65 to i64
  %67 = and i64 %66, 72057594037927935
  %68 = xor i64 %67, 25399393228665167
  %69 = shl i64 %68, 17
  %70 = select i1 false, i64 0, i64 %69
  %71 = lshr i64 %68, 39
  %72 = select i1 false, i64 0, i64 %71
  %73 = or i64 %70, %72
  %74 = and i64 %73, 72057594037927935
  %75 = or i64 %74, -6557241057451442176
  store i64 %75, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %75)
  call void @runtime.ClobberPointerRegs()
  %76 = icmp eq ptr %28, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %76)
  %77 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", ptr %28, i32 0, i32 2
  %78 = icmp eq ptr %77, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %78)
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmap.T3[any]", ptr %77, i32 0, i32 0
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
  store i64 %89, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %89)
  call void @runtime.ClobberPointerRegs()
  %90 = icmp eq ptr %28, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %90)
  %91 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", ptr %28, i32 0, i32 3
  %92 = ptrtoint ptr %91 to i64
  %93 = and i64 %92, 72057594037927935
  %94 = xor i64 %93, 25399393228665167
  %95 = shl i64 %94, 17
  %96 = select i1 false, i64 0, i64 %95
  %97 = lshr i64 %94, 39
  %98 = select i1 false, i64 0, i64 %97
  %99 = or i64 %96, %98
  %100 = and i64 %99, 72057594037927935
  %101 = or i64 %100, -6557241057451442176
  store i64 %101, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %101)
  call void @runtime.ClobberPointerRegs()
  %102 = icmp eq ptr %28, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %102)
  %103 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", ptr %28, i32 0, i32 4
  %104 = ptrtoint ptr %103 to i64
  %105 = and i64 %104, 72057594037927935
  %106 = xor i64 %105, 25399393228665167
  %107 = shl i64 %106, 17
  %108 = select i1 false, i64 0, i64 %107
  %109 = lshr i64 %106, 39
  %110 = select i1 false, i64 0, i64 %109
  %111 = or i64 %108, %110
  %112 = and i64 %111, 72057594037927935
  %113 = or i64 %112, -6557241057451442176
  store i64 %113, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %113)
  call void @runtime.ClobberPointerRegs()
  %114 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %114)
  %115 = load i64, ptr %0, align 4
  %116 = alloca i64, align 8
  store i64 0, ptr %116, align 4
  call void @runtime.StoreHiddenPointee(i64 %115, ptr %116, i64 8)
  store i64 0, ptr %116, align 4
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %117 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %117)
  %118 = load i64, ptr %4, align 4
  %119 = alloca i64, align 8
  store i64 0, ptr %119, align 4
  call void @runtime.StoreHiddenPointee(i64 %118, ptr %119, i64 8)
  store i64 0, ptr %119, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %120 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 0, ptr %120, align 4
  %121 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %120, 1
  %122 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %122)
  %123 = load i64, ptr %6, align 4
  %124 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %121, ptr %124, align 8
  call void @runtime.StoreHiddenPointee(i64 %123, ptr %124, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %124, align 8
  call void @runtime.TouchConservativeSlot(ptr %124, i64 16)
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %125 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %125)
  %126 = load i64, ptr %8, align 4
  %127 = alloca ptr, align 8
  store ptr null, ptr %127, align 8
  call void @runtime.StoreHiddenPointee(i64 %126, ptr %127, i64 8)
  store ptr null, ptr %127, align 8
  call void @runtime.TouchConservativeSlot(ptr %127, i64 8)
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %128 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %128)
  %129 = load i64, ptr %10, align 4
  %130 = alloca i64, align 8
  store i64 0, ptr %130, align 4
  call void @runtime.StoreHiddenPointee(i64 %129, ptr %130, i64 8)
  store i64 0, ptr %130, align 4
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %131 = icmp eq ptr %28, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %131)
  %132 = load %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", ptr %28, align 8
  store %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey" zeroinitializer, ptr %28, align 8
  call void @runtime.TouchConservativeSlot(ptr %28, i64 48)
  call void @runtime.ClobberPointerRegs()
  %133 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  store %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey" %132, ptr %133, align 8
  %134 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey]_llgo_string", ptr %27, ptr %133)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 5 }, ptr %134, align 8
  call void @llvm.memset(ptr %133, i8 0, i64 48, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %133, i64 48)
  %135 = alloca %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", align 8
  call void @llvm.memset(ptr %135, i8 0, i64 48, i1 false)
  %136 = icmp eq ptr %135, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %136)
  %137 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", ptr %135, i32 0, i32 0
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
  store i64 %147, ptr %12, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %13, i64 %147)
  call void @runtime.ClobberPointerRegs()
  %148 = icmp eq ptr %135, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %148)
  %149 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", ptr %135, i32 0, i32 1
  %150 = ptrtoint ptr %149 to i64
  %151 = and i64 %150, 72057594037927935
  %152 = xor i64 %151, 25399393228665167
  %153 = shl i64 %152, 17
  %154 = select i1 false, i64 0, i64 %153
  %155 = lshr i64 %152, 39
  %156 = select i1 false, i64 0, i64 %155
  %157 = or i64 %154, %156
  %158 = and i64 %157, 72057594037927935
  %159 = or i64 %158, -6557241057451442176
  store i64 %159, ptr %14, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %15, i64 %159)
  call void @runtime.ClobberPointerRegs()
  %160 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %160)
  %161 = load i64, ptr %14, align 4
  %162 = and i64 %161, 72057594037927935
  %163 = lshr i64 %162, 17
  %164 = select i1 false, i64 0, i64 %163
  %165 = shl i64 %162, 39
  %166 = select i1 false, i64 0, i64 %165
  %167 = or i64 %164, %166
  %168 = and i64 %167, 72057594037927935
  %169 = xor i64 %168, 25399393228665167
  %170 = inttoptr i64 %169 to ptr
  %171 = icmp eq ptr %170, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %171)
  %172 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmap.T2", ptr %170, i32 0, i32 0
  %173 = ptrtoint ptr %172 to i64
  %174 = and i64 %173, 72057594037927935
  %175 = xor i64 %174, 25399393228665167
  %176 = shl i64 %175, 17
  %177 = select i1 false, i64 0, i64 %176
  %178 = lshr i64 %175, 39
  %179 = select i1 false, i64 0, i64 %178
  %180 = or i64 %177, %179
  %181 = and i64 %180, 72057594037927935
  %182 = or i64 %181, -6557241057451442176
  store i64 %182, ptr %16, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %17, i64 %182)
  call void @runtime.ClobberPointerRegs()
  %183 = icmp eq ptr %135, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %183)
  %184 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", ptr %135, i32 0, i32 2
  %185 = icmp eq ptr %184, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %185)
  %186 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmap.T3[any]", ptr %184, i32 0, i32 0
  %187 = ptrtoint ptr %186 to i64
  %188 = and i64 %187, 72057594037927935
  %189 = xor i64 %188, 25399393228665167
  %190 = shl i64 %189, 17
  %191 = select i1 false, i64 0, i64 %190
  %192 = lshr i64 %189, 39
  %193 = select i1 false, i64 0, i64 %192
  %194 = or i64 %191, %193
  %195 = and i64 %194, 72057594037927935
  %196 = or i64 %195, -6557241057451442176
  store i64 %196, ptr %18, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %19, i64 %196)
  call void @runtime.ClobberPointerRegs()
  %197 = icmp eq ptr %135, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %197)
  %198 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", ptr %135, i32 0, i32 3
  %199 = ptrtoint ptr %198 to i64
  %200 = and i64 %199, 72057594037927935
  %201 = xor i64 %200, 25399393228665167
  %202 = shl i64 %201, 17
  %203 = select i1 false, i64 0, i64 %202
  %204 = lshr i64 %201, 39
  %205 = select i1 false, i64 0, i64 %204
  %206 = or i64 %203, %205
  %207 = and i64 %206, 72057594037927935
  %208 = or i64 %207, -6557241057451442176
  store i64 %208, ptr %20, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %21, i64 %208)
  call void @runtime.ClobberPointerRegs()
  %209 = icmp eq ptr %135, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %209)
  %210 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", ptr %135, i32 0, i32 4
  %211 = ptrtoint ptr %210 to i64
  %212 = and i64 %211, 72057594037927935
  %213 = xor i64 %212, 25399393228665167
  %214 = shl i64 %213, 17
  %215 = select i1 false, i64 0, i64 %214
  %216 = lshr i64 %213, 39
  %217 = select i1 false, i64 0, i64 %216
  %218 = or i64 %215, %217
  %219 = and i64 %218, 72057594037927935
  %220 = or i64 %219, -6557241057451442176
  store i64 %220, ptr %22, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %23, i64 %220)
  call void @runtime.ClobberPointerRegs()
  %221 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %221)
  %222 = load i64, ptr %12, align 4
  %223 = alloca i64, align 8
  store i64 0, ptr %223, align 4
  call void @runtime.StoreHiddenPointee(i64 %222, ptr %223, i64 8)
  store i64 0, ptr %223, align 4
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  call void @runtime.ClobberPointerRegs()
  %224 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %224)
  %225 = load i64, ptr %16, align 4
  %226 = alloca i64, align 8
  store i64 0, ptr %226, align 4
  call void @runtime.StoreHiddenPointee(i64 %225, ptr %226, i64 8)
  store i64 0, ptr %226, align 4
  store i64 0, ptr %14, align 4
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store ptr null, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  store i64 0, ptr %16, align 4
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  store ptr null, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  call void @runtime.ClobberPointerRegs()
  %227 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 0, ptr %227, align 4
  %228 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %227, 1
  %229 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %229)
  %230 = load i64, ptr %18, align 4
  %231 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %228, ptr %231, align 8
  call void @runtime.StoreHiddenPointee(i64 %230, ptr %231, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %231, align 8
  call void @runtime.TouchConservativeSlot(ptr %231, i64 16)
  store i64 0, ptr %18, align 4
  call void @runtime.TouchConservativeSlot(ptr %18, i64 8)
  store ptr null, ptr %19, align 8
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  call void @runtime.ClobberPointerRegs()
  %232 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %232)
  %233 = load i64, ptr %20, align 4
  %234 = alloca ptr, align 8
  store ptr null, ptr %234, align 8
  call void @runtime.StoreHiddenPointee(i64 %233, ptr %234, i64 8)
  store ptr null, ptr %234, align 8
  call void @runtime.TouchConservativeSlot(ptr %234, i64 8)
  store i64 0, ptr %20, align 4
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  store ptr null, ptr %21, align 8
  call void @runtime.TouchConservativeSlot(ptr %21, i64 8)
  call void @runtime.ClobberPointerRegs()
  %235 = icmp eq ptr %22, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %235)
  %236 = load i64, ptr %22, align 4
  %237 = alloca i64, align 8
  store i64 0, ptr %237, align 4
  call void @runtime.StoreHiddenPointee(i64 %236, ptr %237, i64 8)
  store i64 0, ptr %237, align 4
  store i64 0, ptr %22, align 4
  call void @runtime.TouchConservativeSlot(ptr %22, i64 8)
  store ptr null, ptr %23, align 8
  call void @runtime.TouchConservativeSlot(ptr %23, i64 8)
  call void @runtime.ClobberPointerRegs()
  %238 = icmp eq ptr %135, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %238)
  %239 = load %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", ptr %135, align 8
  store %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey" zeroinitializer, ptr %135, align 8
  call void @runtime.TouchConservativeSlot(ptr %135, i64 48)
  call void @runtime.ClobberPointerRegs()
  %240 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  store %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey" %239, ptr %240, align 8
  %241 = call { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey]_llgo_string", ptr %27, ptr %240)
  %242 = extractvalue { ptr, i1 } %241, 1
  call void @llvm.memset(ptr %240, i8 0, i64 48, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %240, i64 48)
  %243 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %243, align 8
  br i1 %242, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %244 = extractvalue { ptr, i1 } %241, 0
  %245 = icmp eq ptr %244, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %245)
  %246 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %244, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %246, ptr %243, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %247 = icmp eq ptr %243, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %247)
  %248 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %243, align 8
  %249 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" %248, 0
  %250 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } %249, i1 %242, 1
  store { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } %250, ptr %24, align 8
  %251 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %252 = icmp eq ptr %24, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %252)
  %253 = load { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }, ptr %24, align 8
  %254 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } %253, 0
  %255 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %254, ptr %255, align 8
  %256 = icmp eq ptr %255, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %256)
  %257 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %255, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %257, ptr %26, align 8
  %258 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %257, 0
  %259 = ptrtoint ptr %258 to i64
  %260 = and i64 %259, 72057594037927935
  %261 = xor i64 %260, 25399393228665167
  %262 = shl i64 %261, 17
  %263 = select i1 false, i64 0, i64 %262
  %264 = lshr i64 %261, 39
  %265 = select i1 false, i64 0, i64 %264
  %266 = or i64 %263, %265
  %267 = and i64 %266, 72057594037927935
  %268 = or i64 %267, -6557241057451442176
  %269 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %257, 1
  %270 = insertvalue { i64, i64 } undef, i64 %268, 0
  %271 = insertvalue { i64, i64 } %270, i64 %269, 1
  store { i64, i64 } %271, ptr %25, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %255, align 8
  call void @runtime.TouchConservativeSlot(ptr %255, i64 16)
  call void @runtime.ClobberPointerRegs()
  %272 = icmp eq ptr %26, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %272)
  %273 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %26, align 8
  %274 = icmp eq ptr %24, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %274)
  %275 = load { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }, ptr %24, align 8
  %276 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } %275, 1
  store { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } zeroinitializer, ptr %24, align 8
  call void @runtime.TouchConservativeSlot(ptr %24, i64 24)
  store { i64, i64 } zeroinitializer, ptr %25, align 4
  call void @runtime.TouchConservativeSlot(ptr %25, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %26, align 8
  call void @runtime.TouchConservativeSlot(ptr %26, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %273)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %276)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %251)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.typehash"(ptr, ptr, i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal64")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %1, ptr %2)
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr, ptr, ptr)

declare { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
