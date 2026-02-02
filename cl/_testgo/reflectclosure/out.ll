; ModuleID = 'github.com/goplus/llgo/cl/_testgo/reflectclosure'
source_filename = "github.com/goplus/llgo/cl/_testgo/reflectclosure"

%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.InterfaceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/cl/_testgo/reflectclosure.Counter" = type { i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%reflect.Value = type { ptr, ptr, i64 }
%"github.com/goplus/llgo/cl/_testgo/reflectclosure.ClosureHolder" = type { ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/reflectclosure.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [31 x i8] c"=== Reflect + Closure Tests ===", align 1
@1 = private unnamed_addr constant [25 x i8] c"=== All tests passed! ===", align 1
@2 = private unnamed_addr constant [28 x i8] c"testReflectCallDirect: start", align 1
@"_llgo_closure$HWe2HQ6hd09Pn2cIw-thGAq2GBxiGPKaQ-EKujXFQEA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 61155071, i8 32, i8 8, i8 8, i8 57, ptr null, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 39 }, ptr @"*_llgo_closure$HWe2HQ6hd09Pn2cIw-thGAq2GBxiGPKaQ-EKujXFQEA" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$HWe2HQ6hd09Pn2cIw-thGAq2GBxiGPKaQ-EKujXFQEA$fields", i64 2, i64 2 } }, align 8
@3 = private unnamed_addr constant [39 x i8] c"struct { $f func(int) int; $h uintptr }", align 1
@"*_llgo_closure$HWe2HQ6hd09Pn2cIw-thGAq2GBxiGPKaQ-EKujXFQEA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 307050607, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 39 }, ptr null }, ptr @"_llgo_closure$HWe2HQ6hd09Pn2cIw-thGAq2GBxiGPKaQ-EKujXFQEA" }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", i64 0 }
@4 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134531106, i8 0, i8 8, i8 8, i8 51, ptr null, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 13 }, ptr @"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out", i64 1, i64 1 } }, align 8
@5 = private unnamed_addr constant [13 x i8] c"func(int) int", align 1
@"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1763581361, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 13 }, ptr null }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, align 8
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, ptr @"*_llgo_int" }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequal64" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal64", i64 0 }
@6 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@7 = private unnamed_addr constant [2 x i8] c"$h", align 1
@_llgo_uintptr = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 1268343028, i8 12, i8 8, i8 8, i8 44, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 7 }, ptr @"*_llgo_uintptr" }, align 8
@8 = private unnamed_addr constant [7 x i8] c"uintptr", align 1
@"*_llgo_uintptr" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1684891952, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 7 }, ptr null }, ptr @_llgo_uintptr }, align 8
@"_llgo_closure$HWe2HQ6hd09Pn2cIw-thGAq2GBxiGPKaQ-EKujXFQEA$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 2 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 2 }, ptr @_llgo_uintptr, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@9 = private unnamed_addr constant [38 x i8] c"  reflect: calling closure directly...", align 1
@10 = private unnamed_addr constant [25 x i8] c"  reflect: call returned:", align 1
@11 = private unnamed_addr constant [22 x i8] c"  closure: called with", align 1
@12 = private unnamed_addr constant [8 x i8] c", base =", align 1
@13 = private unnamed_addr constant [33 x i8] c"testReflectCallMethodValue: start", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/reflectclosure.ClosureHolder" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -288908932, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 18 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reflectclosure.ClosureHolder" }, align 8
@14 = private unnamed_addr constant [18 x i8] c"main.ClosureHolder", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/reflectclosure.ClosureHolder" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 48, i64 0, i32 1583256240, i8 5, i8 8, i8 8, i8 25, ptr null, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 18 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reflectclosure.ClosureHolder" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$dnXWvvV6_NXdHJCp-b6ZdM6554Vb1pGEQNMttSjeULA$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 48 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@15 = private unnamed_addr constant [9 x i8] c"NoFreeVar", align 1
@"_llgo_closure$9Xnzh6tTLee8-T1hkjbEMbbXK5IX2MYsUOq3E1fXCtY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 1158142966, i8 32, i8 8, i8 8, i8 57, ptr null, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 36 }, ptr @"*_llgo_closure$9Xnzh6tTLee8-T1hkjbEMbbXK5IX2MYsUOq3E1fXCtY" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$9Xnzh6tTLee8-T1hkjbEMbbXK5IX2MYsUOq3E1fXCtY$fields", i64 2, i64 2 } }, align 8
@16 = private unnamed_addr constant [36 x i8] c"struct { $f func() int; $h uintptr }", align 1
@"*_llgo_closure$9Xnzh6tTLee8-T1hkjbEMbbXK5IX2MYsUOq3E1fXCtY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1345305177, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 36 }, ptr null }, ptr @"_llgo_closure$9Xnzh6tTLee8-T1hkjbEMbbXK5IX2MYsUOq3E1fXCtY" }, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2131144854, i8 0, i8 8, i8 8, i8 51, ptr null, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 10 }, ptr @"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out", i64 1, i64 1 } }, align 8
@17 = private unnamed_addr constant [10 x i8] c"func() int", align 1
@"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1805835775, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 10 }, ptr null }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_closure$9Xnzh6tTLee8-T1hkjbEMbbXK5IX2MYsUOq3E1fXCtY$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 2 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 2 }, ptr @_llgo_uintptr, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@18 = private unnamed_addr constant [11 x i8] c"WithFreeVar", align 1
@19 = private unnamed_addr constant [9 x i8] c"MethodVal", align 1
@"_llgo_struct$dnXWvvV6_NXdHJCp-b6ZdM6554Vb1pGEQNMttSjeULA$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 9 }, ptr @"_llgo_closure$9Xnzh6tTLee8-T1hkjbEMbbXK5IX2MYsUOq3E1fXCtY", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 11 }, ptr @"_llgo_closure$9Xnzh6tTLee8-T1hkjbEMbbXK5IX2MYsUOq3E1fXCtY", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 9 }, ptr @"_llgo_closure$HWe2HQ6hd09Pn2cIw-thGAq2GBxiGPKaQ-EKujXFQEA", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@20 = private unnamed_addr constant [48 x i8] c"github.com/goplus/llgo/cl/_testgo/reflectclosure", align 1
@21 = private unnamed_addr constant [43 x i8] c"  reflect: got field, calling with arg 7...", align 1
@22 = private unnamed_addr constant [28 x i8] c"testReflectCallNested: start", align 1
@23 = private unnamed_addr constant [36 x i8] c"  reflect: calling nested closure...", align 1
@24 = private unnamed_addr constant [25 x i8] c"  nested closure: outer =", align 1
@25 = private unnamed_addr constant [9 x i8] c", inner =", align 1
@26 = private unnamed_addr constant [31 x i8] c"testReflectCallNoFreeVar: start", align 1
@"__llgo_closure_const$github.com/goplus/llgo/cl/_testgo/reflectclosure.testReflectCallNoFreeVar$1" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/cl/_testgo/reflectclosure.testReflectCallNoFreeVar$1", i64 0 }
@27 = private unnamed_addr constant [32 x i8] c"  reflect: got field, calling...", align 1
@28 = private unnamed_addr constant [19 x i8] c"  NoFreeVar: called", align 1
@29 = private unnamed_addr constant [33 x i8] c"testReflectCallWithFreeVar: start", align 1
@30 = private unnamed_addr constant [33 x i8] c"  WithFreeVar: called, captured =", align 1
@31 = private unnamed_addr constant [33 x i8] c"testReflectInterfaceMethod: start", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/reflectclosure.Counter" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 285316188, i8 11, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 12 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reflectclosure.Counter" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 48 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 3 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr @"github.com/goplus/llgo/cl/_testgo/reflectclosure.(*Counter).Add", ptr @"github.com/goplus/llgo/cl/_testgo/reflectclosure.(*Counter).Add" }] }, align 8
@32 = private unnamed_addr constant [12 x i8] c"main.Counter", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/reflectclosure.Counter" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 1064472668, i8 13, i8 8, i8 8, i8 57, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.structequal.1", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 12 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reflectclosure.Counter" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/reflectclosure.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 48 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.structequal.1" = private constant { ptr, i64, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", i64 1, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reflectclosure.Counter" }
@33 = private unnamed_addr constant [5 x i8] c"value", align 1
@"github.com/goplus/llgo/cl/_testgo/reflectclosure.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@34 = private unnamed_addr constant [3 x i8] c"Add", align 1
@"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1704177746, i8 0, i8 8, i8 8, i8 20, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 26 }, ptr @"*_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A$imethods", i64 1, i64 1 } }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.interequal" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.interequal", i64 0 }
@35 = private unnamed_addr constant [26 x i8] c"interface { Add(int) int }", align 1
@"*_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -721103048, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 26 }, ptr null }, ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" }, align 8
@"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 3 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }], align 8
@36 = private unnamed_addr constant [44 x i8] c"  reflect: got method, calling with arg 3...", align 1
@37 = private unnamed_addr constant [26 x i8] c"testReflectMakeFunc: start", align 1
@38 = private unnamed_addr constant [37 x i8] c"  reflect: calling MakeFunc result...", align 1
@39 = private unnamed_addr constant [30 x i8] c"  MakeFunc wrapper: captured =", align 1

define i64 @"github.com/goplus/llgo/cl/_testgo/reflectclosure.(*Counter).Add"(ptr %0, i64 %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reflectclosure.Counter", ptr %0, i32 0, i32 0
  %3 = load i64, ptr %2, align 4
  %4 = add i64 %3, %1
  ret i64 %4
}

define void @"github.com/goplus/llgo/cl/_testgo/reflectclosure.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/reflectclosure.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/reflectclosure.init$guard", align 1
  call void @reflect.init()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reflectclosure.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/cl/_testgo/reflectclosure.testReflectCallNoFreeVar"()
  call void @"github.com/goplus/llgo/cl/_testgo/reflectclosure.testReflectCallWithFreeVar"()
  call void @"github.com/goplus/llgo/cl/_testgo/reflectclosure.testReflectCallMethodValue"()
  call void @"github.com/goplus/llgo/cl/_testgo/reflectclosure.testReflectCallDirect"()
  call void @"github.com/goplus/llgo/cl/_testgo/reflectclosure.testReflectCallNested"()
  call void @"github.com/goplus/llgo/cl/_testgo/reflectclosure.testReflectInterfaceMethod"()
  call void @"github.com/goplus/llgo/cl/_testgo/reflectclosure.testReflectMakeFunc"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reflectclosure.testReflectCallDirect"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 28 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 200, ptr %0, align 4
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %2 = getelementptr inbounds { ptr, i64, ptr }, ptr %1, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testgo/reflectclosure.testReflectCallDirect$1", ptr %2, align 8
  %3 = getelementptr inbounds { ptr, i64, ptr }, ptr %1, i32 0, i32 1
  store i64 1, ptr %3, align 4
  %4 = getelementptr inbounds { ptr, i64, ptr }, ptr %1, i32 0, i32 2
  store ptr %0, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$HWe2HQ6hd09Pn2cIw-thGAq2GBxiGPKaQ-EKujXFQEA", ptr undef }, ptr %1, 1
  %6 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 38 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %8 = getelementptr inbounds %reflect.Value, ptr %7, i64 0
  %9 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 5 to ptr) })
  store %reflect.Value %9, ptr %8, align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %7, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 1
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i64 1, 2
  %13 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %6, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12)
  %14 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, 0
  %15 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, 1
  %16 = icmp sge i64 0, %15
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %16)
  %17 = getelementptr inbounds %reflect.Value, ptr %14, i64 0
  %18 = load %reflect.Value, ptr %17, align 8
  %19 = call i64 @reflect.Value.Int(%reflect.Value %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testgo/reflectclosure.testReflectCallDirect$1"(i64 %0) {
_llgo_0:
  %1 = call ptr asm sideeffect "mov $0, x26", "=r"()
  %2 = load { ptr }, ptr %1, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load i64, ptr %3, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 22 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 8 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = extractvalue { ptr } %2, 0
  %6 = load i64, ptr %5, align 4
  %7 = add i64 %6, %0
  ret i64 %7
}

define void @"github.com/goplus/llgo/cl/_testgo/reflectclosure.testReflectCallMethodValue"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reflectclosure.Counter", ptr %0, i32 0, i32 0
  store i64 50, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reflectclosure.ClosureHolder", ptr %2, i32 0, i32 2
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %5 = getelementptr inbounds { ptr, i64, ptr }, ptr %4, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testgo/reflectclosure.(*Counter).Add$bound", ptr %5, align 8
  %6 = getelementptr inbounds { ptr, i64, ptr }, ptr %4, i32 0, i32 1
  store i64 1, ptr %6, align 4
  %7 = getelementptr inbounds { ptr, i64, ptr }, ptr %4, i32 0, i32 2
  store ptr %0, ptr %7, align 8
  store ptr %4, ptr %3, align 8
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reflectclosure.ClosureHolder", ptr undef }, ptr %2, 1
  %9 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %8)
  %10 = call %reflect.Value @reflect.Value.Elem(%reflect.Value %9)
  %11 = call %reflect.Value @reflect.Value.FieldByName(%reflect.Value %10, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 9 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 43 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %13 = getelementptr inbounds %reflect.Value, ptr %12, i64 0
  %14 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 7 to ptr) })
  store %reflect.Value %14, ptr %13, align 8
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %12, 0
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, i64 1, 1
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, i64 1, 2
  %18 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %11, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17)
  %19 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, 0
  %20 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, 1
  %21 = icmp sge i64 0, %20
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %21)
  %22 = getelementptr inbounds %reflect.Value, ptr %19, i64 0
  %23 = load %reflect.Value, ptr %22, align 8
  %24 = call i64 @reflect.Value.Int(%reflect.Value %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reflectclosure.testReflectCallNested"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 28 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 10, ptr %0, align 4
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %2 = getelementptr inbounds { ptr, i64, ptr }, ptr %1, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testgo/reflectclosure.testReflectCallNested$1", ptr %2, align 8
  %3 = getelementptr inbounds { ptr, i64, ptr }, ptr %1, i32 0, i32 1
  store i64 1, ptr %3, align 4
  %4 = getelementptr inbounds { ptr, i64, ptr }, ptr %1, i32 0, i32 2
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %1, align 8
  %6 = getelementptr i8, ptr %1, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %6)
  %7 = call ptr %5()
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$9Xnzh6tTLee8-T1hkjbEMbbXK5IX2MYsUOq3E1fXCtY", ptr undef }, ptr %7, 1
  %9 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 36 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %10 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %9, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer)
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, 0
  %12 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, 1
  %13 = icmp sge i64 0, %12
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %13)
  %14 = getelementptr inbounds %reflect.Value, ptr %11, i64 0
  %15 = load %reflect.Value, ptr %14, align 8
  %16 = call i64 @reflect.Value.Int(%reflect.Value %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define ptr @"github.com/goplus/llgo/cl/_testgo/reflectclosure.testReflectCallNested$1"() {
_llgo_0:
  %0 = call ptr asm sideeffect "mov $0, x26", "=r"()
  %1 = load { ptr }, ptr %0, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 20, ptr %2, align 4
  %3 = extractvalue { ptr } %1, 0
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 32)
  %5 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %4, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testgo/reflectclosure.testReflectCallNested$1$1", ptr %5, align 8
  %6 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %4, i32 0, i32 1
  store i64 1, ptr %6, align 4
  %7 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %4, i32 0, i32 2
  store ptr %3, ptr %7, align 8
  %8 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %4, i32 0, i32 3
  store ptr %2, ptr %8, align 8
  ret ptr %4
}

define i64 @"github.com/goplus/llgo/cl/_testgo/reflectclosure.testReflectCallNested$1$1"() {
_llgo_0:
  %0 = call ptr asm sideeffect "mov $0, x26", "=r"()
  %1 = load { ptr, ptr }, ptr %0, align 8
  %2 = extractvalue { ptr, ptr } %1, 0
  %3 = load i64, ptr %2, align 4
  %4 = extractvalue { ptr, ptr } %1, 1
  %5 = load i64, ptr %4, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 9 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %6 = extractvalue { ptr, ptr } %1, 0
  %7 = load i64, ptr %6, align 4
  %8 = extractvalue { ptr, ptr } %1, 1
  %9 = load i64, ptr %8, align 4
  %10 = add i64 %7, %9
  ret i64 %10
}

define void @"github.com/goplus/llgo/cl/_testgo/reflectclosure.testReflectCallNoFreeVar"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reflectclosure.ClosureHolder", ptr %0, i32 0, i32 0
  store ptr @"__llgo_closure_const$github.com/goplus/llgo/cl/_testgo/reflectclosure.testReflectCallNoFreeVar$1", ptr %1, align 8
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reflectclosure.ClosureHolder", ptr undef }, ptr %0, 1
  %3 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %2)
  %4 = call %reflect.Value @reflect.Value.Elem(%reflect.Value %3)
  %5 = call %reflect.Value @reflect.Value.FieldByName(%reflect.Value %4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 9 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 32 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %6 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %5, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer)
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, 0
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, 1
  %9 = icmp sge i64 0, %8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %9)
  %10 = getelementptr inbounds %reflect.Value, ptr %7, i64 0
  %11 = load %reflect.Value, ptr %10, align 8
  %12 = call i64 @reflect.Value.Int(%reflect.Value %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testgo/reflectclosure.testReflectCallNoFreeVar$1"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 19 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 42
}

define void @"github.com/goplus/llgo/cl/_testgo/reflectclosure.testReflectCallWithFreeVar"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 100, ptr %0, align 4
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reflectclosure.ClosureHolder", ptr %1, i32 0, i32 1
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %4 = getelementptr inbounds { ptr, i64, ptr }, ptr %3, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testgo/reflectclosure.testReflectCallWithFreeVar$1", ptr %4, align 8
  %5 = getelementptr inbounds { ptr, i64, ptr }, ptr %3, i32 0, i32 1
  store i64 1, ptr %5, align 4
  %6 = getelementptr inbounds { ptr, i64, ptr }, ptr %3, i32 0, i32 2
  store ptr %0, ptr %6, align 8
  store ptr %3, ptr %2, align 8
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reflectclosure.ClosureHolder", ptr undef }, ptr %1, 1
  %8 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %7)
  %9 = call %reflect.Value @reflect.Value.Elem(%reflect.Value %8)
  %10 = call %reflect.Value @reflect.Value.FieldByName(%reflect.Value %9, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 11 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 32 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %11 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %10, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer)
  %12 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 0
  %13 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 1
  %14 = icmp sge i64 0, %13
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %14)
  %15 = getelementptr inbounds %reflect.Value, ptr %12, i64 0
  %16 = load %reflect.Value, ptr %15, align 8
  %17 = call i64 @reflect.Value.Int(%reflect.Value %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testgo/reflectclosure.testReflectCallWithFreeVar$1"() {
_llgo_0:
  %0 = call ptr asm sideeffect "mov $0, x26", "=r"()
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load i64, ptr %2, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = extractvalue { ptr } %1, 0
  %5 = load i64, ptr %4, align 4
  %6 = add i64 %5, 1
  ret i64 %6
}

define void @"github.com/goplus/llgo/cl/_testgo/reflectclosure.testReflectInterfaceMethod"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reflectclosure.Counter", ptr %0, i32 0, i32 0
  store i64 77, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reflectclosure.Counter")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %0, 1
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %4)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, 1
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %5, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, ptr %6, 1
  %9 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %8)
  %10 = call %reflect.Value @reflect.Value.MethodByName(%reflect.Value %9, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 3 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 44 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %12 = getelementptr inbounds %reflect.Value, ptr %11, i64 0
  %13 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 3 to ptr) })
  store %reflect.Value %13, ptr %12, align 8
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %11, 0
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, i64 1, 1
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, i64 1, 2
  %17 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %10, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16)
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, 0
  %19 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, 1
  %20 = icmp sge i64 0, %19
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %20)
  %21 = getelementptr inbounds %reflect.Value, ptr %18, i64 0
  %22 = load %reflect.Value, ptr %21, align 8
  %23 = call i64 @reflect.Value.Int(%reflect.Value %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reflectclosure.testReflectMakeFunc"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 26 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 1000, ptr %0, align 4
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %2 = getelementptr inbounds { ptr, i64, ptr }, ptr %1, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testgo/reflectclosure.testReflectMakeFunc$1", ptr %2, align 8
  %3 = getelementptr inbounds { ptr, i64, ptr }, ptr %1, i32 0, i32 1
  store i64 1, ptr %3, align 4
  %4 = getelementptr inbounds { ptr, i64, ptr }, ptr %1, i32 0, i32 2
  store ptr %0, ptr %4, align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %6 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %5, i64 0
  %7 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.TypeOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr null })
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, ptr %6, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %5, i64 1
  %9 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.TypeOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr null })
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, ptr %8, align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %5, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 2, 1
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i64 2, 2
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %14 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %13, i64 0
  %15 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.TypeOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr null })
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %15, ptr %14, align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %13, i64 1
  %17 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.TypeOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr null })
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %17, ptr %16, align 8
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %13, 0
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, i64 2, 1
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, i64 2, 2
  %21 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.FuncOf(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, i1 false)
  %22 = call %reflect.Value @reflect.MakeFunc(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %21, ptr %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 37 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 48)
  %24 = getelementptr inbounds %reflect.Value, ptr %23, i64 0
  %25 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 1 to ptr) })
  store %reflect.Value %25, ptr %24, align 8
  %26 = getelementptr inbounds %reflect.Value, ptr %23, i64 1
  %27 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 2 to ptr) })
  store %reflect.Value %27, ptr %26, align 8
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %23, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28, i64 2, 1
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, i64 2, 2
  %31 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %22, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30)
  %32 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31, 0
  %33 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31, 1
  %34 = icmp sge i64 0, %33
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %34)
  %35 = getelementptr inbounds %reflect.Value, ptr %32, i64 0
  %36 = load %reflect.Value, ptr %35, align 8
  %37 = call i64 @reflect.Value.Int(%reflect.Value %36)
  %38 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31, 0
  %39 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31, 1
  %40 = icmp sge i64 1, %39
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %40)
  %41 = getelementptr inbounds %reflect.Value, ptr %38, i64 1
  %42 = load %reflect.Value, ptr %41, align 8
  %43 = call i64 @reflect.Value.Int(%reflect.Value %42)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %37)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %43)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/reflectclosure.testReflectMakeFunc$1"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0) {
_llgo_0:
  %1 = call ptr asm sideeffect "mov $0, x26", "=r"()
  %2 = load { ptr }, ptr %1, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load i64, ptr %3, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 48)
  %6 = getelementptr inbounds %reflect.Value, ptr %5, i64 0
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 0
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  %9 = icmp sge i64 1, %8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %9)
  %10 = getelementptr inbounds %reflect.Value, ptr %7, i64 1
  %11 = load %reflect.Value, ptr %10, align 8
  store %reflect.Value %11, ptr %6, align 8
  %12 = getelementptr inbounds %reflect.Value, ptr %5, i64 1
  %13 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 0
  %14 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  %15 = icmp sge i64 0, %14
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %15)
  %16 = getelementptr inbounds %reflect.Value, ptr %13, i64 0
  %17 = load %reflect.Value, ptr %16, align 8
  store %reflect.Value %17, ptr %12, align 8
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %5, 0
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, i64 2, 1
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, i64 2, 2
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20
}

declare void @reflect.init()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare i64 @reflect.Value.Int(%reflect.Value)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

define i64 @"github.com/goplus/llgo/cl/_testgo/reflectclosure.(*Counter).Add$bound"(i64 %0) {
_llgo_0:
  %1 = call ptr asm sideeffect "mov $0, x26", "=r"()
  %2 = load { ptr }, ptr %1, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = call i64 @"github.com/goplus/llgo/cl/_testgo/reflectclosure.(*Counter).Add"(ptr %3, i64 %0)
  ret i64 %4
}

declare %reflect.Value @reflect.Value.Elem(%reflect.Value)

declare %reflect.Value @reflect.Value.FieldByName(%reflect.Value, %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare %reflect.Value @reflect.Value.MethodByName(%reflect.Value, %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.TypeOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.FuncOf(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare %reflect.Value @reflect.MakeFunc(%"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr)
