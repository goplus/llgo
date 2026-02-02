; ModuleID = 'github.com/goplus/llgo/cl/_testgo/reflect'
source_filename = "github.com/goplus/llgo/cl/_testgo/reflect"

%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.InterfaceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/abi.SliceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.MapType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, ptr, ptr, { ptr, ptr }, i8, i8, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.ArrayType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, ptr, i64 }
%"github.com/goplus/llgo/cl/_testgo/reflect.T" = type { i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%reflect.Value = type { ptr, ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/reflect.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [11 x i8] c"call.method", align 1
@"_llgo_closure$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -459742120, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 49 }, ptr @"*_llgo_closure$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk$fields", i64 2, i64 2 } }, align 8
@1 = private unnamed_addr constant [49 x i8] c"struct { $f func(int) int; $data unsafe.Pointer }", align 1
@"*_llgo_closure$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -299237839, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 49 }, ptr null }, ptr @"_llgo_closure$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk" }, align 8
@2 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134531106, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 13 }, ptr @"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out", i64 1, i64 1 } }, align 8
@3 = private unnamed_addr constant [13 x i8] c"func(int) int", align 1
@"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1763581361, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 13 }, ptr null }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, align 8
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, ptr @"*_llgo_int" }, align 8
@4 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@5 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@6 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@7 = private unnamed_addr constant [7 x i8] c"closure", align 1
@8 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 6 }, ptr @"*_llgo_string" }, align 8
@9 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@10 = private unnamed_addr constant [12 x i8] c"call.closure", align 1
@11 = private unnamed_addr constant [4 x i8] c"func", align 1
@12 = private unnamed_addr constant [9 x i8] c"call.func", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/reflect.T" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1206070585, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reflect.T" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 3 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr @"github.com/goplus/llgo/cl/_testgo/reflect.(*T).Add", ptr @"github.com/goplus/llgo/cl/_testgo/reflect.(*T).Add" }] }, align 8
@13 = private unnamed_addr constant [6 x i8] c"main.T", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/reflect.T" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -325780477, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reflect.T" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reflect.T" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/reflect.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@14 = private unnamed_addr constant [41 x i8] c"github.com/goplus/llgo/cl/_testgo/reflect", align 1
@15 = private unnamed_addr constant [1 x i8] c"n", align 1
@"github.com/goplus/llgo/cl/_testgo/reflect.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@16 = private unnamed_addr constant [3 x i8] c"Add", align 1
@"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1704177746, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 26 }, ptr @"*_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A$imethods", i64 1, i64 1 } }, align 8
@17 = private unnamed_addr constant [26 x i8] c"interface { Add(int) int }", align 1
@"*_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -721103048, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 26 }, ptr null }, ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" }, align 8
@"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 3 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }], align 8
@18 = private unnamed_addr constant [7 x i8] c"imethod", align 1
@19 = private unnamed_addr constant [6 x i8] c"method", align 1
@"_llgo_closure$FjMjjQr3-2iTiWyZP1IIQFOz0hUCa0OS6pEm5uVV6Pk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1002059468, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 113 }, ptr @"*_llgo_closure$FjMjjQr3-2iTiWyZP1IIQFOz0hUCa0OS6pEm5uVV6Pk" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$FjMjjQr3-2iTiWyZP1IIQFOz0hUCa0OS6pEm5uVV6Pk$fields", i64 2, i64 2 } }, align 8
@20 = private unnamed_addr constant [113 x i8] c"struct { $f func(int, int, int, int, int, int, int, int, int, ...interface {}) (int, int); $data unsafe.Pointer }", align 1
@"*_llgo_closure$FjMjjQr3-2iTiWyZP1IIQFOz0hUCa0OS6pEm5uVV6Pk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2059600842, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 113 }, ptr null }, ptr @"_llgo_closure$FjMjjQr3-2iTiWyZP1IIQFOz0hUCa0OS6pEm5uVV6Pk" }, align 8
@"_llgo_func$KK0iU4Wpi3BdRqssvycXqtgNe2Dq1riBlM61Rds1QsU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -767802053, i8 16, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 77 }, ptr @"*_llgo_func$KK0iU4Wpi3BdRqssvycXqtgNe2Dq1riBlM61Rds1QsU" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$KK0iU4Wpi3BdRqssvycXqtgNe2Dq1riBlM61Rds1QsU$in", i64 10, i64 10 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$KK0iU4Wpi3BdRqssvycXqtgNe2Dq1riBlM61Rds1QsU$out", i64 2, i64 2 } }, align 8
@21 = private unnamed_addr constant [77 x i8] c"func(int, int, int, int, int, int, int, int, int, ...interface {}) (int, int)", align 1
@"*_llgo_func$KK0iU4Wpi3BdRqssvycXqtgNe2Dq1riBlM61Rds1QsU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1012808481, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 77 }, ptr null }, ptr @"_llgo_func$KK0iU4Wpi3BdRqssvycXqtgNe2Dq1riBlM61Rds1QsU" }, align 8
@"[]_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -396233978, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 14 }, ptr @"*[]_llgo_any" }, ptr @_llgo_any }, align 8
@22 = private unnamed_addr constant [14 x i8] c"[]interface {}", align 1
@"*[]_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1171476965, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 14 }, ptr null }, ptr @"[]_llgo_any" }, align 8
@_llgo_any = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1376530322, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 12 }, ptr @"*_llgo_any" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@23 = private unnamed_addr constant [12 x i8] c"interface {}", align 1
@"*_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1741196194, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 12 }, ptr null }, ptr @_llgo_any }, align 8
@"_llgo_func$KK0iU4Wpi3BdRqssvycXqtgNe2Dq1riBlM61Rds1QsU$in" = weak_odr constant [10 x ptr] [ptr @_llgo_int, ptr @_llgo_int, ptr @_llgo_int, ptr @_llgo_int, ptr @_llgo_int, ptr @_llgo_int, ptr @_llgo_int, ptr @_llgo_int, ptr @_llgo_int, ptr @"[]_llgo_any"], align 8
@"_llgo_func$KK0iU4Wpi3BdRqssvycXqtgNe2Dq1riBlM61Rds1QsU$out" = weak_odr constant [2 x ptr] [ptr @_llgo_int, ptr @_llgo_int], align 8
@"_llgo_closure$FjMjjQr3-2iTiWyZP1IIQFOz0hUCa0OS6pEm5uVV6Pk$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 }, ptr @"_llgo_func$KK0iU4Wpi3BdRqssvycXqtgNe2Dq1riBlM61Rds1QsU", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@24 = private unnamed_addr constant [10 x i8] c"call.slice", align 1
@25 = private unnamed_addr constant [40 x i8] c"type assertion interface{} -> int failed", align 1
@"map[_llgo_int]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2084636366, i8 0, i8 8, i8 8, i8 53, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 14 }, ptr @"*map[_llgo_int]_llgo_string" }, ptr @_llgo_int, ptr @_llgo_string, ptr @"github.com/goplus/llgo/cl/_testgo/reflect.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ", { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehashFromCtx", ptr @_llgo_int }, i8 8, i8 16, i16 208, i32 4 }, align 8
@26 = private unnamed_addr constant [14 x i8] c"map[int]string", align 1
@"*map[_llgo_int]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 668541983, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 14 }, ptr null }, ptr @"map[_llgo_int]_llgo_string" }, align 8
@"github.com/goplus/llgo/cl/_testgo/reflect.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 208, i64 208, i32 -1066095190, i8 0, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"github.com/goplus/llgo/cl/_testgo/reflect.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 82 }, ptr @"*github.com/goplus/llgo/cl/_testgo/reflect.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/reflect.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ$fields", i64 4, i64 4 } }, align 8
@27 = private unnamed_addr constant [82 x i8] c"struct { topbits [8]uint8; keys [8]int; elems [8]string; overflow unsafe.Pointer }", align 1
@"*github.com/goplus/llgo/cl/_testgo/reflect.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 430704888, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 82 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testgo/reflect.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" }, align 8
@28 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@"[8]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 307038632, i8 8, i8 1, i8 1, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_uint8" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 8 }, ptr @"*[8]_llgo_uint8" }, ptr @_llgo_uint8, ptr @"[]_llgo_uint8", i64 8 }, align 8
@29 = private unnamed_addr constant [8 x i8] c"[8]uint8", align 1
@"*[8]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -566230779, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 8 }, ptr null }, ptr @"[8]_llgo_uint8" }, align 8
@_llgo_uint8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 269156761, i8 12, i8 1, i8 1, i8 40, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 5 }, ptr @"*_llgo_uint8" }, align 8
@30 = private unnamed_addr constant [5 x i8] c"uint8", align 1
@"*_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1277858201, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 5 }, ptr null }, ptr @_llgo_uint8 }, align 8
@"[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 370346748, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 7 }, ptr @"*[]_llgo_uint8" }, ptr @_llgo_uint8 }, align 8
@31 = private unnamed_addr constant [7 x i8] c"[]uint8", align 1
@"*[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2143776929, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 7 }, ptr null }, ptr @"[]_llgo_uint8" }, align 8
@32 = private unnamed_addr constant [4 x i8] c"keys", align 1
@"[8]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 0, i32 -1310855284, i8 8, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_int" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 6 }, ptr @"*[8]_llgo_int" }, ptr @_llgo_int, ptr @"[]_llgo_int", i64 8 }, align 8
@33 = private unnamed_addr constant [6 x i8] c"[8]int", align 1
@"*[8]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1841254256, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 6 }, ptr null }, ptr @"[8]_llgo_int" }, align 8
@"[]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -1129561019, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 5 }, ptr @"*[]_llgo_int" }, ptr @_llgo_int }, align 8
@34 = private unnamed_addr constant [5 x i8] c"[]int", align 1
@"*[]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1428175521, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 5 }, ptr null }, ptr @"[]_llgo_int" }, align 8
@35 = private unnamed_addr constant [5 x i8] c"elems", align 1
@"[8]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 128, i64 120, i32 460245566, i8 0, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_string" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 9 }, ptr @"*[8]_llgo_string" }, ptr @_llgo_string, ptr @"[]_llgo_string", i64 8 }, align 8
@36 = private unnamed_addr constant [9 x i8] c"[8]string", align 1
@"*[8]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 368026044, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 9 }, ptr null }, ptr @"[8]_llgo_string" }, align 8
@"[]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 608974920, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 8 }, ptr @"*[]_llgo_string" }, ptr @_llgo_string }, align 8
@37 = private unnamed_addr constant [8 x i8] c"[]string", align 1
@"*[]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -157880218, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 8 }, ptr null }, ptr @"[]_llgo_string" }, align 8
@38 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@"github.com/goplus/llgo/cl/_testgo/reflect.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 7 }, ptr @"[8]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 4 }, ptr @"[8]_llgo_int", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 5 }, ptr @"[8]_llgo_string", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 8 }, ptr @_llgo_Pointer, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@39 = private unnamed_addr constant [5 x i8] c"hello", align 1
@40 = private unnamed_addr constant [5 x i8] c"world", align 1
@41 = private unnamed_addr constant [14 x i8] c"MapIndex error", align 1
@42 = private unnamed_addr constant [4 x i8] c"todo", align 1
@43 = private unnamed_addr constant [12 x i8] c"must invalid", align 1
@44 = private unnamed_addr constant [13 x i8] c"MapIter error", align 1

define i64 @"github.com/goplus/llgo/cl/_testgo/reflect.(*T).Add"(ptr %0, i64 %1) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 11 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reflect.T", ptr %0, i32 0, i32 0
  %3 = load i64, ptr %2, align 4
  %4 = add i64 %3, %1
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reflect.T", ptr %0, i32 0, i32 0
  store i64 %4, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reflect.T", ptr %0, i32 0, i32 0
  %7 = load i64, ptr %6, align 4
  ret i64 %7
}

define void @"github.com/goplus/llgo/cl/_testgo/reflect.callClosure"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 100, ptr %0, align 4
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/reflect.callClosure$1", ptr undef }, ptr %1, 1
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } %3, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", ptr undef }, ptr %4, 1
  %6 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5)
  %7 = call i64 @reflect.Value.Kind(%reflect.Value %6)
  %8 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %6)
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %8)
  %10 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, 0
  %11 = getelementptr ptr, ptr %10, i64 37
  %12 = load ptr, ptr %11, align 8
  %13 = insertvalue { ptr, ptr } undef, ptr %12, 0
  %14 = insertvalue { ptr, ptr } %13, ptr %9, 1
  %15 = extractvalue { ptr, ptr } %14, 0
  %16 = extractvalue { ptr, ptr } %14, 1
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %16)
  %17 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %15(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %19 = getelementptr inbounds %reflect.Value, ptr %18, i64 0
  %20 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 100 to ptr) })
  store %reflect.Value %20, ptr %19, align 8
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %18, 0
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21, i64 1, 1
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, i64 1, 2
  %24 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %6, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23)
  %25 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, 0
  %26 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, 1
  %27 = icmp sge i64 0, %26
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %27)
  %28 = getelementptr inbounds %reflect.Value, ptr %25, i64 0
  %29 = load %reflect.Value, ptr %28, align 8
  %30 = call i64 @reflect.Value.Int(%reflect.Value %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %30)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %31 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %6)
  %32 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %31, 0
  %33 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.MatchesClosure"(ptr @"_llgo_closure$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", ptr %32)
  br i1 %33, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr %34, align 8
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %34, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %35)
  unreachable

_llgo_2:                                          ; preds = %_llgo_5
  %36 = extractvalue { ptr, ptr } %44, 1
  %37 = extractvalue { ptr, ptr } %44, 0
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %36)
  %38 = call i64 %37(i64 100)
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %39 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %31, 1
  %40 = load { ptr, ptr }, ptr %39, align 8
  %41 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %40, 0
  %42 = insertvalue { { ptr, ptr }, i1 } %41, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %43 = phi { { ptr, ptr }, i1 } [ %42, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %44 = extractvalue { { ptr, ptr }, i1 } %43, 0
  %45 = extractvalue { { ptr, ptr }, i1 } %43, 1
  br i1 %45, label %_llgo_2, label %_llgo_1
}

define i64 @"github.com/goplus/llgo/cl/_testgo/reflect.callClosure$1"(i64 %0) {
_llgo_0:
  %1 = call ptr asm sideeffect "mov $0, x26", "=r"()
  %2 = load { ptr }, ptr %1, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 12 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = extractvalue { ptr } %2, 0
  %4 = load i64, ptr %3, align 4
  %5 = add i64 %4, %0
  %6 = add i64 %5, 1
  ret i64 %6
}

define void @"github.com/goplus/llgo/cl/_testgo/reflect.callFunc"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/reflect.callFunc$1", ptr null }, ptr %0, align 8
  %1 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", ptr undef }, ptr %0, 1
  %2 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %1)
  %3 = call i64 @reflect.Value.Kind(%reflect.Value %2)
  %4 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %2)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %4)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, 0
  %7 = getelementptr ptr, ptr %6, i64 37
  %8 = load ptr, ptr %7, align 8
  %9 = insertvalue { ptr, ptr } undef, ptr %8, 0
  %10 = insertvalue { ptr, ptr } %9, ptr %5, 1
  %11 = extractvalue { ptr, ptr } %10, 0
  %12 = extractvalue { ptr, ptr } %10, 1
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %12)
  %13 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %11(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %15 = getelementptr inbounds %reflect.Value, ptr %14, i64 0
  %16 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 100 to ptr) })
  store %reflect.Value %16, ptr %15, align 8
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %14, 0
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, i64 1, 1
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, i64 1, 2
  %20 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %2, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19)
  %21 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, 0
  %22 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, 1
  %23 = icmp sge i64 0, %22
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %23)
  %24 = getelementptr inbounds %reflect.Value, ptr %21, i64 0
  %25 = load %reflect.Value, ptr %24, align 8
  %26 = call i64 @reflect.Value.Int(%reflect.Value %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %27 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %2)
  %28 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %27, 0
  %29 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.MatchesClosure"(ptr @"_llgo_closure$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", ptr %28)
  br i1 %29, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr %30, align 8
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %30, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %31)
  unreachable

_llgo_2:                                          ; preds = %_llgo_5
  %32 = extractvalue { ptr, ptr } %40, 1
  %33 = extractvalue { ptr, ptr } %40, 0
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %32)
  %34 = call i64 %33(i64 100)
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %35 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %27, 1
  %36 = load { ptr, ptr }, ptr %35, align 8
  %37 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %36, 0
  %38 = insertvalue { { ptr, ptr }, i1 } %37, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %39 = phi { { ptr, ptr }, i1 } [ %38, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %40 = extractvalue { { ptr, ptr }, i1 } %39, 0
  %41 = extractvalue { { ptr, ptr }, i1 } %39, 1
  br i1 %41, label %_llgo_2, label %_llgo_1
}

define i64 @"github.com/goplus/llgo/cl/_testgo/reflect.callFunc$1"(i64 %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 9 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = add i64 %0, 1
  ret i64 %1
}

define void @"github.com/goplus/llgo/cl/_testgo/reflect.callIMethod"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reflect.T", ptr %0, i32 0, i32 0
  store i64 1, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reflect.T")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %0, 1
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %4)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, 1
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %5, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, ptr %6, 1
  %9 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %8)
  %10 = call %reflect.Value @reflect.Value.Method(%reflect.Value %9, i64 0)
  %11 = call i64 @reflect.Value.Kind(%reflect.Value %10)
  %12 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %10)
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %12)
  %14 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %12, 0
  %15 = getelementptr ptr, ptr %14, i64 37
  %16 = load ptr, ptr %15, align 8
  %17 = insertvalue { ptr, ptr } undef, ptr %16, 0
  %18 = insertvalue { ptr, ptr } %17, ptr %13, 1
  %19 = extractvalue { ptr, ptr } %18, 0
  %20 = extractvalue { ptr, ptr } %18, 1
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %20)
  %21 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %19(ptr %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %23 = getelementptr inbounds %reflect.Value, ptr %22, i64 0
  %24 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 100 to ptr) })
  store %reflect.Value %24, ptr %23, align 8
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %22, 0
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25, i64 1, 1
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26, i64 1, 2
  %28 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %10, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %27)
  %29 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28, 0
  %30 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28, 1
  %31 = icmp sge i64 0, %30
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %31)
  %32 = getelementptr inbounds %reflect.Value, ptr %29, i64 0
  %33 = load %reflect.Value, ptr %32, align 8
  %34 = call i64 @reflect.Value.Int(%reflect.Value %33)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %35 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %10)
  %36 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %35, 0
  %37 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.MatchesClosure"(ptr @"_llgo_closure$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", ptr %36)
  br i1 %37, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr %38, align 8
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %38, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %39)
  unreachable

_llgo_2:                                          ; preds = %_llgo_5
  %40 = extractvalue { ptr, ptr } %63, 1
  %41 = extractvalue { ptr, ptr } %63, 0
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %40)
  %42 = call i64 %41(i64 1)
  %43 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %10)
  %44 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %43)
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %46 = getelementptr inbounds %reflect.Value, ptr %45, i64 0
  %47 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 100 to ptr) })
  store %reflect.Value %47, ptr %46, align 8
  %48 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %45, 0
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %48, i64 1, 1
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %49, i64 1, 2
  %51 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %44, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %50)
  %52 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %51, 0
  %53 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %51, 1
  %54 = icmp sge i64 0, %53
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %54)
  %55 = getelementptr inbounds %reflect.Value, ptr %52, i64 0
  %56 = load %reflect.Value, ptr %55, align 8
  %57 = call i64 @reflect.Value.Int(%reflect.Value %56)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %57)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %58 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %35, 1
  %59 = load { ptr, ptr }, ptr %58, align 8
  %60 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %59, 0
  %61 = insertvalue { { ptr, ptr }, i1 } %60, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %62 = phi { { ptr, ptr }, i1 } [ %61, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %63 = extractvalue { { ptr, ptr }, i1 } %62, 0
  %64 = extractvalue { { ptr, ptr }, i1 } %62, 1
  br i1 %64, label %_llgo_2, label %_llgo_1
}

define void @"github.com/goplus/llgo/cl/_testgo/reflect.callMethod"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reflect.T", ptr %0, i32 0, i32 0
  store i64 1, ptr %1, align 4
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reflect.T", ptr undef }, ptr %0, 1
  %3 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %2)
  %4 = call %reflect.Value @reflect.Value.Method(%reflect.Value %3, i64 0)
  %5 = call i64 @reflect.Value.Kind(%reflect.Value %4)
  %6 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %4)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %6)
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, 0
  %9 = getelementptr ptr, ptr %8, i64 37
  %10 = load ptr, ptr %9, align 8
  %11 = insertvalue { ptr, ptr } undef, ptr %10, 0
  %12 = insertvalue { ptr, ptr } %11, ptr %7, 1
  %13 = extractvalue { ptr, ptr } %12, 0
  %14 = extractvalue { ptr, ptr } %12, 1
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %14)
  %15 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %13(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %17 = getelementptr inbounds %reflect.Value, ptr %16, i64 0
  %18 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 100 to ptr) })
  store %reflect.Value %18, ptr %17, align 8
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %16, 0
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, i64 1, 1
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, i64 1, 2
  %22 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %4, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21)
  %23 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, 0
  %24 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, 1
  %25 = icmp sge i64 0, %24
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %25)
  %26 = getelementptr inbounds %reflect.Value, ptr %23, i64 0
  %27 = load %reflect.Value, ptr %26, align 8
  %28 = call i64 @reflect.Value.Int(%reflect.Value %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %28)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %29 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %4)
  %30 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %29, 0
  %31 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.MatchesClosure"(ptr @"_llgo_closure$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", ptr %30)
  br i1 %31, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr %32, align 8
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %32, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %33)
  unreachable

_llgo_2:                                          ; preds = %_llgo_5
  %34 = extractvalue { ptr, ptr } %57, 1
  %35 = extractvalue { ptr, ptr } %57, 0
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %34)
  %36 = call i64 %35(i64 1)
  %37 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %4)
  %38 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %37)
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %40 = getelementptr inbounds %reflect.Value, ptr %39, i64 0
  %41 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 100 to ptr) })
  store %reflect.Value %41, ptr %40, align 8
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %39, 0
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %42, i64 1, 1
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %43, i64 1, 2
  %45 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %38, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44)
  %46 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %45, 0
  %47 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %45, 1
  %48 = icmp sge i64 0, %47
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %48)
  %49 = getelementptr inbounds %reflect.Value, ptr %46, i64 0
  %50 = load %reflect.Value, ptr %49, align 8
  %51 = call i64 @reflect.Value.Int(%reflect.Value %50)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %51)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %52 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %29, 1
  %53 = load { ptr, ptr }, ptr %52, align 8
  %54 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %53, 0
  %55 = insertvalue { { ptr, ptr }, i1 } %54, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %56 = phi { { ptr, ptr }, i1 } [ %55, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %57 = extractvalue { { ptr, ptr }, i1 } %56, 0
  %58 = extractvalue { { ptr, ptr }, i1 } %56, 1
  br i1 %58, label %_llgo_2, label %_llgo_1
}

define void @"github.com/goplus/llgo/cl/_testgo/reflect.callSlice"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/reflect.demo", ptr null }, ptr %0, align 8
  %1 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$FjMjjQr3-2iTiWyZP1IIQFOz0hUCa0OS6pEm5uVV6Pk", ptr undef }, ptr %0, 1
  %2 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %1)
  %3 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 1 to ptr) })
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 288)
  %5 = getelementptr inbounds %reflect.Value, ptr %4, i64 0
  store %reflect.Value %3, ptr %5, align 8
  %6 = getelementptr inbounds %reflect.Value, ptr %4, i64 1
  store %reflect.Value %3, ptr %6, align 8
  %7 = getelementptr inbounds %reflect.Value, ptr %4, i64 2
  store %reflect.Value %3, ptr %7, align 8
  %8 = getelementptr inbounds %reflect.Value, ptr %4, i64 3
  store %reflect.Value %3, ptr %8, align 8
  %9 = getelementptr inbounds %reflect.Value, ptr %4, i64 4
  store %reflect.Value %3, ptr %9, align 8
  %10 = getelementptr inbounds %reflect.Value, ptr %4, i64 5
  store %reflect.Value %3, ptr %10, align 8
  %11 = getelementptr inbounds %reflect.Value, ptr %4, i64 6
  store %reflect.Value %3, ptr %11, align 8
  %12 = getelementptr inbounds %reflect.Value, ptr %4, i64 7
  store %reflect.Value %3, ptr %12, align 8
  %13 = getelementptr inbounds %reflect.Value, ptr %4, i64 8
  store %reflect.Value %3, ptr %13, align 8
  %14 = getelementptr inbounds %reflect.Value, ptr %4, i64 9
  %15 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 1 to ptr) })
  store %reflect.Value %15, ptr %14, align 8
  %16 = getelementptr inbounds %reflect.Value, ptr %4, i64 10
  %17 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 2 to ptr) })
  store %reflect.Value %17, ptr %16, align 8
  %18 = getelementptr inbounds %reflect.Value, ptr %4, i64 11
  %19 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 3 to ptr) })
  store %reflect.Value %19, ptr %18, align 8
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, i64 12, 1
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21, i64 12, 2
  %23 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %2, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22)
  %24 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, 0
  %25 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, 1
  %26 = icmp sge i64 0, %25
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %26)
  %27 = getelementptr inbounds %reflect.Value, ptr %24, i64 0
  %28 = load %reflect.Value, ptr %27, align 8
  %29 = call i64 @reflect.Value.Int(%reflect.Value %28)
  %30 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, 0
  %31 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, 1
  %32 = icmp sge i64 1, %31
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %32)
  %33 = getelementptr inbounds %reflect.Value, ptr %30, i64 1
  %34 = load %reflect.Value, ptr %33, align 8
  %35 = call i64 @reflect.Value.Int(%reflect.Value %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %35)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 240)
  %37 = getelementptr inbounds %reflect.Value, ptr %36, i64 0
  store %reflect.Value %3, ptr %37, align 8
  %38 = getelementptr inbounds %reflect.Value, ptr %36, i64 1
  store %reflect.Value %3, ptr %38, align 8
  %39 = getelementptr inbounds %reflect.Value, ptr %36, i64 2
  store %reflect.Value %3, ptr %39, align 8
  %40 = getelementptr inbounds %reflect.Value, ptr %36, i64 3
  store %reflect.Value %3, ptr %40, align 8
  %41 = getelementptr inbounds %reflect.Value, ptr %36, i64 4
  store %reflect.Value %3, ptr %41, align 8
  %42 = getelementptr inbounds %reflect.Value, ptr %36, i64 5
  store %reflect.Value %3, ptr %42, align 8
  %43 = getelementptr inbounds %reflect.Value, ptr %36, i64 6
  store %reflect.Value %3, ptr %43, align 8
  %44 = getelementptr inbounds %reflect.Value, ptr %36, i64 7
  store %reflect.Value %3, ptr %44, align 8
  %45 = getelementptr inbounds %reflect.Value, ptr %36, i64 8
  store %reflect.Value %3, ptr %45, align 8
  %46 = getelementptr inbounds %reflect.Value, ptr %36, i64 9
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 48)
  %48 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %47, i64 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 1 to ptr) }, ptr %48, align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %47, i64 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 2 to ptr) }, ptr %49, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %47, i64 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 3 to ptr) }, ptr %50, align 8
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %47, 0
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %51, i64 3, 1
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %52, i64 3, 2
  %54 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %53, ptr %54, align 8
  %55 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"[]_llgo_any", ptr undef }, ptr %54, 1
  %56 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %55)
  store %reflect.Value %56, ptr %46, align 8
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %36, 0
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %57, i64 10, 1
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58, i64 10, 2
  %60 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.CallSlice(%reflect.Value %2, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %59)
  %61 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, 0
  %62 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, 1
  %63 = icmp sge i64 0, %62
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %63)
  %64 = getelementptr inbounds %reflect.Value, ptr %61, i64 0
  %65 = load %reflect.Value, ptr %64, align 8
  %66 = call i64 @reflect.Value.Int(%reflect.Value %65)
  %67 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, 0
  %68 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, 1
  %69 = icmp sge i64 1, %68
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %69)
  %70 = getelementptr inbounds %reflect.Value, ptr %67, i64 1
  %71 = load %reflect.Value, ptr %70, align 8
  %72 = call i64 @reflect.Value.Int(%reflect.Value %71)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %66)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %72)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define { i64, i64 } @"github.com/goplus/llgo/cl/_testgo/reflect.demo"(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9) {
_llgo_0:
  %10 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_4, %_llgo_0
  %11 = phi i64 [ 0, %_llgo_0 ], [ %36, %_llgo_4 ]
  %12 = phi i64 [ -1, %_llgo_0 ], [ %13, %_llgo_4 ]
  %13 = add i64 %12, 1
  %14 = icmp slt i64 %13, %10
  br i1 %14, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %15 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, 0
  %16 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, 1
  %17 = icmp slt i64 %13, 0
  %18 = icmp sge i64 %13, %16
  %19 = or i1 %18, %17
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %19)
  %20 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %15, i64 %13
  %21 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %20, align 8
  %22 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %21, 0
  %23 = icmp eq ptr %22, @_llgo_int
  br i1 %23, label %_llgo_4, label %_llgo_5

_llgo_3:                                          ; preds = %_llgo_1
  %24 = add i64 %0, %1
  %25 = add i64 %24, %2
  %26 = add i64 %25, %3
  %27 = add i64 %26, %4
  %28 = add i64 %27, %5
  %29 = add i64 %28, %6
  %30 = add i64 %29, %7
  %31 = add i64 %30, %8
  %32 = insertvalue { i64, i64 } undef, i64 %31, 0
  %33 = insertvalue { i64, i64 } %32, i64 %11, 1
  ret { i64, i64 } %33

_llgo_4:                                          ; preds = %_llgo_2
  %34 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %21, 1
  %35 = ptrtoint ptr %34 to i64
  %36 = add i64 %11, %35
  br label %_llgo_1

_llgo_5:                                          ; preds = %_llgo_2
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 40 }, ptr %37, align 8
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %37, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %38)
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testgo/reflect.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/reflect.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/reflect.init$guard", align 1
  call void @reflect.init()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reflect.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/cl/_testgo/reflect.callSlice"()
  call void @"github.com/goplus/llgo/cl/_testgo/reflect.callFunc"()
  call void @"github.com/goplus/llgo/cl/_testgo/reflect.callClosure"()
  call void @"github.com/goplus/llgo/cl/_testgo/reflect.callMethod"()
  call void @"github.com/goplus/llgo/cl/_testgo/reflect.callIMethod"()
  call void @"github.com/goplus/llgo/cl/_testgo/reflect.mapDemo1"()
  call void @"github.com/goplus/llgo/cl/_testgo/reflect.mapDemo2"()
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reflect.mapDemo1"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_int]_llgo_string", i64 2)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_int]_llgo_string", ptr %0, ptr %1)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 5 }, ptr %2, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %3, align 4
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_int]_llgo_string", ptr %0, ptr %3)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 5 }, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"map[_llgo_int]_llgo_string", ptr undef }, ptr %0, 1
  %6 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5)
  %7 = call i64 @reflect.Value.Len(%reflect.Value %6)
  %8 = icmp ne i64 %7, 2
  br i1 %8, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3, %_llgo_0
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr %9, align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %9, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %10)
  unreachable

_llgo_2:                                          ; preds = %_llgo_3
  %11 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 2 to ptr) })
  %12 = call %reflect.Value @reflect.Value.MapIndex(%reflect.Value %6, %reflect.Value %11)
  %13 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %12)
  %14 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %13, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 5 })
  %15 = xor i1 %14, true
  br i1 %15, label %_llgo_4, label %_llgo_5

_llgo_3:                                          ; preds = %_llgo_0
  %16 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.MapKeys(%reflect.Value %6)
  %17 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, 1
  %18 = icmp ne i64 %17, 2
  br i1 %18, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_2
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 14 }, ptr %19, align 8
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %19, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %20)
  unreachable

_llgo_5:                                          ; preds = %_llgo_2
  %21 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 2 to ptr) })
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 4 }, ptr %22, align 8
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %22, 1
  %24 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %23)
  call void @reflect.Value.SetMapIndex(%reflect.Value %6, %reflect.Value %21, %reflect.Value %24)
  %25 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 2 to ptr) })
  %26 = call %reflect.Value @reflect.Value.MapIndex(%reflect.Value %6, %reflect.Value %25)
  %27 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %26)
  %28 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %27, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 4 })
  %29 = xor i1 %28, true
  br i1 %29, label %_llgo_6, label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_5
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 14 }, ptr %30, align 8
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %30, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %31)
  unreachable

_llgo_7:                                          ; preds = %_llgo_5
  %32 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr null })
  %33 = call %reflect.Value @reflect.Value.MapIndex(%reflect.Value %6, %reflect.Value %32)
  %34 = call i1 @reflect.Value.IsValid(%reflect.Value %33)
  br i1 %34, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 12 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_7
  %35 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %6)
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %35)
  %37 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %35, 0
  %38 = getelementptr ptr, ptr %37, i64 20
  %39 = load ptr, ptr %38, align 8
  %40 = insertvalue { ptr, ptr } undef, ptr %39, 0
  %41 = insertvalue { ptr, ptr } %40, ptr %36, 1
  %42 = extractvalue { ptr, ptr } %41, 0
  %43 = extractvalue { ptr, ptr } %41, 1
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %43)
  %44 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" %42(ptr %43)
  %45 = call %reflect.Value @reflect.New(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %44)
  %46 = call %reflect.Value @reflect.Value.Elem(%reflect.Value %45)
  %47 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %6)
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %47)
  %49 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %47, 0
  %50 = getelementptr ptr, ptr %49, i64 11
  %51 = load ptr, ptr %50, align 8
  %52 = insertvalue { ptr, ptr } undef, ptr %51, 0
  %53 = insertvalue { ptr, ptr } %52, ptr %48, 1
  %54 = extractvalue { ptr, ptr } %53, 0
  %55 = extractvalue { ptr, ptr } %53, 1
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %55)
  %56 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" %54(ptr %55)
  %57 = call %reflect.Value @reflect.New(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %56)
  %58 = call %reflect.Value @reflect.Value.Elem(%reflect.Value %57)
  %59 = call ptr @reflect.Value.MapRange(%reflect.Value %6)
  br label %_llgo_12

_llgo_10:                                         ; preds = %_llgo_12
  call void @reflect.Value.SetIterKey(%reflect.Value %46, ptr %59)
  call void @reflect.Value.SetIterValue(%reflect.Value %58, ptr %59)
  %60 = call i64 @reflect.Value.Int(%reflect.Value %46)
  %61 = call %reflect.Value @"reflect.(*MapIter).Key"(ptr %59)
  %62 = call i64 @reflect.Value.Int(%reflect.Value %61)
  %63 = icmp ne i64 %60, %62
  br i1 %63, label %_llgo_13, label %_llgo_14

_llgo_11:                                         ; preds = %_llgo_12
  ret void

_llgo_12:                                         ; preds = %_llgo_14, %_llgo_9
  %64 = call i1 @"reflect.(*MapIter).Next"(ptr %59)
  br i1 %64, label %_llgo_10, label %_llgo_11

_llgo_13:                                         ; preds = %_llgo_14, %_llgo_10
  %65 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 13 }, ptr %65, align 8
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %65, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %66)
  unreachable

_llgo_14:                                         ; preds = %_llgo_10
  %67 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %58)
  %68 = call %reflect.Value @"reflect.(*MapIter).Value"(ptr %59)
  %69 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %68)
  %70 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %67, %"github.com/goplus/llgo/runtime/internal/runtime.String" %69)
  %71 = xor i1 %70, true
  br i1 %71, label %_llgo_13, label %_llgo_12
}

define void @"github.com/goplus/llgo/cl/_testgo/reflect.mapDemo2"() {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.TypeOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr null })
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1, align 8
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %1, 1
  %3 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.TypeOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %2)
  %4 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.MapOf(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3)
  %5 = call %reflect.Value @reflect.MakeMap(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %4)
  %6 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 1 to ptr) })
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 5 }, ptr %7, align 8
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %7, 1
  %9 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %8)
  call void @reflect.Value.SetMapIndex(%reflect.Value %5, %reflect.Value %6, %reflect.Value %9)
  %10 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 2 to ptr) })
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 5 }, ptr %11, align 8
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %11, 1
  %13 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %12)
  call void @reflect.Value.SetMapIndex(%reflect.Value %5, %reflect.Value %10, %reflect.Value %13)
  %14 = call i64 @reflect.Value.Len(%reflect.Value %5)
  %15 = icmp ne i64 %14, 2
  br i1 %15, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3, %_llgo_0
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr %16, align 8
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %16, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %17)
  unreachable

_llgo_2:                                          ; preds = %_llgo_3
  %18 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 2 to ptr) })
  %19 = call %reflect.Value @reflect.Value.MapIndex(%reflect.Value %5, %reflect.Value %18)
  %20 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %19)
  %21 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %20, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 5 })
  %22 = xor i1 %21, true
  br i1 %22, label %_llgo_4, label %_llgo_5

_llgo_3:                                          ; preds = %_llgo_0
  %23 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.MapKeys(%reflect.Value %5)
  %24 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, 1
  %25 = icmp ne i64 %24, 2
  br i1 %25, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_2
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 14 }, ptr %26, align 8
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %26, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %27)
  unreachable

_llgo_5:                                          ; preds = %_llgo_2
  %28 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 2 to ptr) })
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 4 }, ptr %29, align 8
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %29, 1
  %31 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %30)
  call void @reflect.Value.SetMapIndex(%reflect.Value %5, %reflect.Value %28, %reflect.Value %31)
  %32 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 2 to ptr) })
  %33 = call %reflect.Value @reflect.Value.MapIndex(%reflect.Value %5, %reflect.Value %32)
  %34 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %33)
  %35 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %34, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 4 })
  %36 = xor i1 %35, true
  br i1 %36, label %_llgo_6, label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_5
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 14 }, ptr %37, align 8
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %37, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %38)
  unreachable

_llgo_7:                                          ; preds = %_llgo_5
  %39 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr null })
  %40 = call %reflect.Value @reflect.Value.MapIndex(%reflect.Value %5, %reflect.Value %39)
  %41 = call i1 @reflect.Value.IsValid(%reflect.Value %40)
  br i1 %41, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 12 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_7
  %42 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %5)
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %42)
  %44 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %42, 0
  %45 = getelementptr ptr, ptr %44, i64 20
  %46 = load ptr, ptr %45, align 8
  %47 = insertvalue { ptr, ptr } undef, ptr %46, 0
  %48 = insertvalue { ptr, ptr } %47, ptr %43, 1
  %49 = extractvalue { ptr, ptr } %48, 0
  %50 = extractvalue { ptr, ptr } %48, 1
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %50)
  %51 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" %49(ptr %50)
  %52 = call %reflect.Value @reflect.New(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %51)
  %53 = call %reflect.Value @reflect.Value.Elem(%reflect.Value %52)
  %54 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %5)
  %55 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %54)
  %56 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %54, 0
  %57 = getelementptr ptr, ptr %56, i64 11
  %58 = load ptr, ptr %57, align 8
  %59 = insertvalue { ptr, ptr } undef, ptr %58, 0
  %60 = insertvalue { ptr, ptr } %59, ptr %55, 1
  %61 = extractvalue { ptr, ptr } %60, 0
  %62 = extractvalue { ptr, ptr } %60, 1
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %62)
  %63 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" %61(ptr %62)
  %64 = call %reflect.Value @reflect.New(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %63)
  %65 = call %reflect.Value @reflect.Value.Elem(%reflect.Value %64)
  %66 = call ptr @reflect.Value.MapRange(%reflect.Value %5)
  br label %_llgo_12

_llgo_10:                                         ; preds = %_llgo_12
  call void @reflect.Value.SetIterKey(%reflect.Value %53, ptr %66)
  call void @reflect.Value.SetIterValue(%reflect.Value %65, ptr %66)
  %67 = call i64 @reflect.Value.Int(%reflect.Value %53)
  %68 = call %reflect.Value @"reflect.(*MapIter).Key"(ptr %66)
  %69 = call i64 @reflect.Value.Int(%reflect.Value %68)
  %70 = icmp ne i64 %67, %69
  br i1 %70, label %_llgo_13, label %_llgo_14

_llgo_11:                                         ; preds = %_llgo_12
  ret void

_llgo_12:                                         ; preds = %_llgo_14, %_llgo_9
  %71 = call i1 @"reflect.(*MapIter).Next"(ptr %66)
  br i1 %71, label %_llgo_10, label %_llgo_11

_llgo_13:                                         ; preds = %_llgo_14, %_llgo_10
  %72 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 13 }, ptr %72, align 8
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %72, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %73)
  unreachable

_llgo_14:                                         ; preds = %_llgo_10
  %74 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %65)
  %75 = call %reflect.Value @"reflect.(*MapIter).Value"(ptr %66)
  %76 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %75)
  %77 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %74, %"github.com/goplus/llgo/runtime/internal/runtime.String" %76)
  %78 = xor i1 %77, true
  br i1 %78, label %_llgo_13, label %_llgo_12
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

declare i64 @reflect.Value.Kind(%reflect.Value)

declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare i64 @reflect.Value.Int(%reflect.Value)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.MatchesClosure"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare %reflect.Value @reflect.Value.Method(%reflect.Value, i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr, ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.CallSlice(%reflect.Value, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @reflect.init()

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.typehashFromCtx"(ptr, i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr, ptr, ptr)

declare i64 @reflect.Value.Len(%reflect.Value)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.MapKeys(%reflect.Value)

declare %reflect.Value @reflect.Value.MapIndex(%reflect.Value, %reflect.Value)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @reflect.Value.SetMapIndex(%reflect.Value, %reflect.Value, %reflect.Value)

declare i1 @reflect.Value.IsValid(%reflect.Value)

declare %reflect.Value @reflect.New(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare %reflect.Value @reflect.Value.Elem(%reflect.Value)

declare ptr @reflect.Value.MapRange(%reflect.Value)

declare i1 @"reflect.(*MapIter).Next"(ptr)

declare void @reflect.Value.SetIterKey(%reflect.Value, ptr)

declare void @reflect.Value.SetIterValue(%reflect.Value, ptr)

declare %reflect.Value @"reflect.(*MapIter).Key"(ptr)

declare %reflect.Value @"reflect.(*MapIter).Value"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.TypeOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.MapOf(%"github.com/goplus/llgo/runtime/internal/runtime.iface", %"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare %reflect.Value @reflect.MakeMap(%"github.com/goplus/llgo/runtime/internal/runtime.iface")
