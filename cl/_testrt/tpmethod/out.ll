; ModuleID = 'github.com/goplus/llgo/cl/_testrt/tpmethod'
source_filename = "github.com/goplus/llgo/cl/_testrt/tpmethod"

%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr, i1 }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.InterfaceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]" = type { { ptr, ptr, i1 } }

@"github.com/goplus/llgo/cl/_testrt/tpmethod.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [7 x i8] c"foo.txt", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 882197087, i8 11, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 68 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 42 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 4 }, ptr @"_llgo_func$vrc5xrE0QovXnNTGfClvmMYufxcFmeqC0rC4_yTQf-U", ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]).Then$coro", ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]).Then$coro" }] }, align 8
@1 = private unnamed_addr constant [68 x i8] c"main.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -181021205, i8 5, i8 8, i8 8, i8 25, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 68 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$n0tnW21WIvE87fAnnyuTUEJntOvAlTapk8qfU61nQ44$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 42 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@2 = private unnamed_addr constant [42 x i8] c"github.com/goplus/llgo/cl/_testrt/tpmethod", align 1
@3 = private unnamed_addr constant [2 x i8] c"fn", align 1
@"_llgo_closure$POsiQBSww6XP1bv-hOO2_QodhQhT5yuKMIqLAeEVrQc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -186575088, i8 32, i8 8, i8 8, i8 25, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 129 }, ptr @"*_llgo_closure$POsiQBSww6XP1bv-hOO2_QodhQhT5yuKMIqLAeEVrQc" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$POsiQBSww6XP1bv-hOO2_QodhQhT5yuKMIqLAeEVrQc$fields", i64 3, i64 3 } }, align 8
@4 = private unnamed_addr constant [129 x i8] c"struct { $f func(struct { $f func(main.Tuple[error]); $data unsafe.Pointer; $isCoro bool }); $data unsafe.Pointer; $isCoro bool }", align 1
@"*_llgo_closure$POsiQBSww6XP1bv-hOO2_QodhQhT5yuKMIqLAeEVrQc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -638162399, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 129 }, ptr null }, ptr @"_llgo_closure$POsiQBSww6XP1bv-hOO2_QodhQhT5yuKMIqLAeEVrQc" }, align 8
@5 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$vrc5xrE0QovXnNTGfClvmMYufxcFmeqC0rC4_yTQf-U" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 496432794, i8 0, i8 8, i8 8, i8 51, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 79 }, ptr @"*_llgo_func$vrc5xrE0QovXnNTGfClvmMYufxcFmeqC0rC4_yTQf-U" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$vrc5xrE0QovXnNTGfClvmMYufxcFmeqC0rC4_yTQf-U$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@6 = private unnamed_addr constant [79 x i8] c"func(struct { $f func(main.Tuple[error]); $data unsafe.Pointer; $isCoro bool })", align 1
@"*_llgo_func$vrc5xrE0QovXnNTGfClvmMYufxcFmeqC0rC4_yTQf-U" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1132463367, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 79 }, ptr null }, ptr @"_llgo_func$vrc5xrE0QovXnNTGfClvmMYufxcFmeqC0rC4_yTQf-U" }, align 8
@"_llgo_closure$5By_Tgiwj46iHPSBrM0JpzRqj1jKJRff5Pr8m4W9ZNg" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -237888837, i8 32, i8 8, i8 8, i8 25, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 73 }, ptr @"*_llgo_closure$5By_Tgiwj46iHPSBrM0JpzRqj1jKJRff5Pr8m4W9ZNg" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$5By_Tgiwj46iHPSBrM0JpzRqj1jKJRff5Pr8m4W9ZNg$fields", i64 3, i64 3 } }, align 8
@7 = private unnamed_addr constant [73 x i8] c"struct { $f func(main.Tuple[error]); $data unsafe.Pointer; $isCoro bool }", align 1
@"*_llgo_closure$5By_Tgiwj46iHPSBrM0JpzRqj1jKJRff5Pr8m4W9ZNg" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 324690315, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 73 }, ptr null }, ptr @"_llgo_closure$5By_Tgiwj46iHPSBrM0JpzRqj1jKJRff5Pr8m4W9ZNg" }, align 8
@"_llgo_func$wp7b63sFyNWPTd8VyEOOosByqpZg5pKsGThGMOTpyvo" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 837339995, i8 0, i8 8, i8 8, i8 51, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 23 }, ptr @"*_llgo_func$wp7b63sFyNWPTd8VyEOOosByqpZg5pKsGThGMOTpyvo" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$wp7b63sFyNWPTd8VyEOOosByqpZg5pKsGThGMOTpyvo$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@8 = private unnamed_addr constant [23 x i8] c"func(main.Tuple[error])", align 1
@"*_llgo_func$wp7b63sFyNWPTd8VyEOOosByqpZg5pKsGThGMOTpyvo" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1224492555, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 23 }, ptr null }, ptr @"_llgo_func$wp7b63sFyNWPTd8VyEOOosByqpZg5pKsGThGMOTpyvo" }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 399141994, i8 5, i8 8, i8 8, i8 25, { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", i1 undef }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 17 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 42 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 3 }, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*Tuple[error]).Get$coro", ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error].Get$coro" }] }, align 8
@9 = private unnamed_addr constant [17 x i8] c"main.Tuple[error]", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1912224846, i8 11, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 17 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 42 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 3 }, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*Tuple[error]).Get$coro", ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*Tuple[error]).Get$coro" }] }, align 8
@10 = private unnamed_addr constant [3 x i8] c"Get", align 1
@"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1183719404, i8 0, i8 8, i8 8, i8 51, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 12 }, ptr @"*_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w$out", i64 1, i64 1 } }, align 8
@11 = private unnamed_addr constant [12 x i8] c"func() error", align 1
@"*_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1571491799, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 12 }, ptr null }, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" }, align 8
@_llgo_error = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1462738452, i8 4, i8 8, i8 8, i8 20, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 5 }, ptr @"*_llgo_error" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU$imethods", i64 1, i64 1 } }, align 8
@12 = private unnamed_addr constant [5 x i8] c"error", align 1
@"*_llgo_error" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1621558991, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 5 }, ptr null }, ptr @_llgo_error }, align 8
@13 = private unnamed_addr constant [5 x i8] c"Error", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1419376263, i8 0, i8 8, i8 8, i8 51, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 13 }, ptr @"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out", i64 1, i64 1 } }, align 8
@14 = private unnamed_addr constant [13 x i8] c"func() string", align 1
@"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1900367307, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 13 }, ptr null }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, align 8
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, ptr @"*_llgo_string" }, align 8
@15 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 5 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }], align 8
@"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w$out" = weak_odr constant [1 x ptr] [ptr @_llgo_error], align 8
@16 = private unnamed_addr constant [1 x i8] c"v", align 1
@"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 1 }, ptr @_llgo_error, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$wp7b63sFyNWPTd8VyEOOosByqpZg5pKsGThGMOTpyvo$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]"], align 8
@17 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@18 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@19 = private unnamed_addr constant [7 x i8] c"$isCoro", align 1
@_llgo_bool = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 554183389, i8 12, i8 1, i8 1, i8 33, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 4 }, ptr @"*_llgo_bool" }, align 8
@20 = private unnamed_addr constant [4 x i8] c"bool", align 1
@"*_llgo_bool" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1896950390, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 4 }, ptr null }, ptr @_llgo_bool }, align 8
@"_llgo_closure$5By_Tgiwj46iHPSBrM0JpzRqj1jKJRff5Pr8m4W9ZNg$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr @"_llgo_func$wp7b63sFyNWPTd8VyEOOosByqpZg5pKsGThGMOTpyvo", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 7 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$vrc5xrE0QovXnNTGfClvmMYufxcFmeqC0rC4_yTQf-U$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_closure$5By_Tgiwj46iHPSBrM0JpzRqj1jKJRff5Pr8m4W9ZNg"], align 8
@"_llgo_closure$POsiQBSww6XP1bv-hOO2_QodhQhT5yuKMIqLAeEVrQc$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr @"_llgo_func$vrc5xrE0QovXnNTGfClvmMYufxcFmeqC0rC4_yTQf-U", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 7 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$n0tnW21WIvE87fAnnyuTUEJntOvAlTapk8qfU61nQ44$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 2 }, ptr @"_llgo_closure$POsiQBSww6XP1bv-hOO2_QodhQhT5yuKMIqLAeEVrQc", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@21 = private unnamed_addr constant [4 x i8] c"Then", align 1
@"_llgo_iface$gykC2lsTbBz81JXoc8tEqRz3RSVD-BhNyj20cinSrYU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1218339639, i8 0, i8 8, i8 8, i8 20, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 93 }, ptr @"*_llgo_iface$gykC2lsTbBz81JXoc8tEqRz3RSVD-BhNyj20cinSrYU" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$gykC2lsTbBz81JXoc8tEqRz3RSVD-BhNyj20cinSrYU$imethods", i64 1, i64 1 } }, align 8
@22 = private unnamed_addr constant [93 x i8] c"interface { Then(struct { $f func(main.Tuple[error]); $data unsafe.Pointer; $isCoro bool }) }", align 1
@"*_llgo_iface$gykC2lsTbBz81JXoc8tEqRz3RSVD-BhNyj20cinSrYU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -414640355, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 93 }, ptr null }, ptr @"_llgo_iface$gykC2lsTbBz81JXoc8tEqRz3RSVD-BhNyj20cinSrYU" }, align 8
@"_llgo_iface$gykC2lsTbBz81JXoc8tEqRz3RSVD-BhNyj20cinSrYU$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 4 }, ptr @"_llgo_func$vrc5xrE0QovXnNTGfClvmMYufxcFmeqC0rC4_yTQf-U" }], align 8

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/tpmethod.ReadFile"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  %1 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/tpmethod.Async[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]"({ ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/tpmethod.ReadFile$1", ptr null, i1 false })
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.ReadFile$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) #0 {
_llgo_0:
  %1 = alloca { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %2 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/tpmethod.Async[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]"({ ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/tpmethod.ReadFile$1", ptr null, i1 false })
  %6 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %1, i32 0, i32 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5, ptr %6, align 8
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %7 = call i64 @llvm.coro.size.i64()
  %8 = call ptr @malloc(i64 %7)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi ptr [ null, %_llgo_0 ], [ %8, %_llgo_2 ]
  %10 = call ptr @llvm.coro.begin(token %3, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %11 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_5:                                          ; preds = %_llgo_1
  %12 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %12)
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %14 = call ptr @llvm.coro.free(token %3, ptr %10)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/tpmethod.ReadFile$1"({ ptr, ptr, i1 } %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", ptr %1, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %2, align 8
  %3 = load %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", ptr %1, align 8
  %4 = extractvalue { ptr, ptr, i1 } %0, 0
  %5 = extractvalue { ptr, ptr, i1 } %0, 1
  %6 = extractvalue { ptr, ptr, i1 } %0, 2
  br i1 %6, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  call void %4(ptr %5, %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %3)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  %7 = call ptr %4(ptr %5, %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %7)
  call void @llvm.coro.destroy(ptr %7)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.ReadFile$1$coro"({ ptr, ptr, i1 } %0) #0 {
_llgo_0:
  %1 = alloca { ptr }, align 8
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = alloca %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", align 8
  call void @llvm.memset(ptr %5, i8 0, i64 16, i1 false)
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", ptr %5, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %6, align 8
  %7 = load %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", ptr %5, align 8
  %8 = extractvalue { ptr, ptr, i1 } %0, 0
  %9 = extractvalue { ptr, ptr, i1 } %0, 1
  %10 = extractvalue { ptr, ptr, i1 } %0, 2
  br i1 %10, label %_llgo_8, label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %11 = call i64 @llvm.coro.size.i64()
  %12 = call ptr @malloc(i64 %11)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %13 = phi ptr [ null, %_llgo_0 ], [ %12, %_llgo_2 ]
  %14 = call ptr @llvm.coro.begin(token %3, ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_14, %_llgo_13
  %15 = call i1 @llvm.coro.end(ptr %14, i1 false, token none)
  ret ptr %14

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_17, %_llgo_14, %_llgo_13
  %16 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %16)
  %17 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %17, label %_llgo_4 [
    i8 0, label %_llgo_19
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_19, %_llgo_5
  %18 = call ptr @llvm.coro.free(token %3, ptr %14)
  call void @free(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  call void %8(ptr %9, %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %7)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  %19 = call ptr %8(ptr %9, %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %7)
  br label %_llgo_11

_llgo_9:                                          ; preds = %_llgo_18, %_llgo_7
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_11
  %20 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %19)
  br i1 %20, label %_llgo_17, label %_llgo_18

_llgo_11:                                         ; preds = %_llgo_16, %_llgo_15, %_llgo_8
  %21 = phi i1 [ true, %_llgo_8 ], [ false, %_llgo_13 ], [ false, %_llgo_14 ]
  %22 = call i1 @llvm.coro.done(ptr %19)
  br i1 %22, label %_llgo_10, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  br i1 %21, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %23 = call ptr @llvm.coro.promise(ptr %19, i32 8, i1 false)
  %24 = getelementptr inbounds { ptr }, ptr %23, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %24, ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %19)
  %25 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %25, label %_llgo_4 [
    i8 0, label %_llgo_15
    i8 1, label %_llgo_5
  ]

_llgo_14:                                         ; preds = %_llgo_12
  %26 = call ptr @llvm.coro.promise(ptr %19, i32 8, i1 false)
  %27 = getelementptr inbounds { ptr }, ptr %26, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %27, ptr %14)
  %28 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %28, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_5
  ]

_llgo_15:                                         ; preds = %_llgo_13
  br label %_llgo_11

_llgo_16:                                         ; preds = %_llgo_14
  br label %_llgo_11

_llgo_17:                                         ; preds = %_llgo_10
  %29 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %29)
  br label %_llgo_5

_llgo_18:                                         ; preds = %_llgo_10
  call void @llvm.coro.destroy(ptr %19)
  br label %_llgo_9

_llgo_19:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/tpmethod.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/tpmethod.main"() {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/tpmethod.ReadFile"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 })
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %2 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %3 = getelementptr ptr, ptr %2, i64 3
  %4 = load ptr, ptr %3, align 8
  %5 = insertvalue { ptr, ptr, i1 } undef, ptr %4, 0
  %6 = insertvalue { ptr, ptr, i1 } %5, ptr %1, 1
  %7 = extractvalue { ptr, ptr, i1 } %6, 1
  %8 = extractvalue { ptr, ptr, i1 } %6, 2
  %9 = extractvalue { ptr, ptr, i1 } %6, 0
  %10 = call ptr %9(ptr %7, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/tpmethod.main$1", ptr null, i1 false })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %10)
  call void @llvm.coro.destroy(ptr %10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %4 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/tpmethod.ReadFile"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 })
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %4)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, 0
  %7 = getelementptr ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = insertvalue { ptr, ptr, i1 } undef, ptr %8, 0
  %10 = insertvalue { ptr, ptr, i1 } %9, ptr %5, 1
  %11 = extractvalue { ptr, ptr, i1 } %10, 1
  %12 = extractvalue { ptr, ptr, i1 } %10, 2
  %13 = extractvalue { ptr, ptr, i1 } %10, 0
  %14 = call ptr %13(ptr %11, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/tpmethod.main$1", ptr null, i1 false })
  br label %_llgo_8

_llgo_2:                                          ; preds = %_llgo_0
  %15 = call i64 @llvm.coro.size.i64()
  %16 = call ptr @malloc(i64 %15)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %17 = phi ptr [ null, %_llgo_0 ], [ %16, %_llgo_2 ]
  %18 = call ptr @llvm.coro.begin(token %2, ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_11, %_llgo_10
  %19 = call i1 @llvm.coro.end(ptr %18, i1 false, token none)
  ret ptr %18

_llgo_5:                                          ; preds = %_llgo_15, %_llgo_14, %_llgo_11, %_llgo_10
  %20 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %20)
  %21 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %21, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_16, %_llgo_5
  %22 = call ptr @llvm.coro.free(token %2, ptr %18)
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
  %27 = getelementptr inbounds { ptr }, ptr %26, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %27, ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %14)
  %28 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %28, label %_llgo_4 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9
  %29 = call ptr @llvm.coro.promise(ptr %14, i32 8, i1 false)
  %30 = getelementptr inbounds { ptr }, ptr %29, i32 0, i32 0
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
  call void @llvm.coro.destroy(ptr %14)
  br label %_llgo_5

_llgo_16:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/tpmethod.main$1"(%"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %0) {
_llgo_0:
  %1 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error].Get"(%"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.main$1$coro"(%"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %0) #0 {
_llgo_0:
  %1 = alloca { ptr }, align 8
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error].Get"(%"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %6 = call i64 @llvm.coro.size.i64()
  %7 = call ptr @malloc(i64 %6)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %8 = phi ptr [ null, %_llgo_0 ], [ %7, %_llgo_2 ]
  %9 = call ptr @llvm.coro.begin(token %3, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %10 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_5:                                          ; preds = %_llgo_1
  %11 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %11)
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %13 = call ptr @llvm.coro.free(token %3, ptr %9)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/tpmethod.Async[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]"({ ptr, ptr, i1 } %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]", ptr %1, i32 0, i32 0
  store { ptr, ptr, i1 } %0, ptr %2, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$gykC2lsTbBz81JXoc8tEqRz3RSVD-BhNyj20cinSrYU", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]")
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.Async[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]$coro"({ ptr, ptr, i1 } %0) #0 {
_llgo_0:
  %1 = alloca { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %2 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]", ptr %5, i32 0, i32 0
  store { ptr, ptr, i1 } %0, ptr %6, align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$gykC2lsTbBz81JXoc8tEqRz3RSVD-BhNyj20cinSrYU", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]")
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %7, 0
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, ptr %5, 1
  %10 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %1, i32 0, i32 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, ptr %10, align 8
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %11 = call i64 @llvm.coro.size.i64()
  %12 = call ptr @malloc(i64 %11)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %13 = phi ptr [ null, %_llgo_0 ], [ %12, %_llgo_2 ]
  %14 = call ptr @llvm.coro.begin(token %3, ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %15 = call i1 @llvm.coro.end(ptr %14, i1 false, token none)
  ret ptr %14

_llgo_5:                                          ; preds = %_llgo_1
  %16 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %16)
  %17 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %17, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %18 = call ptr @llvm.coro.free(token %3, ptr %14)
  call void @free(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/tpmethod.ReadFile$1"(ptr %0, { ptr, ptr, i1 } %1) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/cl/_testrt/tpmethod.ReadFile$1"({ ptr, ptr, i1 } %1)
  ret void
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
declare i1 @llvm.coro.end(ptr, i1, token) #2

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr)

; Function Attrs: nounwind
declare i8 @llvm.coro.suspend(token, i1) #2

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #4

declare void @free(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr)

declare void @llvm.coro.destroy(ptr)

; Function Attrs: nounwind memory(argmem: readwrite)
declare i1 @llvm.coro.done(ptr nocapture readonly) #6

; Function Attrs: nounwind memory(none)
declare ptr @llvm.coro.promise(ptr nocapture, i32, i1) #3

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/tpmethod.main$1"(ptr %0, %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %1) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/cl/_testrt/tpmethod.main$1"(%"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %1)
  ret void
}

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error].Get"(%"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", ptr %1, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error].Get$coro"(%"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %0) #0 {
_llgo_0:
  %1 = alloca { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %2 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = alloca %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", align 8
  call void @llvm.memset(ptr %5, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %0, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", ptr %5, i32 0, i32 0
  %7 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %6, align 8
  %8 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %1, i32 0, i32 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, ptr %8, align 8
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %9 = call i64 @llvm.coro.size.i64()
  %10 = call ptr @malloc(i64 %9)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %11 = phi ptr [ null, %_llgo_0 ], [ %10, %_llgo_2 ]
  %12 = call ptr @llvm.coro.begin(token %3, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %13 = call i1 @llvm.coro.end(ptr %12, i1 false, token none)
  ret ptr %12

_llgo_5:                                          ; preds = %_llgo_1
  %14 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %14)
  %15 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %15, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %16 = call ptr @llvm.coro.free(token %3, ptr %12)
  call void @free(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define linkonce void @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]).Then"(ptr %0, { ptr, ptr, i1 } %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]", ptr %0, i32 0, i32 0
  %3 = load { ptr, ptr, i1 }, ptr %2, align 8
  %4 = extractvalue { ptr, ptr, i1 } %3, 0
  %5 = extractvalue { ptr, ptr, i1 } %3, 1
  %6 = extractvalue { ptr, ptr, i1 } %3, 2
  br i1 %6, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  call void %4(ptr %5, { ptr, ptr, i1 } %1)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  %7 = call ptr %4(ptr %5, { ptr, ptr, i1 } %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %7)
  call void @llvm.coro.destroy(ptr %7)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]).Then$coro"(ptr %0, { ptr, ptr, i1 } %1) #0 {
_llgo_0:
  %2 = alloca { ptr }, align 8
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]", ptr %0, i32 0, i32 0
  %7 = load { ptr, ptr, i1 }, ptr %6, align 8
  %8 = extractvalue { ptr, ptr, i1 } %7, 0
  %9 = extractvalue { ptr, ptr, i1 } %7, 1
  %10 = extractvalue { ptr, ptr, i1 } %7, 2
  br i1 %10, label %_llgo_8, label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %11 = call i64 @llvm.coro.size.i64()
  %12 = call ptr @malloc(i64 %11)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %13 = phi ptr [ null, %_llgo_0 ], [ %12, %_llgo_2 ]
  %14 = call ptr @llvm.coro.begin(token %4, ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_14, %_llgo_13
  %15 = call i1 @llvm.coro.end(ptr %14, i1 false, token none)
  ret ptr %14

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_17, %_llgo_14, %_llgo_13
  %16 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %16)
  %17 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %17, label %_llgo_4 [
    i8 0, label %_llgo_19
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_19, %_llgo_5
  %18 = call ptr @llvm.coro.free(token %4, ptr %14)
  call void @free(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  call void %8(ptr %9, { ptr, ptr, i1 } %1)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  %19 = call ptr %8(ptr %9, { ptr, ptr, i1 } %1)
  br label %_llgo_11

_llgo_9:                                          ; preds = %_llgo_18, %_llgo_7
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_11
  %20 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %19)
  br i1 %20, label %_llgo_17, label %_llgo_18

_llgo_11:                                         ; preds = %_llgo_16, %_llgo_15, %_llgo_8
  %21 = phi i1 [ true, %_llgo_8 ], [ false, %_llgo_13 ], [ false, %_llgo_14 ]
  %22 = call i1 @llvm.coro.done(ptr %19)
  br i1 %22, label %_llgo_10, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  br i1 %21, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %23 = call ptr @llvm.coro.promise(ptr %19, i32 8, i1 false)
  %24 = getelementptr inbounds { ptr }, ptr %23, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %24, ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %19)
  %25 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %25, label %_llgo_4 [
    i8 0, label %_llgo_15
    i8 1, label %_llgo_5
  ]

_llgo_14:                                         ; preds = %_llgo_12
  %26 = call ptr @llvm.coro.promise(ptr %19, i32 8, i1 false)
  %27 = getelementptr inbounds { ptr }, ptr %26, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %27, ptr %14)
  %28 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %28, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_5
  ]

_llgo_15:                                         ; preds = %_llgo_13
  br label %_llgo_11

_llgo_16:                                         ; preds = %_llgo_14
  br label %_llgo_11

_llgo_17:                                         ; preds = %_llgo_10
  %29 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %29)
  br label %_llgo_5

_llgo_18:                                         ; preds = %_llgo_10
  call void @llvm.coro.destroy(ptr %19)
  br label %_llgo_9

_llgo_19:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*Tuple[error]).Get"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", ptr %0, align 8
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error].Get"(%"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %1)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*Tuple[error]).Get$coro"(ptr %0) #0 {
_llgo_0:
  %1 = alloca { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %2 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = load %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", ptr %0, align 8
  %6 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error].Get"(%"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %5)
  %7 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %1, i32 0, i32 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, ptr %7, align 8
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
  %13 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %1, i32 0, i32 0
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

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

attributes #0 = { presplitcoroutine }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nounwind }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nounwind memory(argmem: read) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind memory(argmem: readwrite) }
