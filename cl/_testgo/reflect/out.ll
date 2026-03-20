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
%reflect.Value = type { ptr, ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/reflect.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [11 x i8] c"call.method", align 1
@"_llgo_closure$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -459742120, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 13 }, ptr @"*_llgo_closure$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk$fields", i64 2, i64 2 } }, align 8
@1 = private unnamed_addr constant [13 x i8] c"func(int) int", align 1
@"*_llgo_closure$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -299237839, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 13 }, ptr null }, ptr @"_llgo_closure$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk" }, align 8
@2 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134531106, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 13 }, ptr @"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out", i64 1, i64 1 } }, align 8
@"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1763581361, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 13 }, ptr null }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, align 8
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 2, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr @"*_llgo_int" }, align 8
@3 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@4 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@5 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@6 = private unnamed_addr constant [7 x i8] c"closure", align 1
@7 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr @"*_llgo_string" }, align 8
@8 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@9 = private unnamed_addr constant [12 x i8] c"call.closure", align 1
@10 = private unnamed_addr constant [4 x i8] c"func", align 1
@11 = private unnamed_addr constant [9 x i8] c"call.func", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/reflect.T" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1206070585, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reflect.T" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 3 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr @"github.com/goplus/llgo/cl/_testgo/reflect.(*T).Add", ptr @"github.com/goplus/llgo/cl/_testgo/reflect.(*T).Add" }] }, align 8
@12 = private unnamed_addr constant [6 x i8] c"main.T", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/reflect.T" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -325780477, i8 13, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reflect.T" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reflect.T" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/reflect.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@13 = private unnamed_addr constant [41 x i8] c"github.com/goplus/llgo/cl/_testgo/reflect", align 1
@14 = private unnamed_addr constant [1 x i8] c"n", align 1
@"github.com/goplus/llgo/cl/_testgo/reflect.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@15 = private unnamed_addr constant [3 x i8] c"Add", align 1
@"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1704177746, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 26 }, ptr @"*_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A$imethods", i64 1, i64 1 } }, align 8
@16 = private unnamed_addr constant [26 x i8] c"interface { Add(int) int }", align 1
@"*_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -721103048, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 26 }, ptr null }, ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" }, align 8
@"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 3 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }], align 8
@17 = private unnamed_addr constant [7 x i8] c"imethod", align 1
@18 = private unnamed_addr constant [6 x i8] c"method", align 1
@"_llgo_closure$FjMjjQr3-2iTiWyZP1IIQFOz0hUCa0OS6pEm5uVV6Pk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1002059468, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 77 }, ptr @"*_llgo_closure$FjMjjQr3-2iTiWyZP1IIQFOz0hUCa0OS6pEm5uVV6Pk" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$FjMjjQr3-2iTiWyZP1IIQFOz0hUCa0OS6pEm5uVV6Pk$fields", i64 2, i64 2 } }, align 8
@19 = private unnamed_addr constant [77 x i8] c"func(int, int, int, int, int, int, int, int, int, ...interface {}) (int, int)", align 1
@"*_llgo_closure$FjMjjQr3-2iTiWyZP1IIQFOz0hUCa0OS6pEm5uVV6Pk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2059600842, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 77 }, ptr null }, ptr @"_llgo_closure$FjMjjQr3-2iTiWyZP1IIQFOz0hUCa0OS6pEm5uVV6Pk" }, align 8
@"_llgo_func$KK0iU4Wpi3BdRqssvycXqtgNe2Dq1riBlM61Rds1QsU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -767802053, i8 16, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 77 }, ptr @"*_llgo_func$KK0iU4Wpi3BdRqssvycXqtgNe2Dq1riBlM61Rds1QsU" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$KK0iU4Wpi3BdRqssvycXqtgNe2Dq1riBlM61Rds1QsU$in", i64 10, i64 10 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$KK0iU4Wpi3BdRqssvycXqtgNe2Dq1riBlM61Rds1QsU$out", i64 2, i64 2 } }, align 8
@"*_llgo_func$KK0iU4Wpi3BdRqssvycXqtgNe2Dq1riBlM61Rds1QsU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1012808481, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 77 }, ptr null }, ptr @"_llgo_func$KK0iU4Wpi3BdRqssvycXqtgNe2Dq1riBlM61Rds1QsU" }, align 8
@"[]_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -396233978, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 14 }, ptr @"*[]_llgo_any" }, ptr @_llgo_any }, align 8
@20 = private unnamed_addr constant [14 x i8] c"[]interface {}", align 1
@"*[]_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1171476965, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 14 }, ptr null }, ptr @"[]_llgo_any" }, align 8
@_llgo_any = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1376530322, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 12 }, ptr @"*_llgo_any" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@21 = private unnamed_addr constant [12 x i8] c"interface {}", align 1
@"*_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1741196194, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 12 }, ptr null }, ptr @_llgo_any }, align 8
@"_llgo_func$KK0iU4Wpi3BdRqssvycXqtgNe2Dq1riBlM61Rds1QsU$in" = weak_odr constant [10 x ptr] [ptr @_llgo_int, ptr @_llgo_int, ptr @_llgo_int, ptr @_llgo_int, ptr @_llgo_int, ptr @_llgo_int, ptr @_llgo_int, ptr @_llgo_int, ptr @_llgo_int, ptr @"[]_llgo_any"], align 8
@"_llgo_func$KK0iU4Wpi3BdRqssvycXqtgNe2Dq1riBlM61Rds1QsU$out" = weak_odr constant [2 x ptr] [ptr @_llgo_int, ptr @_llgo_int], align 8
@"_llgo_closure$FjMjjQr3-2iTiWyZP1IIQFOz0hUCa0OS6pEm5uVV6Pk$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 }, ptr @"_llgo_func$KK0iU4Wpi3BdRqssvycXqtgNe2Dq1riBlM61Rds1QsU", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@22 = private unnamed_addr constant [10 x i8] c"call.slice", align 1
@23 = private unnamed_addr constant [3 x i8] c"any", align 1
@"map[_llgo_int]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2084636366, i8 0, i8 8, i8 8, i8 53, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 14 }, ptr @"*map[_llgo_int]_llgo_string" }, ptr @_llgo_int, ptr @_llgo_string, ptr @"github.com/goplus/llgo/cl/_testgo/reflect.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ", { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehash", ptr @_llgo_int }, i8 8, i8 16, i16 208, i32 4 }, align 8
@24 = private unnamed_addr constant [14 x i8] c"map[int]string", align 1
@"*map[_llgo_int]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 668541983, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 14 }, ptr null }, ptr @"map[_llgo_int]_llgo_string" }, align 8
@"github.com/goplus/llgo/cl/_testgo/reflect.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 208, i64 208, i32 -1066095190, i8 0, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"github.com/goplus/llgo/cl/_testgo/reflect.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 82 }, ptr @"*github.com/goplus/llgo/cl/_testgo/reflect.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/reflect.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ$fields", i64 4, i64 4 } }, align 8
@25 = private unnamed_addr constant [82 x i8] c"struct { topbits [8]uint8; keys [8]int; elems [8]string; overflow unsafe.Pointer }", align 1
@"*github.com/goplus/llgo/cl/_testgo/reflect.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 430704888, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 82 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testgo/reflect.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ" }, align 8
@26 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@"[8]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 307038632, i8 8, i8 1, i8 1, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_uint8" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 8 }, ptr @"*[8]_llgo_uint8" }, ptr @_llgo_uint8, ptr @"[]_llgo_uint8", i64 8 }, align 8
@27 = private unnamed_addr constant [8 x i8] c"[8]uint8", align 1
@"*[8]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -566230779, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 8 }, ptr null }, ptr @"[8]_llgo_uint8" }, align 8
@_llgo_uint8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 269156761, i8 12, i8 1, i8 1, i8 8, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @"*_llgo_uint8" }, align 8
@28 = private unnamed_addr constant [5 x i8] c"uint8", align 1
@"*_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1277858201, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr null }, ptr @_llgo_uint8 }, align 8
@"[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 370346748, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 7 }, ptr @"*[]_llgo_uint8" }, ptr @_llgo_uint8 }, align 8
@29 = private unnamed_addr constant [7 x i8] c"[]uint8", align 1
@"*[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2143776929, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 7 }, ptr null }, ptr @"[]_llgo_uint8" }, align 8
@30 = private unnamed_addr constant [4 x i8] c"keys", align 1
@"[8]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 0, i32 -1310855284, i8 8, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_int" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 6 }, ptr @"*[8]_llgo_int" }, ptr @_llgo_int, ptr @"[]_llgo_int", i64 8 }, align 8
@31 = private unnamed_addr constant [6 x i8] c"[8]int", align 1
@"*[8]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1841254256, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 6 }, ptr null }, ptr @"[8]_llgo_int" }, align 8
@"[]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -1129561019, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 5 }, ptr @"*[]_llgo_int" }, ptr @_llgo_int }, align 8
@32 = private unnamed_addr constant [5 x i8] c"[]int", align 1
@"*[]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1428175521, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 5 }, ptr null }, ptr @"[]_llgo_int" }, align 8
@33 = private unnamed_addr constant [5 x i8] c"elems", align 1
@"[8]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 128, i64 120, i32 460245566, i8 0, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_string" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 9 }, ptr @"*[8]_llgo_string" }, ptr @_llgo_string, ptr @"[]_llgo_string", i64 8 }, align 8
@34 = private unnamed_addr constant [9 x i8] c"[8]string", align 1
@"*[8]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 368026044, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 9 }, ptr null }, ptr @"[8]_llgo_string" }, align 8
@"[]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 608974920, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 8 }, ptr @"*[]_llgo_string" }, ptr @_llgo_string }, align 8
@35 = private unnamed_addr constant [8 x i8] c"[]string", align 1
@"*[]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -157880218, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 8 }, ptr null }, ptr @"[]_llgo_string" }, align 8
@36 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@"github.com/goplus/llgo/cl/_testgo/reflect.struct$-d5W1oQEguzs9p8l76MbO7RbmjtJYi8DH1vVvnKnZqQ$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 7 }, ptr @"[8]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 4 }, ptr @"[8]_llgo_int", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @"[8]_llgo_string", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 8 }, ptr @_llgo_Pointer, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@37 = private unnamed_addr constant [5 x i8] c"hello", align 1
@38 = private unnamed_addr constant [5 x i8] c"world", align 1
@39 = private unnamed_addr constant [14 x i8] c"MapIndex error", align 1
@40 = private unnamed_addr constant [4 x i8] c"todo", align 1
@41 = private unnamed_addr constant [12 x i8] c"must invalid", align 1
@42 = private unnamed_addr constant [13 x i8] c"MapIter error", align 1

define i64 @"github.com/goplus/llgo/cl/_testgo/reflect.(*T).Add"(ptr %0, i64 %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr null, ptr %7, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8
  call void @runtime.ClobberPointerRegs()
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 11 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %9)
  %10 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = load ptr, ptr %8, align 8
  %12 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %12)
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reflect.T", ptr %11, i32 0, i32 0
  %14 = ptrtoint ptr %13 to i64
  %15 = and i64 %14, 72057594037927935
  %16 = xor i64 %15, 25399393228665167
  %17 = shl i64 %16, 17
  %18 = select i1 false, i64 0, i64 %17
  %19 = lshr i64 %16, 39
  %20 = select i1 false, i64 0, i64 %19
  %21 = or i64 %18, %20
  %22 = and i64 %21, 72057594037927935
  %23 = or i64 %22, -6557241057451442176
  store i64 %23, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %23)
  call void @runtime.ClobberPointerRegs()
  %24 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load i64, ptr %2, align 4
  %26 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %26, i64 %25, i64 8)
  %27 = icmp eq ptr %26, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %27)
  %28 = load i64, ptr %26, align 4
  store i64 0, ptr %26, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %29 = add i64 %28, %1
  %30 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %30)
  %31 = load ptr, ptr %8, align 8
  %32 = icmp eq ptr %31, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %32)
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reflect.T", ptr %31, i32 0, i32 0
  %34 = ptrtoint ptr %33 to i64
  %35 = and i64 %34, 72057594037927935
  %36 = xor i64 %35, 25399393228665167
  %37 = shl i64 %36, 17
  %38 = select i1 false, i64 0, i64 %37
  %39 = lshr i64 %36, 39
  %40 = select i1 false, i64 0, i64 %39
  %41 = or i64 %38, %40
  %42 = and i64 %41, 72057594037927935
  %43 = or i64 %42, -6557241057451442176
  store i64 %43, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %43)
  call void @runtime.ClobberPointerRegs()
  %44 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %44)
  %45 = load i64, ptr %4, align 4
  %46 = alloca i64, align 8
  store i64 %29, ptr %46, align 4
  call void @runtime.StoreHiddenPointee(i64 %45, ptr %46, i64 8)
  store i64 0, ptr %46, align 4
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %47 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %47)
  %48 = load ptr, ptr %8, align 8
  %49 = icmp eq ptr %48, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %49)
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reflect.T", ptr %48, i32 0, i32 0
  %51 = ptrtoint ptr %50 to i64
  %52 = and i64 %51, 72057594037927935
  %53 = xor i64 %52, 25399393228665167
  %54 = shl i64 %53, 17
  %55 = select i1 false, i64 0, i64 %54
  %56 = lshr i64 %53, 39
  %57 = select i1 false, i64 0, i64 %56
  %58 = or i64 %55, %57
  %59 = and i64 %58, 72057594037927935
  %60 = or i64 %59, -6557241057451442176
  store i64 %60, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %60)
  call void @runtime.ClobberPointerRegs()
  %61 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %61)
  %62 = load i64, ptr %6, align 4
  %63 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %63, i64 %62, i64 8)
  %64 = icmp eq ptr %63, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %64)
  %65 = load i64, ptr %63, align 4
  store i64 0, ptr %63, align 4
  store ptr null, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  ret i64 %65
}

define void @"github.com/goplus/llgo/cl/_testgo/reflect.callClosure"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca { ptr, ptr }, align 8
  %3 = alloca %reflect.Value, align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %5 = alloca { i64, i64 }, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr null, ptr %8, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  store ptr null, ptr %10, align 8
  %11 = alloca %reflect.Value, align 8
  %12 = alloca { i64, i64, i64 }, align 8
  %13 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %13, align 8
  %14 = alloca { i64, i64, i64 }, align 8
  %15 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %15, align 8
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  store ptr null, ptr %17, align 8
  %18 = alloca %reflect.Value, align 8
  %19 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  %20 = alloca { { ptr, ptr }, i1 }, align 8
  %21 = alloca { ptr, ptr }, align 8
  %22 = call i64 @runtime.AllocZHidden(i64 8)
  store i64 %22, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %22)
  %23 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load i64, ptr %0, align 4
  %25 = alloca i64, align 8
  store i64 100, ptr %25, align 4
  call void @runtime.StoreHiddenPointee(i64 %24, ptr %25, i64 8)
  store i64 0, ptr %25, align 4
  %26 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load i64, ptr %0, align 4
  %28 = and i64 %27, 72057594037927935
  %29 = lshr i64 %28, 17
  %30 = select i1 false, i64 0, i64 %29
  %31 = shl i64 %28, 39
  %32 = select i1 false, i64 0, i64 %31
  %33 = or i64 %30, %32
  %34 = and i64 %33, 72057594037927935
  %35 = xor i64 %34, 25399393228665167
  %36 = inttoptr i64 %35 to ptr
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %38 = getelementptr inbounds { ptr }, ptr %37, i32 0, i32 0
  store ptr %36, ptr %38, align 8
  %39 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/reflect.callClosure$1", ptr undef }, ptr %37, 1
  store { ptr, ptr } %39, ptr %2, align 8
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %40 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %40)
  %41 = load { ptr, ptr }, ptr %2, align 8
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } %41, ptr %42, align 8
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", ptr undef }, ptr %42, 1
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store { ptr, ptr } zeroinitializer, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %45 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %43)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %44)
  store %reflect.Value %45, ptr %3, align 8
  %46 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %47 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %47)
  %48 = load %reflect.Value, ptr %3, align 8
  %49 = call i64 @reflect.Value.Kind(%reflect.Value %48)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %46)
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %51 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %51)
  %52 = load %reflect.Value, ptr %3, align 8
  %53 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %52)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %50)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %53, ptr %4, align 8
  %54 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %54)
  %55 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %4, align 8
  %56 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %55)
  %57 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %55, 0
  %58 = getelementptr ptr, ptr %57, i64 37
  %59 = load ptr, ptr %58, align 8
  %60 = insertvalue { ptr, ptr } undef, ptr %59, 0
  %61 = insertvalue { ptr, ptr } %60, ptr %56, 1
  %62 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %63 = extractvalue { ptr, ptr } %61, 1
  %64 = extractvalue { ptr, ptr } %61, 0
  %65 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %64(ptr %63)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %62)
  %66 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %65, ptr %66, align 8
  %67 = icmp eq ptr %66, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %67)
  %68 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %66, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %68, ptr %6, align 8
  %69 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %68, 0
  %70 = ptrtoint ptr %69 to i64
  %71 = and i64 %70, 72057594037927935
  %72 = xor i64 %71, 25399393228665167
  %73 = shl i64 %72, 17
  %74 = select i1 false, i64 0, i64 %73
  %75 = lshr i64 %72, 39
  %76 = select i1 false, i64 0, i64 %75
  %77 = or i64 %74, %76
  %78 = and i64 %77, 72057594037927935
  %79 = or i64 %78, -6557241057451442176
  %80 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %68, 1
  %81 = insertvalue { i64, i64 } undef, i64 %79, 0
  %82 = insertvalue { i64, i64 } %81, i64 %80, 1
  store { i64, i64 } %82, ptr %5, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %66, align 8
  call void @runtime.TouchConservativeSlot(ptr %66, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %83 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %84 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %84)
  %85 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %6, align 8
  store { i64, i64 } zeroinitializer, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %49)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %85)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %83)
  %86 = call i64 @runtime.AllocZHidden(i64 24)
  store i64 %86, ptr %7, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %8, i64 %86)
  %87 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %87)
  %88 = load i64, ptr %7, align 4
  %89 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %90 = mul i64 %89, 24
  %91 = call i64 @runtime.AdvanceHiddenPointer(i64 %88, i64 %90)
  store i64 %91, ptr %9, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %10, i64 %91)
  %92 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 100, ptr %92, align 4
  %93 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %92, 1
  %94 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %95 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %93)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %94)
  store %reflect.Value %95, ptr %11, align 8
  %96 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %96)
  %97 = load i64, ptr %9, align 4
  %98 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %98)
  %99 = load %reflect.Value, ptr %11, align 8
  %100 = alloca %reflect.Value, align 8
  store %reflect.Value %99, ptr %100, align 8
  call void @runtime.StoreHiddenPointee(i64 %97, ptr %100, i64 24)
  store %reflect.Value zeroinitializer, ptr %100, align 8
  call void @runtime.TouchConservativeSlot(ptr %100, i64 24)
  store i64 0, ptr %9, align 4
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  store ptr null, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store %reflect.Value zeroinitializer, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %101 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %101)
  %102 = load i64, ptr %7, align 4
  %103 = and i64 %102, 72057594037927935
  %104 = lshr i64 %103, 17
  %105 = select i1 false, i64 0, i64 %104
  %106 = shl i64 %103, 39
  %107 = select i1 false, i64 0, i64 %106
  %108 = or i64 %105, %107
  %109 = and i64 %108, 72057594037927935
  %110 = xor i64 %109, 25399393228665167
  %111 = inttoptr i64 %110 to ptr
  %112 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %111, 0
  %113 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %112, i64 1, 1
  %114 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %113, i64 1, 2
  %115 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %114, ptr %115, align 8
  %116 = icmp eq ptr %115, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %116)
  %117 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %115, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %117, ptr %13, align 8
  %118 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %117, 0
  %119 = ptrtoint ptr %118 to i64
  %120 = and i64 %119, 72057594037927935
  %121 = xor i64 %120, 25399393228665167
  %122 = shl i64 %121, 17
  %123 = select i1 false, i64 0, i64 %122
  %124 = lshr i64 %121, 39
  %125 = select i1 false, i64 0, i64 %124
  %126 = or i64 %123, %125
  %127 = and i64 %126, 72057594037927935
  %128 = or i64 %127, -6557241057451442176
  %129 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %117, 1
  %130 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %117, 2
  %131 = insertvalue { i64, i64, i64 } undef, i64 %128, 0
  %132 = insertvalue { i64, i64, i64 } %131, i64 %129, 1
  %133 = insertvalue { i64, i64, i64 } %132, i64 %130, 2
  store { i64, i64, i64 } %133, ptr %12, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %115, align 8
  call void @runtime.TouchConservativeSlot(ptr %115, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %134 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %135 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %135)
  %136 = load %reflect.Value, ptr %3, align 8
  %137 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %137)
  %138 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %13, align 8
  store i64 0, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  store ptr null, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %139 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %136, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %138)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %134)
  %140 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %139, ptr %140, align 8
  %141 = icmp eq ptr %140, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %141)
  %142 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %140, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %142, ptr %15, align 8
  %143 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %142, 0
  %144 = ptrtoint ptr %143 to i64
  %145 = and i64 %144, 72057594037927935
  %146 = xor i64 %145, 25399393228665167
  %147 = shl i64 %146, 17
  %148 = select i1 false, i64 0, i64 %147
  %149 = lshr i64 %146, 39
  %150 = select i1 false, i64 0, i64 %149
  %151 = or i64 %148, %150
  %152 = and i64 %151, 72057594037927935
  %153 = or i64 %152, -6557241057451442176
  %154 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %142, 1
  %155 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %142, 2
  %156 = insertvalue { i64, i64, i64 } undef, i64 %153, 0
  %157 = insertvalue { i64, i64, i64 } %156, i64 %154, 1
  %158 = insertvalue { i64, i64, i64 } %157, i64 %155, 2
  store { i64, i64, i64 } %158, ptr %14, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %140, align 8
  call void @runtime.TouchConservativeSlot(ptr %140, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %159 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %159)
  %160 = load { i64, i64, i64 }, ptr %14, align 4
  %161 = extractvalue { i64, i64, i64 } %160, 0
  %162 = extractvalue { i64, i64, i64 } %160, 1
  %163 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 %162)
  %164 = mul i64 %163, 24
  %165 = call i64 @runtime.AdvanceHiddenPointer(i64 %161, i64 %164)
  store i64 %165, ptr %16, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %17, i64 %165)
  %166 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %166)
  %167 = load i64, ptr %16, align 4
  %168 = alloca %reflect.Value, align 8
  call void @runtime.LoadHiddenPointee(ptr %168, i64 %167, i64 24)
  %169 = icmp eq ptr %168, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %169)
  %170 = load %reflect.Value, ptr %168, align 8
  store %reflect.Value zeroinitializer, ptr %168, align 8
  store %reflect.Value %170, ptr %18, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %14, align 4
  call void @runtime.TouchConservativeSlot(ptr %14, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 24)
  store i64 0, ptr %16, align 4
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  store ptr null, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %171 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %172 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %172)
  %173 = load %reflect.Value, ptr %18, align 8
  store %reflect.Value zeroinitializer, ptr %18, align 8
  call void @runtime.TouchConservativeSlot(ptr %18, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %174 = call i64 @reflect.Value.Int(%reflect.Value %173)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %171)
  %175 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %174)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %175)
  %176 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %177 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %177)
  %178 = load %reflect.Value, ptr %3, align 8
  store %reflect.Value zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %179 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %178)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %176)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %179, ptr %19, align 8
  %180 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %180)
  %181 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %19, align 8
  %182 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %181, 0
  %183 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.MatchesClosure"(ptr @"_llgo_closure$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", ptr %182)
  br i1 %183, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %184 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr %184, align 8
  %185 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %184, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %185)
  unreachable

_llgo_2:                                          ; preds = %_llgo_5
  %186 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %186)
  %187 = load { { ptr, ptr }, i1 }, ptr %20, align 8
  %188 = extractvalue { { ptr, ptr }, i1 } %187, 0
  store { ptr, ptr } %188, ptr %21, align 8
  %189 = icmp eq ptr %21, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %189)
  %190 = load { ptr, ptr }, ptr %21, align 8
  %191 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %19, align 8
  call void @runtime.TouchConservativeSlot(ptr %19, i64 16)
  store { { ptr, ptr }, i1 } zeroinitializer, ptr %20, align 8
  call void @runtime.TouchConservativeSlot(ptr %20, i64 24)
  store { ptr, ptr } zeroinitializer, ptr %21, align 8
  call void @runtime.TouchConservativeSlot(ptr %21, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %192 = extractvalue { ptr, ptr } %190, 1
  %193 = extractvalue { ptr, ptr } %190, 0
  %194 = call i64 %193(ptr %192, i64 100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %191)
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %195 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %181, 1
  %196 = load { ptr, ptr }, ptr %195, align 8
  %197 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %196, 0
  %198 = insertvalue { { ptr, ptr }, i1 } %197, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %199 = phi { { ptr, ptr }, i1 } [ %198, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  store { { ptr, ptr }, i1 } %199, ptr %20, align 8
  %200 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %200)
  %201 = load { { ptr, ptr }, i1 }, ptr %20, align 8
  %202 = extractvalue { { ptr, ptr }, i1 } %201, 1
  br i1 %202, label %_llgo_2, label %_llgo_1

_llgo_6:                                          ; No predecessors!
  unreachable
}

define i64 @"github.com/goplus/llgo/cl/_testgo/reflect.callClosure$1"(ptr %0, i64 %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 12 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %2)
  %3 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = load { ptr }, ptr %0, align 8
  %5 = extractvalue { ptr } %4, 0
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load i64, ptr %5, align 4
  %8 = add i64 %7, %1
  %9 = add i64 %8, 1
  ret i64 %9
}

define void @"github.com/goplus/llgo/cl/_testgo/reflect.callFunc"() {
_llgo_0:
  %0 = alloca %reflect.Value, align 8
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %2 = alloca { i64, i64 }, align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr null, ptr %7, align 8
  %8 = alloca %reflect.Value, align 8
  %9 = alloca { i64, i64, i64 }, align 8
  %10 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %10, align 8
  %11 = alloca { i64, i64, i64 }, align 8
  %12 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %12, align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  store ptr null, ptr %14, align 8
  %15 = alloca %reflect.Value, align 8
  %16 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  %17 = alloca { { ptr, ptr }, i1 }, align 8
  %18 = alloca { ptr, ptr }, align 8
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/reflect.callFunc$1", ptr null }, ptr %19, align 8
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", ptr undef }, ptr %19, 1
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %22 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %21)
  store %reflect.Value %22, ptr %0, align 8
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %24 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load %reflect.Value, ptr %0, align 8
  %26 = call i64 @reflect.Value.Kind(%reflect.Value %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %23)
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %28 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = load %reflect.Value, ptr %0, align 8
  %30 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %27)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %30, ptr %1, align 8
  %31 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %31)
  %32 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %1, align 8
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %32)
  %34 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %32, 0
  %35 = getelementptr ptr, ptr %34, i64 37
  %36 = load ptr, ptr %35, align 8
  %37 = insertvalue { ptr, ptr } undef, ptr %36, 0
  %38 = insertvalue { ptr, ptr } %37, ptr %33, 1
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %40 = extractvalue { ptr, ptr } %38, 1
  %41 = extractvalue { ptr, ptr } %38, 0
  %42 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %41(ptr %40)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %39)
  %43 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %42, ptr %43, align 8
  %44 = icmp eq ptr %43, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %44)
  %45 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %43, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %45, ptr %3, align 8
  %46 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %45, 0
  %47 = ptrtoint ptr %46 to i64
  %48 = and i64 %47, 72057594037927935
  %49 = xor i64 %48, 25399393228665167
  %50 = shl i64 %49, 17
  %51 = select i1 false, i64 0, i64 %50
  %52 = lshr i64 %49, 39
  %53 = select i1 false, i64 0, i64 %52
  %54 = or i64 %51, %53
  %55 = and i64 %54, 72057594037927935
  %56 = or i64 %55, -6557241057451442176
  %57 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %45, 1
  %58 = insertvalue { i64, i64 } undef, i64 %56, 0
  %59 = insertvalue { i64, i64 } %58, i64 %57, 1
  store { i64, i64 } %59, ptr %2, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %43, align 8
  call void @runtime.TouchConservativeSlot(ptr %43, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %60 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %61 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %61)
  %62 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %3, align 8
  store { i64, i64 } zeroinitializer, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %62)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %60)
  %63 = call i64 @runtime.AllocZHidden(i64 24)
  store i64 %63, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %63)
  %64 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %64)
  %65 = load i64, ptr %4, align 4
  %66 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %67 = mul i64 %66, 24
  %68 = call i64 @runtime.AdvanceHiddenPointer(i64 %65, i64 %67)
  store i64 %68, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %68)
  %69 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 100, ptr %69, align 4
  %70 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %69, 1
  %71 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %72 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %70)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %71)
  store %reflect.Value %72, ptr %8, align 8
  %73 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %73)
  %74 = load i64, ptr %6, align 4
  %75 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %75)
  %76 = load %reflect.Value, ptr %8, align 8
  %77 = alloca %reflect.Value, align 8
  store %reflect.Value %76, ptr %77, align 8
  call void @runtime.StoreHiddenPointee(i64 %74, ptr %77, i64 24)
  store %reflect.Value zeroinitializer, ptr %77, align 8
  call void @runtime.TouchConservativeSlot(ptr %77, i64 24)
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  store %reflect.Value zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %78 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %78)
  %79 = load i64, ptr %4, align 4
  %80 = and i64 %79, 72057594037927935
  %81 = lshr i64 %80, 17
  %82 = select i1 false, i64 0, i64 %81
  %83 = shl i64 %80, 39
  %84 = select i1 false, i64 0, i64 %83
  %85 = or i64 %82, %84
  %86 = and i64 %85, 72057594037927935
  %87 = xor i64 %86, 25399393228665167
  %88 = inttoptr i64 %87 to ptr
  %89 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %88, 0
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %89, i64 1, 1
  %91 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %90, i64 1, 2
  %92 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %91, ptr %92, align 8
  %93 = icmp eq ptr %92, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %93)
  %94 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %92, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %94, ptr %10, align 8
  %95 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %94, 0
  %96 = ptrtoint ptr %95 to i64
  %97 = and i64 %96, 72057594037927935
  %98 = xor i64 %97, 25399393228665167
  %99 = shl i64 %98, 17
  %100 = select i1 false, i64 0, i64 %99
  %101 = lshr i64 %98, 39
  %102 = select i1 false, i64 0, i64 %101
  %103 = or i64 %100, %102
  %104 = and i64 %103, 72057594037927935
  %105 = or i64 %104, -6557241057451442176
  %106 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %94, 1
  %107 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %94, 2
  %108 = insertvalue { i64, i64, i64 } undef, i64 %105, 0
  %109 = insertvalue { i64, i64, i64 } %108, i64 %106, 1
  %110 = insertvalue { i64, i64, i64 } %109, i64 %107, 2
  store { i64, i64, i64 } %110, ptr %9, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %92, align 8
  call void @runtime.TouchConservativeSlot(ptr %92, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %111 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %112 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %112)
  %113 = load %reflect.Value, ptr %0, align 8
  %114 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %114)
  %115 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %10, align 8
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %9, align 4
  call void @runtime.TouchConservativeSlot(ptr %9, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %116 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %113, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %115)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %111)
  %117 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %116, ptr %117, align 8
  %118 = icmp eq ptr %117, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %118)
  %119 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %117, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %119, ptr %12, align 8
  %120 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %119, 0
  %121 = ptrtoint ptr %120 to i64
  %122 = and i64 %121, 72057594037927935
  %123 = xor i64 %122, 25399393228665167
  %124 = shl i64 %123, 17
  %125 = select i1 false, i64 0, i64 %124
  %126 = lshr i64 %123, 39
  %127 = select i1 false, i64 0, i64 %126
  %128 = or i64 %125, %127
  %129 = and i64 %128, 72057594037927935
  %130 = or i64 %129, -6557241057451442176
  %131 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %119, 1
  %132 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %119, 2
  %133 = insertvalue { i64, i64, i64 } undef, i64 %130, 0
  %134 = insertvalue { i64, i64, i64 } %133, i64 %131, 1
  %135 = insertvalue { i64, i64, i64 } %134, i64 %132, 2
  store { i64, i64, i64 } %135, ptr %11, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %117, align 8
  call void @runtime.TouchConservativeSlot(ptr %117, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %136 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %136)
  %137 = load { i64, i64, i64 }, ptr %11, align 4
  %138 = extractvalue { i64, i64, i64 } %137, 0
  %139 = extractvalue { i64, i64, i64 } %137, 1
  %140 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 %139)
  %141 = mul i64 %140, 24
  %142 = call i64 @runtime.AdvanceHiddenPointer(i64 %138, i64 %141)
  store i64 %142, ptr %13, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %14, i64 %142)
  %143 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %143)
  %144 = load i64, ptr %13, align 4
  %145 = alloca %reflect.Value, align 8
  call void @runtime.LoadHiddenPointee(ptr %145, i64 %144, i64 24)
  %146 = icmp eq ptr %145, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %146)
  %147 = load %reflect.Value, ptr %145, align 8
  store %reflect.Value zeroinitializer, ptr %145, align 8
  store %reflect.Value %147, ptr %15, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %11, align 4
  call void @runtime.TouchConservativeSlot(ptr %11, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %12, align 8
  call void @runtime.TouchConservativeSlot(ptr %12, i64 24)
  store i64 0, ptr %13, align 4
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  store ptr null, ptr %14, align 8
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %148 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %149 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %149)
  %150 = load %reflect.Value, ptr %15, align 8
  store %reflect.Value zeroinitializer, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %151 = call i64 @reflect.Value.Int(%reflect.Value %150)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %148)
  %152 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %151)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %152)
  %153 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %154 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %154)
  %155 = load %reflect.Value, ptr %0, align 8
  store %reflect.Value zeroinitializer, ptr %0, align 8
  call void @runtime.TouchConservativeSlot(ptr %0, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %156 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %155)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %153)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %156, ptr %16, align 8
  %157 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %157)
  %158 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %16, align 8
  %159 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %158, 0
  %160 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.MatchesClosure"(ptr @"_llgo_closure$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", ptr %159)
  br i1 %160, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %161 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr %161, align 8
  %162 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %161, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %162)
  unreachable

_llgo_2:                                          ; preds = %_llgo_5
  %163 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %163)
  %164 = load { { ptr, ptr }, i1 }, ptr %17, align 8
  %165 = extractvalue { { ptr, ptr }, i1 } %164, 0
  store { ptr, ptr } %165, ptr %18, align 8
  %166 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %166)
  %167 = load { ptr, ptr }, ptr %18, align 8
  %168 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %16, align 8
  call void @runtime.TouchConservativeSlot(ptr %16, i64 16)
  store { { ptr, ptr }, i1 } zeroinitializer, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 24)
  store { ptr, ptr } zeroinitializer, ptr %18, align 8
  call void @runtime.TouchConservativeSlot(ptr %18, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %169 = extractvalue { ptr, ptr } %167, 1
  %170 = extractvalue { ptr, ptr } %167, 0
  %171 = call i64 %170(ptr %169, i64 100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %168)
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %172 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %158, 1
  %173 = load { ptr, ptr }, ptr %172, align 8
  %174 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %173, 0
  %175 = insertvalue { { ptr, ptr }, i1 } %174, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %176 = phi { { ptr, ptr }, i1 } [ %175, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  store { { ptr, ptr }, i1 } %176, ptr %17, align 8
  %177 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %177)
  %178 = load { { ptr, ptr }, i1 }, ptr %17, align 8
  %179 = extractvalue { { ptr, ptr }, i1 } %178, 1
  br i1 %179, label %_llgo_2, label %_llgo_1

_llgo_6:                                          ; No predecessors!
  unreachable
}

define i64 @"github.com/goplus/llgo/cl/_testgo/reflect.callFunc$1"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 9 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1)
  %2 = add i64 %0, 1
  ret i64 %2
}

define void @"github.com/goplus/llgo/cl/_testgo/reflect.callIMethod"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  %5 = alloca %reflect.Value, align 8
  %6 = alloca %reflect.Value, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %8 = alloca { i64, i64 }, align 8
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %9, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  store ptr null, ptr %11, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  store ptr null, ptr %13, align 8
  %14 = alloca %reflect.Value, align 8
  %15 = alloca { i64, i64, i64 }, align 8
  %16 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %16, align 8
  %17 = alloca { i64, i64, i64 }, align 8
  %18 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %18, align 8
  %19 = alloca i64, align 8
  %20 = alloca ptr, align 8
  store ptr null, ptr %20, align 8
  %21 = alloca %reflect.Value, align 8
  %22 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  %23 = alloca { { ptr, ptr }, i1 }, align 8
  %24 = alloca { ptr, ptr }, align 8
  %25 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  %26 = alloca %reflect.Value, align 8
  %27 = alloca i64, align 8
  %28 = alloca ptr, align 8
  store ptr null, ptr %28, align 8
  %29 = alloca i64, align 8
  %30 = alloca ptr, align 8
  store ptr null, ptr %30, align 8
  %31 = alloca %reflect.Value, align 8
  %32 = alloca { i64, i64, i64 }, align 8
  %33 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %33, align 8
  %34 = alloca { i64, i64, i64 }, align 8
  %35 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %35, align 8
  %36 = alloca i64, align 8
  %37 = alloca ptr, align 8
  store ptr null, ptr %37, align 8
  %38 = alloca %reflect.Value, align 8
  %39 = call i64 @runtime.AllocZHidden(i64 8)
  store i64 %39, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %39)
  %40 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %40)
  %41 = load i64, ptr %0, align 4
  %42 = and i64 %41, 72057594037927935
  %43 = lshr i64 %42, 17
  %44 = select i1 false, i64 0, i64 %43
  %45 = shl i64 %42, 39
  %46 = select i1 false, i64 0, i64 %45
  %47 = or i64 %44, %46
  %48 = and i64 %47, 72057594037927935
  %49 = xor i64 %48, 25399393228665167
  %50 = inttoptr i64 %49 to ptr
  %51 = icmp eq ptr %50, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %51)
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reflect.T", ptr %50, i32 0, i32 0
  %53 = ptrtoint ptr %52 to i64
  %54 = and i64 %53, 72057594037927935
  %55 = xor i64 %54, 25399393228665167
  %56 = shl i64 %55, 17
  %57 = select i1 false, i64 0, i64 %56
  %58 = lshr i64 %55, 39
  %59 = select i1 false, i64 0, i64 %58
  %60 = or i64 %57, %59
  %61 = and i64 %60, 72057594037927935
  %62 = or i64 %61, -6557241057451442176
  store i64 %62, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %62)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %63 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %63)
  %64 = load i64, ptr %2, align 4
  %65 = alloca i64, align 8
  store i64 1, ptr %65, align 4
  call void @runtime.StoreHiddenPointee(i64 %64, ptr %65, i64 8)
  store i64 0, ptr %65, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %66 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %66)
  %67 = load i64, ptr %0, align 4
  %68 = and i64 %67, 72057594037927935
  %69 = lshr i64 %68, 17
  %70 = select i1 false, i64 0, i64 %69
  %71 = shl i64 %68, 39
  %72 = select i1 false, i64 0, i64 %71
  %73 = or i64 %70, %72
  %74 = and i64 %73, 72057594037927935
  %75 = xor i64 %74, 25399393228665167
  %76 = inttoptr i64 %75 to ptr
  %77 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reflect.T")
  %78 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %77, 0
  %79 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %78, ptr %76, 1
  %80 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %79)
  %81 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %79, 1
  %82 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %80, 0
  %83 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %82, ptr %81, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %83, ptr %4, align 8
  %84 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %85 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %85)
  %86 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %4, align 8
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %87 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %86)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %84)
  store %reflect.Value %87, ptr %5, align 8
  %88 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %89 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %89)
  %90 = load %reflect.Value, ptr %5, align 8
  store %reflect.Value zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %91 = call %reflect.Value @reflect.Value.Method(%reflect.Value %90, i64 0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %88)
  store %reflect.Value %91, ptr %6, align 8
  %92 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %93 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %93)
  %94 = load %reflect.Value, ptr %6, align 8
  %95 = call i64 @reflect.Value.Kind(%reflect.Value %94)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %92)
  %96 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %97 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %97)
  %98 = load %reflect.Value, ptr %6, align 8
  %99 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %98)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %96)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %99, ptr %7, align 8
  %100 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %100)
  %101 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %7, align 8
  %102 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %101)
  %103 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %101, 0
  %104 = getelementptr ptr, ptr %103, i64 37
  %105 = load ptr, ptr %104, align 8
  %106 = insertvalue { ptr, ptr } undef, ptr %105, 0
  %107 = insertvalue { ptr, ptr } %106, ptr %102, 1
  %108 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %109 = extractvalue { ptr, ptr } %107, 1
  %110 = extractvalue { ptr, ptr } %107, 0
  %111 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %110(ptr %109)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %108)
  %112 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %111, ptr %112, align 8
  %113 = icmp eq ptr %112, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %113)
  %114 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %112, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %114, ptr %9, align 8
  %115 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %114, 0
  %116 = ptrtoint ptr %115 to i64
  %117 = and i64 %116, 72057594037927935
  %118 = xor i64 %117, 25399393228665167
  %119 = shl i64 %118, 17
  %120 = select i1 false, i64 0, i64 %119
  %121 = lshr i64 %118, 39
  %122 = select i1 false, i64 0, i64 %121
  %123 = or i64 %120, %122
  %124 = and i64 %123, 72057594037927935
  %125 = or i64 %124, -6557241057451442176
  %126 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %114, 1
  %127 = insertvalue { i64, i64 } undef, i64 %125, 0
  %128 = insertvalue { i64, i64 } %127, i64 %126, 1
  store { i64, i64 } %128, ptr %8, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %112, align 8
  call void @runtime.TouchConservativeSlot(ptr %112, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %129 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %130 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %130)
  %131 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %9, align 8
  store { i64, i64 } zeroinitializer, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %95)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %131)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %129)
  %132 = call i64 @runtime.AllocZHidden(i64 24)
  store i64 %132, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %132)
  %133 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %133)
  %134 = load i64, ptr %10, align 4
  %135 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %136 = mul i64 %135, 24
  %137 = call i64 @runtime.AdvanceHiddenPointer(i64 %134, i64 %136)
  store i64 %137, ptr %12, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %13, i64 %137)
  %138 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 100, ptr %138, align 4
  %139 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %138, 1
  %140 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %141 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %139)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %140)
  store %reflect.Value %141, ptr %14, align 8
  %142 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %142)
  %143 = load i64, ptr %12, align 4
  %144 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %144)
  %145 = load %reflect.Value, ptr %14, align 8
  %146 = alloca %reflect.Value, align 8
  store %reflect.Value %145, ptr %146, align 8
  call void @runtime.StoreHiddenPointee(i64 %143, ptr %146, i64 24)
  store %reflect.Value zeroinitializer, ptr %146, align 8
  call void @runtime.TouchConservativeSlot(ptr %146, i64 24)
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  store %reflect.Value zeroinitializer, ptr %14, align 8
  call void @runtime.TouchConservativeSlot(ptr %14, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %147 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %147)
  %148 = load i64, ptr %10, align 4
  %149 = and i64 %148, 72057594037927935
  %150 = lshr i64 %149, 17
  %151 = select i1 false, i64 0, i64 %150
  %152 = shl i64 %149, 39
  %153 = select i1 false, i64 0, i64 %152
  %154 = or i64 %151, %153
  %155 = and i64 %154, 72057594037927935
  %156 = xor i64 %155, 25399393228665167
  %157 = inttoptr i64 %156 to ptr
  %158 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %157, 0
  %159 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %158, i64 1, 1
  %160 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %159, i64 1, 2
  %161 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %160, ptr %161, align 8
  %162 = icmp eq ptr %161, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %162)
  %163 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %161, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %163, ptr %16, align 8
  %164 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %163, 0
  %165 = ptrtoint ptr %164 to i64
  %166 = and i64 %165, 72057594037927935
  %167 = xor i64 %166, 25399393228665167
  %168 = shl i64 %167, 17
  %169 = select i1 false, i64 0, i64 %168
  %170 = lshr i64 %167, 39
  %171 = select i1 false, i64 0, i64 %170
  %172 = or i64 %169, %171
  %173 = and i64 %172, 72057594037927935
  %174 = or i64 %173, -6557241057451442176
  %175 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %163, 1
  %176 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %163, 2
  %177 = insertvalue { i64, i64, i64 } undef, i64 %174, 0
  %178 = insertvalue { i64, i64, i64 } %177, i64 %175, 1
  %179 = insertvalue { i64, i64, i64 } %178, i64 %176, 2
  store { i64, i64, i64 } %179, ptr %15, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %161, align 8
  call void @runtime.TouchConservativeSlot(ptr %161, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %180 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %181 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %181)
  %182 = load %reflect.Value, ptr %6, align 8
  %183 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %183)
  %184 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %16, align 8
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %15, align 4
  call void @runtime.TouchConservativeSlot(ptr %15, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %16, align 8
  call void @runtime.TouchConservativeSlot(ptr %16, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %185 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %182, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %184)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %180)
  %186 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %185, ptr %186, align 8
  %187 = icmp eq ptr %186, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %187)
  %188 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %186, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %188, ptr %18, align 8
  %189 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %188, 0
  %190 = ptrtoint ptr %189 to i64
  %191 = and i64 %190, 72057594037927935
  %192 = xor i64 %191, 25399393228665167
  %193 = shl i64 %192, 17
  %194 = select i1 false, i64 0, i64 %193
  %195 = lshr i64 %192, 39
  %196 = select i1 false, i64 0, i64 %195
  %197 = or i64 %194, %196
  %198 = and i64 %197, 72057594037927935
  %199 = or i64 %198, -6557241057451442176
  %200 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %188, 1
  %201 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %188, 2
  %202 = insertvalue { i64, i64, i64 } undef, i64 %199, 0
  %203 = insertvalue { i64, i64, i64 } %202, i64 %200, 1
  %204 = insertvalue { i64, i64, i64 } %203, i64 %201, 2
  store { i64, i64, i64 } %204, ptr %17, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %186, align 8
  call void @runtime.TouchConservativeSlot(ptr %186, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %205 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %205)
  %206 = load { i64, i64, i64 }, ptr %17, align 4
  %207 = extractvalue { i64, i64, i64 } %206, 0
  %208 = extractvalue { i64, i64, i64 } %206, 1
  %209 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 %208)
  %210 = mul i64 %209, 24
  %211 = call i64 @runtime.AdvanceHiddenPointer(i64 %207, i64 %210)
  store i64 %211, ptr %19, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %20, i64 %211)
  %212 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %212)
  %213 = load i64, ptr %19, align 4
  %214 = alloca %reflect.Value, align 8
  call void @runtime.LoadHiddenPointee(ptr %214, i64 %213, i64 24)
  %215 = icmp eq ptr %214, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %215)
  %216 = load %reflect.Value, ptr %214, align 8
  store %reflect.Value zeroinitializer, ptr %214, align 8
  store %reflect.Value %216, ptr %21, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %17, align 4
  call void @runtime.TouchConservativeSlot(ptr %17, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %18, align 8
  call void @runtime.TouchConservativeSlot(ptr %18, i64 24)
  store i64 0, ptr %19, align 4
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  store ptr null, ptr %20, align 8
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %217 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %218 = icmp eq ptr %21, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %218)
  %219 = load %reflect.Value, ptr %21, align 8
  store %reflect.Value zeroinitializer, ptr %21, align 8
  call void @runtime.TouchConservativeSlot(ptr %21, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %220 = call i64 @reflect.Value.Int(%reflect.Value %219)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %217)
  %221 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %220)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %221)
  %222 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %223 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %223)
  %224 = load %reflect.Value, ptr %6, align 8
  %225 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %224)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %222)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %225, ptr %22, align 8
  %226 = icmp eq ptr %22, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %226)
  %227 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %22, align 8
  %228 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %227, 0
  %229 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.MatchesClosure"(ptr @"_llgo_closure$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", ptr %228)
  br i1 %229, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %230 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr %230, align 8
  %231 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %230, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %231)
  unreachable

_llgo_2:                                          ; preds = %_llgo_5
  %232 = icmp eq ptr %23, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %232)
  %233 = load { { ptr, ptr }, i1 }, ptr %23, align 8
  %234 = extractvalue { { ptr, ptr }, i1 } %233, 0
  store { ptr, ptr } %234, ptr %24, align 8
  %235 = icmp eq ptr %24, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %235)
  %236 = load { ptr, ptr }, ptr %24, align 8
  %237 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %22, align 8
  call void @runtime.TouchConservativeSlot(ptr %22, i64 16)
  store { { ptr, ptr }, i1 } zeroinitializer, ptr %23, align 8
  call void @runtime.TouchConservativeSlot(ptr %23, i64 24)
  store { ptr, ptr } zeroinitializer, ptr %24, align 8
  call void @runtime.TouchConservativeSlot(ptr %24, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %238 = extractvalue { ptr, ptr } %236, 1
  %239 = extractvalue { ptr, ptr } %236, 0
  %240 = call i64 %239(ptr %238, i64 1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %237)
  %241 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %242 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %242)
  %243 = load %reflect.Value, ptr %6, align 8
  store %reflect.Value zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %244 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %243)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %241)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %244, ptr %25, align 8
  %245 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %246 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %246)
  %247 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %25, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %25, align 8
  call void @runtime.TouchConservativeSlot(ptr %25, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %248 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %247)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %245)
  store %reflect.Value %248, ptr %26, align 8
  %249 = call i64 @runtime.AllocZHidden(i64 24)
  store i64 %249, ptr %27, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %28, i64 %249)
  %250 = icmp eq ptr %27, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %250)
  %251 = load i64, ptr %27, align 4
  %252 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %253 = mul i64 %252, 24
  %254 = call i64 @runtime.AdvanceHiddenPointer(i64 %251, i64 %253)
  store i64 %254, ptr %29, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %30, i64 %254)
  %255 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 100, ptr %255, align 4
  %256 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %255, 1
  %257 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %258 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %256)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %257)
  store %reflect.Value %258, ptr %31, align 8
  %259 = icmp eq ptr %29, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %259)
  %260 = load i64, ptr %29, align 4
  %261 = icmp eq ptr %31, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %261)
  %262 = load %reflect.Value, ptr %31, align 8
  %263 = alloca %reflect.Value, align 8
  store %reflect.Value %262, ptr %263, align 8
  call void @runtime.StoreHiddenPointee(i64 %260, ptr %263, i64 24)
  store %reflect.Value zeroinitializer, ptr %263, align 8
  call void @runtime.TouchConservativeSlot(ptr %263, i64 24)
  store i64 0, ptr %29, align 4
  call void @runtime.TouchConservativeSlot(ptr %29, i64 8)
  store ptr null, ptr %30, align 8
  call void @runtime.TouchConservativeSlot(ptr %30, i64 8)
  store %reflect.Value zeroinitializer, ptr %31, align 8
  call void @runtime.TouchConservativeSlot(ptr %31, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %264 = icmp eq ptr %27, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %264)
  %265 = load i64, ptr %27, align 4
  %266 = and i64 %265, 72057594037927935
  %267 = lshr i64 %266, 17
  %268 = select i1 false, i64 0, i64 %267
  %269 = shl i64 %266, 39
  %270 = select i1 false, i64 0, i64 %269
  %271 = or i64 %268, %270
  %272 = and i64 %271, 72057594037927935
  %273 = xor i64 %272, 25399393228665167
  %274 = inttoptr i64 %273 to ptr
  %275 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %274, 0
  %276 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %275, i64 1, 1
  %277 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %276, i64 1, 2
  %278 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %277, ptr %278, align 8
  %279 = icmp eq ptr %278, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %279)
  %280 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %278, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %280, ptr %33, align 8
  %281 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %280, 0
  %282 = ptrtoint ptr %281 to i64
  %283 = and i64 %282, 72057594037927935
  %284 = xor i64 %283, 25399393228665167
  %285 = shl i64 %284, 17
  %286 = select i1 false, i64 0, i64 %285
  %287 = lshr i64 %284, 39
  %288 = select i1 false, i64 0, i64 %287
  %289 = or i64 %286, %288
  %290 = and i64 %289, 72057594037927935
  %291 = or i64 %290, -6557241057451442176
  %292 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %280, 1
  %293 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %280, 2
  %294 = insertvalue { i64, i64, i64 } undef, i64 %291, 0
  %295 = insertvalue { i64, i64, i64 } %294, i64 %292, 1
  %296 = insertvalue { i64, i64, i64 } %295, i64 %293, 2
  store { i64, i64, i64 } %296, ptr %32, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %278, align 8
  call void @runtime.TouchConservativeSlot(ptr %278, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %297 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %298 = icmp eq ptr %26, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %298)
  %299 = load %reflect.Value, ptr %26, align 8
  %300 = icmp eq ptr %33, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %300)
  %301 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %33, align 8
  store %reflect.Value zeroinitializer, ptr %26, align 8
  call void @runtime.TouchConservativeSlot(ptr %26, i64 24)
  store i64 0, ptr %27, align 4
  call void @runtime.TouchConservativeSlot(ptr %27, i64 8)
  store ptr null, ptr %28, align 8
  call void @runtime.TouchConservativeSlot(ptr %28, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %32, align 4
  call void @runtime.TouchConservativeSlot(ptr %32, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %33, align 8
  call void @runtime.TouchConservativeSlot(ptr %33, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %302 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %299, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %301)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %297)
  %303 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %302, ptr %303, align 8
  %304 = icmp eq ptr %303, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %304)
  %305 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %303, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %305, ptr %35, align 8
  %306 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %305, 0
  %307 = ptrtoint ptr %306 to i64
  %308 = and i64 %307, 72057594037927935
  %309 = xor i64 %308, 25399393228665167
  %310 = shl i64 %309, 17
  %311 = select i1 false, i64 0, i64 %310
  %312 = lshr i64 %309, 39
  %313 = select i1 false, i64 0, i64 %312
  %314 = or i64 %311, %313
  %315 = and i64 %314, 72057594037927935
  %316 = or i64 %315, -6557241057451442176
  %317 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %305, 1
  %318 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %305, 2
  %319 = insertvalue { i64, i64, i64 } undef, i64 %316, 0
  %320 = insertvalue { i64, i64, i64 } %319, i64 %317, 1
  %321 = insertvalue { i64, i64, i64 } %320, i64 %318, 2
  store { i64, i64, i64 } %321, ptr %34, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %303, align 8
  call void @runtime.TouchConservativeSlot(ptr %303, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %322 = icmp eq ptr %34, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %322)
  %323 = load { i64, i64, i64 }, ptr %34, align 4
  %324 = extractvalue { i64, i64, i64 } %323, 0
  %325 = extractvalue { i64, i64, i64 } %323, 1
  %326 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 %325)
  %327 = mul i64 %326, 24
  %328 = call i64 @runtime.AdvanceHiddenPointer(i64 %324, i64 %327)
  store i64 %328, ptr %36, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %37, i64 %328)
  %329 = icmp eq ptr %36, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %329)
  %330 = load i64, ptr %36, align 4
  %331 = alloca %reflect.Value, align 8
  call void @runtime.LoadHiddenPointee(ptr %331, i64 %330, i64 24)
  %332 = icmp eq ptr %331, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %332)
  %333 = load %reflect.Value, ptr %331, align 8
  store %reflect.Value zeroinitializer, ptr %331, align 8
  store %reflect.Value %333, ptr %38, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %34, align 4
  call void @runtime.TouchConservativeSlot(ptr %34, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %35, align 8
  call void @runtime.TouchConservativeSlot(ptr %35, i64 24)
  store i64 0, ptr %36, align 4
  call void @runtime.TouchConservativeSlot(ptr %36, i64 8)
  store ptr null, ptr %37, align 8
  call void @runtime.TouchConservativeSlot(ptr %37, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %334 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %335 = icmp eq ptr %38, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %335)
  %336 = load %reflect.Value, ptr %38, align 8
  store %reflect.Value zeroinitializer, ptr %38, align 8
  call void @runtime.TouchConservativeSlot(ptr %38, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %337 = call i64 @reflect.Value.Int(%reflect.Value %336)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %334)
  %338 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %337)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %338)
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %339 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %227, 1
  %340 = load { ptr, ptr }, ptr %339, align 8
  %341 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %340, 0
  %342 = insertvalue { { ptr, ptr }, i1 } %341, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %343 = phi { { ptr, ptr }, i1 } [ %342, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  store { { ptr, ptr }, i1 } %343, ptr %23, align 8
  %344 = icmp eq ptr %23, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %344)
  %345 = load { { ptr, ptr }, i1 }, ptr %23, align 8
  %346 = extractvalue { { ptr, ptr }, i1 } %345, 1
  br i1 %346, label %_llgo_2, label %_llgo_1

_llgo_6:                                          ; No predecessors!
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testgo/reflect.callMethod"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca %reflect.Value, align 8
  %5 = alloca %reflect.Value, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %7 = alloca { i64, i64 }, align 8
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %8, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  store ptr null, ptr %10, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  store ptr null, ptr %12, align 8
  %13 = alloca %reflect.Value, align 8
  %14 = alloca { i64, i64, i64 }, align 8
  %15 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %15, align 8
  %16 = alloca { i64, i64, i64 }, align 8
  %17 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %17, align 8
  %18 = alloca i64, align 8
  %19 = alloca ptr, align 8
  store ptr null, ptr %19, align 8
  %20 = alloca %reflect.Value, align 8
  %21 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  %22 = alloca { { ptr, ptr }, i1 }, align 8
  %23 = alloca { ptr, ptr }, align 8
  %24 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  %25 = alloca %reflect.Value, align 8
  %26 = alloca i64, align 8
  %27 = alloca ptr, align 8
  store ptr null, ptr %27, align 8
  %28 = alloca i64, align 8
  %29 = alloca ptr, align 8
  store ptr null, ptr %29, align 8
  %30 = alloca %reflect.Value, align 8
  %31 = alloca { i64, i64, i64 }, align 8
  %32 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %32, align 8
  %33 = alloca { i64, i64, i64 }, align 8
  %34 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %34, align 8
  %35 = alloca i64, align 8
  %36 = alloca ptr, align 8
  store ptr null, ptr %36, align 8
  %37 = alloca %reflect.Value, align 8
  %38 = call i64 @runtime.AllocZHidden(i64 8)
  store i64 %38, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %38)
  %39 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %39)
  %40 = load i64, ptr %0, align 4
  %41 = and i64 %40, 72057594037927935
  %42 = lshr i64 %41, 17
  %43 = select i1 false, i64 0, i64 %42
  %44 = shl i64 %41, 39
  %45 = select i1 false, i64 0, i64 %44
  %46 = or i64 %43, %45
  %47 = and i64 %46, 72057594037927935
  %48 = xor i64 %47, 25399393228665167
  %49 = inttoptr i64 %48 to ptr
  %50 = icmp eq ptr %49, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %50)
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reflect.T", ptr %49, i32 0, i32 0
  %52 = ptrtoint ptr %51 to i64
  %53 = and i64 %52, 72057594037927935
  %54 = xor i64 %53, 25399393228665167
  %55 = shl i64 %54, 17
  %56 = select i1 false, i64 0, i64 %55
  %57 = lshr i64 %54, 39
  %58 = select i1 false, i64 0, i64 %57
  %59 = or i64 %56, %58
  %60 = and i64 %59, 72057594037927935
  %61 = or i64 %60, -6557241057451442176
  store i64 %61, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %61)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %62 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %62)
  %63 = load i64, ptr %2, align 4
  %64 = alloca i64, align 8
  store i64 1, ptr %64, align 4
  call void @runtime.StoreHiddenPointee(i64 %63, ptr %64, i64 8)
  store i64 0, ptr %64, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %65 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %65)
  %66 = load i64, ptr %0, align 4
  %67 = and i64 %66, 72057594037927935
  %68 = lshr i64 %67, 17
  %69 = select i1 false, i64 0, i64 %68
  %70 = shl i64 %67, 39
  %71 = select i1 false, i64 0, i64 %70
  %72 = or i64 %69, %71
  %73 = and i64 %72, 72057594037927935
  %74 = xor i64 %73, 25399393228665167
  %75 = inttoptr i64 %74 to ptr
  %76 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reflect.T", ptr undef }, ptr %75, 1
  %77 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %78 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %76)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %77)
  store %reflect.Value %78, ptr %4, align 8
  %79 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %80 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %80)
  %81 = load %reflect.Value, ptr %4, align 8
  store %reflect.Value zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %82 = call %reflect.Value @reflect.Value.Method(%reflect.Value %81, i64 0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %79)
  store %reflect.Value %82, ptr %5, align 8
  %83 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %84 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %84)
  %85 = load %reflect.Value, ptr %5, align 8
  %86 = call i64 @reflect.Value.Kind(%reflect.Value %85)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %83)
  %87 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %88 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %88)
  %89 = load %reflect.Value, ptr %5, align 8
  %90 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %89)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %87)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %90, ptr %6, align 8
  %91 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %91)
  %92 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %6, align 8
  %93 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %92)
  %94 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %92, 0
  %95 = getelementptr ptr, ptr %94, i64 37
  %96 = load ptr, ptr %95, align 8
  %97 = insertvalue { ptr, ptr } undef, ptr %96, 0
  %98 = insertvalue { ptr, ptr } %97, ptr %93, 1
  %99 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %100 = extractvalue { ptr, ptr } %98, 1
  %101 = extractvalue { ptr, ptr } %98, 0
  %102 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %101(ptr %100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %99)
  %103 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %102, ptr %103, align 8
  %104 = icmp eq ptr %103, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %104)
  %105 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %103, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %105, ptr %8, align 8
  %106 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %105, 0
  %107 = ptrtoint ptr %106 to i64
  %108 = and i64 %107, 72057594037927935
  %109 = xor i64 %108, 25399393228665167
  %110 = shl i64 %109, 17
  %111 = select i1 false, i64 0, i64 %110
  %112 = lshr i64 %109, 39
  %113 = select i1 false, i64 0, i64 %112
  %114 = or i64 %111, %113
  %115 = and i64 %114, 72057594037927935
  %116 = or i64 %115, -6557241057451442176
  %117 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %105, 1
  %118 = insertvalue { i64, i64 } undef, i64 %116, 0
  %119 = insertvalue { i64, i64 } %118, i64 %117, 1
  store { i64, i64 } %119, ptr %7, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %103, align 8
  call void @runtime.TouchConservativeSlot(ptr %103, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %120 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %121 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %121)
  %122 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %8, align 8
  store { i64, i64 } zeroinitializer, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %86)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %122)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %120)
  %123 = call i64 @runtime.AllocZHidden(i64 24)
  store i64 %123, ptr %9, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %10, i64 %123)
  %124 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %124)
  %125 = load i64, ptr %9, align 4
  %126 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %127 = mul i64 %126, 24
  %128 = call i64 @runtime.AdvanceHiddenPointer(i64 %125, i64 %127)
  store i64 %128, ptr %11, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %12, i64 %128)
  %129 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 100, ptr %129, align 4
  %130 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %129, 1
  %131 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %132 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %130)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %131)
  store %reflect.Value %132, ptr %13, align 8
  %133 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %133)
  %134 = load i64, ptr %11, align 4
  %135 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %135)
  %136 = load %reflect.Value, ptr %13, align 8
  %137 = alloca %reflect.Value, align 8
  store %reflect.Value %136, ptr %137, align 8
  call void @runtime.StoreHiddenPointee(i64 %134, ptr %137, i64 24)
  store %reflect.Value zeroinitializer, ptr %137, align 8
  call void @runtime.TouchConservativeSlot(ptr %137, i64 24)
  store i64 0, ptr %11, align 4
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  store ptr null, ptr %12, align 8
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store %reflect.Value zeroinitializer, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %138 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %138)
  %139 = load i64, ptr %9, align 4
  %140 = and i64 %139, 72057594037927935
  %141 = lshr i64 %140, 17
  %142 = select i1 false, i64 0, i64 %141
  %143 = shl i64 %140, 39
  %144 = select i1 false, i64 0, i64 %143
  %145 = or i64 %142, %144
  %146 = and i64 %145, 72057594037927935
  %147 = xor i64 %146, 25399393228665167
  %148 = inttoptr i64 %147 to ptr
  %149 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %148, 0
  %150 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %149, i64 1, 1
  %151 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %150, i64 1, 2
  %152 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %151, ptr %152, align 8
  %153 = icmp eq ptr %152, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %153)
  %154 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %152, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %154, ptr %15, align 8
  %155 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %154, 0
  %156 = ptrtoint ptr %155 to i64
  %157 = and i64 %156, 72057594037927935
  %158 = xor i64 %157, 25399393228665167
  %159 = shl i64 %158, 17
  %160 = select i1 false, i64 0, i64 %159
  %161 = lshr i64 %158, 39
  %162 = select i1 false, i64 0, i64 %161
  %163 = or i64 %160, %162
  %164 = and i64 %163, 72057594037927935
  %165 = or i64 %164, -6557241057451442176
  %166 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %154, 1
  %167 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %154, 2
  %168 = insertvalue { i64, i64, i64 } undef, i64 %165, 0
  %169 = insertvalue { i64, i64, i64 } %168, i64 %166, 1
  %170 = insertvalue { i64, i64, i64 } %169, i64 %167, 2
  store { i64, i64, i64 } %170, ptr %14, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %152, align 8
  call void @runtime.TouchConservativeSlot(ptr %152, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %171 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %172 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %172)
  %173 = load %reflect.Value, ptr %5, align 8
  %174 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %174)
  %175 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %15, align 8
  store i64 0, ptr %9, align 4
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  store ptr null, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %14, align 4
  call void @runtime.TouchConservativeSlot(ptr %14, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %176 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %173, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %175)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %171)
  %177 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %176, ptr %177, align 8
  %178 = icmp eq ptr %177, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %178)
  %179 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %177, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %179, ptr %17, align 8
  %180 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %179, 0
  %181 = ptrtoint ptr %180 to i64
  %182 = and i64 %181, 72057594037927935
  %183 = xor i64 %182, 25399393228665167
  %184 = shl i64 %183, 17
  %185 = select i1 false, i64 0, i64 %184
  %186 = lshr i64 %183, 39
  %187 = select i1 false, i64 0, i64 %186
  %188 = or i64 %185, %187
  %189 = and i64 %188, 72057594037927935
  %190 = or i64 %189, -6557241057451442176
  %191 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %179, 1
  %192 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %179, 2
  %193 = insertvalue { i64, i64, i64 } undef, i64 %190, 0
  %194 = insertvalue { i64, i64, i64 } %193, i64 %191, 1
  %195 = insertvalue { i64, i64, i64 } %194, i64 %192, 2
  store { i64, i64, i64 } %195, ptr %16, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %177, align 8
  call void @runtime.TouchConservativeSlot(ptr %177, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %196 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %196)
  %197 = load { i64, i64, i64 }, ptr %16, align 4
  %198 = extractvalue { i64, i64, i64 } %197, 0
  %199 = extractvalue { i64, i64, i64 } %197, 1
  %200 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 %199)
  %201 = mul i64 %200, 24
  %202 = call i64 @runtime.AdvanceHiddenPointer(i64 %198, i64 %201)
  store i64 %202, ptr %18, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %19, i64 %202)
  %203 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %203)
  %204 = load i64, ptr %18, align 4
  %205 = alloca %reflect.Value, align 8
  call void @runtime.LoadHiddenPointee(ptr %205, i64 %204, i64 24)
  %206 = icmp eq ptr %205, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %206)
  %207 = load %reflect.Value, ptr %205, align 8
  store %reflect.Value zeroinitializer, ptr %205, align 8
  store %reflect.Value %207, ptr %20, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %16, align 4
  call void @runtime.TouchConservativeSlot(ptr %16, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 24)
  store i64 0, ptr %18, align 4
  call void @runtime.TouchConservativeSlot(ptr %18, i64 8)
  store ptr null, ptr %19, align 8
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %208 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %209 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %209)
  %210 = load %reflect.Value, ptr %20, align 8
  store %reflect.Value zeroinitializer, ptr %20, align 8
  call void @runtime.TouchConservativeSlot(ptr %20, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %211 = call i64 @reflect.Value.Int(%reflect.Value %210)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %208)
  %212 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %211)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %212)
  %213 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %214 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %214)
  %215 = load %reflect.Value, ptr %5, align 8
  %216 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %215)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %213)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %216, ptr %21, align 8
  %217 = icmp eq ptr %21, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %217)
  %218 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %21, align 8
  %219 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %218, 0
  %220 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.MatchesClosure"(ptr @"_llgo_closure$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", ptr %219)
  br i1 %220, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %221 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr %221, align 8
  %222 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %221, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %222)
  unreachable

_llgo_2:                                          ; preds = %_llgo_5
  %223 = icmp eq ptr %22, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %223)
  %224 = load { { ptr, ptr }, i1 }, ptr %22, align 8
  %225 = extractvalue { { ptr, ptr }, i1 } %224, 0
  store { ptr, ptr } %225, ptr %23, align 8
  %226 = icmp eq ptr %23, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %226)
  %227 = load { ptr, ptr }, ptr %23, align 8
  %228 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %21, align 8
  call void @runtime.TouchConservativeSlot(ptr %21, i64 16)
  store { { ptr, ptr }, i1 } zeroinitializer, ptr %22, align 8
  call void @runtime.TouchConservativeSlot(ptr %22, i64 24)
  store { ptr, ptr } zeroinitializer, ptr %23, align 8
  call void @runtime.TouchConservativeSlot(ptr %23, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %229 = extractvalue { ptr, ptr } %227, 1
  %230 = extractvalue { ptr, ptr } %227, 0
  %231 = call i64 %230(ptr %229, i64 1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %228)
  %232 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %233 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %233)
  %234 = load %reflect.Value, ptr %5, align 8
  store %reflect.Value zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %235 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %234)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %232)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %235, ptr %24, align 8
  %236 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %237 = icmp eq ptr %24, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %237)
  %238 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %24, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %24, align 8
  call void @runtime.TouchConservativeSlot(ptr %24, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %239 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %238)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %236)
  store %reflect.Value %239, ptr %25, align 8
  %240 = call i64 @runtime.AllocZHidden(i64 24)
  store i64 %240, ptr %26, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %27, i64 %240)
  %241 = icmp eq ptr %26, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %241)
  %242 = load i64, ptr %26, align 4
  %243 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %244 = mul i64 %243, 24
  %245 = call i64 @runtime.AdvanceHiddenPointer(i64 %242, i64 %244)
  store i64 %245, ptr %28, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %29, i64 %245)
  %246 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 100, ptr %246, align 4
  %247 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %246, 1
  %248 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %249 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %247)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %248)
  store %reflect.Value %249, ptr %30, align 8
  %250 = icmp eq ptr %28, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %250)
  %251 = load i64, ptr %28, align 4
  %252 = icmp eq ptr %30, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %252)
  %253 = load %reflect.Value, ptr %30, align 8
  %254 = alloca %reflect.Value, align 8
  store %reflect.Value %253, ptr %254, align 8
  call void @runtime.StoreHiddenPointee(i64 %251, ptr %254, i64 24)
  store %reflect.Value zeroinitializer, ptr %254, align 8
  call void @runtime.TouchConservativeSlot(ptr %254, i64 24)
  store i64 0, ptr %28, align 4
  call void @runtime.TouchConservativeSlot(ptr %28, i64 8)
  store ptr null, ptr %29, align 8
  call void @runtime.TouchConservativeSlot(ptr %29, i64 8)
  store %reflect.Value zeroinitializer, ptr %30, align 8
  call void @runtime.TouchConservativeSlot(ptr %30, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %255 = icmp eq ptr %26, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %255)
  %256 = load i64, ptr %26, align 4
  %257 = and i64 %256, 72057594037927935
  %258 = lshr i64 %257, 17
  %259 = select i1 false, i64 0, i64 %258
  %260 = shl i64 %257, 39
  %261 = select i1 false, i64 0, i64 %260
  %262 = or i64 %259, %261
  %263 = and i64 %262, 72057594037927935
  %264 = xor i64 %263, 25399393228665167
  %265 = inttoptr i64 %264 to ptr
  %266 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %265, 0
  %267 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %266, i64 1, 1
  %268 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %267, i64 1, 2
  %269 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %268, ptr %269, align 8
  %270 = icmp eq ptr %269, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %270)
  %271 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %269, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %271, ptr %32, align 8
  %272 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %271, 0
  %273 = ptrtoint ptr %272 to i64
  %274 = and i64 %273, 72057594037927935
  %275 = xor i64 %274, 25399393228665167
  %276 = shl i64 %275, 17
  %277 = select i1 false, i64 0, i64 %276
  %278 = lshr i64 %275, 39
  %279 = select i1 false, i64 0, i64 %278
  %280 = or i64 %277, %279
  %281 = and i64 %280, 72057594037927935
  %282 = or i64 %281, -6557241057451442176
  %283 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %271, 1
  %284 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %271, 2
  %285 = insertvalue { i64, i64, i64 } undef, i64 %282, 0
  %286 = insertvalue { i64, i64, i64 } %285, i64 %283, 1
  %287 = insertvalue { i64, i64, i64 } %286, i64 %284, 2
  store { i64, i64, i64 } %287, ptr %31, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %269, align 8
  call void @runtime.TouchConservativeSlot(ptr %269, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %288 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %289 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %289)
  %290 = load %reflect.Value, ptr %25, align 8
  %291 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %291)
  %292 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %32, align 8
  store %reflect.Value zeroinitializer, ptr %25, align 8
  call void @runtime.TouchConservativeSlot(ptr %25, i64 24)
  store i64 0, ptr %26, align 4
  call void @runtime.TouchConservativeSlot(ptr %26, i64 8)
  store ptr null, ptr %27, align 8
  call void @runtime.TouchConservativeSlot(ptr %27, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %31, align 4
  call void @runtime.TouchConservativeSlot(ptr %31, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %32, align 8
  call void @runtime.TouchConservativeSlot(ptr %32, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %293 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %290, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %292)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %288)
  %294 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %293, ptr %294, align 8
  %295 = icmp eq ptr %294, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %295)
  %296 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %294, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %296, ptr %34, align 8
  %297 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %296, 0
  %298 = ptrtoint ptr %297 to i64
  %299 = and i64 %298, 72057594037927935
  %300 = xor i64 %299, 25399393228665167
  %301 = shl i64 %300, 17
  %302 = select i1 false, i64 0, i64 %301
  %303 = lshr i64 %300, 39
  %304 = select i1 false, i64 0, i64 %303
  %305 = or i64 %302, %304
  %306 = and i64 %305, 72057594037927935
  %307 = or i64 %306, -6557241057451442176
  %308 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %296, 1
  %309 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %296, 2
  %310 = insertvalue { i64, i64, i64 } undef, i64 %307, 0
  %311 = insertvalue { i64, i64, i64 } %310, i64 %308, 1
  %312 = insertvalue { i64, i64, i64 } %311, i64 %309, 2
  store { i64, i64, i64 } %312, ptr %33, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %294, align 8
  call void @runtime.TouchConservativeSlot(ptr %294, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %313 = icmp eq ptr %33, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %313)
  %314 = load { i64, i64, i64 }, ptr %33, align 4
  %315 = extractvalue { i64, i64, i64 } %314, 0
  %316 = extractvalue { i64, i64, i64 } %314, 1
  %317 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 %316)
  %318 = mul i64 %317, 24
  %319 = call i64 @runtime.AdvanceHiddenPointer(i64 %315, i64 %318)
  store i64 %319, ptr %35, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %36, i64 %319)
  %320 = icmp eq ptr %35, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %320)
  %321 = load i64, ptr %35, align 4
  %322 = alloca %reflect.Value, align 8
  call void @runtime.LoadHiddenPointee(ptr %322, i64 %321, i64 24)
  %323 = icmp eq ptr %322, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %323)
  %324 = load %reflect.Value, ptr %322, align 8
  store %reflect.Value zeroinitializer, ptr %322, align 8
  store %reflect.Value %324, ptr %37, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %33, align 4
  call void @runtime.TouchConservativeSlot(ptr %33, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %34, align 8
  call void @runtime.TouchConservativeSlot(ptr %34, i64 24)
  store i64 0, ptr %35, align 4
  call void @runtime.TouchConservativeSlot(ptr %35, i64 8)
  store ptr null, ptr %36, align 8
  call void @runtime.TouchConservativeSlot(ptr %36, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %325 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %326 = icmp eq ptr %37, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %326)
  %327 = load %reflect.Value, ptr %37, align 8
  store %reflect.Value zeroinitializer, ptr %37, align 8
  call void @runtime.TouchConservativeSlot(ptr %37, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %328 = call i64 @reflect.Value.Int(%reflect.Value %327)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %325)
  %329 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %328)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %329)
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %330 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %218, 1
  %331 = load { ptr, ptr }, ptr %330, align 8
  %332 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %331, 0
  %333 = insertvalue { { ptr, ptr }, i1 } %332, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %334 = phi { { ptr, ptr }, i1 } [ %333, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  store { { ptr, ptr }, i1 } %334, ptr %22, align 8
  %335 = icmp eq ptr %22, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %335)
  %336 = load { { ptr, ptr }, i1 }, ptr %22, align 8
  %337 = extractvalue { { ptr, ptr }, i1 } %336, 1
  br i1 %337, label %_llgo_2, label %_llgo_1

_llgo_6:                                          ; No predecessors!
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testgo/reflect.callSlice"() {
_llgo_0:
  %0 = alloca %reflect.Value, align 8
  %1 = alloca %reflect.Value, align 8
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
  %20 = alloca i64, align 8
  %21 = alloca ptr, align 8
  store ptr null, ptr %21, align 8
  %22 = alloca i64, align 8
  %23 = alloca ptr, align 8
  store ptr null, ptr %23, align 8
  %24 = alloca %reflect.Value, align 8
  %25 = alloca i64, align 8
  %26 = alloca ptr, align 8
  store ptr null, ptr %26, align 8
  %27 = alloca %reflect.Value, align 8
  %28 = alloca i64, align 8
  %29 = alloca ptr, align 8
  store ptr null, ptr %29, align 8
  %30 = alloca %reflect.Value, align 8
  %31 = alloca { i64, i64, i64 }, align 8
  %32 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %32, align 8
  %33 = alloca { i64, i64, i64 }, align 8
  %34 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %34, align 8
  %35 = alloca i64, align 8
  %36 = alloca ptr, align 8
  store ptr null, ptr %36, align 8
  %37 = alloca %reflect.Value, align 8
  %38 = alloca i64, align 8
  %39 = alloca ptr, align 8
  store ptr null, ptr %39, align 8
  %40 = alloca %reflect.Value, align 8
  %41 = alloca i64, align 8
  %42 = alloca ptr, align 8
  store ptr null, ptr %42, align 8
  %43 = alloca i64, align 8
  %44 = alloca ptr, align 8
  store ptr null, ptr %44, align 8
  %45 = alloca i64, align 8
  %46 = alloca ptr, align 8
  store ptr null, ptr %46, align 8
  %47 = alloca i64, align 8
  %48 = alloca ptr, align 8
  store ptr null, ptr %48, align 8
  %49 = alloca i64, align 8
  %50 = alloca ptr, align 8
  store ptr null, ptr %50, align 8
  %51 = alloca i64, align 8
  %52 = alloca ptr, align 8
  store ptr null, ptr %52, align 8
  %53 = alloca i64, align 8
  %54 = alloca ptr, align 8
  store ptr null, ptr %54, align 8
  %55 = alloca i64, align 8
  %56 = alloca ptr, align 8
  store ptr null, ptr %56, align 8
  %57 = alloca i64, align 8
  %58 = alloca ptr, align 8
  store ptr null, ptr %58, align 8
  %59 = alloca i64, align 8
  %60 = alloca ptr, align 8
  store ptr null, ptr %60, align 8
  %61 = alloca i64, align 8
  %62 = alloca ptr, align 8
  store ptr null, ptr %62, align 8
  %63 = alloca i64, align 8
  %64 = alloca ptr, align 8
  store ptr null, ptr %64, align 8
  %65 = alloca i64, align 8
  %66 = alloca ptr, align 8
  store ptr null, ptr %66, align 8
  %67 = alloca i64, align 8
  %68 = alloca ptr, align 8
  store ptr null, ptr %68, align 8
  %69 = alloca i64, align 8
  %70 = alloca ptr, align 8
  store ptr null, ptr %70, align 8
  %71 = alloca { i64, i64, i64 }, align 8
  %72 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %72, align 8
  %73 = alloca %reflect.Value, align 8
  %74 = alloca { i64, i64, i64 }, align 8
  %75 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %75, align 8
  %76 = alloca { i64, i64, i64 }, align 8
  %77 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %77, align 8
  %78 = alloca i64, align 8
  %79 = alloca ptr, align 8
  store ptr null, ptr %79, align 8
  %80 = alloca %reflect.Value, align 8
  %81 = alloca i64, align 8
  %82 = alloca ptr, align 8
  store ptr null, ptr %82, align 8
  %83 = alloca %reflect.Value, align 8
  %84 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/reflect.demo", ptr null }, ptr %84, align 8
  %85 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$FjMjjQr3-2iTiWyZP1IIQFOz0hUCa0OS6pEm5uVV6Pk", ptr undef }, ptr %84, 1
  %86 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %87 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %85)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %86)
  store %reflect.Value %87, ptr %0, align 8
  %88 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %88, align 4
  %89 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %88, 1
  %90 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %91 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %89)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %90)
  store %reflect.Value %91, ptr %1, align 8
  %92 = call i64 @runtime.AllocZHidden(i64 288)
  store i64 %92, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %92)
  %93 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %93)
  %94 = load i64, ptr %2, align 4
  %95 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 12)
  %96 = mul i64 %95, 24
  %97 = call i64 @runtime.AdvanceHiddenPointer(i64 %94, i64 %96)
  store i64 %97, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %97)
  %98 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %98)
  %99 = load i64, ptr %4, align 4
  %100 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %100)
  %101 = load %reflect.Value, ptr %1, align 8
  %102 = alloca %reflect.Value, align 8
  store %reflect.Value %101, ptr %102, align 8
  call void @runtime.StoreHiddenPointee(i64 %99, ptr %102, i64 24)
  store %reflect.Value zeroinitializer, ptr %102, align 8
  call void @runtime.TouchConservativeSlot(ptr %102, i64 24)
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %103 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %103)
  %104 = load i64, ptr %2, align 4
  %105 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 12)
  %106 = mul i64 %105, 24
  %107 = call i64 @runtime.AdvanceHiddenPointer(i64 %104, i64 %106)
  store i64 %107, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %107)
  %108 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %108)
  %109 = load i64, ptr %6, align 4
  %110 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %110)
  %111 = load %reflect.Value, ptr %1, align 8
  %112 = alloca %reflect.Value, align 8
  store %reflect.Value %111, ptr %112, align 8
  call void @runtime.StoreHiddenPointee(i64 %109, ptr %112, i64 24)
  store %reflect.Value zeroinitializer, ptr %112, align 8
  call void @runtime.TouchConservativeSlot(ptr %112, i64 24)
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %113 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %113)
  %114 = load i64, ptr %2, align 4
  %115 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 12)
  %116 = mul i64 %115, 24
  %117 = call i64 @runtime.AdvanceHiddenPointer(i64 %114, i64 %116)
  store i64 %117, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %117)
  %118 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %118)
  %119 = load i64, ptr %8, align 4
  %120 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %120)
  %121 = load %reflect.Value, ptr %1, align 8
  %122 = alloca %reflect.Value, align 8
  store %reflect.Value %121, ptr %122, align 8
  call void @runtime.StoreHiddenPointee(i64 %119, ptr %122, i64 24)
  store %reflect.Value zeroinitializer, ptr %122, align 8
  call void @runtime.TouchConservativeSlot(ptr %122, i64 24)
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %123 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %123)
  %124 = load i64, ptr %2, align 4
  %125 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 3, i64 12)
  %126 = mul i64 %125, 24
  %127 = call i64 @runtime.AdvanceHiddenPointer(i64 %124, i64 %126)
  store i64 %127, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %127)
  %128 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %128)
  %129 = load i64, ptr %10, align 4
  %130 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %130)
  %131 = load %reflect.Value, ptr %1, align 8
  %132 = alloca %reflect.Value, align 8
  store %reflect.Value %131, ptr %132, align 8
  call void @runtime.StoreHiddenPointee(i64 %129, ptr %132, i64 24)
  store %reflect.Value zeroinitializer, ptr %132, align 8
  call void @runtime.TouchConservativeSlot(ptr %132, i64 24)
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %133 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %133)
  %134 = load i64, ptr %2, align 4
  %135 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 4, i64 12)
  %136 = mul i64 %135, 24
  %137 = call i64 @runtime.AdvanceHiddenPointer(i64 %134, i64 %136)
  store i64 %137, ptr %12, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %13, i64 %137)
  %138 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %138)
  %139 = load i64, ptr %12, align 4
  %140 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %140)
  %141 = load %reflect.Value, ptr %1, align 8
  %142 = alloca %reflect.Value, align 8
  store %reflect.Value %141, ptr %142, align 8
  call void @runtime.StoreHiddenPointee(i64 %139, ptr %142, i64 24)
  store %reflect.Value zeroinitializer, ptr %142, align 8
  call void @runtime.TouchConservativeSlot(ptr %142, i64 24)
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %143 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %143)
  %144 = load i64, ptr %2, align 4
  %145 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 5, i64 12)
  %146 = mul i64 %145, 24
  %147 = call i64 @runtime.AdvanceHiddenPointer(i64 %144, i64 %146)
  store i64 %147, ptr %14, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %15, i64 %147)
  %148 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %148)
  %149 = load i64, ptr %14, align 4
  %150 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %150)
  %151 = load %reflect.Value, ptr %1, align 8
  %152 = alloca %reflect.Value, align 8
  store %reflect.Value %151, ptr %152, align 8
  call void @runtime.StoreHiddenPointee(i64 %149, ptr %152, i64 24)
  store %reflect.Value zeroinitializer, ptr %152, align 8
  call void @runtime.TouchConservativeSlot(ptr %152, i64 24)
  store i64 0, ptr %14, align 4
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store ptr null, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %153 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %153)
  %154 = load i64, ptr %2, align 4
  %155 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 6, i64 12)
  %156 = mul i64 %155, 24
  %157 = call i64 @runtime.AdvanceHiddenPointer(i64 %154, i64 %156)
  store i64 %157, ptr %16, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %17, i64 %157)
  %158 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %158)
  %159 = load i64, ptr %16, align 4
  %160 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %160)
  %161 = load %reflect.Value, ptr %1, align 8
  %162 = alloca %reflect.Value, align 8
  store %reflect.Value %161, ptr %162, align 8
  call void @runtime.StoreHiddenPointee(i64 %159, ptr %162, i64 24)
  store %reflect.Value zeroinitializer, ptr %162, align 8
  call void @runtime.TouchConservativeSlot(ptr %162, i64 24)
  store i64 0, ptr %16, align 4
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  store ptr null, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %163 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %163)
  %164 = load i64, ptr %2, align 4
  %165 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 7, i64 12)
  %166 = mul i64 %165, 24
  %167 = call i64 @runtime.AdvanceHiddenPointer(i64 %164, i64 %166)
  store i64 %167, ptr %18, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %19, i64 %167)
  %168 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %168)
  %169 = load i64, ptr %18, align 4
  %170 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %170)
  %171 = load %reflect.Value, ptr %1, align 8
  %172 = alloca %reflect.Value, align 8
  store %reflect.Value %171, ptr %172, align 8
  call void @runtime.StoreHiddenPointee(i64 %169, ptr %172, i64 24)
  store %reflect.Value zeroinitializer, ptr %172, align 8
  call void @runtime.TouchConservativeSlot(ptr %172, i64 24)
  store i64 0, ptr %18, align 4
  call void @runtime.TouchConservativeSlot(ptr %18, i64 8)
  store ptr null, ptr %19, align 8
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %173 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %173)
  %174 = load i64, ptr %2, align 4
  %175 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 8, i64 12)
  %176 = mul i64 %175, 24
  %177 = call i64 @runtime.AdvanceHiddenPointer(i64 %174, i64 %176)
  store i64 %177, ptr %20, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %21, i64 %177)
  %178 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %178)
  %179 = load i64, ptr %20, align 4
  %180 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %180)
  %181 = load %reflect.Value, ptr %1, align 8
  %182 = alloca %reflect.Value, align 8
  store %reflect.Value %181, ptr %182, align 8
  call void @runtime.StoreHiddenPointee(i64 %179, ptr %182, i64 24)
  store %reflect.Value zeroinitializer, ptr %182, align 8
  call void @runtime.TouchConservativeSlot(ptr %182, i64 24)
  store i64 0, ptr %20, align 4
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  store ptr null, ptr %21, align 8
  call void @runtime.TouchConservativeSlot(ptr %21, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %183 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %183)
  %184 = load i64, ptr %2, align 4
  %185 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 9, i64 12)
  %186 = mul i64 %185, 24
  %187 = call i64 @runtime.AdvanceHiddenPointer(i64 %184, i64 %186)
  store i64 %187, ptr %22, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %23, i64 %187)
  %188 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %188, align 4
  %189 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %188, 1
  %190 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %191 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %189)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %190)
  store %reflect.Value %191, ptr %24, align 8
  %192 = icmp eq ptr %22, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %192)
  %193 = load i64, ptr %22, align 4
  %194 = icmp eq ptr %24, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %194)
  %195 = load %reflect.Value, ptr %24, align 8
  %196 = alloca %reflect.Value, align 8
  store %reflect.Value %195, ptr %196, align 8
  call void @runtime.StoreHiddenPointee(i64 %193, ptr %196, i64 24)
  store %reflect.Value zeroinitializer, ptr %196, align 8
  call void @runtime.TouchConservativeSlot(ptr %196, i64 24)
  store i64 0, ptr %22, align 4
  call void @runtime.TouchConservativeSlot(ptr %22, i64 8)
  store ptr null, ptr %23, align 8
  call void @runtime.TouchConservativeSlot(ptr %23, i64 8)
  store %reflect.Value zeroinitializer, ptr %24, align 8
  call void @runtime.TouchConservativeSlot(ptr %24, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %197 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %197)
  %198 = load i64, ptr %2, align 4
  %199 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 10, i64 12)
  %200 = mul i64 %199, 24
  %201 = call i64 @runtime.AdvanceHiddenPointer(i64 %198, i64 %200)
  store i64 %201, ptr %25, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %26, i64 %201)
  %202 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %202, align 4
  %203 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %202, 1
  %204 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %205 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %203)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %204)
  store %reflect.Value %205, ptr %27, align 8
  %206 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %206)
  %207 = load i64, ptr %25, align 4
  %208 = icmp eq ptr %27, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %208)
  %209 = load %reflect.Value, ptr %27, align 8
  %210 = alloca %reflect.Value, align 8
  store %reflect.Value %209, ptr %210, align 8
  call void @runtime.StoreHiddenPointee(i64 %207, ptr %210, i64 24)
  store %reflect.Value zeroinitializer, ptr %210, align 8
  call void @runtime.TouchConservativeSlot(ptr %210, i64 24)
  store i64 0, ptr %25, align 4
  call void @runtime.TouchConservativeSlot(ptr %25, i64 8)
  store ptr null, ptr %26, align 8
  call void @runtime.TouchConservativeSlot(ptr %26, i64 8)
  store %reflect.Value zeroinitializer, ptr %27, align 8
  call void @runtime.TouchConservativeSlot(ptr %27, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %211 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %211)
  %212 = load i64, ptr %2, align 4
  %213 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 11, i64 12)
  %214 = mul i64 %213, 24
  %215 = call i64 @runtime.AdvanceHiddenPointer(i64 %212, i64 %214)
  store i64 %215, ptr %28, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %29, i64 %215)
  %216 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 3, ptr %216, align 4
  %217 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %216, 1
  %218 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %219 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %217)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %218)
  store %reflect.Value %219, ptr %30, align 8
  %220 = icmp eq ptr %28, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %220)
  %221 = load i64, ptr %28, align 4
  %222 = icmp eq ptr %30, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %222)
  %223 = load %reflect.Value, ptr %30, align 8
  %224 = alloca %reflect.Value, align 8
  store %reflect.Value %223, ptr %224, align 8
  call void @runtime.StoreHiddenPointee(i64 %221, ptr %224, i64 24)
  store %reflect.Value zeroinitializer, ptr %224, align 8
  call void @runtime.TouchConservativeSlot(ptr %224, i64 24)
  store i64 0, ptr %28, align 4
  call void @runtime.TouchConservativeSlot(ptr %28, i64 8)
  store ptr null, ptr %29, align 8
  call void @runtime.TouchConservativeSlot(ptr %29, i64 8)
  store %reflect.Value zeroinitializer, ptr %30, align 8
  call void @runtime.TouchConservativeSlot(ptr %30, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %225 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %225)
  %226 = load i64, ptr %2, align 4
  %227 = and i64 %226, 72057594037927935
  %228 = lshr i64 %227, 17
  %229 = select i1 false, i64 0, i64 %228
  %230 = shl i64 %227, 39
  %231 = select i1 false, i64 0, i64 %230
  %232 = or i64 %229, %231
  %233 = and i64 %232, 72057594037927935
  %234 = xor i64 %233, 25399393228665167
  %235 = inttoptr i64 %234 to ptr
  %236 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %235, 0
  %237 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %236, i64 12, 1
  %238 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %237, i64 12, 2
  %239 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %238, ptr %239, align 8
  %240 = icmp eq ptr %239, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %240)
  %241 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %239, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %241, ptr %32, align 8
  %242 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %241, 0
  %243 = ptrtoint ptr %242 to i64
  %244 = and i64 %243, 72057594037927935
  %245 = xor i64 %244, 25399393228665167
  %246 = shl i64 %245, 17
  %247 = select i1 false, i64 0, i64 %246
  %248 = lshr i64 %245, 39
  %249 = select i1 false, i64 0, i64 %248
  %250 = or i64 %247, %249
  %251 = and i64 %250, 72057594037927935
  %252 = or i64 %251, -6557241057451442176
  %253 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %241, 1
  %254 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %241, 2
  %255 = insertvalue { i64, i64, i64 } undef, i64 %252, 0
  %256 = insertvalue { i64, i64, i64 } %255, i64 %253, 1
  %257 = insertvalue { i64, i64, i64 } %256, i64 %254, 2
  store { i64, i64, i64 } %257, ptr %31, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %239, align 8
  call void @runtime.TouchConservativeSlot(ptr %239, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %258 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %259 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %259)
  %260 = load %reflect.Value, ptr %0, align 8
  %261 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %261)
  %262 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %32, align 8
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %31, align 4
  call void @runtime.TouchConservativeSlot(ptr %31, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %32, align 8
  call void @runtime.TouchConservativeSlot(ptr %32, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %263 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %260, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %262)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %258)
  %264 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %263, ptr %264, align 8
  %265 = icmp eq ptr %264, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %265)
  %266 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %264, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %266, ptr %34, align 8
  %267 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %266, 0
  %268 = ptrtoint ptr %267 to i64
  %269 = and i64 %268, 72057594037927935
  %270 = xor i64 %269, 25399393228665167
  %271 = shl i64 %270, 17
  %272 = select i1 false, i64 0, i64 %271
  %273 = lshr i64 %270, 39
  %274 = select i1 false, i64 0, i64 %273
  %275 = or i64 %272, %274
  %276 = and i64 %275, 72057594037927935
  %277 = or i64 %276, -6557241057451442176
  %278 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %266, 1
  %279 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %266, 2
  %280 = insertvalue { i64, i64, i64 } undef, i64 %277, 0
  %281 = insertvalue { i64, i64, i64 } %280, i64 %278, 1
  %282 = insertvalue { i64, i64, i64 } %281, i64 %279, 2
  store { i64, i64, i64 } %282, ptr %33, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %264, align 8
  call void @runtime.TouchConservativeSlot(ptr %264, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %283 = icmp eq ptr %33, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %283)
  %284 = load { i64, i64, i64 }, ptr %33, align 4
  %285 = extractvalue { i64, i64, i64 } %284, 0
  %286 = extractvalue { i64, i64, i64 } %284, 1
  %287 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 %286)
  %288 = mul i64 %287, 24
  %289 = call i64 @runtime.AdvanceHiddenPointer(i64 %285, i64 %288)
  store i64 %289, ptr %35, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %36, i64 %289)
  %290 = icmp eq ptr %35, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %290)
  %291 = load i64, ptr %35, align 4
  %292 = alloca %reflect.Value, align 8
  call void @runtime.LoadHiddenPointee(ptr %292, i64 %291, i64 24)
  %293 = icmp eq ptr %292, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %293)
  %294 = load %reflect.Value, ptr %292, align 8
  store %reflect.Value zeroinitializer, ptr %292, align 8
  store %reflect.Value %294, ptr %37, align 8
  store i64 0, ptr %35, align 4
  call void @runtime.TouchConservativeSlot(ptr %35, i64 8)
  store ptr null, ptr %36, align 8
  call void @runtime.TouchConservativeSlot(ptr %36, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %295 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %296 = icmp eq ptr %37, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %296)
  %297 = load %reflect.Value, ptr %37, align 8
  store %reflect.Value zeroinitializer, ptr %37, align 8
  call void @runtime.TouchConservativeSlot(ptr %37, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %298 = call i64 @reflect.Value.Int(%reflect.Value %297)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %295)
  %299 = icmp eq ptr %33, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %299)
  %300 = load { i64, i64, i64 }, ptr %33, align 4
  %301 = extractvalue { i64, i64, i64 } %300, 0
  %302 = extractvalue { i64, i64, i64 } %300, 1
  %303 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 %302)
  %304 = mul i64 %303, 24
  %305 = call i64 @runtime.AdvanceHiddenPointer(i64 %301, i64 %304)
  store i64 %305, ptr %38, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %39, i64 %305)
  %306 = icmp eq ptr %38, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %306)
  %307 = load i64, ptr %38, align 4
  %308 = alloca %reflect.Value, align 8
  call void @runtime.LoadHiddenPointee(ptr %308, i64 %307, i64 24)
  %309 = icmp eq ptr %308, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %309)
  %310 = load %reflect.Value, ptr %308, align 8
  store %reflect.Value zeroinitializer, ptr %308, align 8
  store %reflect.Value %310, ptr %40, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %33, align 4
  call void @runtime.TouchConservativeSlot(ptr %33, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %34, align 8
  call void @runtime.TouchConservativeSlot(ptr %34, i64 24)
  store i64 0, ptr %38, align 4
  call void @runtime.TouchConservativeSlot(ptr %38, i64 8)
  store ptr null, ptr %39, align 8
  call void @runtime.TouchConservativeSlot(ptr %39, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %311 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %312 = icmp eq ptr %40, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %312)
  %313 = load %reflect.Value, ptr %40, align 8
  store %reflect.Value zeroinitializer, ptr %40, align 8
  call void @runtime.TouchConservativeSlot(ptr %40, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %314 = call i64 @reflect.Value.Int(%reflect.Value %313)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %311)
  %315 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %298)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %314)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %315)
  %316 = call i64 @runtime.AllocZHidden(i64 240)
  store i64 %316, ptr %41, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %42, i64 %316)
  %317 = icmp eq ptr %41, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %317)
  %318 = load i64, ptr %41, align 4
  %319 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 10)
  %320 = mul i64 %319, 24
  %321 = call i64 @runtime.AdvanceHiddenPointer(i64 %318, i64 %320)
  store i64 %321, ptr %43, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %44, i64 %321)
  %322 = icmp eq ptr %43, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %322)
  %323 = load i64, ptr %43, align 4
  %324 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %324)
  %325 = load %reflect.Value, ptr %1, align 8
  %326 = alloca %reflect.Value, align 8
  store %reflect.Value %325, ptr %326, align 8
  call void @runtime.StoreHiddenPointee(i64 %323, ptr %326, i64 24)
  store %reflect.Value zeroinitializer, ptr %326, align 8
  call void @runtime.TouchConservativeSlot(ptr %326, i64 24)
  store i64 0, ptr %43, align 4
  call void @runtime.TouchConservativeSlot(ptr %43, i64 8)
  store ptr null, ptr %44, align 8
  call void @runtime.TouchConservativeSlot(ptr %44, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %327 = icmp eq ptr %41, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %327)
  %328 = load i64, ptr %41, align 4
  %329 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 10)
  %330 = mul i64 %329, 24
  %331 = call i64 @runtime.AdvanceHiddenPointer(i64 %328, i64 %330)
  store i64 %331, ptr %45, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %46, i64 %331)
  %332 = icmp eq ptr %45, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %332)
  %333 = load i64, ptr %45, align 4
  %334 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %334)
  %335 = load %reflect.Value, ptr %1, align 8
  %336 = alloca %reflect.Value, align 8
  store %reflect.Value %335, ptr %336, align 8
  call void @runtime.StoreHiddenPointee(i64 %333, ptr %336, i64 24)
  store %reflect.Value zeroinitializer, ptr %336, align 8
  call void @runtime.TouchConservativeSlot(ptr %336, i64 24)
  store i64 0, ptr %45, align 4
  call void @runtime.TouchConservativeSlot(ptr %45, i64 8)
  store ptr null, ptr %46, align 8
  call void @runtime.TouchConservativeSlot(ptr %46, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %337 = icmp eq ptr %41, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %337)
  %338 = load i64, ptr %41, align 4
  %339 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 10)
  %340 = mul i64 %339, 24
  %341 = call i64 @runtime.AdvanceHiddenPointer(i64 %338, i64 %340)
  store i64 %341, ptr %47, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %48, i64 %341)
  %342 = icmp eq ptr %47, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %342)
  %343 = load i64, ptr %47, align 4
  %344 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %344)
  %345 = load %reflect.Value, ptr %1, align 8
  %346 = alloca %reflect.Value, align 8
  store %reflect.Value %345, ptr %346, align 8
  call void @runtime.StoreHiddenPointee(i64 %343, ptr %346, i64 24)
  store %reflect.Value zeroinitializer, ptr %346, align 8
  call void @runtime.TouchConservativeSlot(ptr %346, i64 24)
  store i64 0, ptr %47, align 4
  call void @runtime.TouchConservativeSlot(ptr %47, i64 8)
  store ptr null, ptr %48, align 8
  call void @runtime.TouchConservativeSlot(ptr %48, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %347 = icmp eq ptr %41, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %347)
  %348 = load i64, ptr %41, align 4
  %349 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 3, i64 10)
  %350 = mul i64 %349, 24
  %351 = call i64 @runtime.AdvanceHiddenPointer(i64 %348, i64 %350)
  store i64 %351, ptr %49, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %50, i64 %351)
  %352 = icmp eq ptr %49, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %352)
  %353 = load i64, ptr %49, align 4
  %354 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %354)
  %355 = load %reflect.Value, ptr %1, align 8
  %356 = alloca %reflect.Value, align 8
  store %reflect.Value %355, ptr %356, align 8
  call void @runtime.StoreHiddenPointee(i64 %353, ptr %356, i64 24)
  store %reflect.Value zeroinitializer, ptr %356, align 8
  call void @runtime.TouchConservativeSlot(ptr %356, i64 24)
  store i64 0, ptr %49, align 4
  call void @runtime.TouchConservativeSlot(ptr %49, i64 8)
  store ptr null, ptr %50, align 8
  call void @runtime.TouchConservativeSlot(ptr %50, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %357 = icmp eq ptr %41, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %357)
  %358 = load i64, ptr %41, align 4
  %359 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 4, i64 10)
  %360 = mul i64 %359, 24
  %361 = call i64 @runtime.AdvanceHiddenPointer(i64 %358, i64 %360)
  store i64 %361, ptr %51, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %52, i64 %361)
  %362 = icmp eq ptr %51, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %362)
  %363 = load i64, ptr %51, align 4
  %364 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %364)
  %365 = load %reflect.Value, ptr %1, align 8
  %366 = alloca %reflect.Value, align 8
  store %reflect.Value %365, ptr %366, align 8
  call void @runtime.StoreHiddenPointee(i64 %363, ptr %366, i64 24)
  store %reflect.Value zeroinitializer, ptr %366, align 8
  call void @runtime.TouchConservativeSlot(ptr %366, i64 24)
  store i64 0, ptr %51, align 4
  call void @runtime.TouchConservativeSlot(ptr %51, i64 8)
  store ptr null, ptr %52, align 8
  call void @runtime.TouchConservativeSlot(ptr %52, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %367 = icmp eq ptr %41, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %367)
  %368 = load i64, ptr %41, align 4
  %369 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 5, i64 10)
  %370 = mul i64 %369, 24
  %371 = call i64 @runtime.AdvanceHiddenPointer(i64 %368, i64 %370)
  store i64 %371, ptr %53, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %54, i64 %371)
  %372 = icmp eq ptr %53, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %372)
  %373 = load i64, ptr %53, align 4
  %374 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %374)
  %375 = load %reflect.Value, ptr %1, align 8
  %376 = alloca %reflect.Value, align 8
  store %reflect.Value %375, ptr %376, align 8
  call void @runtime.StoreHiddenPointee(i64 %373, ptr %376, i64 24)
  store %reflect.Value zeroinitializer, ptr %376, align 8
  call void @runtime.TouchConservativeSlot(ptr %376, i64 24)
  store i64 0, ptr %53, align 4
  call void @runtime.TouchConservativeSlot(ptr %53, i64 8)
  store ptr null, ptr %54, align 8
  call void @runtime.TouchConservativeSlot(ptr %54, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %377 = icmp eq ptr %41, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %377)
  %378 = load i64, ptr %41, align 4
  %379 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 6, i64 10)
  %380 = mul i64 %379, 24
  %381 = call i64 @runtime.AdvanceHiddenPointer(i64 %378, i64 %380)
  store i64 %381, ptr %55, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %56, i64 %381)
  %382 = icmp eq ptr %55, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %382)
  %383 = load i64, ptr %55, align 4
  %384 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %384)
  %385 = load %reflect.Value, ptr %1, align 8
  %386 = alloca %reflect.Value, align 8
  store %reflect.Value %385, ptr %386, align 8
  call void @runtime.StoreHiddenPointee(i64 %383, ptr %386, i64 24)
  store %reflect.Value zeroinitializer, ptr %386, align 8
  call void @runtime.TouchConservativeSlot(ptr %386, i64 24)
  store i64 0, ptr %55, align 4
  call void @runtime.TouchConservativeSlot(ptr %55, i64 8)
  store ptr null, ptr %56, align 8
  call void @runtime.TouchConservativeSlot(ptr %56, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %387 = icmp eq ptr %41, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %387)
  %388 = load i64, ptr %41, align 4
  %389 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 7, i64 10)
  %390 = mul i64 %389, 24
  %391 = call i64 @runtime.AdvanceHiddenPointer(i64 %388, i64 %390)
  store i64 %391, ptr %57, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %58, i64 %391)
  %392 = icmp eq ptr %57, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %392)
  %393 = load i64, ptr %57, align 4
  %394 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %394)
  %395 = load %reflect.Value, ptr %1, align 8
  %396 = alloca %reflect.Value, align 8
  store %reflect.Value %395, ptr %396, align 8
  call void @runtime.StoreHiddenPointee(i64 %393, ptr %396, i64 24)
  store %reflect.Value zeroinitializer, ptr %396, align 8
  call void @runtime.TouchConservativeSlot(ptr %396, i64 24)
  store i64 0, ptr %57, align 4
  call void @runtime.TouchConservativeSlot(ptr %57, i64 8)
  store ptr null, ptr %58, align 8
  call void @runtime.TouchConservativeSlot(ptr %58, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %397 = icmp eq ptr %41, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %397)
  %398 = load i64, ptr %41, align 4
  %399 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 8, i64 10)
  %400 = mul i64 %399, 24
  %401 = call i64 @runtime.AdvanceHiddenPointer(i64 %398, i64 %400)
  store i64 %401, ptr %59, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %60, i64 %401)
  %402 = icmp eq ptr %59, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %402)
  %403 = load i64, ptr %59, align 4
  %404 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %404)
  %405 = load %reflect.Value, ptr %1, align 8
  %406 = alloca %reflect.Value, align 8
  store %reflect.Value %405, ptr %406, align 8
  call void @runtime.StoreHiddenPointee(i64 %403, ptr %406, i64 24)
  store %reflect.Value zeroinitializer, ptr %406, align 8
  call void @runtime.TouchConservativeSlot(ptr %406, i64 24)
  store %reflect.Value zeroinitializer, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 24)
  store i64 0, ptr %59, align 4
  call void @runtime.TouchConservativeSlot(ptr %59, i64 8)
  store ptr null, ptr %60, align 8
  call void @runtime.TouchConservativeSlot(ptr %60, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %407 = icmp eq ptr %41, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %407)
  %408 = load i64, ptr %41, align 4
  %409 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 9, i64 10)
  %410 = mul i64 %409, 24
  %411 = call i64 @runtime.AdvanceHiddenPointer(i64 %408, i64 %410)
  store i64 %411, ptr %61, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %62, i64 %411)
  %412 = call i64 @runtime.AllocZHidden(i64 48)
  store i64 %412, ptr %63, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %64, i64 %412)
  %413 = icmp eq ptr %63, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %413)
  %414 = load i64, ptr %63, align 4
  %415 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 3)
  %416 = mul i64 %415, 16
  %417 = call i64 @runtime.AdvanceHiddenPointer(i64 %414, i64 %416)
  store i64 %417, ptr %65, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %66, i64 %417)
  %418 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %418, align 4
  %419 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %418, 1
  %420 = icmp eq ptr %65, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %420)
  %421 = load i64, ptr %65, align 4
  %422 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %419, ptr %422, align 8
  call void @runtime.StoreHiddenPointee(i64 %421, ptr %422, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %422, align 8
  call void @runtime.TouchConservativeSlot(ptr %422, i64 16)
  store i64 0, ptr %65, align 4
  call void @runtime.TouchConservativeSlot(ptr %65, i64 8)
  store ptr null, ptr %66, align 8
  call void @runtime.TouchConservativeSlot(ptr %66, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %423 = icmp eq ptr %63, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %423)
  %424 = load i64, ptr %63, align 4
  %425 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 3)
  %426 = mul i64 %425, 16
  %427 = call i64 @runtime.AdvanceHiddenPointer(i64 %424, i64 %426)
  store i64 %427, ptr %67, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %68, i64 %427)
  %428 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %428, align 4
  %429 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %428, 1
  %430 = icmp eq ptr %67, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %430)
  %431 = load i64, ptr %67, align 4
  %432 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %429, ptr %432, align 8
  call void @runtime.StoreHiddenPointee(i64 %431, ptr %432, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %432, align 8
  call void @runtime.TouchConservativeSlot(ptr %432, i64 16)
  store i64 0, ptr %67, align 4
  call void @runtime.TouchConservativeSlot(ptr %67, i64 8)
  store ptr null, ptr %68, align 8
  call void @runtime.TouchConservativeSlot(ptr %68, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %433 = icmp eq ptr %63, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %433)
  %434 = load i64, ptr %63, align 4
  %435 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 3)
  %436 = mul i64 %435, 16
  %437 = call i64 @runtime.AdvanceHiddenPointer(i64 %434, i64 %436)
  store i64 %437, ptr %69, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %70, i64 %437)
  %438 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 3, ptr %438, align 4
  %439 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %438, 1
  %440 = icmp eq ptr %69, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %440)
  %441 = load i64, ptr %69, align 4
  %442 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %439, ptr %442, align 8
  call void @runtime.StoreHiddenPointee(i64 %441, ptr %442, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %442, align 8
  call void @runtime.TouchConservativeSlot(ptr %442, i64 16)
  store i64 0, ptr %69, align 4
  call void @runtime.TouchConservativeSlot(ptr %69, i64 8)
  store ptr null, ptr %70, align 8
  call void @runtime.TouchConservativeSlot(ptr %70, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %443 = icmp eq ptr %63, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %443)
  %444 = load i64, ptr %63, align 4
  %445 = and i64 %444, 72057594037927935
  %446 = lshr i64 %445, 17
  %447 = select i1 false, i64 0, i64 %446
  %448 = shl i64 %445, 39
  %449 = select i1 false, i64 0, i64 %448
  %450 = or i64 %447, %449
  %451 = and i64 %450, 72057594037927935
  %452 = xor i64 %451, 25399393228665167
  %453 = inttoptr i64 %452 to ptr
  %454 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %453, 0
  %455 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %454, i64 3, 1
  %456 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %455, i64 3, 2
  %457 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %456, ptr %457, align 8
  %458 = icmp eq ptr %457, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %458)
  %459 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %457, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %459, ptr %72, align 8
  %460 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %459, 0
  %461 = ptrtoint ptr %460 to i64
  %462 = and i64 %461, 72057594037927935
  %463 = xor i64 %462, 25399393228665167
  %464 = shl i64 %463, 17
  %465 = select i1 false, i64 0, i64 %464
  %466 = lshr i64 %463, 39
  %467 = select i1 false, i64 0, i64 %466
  %468 = or i64 %465, %467
  %469 = and i64 %468, 72057594037927935
  %470 = or i64 %469, -6557241057451442176
  %471 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %459, 1
  %472 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %459, 2
  %473 = insertvalue { i64, i64, i64 } undef, i64 %470, 0
  %474 = insertvalue { i64, i64, i64 } %473, i64 %471, 1
  %475 = insertvalue { i64, i64, i64 } %474, i64 %472, 2
  store { i64, i64, i64 } %475, ptr %71, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %457, align 8
  call void @runtime.TouchConservativeSlot(ptr %457, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %476 = icmp eq ptr %72, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %476)
  %477 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %72, align 8
  %478 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %477, ptr %478, align 8
  %479 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"[]_llgo_any", ptr undef }, ptr %478, 1
  %480 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store i64 0, ptr %63, align 4
  call void @runtime.TouchConservativeSlot(ptr %63, i64 8)
  store ptr null, ptr %64, align 8
  call void @runtime.TouchConservativeSlot(ptr %64, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %71, align 4
  call void @runtime.TouchConservativeSlot(ptr %71, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %72, align 8
  call void @runtime.TouchConservativeSlot(ptr %72, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %481 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %479)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %480)
  store %reflect.Value %481, ptr %73, align 8
  %482 = icmp eq ptr %61, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %482)
  %483 = load i64, ptr %61, align 4
  %484 = icmp eq ptr %73, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %484)
  %485 = load %reflect.Value, ptr %73, align 8
  %486 = alloca %reflect.Value, align 8
  store %reflect.Value %485, ptr %486, align 8
  call void @runtime.StoreHiddenPointee(i64 %483, ptr %486, i64 24)
  store %reflect.Value zeroinitializer, ptr %486, align 8
  call void @runtime.TouchConservativeSlot(ptr %486, i64 24)
  store i64 0, ptr %61, align 4
  call void @runtime.TouchConservativeSlot(ptr %61, i64 8)
  store ptr null, ptr %62, align 8
  call void @runtime.TouchConservativeSlot(ptr %62, i64 8)
  store %reflect.Value zeroinitializer, ptr %73, align 8
  call void @runtime.TouchConservativeSlot(ptr %73, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %487 = icmp eq ptr %41, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %487)
  %488 = load i64, ptr %41, align 4
  %489 = and i64 %488, 72057594037927935
  %490 = lshr i64 %489, 17
  %491 = select i1 false, i64 0, i64 %490
  %492 = shl i64 %489, 39
  %493 = select i1 false, i64 0, i64 %492
  %494 = or i64 %491, %493
  %495 = and i64 %494, 72057594037927935
  %496 = xor i64 %495, 25399393228665167
  %497 = inttoptr i64 %496 to ptr
  %498 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %497, 0
  %499 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %498, i64 10, 1
  %500 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %499, i64 10, 2
  %501 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %500, ptr %501, align 8
  %502 = icmp eq ptr %501, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %502)
  %503 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %501, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %503, ptr %75, align 8
  %504 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %503, 0
  %505 = ptrtoint ptr %504 to i64
  %506 = and i64 %505, 72057594037927935
  %507 = xor i64 %506, 25399393228665167
  %508 = shl i64 %507, 17
  %509 = select i1 false, i64 0, i64 %508
  %510 = lshr i64 %507, 39
  %511 = select i1 false, i64 0, i64 %510
  %512 = or i64 %509, %511
  %513 = and i64 %512, 72057594037927935
  %514 = or i64 %513, -6557241057451442176
  %515 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %503, 1
  %516 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %503, 2
  %517 = insertvalue { i64, i64, i64 } undef, i64 %514, 0
  %518 = insertvalue { i64, i64, i64 } %517, i64 %515, 1
  %519 = insertvalue { i64, i64, i64 } %518, i64 %516, 2
  store { i64, i64, i64 } %519, ptr %74, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %501, align 8
  call void @runtime.TouchConservativeSlot(ptr %501, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %520 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %521 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %521)
  %522 = load %reflect.Value, ptr %0, align 8
  %523 = icmp eq ptr %75, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %523)
  %524 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %75, align 8
  store %reflect.Value zeroinitializer, ptr %0, align 8
  call void @runtime.TouchConservativeSlot(ptr %0, i64 24)
  store i64 0, ptr %41, align 4
  call void @runtime.TouchConservativeSlot(ptr %41, i64 8)
  store ptr null, ptr %42, align 8
  call void @runtime.TouchConservativeSlot(ptr %42, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %74, align 4
  call void @runtime.TouchConservativeSlot(ptr %74, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %75, align 8
  call void @runtime.TouchConservativeSlot(ptr %75, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %525 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.CallSlice(%reflect.Value %522, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %524)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %520)
  %526 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %525, ptr %526, align 8
  %527 = icmp eq ptr %526, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %527)
  %528 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %526, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %528, ptr %77, align 8
  %529 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %528, 0
  %530 = ptrtoint ptr %529 to i64
  %531 = and i64 %530, 72057594037927935
  %532 = xor i64 %531, 25399393228665167
  %533 = shl i64 %532, 17
  %534 = select i1 false, i64 0, i64 %533
  %535 = lshr i64 %532, 39
  %536 = select i1 false, i64 0, i64 %535
  %537 = or i64 %534, %536
  %538 = and i64 %537, 72057594037927935
  %539 = or i64 %538, -6557241057451442176
  %540 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %528, 1
  %541 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %528, 2
  %542 = insertvalue { i64, i64, i64 } undef, i64 %539, 0
  %543 = insertvalue { i64, i64, i64 } %542, i64 %540, 1
  %544 = insertvalue { i64, i64, i64 } %543, i64 %541, 2
  store { i64, i64, i64 } %544, ptr %76, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %526, align 8
  call void @runtime.TouchConservativeSlot(ptr %526, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %545 = icmp eq ptr %76, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %545)
  %546 = load { i64, i64, i64 }, ptr %76, align 4
  %547 = extractvalue { i64, i64, i64 } %546, 0
  %548 = extractvalue { i64, i64, i64 } %546, 1
  %549 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 %548)
  %550 = mul i64 %549, 24
  %551 = call i64 @runtime.AdvanceHiddenPointer(i64 %547, i64 %550)
  store i64 %551, ptr %78, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %79, i64 %551)
  %552 = icmp eq ptr %78, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %552)
  %553 = load i64, ptr %78, align 4
  %554 = alloca %reflect.Value, align 8
  call void @runtime.LoadHiddenPointee(ptr %554, i64 %553, i64 24)
  %555 = icmp eq ptr %554, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %555)
  %556 = load %reflect.Value, ptr %554, align 8
  store %reflect.Value zeroinitializer, ptr %554, align 8
  store %reflect.Value %556, ptr %80, align 8
  store i64 0, ptr %78, align 4
  call void @runtime.TouchConservativeSlot(ptr %78, i64 8)
  store ptr null, ptr %79, align 8
  call void @runtime.TouchConservativeSlot(ptr %79, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %557 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %558 = icmp eq ptr %80, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %558)
  %559 = load %reflect.Value, ptr %80, align 8
  store %reflect.Value zeroinitializer, ptr %80, align 8
  call void @runtime.TouchConservativeSlot(ptr %80, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %560 = call i64 @reflect.Value.Int(%reflect.Value %559)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %557)
  %561 = icmp eq ptr %76, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %561)
  %562 = load { i64, i64, i64 }, ptr %76, align 4
  %563 = extractvalue { i64, i64, i64 } %562, 0
  %564 = extractvalue { i64, i64, i64 } %562, 1
  %565 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 %564)
  %566 = mul i64 %565, 24
  %567 = call i64 @runtime.AdvanceHiddenPointer(i64 %563, i64 %566)
  store i64 %567, ptr %81, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %82, i64 %567)
  %568 = icmp eq ptr %81, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %568)
  %569 = load i64, ptr %81, align 4
  %570 = alloca %reflect.Value, align 8
  call void @runtime.LoadHiddenPointee(ptr %570, i64 %569, i64 24)
  %571 = icmp eq ptr %570, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %571)
  %572 = load %reflect.Value, ptr %570, align 8
  store %reflect.Value zeroinitializer, ptr %570, align 8
  store %reflect.Value %572, ptr %83, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %76, align 4
  call void @runtime.TouchConservativeSlot(ptr %76, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %77, align 8
  call void @runtime.TouchConservativeSlot(ptr %77, i64 24)
  store i64 0, ptr %81, align 4
  call void @runtime.TouchConservativeSlot(ptr %81, i64 8)
  store ptr null, ptr %82, align 8
  call void @runtime.TouchConservativeSlot(ptr %82, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %573 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %574 = icmp eq ptr %83, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %574)
  %575 = load %reflect.Value, ptr %83, align 8
  store %reflect.Value zeroinitializer, ptr %83, align 8
  call void @runtime.TouchConservativeSlot(ptr %83, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %576 = call i64 @reflect.Value.Int(%reflect.Value %575)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %573)
  %577 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %560)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %576)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %577)
  ret void
}

define { i64, i64 } @"github.com/goplus/llgo/cl/_testgo/reflect.demo"(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9) {
_llgo_0:
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  store ptr null, ptr %11, align 8
  %12 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %14 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %13)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_4, %_llgo_0
  %15 = phi i64 [ 0, %_llgo_0 ], [ %54, %_llgo_4 ]
  %16 = phi i64 [ -1, %_llgo_0 ], [ %17, %_llgo_4 ]
  %17 = add i64 %16, 1
  %18 = icmp slt i64 %17, %14
  br i1 %18, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %19 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, 0
  %20 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, 1
  %21 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 %17, i64 %20)
  %22 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %19, i64 %21
  %23 = ptrtoint ptr %22 to i64
  %24 = and i64 %23, 72057594037927935
  %25 = xor i64 %24, 25399393228665167
  %26 = shl i64 %25, 17
  %27 = select i1 false, i64 0, i64 %26
  %28 = lshr i64 %25, 39
  %29 = select i1 false, i64 0, i64 %28
  %30 = or i64 %27, %29
  %31 = and i64 %30, 72057594037927935
  %32 = or i64 %31, -6557241057451442176
  store i64 %32, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %32)
  call void @runtime.ClobberPointerRegs()
  %33 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %33)
  %34 = load i64, ptr %10, align 4
  %35 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  call void @runtime.LoadHiddenPointee(ptr %35, i64 %34, i64 16)
  %36 = icmp eq ptr %35, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %36)
  %37 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %35, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %35, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %37, ptr %12, align 8
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %38 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %38)
  %39 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %12, align 8
  %40 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %39, 0
  %41 = icmp eq ptr %40, @_llgo_int
  br i1 %41, label %_llgo_4, label %_llgo_5

_llgo_3:                                          ; preds = %_llgo_1
  %42 = add i64 %0, %1
  %43 = add i64 %42, %2
  %44 = add i64 %43, %3
  %45 = add i64 %44, %4
  %46 = add i64 %45, %5
  %47 = add i64 %46, %6
  %48 = add i64 %47, %7
  %49 = add i64 %48, %8
  %50 = insertvalue { i64, i64 } undef, i64 %49, 0
  %51 = insertvalue { i64, i64 } %50, i64 %15, 1
  ret { i64, i64 } %51

_llgo_4:                                          ; preds = %_llgo_2
  %52 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %39, 1
  %53 = load i64, ptr %52, align 4
  %54 = add i64 %15, %53
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %12, align 8
  call void @runtime.TouchConservativeSlot(ptr %12, i64 16)
  call void @runtime.ClobberPointerRegs()
  br label %_llgo_1

_llgo_5:                                          ; preds = %_llgo_2
  %55 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakeTypeAssertionError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr %40, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %55)
  unreachable

_llgo_6:                                          ; No predecessors!
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testgo/reflect.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
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
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/reflect.callSlice"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %0)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/reflect.callFunc"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/reflect.callClosure"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %2)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/reflect.callMethod"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/reflect.callIMethod"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %4)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/reflect.mapDemo1"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %5)
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/reflect.mapDemo2"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %6)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reflect.mapDemo1"() {
_llgo_0:
  %0 = alloca ptr, align 8
  %1 = alloca %reflect.Value, align 8
  %2 = alloca %reflect.Value, align 8
  %3 = alloca %reflect.Value, align 8
  %4 = alloca { i64, i64 }, align 8
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %5, align 8
  %6 = alloca { i64, i64, i64 }, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %7, align 8
  %8 = alloca %reflect.Value, align 8
  %9 = alloca %reflect.Value, align 8
  %10 = alloca %reflect.Value, align 8
  %11 = alloca %reflect.Value, align 8
  %12 = alloca { i64, i64 }, align 8
  %13 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %13, align 8
  %14 = alloca %reflect.Value, align 8
  %15 = alloca %reflect.Value, align 8
  %16 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %17 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %18 = alloca %reflect.Value, align 8
  %19 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %20 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %21 = alloca %reflect.Value, align 8
  %22 = alloca %reflect.Value, align 8
  %23 = alloca { i64, i64 }, align 8
  %24 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %24, align 8
  %25 = alloca %reflect.Value, align 8
  %26 = alloca { i64, i64 }, align 8
  %27 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %27, align 8
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_int]_llgo_string", i64 2)
  store ptr %28, ptr %0, align 8
  %29 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %29)
  %30 = load ptr, ptr %0, align 8
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %31, align 4
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_int]_llgo_string", ptr %30, ptr %31)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 5 }, ptr %32, align 8
  call void @llvm.memset(ptr %31, i8 0, i64 8, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %31, i64 8)
  %33 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %33)
  %34 = load ptr, ptr %0, align 8
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %35, align 4
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_int]_llgo_string", ptr %34, ptr %35)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 5 }, ptr %36, align 8
  call void @llvm.memset(ptr %35, i8 0, i64 8, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %35, i64 8)
  %37 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = load ptr, ptr %0, align 8
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"map[_llgo_int]_llgo_string", ptr undef }, ptr %38, 1
  %40 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store ptr null, ptr %0, align 8
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %41 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %39)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %40)
  store %reflect.Value %41, ptr %1, align 8
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %43 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = load %reflect.Value, ptr %1, align 8
  %45 = call i64 @reflect.Value.Len(%reflect.Value %44)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %42)
  %46 = icmp ne i64 %45, 2
  br i1 %46, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3, %_llgo_0
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr %47, align 8
  %48 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %47, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %48)
  unreachable

_llgo_2:                                          ; preds = %_llgo_3
  %49 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %49, align 4
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %49, 1
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %52 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %50)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %51)
  store %reflect.Value %52, ptr %2, align 8
  %53 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %54 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %54)
  %55 = load %reflect.Value, ptr %1, align 8
  %56 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %56)
  %57 = load %reflect.Value, ptr %2, align 8
  store %reflect.Value zeroinitializer, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %58 = call %reflect.Value @reflect.Value.MapIndex(%reflect.Value %55, %reflect.Value %57)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %53)
  store %reflect.Value %58, ptr %3, align 8
  %59 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %60 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %60)
  %61 = load %reflect.Value, ptr %3, align 8
  store %reflect.Value zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %62 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %61)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %59)
  %63 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %62, ptr %63, align 8
  %64 = icmp eq ptr %63, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %64)
  %65 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %63, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %65, ptr %5, align 8
  %66 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %65, 0
  %67 = ptrtoint ptr %66 to i64
  %68 = and i64 %67, 72057594037927935
  %69 = xor i64 %68, 25399393228665167
  %70 = shl i64 %69, 17
  %71 = select i1 false, i64 0, i64 %70
  %72 = lshr i64 %69, 39
  %73 = select i1 false, i64 0, i64 %72
  %74 = or i64 %71, %73
  %75 = and i64 %74, 72057594037927935
  %76 = or i64 %75, -6557241057451442176
  %77 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %65, 1
  %78 = insertvalue { i64, i64 } undef, i64 %76, 0
  %79 = insertvalue { i64, i64 } %78, i64 %77, 1
  store { i64, i64 } %79, ptr %4, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %63, align 8
  call void @runtime.TouchConservativeSlot(ptr %63, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %80 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %80)
  %81 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %5, align 8
  %82 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %81, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 5 })
  %83 = xor i1 %82, true
  store { i64, i64 } zeroinitializer, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  br i1 %83, label %_llgo_4, label %_llgo_5

_llgo_3:                                          ; preds = %_llgo_0
  %84 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %85 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %85)
  %86 = load %reflect.Value, ptr %1, align 8
  %87 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.MapKeys(%reflect.Value %86)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %84)
  %88 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %87, ptr %88, align 8
  %89 = icmp eq ptr %88, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %89)
  %90 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %88, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %90, ptr %7, align 8
  %91 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %90, 0
  %92 = ptrtoint ptr %91 to i64
  %93 = and i64 %92, 72057594037927935
  %94 = xor i64 %93, 25399393228665167
  %95 = shl i64 %94, 17
  %96 = select i1 false, i64 0, i64 %95
  %97 = lshr i64 %94, 39
  %98 = select i1 false, i64 0, i64 %97
  %99 = or i64 %96, %98
  %100 = and i64 %99, 72057594037927935
  %101 = or i64 %100, -6557241057451442176
  %102 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %90, 1
  %103 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %90, 2
  %104 = insertvalue { i64, i64, i64 } undef, i64 %101, 0
  %105 = insertvalue { i64, i64, i64 } %104, i64 %102, 1
  %106 = insertvalue { i64, i64, i64 } %105, i64 %103, 2
  store { i64, i64, i64 } %106, ptr %6, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %88, align 8
  call void @runtime.TouchConservativeSlot(ptr %88, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %107 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %108 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %108)
  %109 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %7, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %110 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %109, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %107)
  %111 = icmp ne i64 %110, 2
  br i1 %111, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_2
  %112 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 14 }, ptr %112, align 8
  %113 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %112, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %113)
  unreachable

_llgo_5:                                          ; preds = %_llgo_2
  %114 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %114, align 4
  %115 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %114, 1
  %116 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %117 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %115)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %116)
  store %reflect.Value %117, ptr %8, align 8
  %118 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr %118, align 8
  %119 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %118, 1
  %120 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %121 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %119)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %120)
  store %reflect.Value %121, ptr %9, align 8
  %122 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %123 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %123)
  %124 = load %reflect.Value, ptr %1, align 8
  %125 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %125)
  %126 = load %reflect.Value, ptr %8, align 8
  %127 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %127)
  %128 = load %reflect.Value, ptr %9, align 8
  store %reflect.Value zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 24)
  store %reflect.Value zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  call void @reflect.Value.SetMapIndex(%reflect.Value %124, %reflect.Value %126, %reflect.Value %128)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %122)
  %129 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %129, align 4
  %130 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %129, 1
  %131 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %132 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %130)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %131)
  store %reflect.Value %132, ptr %10, align 8
  %133 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %134 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %134)
  %135 = load %reflect.Value, ptr %1, align 8
  %136 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %136)
  %137 = load %reflect.Value, ptr %10, align 8
  store %reflect.Value zeroinitializer, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %138 = call %reflect.Value @reflect.Value.MapIndex(%reflect.Value %135, %reflect.Value %137)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %133)
  store %reflect.Value %138, ptr %11, align 8
  %139 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %140 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %140)
  %141 = load %reflect.Value, ptr %11, align 8
  store %reflect.Value zeroinitializer, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %142 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %141)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %139)
  %143 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %142, ptr %143, align 8
  %144 = icmp eq ptr %143, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %144)
  %145 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %143, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %145, ptr %13, align 8
  %146 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %145, 0
  %147 = ptrtoint ptr %146 to i64
  %148 = and i64 %147, 72057594037927935
  %149 = xor i64 %148, 25399393228665167
  %150 = shl i64 %149, 17
  %151 = select i1 false, i64 0, i64 %150
  %152 = lshr i64 %149, 39
  %153 = select i1 false, i64 0, i64 %152
  %154 = or i64 %151, %153
  %155 = and i64 %154, 72057594037927935
  %156 = or i64 %155, -6557241057451442176
  %157 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %145, 1
  %158 = insertvalue { i64, i64 } undef, i64 %156, 0
  %159 = insertvalue { i64, i64 } %158, i64 %157, 1
  store { i64, i64 } %159, ptr %12, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %143, align 8
  call void @runtime.TouchConservativeSlot(ptr %143, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %160 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %160)
  %161 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %13, align 8
  %162 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %161, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 })
  %163 = xor i1 %162, true
  store { i64, i64 } zeroinitializer, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  br i1 %163, label %_llgo_6, label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_5
  %164 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 14 }, ptr %164, align 8
  %165 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %164, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %165)
  unreachable

_llgo_7:                                          ; preds = %_llgo_5
  %166 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 0, ptr %166, align 4
  %167 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %166, 1
  %168 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %169 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %167)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %168)
  store %reflect.Value %169, ptr %14, align 8
  %170 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %171 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %171)
  %172 = load %reflect.Value, ptr %1, align 8
  %173 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %173)
  %174 = load %reflect.Value, ptr %14, align 8
  store %reflect.Value zeroinitializer, ptr %14, align 8
  call void @runtime.TouchConservativeSlot(ptr %14, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %175 = call %reflect.Value @reflect.Value.MapIndex(%reflect.Value %172, %reflect.Value %174)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %170)
  store %reflect.Value %175, ptr %15, align 8
  %176 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %177 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %177)
  %178 = load %reflect.Value, ptr %15, align 8
  store %reflect.Value zeroinitializer, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %179 = call i1 @reflect.Value.IsValid(%reflect.Value %178)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %176)
  br i1 %179, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  %180 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 12 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %180)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_7
  %181 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %182 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %182)
  %183 = load %reflect.Value, ptr %1, align 8
  %184 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %183)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %181)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %184, ptr %16, align 8
  %185 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %185)
  %186 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %16, align 8
  %187 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %186)
  %188 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %186, 0
  %189 = getelementptr ptr, ptr %188, i64 20
  %190 = load ptr, ptr %189, align 8
  %191 = insertvalue { ptr, ptr } undef, ptr %190, 0
  %192 = insertvalue { ptr, ptr } %191, ptr %187, 1
  %193 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %16, align 8
  call void @runtime.TouchConservativeSlot(ptr %16, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %194 = extractvalue { ptr, ptr } %192, 1
  %195 = extractvalue { ptr, ptr } %192, 0
  %196 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" %195(ptr %194)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %193)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %196, ptr %17, align 8
  %197 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %198 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %198)
  %199 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %17, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %200 = call %reflect.Value @reflect.New(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %199)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %197)
  store %reflect.Value %200, ptr %18, align 8
  %201 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %202 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %202)
  %203 = load %reflect.Value, ptr %18, align 8
  store %reflect.Value zeroinitializer, ptr %18, align 8
  call void @runtime.TouchConservativeSlot(ptr %18, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %204 = call %reflect.Value @reflect.Value.Elem(%reflect.Value %203)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %201)
  %205 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %206 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %206)
  %207 = load %reflect.Value, ptr %1, align 8
  %208 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %207)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %205)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %208, ptr %19, align 8
  %209 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %209)
  %210 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %19, align 8
  %211 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %210)
  %212 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %210, 0
  %213 = getelementptr ptr, ptr %212, i64 11
  %214 = load ptr, ptr %213, align 8
  %215 = insertvalue { ptr, ptr } undef, ptr %214, 0
  %216 = insertvalue { ptr, ptr } %215, ptr %211, 1
  %217 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %19, align 8
  call void @runtime.TouchConservativeSlot(ptr %19, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %218 = extractvalue { ptr, ptr } %216, 1
  %219 = extractvalue { ptr, ptr } %216, 0
  %220 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" %219(ptr %218)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %217)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %220, ptr %20, align 8
  %221 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %222 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %222)
  %223 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %20, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %20, align 8
  call void @runtime.TouchConservativeSlot(ptr %20, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %224 = call %reflect.Value @reflect.New(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %223)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %221)
  store %reflect.Value %224, ptr %21, align 8
  %225 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %226 = icmp eq ptr %21, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %226)
  %227 = load %reflect.Value, ptr %21, align 8
  store %reflect.Value zeroinitializer, ptr %21, align 8
  call void @runtime.TouchConservativeSlot(ptr %21, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %228 = call %reflect.Value @reflect.Value.Elem(%reflect.Value %227)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %225)
  %229 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %230 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %230)
  %231 = load %reflect.Value, ptr %1, align 8
  store %reflect.Value zeroinitializer, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %232 = call ptr @reflect.Value.MapRange(%reflect.Value %231)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %229)
  br label %_llgo_12

_llgo_10:                                         ; preds = %_llgo_12
  %233 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @reflect.Value.SetIterKey(%reflect.Value %204, ptr %232)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %233)
  %234 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @reflect.Value.SetIterValue(%reflect.Value %228, ptr %232)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %234)
  %235 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %236 = call i64 @reflect.Value.Int(%reflect.Value %204)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %235)
  %237 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %238 = call %reflect.Value @"reflect.(*MapIter).Key"(ptr %232)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %237)
  store %reflect.Value %238, ptr %22, align 8
  %239 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %240 = icmp eq ptr %22, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %240)
  %241 = load %reflect.Value, ptr %22, align 8
  store %reflect.Value zeroinitializer, ptr %22, align 8
  call void @runtime.TouchConservativeSlot(ptr %22, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %242 = call i64 @reflect.Value.Int(%reflect.Value %241)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %239)
  %243 = icmp ne i64 %236, %242
  br i1 %243, label %_llgo_13, label %_llgo_14

_llgo_11:                                         ; preds = %_llgo_12
  ret void

_llgo_12:                                         ; preds = %_llgo_14, %_llgo_9
  %244 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %245 = call i1 @"reflect.(*MapIter).Next"(ptr %232)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %244)
  br i1 %245, label %_llgo_10, label %_llgo_11

_llgo_13:                                         ; preds = %_llgo_14, %_llgo_10
  %246 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr %246, align 8
  %247 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %246, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %247)
  unreachable

_llgo_14:                                         ; preds = %_llgo_10
  %248 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %249 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %228)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %248)
  %250 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %249, ptr %250, align 8
  %251 = icmp eq ptr %250, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %251)
  %252 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %250, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %252, ptr %24, align 8
  %253 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %252, 0
  %254 = ptrtoint ptr %253 to i64
  %255 = and i64 %254, 72057594037927935
  %256 = xor i64 %255, 25399393228665167
  %257 = shl i64 %256, 17
  %258 = select i1 false, i64 0, i64 %257
  %259 = lshr i64 %256, 39
  %260 = select i1 false, i64 0, i64 %259
  %261 = or i64 %258, %260
  %262 = and i64 %261, 72057594037927935
  %263 = or i64 %262, -6557241057451442176
  %264 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %252, 1
  %265 = insertvalue { i64, i64 } undef, i64 %263, 0
  %266 = insertvalue { i64, i64 } %265, i64 %264, 1
  store { i64, i64 } %266, ptr %23, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %250, align 8
  call void @runtime.TouchConservativeSlot(ptr %250, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %267 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %268 = call %reflect.Value @"reflect.(*MapIter).Value"(ptr %232)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %267)
  store %reflect.Value %268, ptr %25, align 8
  %269 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %270 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %270)
  %271 = load %reflect.Value, ptr %25, align 8
  store %reflect.Value zeroinitializer, ptr %25, align 8
  call void @runtime.TouchConservativeSlot(ptr %25, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %272 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %271)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %269)
  %273 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %272, ptr %273, align 8
  %274 = icmp eq ptr %273, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %274)
  %275 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %273, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %275, ptr %27, align 8
  %276 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %275, 0
  %277 = ptrtoint ptr %276 to i64
  %278 = and i64 %277, 72057594037927935
  %279 = xor i64 %278, 25399393228665167
  %280 = shl i64 %279, 17
  %281 = select i1 false, i64 0, i64 %280
  %282 = lshr i64 %279, 39
  %283 = select i1 false, i64 0, i64 %282
  %284 = or i64 %281, %283
  %285 = and i64 %284, 72057594037927935
  %286 = or i64 %285, -6557241057451442176
  %287 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %275, 1
  %288 = insertvalue { i64, i64 } undef, i64 %286, 0
  %289 = insertvalue { i64, i64 } %288, i64 %287, 1
  store { i64, i64 } %289, ptr %26, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %273, align 8
  call void @runtime.TouchConservativeSlot(ptr %273, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %290 = icmp eq ptr %24, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %290)
  %291 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %24, align 8
  %292 = icmp eq ptr %27, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %292)
  %293 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %27, align 8
  %294 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %291, %"github.com/goplus/llgo/runtime/internal/runtime.String" %293)
  %295 = xor i1 %294, true
  store { i64, i64 } zeroinitializer, ptr %23, align 4
  call void @runtime.TouchConservativeSlot(ptr %23, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %24, align 8
  call void @runtime.TouchConservativeSlot(ptr %24, i64 16)
  store { i64, i64 } zeroinitializer, ptr %26, align 4
  call void @runtime.TouchConservativeSlot(ptr %26, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %27, align 8
  call void @runtime.TouchConservativeSlot(ptr %27, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  br i1 %295, label %_llgo_13, label %_llgo_12

_llgo_15:                                         ; No predecessors!
  unreachable

_llgo_16:                                         ; No predecessors!
  unreachable

_llgo_17:                                         ; No predecessors!
  unreachable

_llgo_18:                                         ; No predecessors!
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testgo/reflect.mapDemo2"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %3 = alloca %reflect.Value, align 8
  %4 = alloca %reflect.Value, align 8
  %5 = alloca %reflect.Value, align 8
  %6 = alloca %reflect.Value, align 8
  %7 = alloca %reflect.Value, align 8
  %8 = alloca %reflect.Value, align 8
  %9 = alloca %reflect.Value, align 8
  %10 = alloca { i64, i64 }, align 8
  %11 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %11, align 8
  %12 = alloca { i64, i64, i64 }, align 8
  %13 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %13, align 8
  %14 = alloca %reflect.Value, align 8
  %15 = alloca %reflect.Value, align 8
  %16 = alloca %reflect.Value, align 8
  %17 = alloca %reflect.Value, align 8
  %18 = alloca { i64, i64 }, align 8
  %19 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %19, align 8
  %20 = alloca %reflect.Value, align 8
  %21 = alloca %reflect.Value, align 8
  %22 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %23 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %24 = alloca %reflect.Value, align 8
  %25 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %26 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %27 = alloca %reflect.Value, align 8
  %28 = alloca %reflect.Value, align 8
  %29 = alloca { i64, i64 }, align 8
  %30 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %30, align 8
  %31 = alloca %reflect.Value, align 8
  %32 = alloca { i64, i64 }, align 8
  %33 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %33, align 8
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 0, ptr %34, align 4
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %34, 1
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %37 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.TypeOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %35)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %36)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %37, ptr %0, align 8
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %38, align 8
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %38, 1
  %40 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %41 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.TypeOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %39)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %40)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %41, ptr %1, align 8
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %43 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %0, align 8
  %45 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %1, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %0, align 8
  call void @runtime.TouchConservativeSlot(ptr %0, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %47 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.MapOf(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %44, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %46)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %42)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %47, ptr %2, align 8
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %49 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %49)
  %50 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %51 = call %reflect.Value @reflect.MakeMap(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %50)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %48)
  store %reflect.Value %51, ptr %3, align 8
  %52 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %52, align 4
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %52, 1
  %54 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %55 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %53)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %54)
  store %reflect.Value %55, ptr %4, align 8
  %56 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 5 }, ptr %56, align 8
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %56, 1
  %58 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %59 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %57)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %58)
  store %reflect.Value %59, ptr %5, align 8
  %60 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %61 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %61)
  %62 = load %reflect.Value, ptr %3, align 8
  %63 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %63)
  %64 = load %reflect.Value, ptr %4, align 8
  %65 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %65)
  %66 = load %reflect.Value, ptr %5, align 8
  store %reflect.Value zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 24)
  store %reflect.Value zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  call void @reflect.Value.SetMapIndex(%reflect.Value %62, %reflect.Value %64, %reflect.Value %66)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %60)
  %67 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %67, align 4
  %68 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %67, 1
  %69 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %70 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %68)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %69)
  store %reflect.Value %70, ptr %6, align 8
  %71 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 5 }, ptr %71, align 8
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %71, 1
  %73 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %74 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %72)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %73)
  store %reflect.Value %74, ptr %7, align 8
  %75 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %76 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %76)
  %77 = load %reflect.Value, ptr %3, align 8
  %78 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %78)
  %79 = load %reflect.Value, ptr %6, align 8
  %80 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %80)
  %81 = load %reflect.Value, ptr %7, align 8
  store %reflect.Value zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  store %reflect.Value zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  call void @reflect.Value.SetMapIndex(%reflect.Value %77, %reflect.Value %79, %reflect.Value %81)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %75)
  %82 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %83 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %83)
  %84 = load %reflect.Value, ptr %3, align 8
  %85 = call i64 @reflect.Value.Len(%reflect.Value %84)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %82)
  %86 = icmp ne i64 %85, 2
  br i1 %86, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3, %_llgo_0
  %87 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr %87, align 8
  %88 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %87, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %88)
  unreachable

_llgo_2:                                          ; preds = %_llgo_3
  %89 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %89, align 4
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %89, 1
  %91 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %92 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %90)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %91)
  store %reflect.Value %92, ptr %8, align 8
  %93 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %94 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %94)
  %95 = load %reflect.Value, ptr %3, align 8
  %96 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %96)
  %97 = load %reflect.Value, ptr %8, align 8
  store %reflect.Value zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %98 = call %reflect.Value @reflect.Value.MapIndex(%reflect.Value %95, %reflect.Value %97)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %93)
  store %reflect.Value %98, ptr %9, align 8
  %99 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %100 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %100)
  %101 = load %reflect.Value, ptr %9, align 8
  store %reflect.Value zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %102 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %101)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %99)
  %103 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %102, ptr %103, align 8
  %104 = icmp eq ptr %103, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %104)
  %105 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %103, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %105, ptr %11, align 8
  %106 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %105, 0
  %107 = ptrtoint ptr %106 to i64
  %108 = and i64 %107, 72057594037927935
  %109 = xor i64 %108, 25399393228665167
  %110 = shl i64 %109, 17
  %111 = select i1 false, i64 0, i64 %110
  %112 = lshr i64 %109, 39
  %113 = select i1 false, i64 0, i64 %112
  %114 = or i64 %111, %113
  %115 = and i64 %114, 72057594037927935
  %116 = or i64 %115, -6557241057451442176
  %117 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %105, 1
  %118 = insertvalue { i64, i64 } undef, i64 %116, 0
  %119 = insertvalue { i64, i64 } %118, i64 %117, 1
  store { i64, i64 } %119, ptr %10, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %103, align 8
  call void @runtime.TouchConservativeSlot(ptr %103, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %120 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %120)
  %121 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %11, align 8
  %122 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %121, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 5 })
  %123 = xor i1 %122, true
  store { i64, i64 } zeroinitializer, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  br i1 %123, label %_llgo_4, label %_llgo_5

_llgo_3:                                          ; preds = %_llgo_0
  %124 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %125 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %125)
  %126 = load %reflect.Value, ptr %3, align 8
  %127 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.MapKeys(%reflect.Value %126)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %124)
  %128 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %127, ptr %128, align 8
  %129 = icmp eq ptr %128, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %129)
  %130 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %128, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %130, ptr %13, align 8
  %131 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %130, 0
  %132 = ptrtoint ptr %131 to i64
  %133 = and i64 %132, 72057594037927935
  %134 = xor i64 %133, 25399393228665167
  %135 = shl i64 %134, 17
  %136 = select i1 false, i64 0, i64 %135
  %137 = lshr i64 %134, 39
  %138 = select i1 false, i64 0, i64 %137
  %139 = or i64 %136, %138
  %140 = and i64 %139, 72057594037927935
  %141 = or i64 %140, -6557241057451442176
  %142 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %130, 1
  %143 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %130, 2
  %144 = insertvalue { i64, i64, i64 } undef, i64 %141, 0
  %145 = insertvalue { i64, i64, i64 } %144, i64 %142, 1
  %146 = insertvalue { i64, i64, i64 } %145, i64 %143, 2
  store { i64, i64, i64 } %146, ptr %12, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %128, align 8
  call void @runtime.TouchConservativeSlot(ptr %128, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %147 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %148 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %148)
  %149 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %13, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %150 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %149, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %147)
  %151 = icmp ne i64 %150, 2
  br i1 %151, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_2
  %152 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 14 }, ptr %152, align 8
  %153 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %152, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %153)
  unreachable

_llgo_5:                                          ; preds = %_llgo_2
  %154 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %154, align 4
  %155 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %154, 1
  %156 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %157 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %155)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %156)
  store %reflect.Value %157, ptr %14, align 8
  %158 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr %158, align 8
  %159 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %158, 1
  %160 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %161 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %159)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %160)
  store %reflect.Value %161, ptr %15, align 8
  %162 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %163 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %163)
  %164 = load %reflect.Value, ptr %3, align 8
  %165 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %165)
  %166 = load %reflect.Value, ptr %14, align 8
  %167 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %167)
  %168 = load %reflect.Value, ptr %15, align 8
  store %reflect.Value zeroinitializer, ptr %14, align 8
  call void @runtime.TouchConservativeSlot(ptr %14, i64 24)
  store %reflect.Value zeroinitializer, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  call void @reflect.Value.SetMapIndex(%reflect.Value %164, %reflect.Value %166, %reflect.Value %168)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %162)
  %169 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %169, align 4
  %170 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %169, 1
  %171 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %172 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %170)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %171)
  store %reflect.Value %172, ptr %16, align 8
  %173 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %174 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %174)
  %175 = load %reflect.Value, ptr %3, align 8
  %176 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %176)
  %177 = load %reflect.Value, ptr %16, align 8
  store %reflect.Value zeroinitializer, ptr %16, align 8
  call void @runtime.TouchConservativeSlot(ptr %16, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %178 = call %reflect.Value @reflect.Value.MapIndex(%reflect.Value %175, %reflect.Value %177)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %173)
  store %reflect.Value %178, ptr %17, align 8
  %179 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %180 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %180)
  %181 = load %reflect.Value, ptr %17, align 8
  store %reflect.Value zeroinitializer, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %182 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %181)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %179)
  %183 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %182, ptr %183, align 8
  %184 = icmp eq ptr %183, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %184)
  %185 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %183, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %185, ptr %19, align 8
  %186 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %185, 0
  %187 = ptrtoint ptr %186 to i64
  %188 = and i64 %187, 72057594037927935
  %189 = xor i64 %188, 25399393228665167
  %190 = shl i64 %189, 17
  %191 = select i1 false, i64 0, i64 %190
  %192 = lshr i64 %189, 39
  %193 = select i1 false, i64 0, i64 %192
  %194 = or i64 %191, %193
  %195 = and i64 %194, 72057594037927935
  %196 = or i64 %195, -6557241057451442176
  %197 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %185, 1
  %198 = insertvalue { i64, i64 } undef, i64 %196, 0
  %199 = insertvalue { i64, i64 } %198, i64 %197, 1
  store { i64, i64 } %199, ptr %18, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %183, align 8
  call void @runtime.TouchConservativeSlot(ptr %183, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %200 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %200)
  %201 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %19, align 8
  %202 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %201, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 })
  %203 = xor i1 %202, true
  store { i64, i64 } zeroinitializer, ptr %18, align 4
  call void @runtime.TouchConservativeSlot(ptr %18, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %19, align 8
  call void @runtime.TouchConservativeSlot(ptr %19, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  br i1 %203, label %_llgo_6, label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_5
  %204 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 14 }, ptr %204, align 8
  %205 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %204, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %205)
  unreachable

_llgo_7:                                          ; preds = %_llgo_5
  %206 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 0, ptr %206, align 4
  %207 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %206, 1
  %208 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %209 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %207)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %208)
  store %reflect.Value %209, ptr %20, align 8
  %210 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %211 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %211)
  %212 = load %reflect.Value, ptr %3, align 8
  %213 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %213)
  %214 = load %reflect.Value, ptr %20, align 8
  store %reflect.Value zeroinitializer, ptr %20, align 8
  call void @runtime.TouchConservativeSlot(ptr %20, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %215 = call %reflect.Value @reflect.Value.MapIndex(%reflect.Value %212, %reflect.Value %214)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %210)
  store %reflect.Value %215, ptr %21, align 8
  %216 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %217 = icmp eq ptr %21, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %217)
  %218 = load %reflect.Value, ptr %21, align 8
  store %reflect.Value zeroinitializer, ptr %21, align 8
  call void @runtime.TouchConservativeSlot(ptr %21, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %219 = call i1 @reflect.Value.IsValid(%reflect.Value %218)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %216)
  br i1 %219, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  %220 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 12 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %220)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_7
  %221 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %222 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %222)
  %223 = load %reflect.Value, ptr %3, align 8
  %224 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %223)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %221)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %224, ptr %22, align 8
  %225 = icmp eq ptr %22, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %225)
  %226 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %22, align 8
  %227 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %226)
  %228 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %226, 0
  %229 = getelementptr ptr, ptr %228, i64 20
  %230 = load ptr, ptr %229, align 8
  %231 = insertvalue { ptr, ptr } undef, ptr %230, 0
  %232 = insertvalue { ptr, ptr } %231, ptr %227, 1
  %233 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %22, align 8
  call void @runtime.TouchConservativeSlot(ptr %22, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %234 = extractvalue { ptr, ptr } %232, 1
  %235 = extractvalue { ptr, ptr } %232, 0
  %236 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" %235(ptr %234)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %233)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %236, ptr %23, align 8
  %237 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %238 = icmp eq ptr %23, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %238)
  %239 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %23, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %23, align 8
  call void @runtime.TouchConservativeSlot(ptr %23, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %240 = call %reflect.Value @reflect.New(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %239)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %237)
  store %reflect.Value %240, ptr %24, align 8
  %241 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %242 = icmp eq ptr %24, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %242)
  %243 = load %reflect.Value, ptr %24, align 8
  store %reflect.Value zeroinitializer, ptr %24, align 8
  call void @runtime.TouchConservativeSlot(ptr %24, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %244 = call %reflect.Value @reflect.Value.Elem(%reflect.Value %243)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %241)
  %245 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %246 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %246)
  %247 = load %reflect.Value, ptr %3, align 8
  %248 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %247)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %245)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %248, ptr %25, align 8
  %249 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %249)
  %250 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %25, align 8
  %251 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %250)
  %252 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %250, 0
  %253 = getelementptr ptr, ptr %252, i64 11
  %254 = load ptr, ptr %253, align 8
  %255 = insertvalue { ptr, ptr } undef, ptr %254, 0
  %256 = insertvalue { ptr, ptr } %255, ptr %251, 1
  %257 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %25, align 8
  call void @runtime.TouchConservativeSlot(ptr %25, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %258 = extractvalue { ptr, ptr } %256, 1
  %259 = extractvalue { ptr, ptr } %256, 0
  %260 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" %259(ptr %258)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %257)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %260, ptr %26, align 8
  %261 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %262 = icmp eq ptr %26, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %262)
  %263 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %26, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %26, align 8
  call void @runtime.TouchConservativeSlot(ptr %26, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %264 = call %reflect.Value @reflect.New(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %263)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %261)
  store %reflect.Value %264, ptr %27, align 8
  %265 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %266 = icmp eq ptr %27, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %266)
  %267 = load %reflect.Value, ptr %27, align 8
  store %reflect.Value zeroinitializer, ptr %27, align 8
  call void @runtime.TouchConservativeSlot(ptr %27, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %268 = call %reflect.Value @reflect.Value.Elem(%reflect.Value %267)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %265)
  %269 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %270 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %270)
  %271 = load %reflect.Value, ptr %3, align 8
  store %reflect.Value zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %272 = call ptr @reflect.Value.MapRange(%reflect.Value %271)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %269)
  br label %_llgo_12

_llgo_10:                                         ; preds = %_llgo_12
  %273 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @reflect.Value.SetIterKey(%reflect.Value %244, ptr %272)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %273)
  %274 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @reflect.Value.SetIterValue(%reflect.Value %268, ptr %272)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %274)
  %275 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %276 = call i64 @reflect.Value.Int(%reflect.Value %244)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %275)
  %277 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %278 = call %reflect.Value @"reflect.(*MapIter).Key"(ptr %272)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %277)
  store %reflect.Value %278, ptr %28, align 8
  %279 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %280 = icmp eq ptr %28, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %280)
  %281 = load %reflect.Value, ptr %28, align 8
  store %reflect.Value zeroinitializer, ptr %28, align 8
  call void @runtime.TouchConservativeSlot(ptr %28, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %282 = call i64 @reflect.Value.Int(%reflect.Value %281)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %279)
  %283 = icmp ne i64 %276, %282
  br i1 %283, label %_llgo_13, label %_llgo_14

_llgo_11:                                         ; preds = %_llgo_12
  ret void

_llgo_12:                                         ; preds = %_llgo_14, %_llgo_9
  %284 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %285 = call i1 @"reflect.(*MapIter).Next"(ptr %272)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %284)
  br i1 %285, label %_llgo_10, label %_llgo_11

_llgo_13:                                         ; preds = %_llgo_14, %_llgo_10
  %286 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr %286, align 8
  %287 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %286, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %287)
  unreachable

_llgo_14:                                         ; preds = %_llgo_10
  %288 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %289 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %268)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %288)
  %290 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %289, ptr %290, align 8
  %291 = icmp eq ptr %290, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %291)
  %292 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %290, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %292, ptr %30, align 8
  %293 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %292, 0
  %294 = ptrtoint ptr %293 to i64
  %295 = and i64 %294, 72057594037927935
  %296 = xor i64 %295, 25399393228665167
  %297 = shl i64 %296, 17
  %298 = select i1 false, i64 0, i64 %297
  %299 = lshr i64 %296, 39
  %300 = select i1 false, i64 0, i64 %299
  %301 = or i64 %298, %300
  %302 = and i64 %301, 72057594037927935
  %303 = or i64 %302, -6557241057451442176
  %304 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %292, 1
  %305 = insertvalue { i64, i64 } undef, i64 %303, 0
  %306 = insertvalue { i64, i64 } %305, i64 %304, 1
  store { i64, i64 } %306, ptr %29, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %290, align 8
  call void @runtime.TouchConservativeSlot(ptr %290, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %307 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %308 = call %reflect.Value @"reflect.(*MapIter).Value"(ptr %272)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %307)
  store %reflect.Value %308, ptr %31, align 8
  %309 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %310 = icmp eq ptr %31, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %310)
  %311 = load %reflect.Value, ptr %31, align 8
  store %reflect.Value zeroinitializer, ptr %31, align 8
  call void @runtime.TouchConservativeSlot(ptr %31, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %312 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %311)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %309)
  %313 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %312, ptr %313, align 8
  %314 = icmp eq ptr %313, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %314)
  %315 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %313, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %315, ptr %33, align 8
  %316 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %315, 0
  %317 = ptrtoint ptr %316 to i64
  %318 = and i64 %317, 72057594037927935
  %319 = xor i64 %318, 25399393228665167
  %320 = shl i64 %319, 17
  %321 = select i1 false, i64 0, i64 %320
  %322 = lshr i64 %319, 39
  %323 = select i1 false, i64 0, i64 %322
  %324 = or i64 %321, %323
  %325 = and i64 %324, 72057594037927935
  %326 = or i64 %325, -6557241057451442176
  %327 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %315, 1
  %328 = insertvalue { i64, i64 } undef, i64 %326, 0
  %329 = insertvalue { i64, i64 } %328, i64 %327, 1
  store { i64, i64 } %329, ptr %32, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %313, align 8
  call void @runtime.TouchConservativeSlot(ptr %313, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %330 = icmp eq ptr %30, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %330)
  %331 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %30, align 8
  %332 = icmp eq ptr %33, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %332)
  %333 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %33, align 8
  %334 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %331, %"github.com/goplus/llgo/runtime/internal/runtime.String" %333)
  %335 = xor i1 %334, true
  store { i64, i64 } zeroinitializer, ptr %29, align 4
  call void @runtime.TouchConservativeSlot(ptr %29, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %30, align 8
  call void @runtime.TouchConservativeSlot(ptr %30, i64 16)
  store { i64, i64 } zeroinitializer, ptr %32, align 4
  call void @runtime.TouchConservativeSlot(ptr %32, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %33, align 8
  call void @runtime.TouchConservativeSlot(ptr %33, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  br i1 %335, label %_llgo_13, label %_llgo_12

_llgo_15:                                         ; No predecessors!
  unreachable

_llgo_16:                                         ; No predecessors!
  unreachable

_llgo_17:                                         ; No predecessors!
  unreachable

_llgo_18:                                         ; No predecessors!
  unreachable
}

declare void @runtime.ClobberPointerRegs()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare i64 @runtime.AllocZHidden(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal64")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i64 @reflect.Value.Kind(%reflect.Value)

declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64, i64)

declare i64 @runtime.AdvanceHiddenPointer(i64, i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare i64 @reflect.Value.Int(%reflect.Value)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.MatchesClosure"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.strequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/reflect.callFunc$1"(ptr %0, i64 %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/reflect.callFunc$1")
  %3 = tail call i64 @"github.com/goplus/llgo/cl/_testgo/reflect.callFunc$1"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %2)
  ret i64 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.interequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare %reflect.Value @reflect.Value.Method(%reflect.Value, i64)

define linkonce { i64, i64 } @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/reflect.demo"(ptr %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10) {
_llgo_0:
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/reflect.demo")
  %12 = tail call { i64, i64 } @"github.com/goplus/llgo/cl/_testgo/reflect.demo"(i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %11)
  ret { i64, i64 } %12
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.CallSlice(%reflect.Value, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakeTypeAssertionError"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @reflect.init()

declare void @unsafe.init()

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.typehash"(ptr, ptr, i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal8")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr, ptr, ptr)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

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

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
