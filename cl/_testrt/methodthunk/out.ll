; ModuleID = 'github.com/goplus/llgo/cl/_testrt/methodthunk'
source_filename = "github.com/goplus/llgo/cl/_testrt/methodthunk"

%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
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
@"_llgo_closure$31N-NdXOzvOy55m3NGAY_hdZ_NIdtCAe5V7uk7-a5HU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 587021117, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 53 }, ptr @"*_llgo_closure$31N-NdXOzvOy55m3NGAY_hdZ_NIdtCAe5V7uk7-a5HU" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$31N-NdXOzvOy55m3NGAY_hdZ_NIdtCAe5V7uk7-a5HU$fields", i64 2, i64 2 } }, align 8
@0 = private unnamed_addr constant [53 x i8] c"struct { $f func(*main.outer); $data unsafe.Pointer }", align 1
@"*_llgo_closure$31N-NdXOzvOy55m3NGAY_hdZ_NIdtCAe5V7uk7-a5HU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 896836263, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 53 }, ptr null }, ptr @"_llgo_closure$31N-NdXOzvOy55m3NGAY_hdZ_NIdtCAe5V7uk7-a5HU" }, align 8
@1 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$Vj2YTq8TaAn45yidWm4XsVfHuv7WbznkJ_VqZmiRIow" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 456355426, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 17 }, ptr @"*_llgo_func$Vj2YTq8TaAn45yidWm4XsVfHuv7WbznkJ_VqZmiRIow" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$Vj2YTq8TaAn45yidWm4XsVfHuv7WbznkJ_VqZmiRIow$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@2 = private unnamed_addr constant [17 x i8] c"func(*main.outer)", align 1
@"*_llgo_func$Vj2YTq8TaAn45yidWm4XsVfHuv7WbznkJ_VqZmiRIow" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1006562202, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 17 }, ptr null }, ptr @"_llgo_func$Vj2YTq8TaAn45yidWm4XsVfHuv7WbznkJ_VqZmiRIow" }, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.outer" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1716880222, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 10 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.outer" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 45 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 1 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*outer).M", ptr @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*outer).M" }] }, align 8
@3 = private unnamed_addr constant [10 x i8] c"main.outer", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.outer" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 1545761878, i8 13, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.outer" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 10 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.outer" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 45 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/methodthunk.struct$dWFLkDBIS1Fsuz7s-VaGDEwSLo3CKXMAaaGtssf2rF0$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 45 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@4 = private unnamed_addr constant [45 x i8] c"github.com/goplus/llgo/cl/_testrt/methodthunk", align 1
@5 = private unnamed_addr constant [1 x i8] c"y", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, ptr @"*_llgo_int" }, align 8
@6 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@7 = private unnamed_addr constant [5 x i8] c"inner", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.inner" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -2074861867, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.inner" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 10 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.inner" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 45 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/methodthunk.struct$KyEcQxcVU_tO6DKAbg1htV0IKmLOYbjCHy8CH5BU5aA$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 45 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@8 = private unnamed_addr constant [10 x i8] c"main.inner", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.inner" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 474176774, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 10 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.inner" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 45 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 1 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*inner).M", ptr @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*inner).M" }] }, align 8
@9 = private unnamed_addr constant [1 x i8] c"M", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@10 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@11 = private unnamed_addr constant [1 x i8] c"x", align 1
@"github.com/goplus/llgo/cl/_testrt/methodthunk.struct$KyEcQxcVU_tO6DKAbg1htV0IKmLOYbjCHy8CH5BU5aA$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testrt/methodthunk.struct$dWFLkDBIS1Fsuz7s-VaGDEwSLo3CKXMAaaGtssf2rF0$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.inner", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true }], align 8
@"_llgo_func$Vj2YTq8TaAn45yidWm4XsVfHuv7WbznkJ_VqZmiRIow$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.outer"], align 8
@12 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@13 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$31N-NdXOzvOy55m3NGAY_hdZ_NIdtCAe5V7uk7-a5HU$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 2 }, ptr @"_llgo_func$Vj2YTq8TaAn45yidWm4XsVfHuv7WbznkJ_VqZmiRIow", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_closure$ygdobeQSbhO1hSbeWA66ORl_cNKHor-iD8MqRFtuWHg" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 716227980, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 60 }, ptr @"*_llgo_closure$ygdobeQSbhO1hSbeWA66ORl_cNKHor-iD8MqRFtuWHg" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$ygdobeQSbhO1hSbeWA66ORl_cNKHor-iD8MqRFtuWHg$fields", i64 2, i64 2 } }, align 8
@14 = private unnamed_addr constant [60 x i8] c"struct { $f func(*main.InnerInt) int; $data unsafe.Pointer }", align 1
@"*_llgo_closure$ygdobeQSbhO1hSbeWA66ORl_cNKHor-iD8MqRFtuWHg" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -961354141, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 60 }, ptr null }, ptr @"_llgo_closure$ygdobeQSbhO1hSbeWA66ORl_cNKHor-iD8MqRFtuWHg" }, align 8
@"_llgo_func$FmtsGADozkyQT08ENvP6TWR4cTxBUiTI7qSNCOFeF4s" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1493560405, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 24 }, ptr @"*_llgo_func$FmtsGADozkyQT08ENvP6TWR4cTxBUiTI7qSNCOFeF4s" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$FmtsGADozkyQT08ENvP6TWR4cTxBUiTI7qSNCOFeF4s$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$FmtsGADozkyQT08ENvP6TWR4cTxBUiTI7qSNCOFeF4s$out", i64 1, i64 1 } }, align 8
@15 = private unnamed_addr constant [24 x i8] c"func(*main.InnerInt) int", align 1
@"*_llgo_func$FmtsGADozkyQT08ENvP6TWR4cTxBUiTI7qSNCOFeF4s" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1993146843, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 24 }, ptr null }, ptr @"_llgo_func$FmtsGADozkyQT08ENvP6TWR4cTxBUiTI7qSNCOFeF4s" }, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.InnerInt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1157760495, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 13 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.InnerInt" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 45 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 1 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*InnerInt).M", ptr @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*InnerInt).M" }] }, align 8
@16 = private unnamed_addr constant [13 x i8] c"main.InnerInt", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.InnerInt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 1088987572, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.InnerInt" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 13 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.InnerInt" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$8LihShjQN68KxgbxkJ8l6tip2BGrW3Tj5i5Q4NqfXHM$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 45 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@17 = private unnamed_addr constant [1 x i8] c"X", align 1
@"_llgo_struct$8LihShjQN68KxgbxkJ8l6tip2BGrW3Tj5i5Q4NqfXHM$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2131144854, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 10 }, ptr @"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out", i64 1, i64 1 } }, align 8
@18 = private unnamed_addr constant [10 x i8] c"func() int", align 1
@"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1805835775, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 10 }, ptr null }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_func$FmtsGADozkyQT08ENvP6TWR4cTxBUiTI7qSNCOFeF4s$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/methodthunk.InnerInt"], align 8
@"_llgo_func$FmtsGADozkyQT08ENvP6TWR4cTxBUiTI7qSNCOFeF4s$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_closure$ygdobeQSbhO1hSbeWA66ORl_cNKHor-iD8MqRFtuWHg$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 2 }, ptr @"_llgo_func$FmtsGADozkyQT08ENvP6TWR4cTxBUiTI7qSNCOFeF4s", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@19 = private unnamed_addr constant [47 x i8] c"type assertion should have failed but succeeded", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 6 }, ptr @"*_llgo_string" }, align 8
@20 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 6 }, ptr null }, ptr @_llgo_string }, align 8

define i64 @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*InnerInt).M"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/methodthunk.InnerInt", ptr %0, i32 0, i32 0
  %2 = load i64, ptr %1, align 4
  ret i64 %2
}

define i64 @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*OuterInt).M"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/methodthunk.OuterInt", ptr %0, i32 0, i32 1
  %2 = call i64 @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*InnerInt).M"(ptr %1)
  ret i64 %2
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

define void @"github.com/goplus/llgo/cl/_testrt/methodthunk.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/methodthunk.(*outer).M$thunk", ptr null }, ptr %0, align 8
  %1 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$31N-NdXOzvOy55m3NGAY_hdZ_NIdtCAe5V7uk7-a5HU", ptr undef }, ptr %0, 1
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/methodthunk.(*InnerInt).M$thunk", ptr null }, ptr %2, align 8
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$ygdobeQSbhO1hSbeWA66ORl_cNKHor-iD8MqRFtuWHg", ptr undef }, ptr %2, 1
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %1, 0
  %5 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.MatchesClosure"(ptr @"_llgo_closure$31N-NdXOzvOy55m3NGAY_hdZ_NIdtCAe5V7uk7-a5HU", ptr %4)
  br i1 %5, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_8
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 47 }, ptr %6, align 8
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %6, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %7)
  unreachable

_llgo_2:                                          ; preds = %_llgo_8
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %1, 1
  %9 = load { ptr, ptr }, ptr %8, align 8
  %10 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %9, 0
  %11 = insertvalue { { ptr, ptr }, i1 } %10, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %12 = phi { { ptr, ptr }, i1 } [ %11, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %13 = extractvalue { { ptr, ptr }, i1 } %12, 0
  %14 = extractvalue { { ptr, ptr }, i1 } %12, 1
  %15 = extractvalue { ptr, ptr } %13, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %16 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, 0
  %17 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.MatchesClosure"(ptr @"_llgo_closure$31N-NdXOzvOy55m3NGAY_hdZ_NIdtCAe5V7uk7-a5HU", ptr %16)
  br i1 %17, label %_llgo_6, label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_5
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, 1
  %19 = load { ptr, ptr }, ptr %18, align 8
  %20 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %19, 0
  %21 = insertvalue { { ptr, ptr }, i1 } %20, i1 true, 1
  br label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %22 = phi { { ptr, ptr }, i1 } [ %21, %_llgo_6 ], [ zeroinitializer, %_llgo_7 ]
  %23 = extractvalue { { ptr, ptr }, i1 } %22, 0
  %24 = extractvalue { { ptr, ptr }, i1 } %22, 1
  %25 = extractvalue { ptr, ptr } %23, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br i1 %24, label %_llgo_1, label %_llgo_2
}

define void @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*outer).M"(ptr %0) {
_llgo_0:
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*outer).M$thunk"(ptr %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*outer).M"(ptr %0)
  ret void
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

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define i64 @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*InnerInt).M$thunk"(ptr %0) {
_llgo_0:
  %1 = call i64 @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*InnerInt).M"(ptr %0)
  ret i64 %1
}

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/methodthunk.(*InnerInt).M$thunk"(ptr %0, ptr %1) {
_llgo_0:
  %2 = tail call i64 @"github.com/goplus/llgo/cl/_testrt/methodthunk.(*InnerInt).M$thunk"(ptr %1)
  ret i64 %2
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.MatchesClosure"(ptr, ptr)

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
