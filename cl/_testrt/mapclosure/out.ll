; ModuleID = 'github.com/goplus/llgo/cl/_testrt/mapclosure'
source_filename = "github.com/goplus/llgo/cl/_testrt/mapclosure"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.MapType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, ptr, ptr, { ptr, ptr, i1 }, i8, i8, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr, i1 }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.InterfaceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.ArrayType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.SliceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testrt/mapclosure.typ" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String" }

@"github.com/goplus/llgo/cl/_testrt/mapclosure.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/cl/_testrt/mapclosure.list" = global %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, align 8
@"github.com/goplus/llgo/cl/_testrt/mapclosure.op" = global ptr null, align 8
@"map[_llgo_string]_llgo_closure$hv3Gu1tHq1hvKYrYV_91fBFCTxw-sNrrmVV3sfCPVM4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1141808478, i8 0, i8 8, i8 8, i8 53, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 83 }, ptr @"*map[_llgo_string]_llgo_closure$hv3Gu1tHq1hvKYrYV_91fBFCTxw-sNrrmVV3sfCPVM4" }, ptr @_llgo_string, ptr @"_llgo_closure$hv3Gu1tHq1hvKYrYV_91fBFCTxw-sNrrmVV3sfCPVM4", ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.struct$nh9Wo_JANFIZShxjhLiACsTE3I0jFbrlnRDPvkjyIWg", { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehash", ptr @_llgo_string, i1 undef }, i8 16, i8 24, i16 336, i32 12 }, align 8
@0 = private unnamed_addr constant [83 x i8] c"map[string]struct { $f func(main.Type) string; $data unsafe.Pointer; $isCoro bool }", align 1
@"*map[_llgo_string]_llgo_closure$hv3Gu1tHq1hvKYrYV_91fBFCTxw-sNrrmVV3sfCPVM4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 618058512, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 83 }, ptr null }, ptr @"map[_llgo_string]_llgo_closure$hv3Gu1tHq1hvKYrYV_91fBFCTxw-sNrrmVV3sfCPVM4" }, align 8
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr @"*_llgo_string" }, align 8
@1 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"_llgo_closure$hv3Gu1tHq1hvKYrYV_91fBFCTxw-sNrrmVV3sfCPVM4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -298944477, i8 32, i8 8, i8 8, i8 25, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 72 }, ptr @"*_llgo_closure$hv3Gu1tHq1hvKYrYV_91fBFCTxw-sNrrmVV3sfCPVM4" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$hv3Gu1tHq1hvKYrYV_91fBFCTxw-sNrrmVV3sfCPVM4$fields", i64 3, i64 3 } }, align 8
@2 = private unnamed_addr constant [72 x i8] c"struct { $f func(main.Type) string; $data unsafe.Pointer; $isCoro bool }", align 1
@"*_llgo_closure$hv3Gu1tHq1hvKYrYV_91fBFCTxw-sNrrmVV3sfCPVM4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 250267979, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 72 }, ptr null }, ptr @"_llgo_closure$hv3Gu1tHq1hvKYrYV_91fBFCTxw-sNrrmVV3sfCPVM4" }, align 8
@3 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$oTN0_tD2r5hsXqJ0NlAC-r_kC84XGVs1ZfJ7QThXncE" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2072312180, i8 0, i8 8, i8 8, i8 51, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 22 }, ptr @"*_llgo_func$oTN0_tD2r5hsXqJ0NlAC-r_kC84XGVs1ZfJ7QThXncE" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$oTN0_tD2r5hsXqJ0NlAC-r_kC84XGVs1ZfJ7QThXncE$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$oTN0_tD2r5hsXqJ0NlAC-r_kC84XGVs1ZfJ7QThXncE$out", i64 1, i64 1 } }, align 8
@4 = private unnamed_addr constant [22 x i8] c"func(main.Type) string", align 1
@"*_llgo_func$oTN0_tD2r5hsXqJ0NlAC-r_kC84XGVs1ZfJ7QThXncE" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 940230776, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 22 }, ptr null }, ptr @"_llgo_func$oTN0_tD2r5hsXqJ0NlAC-r_kC84XGVs1ZfJ7QThXncE" }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.Type" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 672393077, i8 4, i8 8, i8 8, i8 20, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 9 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.Type" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U$imethods", i64 1, i64 1 } }, align 8
@5 = private unnamed_addr constant [9 x i8] c"main.Type", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.Type" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 212697707, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 9 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.Type" }, align 8
@6 = private unnamed_addr constant [44 x i8] c"github.com/goplus/llgo/cl/_testrt/mapclosure", align 1
@7 = private unnamed_addr constant [6 x i8] c"String", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1419376263, i8 0, i8 8, i8 8, i8 51, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 13 }, ptr @"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out", i64 1, i64 1 } }, align 8
@8 = private unnamed_addr constant [13 x i8] c"func() string", align 1
@"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1900367307, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 13 }, ptr null }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }], align 8
@"_llgo_func$oTN0_tD2r5hsXqJ0NlAC-r_kC84XGVs1ZfJ7QThXncE$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.Type"], align 8
@"_llgo_func$oTN0_tD2r5hsXqJ0NlAC-r_kC84XGVs1ZfJ7QThXncE$out" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@9 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@10 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@11 = private unnamed_addr constant [7 x i8] c"$isCoro", align 1
@_llgo_bool = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 554183389, i8 12, i8 1, i8 1, i8 33, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 4 }, ptr @"*_llgo_bool" }, align 8
@12 = private unnamed_addr constant [4 x i8] c"bool", align 1
@"*_llgo_bool" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1896950390, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 4 }, ptr null }, ptr @_llgo_bool }, align 8
@"_llgo_closure$hv3Gu1tHq1hvKYrYV_91fBFCTxw-sNrrmVV3sfCPVM4$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 2 }, ptr @"_llgo_func$oTN0_tD2r5hsXqJ0NlAC-r_kC84XGVs1ZfJ7QThXncE", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 7 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testrt/mapclosure.struct$nh9Wo_JANFIZShxjhLiACsTE3I0jFbrlnRDPvkjyIWg" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 336, i64 336, i32 2084256125, i8 0, i8 8, i8 8, i8 25, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 151 }, ptr @"*github.com/goplus/llgo/cl/_testrt/mapclosure.struct$nh9Wo_JANFIZShxjhLiACsTE3I0jFbrlnRDPvkjyIWg" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.struct$nh9Wo_JANFIZShxjhLiACsTE3I0jFbrlnRDPvkjyIWg$fields", i64 4, i64 4 } }, align 8
@13 = private unnamed_addr constant [151 x i8] c"struct { topbits [8]uint8; keys [8]string; elems [8]struct { $f func(main.Type) string; $data unsafe.Pointer; $isCoro bool }; overflow unsafe.Pointer }", align 1
@"*github.com/goplus/llgo/cl/_testrt/mapclosure.struct$nh9Wo_JANFIZShxjhLiACsTE3I0jFbrlnRDPvkjyIWg" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -774607099, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 151 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.struct$nh9Wo_JANFIZShxjhLiACsTE3I0jFbrlnRDPvkjyIWg" }, align 8
@14 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@"[8]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 307038632, i8 8, i8 1, i8 1, i8 17, { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_uint8", i1 undef }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 8 }, ptr @"*[8]_llgo_uint8" }, ptr @_llgo_uint8, ptr @"[]_llgo_uint8", i64 8 }, align 8
@15 = private unnamed_addr constant [8 x i8] c"[8]uint8", align 1
@"*[8]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -566230779, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 8 }, ptr null }, ptr @"[8]_llgo_uint8" }, align 8
@_llgo_uint8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 269156761, i8 12, i8 1, i8 1, i8 40, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 5 }, ptr @"*_llgo_uint8" }, align 8
@16 = private unnamed_addr constant [5 x i8] c"uint8", align 1
@"*_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1277858201, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 5 }, ptr null }, ptr @_llgo_uint8 }, align 8
@"[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 370346748, i8 0, i8 8, i8 8, i8 23, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 7 }, ptr @"*[]_llgo_uint8" }, ptr @_llgo_uint8 }, align 8
@17 = private unnamed_addr constant [7 x i8] c"[]uint8", align 1
@"*[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2143776929, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 7 }, ptr null }, ptr @"[]_llgo_uint8" }, align 8
@18 = private unnamed_addr constant [4 x i8] c"keys", align 1
@"[8]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 128, i64 120, i32 460245566, i8 0, i8 8, i8 8, i8 17, { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_string", i1 undef }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 9 }, ptr @"*[8]_llgo_string" }, ptr @_llgo_string, ptr @"[]_llgo_string", i64 8 }, align 8
@19 = private unnamed_addr constant [9 x i8] c"[8]string", align 1
@"*[8]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 368026044, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 9 }, ptr null }, ptr @"[8]_llgo_string" }, align 8
@"[]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 608974920, i8 0, i8 8, i8 8, i8 23, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 8 }, ptr @"*[]_llgo_string" }, ptr @_llgo_string }, align 8
@20 = private unnamed_addr constant [8 x i8] c"[]string", align 1
@"*[]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -157880218, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 8 }, ptr null }, ptr @"[]_llgo_string" }, align 8
@21 = private unnamed_addr constant [5 x i8] c"elems", align 1
@"[8]_llgo_closure$hv3Gu1tHq1hvKYrYV_91fBFCTxw-sNrrmVV3sfCPVM4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 192, i64 176, i32 -1551913162, i8 0, i8 8, i8 8, i8 17, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 75 }, ptr @"*[8]_llgo_closure$hv3Gu1tHq1hvKYrYV_91fBFCTxw-sNrrmVV3sfCPVM4" }, ptr @"_llgo_closure$hv3Gu1tHq1hvKYrYV_91fBFCTxw-sNrrmVV3sfCPVM4", ptr @"[]_llgo_closure$hv3Gu1tHq1hvKYrYV_91fBFCTxw-sNrrmVV3sfCPVM4", i64 8 }, align 8
@22 = private unnamed_addr constant [75 x i8] c"[8]struct { $f func(main.Type) string; $data unsafe.Pointer; $isCoro bool }", align 1
@"*[8]_llgo_closure$hv3Gu1tHq1hvKYrYV_91fBFCTxw-sNrrmVV3sfCPVM4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1094929117, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 75 }, ptr null }, ptr @"[8]_llgo_closure$hv3Gu1tHq1hvKYrYV_91fBFCTxw-sNrrmVV3sfCPVM4" }, align 8
@"[]_llgo_closure$hv3Gu1tHq1hvKYrYV_91fBFCTxw-sNrrmVV3sfCPVM4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 265116170, i8 0, i8 8, i8 8, i8 23, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 74 }, ptr @"*[]_llgo_closure$hv3Gu1tHq1hvKYrYV_91fBFCTxw-sNrrmVV3sfCPVM4" }, ptr @"_llgo_closure$hv3Gu1tHq1hvKYrYV_91fBFCTxw-sNrrmVV3sfCPVM4" }, align 8
@23 = private unnamed_addr constant [74 x i8] c"[]struct { $f func(main.Type) string; $data unsafe.Pointer; $isCoro bool }", align 1
@"*[]_llgo_closure$hv3Gu1tHq1hvKYrYV_91fBFCTxw-sNrrmVV3sfCPVM4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -586553503, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 74 }, ptr null }, ptr @"[]_llgo_closure$hv3Gu1tHq1hvKYrYV_91fBFCTxw-sNrrmVV3sfCPVM4" }, align 8
@24 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@"github.com/goplus/llgo/cl/_testrt/mapclosure.struct$nh9Wo_JANFIZShxjhLiACsTE3I0jFbrlnRDPvkjyIWg$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 7 }, ptr @"[8]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 4 }, ptr @"[8]_llgo_string", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 5 }, ptr @"[8]_llgo_closure$hv3Gu1tHq1hvKYrYV_91fBFCTxw-sNrrmVV3sfCPVM4", i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 8 }, ptr @_llgo_Pointer, i64 328, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@25 = private unnamed_addr constant [4 x i8] c"demo", align 1
@26 = private unnamed_addr constant [5 x i8] c"hello", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.typ" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1684926232, i8 11, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 8 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.typ" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 44 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.(*typ).String$coro", ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.(*typ).String$coro" }] }, align 8
@27 = private unnamed_addr constant [8 x i8] c"main.typ", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.typ" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1915618481, i8 5, i8 8, i8 8, i8 25, { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.typ", i1 undef }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 8 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.typ" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 44 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@28 = private unnamed_addr constant [1 x i8] c"s", align 1
@"github.com/goplus/llgo/cl/_testrt/mapclosure.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 1 }, ptr @_llgo_string, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -195205541, i8 0, i8 8, i8 8, i8 20, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 29 }, ptr @"*_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U$imethods", i64 1, i64 1 } }, align 8
@29 = private unnamed_addr constant [29 x i8] c"interface { String() string }", align 1
@"*_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 876051709, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 29 }, ptr null }, ptr @"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U" }, align 8
@30 = private unnamed_addr constant [5 x i8] c"error", align 1

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testrt/mapclosure.demo"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %2 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %3 = getelementptr ptr, ptr %2, i64 3
  %4 = load ptr, ptr %3, align 8
  %5 = insertvalue { ptr, ptr, i1 } undef, ptr %4, 0
  %6 = insertvalue { ptr, ptr, i1 } %5, ptr %1, 1
  %7 = extractvalue { ptr, ptr, i1 } %6, 1
  %8 = extractvalue { ptr, ptr, i1 } %6, 2
  %9 = extractvalue { ptr, ptr, i1 } %6, 0
  %10 = call ptr %9(ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %10)
  %11 = call ptr @llvm.coro.promise(ptr %10, i32 8, i1 false)
  %12 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %11, i32 0, i32 1
  %13 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %12, align 8
  call void @llvm.coro.destroy(ptr %10)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %13
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.demo$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) #0 {
_llgo_0:
  %1 = alloca { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, align 8
  %2 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %7 = getelementptr ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = insertvalue { ptr, ptr, i1 } undef, ptr %8, 0
  %10 = insertvalue { ptr, ptr, i1 } %9, ptr %5, 1
  %11 = extractvalue { ptr, ptr, i1 } %10, 1
  %12 = extractvalue { ptr, ptr, i1 } %10, 2
  %13 = extractvalue { ptr, ptr, i1 } %10, 0
  %14 = call ptr %13(ptr %11)
  br label %_llgo_8

_llgo_2:                                          ; preds = %_llgo_0
  %15 = call i64 @llvm.coro.size.i64()
  %16 = call ptr @malloc(i64 %15)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %17 = phi ptr [ null, %_llgo_0 ], [ %16, %_llgo_2 ]
  %18 = call ptr @llvm.coro.begin(token %3, ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_11, %_llgo_10
  %19 = call i1 @llvm.coro.end(ptr %18, i1 false, token none)
  ret ptr %18

_llgo_5:                                          ; preds = %_llgo_15, %_llgo_14, %_llgo_11, %_llgo_10
  %20 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %20)
  %21 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %21, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_16, %_llgo_5
  %22 = call ptr @llvm.coro.free(token %3, ptr %18)
  call void @free(ptr %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_8
  %23 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %14)
  br i1 %23, label %_llgo_14, label %_llgo_15

_llgo_8:                                          ; preds = %_llgo_13, %_llgo_12, %_llgo_1
  %24 = phi i1 [ true, %_llgo_1 ], [ false, %_llgo_10 ], [ false, %_llgo_11 ]
  %25 = call i1 @llvm.coro.done(ptr %14)
  br i1 %25, label %_llgo_7, label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  br i1 %24, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %26 = call ptr @llvm.coro.promise(ptr %14, i32 8, i1 false)
  %27 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %26, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %27, ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %14)
  %28 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %28, label %_llgo_4 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9
  %29 = call ptr @llvm.coro.promise(ptr %14, i32 8, i1 false)
  %30 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %29, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %30, ptr %18)
  %31 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %31, label %_llgo_4 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_5
  ]

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_8

_llgo_13:                                         ; preds = %_llgo_11
  br label %_llgo_8

_llgo_14:                                         ; preds = %_llgo_7
  %32 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %32)
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_7
  %33 = call ptr @llvm.coro.promise(ptr %14, i32 8, i1 false)
  %34 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %33, i32 0, i32 1
  %35 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %34, align 8
  call void @llvm.coro.destroy(ptr %14)
  %36 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %1, i32 0, i32 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %35, ptr %36, align 8
  br label %_llgo_5

_llgo_16:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/mapclosure.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.init$guard", align 1
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_string]_llgo_closure$hv3Gu1tHq1hvKYrYV_91fBFCTxw-sNrrmVV3sfCPVM4", i64 1)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 4 }, ptr %2, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_string]_llgo_closure$hv3Gu1tHq1hvKYrYV_91fBFCTxw-sNrrmVV3sfCPVM4", ptr %1, ptr %2)
  store { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/mapclosure.demo", ptr null, i1 false }, ptr %3, align 8
  store ptr %1, ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.op", align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %5 = getelementptr inbounds { ptr, ptr, i1 }, ptr %4, i64 0
  store { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/mapclosure.demo", ptr null, i1 false }, ptr %5, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 1, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 1, 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.list", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/mapclosure.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/mapclosure.typ", ptr %0, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 5 }, ptr %1, align 8
  %2 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.op", align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 4 }, ptr %3, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr @"map[_llgo_string]_llgo_closure$hv3Gu1tHq1hvKYrYV_91fBFCTxw-sNrrmVV3sfCPVM4", ptr %2, ptr %3)
  %5 = load { ptr, ptr, i1 }, ptr %4, align 8
  %6 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.list", align 8
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, 0
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, 1
  %9 = icmp sge i64 0, %8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %9)
  %10 = getelementptr inbounds { ptr, ptr, i1 }, ptr %7, i64 0
  %11 = load { ptr, ptr, i1 }, ptr %10, align 8
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.typ")
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %12, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %13, ptr %0, 1
  %15 = extractvalue { ptr, ptr, i1 } %5, 0
  %16 = extractvalue { ptr, ptr, i1 } %5, 1
  %17 = extractvalue { ptr, ptr, i1 } %5, 2
  br i1 %17, label %_llgo_4, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_8
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 5 }, ptr %18, align 8
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %18, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %19)
  unreachable

_llgo_2:                                          ; preds = %_llgo_8
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %20 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %15(ptr %16, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %14)
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  %21 = call ptr %15(ptr %16, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %21)
  %22 = call ptr @llvm.coro.promise(ptr %21, i32 8, i1 false)
  %23 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %22, i32 0, i32 1
  %24 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %23, align 8
  call void @llvm.coro.destroy(ptr %21)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %25 = phi %"github.com/goplus/llgo/runtime/internal/runtime.String" [ %20, %_llgo_3 ], [ %24, %_llgo_4 ]
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.typ")
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %26, 0
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %27, ptr %0, 1
  %29 = extractvalue { ptr, ptr, i1 } %11, 0
  %30 = extractvalue { ptr, ptr, i1 } %11, 1
  %31 = extractvalue { ptr, ptr, i1 } %11, 2
  br i1 %31, label %_llgo_7, label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5
  %32 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %29(ptr %30, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %28)
  br label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_5
  %33 = call ptr %29(ptr %30, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %28)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %33)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %33)
  %34 = call ptr @llvm.coro.promise(ptr %33, i32 8, i1 false)
  %35 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %34, i32 0, i32 1
  %36 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %35, align 8
  call void @llvm.coro.destroy(ptr %33)
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %37 = phi %"github.com/goplus/llgo/runtime/internal/runtime.String" [ %32, %_llgo_6 ], [ %36, %_llgo_7 ]
  %38 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %25, %"github.com/goplus/llgo/runtime/internal/runtime.String" %37)
  %39 = xor i1 %38, true
  br i1 %39, label %_llgo_1, label %_llgo_2
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_5
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/mapclosure.typ", ptr %4, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 5 }, ptr %5, align 8
  %6 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.op", align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 4 }, ptr %7, align 8
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr @"map[_llgo_string]_llgo_closure$hv3Gu1tHq1hvKYrYV_91fBFCTxw-sNrrmVV3sfCPVM4", ptr %6, ptr %7)
  %9 = load { ptr, ptr, i1 }, ptr %8, align 8
  %10 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.list", align 8
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, 0
  %12 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, 1
  %13 = icmp sge i64 0, %12
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %13)
  %14 = getelementptr inbounds { ptr, ptr, i1 }, ptr %11, i64 0
  %15 = load { ptr, ptr, i1 }, ptr %14, align 8
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.typ")
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %16, 0
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %17, ptr %4, 1
  %19 = extractvalue { ptr, ptr, i1 } %9, 0
  %20 = extractvalue { ptr, ptr, i1 } %9, 1
  %21 = extractvalue { ptr, ptr, i1 } %9, 2
  br i1 %21, label %_llgo_10, label %_llgo_9

_llgo_2:                                          ; preds = %_llgo_23
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 5 }, ptr %22, align 8
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %22, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %23)
  br label %_llgo_7

_llgo_3:                                          ; preds = %_llgo_23
  br label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_0
  %24 = call i64 @llvm.coro.size.i64()
  %25 = call ptr @malloc(i64 %24)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %26 = phi ptr [ null, %_llgo_0 ], [ %25, %_llgo_4 ]
  %27 = call ptr @llvm.coro.begin(token %2, ptr %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7, %_llgo_28, %_llgo_27, %_llgo_16, %_llgo_15
  %28 = call i1 @llvm.coro.end(ptr %27, i1 false, token none)
  ret ptr %27

_llgo_7:                                          ; preds = %_llgo_3, %_llgo_2, %_llgo_31, %_llgo_28, %_llgo_27, %_llgo_19, %_llgo_16, %_llgo_15
  %29 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %29)
  %30 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %30, label %_llgo_6 [
    i8 0, label %_llgo_33
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_33, %_llgo_7
  %31 = call ptr @llvm.coro.free(token %2, ptr %27)
  call void @free(ptr %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_1
  %32 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %19(ptr %20, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %18)
  br label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_1
  %33 = call ptr %19(ptr %20, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %18)
  br label %_llgo_13

_llgo_11:                                         ; preds = %_llgo_20, %_llgo_9
  %34 = phi %"github.com/goplus/llgo/runtime/internal/runtime.String" [ %32, %_llgo_9 ], [ %53, %_llgo_20 ]
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.typ")
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %35, 0
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %36, ptr %4, 1
  %38 = extractvalue { ptr, ptr, i1 } %15, 0
  %39 = extractvalue { ptr, ptr, i1 } %15, 1
  %40 = extractvalue { ptr, ptr, i1 } %15, 2
  br i1 %40, label %_llgo_22, label %_llgo_21

_llgo_12:                                         ; preds = %_llgo_13
  %41 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %33)
  br i1 %41, label %_llgo_19, label %_llgo_20

_llgo_13:                                         ; preds = %_llgo_18, %_llgo_17, %_llgo_10
  %42 = phi i1 [ true, %_llgo_10 ], [ false, %_llgo_15 ], [ false, %_llgo_16 ]
  %43 = call i1 @llvm.coro.done(ptr %33)
  br i1 %43, label %_llgo_12, label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13
  br i1 %42, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %44 = call ptr @llvm.coro.promise(ptr %33, i32 8, i1 false)
  %45 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %44, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %45, ptr %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %33)
  %46 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %46, label %_llgo_6 [
    i8 0, label %_llgo_17
    i8 1, label %_llgo_7
  ]

_llgo_16:                                         ; preds = %_llgo_14
  %47 = call ptr @llvm.coro.promise(ptr %33, i32 8, i1 false)
  %48 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %47, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %48, ptr %27)
  %49 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %49, label %_llgo_6 [
    i8 0, label %_llgo_18
    i8 1, label %_llgo_7
  ]

_llgo_17:                                         ; preds = %_llgo_15
  br label %_llgo_13

_llgo_18:                                         ; preds = %_llgo_16
  br label %_llgo_13

_llgo_19:                                         ; preds = %_llgo_12
  %50 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %33)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %33)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %50)
  br label %_llgo_7

_llgo_20:                                         ; preds = %_llgo_12
  %51 = call ptr @llvm.coro.promise(ptr %33, i32 8, i1 false)
  %52 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %51, i32 0, i32 1
  %53 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %52, align 8
  call void @llvm.coro.destroy(ptr %33)
  br label %_llgo_11

_llgo_21:                                         ; preds = %_llgo_11
  %54 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %38(ptr %39, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %37)
  br label %_llgo_23

_llgo_22:                                         ; preds = %_llgo_11
  %55 = call ptr %38(ptr %39, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %37)
  br label %_llgo_25

_llgo_23:                                         ; preds = %_llgo_32, %_llgo_21
  %56 = phi %"github.com/goplus/llgo/runtime/internal/runtime.String" [ %54, %_llgo_21 ], [ %71, %_llgo_32 ]
  %57 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %34, %"github.com/goplus/llgo/runtime/internal/runtime.String" %56)
  %58 = xor i1 %57, true
  br i1 %58, label %_llgo_2, label %_llgo_3

_llgo_24:                                         ; preds = %_llgo_25
  %59 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %55)
  br i1 %59, label %_llgo_31, label %_llgo_32

_llgo_25:                                         ; preds = %_llgo_30, %_llgo_29, %_llgo_22
  %60 = phi i1 [ true, %_llgo_22 ], [ false, %_llgo_27 ], [ false, %_llgo_28 ]
  %61 = call i1 @llvm.coro.done(ptr %55)
  br i1 %61, label %_llgo_24, label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25
  br i1 %60, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %62 = call ptr @llvm.coro.promise(ptr %55, i32 8, i1 false)
  %63 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %62, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %63, ptr %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %55)
  %64 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %64, label %_llgo_6 [
    i8 0, label %_llgo_29
    i8 1, label %_llgo_7
  ]

_llgo_28:                                         ; preds = %_llgo_26
  %65 = call ptr @llvm.coro.promise(ptr %55, i32 8, i1 false)
  %66 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %65, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %66, ptr %27)
  %67 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %67, label %_llgo_6 [
    i8 0, label %_llgo_30
    i8 1, label %_llgo_7
  ]

_llgo_29:                                         ; preds = %_llgo_27
  br label %_llgo_25

_llgo_30:                                         ; preds = %_llgo_28
  br label %_llgo_25

_llgo_31:                                         ; preds = %_llgo_24
  %68 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %55)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %55)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %68)
  br label %_llgo_7

_llgo_32:                                         ; preds = %_llgo_24
  %69 = call ptr @llvm.coro.promise(ptr %55, i32 8, i1 false)
  %70 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %69, i32 0, i32 1
  %71 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %70, align 8
  call void @llvm.coro.destroy(ptr %55)
  br label %_llgo_23

_llgo_33:                                         ; preds = %_llgo_7
  br label %_llgo_8
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testrt/mapclosure.(*typ).String"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/mapclosure.typ", ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %2
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.(*typ).String$coro"(ptr %0) #0 {
_llgo_0:
  %1 = alloca { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, align 8
  %2 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/mapclosure.typ", ptr %0, i32 0, i32 0
  %6 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %5, align 8
  %7 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %1, i32 0, i32 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %6, ptr %7, align 8
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %8 = call i64 @llvm.coro.size.i64()
  %9 = call ptr @malloc(i64 %8)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %10 = phi ptr [ null, %_llgo_0 ], [ %9, %_llgo_2 ]
  %11 = call ptr @llvm.coro.begin(token %3, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %12 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_5:                                          ; preds = %_llgo_1
  %13 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %13)
  %14 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %14, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %15 = call ptr @llvm.coro.free(token %3, ptr %11)
  call void @free(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr)

; Function Attrs: nounwind memory(none)
declare ptr @llvm.coro.promise(ptr nocapture, i32, i1) #1

declare void @llvm.coro.destroy(ptr)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare token @llvm.coro.id(i32, ptr readnone, ptr nocapture readonly, ptr) #2

; Function Attrs: nounwind
declare i1 @llvm.coro.alloc(token) #3

; Function Attrs: nounwind memory(none)
declare i64 @llvm.coro.size.i64() #1

declare ptr @malloc(i64)

; Function Attrs: nounwind
declare ptr @llvm.coro.begin(token, ptr writeonly) #3

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()

; Function Attrs: nounwind memory(argmem: readwrite)
declare i1 @llvm.coro.done(ptr nocapture readonly) #4

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr, ptr)

; Function Attrs: nounwind
declare i8 @llvm.coro.suspend(token, i1) #3

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token) #3

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr)

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #5

declare void @free(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()

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

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal"(ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr, i64)

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.String" @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/mapclosure.demo"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1) {
_llgo_0:
  %2 = tail call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testrt/mapclosure.demo"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %2
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

attributes #0 = { presplitcoroutine }
attributes #1 = { nounwind memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #3 = { nounwind }
attributes #4 = { nounwind memory(argmem: readwrite) }
attributes #5 = { nounwind memory(argmem: read) }
