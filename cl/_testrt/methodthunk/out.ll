; ModuleID = 'github.com/goplus/llgo/cl/_testrt/methodthunk'
source_filename = "github.com/goplus/llgo/cl/_testrt/methodthunk"

%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr, i1 }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/cl/_testrt/methodthunk.InnerInt" = type { i64 }
%"github.com/goplus/llgo/cl/_testrt/methodthunk.OuterInt" = type { i64, %"github.com/goplus/llgo/cl/_testrt/methodthunk.InnerInt" }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/methodthunk.init$guard" = global i1 false, align 1
@"_llgo_closure$vPYotqLmnXUibxpG60fBMno6dh60t8qRcJxNcV4qbUs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -9972799, i8 32, i8 8, i8 8, i8 25, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 67 }, ptr @"*_llgo_closure$vPYotqLmnXUibxpG60fBMno6dh60t8qRcJxNcV4qbUs" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$vPYotqLmnXUibxpG60fBMno6dh60t8qRcJxNcV4qbUs$fields", i64 3, i64 3 } }, align 8
@0 = private unnamed_addr constant [67 x i8] c"struct { $f func(*main.outer); $data unsafe.Pointer; $isCoro bool }", align 1
@"*_llgo_closure$vPYotqLmnXUibxpG60fBMno6dh60t8qRcJxNcV4qbUs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1454432602, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 67 }, ptr null }, ptr @"_llgo_closure$vPYotqLmnXUibxpG60fBMno6dh60t8qRcJxNcV4qbUs" }, align 8
@1 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$Vj2YTq8TaAn45yidWm4XsVfHuv7WbznkJ_VqZmiRIow" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 456355426, i8 0, i8 8, i8 8, i8 51, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 17 }, ptr @"*_llgo_func$Vj2YTq8TaAn45yidWm4XsVfHuv7WbznkJ_VqZmiRIow" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$Vj2YTq8TaAn45yidWm4XsVfHuv7WbznkJ_VqZmiRIow$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@2 = private unnamed_addr constant [17 x i8] c"func(*main.outer)", align 1
@"*_llgo_func$Vj2YTq8TaAn45yidWm4XsVfHuv7WbznkJ_VqZmiRIow" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1006562202, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 17 }, ptr null }, ptr @"_llgo_func$Vj2YTq8TaAn45yidWm4XsVfHuv7WbznkJ_VqZmiRIow" }, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.outer" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1716880222, i8 11, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 10 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.outer" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 45 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 1 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*outer).M$coro", ptr @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*outer).M$coro" }] }, align 8
@3 = private unnamed_addr constant [10 x i8] c"main.outer", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.outer" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 1545761878, i8 13, i8 8, i8 8, i8 25, { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.outer", i1 undef }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 10 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.outer" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 45 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/methodthunk.struct$dWFLkDBIS1Fsuz7s-VaGDEwSLo3CKXMAaaGtssf2rF0$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 45 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@4 = private unnamed_addr constant [45 x i8] c"github.com/goplus/llgo/cl/_testrt/methodthunk", align 1
@5 = private unnamed_addr constant [1 x i8] c"y", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, ptr @"*_llgo_int" }, align 8
@6 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@7 = private unnamed_addr constant [5 x i8] c"inner", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.inner" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -2074861867, i8 13, i8 8, i8 8, i8 57, { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.inner", i1 undef }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 10 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.inner" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 45 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/methodthunk.struct$KyEcQxcVU_tO6DKAbg1htV0IKmLOYbjCHy8CH5BU5aA$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 45 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@8 = private unnamed_addr constant [10 x i8] c"main.inner", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.inner" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 474176774, i8 11, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 10 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.inner" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 45 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 1 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*inner).M$coro", ptr @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*inner).M$coro" }] }, align 8
@9 = private unnamed_addr constant [1 x i8] c"M", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@10 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@11 = private unnamed_addr constant [1 x i8] c"x", align 1
@"github.com/goplus/llgo/cl/_testrt/methodthunk.struct$KyEcQxcVU_tO6DKAbg1htV0IKmLOYbjCHy8CH5BU5aA$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testrt/methodthunk.struct$dWFLkDBIS1Fsuz7s-VaGDEwSLo3CKXMAaaGtssf2rF0$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.inner", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true }], align 8
@"_llgo_func$Vj2YTq8TaAn45yidWm4XsVfHuv7WbznkJ_VqZmiRIow$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.outer"], align 8
@12 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@13 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@14 = private unnamed_addr constant [7 x i8] c"$isCoro", align 1
@_llgo_bool = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 554183389, i8 12, i8 1, i8 1, i8 33, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 4 }, ptr @"*_llgo_bool" }, align 8
@15 = private unnamed_addr constant [4 x i8] c"bool", align 1
@"*_llgo_bool" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1896950390, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 4 }, ptr null }, ptr @_llgo_bool }, align 8
@"_llgo_closure$vPYotqLmnXUibxpG60fBMno6dh60t8qRcJxNcV4qbUs$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 2 }, ptr @"_llgo_func$Vj2YTq8TaAn45yidWm4XsVfHuv7WbznkJ_VqZmiRIow", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 7 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_closure$gdg6jyKq1EU2L1w2z6ASnTFRuy-e78GP2k5Ve9BVF5k" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -650793956, i8 32, i8 8, i8 8, i8 25, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 74 }, ptr @"*_llgo_closure$gdg6jyKq1EU2L1w2z6ASnTFRuy-e78GP2k5Ve9BVF5k" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$gdg6jyKq1EU2L1w2z6ASnTFRuy-e78GP2k5Ve9BVF5k$fields", i64 3, i64 3 } }, align 8
@16 = private unnamed_addr constant [74 x i8] c"struct { $f func(*main.InnerInt) int; $data unsafe.Pointer; $isCoro bool }", align 1
@"*_llgo_closure$gdg6jyKq1EU2L1w2z6ASnTFRuy-e78GP2k5Ve9BVF5k" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -607986425, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 74 }, ptr null }, ptr @"_llgo_closure$gdg6jyKq1EU2L1w2z6ASnTFRuy-e78GP2k5Ve9BVF5k" }, align 8
@"_llgo_func$FmtsGADozkyQT08ENvP6TWR4cTxBUiTI7qSNCOFeF4s" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1493560405, i8 0, i8 8, i8 8, i8 51, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 24 }, ptr @"*_llgo_func$FmtsGADozkyQT08ENvP6TWR4cTxBUiTI7qSNCOFeF4s" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$FmtsGADozkyQT08ENvP6TWR4cTxBUiTI7qSNCOFeF4s$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$FmtsGADozkyQT08ENvP6TWR4cTxBUiTI7qSNCOFeF4s$out", i64 1, i64 1 } }, align 8
@17 = private unnamed_addr constant [24 x i8] c"func(*main.InnerInt) int", align 1
@"*_llgo_func$FmtsGADozkyQT08ENvP6TWR4cTxBUiTI7qSNCOFeF4s" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1993146843, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 24 }, ptr null }, ptr @"_llgo_func$FmtsGADozkyQT08ENvP6TWR4cTxBUiTI7qSNCOFeF4s" }, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.InnerInt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1157760495, i8 11, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 13 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.InnerInt" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 45 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 1 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*InnerInt).M$coro", ptr @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*InnerInt).M$coro" }] }, align 8
@18 = private unnamed_addr constant [13 x i8] c"main.InnerInt", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.InnerInt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 1088987572, i8 13, i8 8, i8 8, i8 57, { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.InnerInt", i1 undef }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 13 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.InnerInt" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$8LihShjQN68KxgbxkJ8l6tip2BGrW3Tj5i5Q4NqfXHM$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 45 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@19 = private unnamed_addr constant [1 x i8] c"X", align 1
@"_llgo_struct$8LihShjQN68KxgbxkJ8l6tip2BGrW3Tj5i5Q4NqfXHM$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2131144854, i8 0, i8 8, i8 8, i8 51, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 10 }, ptr @"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out", i64 1, i64 1 } }, align 8
@20 = private unnamed_addr constant [10 x i8] c"func() int", align 1
@"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1805835775, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 10 }, ptr null }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_func$FmtsGADozkyQT08ENvP6TWR4cTxBUiTI7qSNCOFeF4s$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.InnerInt"], align 8
@"_llgo_func$FmtsGADozkyQT08ENvP6TWR4cTxBUiTI7qSNCOFeF4s$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_closure$gdg6jyKq1EU2L1w2z6ASnTFRuy-e78GP2k5Ve9BVF5k$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 2 }, ptr @"_llgo_func$FmtsGADozkyQT08ENvP6TWR4cTxBUiTI7qSNCOFeF4s", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 7 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@21 = private unnamed_addr constant [47 x i8] c"type assertion should have failed but succeeded", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 6 }, ptr @"*_llgo_string" }, align 8
@22 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 6 }, ptr null }, ptr @_llgo_string }, align 8

define i64 @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*InnerInt).M"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/methodthunk.InnerInt", ptr %0, i32 0, i32 0
  %2 = load i64, ptr %1, align 4
  ret i64 %2
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*InnerInt).M$coro"(ptr %0) #0 {
_llgo_0:
  %1 = alloca { ptr, i64 }, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/methodthunk.InnerInt", ptr %0, i32 0, i32 0
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 1
  store i64 %6, ptr %7, align 4
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
  %13 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
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

define i64 @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*OuterInt).M"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/methodthunk.OuterInt", ptr %0, i32 0, i32 1
  %2 = call i64 @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*InnerInt).M"(ptr %1)
  ret i64 %2
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*OuterInt).M$coro"(ptr %0) #0 {
_llgo_0:
  %1 = alloca { ptr, i64 }, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/methodthunk.OuterInt", ptr %0, i32 0, i32 1
  %6 = call i64 @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*InnerInt).M"(ptr %5)
  %7 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 1
  store i64 %6, ptr %7, align 4
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
  %13 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
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

define void @"github.com/goplus/llgo/cl/_testrt/methodthunk.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/methodthunk.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/methodthunk.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*inner).M"(ptr %0) {
_llgo_0:
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*inner).M$coro"(ptr %0) #0 {
_llgo_0:
  %1 = alloca { ptr }, align 8
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call i64 @llvm.coro.size.i64()
  %6 = call ptr @malloc(i64 %5)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %7 = phi ptr [ null, %_llgo_0 ], [ %6, %_llgo_2 ]
  %8 = call ptr @llvm.coro.begin(token %3, ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %9 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_5:                                          ; preds = %_llgo_1
  %10 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %10)
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %12 = call ptr @llvm.coro.free(token %3, ptr %8)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/methodthunk.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  store { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/methodthunk.(*outer).M$thunk", ptr null, i1 false }, ptr %0, align 8
  %1 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$vPYotqLmnXUibxpG60fBMno6dh60t8qRcJxNcV4qbUs", ptr undef }, ptr %0, 1
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  store { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/methodthunk.(*InnerInt).M$thunk", ptr null, i1 false }, ptr %2, align 8
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$gdg6jyKq1EU2L1w2z6ASnTFRuy-e78GP2k5Ve9BVF5k", ptr undef }, ptr %2, 1
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %1, 0
  %5 = icmp eq ptr %4, @"_llgo_closure$vPYotqLmnXUibxpG60fBMno6dh60t8qRcJxNcV4qbUs"
  br i1 %5, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_8
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 47 }, ptr %6, align 8
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %6, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %7)
  unreachable

_llgo_2:                                          ; preds = %_llgo_8
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %1, 1
  %9 = load { ptr, ptr, i1 }, ptr %8, align 8
  %10 = insertvalue { { ptr, ptr, i1 }, i1 } undef, { ptr, ptr, i1 } %9, 0
  %11 = insertvalue { { ptr, ptr, i1 }, i1 } %10, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %12 = phi { { ptr, ptr, i1 }, i1 } [ %11, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %13 = extractvalue { { ptr, ptr, i1 }, i1 } %12, 0
  %14 = extractvalue { { ptr, ptr, i1 }, i1 } %12, 1
  %15 = extractvalue { ptr, ptr, i1 } %13, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %16 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, 0
  %17 = icmp eq ptr %16, @"_llgo_closure$vPYotqLmnXUibxpG60fBMno6dh60t8qRcJxNcV4qbUs"
  br i1 %17, label %_llgo_6, label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_5
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, 1
  %19 = load { ptr, ptr, i1 }, ptr %18, align 8
  %20 = insertvalue { { ptr, ptr, i1 }, i1 } undef, { ptr, ptr, i1 } %19, 0
  %21 = insertvalue { { ptr, ptr, i1 }, i1 } %20, i1 true, 1
  br label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %22 = phi { { ptr, ptr, i1 }, i1 } [ %21, %_llgo_6 ], [ zeroinitializer, %_llgo_7 ]
  %23 = extractvalue { { ptr, ptr, i1 }, i1 } %22, 0
  %24 = extractvalue { { ptr, ptr, i1 }, i1 } %22, 1
  %25 = extractvalue { ptr, ptr, i1 } %23, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br i1 %24, label %_llgo_1, label %_llgo_2
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/methodthunk.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_5
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  store { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/methodthunk.(*outer).M$thunk", ptr null, i1 false }, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$vPYotqLmnXUibxpG60fBMno6dh60t8qRcJxNcV4qbUs", ptr undef }, ptr %4, 1
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  store { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/methodthunk.(*InnerInt).M$thunk", ptr null, i1 false }, ptr %6, align 8
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$gdg6jyKq1EU2L1w2z6ASnTFRuy-e78GP2k5Ve9BVF5k", ptr undef }, ptr %6, 1
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %5, 0
  %9 = icmp eq ptr %8, @"_llgo_closure$vPYotqLmnXUibxpG60fBMno6dh60t8qRcJxNcV4qbUs"
  br i1 %9, label %_llgo_9, label %_llgo_10

_llgo_2:                                          ; preds = %_llgo_14
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 47 }, ptr %10, align 8
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %10, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %11)
  br label %_llgo_7

_llgo_3:                                          ; preds = %_llgo_14
  br label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_0
  %12 = call i64 @llvm.coro.size.i64()
  %13 = call ptr @malloc(i64 %12)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %14 = phi ptr [ null, %_llgo_0 ], [ %13, %_llgo_4 ]
  %15 = call ptr @llvm.coro.begin(token %2, ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7
  %16 = call i1 @llvm.coro.end(ptr %15, i1 false, token none)
  ret ptr %15

_llgo_7:                                          ; preds = %_llgo_3, %_llgo_2
  %17 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %17)
  %18 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %18, label %_llgo_6 [
    i8 0, label %_llgo_15
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_15, %_llgo_7
  %19 = call ptr @llvm.coro.free(token %2, ptr %15)
  call void @free(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_1
  %20 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %5, 1
  %21 = load { ptr, ptr, i1 }, ptr %20, align 8
  %22 = insertvalue { { ptr, ptr, i1 }, i1 } undef, { ptr, ptr, i1 } %21, 0
  %23 = insertvalue { { ptr, ptr, i1 }, i1 } %22, i1 true, 1
  br label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_1
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_9
  %24 = phi { { ptr, ptr, i1 }, i1 } [ %23, %_llgo_9 ], [ zeroinitializer, %_llgo_10 ]
  %25 = extractvalue { { ptr, ptr, i1 }, i1 } %24, 0
  %26 = extractvalue { { ptr, ptr, i1 }, i1 } %24, 1
  %27 = extractvalue { ptr, ptr, i1 } %25, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %28 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, 0
  %29 = icmp eq ptr %28, @"_llgo_closure$vPYotqLmnXUibxpG60fBMno6dh60t8qRcJxNcV4qbUs"
  br i1 %29, label %_llgo_12, label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_11
  %30 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, 1
  %31 = load { ptr, ptr, i1 }, ptr %30, align 8
  %32 = insertvalue { { ptr, ptr, i1 }, i1 } undef, { ptr, ptr, i1 } %31, 0
  %33 = insertvalue { { ptr, ptr, i1 }, i1 } %32, i1 true, 1
  br label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_11
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %34 = phi { { ptr, ptr, i1 }, i1 } [ %33, %_llgo_12 ], [ zeroinitializer, %_llgo_13 ]
  %35 = extractvalue { { ptr, ptr, i1 }, i1 } %34, 0
  %36 = extractvalue { { ptr, ptr, i1 }, i1 } %34, 1
  %37 = extractvalue { ptr, ptr, i1 } %35, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %37)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %36)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br i1 %36, label %_llgo_2, label %_llgo_3

_llgo_15:                                         ; preds = %_llgo_7
  br label %_llgo_8
}

define void @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*outer).M"(ptr %0) {
_llgo_0:
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*outer).M$coro"(ptr %0) #0 {
_llgo_0:
  %1 = alloca { ptr }, align 8
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call i64 @llvm.coro.size.i64()
  %6 = call ptr @malloc(i64 %5)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %7 = phi ptr [ null, %_llgo_0 ], [ %6, %_llgo_2 ]
  %8 = call ptr @llvm.coro.begin(token %3, ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %9 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_5:                                          ; preds = %_llgo_1
  %10 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %10)
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %12 = call ptr @llvm.coro.free(token %3, ptr %8)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
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

define void @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*outer).M$thunk"(ptr %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*outer).M"(ptr %0)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*outer).M$thunk$coro"(ptr %0) #0 {
_llgo_0:
  %1 = alloca { ptr }, align 8
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*outer).M"(ptr %0)
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call i64 @llvm.coro.size.i64()
  %6 = call ptr @malloc(i64 %5)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %7 = phi ptr [ null, %_llgo_0 ], [ %6, %_llgo_2 ]
  %8 = call ptr @llvm.coro.begin(token %3, ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %9 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_5:                                          ; preds = %_llgo_1
  %10 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %10)
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %12 = call ptr @llvm.coro.free(token %3, ptr %8)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/methodthunk.(*outer).M$thunk"(ptr %0, ptr %1) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*outer).M$thunk"(ptr %1)
  ret void
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define i64 @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*InnerInt).M$thunk"(ptr %0) {
_llgo_0:
  %1 = call i64 @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*InnerInt).M"(ptr %0)
  ret i64 %1
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*InnerInt).M$thunk$coro"(ptr %0) #0 {
_llgo_0:
  %1 = alloca { ptr, i64 }, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = call i64 @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*InnerInt).M"(ptr %0)
  %6 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 1
  store i64 %5, ptr %6, align 4
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
  %12 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
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

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/methodthunk.(*InnerInt).M$thunk"(ptr %0, ptr %1) {
_llgo_0:
  %2 = tail call i64 @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*InnerInt).M$thunk"(ptr %1)
  ret i64 %2
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

attributes #0 = { presplitcoroutine }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nounwind }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nounwind memory(argmem: read) }
