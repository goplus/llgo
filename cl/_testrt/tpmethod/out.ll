; ModuleID = 'github.com/goplus/llgo/cl/_testrt/tpmethod'
source_filename = "github.com/goplus/llgo/cl/_testrt/tpmethod"

%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
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
%"github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]" = type { { ptr, ptr } }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/tpmethod.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [7 x i8] c"foo.txt", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 882197087, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 68 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 42 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 4 }, ptr @"_llgo_func$YDtAFTesCi1EpIfGs4nqPSJzLIDwkg-8FAbVKMCx8cg", ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]).Then", ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]).Then" }] }, align 8
@1 = private unnamed_addr constant [68 x i8] c"main.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -181021205, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 68 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$jo9zmj0nvZhJfbKVeTyrrEWH6rW5Qg_YzzgpnLPI0JQ$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 42 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@2 = private unnamed_addr constant [42 x i8] c"github.com/goplus/llgo/cl/_testrt/tpmethod", align 1
@3 = private unnamed_addr constant [2 x i8] c"fn", align 1
@"_llgo_closure$yKrN3O99COYbJrrZrqSSbi_6bJYExxLvIiGn_b6kZDQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 2125374241, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 29 }, ptr @"*_llgo_closure$yKrN3O99COYbJrrZrqSSbi_6bJYExxLvIiGn_b6kZDQ" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$yKrN3O99COYbJrrZrqSSbi_6bJYExxLvIiGn_b6kZDQ$fields", i64 2, i64 2 } }, align 8
@4 = private unnamed_addr constant [29 x i8] c"func(func(main.Tuple[error]))", align 1
@"*_llgo_closure$yKrN3O99COYbJrrZrqSSbi_6bJYExxLvIiGn_b6kZDQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2085761224, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 29 }, ptr null }, ptr @"_llgo_closure$yKrN3O99COYbJrrZrqSSbi_6bJYExxLvIiGn_b6kZDQ" }, align 8
@5 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$YDtAFTesCi1EpIfGs4nqPSJzLIDwkg-8FAbVKMCx8cg" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1898256343, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 29 }, ptr @"*_llgo_func$YDtAFTesCi1EpIfGs4nqPSJzLIDwkg-8FAbVKMCx8cg" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$YDtAFTesCi1EpIfGs4nqPSJzLIDwkg-8FAbVKMCx8cg$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@"*_llgo_func$YDtAFTesCi1EpIfGs4nqPSJzLIDwkg-8FAbVKMCx8cg" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -56402465, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 29 }, ptr null }, ptr @"_llgo_func$YDtAFTesCi1EpIfGs4nqPSJzLIDwkg-8FAbVKMCx8cg" }, align 8
@"_llgo_closure$s_pTkk2q6m_bRjfPic11Z1ogmQ-VdSHpGxyzvfszwb8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1489835898, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 23 }, ptr @"*_llgo_closure$s_pTkk2q6m_bRjfPic11Z1ogmQ-VdSHpGxyzvfszwb8" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$s_pTkk2q6m_bRjfPic11Z1ogmQ-VdSHpGxyzvfszwb8$fields", i64 2, i64 2 } }, align 8
@6 = private unnamed_addr constant [23 x i8] c"func(main.Tuple[error])", align 1
@"*_llgo_closure$s_pTkk2q6m_bRjfPic11Z1ogmQ-VdSHpGxyzvfszwb8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -360672930, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 23 }, ptr null }, ptr @"_llgo_closure$s_pTkk2q6m_bRjfPic11Z1ogmQ-VdSHpGxyzvfszwb8" }, align 8
@"_llgo_func$wp7b63sFyNWPTd8VyEOOosByqpZg5pKsGThGMOTpyvo" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 837339995, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 23 }, ptr @"*_llgo_func$wp7b63sFyNWPTd8VyEOOosByqpZg5pKsGThGMOTpyvo" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$wp7b63sFyNWPTd8VyEOOosByqpZg5pKsGThGMOTpyvo$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@"*_llgo_func$wp7b63sFyNWPTd8VyEOOosByqpZg5pKsGThGMOTpyvo" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1224492555, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 23 }, ptr null }, ptr @"_llgo_func$wp7b63sFyNWPTd8VyEOOosByqpZg5pKsGThGMOTpyvo" }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 399141994, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 17 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 42 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 3 }, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*Tuple[error]).Get", ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error].Get" }] }, align 8
@7 = private unnamed_addr constant [17 x i8] c"main.Tuple[error]", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1912224846, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 17 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 42 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 3 }, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*Tuple[error]).Get", ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*Tuple[error]).Get" }] }, align 8
@8 = private unnamed_addr constant [3 x i8] c"Get", align 1
@"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1183719404, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 12 }, ptr @"*_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w$out", i64 1, i64 1 } }, align 8
@9 = private unnamed_addr constant [12 x i8] c"func() error", align 1
@"*_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1571491799, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 12 }, ptr null }, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" }, align 8
@_llgo_error = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1462738452, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr @"*_llgo_error" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU$imethods", i64 1, i64 1 } }, align 8
@10 = private unnamed_addr constant [5 x i8] c"error", align 1
@"*_llgo_error" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1621558991, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr null }, ptr @_llgo_error }, align 8
@11 = private unnamed_addr constant [5 x i8] c"Error", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1419376263, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 13 }, ptr @"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out", i64 1, i64 1 } }, align 8
@12 = private unnamed_addr constant [13 x i8] c"func() string", align 1
@"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1900367307, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 13 }, ptr null }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, align 8
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 6 }, ptr @"*_llgo_string" }, align 8
@13 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 5 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }], align 8
@"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w$out" = weak_odr constant [1 x ptr] [ptr @_llgo_error], align 8
@14 = private unnamed_addr constant [1 x i8] c"v", align 1
@"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 1 }, ptr @_llgo_error, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$wp7b63sFyNWPTd8VyEOOosByqpZg5pKsGThGMOTpyvo$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]"], align 8
@15 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@16 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$s_pTkk2q6m_bRjfPic11Z1ogmQ-VdSHpGxyzvfszwb8$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr @"_llgo_func$wp7b63sFyNWPTd8VyEOOosByqpZg5pKsGThGMOTpyvo", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$YDtAFTesCi1EpIfGs4nqPSJzLIDwkg-8FAbVKMCx8cg$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_closure$s_pTkk2q6m_bRjfPic11Z1ogmQ-VdSHpGxyzvfszwb8"], align 8
@"_llgo_closure$yKrN3O99COYbJrrZrqSSbi_6bJYExxLvIiGn_b6kZDQ$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr @"_llgo_func$YDtAFTesCi1EpIfGs4nqPSJzLIDwkg-8FAbVKMCx8cg", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$jo9zmj0nvZhJfbKVeTyrrEWH6rW5Qg_YzzgpnLPI0JQ$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 2 }, ptr @"_llgo_closure$yKrN3O99COYbJrrZrqSSbi_6bJYExxLvIiGn_b6kZDQ", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@17 = private unnamed_addr constant [4 x i8] c"Then", align 1
@"_llgo_iface$XcsCI4xRViVu44YvSfJySCCik7Xq487CpVScS6LGI70" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 56277869, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 43 }, ptr @"*_llgo_iface$XcsCI4xRViVu44YvSfJySCCik7Xq487CpVScS6LGI70" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$XcsCI4xRViVu44YvSfJySCCik7Xq487CpVScS6LGI70$imethods", i64 1, i64 1 } }, align 8
@18 = private unnamed_addr constant [43 x i8] c"interface { Then(func(main.Tuple[error])) }", align 1
@"*_llgo_iface$XcsCI4xRViVu44YvSfJySCCik7Xq487CpVScS6LGI70" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1232808231, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 43 }, ptr null }, ptr @"_llgo_iface$XcsCI4xRViVu44YvSfJySCCik7Xq487CpVScS6LGI70" }, align 8
@"_llgo_iface$XcsCI4xRViVu44YvSfJySCCik7Xq487CpVScS6LGI70$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 4 }, ptr @"_llgo_func$YDtAFTesCi1EpIfGs4nqPSJzLIDwkg-8FAbVKMCx8cg" }], align 8
@19 = private unnamed_addr constant [55 x i8] c"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", align 1

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/tpmethod.ReadFile"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  %1 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/tpmethod.Async[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]"({ ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/tpmethod.ReadFile$1", ptr null })
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1
}

define void @"github.com/goplus/llgo/cl/_testrt/tpmethod.ReadFile$1"({ ptr, ptr } %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", align 8
  call void @llvm.memset(ptr %3, i8 0, i64 16, i1 false)
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", ptr %3, i32 0, i32 0
  %6 = ptrtoint ptr %5 to i64
  %7 = and i64 %6, 72057594037927935
  %8 = xor i64 %7, 25399393228665167
  %9 = shl i64 %8, 17
  %10 = select i1 false, i64 0, i64 %9
  %11 = lshr i64 %8, 39
  %12 = select i1 false, i64 0, i64 %11
  %13 = or i64 %10, %12
  %14 = and i64 %13, 72057594037927935
  %15 = or i64 %14, -6557241057451442176
  store i64 %15, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %15)
  call void @runtime.ClobberPointerRegs()
  %16 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %16)
  %17 = load i64, ptr %1, align 4
  %18 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %18, align 8
  call void @runtime.StoreHiddenPointee(i64 %17, ptr %18, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %18, align 8
  call void @runtime.TouchConservativeSlot(ptr %18, i64 16)
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %19 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = load %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", ptr %3, align 8
  store %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  call void @runtime.ClobberPointerRegs()
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %22 = extractvalue { ptr, ptr } %0, 1
  %23 = extractvalue { ptr, ptr } %0, 0
  call void %23(ptr %22, %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %21)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/tpmethod.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
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
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %1 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/tpmethod.ReadFile"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1, 0
  %4 = getelementptr ptr, ptr %3, i64 3
  %5 = load ptr, ptr %4, align 8
  %6 = insertvalue { ptr, ptr } undef, ptr %5, 0
  %7 = insertvalue { ptr, ptr } %6, ptr %2, 1
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %9 = extractvalue { ptr, ptr } %7, 1
  %10 = extractvalue { ptr, ptr } %7, 0
  call void %10(ptr %9, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/tpmethod.main$1", ptr null })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %8)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/tpmethod.main$1"(%"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error].Get"(%"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %0)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, ptr %1, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %4 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %1, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret void
}

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/tpmethod.Async[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]"({ ptr, ptr } %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]", ptr %3, i32 0, i32 0
  %6 = ptrtoint ptr %5 to i64
  %7 = and i64 %6, 72057594037927935
  %8 = xor i64 %7, 25399393228665167
  %9 = shl i64 %8, 17
  %10 = select i1 false, i64 0, i64 %9
  %11 = lshr i64 %8, 39
  %12 = select i1 false, i64 0, i64 %11
  %13 = or i64 %10, %12
  %14 = and i64 %13, 72057594037927935
  %15 = or i64 %14, -6557241057451442176
  store i64 %15, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %15)
  call void @runtime.ClobberPointerRegs()
  %16 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %16)
  %17 = load i64, ptr %1, align 4
  %18 = alloca { ptr, ptr }, align 8
  store { ptr, ptr } %0, ptr %18, align 8
  call void @runtime.StoreHiddenPointee(i64 %17, ptr %18, i64 16)
  store { ptr, ptr } zeroinitializer, ptr %18, align 8
  call void @runtime.TouchConservativeSlot(ptr %18, i64 16)
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$XcsCI4xRViVu44YvSfJySCCik7Xq487CpVScS6LGI70", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]")
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %19, 0
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %20, ptr %3, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %21
}

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/tpmethod.ReadFile$1"(ptr %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.ReadFile$1")
  tail call void @"github.com/goplus/llgo/cl/_testrt/tpmethod.ReadFile$1"({ ptr, ptr } %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %2)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/tpmethod.main$1"(ptr %0, %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.main$1")
  tail call void @"github.com/goplus/llgo/cl/_testrt/tpmethod.main$1"(%"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %2)
  ret void
}

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error].Get"(%"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %4 = alloca %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", align 8
  call void @llvm.memset(ptr %4, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %0, ptr %4, align 8
  call void @runtime.ClobberPointerRegs()
  %5 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", ptr %4, i32 0, i32 0
  %7 = ptrtoint ptr %6 to i64
  %8 = and i64 %7, 72057594037927935
  %9 = xor i64 %8, 25399393228665167
  %10 = shl i64 %9, 17
  %11 = select i1 false, i64 0, i64 %10
  %12 = lshr i64 %9, 39
  %13 = select i1 false, i64 0, i64 %12
  %14 = or i64 %11, %13
  %15 = and i64 %14, 72057594037927935
  %16 = or i64 %15, -6557241057451442176
  store i64 %16, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %16)
  call void @runtime.ClobberPointerRegs()
  %17 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %17)
  %18 = load i64, ptr %1, align 4
  %19 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @runtime.LoadHiddenPointee(ptr %19, i64 %18, i64 16)
  %20 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %19, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %19, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %21, ptr %3, align 8
  store %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %22 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %3, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %23
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define linkonce void @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]).Then"(ptr %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca { ptr, ptr }, align 8
  %5 = alloca { ptr, ptr }, align 8
  store { ptr, ptr } %1, ptr %5, align 8
  call void @runtime.ClobberPointerRegs()
  %6 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]", ptr %0, i32 0, i32 0
  %8 = ptrtoint ptr %7 to i64
  %9 = and i64 %8, 72057594037927935
  %10 = xor i64 %9, 25399393228665167
  %11 = shl i64 %10, 17
  %12 = select i1 false, i64 0, i64 %11
  %13 = lshr i64 %10, 39
  %14 = select i1 false, i64 0, i64 %13
  %15 = or i64 %12, %14
  %16 = and i64 %15, 72057594037927935
  %17 = or i64 %16, -6557241057451442176
  store i64 %17, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %17)
  call void @runtime.ClobberPointerRegs()
  %18 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %18)
  %19 = load i64, ptr %2, align 4
  %20 = alloca { ptr, ptr }, align 8
  call void @runtime.LoadHiddenPointee(ptr %20, i64 %19, i64 16)
  %21 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load { ptr, ptr }, ptr %20, align 8
  store { ptr, ptr } zeroinitializer, ptr %20, align 8
  store { ptr, ptr } %22, ptr %4, align 8
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %23 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load { ptr, ptr }, ptr %4, align 8
  %25 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %25)
  %26 = load { ptr, ptr }, ptr %5, align 8
  store { ptr, ptr } zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  call void @runtime.ClobberPointerRegs()
  %27 = extractvalue { ptr, ptr } %24, 1
  %28 = extractvalue { ptr, ptr } %24, 0
  call void %28(ptr %27, { ptr, ptr } %26)
  store { ptr, ptr } zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret void
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*Tuple[error]).Get"(ptr %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %2 = icmp eq ptr %0, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %3 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakePanicWrapError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 55 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 3 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %3)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %4 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", ptr %0, align 8
  %6 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error].Get"(%"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %5)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, ptr %1, align 8
  %7 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %1, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8

_llgo_3:                                          ; No predecessors!
  unreachable
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.interequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %1, ptr %2)
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

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakePanicWrapError"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
