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
%"github.com/goplus/llgo/cl/_testgo/invoke.T5" = type { i64 }
%"github.com/goplus/llgo/cl/_testgo/invoke.T6" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/invoke.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [6 x i8] c"invoke", align 1
@1 = private unnamed_addr constant [7 x i8] c"invoke1", align 1
@2 = private unnamed_addr constant [7 x i8] c"invoke2", align 1
@3 = private unnamed_addr constant [7 x i8] c"invoke3", align 1
@4 = private unnamed_addr constant [7 x i8] c"invoke4", align 1
@5 = private unnamed_addr constant [7 x i8] c"invoke5", align 1
@6 = private unnamed_addr constant [7 x i8] c"invoke6", align 1
@7 = private unnamed_addr constant [5 x i8] c"hello", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 -1498395585, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/invoke.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 40 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T.Invoke" }] }, align 8
@8 = private unnamed_addr constant [6 x i8] c"main.T", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 981522622, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 40 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Invoke" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 6 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Method", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Method" }] }, align 8
@9 = private unnamed_addr constant [40 x i8] c"github.com/goplus/llgo/cl/_testgo/invoke", align 1
@10 = private unnamed_addr constant [6 x i8] c"Invoke", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2131144854, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 10 }, ptr @"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out", i64 1, i64 1 } }, align 8
@11 = private unnamed_addr constant [10 x i8] c"func() int", align 1
@"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1805835775, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 10 }, ptr null }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, align 8
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 2, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 3 }, ptr @"*_llgo_int" }, align 8
@12 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@13 = private unnamed_addr constant [6 x i8] c"Method", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@14 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@15 = private unnamed_addr constant [1 x i8] c"s", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 6 }, ptr @"*_llgo_string" }, align 8
@16 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"github.com/goplus/llgo/cl/_testgo/invoke.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 1 }, ptr @_llgo_string, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1747927304, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 26 }, ptr @"*_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0$imethods", i64 1, i64 1 } }, align 8
@17 = private unnamed_addr constant [26 x i8] c"interface { Invoke() int }", align 1
@"*_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1358691488, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 26 }, ptr null }, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0" }, align 8
@"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }], align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 747982523, i8 13, i8 8, i8 8, i8 2, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 7 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 40 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T1).Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T1.Invoke" }] }, align 8
@18 = private unnamed_addr constant [7 x i8] c"main.T1", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1933429878, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 7 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 40 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T1).Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T1).Invoke" }] }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 1664000404, i8 5, i8 8, i8 8, i8 14, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.f64equal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 7 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 40 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T2).Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T2.Invoke" }] }, align 8
@19 = private unnamed_addr constant [7 x i8] c"main.T2", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -629524883, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 7 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 40 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T2).Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T2).Invoke" }] }, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1030757803, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 7 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 40 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T3).Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T3).Invoke" }] }, align 8
@20 = private unnamed_addr constant [7 x i8] c"main.T3", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 -1524720381, i8 13, i8 1, i8 1, i8 3, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 7 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 40 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.ArrayType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -404804171, i8 13, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 7 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4" }, ptr @_llgo_int, ptr @"[]_llgo_int", i64 1 }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 40 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T4).Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T4.Invoke" }] }, align 8
@21 = private unnamed_addr constant [7 x i8] c"main.T4", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1496326536, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 7 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 40 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T4).Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T4).Invoke" }] }, align 8
@"[]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -1129561019, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr @"*[]_llgo_int" }, ptr @_llgo_int }, align 8
@22 = private unnamed_addr constant [5 x i8] c"[]int", align 1
@"*[]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1428175521, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr null }, ptr @"[]_llgo_int" }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1908790280, i8 13, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 7 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/invoke.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 40 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T5).Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T5.Invoke" }] }, align 8
@23 = private unnamed_addr constant [7 x i8] c"main.T5", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -656389711, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 7 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 40 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T5).Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T5).Invoke" }] }, align 8
@24 = private unnamed_addr constant [1 x i8] c"n", align 1
@"github.com/goplus/llgo/cl/_testgo/invoke.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1901209176, i8 37, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 7 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 40 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T6).Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T6.Invoke" }] }, align 8
@25 = private unnamed_addr constant [7 x i8] c"main.T6", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1006875505, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 7 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 40 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T6).Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T6).Invoke" }] }, align 8
@26 = private unnamed_addr constant [2 x i8] c"$f", align 1
@27 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@28 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 2 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -551363837, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 36 }, ptr @"*_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI$imethods", i64 2, i64 2 } }, align 8
@29 = private unnamed_addr constant [36 x i8] c"interface { Invoke() int; Method() }", align 1
@"*_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 537463710, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 36 }, ptr null }, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI" }, align 8
@"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI$imethods" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 6 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }], align 8
@30 = private unnamed_addr constant [5 x i8] c"world", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.I" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1376264003, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.I" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0$imethods", i64 1, i64 1 } }, align 8
@31 = private unnamed_addr constant [6 x i8] c"main.I", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.I" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1163777978, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.I" }, align 8
@32 = private unnamed_addr constant [71 x i8] c"type assertion any -> github.com/goplus/llgo/cl/_testgo/invoke.I failed", align 1
@_llgo_any = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1376530322, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 12 }, ptr @"*_llgo_any" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@33 = private unnamed_addr constant [12 x i8] c"interface {}", align 1
@"*_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1741196194, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 12 }, ptr null }, ptr @_llgo_any }, align 8
@34 = private unnamed_addr constant [32 x i8] c"type assertion any -> any failed", align 1
@35 = private unnamed_addr constant [52 x i8] c"type assertion any -> interface{Invoke() int} failed", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T.Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Method", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T1.Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T1).Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T2.Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T2).Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T3).Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T4.Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T4).Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T5.Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T5).Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T6.Invoke", ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T6).Invoke"], section "llvm.metadata"

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T.Invoke"(%"github.com/goplus/llgo/cl/_testgo/invoke.T" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T" %0, ptr %1, align 8
  %2 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/invoke.T", ptr %1, i32 0, i32 0
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %3, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 0
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Invoke"(ptr %0) {
_llgo_0:
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T", ptr %0, align 8
  %3 = call i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T.Invoke"(%"github.com/goplus/llgo/cl/_testgo/invoke.T" %2)
  ret i64 %3
}

define void @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Method"(ptr %0) {
_llgo_0:
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T1.Invoke"(i64 %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 1
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.(*T1).Invoke"(ptr %0) {
_llgo_0:
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = load i64, ptr %0, align 4
  %3 = call i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T1.Invoke"(i64 %2)
  ret i64 %3
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T2.Invoke"(double %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 2
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.(*T2).Invoke"(ptr %0) {
_llgo_0:
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = load double, ptr %0, align 8
  %3 = call i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T2.Invoke"(double %2)
  ret i64 %3
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.(*T3).Invoke"(ptr %0) {
_llgo_0:
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = load i8, ptr %0, align 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %3 = sext i8 %2 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 3
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T4.Invoke"([1 x i64] %0) {
_llgo_0:
  %1 = alloca [1 x i64], align 8
  call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
  store [1 x i64] %0, ptr %1, align 4
  %2 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = getelementptr inbounds i64, ptr %1, i64 0
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load i64, ptr %3, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 4
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.(*T4).Invoke"(ptr %0) {
_llgo_0:
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = load [1 x i64], ptr %0, align 4
  %3 = call i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T4.Invoke"([1 x i64] %2)
  ret i64 %3
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T5.Invoke"(%"github.com/goplus/llgo/cl/_testgo/invoke.T5" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testgo/invoke.T5", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T5" %0, ptr %1, align 4
  %2 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/invoke.T5", ptr %1, i32 0, i32 0
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load i64, ptr %3, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 5
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.(*T5).Invoke"(ptr %0) {
_llgo_0:
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T5", ptr %0, align 4
  %3 = call i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T5.Invoke"(%"github.com/goplus/llgo/cl/_testgo/invoke.T5" %2)
  ret i64 %3
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T6.Invoke"(%"github.com/goplus/llgo/cl/_testgo/invoke.T6" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/cl/_testgo/invoke.T6" %0, 1
  %2 = extractvalue %"github.com/goplus/llgo/cl/_testgo/invoke.T6" %0, 0
  %3 = call i64 %2(ptr %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 6
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.(*T6).Invoke"(ptr %0) {
_llgo_0:
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T6", ptr %0, align 8
  %3 = call i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T6.Invoke"(%"github.com/goplus/llgo/cl/_testgo/invoke.T6" %2)
  ret i64 %3
}

define void @"github.com/goplus/llgo/cl/_testgo/invoke.init"() {
_llgo_0:
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
  %7 = extractvalue { ptr, ptr } %6, 1
  %8 = extractvalue { ptr, ptr } %6, 0
  %9 = call i64 %8(ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/invoke.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/invoke.T", ptr %0, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr %2, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 100, ptr %3, align 4
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store double 1.001000e+02, ptr %4, align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 1)
  store i8 127, ptr %5, align 1
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %7 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = getelementptr inbounds i64, ptr %6, i64 0
  store i64 200, ptr %8, align 4
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %10 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/invoke.T5", ptr %9, i32 0, i32 0
  store i64 300, ptr %11, align 4
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T6" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/invoke.main$1", ptr null }, ptr %12, align 8
  %13 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T", ptr %0, align 8
  %15 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %15)
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T", ptr %16, ptr %0)
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T")
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %17, 0
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %18, ptr %16, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %19)
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T")
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %20, 0
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %21, ptr %0, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %22)
  %23 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load i64, ptr %3, align 4
  %25 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %25)
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1", ptr %26, ptr %3)
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1")
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %27, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %28, ptr %26, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %29)
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1")
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %30, 0
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %31, ptr %3, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %32)
  %33 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %33)
  %34 = load double, ptr %4, align 8
  %35 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %35)
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2", ptr %36, ptr %4)
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2")
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %37, 0
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %38, ptr %36, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %39)
  %40 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2")
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %40, 0
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %41, ptr %4, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %42)
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3")
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %43, 0
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %44, ptr %5, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %45)
  %46 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %46)
  %47 = load [1 x i64], ptr %6, align 4
  %48 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %48)
  %49 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4", ptr %49, ptr %6)
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4")
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %50, 0
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %51, ptr %49, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %52)
  %53 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4")
  %54 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %53, 0
  %55 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %54, ptr %6, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %55)
  %56 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %56)
  %57 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T5", ptr %9, align 4
  %58 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %58)
  %59 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5", ptr %59, ptr %9)
  %60 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5")
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %60, 0
  %62 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %61, ptr %59, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %62)
  %63 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5")
  %64 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %63, 0
  %65 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %64, ptr %9, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %65)
  %66 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %66)
  %67 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T6", ptr %12, align 8
  %68 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %68)
  %69 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6", ptr %69, ptr %12)
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6")
  %71 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %70, 0
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %71, ptr %69, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %72)
  %73 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6")
  %74 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %73, 0
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %74, ptr %12, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %75)
  %76 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %77 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr %76)
  %78 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %77, 0
  %79 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %78, ptr null, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %79)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %80 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T")
  %81 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %80, 0
  %82 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %81, ptr %0, 1
  %83 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %82)
  %84 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %82, 1
  %85 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr %83)
  %86 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %85, 0
  %87 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %86, ptr %84, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %87)
  %88 = alloca %"github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  call void @llvm.memset(ptr %88, i8 0, i64 16, i1 false)
  %89 = icmp eq ptr %88, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %89)
  %90 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/invoke.T", ptr %88, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 5 }, ptr %90, align 8
  %91 = icmp eq ptr %88, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %91)
  %92 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T", ptr %88, align 8
  %93 = icmp eq ptr %88, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %93)
  %94 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T", ptr %94, ptr %88)
  %95 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T", ptr undef }, ptr %94, 1
  %96 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %95, 0
  %97 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.I", ptr %96)
  br i1 %97, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %98 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %95, 1
  %99 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr %96)
  %100 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %99, 0
  %101 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %100, ptr %98, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %101)
  %102 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %95, 0
  %103 = icmp ne ptr %102, null
  br i1 %103, label %_llgo_3, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %104 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 71 }, ptr %104, align 8
  %105 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %104, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %105)
  unreachable

_llgo_3:                                          ; preds = %_llgo_1
  %106 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %95, 0
  %107 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr %106)
  br i1 %107, label %_llgo_5, label %_llgo_6

_llgo_4:                                          ; preds = %_llgo_1
  %108 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 32 }, ptr %108, align 8
  %109 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %108, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %109)
  unreachable

_llgo_5:                                          ; preds = %_llgo_3
  %110 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %95, 1
  %111 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", ptr %106)
  %112 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %111, 0
  %113 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %112, ptr %110, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %113)
  ret void

_llgo_6:                                          ; preds = %_llgo_3
  %114 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 52 }, ptr %114, align 8
  %115 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %114, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %115)
  unreachable
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.main$1"() {
_llgo_0:
  ret i64 400
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/invoke.main$1"(ptr %0) {
_llgo_0:
  %1 = tail call i64 @"github.com/goplus/llgo/cl/_testgo/invoke.main$1"()
  ret i64 %1
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

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

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.f64equal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.f64equal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.f64equal"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal"(ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %1, ptr %2)
  ret i1 %3
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
