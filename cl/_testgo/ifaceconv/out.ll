; ModuleID = 'github.com/goplus/llgo/cl/_testgo/ifaceconv'
source_filename = "github.com/goplus/llgo/cl/_testgo/ifaceconv"

%"github.com/goplus/llgo/runtime/abi.InterfaceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" = type {}
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" = type {}
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/ifaceconv.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [46 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1", align 1
@1 = private unnamed_addr constant [1 x i8] c"f", align 1
@2 = private unnamed_addr constant [46 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2", align 1
@3 = private unnamed_addr constant [1 x i8] c"g", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -2044467036, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I0" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@4 = private unnamed_addr constant [7 x i8] c"main.I0", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1442808563, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I0" }, align 8
@5 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceconv", align 1
@6 = private unnamed_addr constant [21 x i8] c"nil i0.(I0) succeeded", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 6 }, ptr @"*_llgo_string" }, align 8
@7 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I1" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1120599641, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 7 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I1" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4$imethods", i64 1, i64 1 } }, align 8
@8 = private unnamed_addr constant [7 x i8] c"main.I1", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I1" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2091389668, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 7 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I1" }, align 8
@9 = private unnamed_addr constant [45 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceconv.f", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@10 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 45 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }], align 8
@11 = private unnamed_addr constant [21 x i8] c"nil i1.(I1) succeeded", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I2" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1039680758, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 7 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I2" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw$imethods", i64 2, i64 2 } }, align 8
@12 = private unnamed_addr constant [7 x i8] c"main.I2", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I2" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -890875891, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 7 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I2" }, align 8
@13 = private unnamed_addr constant [45 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceconv.g", align 1
@"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw$imethods" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 45 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 45 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }], align 8
@14 = private unnamed_addr constant [21 x i8] c"nil i2.(I2) succeeded", align 1
@"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1745212255, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 22 }, ptr @"*github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4$imethods", i64 1, i64 1 } }, align 8
@15 = private unnamed_addr constant [22 x i8] c"interface { main.f() }", align 1
@"*github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 667895438, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 22 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4" }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 0, i64 0, i32 -493806667, i8 13, i8 1, i8 1, i8 25, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 7 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 43 }, i16 1, i16 0, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 45 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C1).f", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1.f" }] }, align 8
@16 = private unnamed_addr constant [7 x i8] c"main.C1", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1642496426, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 7 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 43 }, i16 1, i16 0, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 45 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C1).f", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C1).f" }] }, align 8
@17 = private unnamed_addr constant [17 x i8] c"C1 i1.(I0) failed", align 1
@"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -2012628237, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 32 }, ptr @"*github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw$imethods", i64 2, i64 2 } }, align 8
@18 = private unnamed_addr constant [32 x i8] c"interface { main.f(); main.g() }", align 1
@"*github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1002778765, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 32 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw" }, align 8
@19 = private unnamed_addr constant [17 x i8] c"C1 i1.(I1) failed", align 1
@20 = private unnamed_addr constant [20 x i8] c"C1 i1.(I2) succeeded", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 0, i64 0, i32 149759393, i8 13, i8 1, i8 1, i8 25, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 7 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 43 }, i16 2, i16 0, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 45 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).f", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2.f" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 45 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).g", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2.g" }] }, align 8
@21 = private unnamed_addr constant [7 x i8] c"main.C2", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1861337055, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 7 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 43 }, i16 2, i16 0, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 45 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).f", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).f" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 45 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).g", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).g" }] }, align 8
@22 = private unnamed_addr constant [17 x i8] c"C2 i1.(I0) failed", align 1
@23 = private unnamed_addr constant [17 x i8] c"C2 i1.(I1) failed", align 1
@24 = private unnamed_addr constant [17 x i8] c"C2 i1.(I2) failed", align 1
@25 = private unnamed_addr constant [17 x i8] c"C1 I0(i1) was nil", align 1
@26 = private unnamed_addr constant [17 x i8] c"C1 I1(i1) was nil", align 1
@27 = private unnamed_addr constant [4 x i8] c"pass", align 1

define void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1.f"(%"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" %0) {
_llgo_0:
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C1).f"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @runtime.ClobberPointerRegs()
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %7 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakePanicWrapError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 46 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %7)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %8 = ptrtoint ptr %5 to i64
  %9 = and i64 %8, 72057594037927935
  %10 = xor i64 %9, 25399393228665167
  %11 = shl i64 %10, 17
  %12 = select i1 false, i64 0, i64 %11
  %13 = lshr i64 %10, 39
  %14 = select i1 false, i64 0, i64 %13
  %15 = or i64 %12, %14
  %16 = and i64 %15, 72057594037927935
  %17 = or i64 %16, -6557241057451442176
  store i64 %17, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %17)
  call void @runtime.ClobberPointerRegs()
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %18 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %18)
  %19 = load i64, ptr %1, align 4
  %20 = alloca %"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1", align 8
  call void @runtime.LoadHiddenPointee(ptr %20, i64 %19, i64 0)
  %21 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load %"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1", ptr %20, align 1
  store %"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" zeroinitializer, ptr %20, align 1
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1.f")
  call void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1.f"(%"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %23)
  ret void

_llgo_3:                                          ; No predecessors!
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2.f"(%"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" %0) {
_llgo_0:
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2.g"(%"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" %0) {
_llgo_0:
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).f"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @runtime.ClobberPointerRegs()
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %7 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakePanicWrapError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 46 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %7)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %8 = ptrtoint ptr %5 to i64
  %9 = and i64 %8, 72057594037927935
  %10 = xor i64 %9, 25399393228665167
  %11 = shl i64 %10, 17
  %12 = select i1 false, i64 0, i64 %11
  %13 = lshr i64 %10, 39
  %14 = select i1 false, i64 0, i64 %13
  %15 = or i64 %12, %14
  %16 = and i64 %15, 72057594037927935
  %17 = or i64 %16, -6557241057451442176
  store i64 %17, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %17)
  call void @runtime.ClobberPointerRegs()
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %18 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %18)
  %19 = load i64, ptr %1, align 4
  %20 = alloca %"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2", align 8
  call void @runtime.LoadHiddenPointee(ptr %20, i64 %19, i64 0)
  %21 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load %"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2", ptr %20, align 1
  store %"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" zeroinitializer, ptr %20, align 1
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2.f")
  call void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2.f"(%"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %23)
  ret void

_llgo_3:                                          ; No predecessors!
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).g"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @runtime.ClobberPointerRegs()
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %7 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakePanicWrapError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 46 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 1 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %7)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %8 = ptrtoint ptr %5 to i64
  %9 = and i64 %8, 72057594037927935
  %10 = xor i64 %9, 25399393228665167
  %11 = shl i64 %10, 17
  %12 = select i1 false, i64 0, i64 %11
  %13 = lshr i64 %10, 39
  %14 = select i1 false, i64 0, i64 %13
  %15 = or i64 %12, %14
  %16 = and i64 %15, 72057594037927935
  %17 = or i64 %16, -6557241057451442176
  store i64 %17, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %17)
  call void @runtime.ClobberPointerRegs()
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %18 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %18)
  %19 = load i64, ptr %1, align 4
  %20 = alloca %"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2", align 8
  call void @runtime.LoadHiddenPointee(ptr %20, i64 %19, i64 0)
  %21 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load %"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2", ptr %20, align 1
  store %"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" zeroinitializer, ptr %20, align 1
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2.g")
  call void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2.g"(%"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %23)
  ret void

_llgo_3:                                          ; No predecessors!
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.main"() {
_llgo_0:
  %0 = alloca { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 }, align 8
  %1 = alloca { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }, align 8
  %2 = alloca { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }, align 8
  %3 = alloca { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 }, align 8
  %4 = alloca { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }, align 8
  %5 = alloca { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }, align 8
  %6 = alloca { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 }, align 8
  %7 = alloca { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }, align 8
  %8 = alloca { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }, align 8
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  br i1 false, label %_llgo_23, label %_llgo_24

_llgo_1:                                          ; preds = %_llgo_25
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 21 }, ptr %10, align 8
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %10, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %11)
  unreachable

_llgo_2:                                          ; preds = %_llgo_25
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %13 = icmp ne ptr %12, null
  br i1 %13, label %_llgo_27, label %_llgo_28

_llgo_3:                                          ; preds = %_llgo_29
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 21 }, ptr %14, align 8
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %14, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %15)
  unreachable

_llgo_4:                                          ; preds = %_llgo_29
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %17 = icmp ne ptr %16, null
  br i1 %17, label %_llgo_31, label %_llgo_32

_llgo_5:                                          ; preds = %_llgo_33
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 21 }, ptr %18, align 8
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %18, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %19)
  unreachable

_llgo_6:                                          ; preds = %_llgo_33
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %20, 0
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %21, ptr null, 1
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %23, 0
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %24, ptr null, 1
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", ptr %26)
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %27, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %28, ptr null, 1
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" zeroinitializer, ptr %30, align 1
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C1")
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %31, 0
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %32, ptr %30, 1
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %33)
  %35 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I0", ptr %34)
  br i1 %35, label %_llgo_35, label %_llgo_36

_llgo_7:                                          ; preds = %_llgo_37
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 17 }, ptr %36, align 8
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %36, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %37)
  unreachable

_llgo_8:                                          ; preds = %_llgo_37
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %33)
  %39 = icmp ne ptr %38, null
  br i1 %39, label %_llgo_38, label %_llgo_39

_llgo_9:                                          ; preds = %_llgo_40
  %40 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 17 }, ptr %40, align 8
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %40, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %41)
  unreachable

_llgo_10:                                         ; preds = %_llgo_40
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %33)
  %43 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I2", ptr %42)
  br i1 %43, label %_llgo_42, label %_llgo_43

_llgo_11:                                         ; preds = %_llgo_44
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 20 }, ptr %44, align 8
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %44, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %45)
  unreachable

_llgo_12:                                         ; preds = %_llgo_44
  %46 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" zeroinitializer, ptr %46, align 1
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C2")
  %48 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %47, 0
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %48, ptr %46, 1
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %49)
  %51 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I0", ptr %50)
  br i1 %51, label %_llgo_47, label %_llgo_48

_llgo_13:                                         ; preds = %_llgo_49
  %52 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 17 }, ptr %52, align 8
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %52, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %53)
  unreachable

_llgo_14:                                         ; preds = %_llgo_49
  %54 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %49)
  %55 = icmp ne ptr %54, null
  br i1 %55, label %_llgo_50, label %_llgo_51

_llgo_15:                                         ; preds = %_llgo_52
  %56 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 17 }, ptr %56, align 8
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %56, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %57)
  unreachable

_llgo_16:                                         ; preds = %_llgo_52
  %58 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %49)
  %59 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I2", ptr %58)
  br i1 %59, label %_llgo_54, label %_llgo_55

_llgo_17:                                         ; preds = %_llgo_56
  %60 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 17 }, ptr %60, align 8
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %60, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %61)
  unreachable

_llgo_18:                                         ; preds = %_llgo_56
  %62 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" zeroinitializer, ptr %62, align 1
  %63 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C1")
  %64 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %63, 0
  %65 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %64, ptr %62, 1
  %66 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %65)
  %67 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %65, 1
  %68 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %66, 0
  %69 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %68, ptr %67, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %69, ptr %9, align 8
  %70 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %70)
  %71 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %9, align 8
  %72 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %71, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  call void @runtime.ClobberPointerRegs()
  br i1 %72, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %73 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 17 }, ptr %73, align 8
  %74 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %73, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %74)
  unreachable

_llgo_20:                                         ; preds = %_llgo_18
  %75 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %65)
  %76 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %65, 1
  %77 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %75, 0
  %78 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %77, ptr %76, 1
  %79 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %80 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %79, 0
  %81 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %80, ptr null, 1
  %82 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %78, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %81)
  br i1 %82, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %83 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 17 }, ptr %83, align 8
  %84 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %83, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %84)
  unreachable

_llgo_22:                                         ; preds = %_llgo_20
  %85 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %85)
  ret void

_llgo_23:                                         ; preds = %_llgo_0
  br label %_llgo_25

_llgo_24:                                         ; preds = %_llgo_0
  br label %_llgo_25

_llgo_25:                                         ; preds = %_llgo_24, %_llgo_23
  %86 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } [ { %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, i1 true }, %_llgo_23 ], [ zeroinitializer, %_llgo_24 ]
  store { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %86, ptr %0, align 8
  %87 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %87)
  %88 = load { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 }, ptr %0, align 8
  %89 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %88, 0
  %90 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %90)
  %91 = load { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 }, ptr %0, align 8
  %92 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %91, 1
  store { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } zeroinitializer, ptr %0, align 8
  call void @runtime.TouchConservativeSlot(ptr %0, i64 24)
  call void @runtime.ClobberPointerRegs()
  store { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } zeroinitializer, ptr %0, align 8
  call void @runtime.TouchConservativeSlot(ptr %0, i64 24)
  call void @runtime.ClobberPointerRegs()
  br i1 %92, label %_llgo_1, label %_llgo_2

_llgo_26:                                         ; No predecessors!
  unreachable

_llgo_27:                                         ; preds = %_llgo_2
  br label %_llgo_29

_llgo_28:                                         ; preds = %_llgo_2
  br label %_llgo_29

_llgo_29:                                         ; preds = %_llgo_28, %_llgo_27
  %93 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ { %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, i1 true }, %_llgo_27 ], [ zeroinitializer, %_llgo_28 ]
  store { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %93, ptr %1, align 8
  %94 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %94)
  %95 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }, ptr %1, align 8
  %96 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %95, 0
  %97 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %97)
  %98 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }, ptr %1, align 8
  %99 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %98, 1
  store { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } zeroinitializer, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 24)
  call void @runtime.ClobberPointerRegs()
  store { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } zeroinitializer, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 24)
  call void @runtime.ClobberPointerRegs()
  br i1 %99, label %_llgo_3, label %_llgo_4

_llgo_30:                                         ; No predecessors!
  unreachable

_llgo_31:                                         ; preds = %_llgo_4
  br label %_llgo_33

_llgo_32:                                         ; preds = %_llgo_4
  br label %_llgo_33

_llgo_33:                                         ; preds = %_llgo_32, %_llgo_31
  %100 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ { %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, i1 true }, %_llgo_31 ], [ zeroinitializer, %_llgo_32 ]
  store { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %100, ptr %2, align 8
  %101 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %101)
  %102 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }, ptr %2, align 8
  %103 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %102, 0
  %104 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %104)
  %105 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }, ptr %2, align 8
  %106 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %105, 1
  store { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } zeroinitializer, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 24)
  call void @runtime.ClobberPointerRegs()
  store { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } zeroinitializer, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 24)
  call void @runtime.ClobberPointerRegs()
  br i1 %106, label %_llgo_5, label %_llgo_6

_llgo_34:                                         ; No predecessors!
  unreachable

_llgo_35:                                         ; preds = %_llgo_6
  %107 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %33, 1
  %108 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %34, 0
  %109 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %108, ptr %107, 1
  %110 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %109, 0
  %111 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %110, i1 true, 1
  br label %_llgo_37

_llgo_36:                                         ; preds = %_llgo_6
  br label %_llgo_37

_llgo_37:                                         ; preds = %_llgo_36, %_llgo_35
  %112 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } [ %111, %_llgo_35 ], [ zeroinitializer, %_llgo_36 ]
  store { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %112, ptr %3, align 8
  %113 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %113)
  %114 = load { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 }, ptr %3, align 8
  %115 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %114, 0
  %116 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %116)
  %117 = load { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 }, ptr %3, align 8
  %118 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %117, 1
  store { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 24)
  call void @runtime.ClobberPointerRegs()
  store { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 24)
  call void @runtime.ClobberPointerRegs()
  br i1 %118, label %_llgo_8, label %_llgo_7

_llgo_38:                                         ; preds = %_llgo_8
  %119 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %33, 0
  %120 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %119, i1 true, 1
  br label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %121 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %120, %_llgo_38 ], [ zeroinitializer, %_llgo_39 ]
  store { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %121, ptr %4, align 8
  %122 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %122)
  %123 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }, ptr %4, align 8
  %124 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %123, 0
  %125 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %125)
  %126 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }, ptr %4, align 8
  %127 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %126, 1
  store { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 24)
  call void @runtime.ClobberPointerRegs()
  store { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 24)
  call void @runtime.ClobberPointerRegs()
  br i1 %127, label %_llgo_10, label %_llgo_9

_llgo_41:                                         ; No predecessors!
  unreachable

_llgo_42:                                         ; preds = %_llgo_10
  %128 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %33, 1
  %129 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw", ptr %42)
  %130 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %129, 0
  %131 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %130, ptr %128, 1
  %132 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %131, 0
  %133 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %132, i1 true, 1
  br label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_10
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  %134 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %133, %_llgo_42 ], [ zeroinitializer, %_llgo_43 ]
  store { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %134, ptr %5, align 8
  %135 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %135)
  %136 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }, ptr %5, align 8
  %137 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %136, 0
  %138 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %138)
  %139 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }, ptr %5, align 8
  %140 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %139, 1
  store { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 24)
  call void @runtime.ClobberPointerRegs()
  store { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 24)
  call void @runtime.ClobberPointerRegs()
  br i1 %140, label %_llgo_11, label %_llgo_12

_llgo_45:                                         ; No predecessors!
  unreachable

_llgo_46:                                         ; No predecessors!
  unreachable

_llgo_47:                                         ; preds = %_llgo_12
  %141 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %49, 1
  %142 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %50, 0
  %143 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %142, ptr %141, 1
  %144 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %143, 0
  %145 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %144, i1 true, 1
  br label %_llgo_49

_llgo_48:                                         ; preds = %_llgo_12
  br label %_llgo_49

_llgo_49:                                         ; preds = %_llgo_48, %_llgo_47
  %146 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } [ %145, %_llgo_47 ], [ zeroinitializer, %_llgo_48 ]
  store { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %146, ptr %6, align 8
  %147 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %147)
  %148 = load { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 }, ptr %6, align 8
  %149 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %148, 0
  %150 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %150)
  %151 = load { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 }, ptr %6, align 8
  %152 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %151, 1
  store { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  call void @runtime.ClobberPointerRegs()
  store { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  call void @runtime.ClobberPointerRegs()
  br i1 %152, label %_llgo_14, label %_llgo_13

_llgo_50:                                         ; preds = %_llgo_14
  %153 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %49, 0
  %154 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %153, i1 true, 1
  br label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_14
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %155 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %154, %_llgo_50 ], [ zeroinitializer, %_llgo_51 ]
  store { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %155, ptr %7, align 8
  %156 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %156)
  %157 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }, ptr %7, align 8
  %158 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %157, 0
  %159 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %159)
  %160 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }, ptr %7, align 8
  %161 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %160, 1
  store { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 24)
  call void @runtime.ClobberPointerRegs()
  store { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 24)
  call void @runtime.ClobberPointerRegs()
  br i1 %161, label %_llgo_16, label %_llgo_15

_llgo_53:                                         ; No predecessors!
  unreachable

_llgo_54:                                         ; preds = %_llgo_16
  %162 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %49, 1
  %163 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw", ptr %58)
  %164 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %163, 0
  %165 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %164, ptr %162, 1
  %166 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %165, 0
  %167 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %166, i1 true, 1
  br label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_16
  br label %_llgo_56

_llgo_56:                                         ; preds = %_llgo_55, %_llgo_54
  %168 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %167, %_llgo_54 ], [ zeroinitializer, %_llgo_55 ]
  store { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %168, ptr %8, align 8
  %169 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %169)
  %170 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }, ptr %8, align 8
  %171 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %170, 0
  %172 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %172)
  %173 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }, ptr %8, align 8
  %174 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %173, 1
  store { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 24)
  call void @runtime.ClobberPointerRegs()
  store { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 24)
  call void @runtime.ClobberPointerRegs()
  br i1 %174, label %_llgo_18, label %_llgo_17

_llgo_57:                                         ; No predecessors!
  unreachable

_llgo_58:                                         ; No predecessors!
  unreachable

_llgo_59:                                         ; No predecessors!
  unreachable

_llgo_60:                                         ; No predecessors!
  unreachable
}

declare void @runtime.ClobberPointerRegs()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakePanicWrapError"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
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

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.interequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal0")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)
