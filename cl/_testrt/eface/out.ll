; ModuleID = 'github.com/goplus/llgo/cl/_testrt/eface'
source_filename = "github.com/goplus/llgo/cl/_testrt/eface"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.ArrayType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.SliceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testrt/eface.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/eface.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [6 x i8] c"invoke", align 1
@1 = private unnamed_addr constant [7 x i8] c"\09elem: ", align 1
@2 = private unnamed_addr constant [9 x i8] c"\09uncomm: ", align 1
@_llgo_bool = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 554183389, i8 12, i8 1, i8 1, i8 1, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr @"*_llgo_bool" }, align 8
@3 = private unnamed_addr constant [4 x i8] c"bool", align 1
@"*_llgo_bool" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1896950390, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr null }, ptr @_llgo_bool }, align 8
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 2, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, ptr @"*_llgo_int" }, align 8
@4 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@_llgo_int8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 1444672578, i8 12, i8 1, i8 1, i8 3, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr @"*_llgo_int8" }, align 8
@5 = private unnamed_addr constant [4 x i8] c"int8", align 1
@"*_llgo_int8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1399554408, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr null }, ptr @_llgo_int8 }, align 8
@_llgo_int16 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 2, i64 0, i32 1041867489, i8 12, i8 2, i8 2, i8 4, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal16", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr @"*_llgo_int16" }, align 8
@6 = private unnamed_addr constant [5 x i8] c"int16", align 1
@"*_llgo_int16" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 575772759, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr null }, ptr @_llgo_int16 }, align 8
@_llgo_int32 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 4, i64 0, i32 1448558410, i8 12, i8 4, i8 4, i8 5, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal32", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @"*_llgo_int32" }, align 8
@7 = private unnamed_addr constant [5 x i8] c"int32", align 1
@"*_llgo_int32" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -38689692, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr null }, ptr @_llgo_int32 }, align 8
@_llgo_int64 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 394795202, i8 12, i8 8, i8 8, i8 6, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr @"*_llgo_int64" }, align 8
@8 = private unnamed_addr constant [5 x i8] c"int64", align 1
@"*_llgo_int64" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1901231210, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr null }, ptr @_llgo_int64 }, align 8
@_llgo_uint = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 172771804, i8 12, i8 8, i8 8, i8 7, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr @"*_llgo_uint" }, align 8
@9 = private unnamed_addr constant [4 x i8] c"uint", align 1
@"*_llgo_uint" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1001256076, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr null }, ptr @_llgo_uint }, align 8
@_llgo_uint8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 269156761, i8 12, i8 1, i8 1, i8 8, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr @"*_llgo_uint8" }, align 8
@10 = private unnamed_addr constant [5 x i8] c"uint8", align 1
@"*_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1277858201, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr null }, ptr @_llgo_uint8 }, align 8
@_llgo_uint16 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 2, i64 0, i32 -75471123, i8 12, i8 2, i8 2, i8 9, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal16", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr @"*_llgo_uint16" }, align 8
@11 = private unnamed_addr constant [6 x i8] c"uint16", align 1
@"*_llgo_uint16" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 530818523, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr null }, ptr @_llgo_uint16 }, align 8
@_llgo_uint32 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 4, i64 0, i32 -625909322, i8 12, i8 4, i8 4, i8 10, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal32", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 6 }, ptr @"*_llgo_uint32" }, align 8
@12 = private unnamed_addr constant [6 x i8] c"uint32", align 1
@"*_llgo_uint32" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1605480511, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 6 }, ptr null }, ptr @_llgo_uint32 }, align 8
@_llgo_uint64 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1994022077, i8 12, i8 8, i8 8, i8 11, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 6 }, ptr @"*_llgo_uint64" }, align 8
@13 = private unnamed_addr constant [6 x i8] c"uint64", align 1
@"*_llgo_uint64" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 89591114, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 6 }, ptr null }, ptr @_llgo_uint64 }, align 8
@_llgo_uintptr = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 1268343028, i8 12, i8 8, i8 8, i8 12, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 7 }, ptr @"*_llgo_uintptr" }, align 8
@14 = private unnamed_addr constant [7 x i8] c"uintptr", align 1
@"*_llgo_uintptr" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1684891952, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 7 }, ptr null }, ptr @_llgo_uintptr }, align 8
@_llgo_float32 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 4, i64 0, i32 62173712, i8 4, i8 4, i8 4, i8 13, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.f32equal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 7 }, ptr @"*_llgo_float32" }, align 8
@15 = private unnamed_addr constant [7 x i8] c"float32", align 1
@"*_llgo_float32" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1426958587, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 7 }, ptr null }, ptr @_llgo_float32 }, align 8
@_llgo_float64 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1233032631, i8 4, i8 8, i8 8, i8 14, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.f64equal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 7 }, ptr @"*_llgo_float64" }, align 8
@16 = private unnamed_addr constant [7 x i8] c"float64", align 1
@"*_llgo_float64" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1664509894, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 7 }, ptr null }, ptr @_llgo_float64 }, align 8
@"[10]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 80, i64 0, i32 -2039641417, i8 8, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[10]_llgo_int" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 7 }, ptr @"*[10]_llgo_int" }, ptr @_llgo_int, ptr @"[]_llgo_int", i64 10 }, align 8
@17 = private unnamed_addr constant [7 x i8] c"[10]int", align 1
@"*[10]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1101794542, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 7 }, ptr null }, ptr @"[10]_llgo_int" }, align 8
@"[]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -1129561019, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, ptr @"*[]_llgo_int" }, ptr @_llgo_int }, align 8
@18 = private unnamed_addr constant [5 x i8] c"[]int", align 1
@"*[]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1428175521, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, ptr null }, ptr @"[]_llgo_int" }, align 8
@"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1187156019, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 6 }, ptr @"*_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8$fields", i64 2, i64 2 } }, align 8
@19 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -30397043, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 6 }, ptr null }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8" }, align 8
@20 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@21 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@22 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 2 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@23 = private unnamed_addr constant [5 x i8] c"hello", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 6 }, ptr @"*_llgo_string" }, align 8
@24 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"github.com/goplus/llgo/cl/_testrt/eface.struct$RKbUG45GE4henGMAdmt0Rju0JptyR8NsX7IZLsOI0OM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 0, i32 303973775, i8 0, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"github.com/goplus/llgo/cl/_testrt/eface.struct$RKbUG45GE4henGMAdmt0Rju0JptyR8NsX7IZLsOI0OM" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 31 }, ptr @"*github.com/goplus/llgo/cl/_testrt/eface.struct$RKbUG45GE4henGMAdmt0Rju0JptyR8NsX7IZLsOI0OM" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 39 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/eface.struct$RKbUG45GE4henGMAdmt0Rju0JptyR8NsX7IZLsOI0OM$fields", i64 3, i64 3 } }, align 8
@25 = private unnamed_addr constant [31 x i8] c"struct { x int8; y int; z int }", align 1
@"*github.com/goplus/llgo/cl/_testrt/eface.struct$RKbUG45GE4henGMAdmt0Rju0JptyR8NsX7IZLsOI0OM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -569303989, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 31 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testrt/eface.struct$RKbUG45GE4henGMAdmt0Rju0JptyR8NsX7IZLsOI0OM" }, align 8
@26 = private unnamed_addr constant [39 x i8] c"github.com/goplus/llgo/cl/_testrt/eface", align 1
@27 = private unnamed_addr constant [1 x i8] c"x", align 1
@28 = private unnamed_addr constant [1 x i8] c"y", align 1
@29 = private unnamed_addr constant [1 x i8] c"z", align 1
@"github.com/goplus/llgo/cl/_testrt/eface.struct$RKbUG45GE4henGMAdmt0Rju0JptyR8NsX7IZLsOI0OM$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 1 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 1 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 1 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_github.com/goplus/llgo/cl/_testrt/eface.T" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1139780799, i8 5, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/eface.T" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 39 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@30 = private unnamed_addr constant [6 x i8] c"main.T", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/eface.T" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1884578979, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/eface.T" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 39 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 6 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testrt/eface.(*T).Invoke", ptr @"github.com/goplus/llgo/cl/_testrt/eface.(*T).Invoke" }] }, align 8
@31 = private unnamed_addr constant [6 x i8] c"Invoke", align 1

define void @"github.com/goplus/llgo/cl/_testrt/eface.(*T).Invoke"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %0) {
_llgo_0:
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
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  call void @llvm.memset(ptr %8, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, ptr %8, align 8
  call void @runtime.ClobberPointerRegs()
  store ptr %8, ptr %1, align 8
  %9 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = load ptr, ptr %1, align 8
  %11 = ptrtoint ptr %10 to i64
  %12 = and i64 %11, 72057594037927935
  %13 = xor i64 %12, 25399393228665167
  %14 = shl i64 %13, 17
  %15 = select i1 false, i64 0, i64 %14
  %16 = lshr i64 %13, 39
  %17 = select i1 false, i64 0, i64 %16
  %18 = or i64 %15, %17
  %19 = and i64 %18, 72057594037927935
  %20 = or i64 %19, -6557241057451442176
  store i64 %20, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %20)
  call void @runtime.ClobberPointerRegs()
  %21 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load i64, ptr %2, align 4
  %23 = and i64 %22, 72057594037927935
  %24 = lshr i64 %23, 17
  %25 = select i1 false, i64 0, i64 %24
  %26 = shl i64 %23, 39
  %27 = select i1 false, i64 0, i64 %26
  %28 = or i64 %25, %27
  %29 = and i64 %28, 72057594037927935
  %30 = xor i64 %29, 25399393228665167
  %31 = inttoptr i64 %30 to ptr
  %32 = icmp eq ptr %31, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %32)
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/eface.eface", ptr %31, i32 0, i32 0
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
  store i64 %43, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %43)
  call void @runtime.ClobberPointerRegs()
  %44 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %44)
  %45 = load i64, ptr %4, align 4
  %46 = call i64 @runtime.LoadHiddenPointerKey(i64 %45)
  store i64 %46, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %46)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  call void @runtime.ClobberPointerRegs()
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %48 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %48)
  %49 = load i64, ptr %6, align 4
  %50 = and i64 %49, 72057594037927935
  %51 = lshr i64 %50, 17
  %52 = select i1 false, i64 0, i64 %51
  %53 = shl i64 %50, 39
  %54 = select i1 false, i64 0, i64 %53
  %55 = or i64 %52, %54
  %56 = and i64 %55, 72057594037927935
  %57 = xor i64 %56, 25399393228665167
  %58 = inttoptr i64 %57 to ptr
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dumpTyp"(ptr %58, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %47)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/eface.dumpTyp"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  %2 = alloca { i64, i64 }, align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %3, align 8
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
  %24 = alloca { i64, i64 }, align 8
  %25 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %25, align 8
  %26 = alloca i64, align 8
  %27 = alloca ptr, align 8
  store ptr null, ptr %27, align 8
  %28 = alloca i64, align 8
  %29 = alloca ptr, align 8
  store ptr null, ptr %29, align 8
  %30 = alloca { i64, i64 }, align 8
  %31 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %31, align 8
  %32 = alloca i64, align 8
  %33 = alloca ptr, align 8
  store ptr null, ptr %33, align 8
  %34 = alloca i64, align 8
  %35 = alloca ptr, align 8
  store ptr null, ptr %35, align 8
  %36 = alloca i64, align 8
  %37 = alloca ptr, align 8
  store ptr null, ptr %37, align 8
  %38 = alloca i64, align 8
  %39 = alloca ptr, align 8
  store ptr null, ptr %39, align 8
  %40 = alloca i64, align 8
  %41 = alloca ptr, align 8
  store ptr null, ptr %41, align 8
  %42 = alloca { i64, i64 }, align 8
  %43 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %43, align 8
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %44)
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %46 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*Type).String"(ptr %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %45)
  %47 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %46, ptr %47, align 8
  %48 = icmp eq ptr %47, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %48)
  %49 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %47, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %49, ptr %3, align 8
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
  store { i64, i64 } %63, ptr %2, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %47, align 8
  call void @runtime.TouchConservativeSlot(ptr %47, i64 16)
  call void @runtime.ClobberPointerRegs()
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %65 = call i64 @"github.com/goplus/llgo/runtime/abi.(*Type).Kind"(ptr %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %64)
  %66 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %66)
  %67 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 0
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
  store i64 %77, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %77)
  call void @runtime.ClobberPointerRegs()
  %78 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %78)
  %79 = load i64, ptr %4, align 4
  %80 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %80, i64 %79, i64 8)
  %81 = icmp eq ptr %80, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %81)
  %82 = load i64, ptr %80, align 4
  store i64 0, ptr %80, align 4
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %83 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %83)
  %84 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 1
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
  call void @runtime.LoadHiddenPointee(ptr %97, i64 %96, i64 8)
  %98 = icmp eq ptr %97, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %98)
  %99 = load i64, ptr %97, align 4
  store i64 0, ptr %97, align 4
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %100 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %100)
  %101 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 2
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
  store i64 %111, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %111)
  call void @runtime.ClobberPointerRegs()
  %112 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %112)
  %113 = load i64, ptr %8, align 4
  %114 = alloca i32, align 4
  call void @runtime.LoadHiddenPointee(ptr %114, i64 %113, i64 4)
  %115 = icmp eq ptr %114, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %115)
  %116 = load i32, ptr %114, align 4
  store i32 0, ptr %114, align 4
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %117 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %117)
  %118 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 3
  %119 = ptrtoint ptr %118 to i64
  %120 = and i64 %119, 72057594037927935
  %121 = xor i64 %120, 25399393228665167
  %122 = shl i64 %121, 17
  %123 = select i1 false, i64 0, i64 %122
  %124 = lshr i64 %121, 39
  %125 = select i1 false, i64 0, i64 %124
  %126 = or i64 %123, %125
  %127 = and i64 %126, 72057594037927935
  %128 = or i64 %127, -6557241057451442176
  store i64 %128, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %128)
  call void @runtime.ClobberPointerRegs()
  %129 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %129)
  %130 = load i64, ptr %10, align 4
  %131 = call i8 @runtime.LoadHiddenUint8(i64 %130)
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %132 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %132)
  %133 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 4
  %134 = ptrtoint ptr %133 to i64
  %135 = and i64 %134, 72057594037927935
  %136 = xor i64 %135, 25399393228665167
  %137 = shl i64 %136, 17
  %138 = select i1 false, i64 0, i64 %137
  %139 = lshr i64 %136, 39
  %140 = select i1 false, i64 0, i64 %139
  %141 = or i64 %138, %140
  %142 = and i64 %141, 72057594037927935
  %143 = or i64 %142, -6557241057451442176
  store i64 %143, ptr %12, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %13, i64 %143)
  call void @runtime.ClobberPointerRegs()
  %144 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %144)
  %145 = load i64, ptr %12, align 4
  %146 = call i8 @runtime.LoadHiddenUint8(i64 %145)
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  call void @runtime.ClobberPointerRegs()
  %147 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %147)
  %148 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 10
  %149 = ptrtoint ptr %148 to i64
  %150 = and i64 %149, 72057594037927935
  %151 = xor i64 %150, 25399393228665167
  %152 = shl i64 %151, 17
  %153 = select i1 false, i64 0, i64 %152
  %154 = lshr i64 %151, 39
  %155 = select i1 false, i64 0, i64 %154
  %156 = or i64 %153, %155
  %157 = and i64 %156, 72057594037927935
  %158 = or i64 %157, -6557241057451442176
  store i64 %158, ptr %14, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %15, i64 %158)
  call void @runtime.ClobberPointerRegs()
  %159 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %159)
  %160 = load i64, ptr %14, align 4
  %161 = call i64 @runtime.LoadHiddenPointerKey(i64 %160)
  store i64 %161, ptr %16, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %17, i64 %161)
  store i64 0, ptr %14, align 4
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store ptr null, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  call void @runtime.ClobberPointerRegs()
  %162 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %163 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon"(ptr %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %162)
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
  store i64 %173, ptr %18, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %19, i64 %173)
  call void @runtime.ClobberPointerRegs()
  %174 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %175 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %175)
  %176 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %3, align 8
  %177 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %177)
  %178 = load i64, ptr %16, align 4
  %179 = and i64 %178, 72057594037927935
  %180 = lshr i64 %179, 17
  %181 = select i1 false, i64 0, i64 %180
  %182 = shl i64 %179, 39
  %183 = select i1 false, i64 0, i64 %182
  %184 = or i64 %181, %183
  %185 = and i64 %184, 72057594037927935
  %186 = xor i64 %185, 25399393228665167
  %187 = inttoptr i64 %186 to ptr
  %188 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %188)
  %189 = load i64, ptr %18, align 4
  %190 = and i64 %189, 72057594037927935
  %191 = lshr i64 %190, 17
  %192 = select i1 false, i64 0, i64 %191
  %193 = shl i64 %190, 39
  %194 = select i1 false, i64 0, i64 %193
  %195 = or i64 %192, %194
  %196 = and i64 %195, 72057594037927935
  %197 = xor i64 %196, 25399393228665167
  %198 = inttoptr i64 %197 to ptr
  store { i64, i64 } zeroinitializer, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  store i64 0, ptr %16, align 4
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  store ptr null, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  store i64 0, ptr %18, align 4
  call void @runtime.TouchConservativeSlot(ptr %18, i64 8)
  store ptr null, ptr %19, align 8
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %176)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %65)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %82)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %99)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %199 = zext i32 %116 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %199)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %200 = zext i8 %131 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %201 = zext i8 %146 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %201)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %187)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %198)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %174)
  %202 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %203 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem"(ptr %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %202)
  %204 = ptrtoint ptr %203 to i64
  %205 = and i64 %204, 72057594037927935
  %206 = xor i64 %205, 25399393228665167
  %207 = shl i64 %206, 17
  %208 = select i1 false, i64 0, i64 %207
  %209 = lshr i64 %206, 39
  %210 = select i1 false, i64 0, i64 %209
  %211 = or i64 %208, %210
  %212 = and i64 %211, 72057594037927935
  %213 = or i64 %212, -6557241057451442176
  store i64 %213, ptr %20, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %21, i64 %213)
  call void @runtime.ClobberPointerRegs()
  %214 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %214)
  %215 = load i64, ptr %20, align 4
  %216 = and i64 %215, 72057594037927935
  %217 = lshr i64 %216, 17
  %218 = select i1 false, i64 0, i64 %217
  %219 = shl i64 %216, 39
  %220 = select i1 false, i64 0, i64 %219
  %221 = or i64 %218, %220
  %222 = and i64 %221, 72057594037927935
  %223 = xor i64 %222, 25399393228665167
  %224 = inttoptr i64 %223 to ptr
  %225 = icmp ne ptr %224, null
  store i64 0, ptr %20, align 4
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  store ptr null, ptr %21, align 8
  call void @runtime.TouchConservativeSlot(ptr %21, i64 8)
  call void @runtime.ClobberPointerRegs()
  br i1 %225, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %226 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %227 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem"(ptr %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %226)
  %228 = ptrtoint ptr %227 to i64
  %229 = and i64 %228, 72057594037927935
  %230 = xor i64 %229, 25399393228665167
  %231 = shl i64 %230, 17
  %232 = select i1 false, i64 0, i64 %231
  %233 = lshr i64 %230, 39
  %234 = select i1 false, i64 0, i64 %233
  %235 = or i64 %232, %234
  %236 = and i64 %235, 72057594037927935
  %237 = or i64 %236, -6557241057451442176
  store i64 %237, ptr %22, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %23, i64 %237)
  call void @runtime.ClobberPointerRegs()
  %238 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 7 })
  %239 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %238, ptr %239, align 8
  %240 = icmp eq ptr %239, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %240)
  %241 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %239, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %241, ptr %25, align 8
  %242 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %241, 0
  %243 = ptrtoint ptr %242 to i64
  %244 = and i64 %243, 72057594037927935
  %245 = xor i64 %244, 25399393228665167
  %246 = shl i64 %245, 17
  %247 = select i1 false, i64 0, i64 %246
  %248 = lshr i64 %245, 39
  %249 = select i1 false, i64 0, i64 %248
  %250 = or i64 %247, %249
  %251 = and i64 %250, 72057594037927935
  %252 = or i64 %251, -6557241057451442176
  %253 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %241, 1
  %254 = insertvalue { i64, i64 } undef, i64 %252, 0
  %255 = insertvalue { i64, i64 } %254, i64 %253, 1
  store { i64, i64 } %255, ptr %24, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %239, align 8
  call void @runtime.TouchConservativeSlot(ptr %239, i64 16)
  call void @runtime.ClobberPointerRegs()
  %256 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %257 = icmp eq ptr %22, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %257)
  %258 = load i64, ptr %22, align 4
  %259 = and i64 %258, 72057594037927935
  %260 = lshr i64 %259, 17
  %261 = select i1 false, i64 0, i64 %260
  %262 = shl i64 %259, 39
  %263 = select i1 false, i64 0, i64 %262
  %264 = or i64 %261, %263
  %265 = and i64 %264, 72057594037927935
  %266 = xor i64 %265, 25399393228665167
  %267 = inttoptr i64 %266 to ptr
  %268 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %268)
  %269 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %25, align 8
  store i64 0, ptr %22, align 4
  call void @runtime.TouchConservativeSlot(ptr %22, i64 8)
  store ptr null, ptr %23, align 8
  call void @runtime.TouchConservativeSlot(ptr %23, i64 8)
  store { i64, i64 } zeroinitializer, ptr %24, align 4
  call void @runtime.TouchConservativeSlot(ptr %24, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %25, align 8
  call void @runtime.TouchConservativeSlot(ptr %25, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dumpTyp"(ptr %267, %"github.com/goplus/llgo/runtime/internal/runtime.String" %269)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %256)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %270 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %271 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon"(ptr %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %270)
  %272 = ptrtoint ptr %271 to i64
  %273 = and i64 %272, 72057594037927935
  %274 = xor i64 %273, 25399393228665167
  %275 = shl i64 %274, 17
  %276 = select i1 false, i64 0, i64 %275
  %277 = lshr i64 %274, 39
  %278 = select i1 false, i64 0, i64 %277
  %279 = or i64 %276, %278
  %280 = and i64 %279, 72057594037927935
  %281 = or i64 %280, -6557241057451442176
  store i64 %281, ptr %26, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %27, i64 %281)
  call void @runtime.ClobberPointerRegs()
  %282 = icmp eq ptr %26, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %282)
  %283 = load i64, ptr %26, align 4
  %284 = and i64 %283, 72057594037927935
  %285 = lshr i64 %284, 17
  %286 = select i1 false, i64 0, i64 %285
  %287 = shl i64 %284, 39
  %288 = select i1 false, i64 0, i64 %287
  %289 = or i64 %286, %288
  %290 = and i64 %289, 72057594037927935
  %291 = xor i64 %290, 25399393228665167
  %292 = inttoptr i64 %291 to ptr
  %293 = icmp ne ptr %292, null
  store i64 0, ptr %26, align 4
  call void @runtime.TouchConservativeSlot(ptr %26, i64 8)
  store ptr null, ptr %27, align 8
  call void @runtime.TouchConservativeSlot(ptr %27, i64 8)
  call void @runtime.ClobberPointerRegs()
  br i1 %293, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %294 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %295 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon"(ptr %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %294)
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
  store i64 %305, ptr %28, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %29, i64 %305)
  call void @runtime.ClobberPointerRegs()
  %306 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 9 })
  %307 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %306, ptr %307, align 8
  %308 = icmp eq ptr %307, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %308)
  %309 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %307, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %309, ptr %31, align 8
  %310 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %309, 0
  %311 = ptrtoint ptr %310 to i64
  %312 = and i64 %311, 72057594037927935
  %313 = xor i64 %312, 25399393228665167
  %314 = shl i64 %313, 17
  %315 = select i1 false, i64 0, i64 %314
  %316 = lshr i64 %313, 39
  %317 = select i1 false, i64 0, i64 %316
  %318 = or i64 %315, %317
  %319 = and i64 %318, 72057594037927935
  %320 = or i64 %319, -6557241057451442176
  %321 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %309, 1
  %322 = insertvalue { i64, i64 } undef, i64 %320, 0
  %323 = insertvalue { i64, i64 } %322, i64 %321, 1
  store { i64, i64 } %323, ptr %30, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %307, align 8
  call void @runtime.TouchConservativeSlot(ptr %307, i64 16)
  call void @runtime.ClobberPointerRegs()
  %324 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %325 = icmp eq ptr %28, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %325)
  %326 = load i64, ptr %28, align 4
  %327 = and i64 %326, 72057594037927935
  %328 = lshr i64 %327, 17
  %329 = select i1 false, i64 0, i64 %328
  %330 = shl i64 %327, 39
  %331 = select i1 false, i64 0, i64 %330
  %332 = or i64 %329, %331
  %333 = and i64 %332, 72057594037927935
  %334 = xor i64 %333, 25399393228665167
  %335 = inttoptr i64 %334 to ptr
  %336 = icmp eq ptr %31, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %336)
  %337 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %31, align 8
  store i64 0, ptr %28, align 4
  call void @runtime.TouchConservativeSlot(ptr %28, i64 8)
  store ptr null, ptr %29, align 8
  call void @runtime.TouchConservativeSlot(ptr %29, i64 8)
  store { i64, i64 } zeroinitializer, ptr %30, align 4
  call void @runtime.TouchConservativeSlot(ptr %30, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %31, align 8
  call void @runtime.TouchConservativeSlot(ptr %31, i64 16)
  call void @runtime.ClobberPointerRegs()
  %338 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %337, 0
  %339 = ptrtoint ptr %338 to i64
  %340 = and i64 %339, 72057594037927935
  %341 = xor i64 %340, 25399393228665167
  %342 = shl i64 %341, 17
  %343 = select i1 false, i64 0, i64 %342
  %344 = lshr i64 %341, 39
  %345 = select i1 false, i64 0, i64 %344
  %346 = or i64 %343, %345
  %347 = and i64 %346, 72057594037927935
  %348 = or i64 %347, -6557241057451442176
  %349 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %337, 1
  %350 = insertvalue { i64, i64 } undef, i64 %348, 0
  %351 = insertvalue { i64, i64 } %350, i64 %349, 1
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dumpUncommon$hiddenparam"(ptr %335, { i64, i64 } %351)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %324)
  call void @runtime.ClobberPointerRegs()
  %352 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %352)
  %353 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 10
  %354 = ptrtoint ptr %353 to i64
  %355 = and i64 %354, 72057594037927935
  %356 = xor i64 %355, 25399393228665167
  %357 = shl i64 %356, 17
  %358 = select i1 false, i64 0, i64 %357
  %359 = lshr i64 %356, 39
  %360 = select i1 false, i64 0, i64 %359
  %361 = or i64 %358, %360
  %362 = and i64 %361, 72057594037927935
  %363 = or i64 %362, -6557241057451442176
  store i64 %363, ptr %32, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %33, i64 %363)
  call void @runtime.ClobberPointerRegs()
  %364 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %364)
  %365 = load i64, ptr %32, align 4
  %366 = call i64 @runtime.LoadHiddenPointerKey(i64 %365)
  store i64 %366, ptr %34, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %35, i64 %366)
  store i64 0, ptr %32, align 4
  call void @runtime.TouchConservativeSlot(ptr %32, i64 8)
  store ptr null, ptr %33, align 8
  call void @runtime.TouchConservativeSlot(ptr %33, i64 8)
  call void @runtime.ClobberPointerRegs()
  %367 = icmp eq ptr %34, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %367)
  %368 = load i64, ptr %34, align 4
  %369 = and i64 %368, 72057594037927935
  %370 = lshr i64 %369, 17
  %371 = select i1 false, i64 0, i64 %370
  %372 = shl i64 %369, 39
  %373 = select i1 false, i64 0, i64 %372
  %374 = or i64 %371, %373
  %375 = and i64 %374, 72057594037927935
  %376 = xor i64 %375, 25399393228665167
  %377 = inttoptr i64 %376 to ptr
  %378 = icmp ne ptr %377, null
  store i64 0, ptr %34, align 4
  call void @runtime.TouchConservativeSlot(ptr %34, i64 8)
  store ptr null, ptr %35, align 8
  call void @runtime.TouchConservativeSlot(ptr %35, i64 8)
  call void @runtime.ClobberPointerRegs()
  br i1 %378, label %_llgo_5, label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_3, %_llgo_2
  ret void

_llgo_5:                                          ; preds = %_llgo_3
  %379 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %379)
  %380 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 10
  %381 = ptrtoint ptr %380 to i64
  %382 = and i64 %381, 72057594037927935
  %383 = xor i64 %382, 25399393228665167
  %384 = shl i64 %383, 17
  %385 = select i1 false, i64 0, i64 %384
  %386 = lshr i64 %383, 39
  %387 = select i1 false, i64 0, i64 %386
  %388 = or i64 %385, %387
  %389 = and i64 %388, 72057594037927935
  %390 = or i64 %389, -6557241057451442176
  store i64 %390, ptr %36, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %37, i64 %390)
  call void @runtime.ClobberPointerRegs()
  %391 = icmp eq ptr %36, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %391)
  %392 = load i64, ptr %36, align 4
  %393 = call i64 @runtime.LoadHiddenPointerKey(i64 %392)
  store i64 %393, ptr %38, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %39, i64 %393)
  store i64 0, ptr %36, align 4
  call void @runtime.TouchConservativeSlot(ptr %36, i64 8)
  store ptr null, ptr %37, align 8
  call void @runtime.TouchConservativeSlot(ptr %37, i64 8)
  call void @runtime.ClobberPointerRegs()
  %394 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %395 = icmp eq ptr %38, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %395)
  %396 = load i64, ptr %38, align 4
  %397 = and i64 %396, 72057594037927935
  %398 = lshr i64 %397, 17
  %399 = select i1 false, i64 0, i64 %398
  %400 = shl i64 %397, 39
  %401 = select i1 false, i64 0, i64 %400
  %402 = or i64 %399, %401
  %403 = and i64 %402, 72057594037927935
  %404 = xor i64 %403, 25399393228665167
  %405 = inttoptr i64 %404 to ptr
  store i64 0, ptr %38, align 4
  call void @runtime.TouchConservativeSlot(ptr %38, i64 8)
  store ptr null, ptr %39, align 8
  call void @runtime.TouchConservativeSlot(ptr %39, i64 8)
  call void @runtime.ClobberPointerRegs()
  %406 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon"(ptr %405)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %394)
  %407 = ptrtoint ptr %406 to i64
  %408 = and i64 %407, 72057594037927935
  %409 = xor i64 %408, 25399393228665167
  %410 = shl i64 %409, 17
  %411 = select i1 false, i64 0, i64 %410
  %412 = lshr i64 %409, 39
  %413 = select i1 false, i64 0, i64 %412
  %414 = or i64 %411, %413
  %415 = and i64 %414, 72057594037927935
  %416 = or i64 %415, -6557241057451442176
  store i64 %416, ptr %40, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %41, i64 %416)
  call void @runtime.ClobberPointerRegs()
  %417 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 9 })
  %418 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %417, ptr %418, align 8
  %419 = icmp eq ptr %418, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %419)
  %420 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %418, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %420, ptr %43, align 8
  %421 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %420, 0
  %422 = ptrtoint ptr %421 to i64
  %423 = and i64 %422, 72057594037927935
  %424 = xor i64 %423, 25399393228665167
  %425 = shl i64 %424, 17
  %426 = select i1 false, i64 0, i64 %425
  %427 = lshr i64 %424, 39
  %428 = select i1 false, i64 0, i64 %427
  %429 = or i64 %426, %428
  %430 = and i64 %429, 72057594037927935
  %431 = or i64 %430, -6557241057451442176
  %432 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %420, 1
  %433 = insertvalue { i64, i64 } undef, i64 %431, 0
  %434 = insertvalue { i64, i64 } %433, i64 %432, 1
  store { i64, i64 } %434, ptr %42, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %418, align 8
  call void @runtime.TouchConservativeSlot(ptr %418, i64 16)
  call void @runtime.ClobberPointerRegs()
  %435 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %436 = icmp eq ptr %40, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %436)
  %437 = load i64, ptr %40, align 4
  %438 = and i64 %437, 72057594037927935
  %439 = lshr i64 %438, 17
  %440 = select i1 false, i64 0, i64 %439
  %441 = shl i64 %438, 39
  %442 = select i1 false, i64 0, i64 %441
  %443 = or i64 %440, %442
  %444 = and i64 %443, 72057594037927935
  %445 = xor i64 %444, 25399393228665167
  %446 = inttoptr i64 %445 to ptr
  %447 = icmp eq ptr %43, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %447)
  %448 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %43, align 8
  store i64 0, ptr %40, align 4
  call void @runtime.TouchConservativeSlot(ptr %40, i64 8)
  store ptr null, ptr %41, align 8
  call void @runtime.TouchConservativeSlot(ptr %41, i64 8)
  store { i64, i64 } zeroinitializer, ptr %42, align 4
  call void @runtime.TouchConservativeSlot(ptr %42, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %43, align 8
  call void @runtime.TouchConservativeSlot(ptr %43, i64 16)
  call void @runtime.ClobberPointerRegs()
  %449 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %448, 0
  %450 = ptrtoint ptr %449 to i64
  %451 = and i64 %450, 72057594037927935
  %452 = xor i64 %451, 25399393228665167
  %453 = shl i64 %452, 17
  %454 = select i1 false, i64 0, i64 %453
  %455 = lshr i64 %452, 39
  %456 = select i1 false, i64 0, i64 %455
  %457 = or i64 %454, %456
  %458 = and i64 %457, 72057594037927935
  %459 = or i64 %458, -6557241057451442176
  %460 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %448, 1
  %461 = insertvalue { i64, i64 } undef, i64 %459, 0
  %462 = insertvalue { i64, i64 } %461, i64 %460, 1
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dumpUncommon$hiddenparam"(ptr %446, { i64, i64 } %462)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %435)
  call void @runtime.ClobberPointerRegs()
  br label %_llgo_4
}

define void @"github.com/goplus/llgo/cl/_testrt/eface.dumpUncommon"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  %2 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %1, 0
  %3 = ptrtoint ptr %2 to i64
  %4 = and i64 %3, 72057594037927935
  %5 = xor i64 %4, 25399393228665167
  %6 = shl i64 %5, 17
  %7 = select i1 false, i64 0, i64 %6
  %8 = lshr i64 %5, 39
  %9 = select i1 false, i64 0, i64 %8
  %10 = or i64 %7, %9
  %11 = and i64 %10, 72057594037927935
  %12 = or i64 %11, -6557241057451442176
  %13 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %1, 1
  %14 = insertvalue { i64, i64 } undef, i64 %12, 0
  %15 = insertvalue { i64, i64 } %14, i64 %13, 1
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dumpUncommon$hiddenparam"(ptr %0, { i64, i64 } %15)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  ret void
}

; Function Attrs: noinline
define void @"github.com/goplus/llgo/cl/_testrt/eface.dumpUncommon$hiddenparam"(ptr %0, { i64, i64 } %1) #0 {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca { i64, i64 }, align 8
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %5, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr null, ptr %7, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  store ptr null, ptr %9, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %10, align 8
  %11 = alloca { i64, i64 }, align 8
  store { i64, i64 } %1, ptr %11, align 4
  call void @runtime.ClobberPointerRegs()
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %13 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = load { i64, i64 }, ptr %11, align 4
  %15 = extractvalue { i64, i64 } %14, 0
  %16 = and i64 %15, 72057594037927935
  %17 = lshr i64 %16, 17
  %18 = select i1 false, i64 0, i64 %17
  %19 = shl i64 %16, 39
  %20 = select i1 false, i64 0, i64 %19
  %21 = or i64 %18, %20
  %22 = and i64 %21, 72057594037927935
  %23 = xor i64 %22, 25399393228665167
  %24 = inttoptr i64 %23 to ptr
  %25 = extractvalue { i64, i64 } %14, 1
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" undef, ptr %24, 0
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %26, i64 %25, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %12)
  store { i64, i64 } zeroinitializer, ptr %11, align 4
  call void @runtime.TouchConservativeSlot(ptr %11, i64 16)
  call void @runtime.ClobberPointerRegs()
  %28 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = load ptr, ptr %10, align 8
  %30 = icmp eq ptr %29, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %30)
  %31 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.UncommonType", ptr %29, i32 0, i32 0
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
  %42 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %42)
  %43 = load i64, ptr %2, align 4
  %44 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @runtime.LoadHiddenPointee(ptr %44, i64 %43, i64 16)
  %45 = icmp eq ptr %44, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %44, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %44, align 8
  %47 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %46, ptr %47, align 8
  %48 = icmp eq ptr %47, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %48)
  %49 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %47, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %49, ptr %5, align 8
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
  store { i64, i64 } %63, ptr %4, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %47, align 8
  call void @runtime.TouchConservativeSlot(ptr %47, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %64 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %64)
  %65 = load ptr, ptr %10, align 8
  %66 = icmp eq ptr %65, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %66)
  %67 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.UncommonType", ptr %65, i32 0, i32 1
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
  %78 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %78)
  %79 = load i64, ptr %6, align 4
  %80 = alloca i16, align 2
  call void @runtime.LoadHiddenPointee(ptr %80, i64 %79, i64 2)
  %81 = icmp eq ptr %80, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %81)
  %82 = load i16, ptr %80, align 2
  store i16 0, ptr %80, align 2
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %83 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %83)
  %84 = load ptr, ptr %10, align 8
  %85 = icmp eq ptr %84, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %85)
  %86 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.UncommonType", ptr %84, i32 0, i32 2
  %87 = ptrtoint ptr %86 to i64
  %88 = and i64 %87, 72057594037927935
  %89 = xor i64 %88, 25399393228665167
  %90 = shl i64 %89, 17
  %91 = select i1 false, i64 0, i64 %90
  %92 = lshr i64 %89, 39
  %93 = select i1 false, i64 0, i64 %92
  %94 = or i64 %91, %93
  %95 = and i64 %94, 72057594037927935
  %96 = or i64 %95, -6557241057451442176
  store i64 %96, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %96)
  call void @runtime.ClobberPointerRegs()
  %97 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %97)
  %98 = load i64, ptr %8, align 4
  %99 = alloca i16, align 2
  call void @runtime.LoadHiddenPointee(ptr %99, i64 %98, i64 2)
  %100 = icmp eq ptr %99, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %100)
  %101 = load i16, ptr %99, align 2
  store i16 0, ptr %99, align 2
  store ptr null, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %102 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %103 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %103)
  %104 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %5, align 8
  store { i64, i64 } zeroinitializer, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %104)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %105 = zext i16 %82 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %105)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %106 = zext i16 %101 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %106)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %102)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/eface.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/eface.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/eface.init$guard", align 1
  call void @"github.com/goplus/llgo/runtime/abi.init"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/eface.main"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca { i64, i64, i64 }, align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %3, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 1)
  store i1 true, ptr %4, align 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_bool, ptr undef }, ptr %4, 1
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %6)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 0, ptr %7, align 4
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %7, 1
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %9)
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 1)
  store i8 0, ptr %10, align 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int8, ptr undef }, ptr %10, 1
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %12)
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 2)
  store i16 0, ptr %13, align 2
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int16, ptr undef }, ptr %13, 1
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %15)
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 4)
  store i32 0, ptr %16, align 4
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int32, ptr undef }, ptr %16, 1
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %18)
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 0, ptr %19, align 4
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int64, ptr undef }, ptr %19, 1
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %21)
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 0, ptr %22, align 4
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_uint, ptr undef }, ptr %22, 1
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %24)
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 1)
  store i8 0, ptr %25, align 1
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_uint8, ptr undef }, ptr %25, 1
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %27)
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 2)
  store i16 0, ptr %28, align 2
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_uint16, ptr undef }, ptr %28, 1
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %30)
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 4)
  store i32 0, ptr %31, align 4
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_uint32, ptr undef }, ptr %31, 1
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %33)
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 0, ptr %34, align 4
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_uint64, ptr undef }, ptr %34, 1
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %35)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %36)
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 0, ptr %37, align 4
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_uintptr, ptr undef }, ptr %37, 1
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %38)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %39)
  %40 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 4)
  store float 0.000000e+00, ptr %40, align 4
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_float32, ptr undef }, ptr %40, 1
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %41)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %42)
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store double 0.000000e+00, ptr %43, align 8
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_float64, ptr undef }, ptr %43, 1
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %44)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %45)
  %46 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  store [10 x i64] zeroinitializer, ptr %46, align 4
  %47 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"[10]_llgo_int", ptr undef }, ptr %46, 1
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %47)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %48)
  %49 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/eface.main$1", ptr null }, ptr %49, align 8
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr undef }, ptr %49, 1
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %50)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %51)
  %52 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"*_llgo_int", ptr null })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %52)
  %53 = call i64 @runtime.AllocZHidden(i64 0)
  store i64 %53, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %53)
  %54 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %54)
  %55 = load i64, ptr %0, align 4
  %56 = and i64 %55, 72057594037927935
  %57 = lshr i64 %56, 17
  %58 = select i1 false, i64 0, i64 %57
  %59 = shl i64 %56, 39
  %60 = select i1 false, i64 0, i64 %59
  %61 = or i64 %58, %60
  %62 = and i64 %61, 72057594037927935
  %63 = xor i64 %62, 25399393228665167
  %64 = inttoptr i64 %63 to ptr
  %65 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %64, 0
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %65, i64 0, 1
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %66, i64 0, 2
  %68 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, ptr %68, align 8
  %69 = icmp eq ptr %68, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %69)
  %70 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %68, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %70, ptr %3, align 8
  %71 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %70, 0
  %72 = ptrtoint ptr %71 to i64
  %73 = and i64 %72, 72057594037927935
  %74 = xor i64 %73, 25399393228665167
  %75 = shl i64 %74, 17
  %76 = select i1 false, i64 0, i64 %75
  %77 = lshr i64 %74, 39
  %78 = select i1 false, i64 0, i64 %77
  %79 = or i64 %76, %78
  %80 = and i64 %79, 72057594037927935
  %81 = or i64 %80, -6557241057451442176
  %82 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %70, 1
  %83 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %70, 2
  %84 = insertvalue { i64, i64, i64 } undef, i64 %81, 0
  %85 = insertvalue { i64, i64, i64 } %84, i64 %82, 1
  %86 = insertvalue { i64, i64, i64 } %85, i64 %83, 2
  store { i64, i64, i64 } %86, ptr %2, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %68, align 8
  call void @runtime.TouchConservativeSlot(ptr %68, i64 24)
  call void @runtime.ClobberPointerRegs()
  %87 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %87)
  %88 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %3, align 8
  %89 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %88, ptr %89, align 8
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"[]_llgo_int", ptr undef }, ptr %89, 1
  %91 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %90)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %91)
  %92 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 5 }, ptr %92, align 8
  %93 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %92, 1
  %94 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %93)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %94)
  %95 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  store { i8, i64, i64 } zeroinitializer, ptr %95, align 4
  %96 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"github.com/goplus/llgo/cl/_testrt/eface.struct$RKbUG45GE4henGMAdmt0Rju0JptyR8NsX7IZLsOI0OM", ptr undef }, ptr %95, 1
  %97 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %96)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %97)
  %98 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %98, align 8
  %99 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/eface.T", ptr undef }, ptr %98, 1
  %100 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %99)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %100)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/eface.main$1"() {
_llgo_0:
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare void @runtime.ClobberPointerRegs()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare i64 @runtime.LoadHiddenPointerKey(i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*Type).String"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*Type).Kind"(ptr)

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare i8 @runtime.LoadHiddenUint8(i64)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @unsafe.init()

declare void @"github.com/goplus/llgo/runtime/abi.init"()

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal8")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal64")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal16"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal16"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal16")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal16"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal32")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.f32equal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.f32equal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.f32equal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.f32equal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.f64equal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.f64equal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.f64equal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.f64equal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal"(ptr, ptr, ptr)

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/eface.main$1"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testrt/eface.main$1")
  tail call void @"github.com/goplus/llgo/cl/_testrt/eface.main$1"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1)
  ret void
}

declare i64 @runtime.AllocZHidden(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.strequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

attributes #0 = { noinline }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
