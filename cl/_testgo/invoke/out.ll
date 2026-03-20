; ModuleID = 'github.com/goplus/llgo/cl/_testgo/invoke'
source_filename = "github.com/goplus/llgo/cl/_testgo/invoke"

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
%"github.com/goplus/llgo/runtime/abi.ArrayType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.SliceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/cl/_testgo/invoke.T" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String" }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testgo/invoke.T5" = type { i64 }
%"github.com/goplus/llgo/cl/_testgo/invoke.T6" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/invoke.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [6 x i8] c"invoke", align 1
@1 = private unnamed_addr constant [42 x i8] c"github.com/goplus/llgo/cl/_testgo/invoke.T", align 1
@2 = private unnamed_addr constant [6 x i8] c"Invoke", align 1
@3 = private unnamed_addr constant [7 x i8] c"invoke1", align 1
@4 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testgo/invoke.T1", align 1
@5 = private unnamed_addr constant [7 x i8] c"invoke2", align 1
@6 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testgo/invoke.T2", align 1
@7 = private unnamed_addr constant [7 x i8] c"invoke3", align 1
@8 = private unnamed_addr constant [7 x i8] c"invoke4", align 1
@9 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testgo/invoke.T4", align 1
@10 = private unnamed_addr constant [7 x i8] c"invoke5", align 1
@11 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testgo/invoke.T5", align 1
@12 = private unnamed_addr constant [7 x i8] c"invoke6", align 1
@13 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testgo/invoke.T6", align 1
@14 = private unnamed_addr constant [5 x i8] c"hello", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 -1498395585, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/invoke.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 40 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T.Invoke" }] }, align 8
@15 = private unnamed_addr constant [6 x i8] c"main.T", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 981522622, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 40 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Invoke" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 6 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Method", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Method" }] }, align 8
@16 = private unnamed_addr constant [40 x i8] c"github.com/goplus/llgo/cl/_testgo/invoke", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2131144854, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 10 }, ptr @"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out", i64 1, i64 1 } }, align 8
@17 = private unnamed_addr constant [10 x i8] c"func() int", align 1
@"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1805835775, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 10 }, ptr null }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, align 8
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 2, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 3 }, ptr @"*_llgo_int" }, align 8
@18 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@19 = private unnamed_addr constant [6 x i8] c"Method", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@20 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@21 = private unnamed_addr constant [1 x i8] c"s", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 6 }, ptr @"*_llgo_string" }, align 8
@22 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"github.com/goplus/llgo/cl/_testgo/invoke.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 1 }, ptr @_llgo_string, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1747927304, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 26 }, ptr @"*_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0$imethods", i64 1, i64 1 } }, align 8
@23 = private unnamed_addr constant [26 x i8] c"interface { Invoke() int }", align 1
@"*_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1358691488, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 26 }, ptr null }, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0" }, align 8
@"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }], align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 747982523, i8 13, i8 8, i8 8, i8 2, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 7 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 40 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T1).Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T1.Invoke" }] }, align 8
@24 = private unnamed_addr constant [7 x i8] c"main.T1", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1933429878, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 7 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 40 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T1).Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T1).Invoke" }] }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 1664000404, i8 5, i8 8, i8 8, i8 14, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.f64equal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 7 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 40 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T2).Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T2.Invoke" }] }, align 8
@25 = private unnamed_addr constant [7 x i8] c"main.T2", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -629524883, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 7 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 40 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T2).Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T2).Invoke" }] }, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1030757803, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 7 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 40 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T3).Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T3).Invoke" }] }, align 8
@26 = private unnamed_addr constant [7 x i8] c"main.T3", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 -1524720381, i8 13, i8 1, i8 1, i8 3, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 7 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 40 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.ArrayType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -404804171, i8 13, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 7 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4" }, ptr @_llgo_int, ptr @"[]_llgo_int", i64 1 }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 40 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T4).Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T4.Invoke" }] }, align 8
@27 = private unnamed_addr constant [7 x i8] c"main.T4", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1496326536, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 7 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 40 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T4).Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T4).Invoke" }] }, align 8
@"[]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -1129561019, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @"*[]_llgo_int" }, ptr @_llgo_int }, align 8
@28 = private unnamed_addr constant [5 x i8] c"[]int", align 1
@"*[]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1428175521, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr null }, ptr @"[]_llgo_int" }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1908790280, i8 13, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 7 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/invoke.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 40 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T5).Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T5.Invoke" }] }, align 8
@29 = private unnamed_addr constant [7 x i8] c"main.T5", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -656389711, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 7 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 40 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T5).Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T5).Invoke" }] }, align 8
@30 = private unnamed_addr constant [1 x i8] c"n", align 1
@"github.com/goplus/llgo/cl/_testgo/invoke.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1901209176, i8 37, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 7 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 40 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T6).Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T6.Invoke" }] }, align 8
@31 = private unnamed_addr constant [7 x i8] c"main.T6", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1006875505, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 7 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 40 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T6).Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T6).Invoke" }] }, align 8
@32 = private unnamed_addr constant [2 x i8] c"$f", align 1
@33 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@34 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 2 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -551363837, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 36 }, ptr @"*_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI$imethods", i64 2, i64 2 } }, align 8
@35 = private unnamed_addr constant [36 x i8] c"interface { Invoke() int; Method() }", align 1
@"*_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 537463710, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 36 }, ptr null }, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI" }, align 8
@"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI$imethods" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 6 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }], align 8
@36 = private unnamed_addr constant [5 x i8] c"world", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.I" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1376264003, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.I" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0$imethods", i64 1, i64 1 } }, align 8
@37 = private unnamed_addr constant [6 x i8] c"main.I", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.I" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1163777978, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.I" }, align 8
@38 = private unnamed_addr constant [14 x i8] c"interface {  }", align 1
@39 = private unnamed_addr constant [42 x i8] c"github.com/goplus/llgo/cl/_testgo/invoke.I", align 1
@_llgo_any = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1376530322, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 12 }, ptr @"*_llgo_any" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@40 = private unnamed_addr constant [12 x i8] c"interface {}", align 1
@"*_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1741196194, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 12 }, ptr null }, ptr @_llgo_any }, align 8

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T.Invoke"(%"github.com/goplus/llgo/cl/_testgo/invoke.T" %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca { i64, i64 }, align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %4, align 8
  %5 = alloca %"github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  call void @llvm.memset(ptr %5, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T" %0, ptr %5, align 8
  call void @runtime.ClobberPointerRegs()
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/invoke.T", ptr %5, i32 0, i32 0
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
  store i64 %17, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %17)
  call void @runtime.ClobberPointerRegs()
  %18 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %18)
  %19 = load i64, ptr %1, align 4
  %20 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @runtime.LoadHiddenPointee(ptr %20, i64 %19, i64 16)
  %21 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %20, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %20, align 8
  %23 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %22, ptr %23, align 8
  %24 = icmp eq ptr %23, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %23, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %25, ptr %4, align 8
  %26 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %25, 0
  %27 = ptrtoint ptr %26 to i64
  %28 = and i64 %27, 72057594037927935
  %29 = xor i64 %28, 25399393228665167
  %30 = shl i64 %29, 17
  %31 = select i1 false, i64 0, i64 %30
  %32 = lshr i64 %29, 39
  %33 = select i1 false, i64 0, i64 %32
  %34 = or i64 %31, %33
  %35 = and i64 %34, 72057594037927935
  %36 = or i64 %35, -6557241057451442176
  %37 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %25, 1
  %38 = insertvalue { i64, i64 } undef, i64 %36, 0
  %39 = insertvalue { i64, i64 } %38, i64 %37, 1
  store { i64, i64 } %39, ptr %3, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %23, align 8
  call void @runtime.TouchConservativeSlot(ptr %23, i64 16)
  call void @runtime.ClobberPointerRegs()
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T" zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %40 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %41 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %41)
  %42 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %4, align 8
  store { i64, i64 } zeroinitializer, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %42)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %40)
  ret i64 0
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Invoke"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca %"github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @runtime.ClobberPointerRegs()
  %5 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = load ptr, ptr %4, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %8 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakePanicWrapError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %8)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %9 = ptrtoint ptr %6 to i64
  %10 = and i64 %9, 72057594037927935
  %11 = xor i64 %10, 25399393228665167
  %12 = shl i64 %11, 17
  %13 = select i1 false, i64 0, i64 %12
  %14 = lshr i64 %11, 39
  %15 = select i1 false, i64 0, i64 %14
  %16 = or i64 %13, %15
  %17 = and i64 %16, 72057594037927935
  %18 = or i64 %17, -6557241057451442176
  store i64 %18, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %18)
  call void @runtime.ClobberPointerRegs()
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %19 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = load i64, ptr %1, align 4
  %21 = alloca %"github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  call void @runtime.LoadHiddenPointee(ptr %21, i64 %20, i64 16)
  %22 = icmp eq ptr %21, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T", ptr %21, align 8
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T" zeroinitializer, ptr %21, align 8
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T" %23, ptr %3, align 8
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T.Invoke")
  %25 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %25)
  %26 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T", ptr %3, align 8
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T" zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  call void @runtime.ClobberPointerRegs()
  %27 = call i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T.Invoke"(%"github.com/goplus/llgo/cl/_testgo/invoke.T" %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %24)
  ret i64 %27

_llgo_3:                                          ; No predecessors!
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Method"(ptr %0) {
_llgo_0:
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T1.Invoke"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1)
  ret i64 1
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.(*T1).Invoke"(ptr %0) {
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
  %7 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakePanicWrapError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 })
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
  %20 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %20, i64 %19, i64 8)
  %21 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load i64, ptr %20, align 4
  store i64 0, ptr %20, align 4
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T1.Invoke")
  %24 = call i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T1.Invoke"(i64 %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %23)
  ret i64 %24

_llgo_3:                                          ; No predecessors!
  unreachable
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T2.Invoke"(double %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1)
  ret i64 2
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.(*T2).Invoke"(ptr %0) {
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
  %7 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakePanicWrapError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 })
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
  %20 = alloca double, align 8
  call void @runtime.LoadHiddenPointee(ptr %20, i64 %19, i64 8)
  %21 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load double, ptr %20, align 8
  store double 0.000000e+00, ptr %20, align 8
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T2.Invoke")
  %24 = call i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T2.Invoke"(double %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %23)
  ret i64 %24

_llgo_3:                                          ; No predecessors!
  unreachable
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.(*T3).Invoke"(ptr %0) {
_llgo_0:
  %1 = alloca ptr, align 8
  store ptr %0, ptr %1, align 8
  call void @runtime.ClobberPointerRegs()
  %2 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load i8, ptr %3, align 1
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %7 = sext i8 %5 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %6)
  ret i64 3
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T4.Invoke"([1 x i64] %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca [1 x i64], align 8
  call void @llvm.memset(ptr %3, i8 0, i64 8, i1 false)
  store [1 x i64] %0, ptr %3, align 4
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %6 = getelementptr inbounds i64, ptr %3, i64 %5
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
  %19 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %19, i64 %18, i64 8)
  %20 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %19, align 4
  store i64 0, ptr %19, align 4
  store [1 x i64] zeroinitializer, ptr %3, align 4
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %22)
  ret i64 4
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.(*T4).Invoke"(ptr %0) {
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
  %7 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakePanicWrapError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 })
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
  %20 = alloca [1 x i64], align 8
  call void @runtime.LoadHiddenPointee(ptr %20, i64 %19, i64 8)
  %21 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load [1 x i64], ptr %20, align 4
  store [1 x i64] zeroinitializer, ptr %20, align 4
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T4.Invoke")
  %24 = call i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T4.Invoke"([1 x i64] %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %23)
  ret i64 %24

_llgo_3:                                          ; No predecessors!
  unreachable
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T5.Invoke"(%"github.com/goplus/llgo/cl/_testgo/invoke.T5" %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca %"github.com/goplus/llgo/cl/_testgo/invoke.T5", align 8
  call void @llvm.memset(ptr %3, i8 0, i64 8, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T5" %0, ptr %3, align 4
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/invoke.T5", ptr %3, i32 0, i32 0
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
  %18 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %18, i64 %17, i64 8)
  %19 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = load i64, ptr %18, align 4
  store i64 0, ptr %18, align 4
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T5" zeroinitializer, ptr %3, align 4
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %21)
  ret i64 5
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.(*T5).Invoke"(ptr %0) {
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
  %7 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakePanicWrapError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 })
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
  %20 = alloca %"github.com/goplus/llgo/cl/_testgo/invoke.T5", align 8
  call void @runtime.LoadHiddenPointee(ptr %20, i64 %19, i64 8)
  %21 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T5", ptr %20, align 4
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T5" zeroinitializer, ptr %20, align 4
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T5.Invoke")
  %24 = call i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T5.Invoke"(%"github.com/goplus/llgo/cl/_testgo/invoke.T5" %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %23)
  ret i64 %24

_llgo_3:                                          ; No predecessors!
  unreachable
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T6.Invoke"(%"github.com/goplus/llgo/cl/_testgo/invoke.T6" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %2 = extractvalue %"github.com/goplus/llgo/cl/_testgo/invoke.T6" %0, 1
  %3 = extractvalue %"github.com/goplus/llgo/cl/_testgo/invoke.T6" %0, 0
  %4 = call i64 %3(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %5)
  ret i64 6
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.(*T6).Invoke"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca %"github.com/goplus/llgo/cl/_testgo/invoke.T6", align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @runtime.ClobberPointerRegs()
  %5 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = load ptr, ptr %4, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %8 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakePanicWrapError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %8)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %9 = ptrtoint ptr %6 to i64
  %10 = and i64 %9, 72057594037927935
  %11 = xor i64 %10, 25399393228665167
  %12 = shl i64 %11, 17
  %13 = select i1 false, i64 0, i64 %12
  %14 = lshr i64 %11, 39
  %15 = select i1 false, i64 0, i64 %14
  %16 = or i64 %13, %15
  %17 = and i64 %16, 72057594037927935
  %18 = or i64 %17, -6557241057451442176
  store i64 %18, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %18)
  call void @runtime.ClobberPointerRegs()
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %19 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = load i64, ptr %1, align 4
  %21 = alloca %"github.com/goplus/llgo/cl/_testgo/invoke.T6", align 8
  call void @runtime.LoadHiddenPointee(ptr %21, i64 %20, i64 16)
  %22 = icmp eq ptr %21, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T6", ptr %21, align 8
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T6" zeroinitializer, ptr %21, align 8
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T6" %23, ptr %3, align 8
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T6.Invoke")
  %25 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %25)
  %26 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T6", ptr %3, align 8
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T6" zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  call void @runtime.ClobberPointerRegs()
  %27 = call i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T6.Invoke"(%"github.com/goplus/llgo/cl/_testgo/invoke.T6" %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %24)
  ret i64 %27

_llgo_3:                                          ; No predecessors!
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testgo/invoke.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %2 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %3 = getelementptr ptr, ptr %2, i64 3
  %4 = load ptr, ptr %3, align 8
  %5 = insertvalue { ptr, ptr } undef, ptr %4, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %1, 1
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %8 = extractvalue { ptr, ptr } %6, 1
  %9 = extractvalue { ptr, ptr } %6, 0
  %10 = call i64 %9(ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %7)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %11)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/invoke.main"() {
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
  %20 = alloca %"github.com/goplus/llgo/cl/_testgo/invoke.T6", align 8
  %21 = alloca %"github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  %22 = alloca %"github.com/goplus/llgo/cl/_testgo/invoke.T6", align 8
  %23 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %24 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %25 = alloca i64, align 8
  %26 = alloca ptr, align 8
  store ptr null, ptr %26, align 8
  %27 = alloca %"github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  %28 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %29 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  %30 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %31 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %32 = call i64 @runtime.AllocZHidden(i64 16)
  store i64 %32, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %32)
  %33 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %33)
  %34 = load i64, ptr %0, align 4
  %35 = and i64 %34, 72057594037927935
  %36 = lshr i64 %35, 17
  %37 = select i1 false, i64 0, i64 %36
  %38 = shl i64 %35, 39
  %39 = select i1 false, i64 0, i64 %38
  %40 = or i64 %37, %39
  %41 = and i64 %40, 72057594037927935
  %42 = xor i64 %41, 25399393228665167
  %43 = inttoptr i64 %42 to ptr
  %44 = icmp eq ptr %43, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %44)
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/invoke.T", ptr %43, i32 0, i32 0
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
  %56 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %56)
  %57 = load i64, ptr %2, align 4
  %58 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 5 }, ptr %58, align 8
  call void @runtime.StoreHiddenPointee(i64 %57, ptr %58, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %58, align 8
  call void @runtime.TouchConservativeSlot(ptr %58, i64 16)
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %59 = call i64 @runtime.AllocZHidden(i64 8)
  store i64 %59, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %59)
  %60 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %60)
  %61 = load i64, ptr %4, align 4
  %62 = alloca i64, align 8
  store i64 100, ptr %62, align 4
  call void @runtime.StoreHiddenPointee(i64 %61, ptr %62, i64 8)
  store i64 0, ptr %62, align 4
  %63 = call i64 @runtime.AllocZHidden(i64 8)
  store i64 %63, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %63)
  %64 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %64)
  %65 = load i64, ptr %6, align 4
  %66 = alloca double, align 8
  store double 1.001000e+02, ptr %66, align 8
  call void @runtime.StoreHiddenPointee(i64 %65, ptr %66, i64 8)
  store double 0.000000e+00, ptr %66, align 8
  %67 = call i64 @runtime.AllocZHidden(i64 1)
  store i64 %67, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %67)
  %68 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %68)
  %69 = load i64, ptr %8, align 4
  %70 = alloca i8, align 1
  store i8 127, ptr %70, align 1
  call void @runtime.StoreHiddenPointee(i64 %69, ptr %70, i64 1)
  store i8 0, ptr %70, align 1
  %71 = call i64 @runtime.AllocZHidden(i64 8)
  store i64 %71, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %71)
  %72 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %72)
  %73 = load i64, ptr %10, align 4
  %74 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %75 = mul i64 %74, 8
  %76 = call i64 @runtime.AdvanceHiddenPointer(i64 %73, i64 %75)
  store i64 %76, ptr %12, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %13, i64 %76)
  %77 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %77)
  %78 = load i64, ptr %12, align 4
  %79 = alloca i64, align 8
  store i64 200, ptr %79, align 4
  call void @runtime.StoreHiddenPointee(i64 %78, ptr %79, i64 8)
  store i64 0, ptr %79, align 4
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  call void @runtime.ClobberPointerRegs()
  %80 = call i64 @runtime.AllocZHidden(i64 8)
  store i64 %80, ptr %14, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %15, i64 %80)
  %81 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %81)
  %82 = load i64, ptr %14, align 4
  %83 = and i64 %82, 72057594037927935
  %84 = lshr i64 %83, 17
  %85 = select i1 false, i64 0, i64 %84
  %86 = shl i64 %83, 39
  %87 = select i1 false, i64 0, i64 %86
  %88 = or i64 %85, %87
  %89 = and i64 %88, 72057594037927935
  %90 = xor i64 %89, 25399393228665167
  %91 = inttoptr i64 %90 to ptr
  %92 = icmp eq ptr %91, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %92)
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/invoke.T5", ptr %91, i32 0, i32 0
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
  store i64 %103, ptr %16, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %17, i64 %103)
  call void @runtime.ClobberPointerRegs()
  %104 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %104)
  %105 = load i64, ptr %16, align 4
  %106 = alloca i64, align 8
  store i64 300, ptr %106, align 4
  call void @runtime.StoreHiddenPointee(i64 %105, ptr %106, i64 8)
  store i64 0, ptr %106, align 4
  store i64 0, ptr %16, align 4
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  store ptr null, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  call void @runtime.ClobberPointerRegs()
  %107 = call i64 @runtime.AllocZHidden(i64 16)
  store i64 %107, ptr %18, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %19, i64 %107)
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T6" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/invoke.main$1", ptr null }, ptr %20, align 8
  %108 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %108)
  %109 = load i64, ptr %18, align 4
  %110 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %110)
  %111 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T6", ptr %20, align 8
  %112 = alloca %"github.com/goplus/llgo/cl/_testgo/invoke.T6", align 8
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T6" %111, ptr %112, align 8
  call void @runtime.StoreHiddenPointee(i64 %109, ptr %112, i64 16)
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T6" zeroinitializer, ptr %112, align 8
  call void @runtime.TouchConservativeSlot(ptr %112, i64 16)
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T6" zeroinitializer, ptr %20, align 8
  call void @runtime.TouchConservativeSlot(ptr %20, i64 16)
  call void @runtime.ClobberPointerRegs()
  %113 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %113)
  %114 = load i64, ptr %0, align 4
  %115 = alloca %"github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  call void @runtime.LoadHiddenPointee(ptr %115, i64 %114, i64 16)
  %116 = icmp eq ptr %115, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %116)
  %117 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T", ptr %115, align 8
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T" zeroinitializer, ptr %115, align 8
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T" %117, ptr %21, align 8
  %118 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %118)
  %119 = load i64, ptr %0, align 4
  %120 = and i64 %119, 72057594037927935
  %121 = lshr i64 %120, 17
  %122 = select i1 false, i64 0, i64 %121
  %123 = shl i64 %120, 39
  %124 = select i1 false, i64 0, i64 %123
  %125 = or i64 %122, %124
  %126 = and i64 %125, 72057594037927935
  %127 = xor i64 %126, 25399393228665167
  %128 = inttoptr i64 %127 to ptr
  %129 = icmp eq ptr %128, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %129)
  %130 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T", ptr %130, ptr %128)
  %131 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T")
  %132 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %131, 0
  %133 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %132, ptr %130, 1
  %134 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T" zeroinitializer, ptr %21, align 8
  call void @runtime.TouchConservativeSlot(ptr %21, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %133)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %134)
  %135 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %135)
  %136 = load i64, ptr %0, align 4
  %137 = and i64 %136, 72057594037927935
  %138 = lshr i64 %137, 17
  %139 = select i1 false, i64 0, i64 %138
  %140 = shl i64 %137, 39
  %141 = select i1 false, i64 0, i64 %140
  %142 = or i64 %139, %141
  %143 = and i64 %142, 72057594037927935
  %144 = xor i64 %143, 25399393228665167
  %145 = inttoptr i64 %144 to ptr
  %146 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T")
  %147 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %146, 0
  %148 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %147, ptr %145, 1
  %149 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %148)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %149)
  %150 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %150)
  %151 = load i64, ptr %4, align 4
  %152 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %152, i64 %151, i64 8)
  %153 = icmp eq ptr %152, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %153)
  %154 = load i64, ptr %152, align 4
  store i64 0, ptr %152, align 4
  %155 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %155)
  %156 = load i64, ptr %4, align 4
  %157 = and i64 %156, 72057594037927935
  %158 = lshr i64 %157, 17
  %159 = select i1 false, i64 0, i64 %158
  %160 = shl i64 %157, 39
  %161 = select i1 false, i64 0, i64 %160
  %162 = or i64 %159, %161
  %163 = and i64 %162, 72057594037927935
  %164 = xor i64 %163, 25399393228665167
  %165 = inttoptr i64 %164 to ptr
  %166 = icmp eq ptr %165, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %166)
  %167 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1", ptr %167, ptr %165)
  %168 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1")
  %169 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %168, 0
  %170 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %169, ptr %167, 1
  %171 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %170)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %171)
  %172 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %172)
  %173 = load i64, ptr %4, align 4
  %174 = and i64 %173, 72057594037927935
  %175 = lshr i64 %174, 17
  %176 = select i1 false, i64 0, i64 %175
  %177 = shl i64 %174, 39
  %178 = select i1 false, i64 0, i64 %177
  %179 = or i64 %176, %178
  %180 = and i64 %179, 72057594037927935
  %181 = xor i64 %180, 25399393228665167
  %182 = inttoptr i64 %181 to ptr
  %183 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1")
  %184 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %183, 0
  %185 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %184, ptr %182, 1
  %186 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %185)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %186)
  %187 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %187)
  %188 = load i64, ptr %6, align 4
  %189 = alloca double, align 8
  call void @runtime.LoadHiddenPointee(ptr %189, i64 %188, i64 8)
  %190 = icmp eq ptr %189, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %190)
  %191 = load double, ptr %189, align 8
  store double 0.000000e+00, ptr %189, align 8
  %192 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %192)
  %193 = load i64, ptr %6, align 4
  %194 = and i64 %193, 72057594037927935
  %195 = lshr i64 %194, 17
  %196 = select i1 false, i64 0, i64 %195
  %197 = shl i64 %194, 39
  %198 = select i1 false, i64 0, i64 %197
  %199 = or i64 %196, %198
  %200 = and i64 %199, 72057594037927935
  %201 = xor i64 %200, 25399393228665167
  %202 = inttoptr i64 %201 to ptr
  %203 = icmp eq ptr %202, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %203)
  %204 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2", ptr %204, ptr %202)
  %205 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2")
  %206 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %205, 0
  %207 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %206, ptr %204, 1
  %208 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %207)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %208)
  %209 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %209)
  %210 = load i64, ptr %6, align 4
  %211 = and i64 %210, 72057594037927935
  %212 = lshr i64 %211, 17
  %213 = select i1 false, i64 0, i64 %212
  %214 = shl i64 %211, 39
  %215 = select i1 false, i64 0, i64 %214
  %216 = or i64 %213, %215
  %217 = and i64 %216, 72057594037927935
  %218 = xor i64 %217, 25399393228665167
  %219 = inttoptr i64 %218 to ptr
  %220 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2")
  %221 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %220, 0
  %222 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %221, ptr %219, 1
  %223 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %222)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %223)
  %224 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %224)
  %225 = load i64, ptr %8, align 4
  %226 = and i64 %225, 72057594037927935
  %227 = lshr i64 %226, 17
  %228 = select i1 false, i64 0, i64 %227
  %229 = shl i64 %226, 39
  %230 = select i1 false, i64 0, i64 %229
  %231 = or i64 %228, %230
  %232 = and i64 %231, 72057594037927935
  %233 = xor i64 %232, 25399393228665167
  %234 = inttoptr i64 %233 to ptr
  %235 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3")
  %236 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %235, 0
  %237 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %236, ptr %234, 1
  %238 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %237)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %238)
  %239 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %239)
  %240 = load i64, ptr %10, align 4
  %241 = alloca [1 x i64], align 8
  call void @runtime.LoadHiddenPointee(ptr %241, i64 %240, i64 8)
  %242 = icmp eq ptr %241, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %242)
  %243 = load [1 x i64], ptr %241, align 4
  store [1 x i64] zeroinitializer, ptr %241, align 4
  %244 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %244)
  %245 = load i64, ptr %10, align 4
  %246 = and i64 %245, 72057594037927935
  %247 = lshr i64 %246, 17
  %248 = select i1 false, i64 0, i64 %247
  %249 = shl i64 %246, 39
  %250 = select i1 false, i64 0, i64 %249
  %251 = or i64 %248, %250
  %252 = and i64 %251, 72057594037927935
  %253 = xor i64 %252, 25399393228665167
  %254 = inttoptr i64 %253 to ptr
  %255 = icmp eq ptr %254, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %255)
  %256 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4", ptr %256, ptr %254)
  %257 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4")
  %258 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %257, 0
  %259 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %258, ptr %256, 1
  %260 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %259)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %260)
  %261 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %261)
  %262 = load i64, ptr %10, align 4
  %263 = and i64 %262, 72057594037927935
  %264 = lshr i64 %263, 17
  %265 = select i1 false, i64 0, i64 %264
  %266 = shl i64 %263, 39
  %267 = select i1 false, i64 0, i64 %266
  %268 = or i64 %265, %267
  %269 = and i64 %268, 72057594037927935
  %270 = xor i64 %269, 25399393228665167
  %271 = inttoptr i64 %270 to ptr
  %272 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4")
  %273 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %272, 0
  %274 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %273, ptr %271, 1
  %275 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %274)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %275)
  %276 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %276)
  %277 = load i64, ptr %14, align 4
  %278 = alloca %"github.com/goplus/llgo/cl/_testgo/invoke.T5", align 8
  call void @runtime.LoadHiddenPointee(ptr %278, i64 %277, i64 8)
  %279 = icmp eq ptr %278, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %279)
  %280 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T5", ptr %278, align 4
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T5" zeroinitializer, ptr %278, align 4
  %281 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %281)
  %282 = load i64, ptr %14, align 4
  %283 = and i64 %282, 72057594037927935
  %284 = lshr i64 %283, 17
  %285 = select i1 false, i64 0, i64 %284
  %286 = shl i64 %283, 39
  %287 = select i1 false, i64 0, i64 %286
  %288 = or i64 %285, %287
  %289 = and i64 %288, 72057594037927935
  %290 = xor i64 %289, 25399393228665167
  %291 = inttoptr i64 %290 to ptr
  %292 = icmp eq ptr %291, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %292)
  %293 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5", ptr %293, ptr %291)
  %294 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5")
  %295 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %294, 0
  %296 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %295, ptr %293, 1
  %297 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %296)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %297)
  %298 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %298)
  %299 = load i64, ptr %14, align 4
  %300 = and i64 %299, 72057594037927935
  %301 = lshr i64 %300, 17
  %302 = select i1 false, i64 0, i64 %301
  %303 = shl i64 %300, 39
  %304 = select i1 false, i64 0, i64 %303
  %305 = or i64 %302, %304
  %306 = and i64 %305, 72057594037927935
  %307 = xor i64 %306, 25399393228665167
  %308 = inttoptr i64 %307 to ptr
  %309 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5")
  %310 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %309, 0
  %311 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %310, ptr %308, 1
  %312 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store i64 0, ptr %14, align 4
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store ptr null, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %311)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %312)
  %313 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %313)
  %314 = load i64, ptr %18, align 4
  %315 = alloca %"github.com/goplus/llgo/cl/_testgo/invoke.T6", align 8
  call void @runtime.LoadHiddenPointee(ptr %315, i64 %314, i64 16)
  %316 = icmp eq ptr %315, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %316)
  %317 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T6", ptr %315, align 8
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T6" zeroinitializer, ptr %315, align 8
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T6" %317, ptr %22, align 8
  %318 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %318)
  %319 = load i64, ptr %18, align 4
  %320 = and i64 %319, 72057594037927935
  %321 = lshr i64 %320, 17
  %322 = select i1 false, i64 0, i64 %321
  %323 = shl i64 %320, 39
  %324 = select i1 false, i64 0, i64 %323
  %325 = or i64 %322, %324
  %326 = and i64 %325, 72057594037927935
  %327 = xor i64 %326, 25399393228665167
  %328 = inttoptr i64 %327 to ptr
  %329 = icmp eq ptr %328, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %329)
  %330 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6", ptr %330, ptr %328)
  %331 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6")
  %332 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %331, 0
  %333 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %332, ptr %330, 1
  %334 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T6" zeroinitializer, ptr %22, align 8
  call void @runtime.TouchConservativeSlot(ptr %22, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %333)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %334)
  %335 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %335)
  %336 = load i64, ptr %18, align 4
  %337 = and i64 %336, 72057594037927935
  %338 = lshr i64 %337, 17
  %339 = select i1 false, i64 0, i64 %338
  %340 = shl i64 %337, 39
  %341 = select i1 false, i64 0, i64 %340
  %342 = or i64 %339, %341
  %343 = and i64 %342, 72057594037927935
  %344 = xor i64 %343, 25399393228665167
  %345 = inttoptr i64 %344 to ptr
  %346 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6")
  %347 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %346, 0
  %348 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %347, ptr %345, 1
  %349 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store i64 0, ptr %18, align 4
  call void @runtime.TouchConservativeSlot(ptr %18, i64 8)
  store ptr null, ptr %19, align 8
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %348)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %349)
  %350 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %351 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr %350)
  %352 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %351, 0
  %353 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %352, ptr null, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %353, ptr %23, align 8
  %354 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %355 = icmp eq ptr %23, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %355)
  %356 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %23, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %23, align 8
  call void @runtime.TouchConservativeSlot(ptr %23, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %356)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %354)
  %357 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %357)
  %358 = load i64, ptr %0, align 4
  %359 = and i64 %358, 72057594037927935
  %360 = lshr i64 %359, 17
  %361 = select i1 false, i64 0, i64 %360
  %362 = shl i64 %359, 39
  %363 = select i1 false, i64 0, i64 %362
  %364 = or i64 %361, %363
  %365 = and i64 %364, 72057594037927935
  %366 = xor i64 %365, 25399393228665167
  %367 = inttoptr i64 %366 to ptr
  %368 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T")
  %369 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %368, 0
  %370 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %369, ptr %367, 1
  %371 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %370)
  %372 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %370, 1
  %373 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr %371)
  %374 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %373, 0
  %375 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %374, ptr %372, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %375, ptr %24, align 8
  %376 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %377 = icmp eq ptr %24, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %377)
  %378 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %24, align 8
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %24, align 8
  call void @runtime.TouchConservativeSlot(ptr %24, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %378)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %376)
  %379 = alloca %"github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  call void @llvm.memset(ptr %379, i8 0, i64 16, i1 false)
  %380 = icmp eq ptr %379, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %380)
  %381 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/invoke.T", ptr %379, i32 0, i32 0
  %382 = ptrtoint ptr %381 to i64
  %383 = and i64 %382, 72057594037927935
  %384 = xor i64 %383, 25399393228665167
  %385 = shl i64 %384, 17
  %386 = select i1 false, i64 0, i64 %385
  %387 = lshr i64 %384, 39
  %388 = select i1 false, i64 0, i64 %387
  %389 = or i64 %386, %388
  %390 = and i64 %389, 72057594037927935
  %391 = or i64 %390, -6557241057451442176
  store i64 %391, ptr %25, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %26, i64 %391)
  call void @runtime.ClobberPointerRegs()
  %392 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %392)
  %393 = load i64, ptr %25, align 4
  %394 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 5 }, ptr %394, align 8
  call void @runtime.StoreHiddenPointee(i64 %393, ptr %394, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %394, align 8
  call void @runtime.TouchConservativeSlot(ptr %394, i64 16)
  store i64 0, ptr %25, align 4
  call void @runtime.TouchConservativeSlot(ptr %25, i64 8)
  store ptr null, ptr %26, align 8
  call void @runtime.TouchConservativeSlot(ptr %26, i64 8)
  call void @runtime.ClobberPointerRegs()
  %395 = icmp eq ptr %379, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %395)
  %396 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T", ptr %379, align 8
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T" %396, ptr %27, align 8
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T" zeroinitializer, ptr %379, align 8
  call void @runtime.TouchConservativeSlot(ptr %379, i64 16)
  call void @runtime.ClobberPointerRegs()
  %397 = icmp eq ptr %379, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %397)
  %398 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T", ptr %398, ptr %379)
  %399 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T", ptr undef }, ptr %398, 1
  %400 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %399, 0
  %401 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.I", ptr %400)
  br i1 %401, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %402 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %399, 1
  %403 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr %400)
  %404 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %403, 0
  %405 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %404, ptr %402, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %405, ptr %28, align 8
  %406 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %407 = icmp eq ptr %28, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %407)
  %408 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %28, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %28, align 8
  call void @runtime.TouchConservativeSlot(ptr %28, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %408)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %406)
  %409 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %399, 0
  %410 = icmp ne ptr %409, null
  br i1 %410, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %411 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakeTypeAssertionError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 14 }, ptr %400, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %411)
  unreachable

_llgo_3:                                          ; No predecessors!
  unreachable

_llgo_4:                                          ; preds = %_llgo_1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %399, ptr %29, align 8
  %412 = icmp eq ptr %29, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %412)
  %413 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %29, align 8
  %414 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %413, 0
  %415 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr %414)
  br i1 %415, label %_llgo_7, label %_llgo_8

_llgo_5:                                          ; preds = %_llgo_1
  %416 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakeTypeAssertionError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 14 }, ptr %409, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 14 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %416)
  unreachable

_llgo_6:                                          ; No predecessors!
  unreachable

_llgo_7:                                          ; preds = %_llgo_4
  %417 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %413, 1
  %418 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr %414)
  %419 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %418, 0
  %420 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %419, ptr %417, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %420, ptr %30, align 8
  %421 = icmp eq ptr %30, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %421)
  %422 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %30, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %422, ptr %31, align 8
  %423 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %424 = icmp eq ptr %31, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %424)
  %425 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %31, align 8
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T" zeroinitializer, ptr %27, align 8
  call void @runtime.TouchConservativeSlot(ptr %27, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %29, align 8
  call void @runtime.TouchConservativeSlot(ptr %29, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %30, align 8
  call void @runtime.TouchConservativeSlot(ptr %30, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %31, align 8
  call void @runtime.TouchConservativeSlot(ptr %31, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %425)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %423)
  ret void

_llgo_8:                                          ; preds = %_llgo_4
  %426 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakeTypeAssertionError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 14 }, ptr %414, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 26 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %426)
  unreachable

_llgo_9:                                          ; No predecessors!
  unreachable
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.main$1"() {
_llgo_0:
  ret i64 400
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @runtime.ClobberPointerRegs()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakePanicWrapError"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare i64 @runtime.AllocZHidden(i64)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare i64 @runtime.AdvanceHiddenPointer(i64, i64)

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/invoke.main$1"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/invoke.main$1")
  %2 = tail call i64 @"github.com/goplus/llgo/cl/_testgo/invoke.main$1"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1)
  ret i64 %2
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal64")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
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

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.interequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.f64equal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.f64equal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.f64equal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.f64equal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal8")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal"(ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr, ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakeTypeAssertionError"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
