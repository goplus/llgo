; ModuleID = 'github.com/goplus/llgo/cl/_testgo/ifaceprom'
source_filename = "github.com/goplus/llgo/cl/_testgo/ifaceprom"

%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.InterfaceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" = type {}
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/ifaceprom.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [3 x i8] c"two", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 0, i64 0, i32 -288235710, i8 13, i8 1, i8 1, i8 25, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 48 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, i16 2, i16 0, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 47 }, ptr @"_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).one", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.one" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 47 }, ptr @"_llgo_closure$vK4RtX_aj54SK2qRpmq5G1J_JK9BvV_9Ps38HU_Uq6I", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).two", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.two" }] }, align 8
@1 = private unnamed_addr constant [48 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -606537795, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 48 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, i16 2, i16 0, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 47 }, ptr @"_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).one", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).one" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 47 }, ptr @"_llgo_closure$vK4RtX_aj54SK2qRpmq5G1J_JK9BvV_9Ps38HU_Uq6I", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).two", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).two" }] }, align 8
@2 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceprom", align 1
@3 = private unnamed_addr constant [3 x i8] c"one", align 1
@4 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceprom.one", align 1
@"_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1058413686, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 46 }, ptr @"*_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s$fields", i64 2, i64 2 } }, align 8
@5 = private unnamed_addr constant [46 x i8] c"struct { $f func() int; $data unsafe.Pointer }", align 1
@"*_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1449453798, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 46 }, ptr null }, ptr @"_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s" }, align 8
@6 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2131144854, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 10 }, ptr @"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out", i64 1, i64 1 } }, align 8
@7 = private unnamed_addr constant [10 x i8] c"func() int", align 1
@"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1805835775, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 10 }, ptr null }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, align 8
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 3 }, ptr @"*_llgo_int" }, align 8
@8 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@9 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@10 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 2 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@11 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceprom.two", align 1
@"_llgo_closure$vK4RtX_aj54SK2qRpmq5G1J_JK9BvV_9Ps38HU_Uq6I" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1567758122, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 49 }, ptr @"*_llgo_closure$vK4RtX_aj54SK2qRpmq5G1J_JK9BvV_9Ps38HU_Uq6I" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$vK4RtX_aj54SK2qRpmq5G1J_JK9BvV_9Ps38HU_Uq6I$fields", i64 2, i64 2 } }, align 8
@12 = private unnamed_addr constant [49 x i8] c"struct { $f func() string; $data unsafe.Pointer }", align 1
@"*_llgo_closure$vK4RtX_aj54SK2qRpmq5G1J_JK9BvV_9Ps38HU_Uq6I" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1096129650, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 49 }, ptr null }, ptr @"_llgo_closure$vK4RtX_aj54SK2qRpmq5G1J_JK9BvV_9Ps38HU_Uq6I" }, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1419376263, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 13 }, ptr @"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out", i64 1, i64 1 } }, align 8
@13 = private unnamed_addr constant [13 x i8] c"func() string", align 1
@"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1900367307, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 13 }, ptr null }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, align 8
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 6 }, ptr @"*_llgo_string" }, align 8
@14 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@"_llgo_closure$vK4RtX_aj54SK2qRpmq5G1J_JK9BvV_9Ps38HU_Uq6I$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 2 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1944276081, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 47 }, ptr @"*github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA$imethods", i64 2, i64 2 } }, align 8
@15 = private unnamed_addr constant [47 x i8] c"interface { main.one() int; main.two() string }", align 1
@"*github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1980688929, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 47 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA" }, align 8
@"github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA$imethods" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 47 }, ptr @"_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 47 }, ptr @"_llgo_closure$vK4RtX_aj54SK2qRpmq5G1J_JK9BvV_9Ps38HU_Uq6I" }], align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1602411912, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 45 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA$imethods", i64 2, i64 2 } }, align 8
@16 = private unnamed_addr constant [45 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceprom.I", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 486411694, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 45 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I" }, align 8
@17 = private unnamed_addr constant [116 x i8] c"type assertion github.com/goplus/llgo/cl/_testgo/ifaceprom.I -> github.com/goplus/llgo/cl/_testgo/ifaceprom.I failed", align 1
@18 = private unnamed_addr constant [4 x i8] c"pass", align 1

define i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.S.one"(%"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %1, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %3)
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, 0
  %6 = getelementptr ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  %8 = insertvalue { ptr, ptr } undef, ptr %7, 0
  %9 = insertvalue { ptr, ptr } %8, ptr %4, 1
  %10 = extractvalue { ptr, ptr } %9, 1
  %11 = extractvalue { ptr, ptr } %9, 0
  %12 = call i64 %11(ptr %10)
  ret i64 %12
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/ifaceprom.S.two"(%"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %1, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %3)
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, 0
  %6 = getelementptr ptr, ptr %5, i64 4
  %7 = load ptr, ptr %6, align 8
  %8 = insertvalue { ptr, ptr } undef, ptr %7, 0
  %9 = insertvalue { ptr, ptr } %8, ptr %4, 1
  %10 = extractvalue { ptr, ptr } %9, 1
  %11 = extractvalue { ptr, ptr } %9, 0
  %12 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %11(ptr %10)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %12
}

define i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*S).one"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %1, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = insertvalue { ptr, ptr } undef, ptr %6, 0
  %8 = insertvalue { ptr, ptr } %7, ptr %3, 1
  %9 = extractvalue { ptr, ptr } %8, 1
  %10 = extractvalue { ptr, ptr } %8, 0
  %11 = call i64 %10(ptr %9)
  ret i64 %11
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*S).two"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %1, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = insertvalue { ptr, ptr } undef, ptr %6, 0
  %8 = insertvalue { ptr, ptr } %7, ptr %3, 1
  %9 = extractvalue { ptr, ptr } %8, 1
  %10 = extractvalue { ptr, ptr } %8, 0
  %11 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %10(ptr %9)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %11
}

define i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.one"(%"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" %0) {
_llgo_0:
  ret i64 1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.two"(%"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" %0) {
_llgo_0:
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 }
}

define i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).one"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl", ptr %0, align 1
  %2 = call i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.one"(%"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" %1)
  ret i64 %2
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).two"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl", ptr %0, align 1
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.two"(%"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" %1)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %2
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceprom.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceprom.main"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", align 8
  call void @llvm.memset(ptr %0, i8 0, i64 16, i1 false)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" zeroinitializer, ptr %2, align 1
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.impl")
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, ptr %2, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5, ptr %1, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %7 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %6, align 8
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %7)
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, 0
  %10 = getelementptr ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  %12 = insertvalue { ptr, ptr } undef, ptr %11, 0
  %13 = insertvalue { ptr, ptr } %12, ptr %8, 1
  %14 = extractvalue { ptr, ptr } %13, 1
  %15 = extractvalue { ptr, ptr } %13, 0
  %16 = call i64 %15(ptr %14)
  %17 = icmp ne i64 %16, 1
  br i1 %17, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %18 = inttoptr i64 %16 to ptr
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %18, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %19)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %20 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, align 8
  %21 = extractvalue %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %20, 0
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %21)
  %23 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %21, 0
  %24 = getelementptr ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  %26 = insertvalue { ptr, ptr } undef, ptr %25, 0
  %27 = insertvalue { ptr, ptr } %26, ptr %22, 1
  %28 = extractvalue { ptr, ptr } %27, 1
  %29 = extractvalue { ptr, ptr } %27, 0
  %30 = call i64 %29(ptr %28)
  %31 = icmp ne i64 %30, 1
  br i1 %31, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %32 = inttoptr i64 %30 to ptr
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %32, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %33)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %35 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %34, align 8
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %35)
  %37 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %35, 1
  br i1 true, label %_llgo_17, label %_llgo_18

_llgo_5:                                          ; preds = %_llgo_17
  %38 = inttoptr i64 %93 to ptr
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %38, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %39)
  unreachable

_llgo_6:                                          ; preds = %_llgo_17
  %40 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, align 8
  %41 = extractvalue %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %40, 0
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %41)
  %43 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %41, 1
  br i1 true, label %_llgo_19, label %_llgo_20

_llgo_7:                                          ; preds = %_llgo_19
  %44 = inttoptr i64 %102 to ptr
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %44, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %45)
  unreachable

_llgo_8:                                          ; preds = %_llgo_19
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %47 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %46, align 8
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %47)
  %49 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %47, 0
  %50 = getelementptr ptr, ptr %49, i64 4
  %51 = load ptr, ptr %50, align 8
  %52 = insertvalue { ptr, ptr } undef, ptr %51, 0
  %53 = insertvalue { ptr, ptr } %52, ptr %48, 1
  %54 = extractvalue { ptr, ptr } %53, 1
  %55 = extractvalue { ptr, ptr } %53, 0
  %56 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %55(ptr %54)
  %57 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %56, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 })
  %58 = xor i1 %57, true
  br i1 %58, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %59 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %56, ptr %59, align 8
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %59, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %60)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  %61 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, align 8
  %62 = extractvalue %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %61, 0
  %63 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %62)
  %64 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %62, 0
  %65 = getelementptr ptr, ptr %64, i64 4
  %66 = load ptr, ptr %65, align 8
  %67 = insertvalue { ptr, ptr } undef, ptr %66, 0
  %68 = insertvalue { ptr, ptr } %67, ptr %63, 1
  %69 = extractvalue { ptr, ptr } %68, 1
  %70 = extractvalue { ptr, ptr } %68, 0
  %71 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %70(ptr %69)
  %72 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %71, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 })
  %73 = xor i1 %72, true
  br i1 %73, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %74 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %71, ptr %74, align 8
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %74, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %75)
  unreachable

_llgo_12:                                         ; preds = %_llgo_10
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %77 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %76, align 8
  %78 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %77)
  %79 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %77, 1
  br i1 true, label %_llgo_21, label %_llgo_22

_llgo_13:                                         ; preds = %_llgo_21
  %80 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %111, ptr %80, align 8
  %81 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %80, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %81)
  unreachable

_llgo_14:                                         ; preds = %_llgo_21
  %82 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, align 8
  %83 = extractvalue %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %82, 0
  %84 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %83)
  %85 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %83, 1
  br i1 true, label %_llgo_23, label %_llgo_24

_llgo_15:                                         ; preds = %_llgo_23
  %86 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %121, ptr %86, align 8
  %87 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %86, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %87)
  unreachable

_llgo_16:                                         ; preds = %_llgo_23
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_17:                                         ; preds = %_llgo_4
  %88 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %89 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %88, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %35, ptr %89, align 8
  %90 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.one$bound", ptr undef }, ptr %88, 1
  %91 = extractvalue { ptr, ptr } %90, 1
  %92 = extractvalue { ptr, ptr } %90, 0
  %93 = call i64 %92(ptr %91)
  %94 = icmp ne i64 %93, 1
  br i1 %94, label %_llgo_5, label %_llgo_6

_llgo_18:                                         ; preds = %_llgo_4
  %95 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 116 }, ptr %95, align 8
  %96 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %95, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %96)
  unreachable

_llgo_19:                                         ; preds = %_llgo_6
  %97 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %98 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %97, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %41, ptr %98, align 8
  %99 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.one$bound", ptr undef }, ptr %97, 1
  %100 = extractvalue { ptr, ptr } %99, 1
  %101 = extractvalue { ptr, ptr } %99, 0
  %102 = call i64 %101(ptr %100)
  %103 = icmp ne i64 %102, 1
  br i1 %103, label %_llgo_7, label %_llgo_8

_llgo_20:                                         ; preds = %_llgo_6
  %104 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 116 }, ptr %104, align 8
  %105 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %104, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %105)
  unreachable

_llgo_21:                                         ; preds = %_llgo_12
  %106 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %107 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %106, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %77, ptr %107, align 8
  %108 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.two$bound", ptr undef }, ptr %106, 1
  %109 = extractvalue { ptr, ptr } %108, 1
  %110 = extractvalue { ptr, ptr } %108, 0
  %111 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %110(ptr %109)
  %112 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %111, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 })
  %113 = xor i1 %112, true
  br i1 %113, label %_llgo_13, label %_llgo_14

_llgo_22:                                         ; preds = %_llgo_12
  %114 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 116 }, ptr %114, align 8
  %115 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %114, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %115)
  unreachable

_llgo_23:                                         ; preds = %_llgo_14
  %116 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %117 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %116, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %83, ptr %117, align 8
  %118 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.two$bound", ptr undef }, ptr %116, 1
  %119 = extractvalue { ptr, ptr } %118, 1
  %120 = extractvalue { ptr, ptr } %118, 0
  %121 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %120(ptr %119)
  %122 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %121, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 })
  %123 = xor i1 %122, true
  br i1 %123, label %_llgo_15, label %_llgo_16

_llgo_24:                                         ; preds = %_llgo_14
  %124 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 116 }, ptr %124, align 8
  %125 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %124, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %125)
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

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

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

define i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.one$bound"(ptr %0) {
_llgo_0:
  %1 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %0, align 8
  %2 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %1, 0
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = insertvalue { ptr, ptr } undef, ptr %6, 0
  %8 = insertvalue { ptr, ptr } %7, ptr %3, 1
  %9 = extractvalue { ptr, ptr } %8, 1
  %10 = extractvalue { ptr, ptr } %8, 0
  %11 = call i64 %10(ptr %9)
  ret i64 %11
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.two$bound"(ptr %0) {
_llgo_0:
  %1 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %0, align 8
  %2 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %1, 0
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = insertvalue { ptr, ptr } undef, ptr %6, 0
  %8 = insertvalue { ptr, ptr } %7, ptr %3, 1
  %9 = extractvalue { ptr, ptr } %8, 1
  %10 = extractvalue { ptr, ptr } %8, 0
  %11 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %10(ptr %9)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %11
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
