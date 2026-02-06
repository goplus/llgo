; ModuleID = 'github.com/goplus/llgo/cl/_testgo/abimethod'
source_filename = "github.com/goplus/llgo/cl/_testgo/abimethod"

%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.InterfaceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/abi.SliceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.ArrayType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, ptr, i64 }
%"github.com/goplus/llgo/cl/_testgo/abimethod.T" = type { i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testgo/abimethod.Pointer[any]" = type { [0 x ptr], ptr }

@"github.com/goplus/llgo/cl/_testgo/abimethod.init$guard" = global i1 false, align 1
@"*github.com/goplus/llgo/cl/_testgo/abimethod.struct$mRfo5gQx8vKF1DvrL24XRoyvI_ttVDcwc1JYMRxWfb8" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -712860747, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 25 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$mRfo5gQx8vKF1DvrL24XRoyvI_ttVDcwc1JYMRxWfb8" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo1", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo1" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo2", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo2" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 49 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.demo3", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.demo3" }] }, align 8
@"github.com/goplus/llgo/cl/_testgo/abimethod.struct$mRfo5gQx8vKF1DvrL24XRoyvI_ttVDcwc1JYMRxWfb8" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 235980794, i8 9, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$mRfo5gQx8vKF1DvrL24XRoyvI_ttVDcwc1JYMRxWfb8" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 25 }, ptr @"*github.com/goplus/llgo/cl/_testgo/abimethod.struct$mRfo5gQx8vKF1DvrL24XRoyvI_ttVDcwc1JYMRxWfb8" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$mRfo5gQx8vKF1DvrL24XRoyvI_ttVDcwc1JYMRxWfb8$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo1", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo1" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo2", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo2" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 49 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.demo3", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.demo3" }] }, align 8
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 }, ptr @"*_llgo_int" }, align 8
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@0 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/abimethod.T" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -908752194, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/abimethod.T" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).Demo1", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).Demo1" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).Demo2", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).Demo2" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 49 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).demo3", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).demo3" }] }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/abimethod.T" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -666093743, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/abimethod.T" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/abimethod.T" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).Demo1", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.T.Demo1" }] }, align 8
@1 = private unnamed_addr constant [6 x i8] c"main.T", align 1
@2 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testgo/abimethod", align 1
@3 = private unnamed_addr constant [1 x i8] c"n", align 1
@"github.com/goplus/llgo/cl/_testgo/abimethod.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@4 = private unnamed_addr constant [5 x i8] c"Demo1", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2131144854, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 10 }, ptr @"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out", i64 1, i64 1 } }, align 8
@"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1805835775, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 10 }, ptr null }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, align 8
@5 = private unnamed_addr constant [10 x i8] c"func() int", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@6 = private unnamed_addr constant [5 x i8] c"Demo2", align 1
@7 = private unnamed_addr constant [5 x i8] c"demo3", align 1
@8 = private unnamed_addr constant [49 x i8] c"github.com/goplus/llgo/cl/_testgo/abimethod.demo3", align 1
@9 = private unnamed_addr constant [25 x i8] c"struct { m int; *main.T }", align 1
@10 = private unnamed_addr constant [1 x i8] c"m", align 1
@11 = private unnamed_addr constant [1 x i8] c"T", align 1
@"github.com/goplus/llgo/cl/_testgo/abimethod.struct$mRfo5gQx8vKF1DvrL24XRoyvI_ttVDcwc1JYMRxWfb8$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 1 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/abimethod.T", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true }], align 8
@"_llgo_iface$WkyTd7mXEW0USaC6FIo7OG9IdUUyjAJl_h3PFrMEtHc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1807485229, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 25 }, ptr @"*_llgo_iface$WkyTd7mXEW0USaC6FIo7OG9IdUUyjAJl_h3PFrMEtHc" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$WkyTd7mXEW0USaC6FIo7OG9IdUUyjAJl_h3PFrMEtHc$imethods", i64 1, i64 1 } }, align 8
@"*_llgo_iface$WkyTd7mXEW0USaC6FIo7OG9IdUUyjAJl_h3PFrMEtHc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 929086049, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 25 }, ptr null }, ptr @"_llgo_iface$WkyTd7mXEW0USaC6FIo7OG9IdUUyjAJl_h3PFrMEtHc" }, align 8
@12 = private unnamed_addr constant [25 x i8] c"interface { Demo1() int }", align 1
@"_llgo_iface$WkyTd7mXEW0USaC6FIo7OG9IdUUyjAJl_h3PFrMEtHc$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }], align 8
@13 = private unnamed_addr constant [20 x i8] c"testAnonymous1 error", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 6 }, ptr @"*_llgo_string" }, align 8
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@14 = private unnamed_addr constant [6 x i8] c"string", align 1
@15 = private unnamed_addr constant [20 x i8] c"testAnonymous2 error", align 1
@"github.com/goplus/llgo/cl/_testgo/abimethod.struct$F3FioEGWwXQRUdV6xoxVUEDjRNgBQIpL0XIyBECp088" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 179876865, i8 9, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$F3FioEGWwXQRUdV6xoxVUEDjRNgBQIpL0XIyBECp088" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 24 }, ptr @"*github.com/goplus/llgo/cl/_testgo/abimethod.struct$F3FioEGWwXQRUdV6xoxVUEDjRNgBQIpL0XIyBECp088" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$F3FioEGWwXQRUdV6xoxVUEDjRNgBQIpL0XIyBECp088$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo1", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo1" }] }, align 8
@"*github.com/goplus/llgo/cl/_testgo/abimethod.struct$F3FioEGWwXQRUdV6xoxVUEDjRNgBQIpL0XIyBECp088" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -343027978, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 24 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$F3FioEGWwXQRUdV6xoxVUEDjRNgBQIpL0XIyBECp088" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo1", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo1" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo2", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo2" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 49 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; github.com/goplus/llgo/cl/_testgo/abimethod.T}.demo3", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; github.com/goplus/llgo/cl/_testgo/abimethod.T}.demo3" }] }, align 8
@16 = private unnamed_addr constant [24 x i8] c"struct { m int; main.T }", align 1
@"github.com/goplus/llgo/cl/_testgo/abimethod.struct$F3FioEGWwXQRUdV6xoxVUEDjRNgBQIpL0XIyBECp088$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 1 }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/abimethod.T", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true }], align 8
@17 = private unnamed_addr constant [20 x i8] c"testAnonymous3 error", align 1
@18 = private unnamed_addr constant [20 x i8] c"testAnonymous4 error", align 1
@"_llgo_iface$GIQLduxo5T_xLwYbboAKy8LzikHgsGzb7WxrkOH3Lr4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1090904853, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 25 }, ptr @"*_llgo_iface$GIQLduxo5T_xLwYbboAKy8LzikHgsGzb7WxrkOH3Lr4" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$GIQLduxo5T_xLwYbboAKy8LzikHgsGzb7WxrkOH3Lr4$imethods", i64 1, i64 1 } }, align 8
@"*_llgo_iface$GIQLduxo5T_xLwYbboAKy8LzikHgsGzb7WxrkOH3Lr4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1063382362, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 25 }, ptr null }, ptr @"_llgo_iface$GIQLduxo5T_xLwYbboAKy8LzikHgsGzb7WxrkOH3Lr4" }, align 8
@19 = private unnamed_addr constant [25 x i8] c"interface { Demo2() int }", align 1
@"_llgo_iface$GIQLduxo5T_xLwYbboAKy8LzikHgsGzb7WxrkOH3Lr4$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }], align 8
@20 = private unnamed_addr constant [20 x i8] c"testAnonymous5 error", align 1
@21 = private unnamed_addr constant [20 x i8] c"testAnonymous6 error", align 1
@"_llgo_iface$58AxoxqQ6sGUOM73FOqFrXsMlgxkU4HGd-S1Wl-ssYw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 541709743, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 38 }, ptr @"*_llgo_iface$58AxoxqQ6sGUOM73FOqFrXsMlgxkU4HGd-S1Wl-ssYw" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$58AxoxqQ6sGUOM73FOqFrXsMlgxkU4HGd-S1Wl-ssYw$imethods", i64 2, i64 2 } }, align 8
@"*_llgo_iface$58AxoxqQ6sGUOM73FOqFrXsMlgxkU4HGd-S1Wl-ssYw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 945986433, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 38 }, ptr null }, ptr @"_llgo_iface$58AxoxqQ6sGUOM73FOqFrXsMlgxkU4HGd-S1Wl-ssYw" }, align 8
@22 = private unnamed_addr constant [38 x i8] c"interface { Demo1() int; Demo2() int }", align 1
@"_llgo_iface$58AxoxqQ6sGUOM73FOqFrXsMlgxkU4HGd-S1Wl-ssYw$imethods" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }], align 8
@23 = private unnamed_addr constant [20 x i8] c"testAnonymous7 error", align 1
@"github.com/goplus/llgo/cl/_testgo/abimethod.iface$kT5SIXt45Cspjl04Bof3DZVSOIltlDo-njpk6KqtZvA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -601152795, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 56 }, ptr @"*github.com/goplus/llgo/cl/_testgo/abimethod.iface$kT5SIXt45Cspjl04Bof3DZVSOIltlDo-njpk6KqtZvA" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.iface$kT5SIXt45Cspjl04Bof3DZVSOIltlDo-njpk6KqtZvA$imethods", i64 3, i64 3 } }, align 8
@"*github.com/goplus/llgo/cl/_testgo/abimethod.iface$kT5SIXt45Cspjl04Bof3DZVSOIltlDo-njpk6KqtZvA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 162233315, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 56 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.iface$kT5SIXt45Cspjl04Bof3DZVSOIltlDo-njpk6KqtZvA" }, align 8
@24 = private unnamed_addr constant [56 x i8] c"interface { Demo1() int; Demo2() int; main.demo3() int }", align 1
@"github.com/goplus/llgo/cl/_testgo/abimethod.iface$kT5SIXt45Cspjl04Bof3DZVSOIltlDo-njpk6KqtZvA$imethods" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 49 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }], align 8
@25 = private unnamed_addr constant [20 x i8] c"testAnonymous8 error", align 1
@26 = private unnamed_addr constant [5 x i8] c"hello", align 1
@"*github.com/goplus/llgo/cl/_testgo/abimethod.struct$RGW016k7zllXgGPm1CvD5-IBe-9lphOOTCFtYyDGLjY" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [27 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1554050967, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @92, i64 31 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$RGW016k7zllXgGPm1CvD5-IBe-9lphOOTCFtYyDGLjY" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, i16 27, i16 23, i32 24 }, [27 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 9 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Available", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Available" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 15 }, ptr @"_llgo_func$Z_-7GWzB37LCYRTQLsSYmEihg_hqBK8o_GbT88pqnPY", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.AvailableBuffer", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.AvailableBuffer" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 5 }, ptr @"_llgo_func$Z_-7GWzB37LCYRTQLsSYmEihg_hqBK8o_GbT88pqnPY", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Bytes", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Bytes" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 3 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Cap", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Cap" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Grow", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Grow" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 3 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Len", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Len" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 4 }, ptr @"_llgo_func$d4kMA_oCkLwnd1j8nVlv1hwRarEVuCIrDCpnHhDz9UY", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Next", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Next" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 4 }, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Read", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Read" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 8 }, ptr @"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadByte", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadByte" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 9 }, ptr @"_llgo_func$aJkaU3jhXr0Q2QraTe2_TTdupeMMW2MD66UwBxynRM0", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadBytes", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadBytes" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 8 }, ptr @"_llgo_func$uVmBDI0DMcrui3Q9y-g_hbtVN8JckQ18V2wmO5_G7A8", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadFrom", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadFrom" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadRune", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadRune" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr @"_llgo_func$TBlCn7YTQdraI1HMiBWmkrqIGG-8UgD1UVyJy62Z_0o", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadString", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadString" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 5 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Reset", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Reset" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.String", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.String" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 8 }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Truncate", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Truncate" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 10 }, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.UnreadByte", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.UnreadByte" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 10 }, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.UnreadRune", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.UnreadRune" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 5 }, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Write", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Write" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 9 }, ptr @"_llgo_func$w4tN9iibS_UimF5vLUWoKP0uAk2tJZF26VqETo_8LVg", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.WriteByte", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.WriteByte" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 9 }, ptr @"_llgo_func$l_x2PeET5XRLt7OB7w-MEpN4Ay8l1pyHFHJCViY0u44", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.WriteRune", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.WriteRune" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 11 }, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.WriteString", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.WriteString" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 7 }, ptr @"_llgo_func$vSv85k0UY6JWccAc3T-lvdCx9J-4GM-oZC9zGLrxW1M", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.WriteTo", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.WriteTo" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 11 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr null, ptr null }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 10 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr null, ptr null }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @88, i64 15 }, ptr @"_llgo_func$aJkaU3jhXr0Q2QraTe2_TTdupeMMW2MD66UwBxynRM0", ptr null, ptr null }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @90, i64 22 }, ptr @"_llgo_func$qVJ5SH6qhXP_h0AM41vpBGzQEMp-fQIfvwQEJy5NI8M", ptr null, ptr null }] }, align 8
@"github.com/goplus/llgo/cl/_testgo/abimethod.struct$RGW016k7zllXgGPm1CvD5-IBe-9lphOOTCFtYyDGLjY" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [27 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1137763463, i8 9, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$RGW016k7zllXgGPm1CvD5-IBe-9lphOOTCFtYyDGLjY" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @92, i64 31 }, ptr @"*github.com/goplus/llgo/cl/_testgo/abimethod.struct$RGW016k7zllXgGPm1CvD5-IBe-9lphOOTCFtYyDGLjY" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$RGW016k7zllXgGPm1CvD5-IBe-9lphOOTCFtYyDGLjY$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, i16 27, i16 23, i32 24 }, [27 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 9 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Available", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Available" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 15 }, ptr @"_llgo_func$Z_-7GWzB37LCYRTQLsSYmEihg_hqBK8o_GbT88pqnPY", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.AvailableBuffer", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.AvailableBuffer" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 5 }, ptr @"_llgo_func$Z_-7GWzB37LCYRTQLsSYmEihg_hqBK8o_GbT88pqnPY", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Bytes", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Bytes" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 3 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Cap", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Cap" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Grow", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Grow" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 3 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Len", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Len" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 4 }, ptr @"_llgo_func$d4kMA_oCkLwnd1j8nVlv1hwRarEVuCIrDCpnHhDz9UY", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Next", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Next" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 4 }, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Read", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Read" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 8 }, ptr @"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadByte", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.ReadByte" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 9 }, ptr @"_llgo_func$aJkaU3jhXr0Q2QraTe2_TTdupeMMW2MD66UwBxynRM0", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadBytes", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.ReadBytes" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 8 }, ptr @"_llgo_func$uVmBDI0DMcrui3Q9y-g_hbtVN8JckQ18V2wmO5_G7A8", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadFrom", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.ReadFrom" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadRune", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.ReadRune" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr @"_llgo_func$TBlCn7YTQdraI1HMiBWmkrqIGG-8UgD1UVyJy62Z_0o", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadString", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.ReadString" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 5 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Reset", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Reset" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.String", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.String" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 8 }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Truncate", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Truncate" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 10 }, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.UnreadByte", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.UnreadByte" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 10 }, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.UnreadRune", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.UnreadRune" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 5 }, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Write", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Write" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 9 }, ptr @"_llgo_func$w4tN9iibS_UimF5vLUWoKP0uAk2tJZF26VqETo_8LVg", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.WriteByte", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.WriteByte" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 9 }, ptr @"_llgo_func$l_x2PeET5XRLt7OB7w-MEpN4Ay8l1pyHFHJCViY0u44", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.WriteRune", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.WriteRune" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 11 }, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.WriteString", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.WriteString" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 7 }, ptr @"_llgo_func$vSv85k0UY6JWccAc3T-lvdCx9J-4GM-oZC9zGLrxW1M", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.WriteTo", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.WriteTo" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 11 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr null, ptr null }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 10 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr null, ptr null }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @88, i64 15 }, ptr @"_llgo_func$aJkaU3jhXr0Q2QraTe2_TTdupeMMW2MD66UwBxynRM0", ptr null, ptr null }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @90, i64 22 }, ptr @"_llgo_func$qVJ5SH6qhXP_h0AM41vpBGzQEMp-fQIfvwQEJy5NI8M", ptr null, ptr null }] }, align 8
@"*_llgo_bytes.Buffer" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [27 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 258663788, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 12 }, ptr null }, ptr @_llgo_bytes.Buffer }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 5 }, i16 27, i16 23, i32 24 }, [27 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 9 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"bytes.(*Buffer).Available", ptr @"bytes.(*Buffer).Available" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 15 }, ptr @"_llgo_func$Z_-7GWzB37LCYRTQLsSYmEihg_hqBK8o_GbT88pqnPY", ptr @"bytes.(*Buffer).AvailableBuffer", ptr @"bytes.(*Buffer).AvailableBuffer" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 5 }, ptr @"_llgo_func$Z_-7GWzB37LCYRTQLsSYmEihg_hqBK8o_GbT88pqnPY", ptr @"bytes.(*Buffer).Bytes", ptr @"bytes.(*Buffer).Bytes" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 3 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"bytes.(*Buffer).Cap", ptr @"bytes.(*Buffer).Cap" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", ptr @"bytes.(*Buffer).Grow", ptr @"bytes.(*Buffer).Grow" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 3 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"bytes.(*Buffer).Len", ptr @"bytes.(*Buffer).Len" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 4 }, ptr @"_llgo_func$d4kMA_oCkLwnd1j8nVlv1hwRarEVuCIrDCpnHhDz9UY", ptr @"bytes.(*Buffer).Next", ptr @"bytes.(*Buffer).Next" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 4 }, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", ptr @"bytes.(*Buffer).Read", ptr @"bytes.(*Buffer).Read" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 8 }, ptr @"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ", ptr @"bytes.(*Buffer).ReadByte", ptr @"bytes.(*Buffer).ReadByte" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 9 }, ptr @"_llgo_func$aJkaU3jhXr0Q2QraTe2_TTdupeMMW2MD66UwBxynRM0", ptr @"bytes.(*Buffer).ReadBytes", ptr @"bytes.(*Buffer).ReadBytes" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 8 }, ptr @"_llgo_func$uVmBDI0DMcrui3Q9y-g_hbtVN8JckQ18V2wmO5_G7A8", ptr @"bytes.(*Buffer).ReadFrom", ptr @"bytes.(*Buffer).ReadFrom" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", ptr @"bytes.(*Buffer).ReadRune", ptr @"bytes.(*Buffer).ReadRune" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr @"_llgo_func$TBlCn7YTQdraI1HMiBWmkrqIGG-8UgD1UVyJy62Z_0o", ptr @"bytes.(*Buffer).ReadString", ptr @"bytes.(*Buffer).ReadString" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 5 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"bytes.(*Buffer).Reset", ptr @"bytes.(*Buffer).Reset" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"bytes.(*Buffer).String", ptr @"bytes.(*Buffer).String" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 8 }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", ptr @"bytes.(*Buffer).Truncate", ptr @"bytes.(*Buffer).Truncate" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 10 }, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", ptr @"bytes.(*Buffer).UnreadByte", ptr @"bytes.(*Buffer).UnreadByte" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 10 }, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", ptr @"bytes.(*Buffer).UnreadRune", ptr @"bytes.(*Buffer).UnreadRune" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 5 }, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", ptr @"bytes.(*Buffer).Write", ptr @"bytes.(*Buffer).Write" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 9 }, ptr @"_llgo_func$w4tN9iibS_UimF5vLUWoKP0uAk2tJZF26VqETo_8LVg", ptr @"bytes.(*Buffer).WriteByte", ptr @"bytes.(*Buffer).WriteByte" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 9 }, ptr @"_llgo_func$l_x2PeET5XRLt7OB7w-MEpN4Ay8l1pyHFHJCViY0u44", ptr @"bytes.(*Buffer).WriteRune", ptr @"bytes.(*Buffer).WriteRune" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 11 }, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", ptr @"bytes.(*Buffer).WriteString", ptr @"bytes.(*Buffer).WriteString" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 7 }, ptr @"_llgo_func$vSv85k0UY6JWccAc3T-lvdCx9J-4GM-oZC9zGLrxW1M", ptr @"bytes.(*Buffer).WriteTo", ptr @"bytes.(*Buffer).WriteTo" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 11 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"bytes.(*Buffer).empty", ptr @"bytes.(*Buffer).empty" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 10 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr @"bytes.(*Buffer).grow", ptr @"bytes.(*Buffer).grow" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @88, i64 15 }, ptr @"_llgo_func$aJkaU3jhXr0Q2QraTe2_TTdupeMMW2MD66UwBxynRM0", ptr @"bytes.(*Buffer).readSlice", ptr @"bytes.(*Buffer).readSlice" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @90, i64 22 }, ptr @"_llgo_func$qVJ5SH6qhXP_h0AM41vpBGzQEMp-fQIfvwQEJy5NI8M", ptr @"bytes.(*Buffer).tryGrowByReslice", ptr @"bytes.(*Buffer).tryGrowByReslice" }] }, align 8
@_llgo_bytes.Buffer = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 40, i64 0, i32 661676552, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 12 }, ptr @"*_llgo_bytes.Buffer" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 5 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$8M6lRFZ7Fk2XCr2laNI9Y7uQtk2A8VDBrezMuq2Fkuo$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 5 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 370346748, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 6 }, ptr @"*[]_llgo_uint8" }, ptr @_llgo_uint8 }, align 8
@_llgo_uint8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 269156761, i8 12, i8 1, i8 1, i8 40, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 4 }, ptr @"*_llgo_uint8" }, align 8
@"*_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1277858201, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 4 }, ptr null }, ptr @_llgo_uint8 }, align 8
@27 = private unnamed_addr constant [4 x i8] c"byte", align 1
@"*[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2143776929, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 6 }, ptr null }, ptr @"[]_llgo_uint8" }, align 8
@28 = private unnamed_addr constant [6 x i8] c"[]byte", align 1
@_llgo_bytes.readOp = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 1507423333, i8 13, i8 1, i8 1, i8 35, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 12 }, ptr @"*_llgo_bytes.readOp" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 5 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"*_llgo_bytes.readOp" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1082688598, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 12 }, ptr null }, ptr @_llgo_bytes.readOp }, align 8
@29 = private unnamed_addr constant [12 x i8] c"bytes.readOp", align 1
@30 = private unnamed_addr constant [5 x i8] c"bytes", align 1
@31 = private unnamed_addr constant [12 x i8] c"bytes.Buffer", align 1
@32 = private unnamed_addr constant [3 x i8] c"buf", align 1
@33 = private unnamed_addr constant [3 x i8] c"off", align 1
@34 = private unnamed_addr constant [8 x i8] c"lastRead", align 1
@"github.com/goplus/llgo/cl/_testgo/abimethod.struct$8M6lRFZ7Fk2XCr2laNI9Y7uQtk2A8VDBrezMuq2Fkuo$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 3 }, ptr @"[]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 3 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 8 }, ptr @_llgo_bytes.readOp, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@35 = private unnamed_addr constant [9 x i8] c"Available", align 1
@36 = private unnamed_addr constant [15 x i8] c"AvailableBuffer", align 1
@"_llgo_func$Z_-7GWzB37LCYRTQLsSYmEihg_hqBK8o_GbT88pqnPY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -153447421, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 13 }, ptr @"*_llgo_func$Z_-7GWzB37LCYRTQLsSYmEihg_hqBK8o_GbT88pqnPY" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$Z_-7GWzB37LCYRTQLsSYmEihg_hqBK8o_GbT88pqnPY$out", i64 1, i64 1 } }, align 8
@"*_llgo_func$Z_-7GWzB37LCYRTQLsSYmEihg_hqBK8o_GbT88pqnPY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1574747178, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 13 }, ptr null }, ptr @"_llgo_func$Z_-7GWzB37LCYRTQLsSYmEihg_hqBK8o_GbT88pqnPY" }, align 8
@37 = private unnamed_addr constant [13 x i8] c"func() []byte", align 1
@"_llgo_func$Z_-7GWzB37LCYRTQLsSYmEihg_hqBK8o_GbT88pqnPY$out" = weak_odr constant [1 x ptr] [ptr @"[]_llgo_uint8"], align 8
@38 = private unnamed_addr constant [5 x i8] c"Bytes", align 1
@39 = private unnamed_addr constant [3 x i8] c"Cap", align 1
@40 = private unnamed_addr constant [4 x i8] c"Grow", align 1
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -637187458, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr @"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 735356155, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr null }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, align 8
@41 = private unnamed_addr constant [9 x i8] c"func(int)", align 1
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@42 = private unnamed_addr constant [3 x i8] c"Len", align 1
@43 = private unnamed_addr constant [4 x i8] c"Next", align 1
@"_llgo_func$d4kMA_oCkLwnd1j8nVlv1hwRarEVuCIrDCpnHhDz9UY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -875118098, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 16 }, ptr @"*_llgo_func$d4kMA_oCkLwnd1j8nVlv1hwRarEVuCIrDCpnHhDz9UY" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$d4kMA_oCkLwnd1j8nVlv1hwRarEVuCIrDCpnHhDz9UY$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$d4kMA_oCkLwnd1j8nVlv1hwRarEVuCIrDCpnHhDz9UY$out", i64 1, i64 1 } }, align 8
@"*_llgo_func$d4kMA_oCkLwnd1j8nVlv1hwRarEVuCIrDCpnHhDz9UY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1809495648, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 16 }, ptr null }, ptr @"_llgo_func$d4kMA_oCkLwnd1j8nVlv1hwRarEVuCIrDCpnHhDz9UY" }, align 8
@44 = private unnamed_addr constant [16 x i8] c"func(int) []byte", align 1
@"_llgo_func$d4kMA_oCkLwnd1j8nVlv1hwRarEVuCIrDCpnHhDz9UY$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_func$d4kMA_oCkLwnd1j8nVlv1hwRarEVuCIrDCpnHhDz9UY$out" = weak_odr constant [1 x ptr] [ptr @"[]_llgo_uint8"], align 8
@45 = private unnamed_addr constant [4 x i8] c"Read", align 1
@"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -58533757, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 25 }, ptr @"*_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk$out", i64 2, i64 2 } }, align 8
@_llgo_error = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1462738452, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 5 }, ptr @"*_llgo_error" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU$imethods", i64 1, i64 1 } }, align 8
@"*_llgo_error" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1621558991, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 5 }, ptr null }, ptr @_llgo_error }, align 8
@46 = private unnamed_addr constant [5 x i8] c"error", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1419376263, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 13 }, ptr @"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out", i64 1, i64 1 } }, align 8
@"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1900367307, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 13 }, ptr null }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, align 8
@47 = private unnamed_addr constant [13 x i8] c"func() string", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@48 = private unnamed_addr constant [5 x i8] c"Error", align 1
@"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 5 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }], align 8
@"*_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1244675479, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 25 }, ptr null }, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk" }, align 8
@49 = private unnamed_addr constant [25 x i8] c"func([]byte) (int, error)", align 1
@"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk$in" = weak_odr constant [1 x ptr] [ptr @"[]_llgo_uint8"], align 8
@"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk$out" = weak_odr constant [2 x ptr] [ptr @_llgo_int, ptr @_llgo_error], align 8
@50 = private unnamed_addr constant [8 x i8] c"ReadByte", align 1
@"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1499372428, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 20 }, ptr @"*_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ$out", i64 2, i64 2 } }, align 8
@"*_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1164205677, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 20 }, ptr null }, ptr @"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ" }, align 8
@51 = private unnamed_addr constant [20 x i8] c"func() (byte, error)", align 1
@"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ$out" = weak_odr constant [2 x ptr] [ptr @_llgo_uint8, ptr @_llgo_error], align 8
@52 = private unnamed_addr constant [9 x i8] c"ReadBytes", align 1
@"_llgo_func$aJkaU3jhXr0Q2QraTe2_TTdupeMMW2MD66UwBxynRM0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1659702664, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 26 }, ptr @"*_llgo_func$aJkaU3jhXr0Q2QraTe2_TTdupeMMW2MD66UwBxynRM0" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$aJkaU3jhXr0Q2QraTe2_TTdupeMMW2MD66UwBxynRM0$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$aJkaU3jhXr0Q2QraTe2_TTdupeMMW2MD66UwBxynRM0$out", i64 2, i64 2 } }, align 8
@"*_llgo_func$aJkaU3jhXr0Q2QraTe2_TTdupeMMW2MD66UwBxynRM0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2010891442, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 26 }, ptr null }, ptr @"_llgo_func$aJkaU3jhXr0Q2QraTe2_TTdupeMMW2MD66UwBxynRM0" }, align 8
@53 = private unnamed_addr constant [26 x i8] c"func(byte) ([]byte, error)", align 1
@"_llgo_func$aJkaU3jhXr0Q2QraTe2_TTdupeMMW2MD66UwBxynRM0$in" = weak_odr constant [1 x ptr] [ptr @_llgo_uint8], align 8
@"_llgo_func$aJkaU3jhXr0Q2QraTe2_TTdupeMMW2MD66UwBxynRM0$out" = weak_odr constant [2 x ptr] [ptr @"[]_llgo_uint8", ptr @_llgo_error], align 8
@54 = private unnamed_addr constant [8 x i8] c"ReadFrom", align 1
@"_llgo_func$uVmBDI0DMcrui3Q9y-g_hbtVN8JckQ18V2wmO5_G7A8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1635781323, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 30 }, ptr @"*_llgo_func$uVmBDI0DMcrui3Q9y-g_hbtVN8JckQ18V2wmO5_G7A8" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$uVmBDI0DMcrui3Q9y-g_hbtVN8JckQ18V2wmO5_G7A8$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$uVmBDI0DMcrui3Q9y-g_hbtVN8JckQ18V2wmO5_G7A8$out", i64 2, i64 2 } }, align 8
@_llgo_io.Reader = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1885455791, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 9 }, ptr @"*_llgo_io.Reader" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$uycIKA3bbxRhudEjW1hHKWKdLqHQsCVy8NdW1bkQmNw$imethods", i64 1, i64 1 } }, align 8
@"*_llgo_io.Reader" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 760453616, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 9 }, ptr null }, ptr @_llgo_io.Reader }, align 8
@55 = private unnamed_addr constant [9 x i8] c"io.Reader", align 1
@"_llgo_iface$uycIKA3bbxRhudEjW1hHKWKdLqHQsCVy8NdW1bkQmNw$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 4 }, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk" }], align 8
@_llgo_int64 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 394795202, i8 12, i8 8, i8 8, i8 38, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 5 }, ptr @"*_llgo_int64" }, align 8
@"*_llgo_int64" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1901231210, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 5 }, ptr null }, ptr @_llgo_int64 }, align 8
@56 = private unnamed_addr constant [5 x i8] c"int64", align 1
@"*_llgo_func$uVmBDI0DMcrui3Q9y-g_hbtVN8JckQ18V2wmO5_G7A8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1930979199, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 30 }, ptr null }, ptr @"_llgo_func$uVmBDI0DMcrui3Q9y-g_hbtVN8JckQ18V2wmO5_G7A8" }, align 8
@57 = private unnamed_addr constant [30 x i8] c"func(io.Reader) (int64, error)", align 1
@"_llgo_func$uVmBDI0DMcrui3Q9y-g_hbtVN8JckQ18V2wmO5_G7A8$in" = weak_odr constant [1 x ptr] [ptr @_llgo_io.Reader], align 8
@"_llgo_func$uVmBDI0DMcrui3Q9y-g_hbtVN8JckQ18V2wmO5_G7A8$out" = weak_odr constant [2 x ptr] [ptr @_llgo_int64, ptr @_llgo_error], align 8
@58 = private unnamed_addr constant [8 x i8] c"ReadRune", align 1
@"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 828863408, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 25 }, ptr @"*_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU$out", i64 3, i64 3 } }, align 8
@_llgo_rune = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 4, i64 0, i32 1641231293, i8 12, i8 4, i8 4, i8 37, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal32", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 4 }, ptr @"*_llgo_rune" }, align 8
@"*_llgo_rune" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1105732486, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 4 }, ptr null }, ptr @_llgo_rune }, align 8
@59 = private unnamed_addr constant [4 x i8] c"rune", align 1
@"*_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2033532803, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 25 }, ptr null }, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU" }, align 8
@60 = private unnamed_addr constant [25 x i8] c"func() (rune, int, error)", align 1
@"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU$out" = weak_odr constant [3 x ptr] [ptr @_llgo_rune, ptr @_llgo_int, ptr @_llgo_error], align 8
@61 = private unnamed_addr constant [10 x i8] c"ReadString", align 1
@"_llgo_func$TBlCn7YTQdraI1HMiBWmkrqIGG-8UgD1UVyJy62Z_0o" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2138446355, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 26 }, ptr @"*_llgo_func$TBlCn7YTQdraI1HMiBWmkrqIGG-8UgD1UVyJy62Z_0o" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$TBlCn7YTQdraI1HMiBWmkrqIGG-8UgD1UVyJy62Z_0o$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$TBlCn7YTQdraI1HMiBWmkrqIGG-8UgD1UVyJy62Z_0o$out", i64 2, i64 2 } }, align 8
@"*_llgo_func$TBlCn7YTQdraI1HMiBWmkrqIGG-8UgD1UVyJy62Z_0o" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1932918037, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 26 }, ptr null }, ptr @"_llgo_func$TBlCn7YTQdraI1HMiBWmkrqIGG-8UgD1UVyJy62Z_0o" }, align 8
@62 = private unnamed_addr constant [26 x i8] c"func(byte) (string, error)", align 1
@"_llgo_func$TBlCn7YTQdraI1HMiBWmkrqIGG-8UgD1UVyJy62Z_0o$in" = weak_odr constant [1 x ptr] [ptr @_llgo_uint8], align 8
@"_llgo_func$TBlCn7YTQdraI1HMiBWmkrqIGG-8UgD1UVyJy62Z_0o$out" = weak_odr constant [2 x ptr] [ptr @_llgo_string, ptr @_llgo_error], align 8
@63 = private unnamed_addr constant [5 x i8] c"Reset", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@64 = private unnamed_addr constant [6 x i8] c"func()", align 1
@65 = private unnamed_addr constant [6 x i8] c"String", align 1
@66 = private unnamed_addr constant [8 x i8] c"Truncate", align 1
@67 = private unnamed_addr constant [10 x i8] c"UnreadByte", align 1
@"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1183719404, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 12 }, ptr @"*_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w$out", i64 1, i64 1 } }, align 8
@"*_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1571491799, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 12 }, ptr null }, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" }, align 8
@68 = private unnamed_addr constant [12 x i8] c"func() error", align 1
@"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w$out" = weak_odr constant [1 x ptr] [ptr @_llgo_error], align 8
@69 = private unnamed_addr constant [10 x i8] c"UnreadRune", align 1
@70 = private unnamed_addr constant [5 x i8] c"Write", align 1
@71 = private unnamed_addr constant [9 x i8] c"WriteByte", align 1
@"_llgo_func$w4tN9iibS_UimF5vLUWoKP0uAk2tJZF26VqETo_8LVg" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1226479232, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 16 }, ptr @"*_llgo_func$w4tN9iibS_UimF5vLUWoKP0uAk2tJZF26VqETo_8LVg" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$w4tN9iibS_UimF5vLUWoKP0uAk2tJZF26VqETo_8LVg$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$w4tN9iibS_UimF5vLUWoKP0uAk2tJZF26VqETo_8LVg$out", i64 1, i64 1 } }, align 8
@"*_llgo_func$w4tN9iibS_UimF5vLUWoKP0uAk2tJZF26VqETo_8LVg" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 513101056, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 16 }, ptr null }, ptr @"_llgo_func$w4tN9iibS_UimF5vLUWoKP0uAk2tJZF26VqETo_8LVg" }, align 8
@72 = private unnamed_addr constant [16 x i8] c"func(byte) error", align 1
@"_llgo_func$w4tN9iibS_UimF5vLUWoKP0uAk2tJZF26VqETo_8LVg$in" = weak_odr constant [1 x ptr] [ptr @_llgo_uint8], align 8
@"_llgo_func$w4tN9iibS_UimF5vLUWoKP0uAk2tJZF26VqETo_8LVg$out" = weak_odr constant [1 x ptr] [ptr @_llgo_error], align 8
@73 = private unnamed_addr constant [9 x i8] c"WriteRune", align 1
@"_llgo_func$l_x2PeET5XRLt7OB7w-MEpN4Ay8l1pyHFHJCViY0u44" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 99011246, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 23 }, ptr @"*_llgo_func$l_x2PeET5XRLt7OB7w-MEpN4Ay8l1pyHFHJCViY0u44" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$l_x2PeET5XRLt7OB7w-MEpN4Ay8l1pyHFHJCViY0u44$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$l_x2PeET5XRLt7OB7w-MEpN4Ay8l1pyHFHJCViY0u44$out", i64 2, i64 2 } }, align 8
@"*_llgo_func$l_x2PeET5XRLt7OB7w-MEpN4Ay8l1pyHFHJCViY0u44" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1010064001, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 23 }, ptr null }, ptr @"_llgo_func$l_x2PeET5XRLt7OB7w-MEpN4Ay8l1pyHFHJCViY0u44" }, align 8
@74 = private unnamed_addr constant [23 x i8] c"func(rune) (int, error)", align 1
@"_llgo_func$l_x2PeET5XRLt7OB7w-MEpN4Ay8l1pyHFHJCViY0u44$in" = weak_odr constant [1 x ptr] [ptr @_llgo_rune], align 8
@"_llgo_func$l_x2PeET5XRLt7OB7w-MEpN4Ay8l1pyHFHJCViY0u44$out" = weak_odr constant [2 x ptr] [ptr @_llgo_int, ptr @_llgo_error], align 8
@75 = private unnamed_addr constant [11 x i8] c"WriteString", align 1
@"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -183202291, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 25 }, ptr @"*_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw$out", i64 2, i64 2 } }, align 8
@"*_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1229992101, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 25 }, ptr null }, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw" }, align 8
@76 = private unnamed_addr constant [25 x i8] c"func(string) (int, error)", align 1
@"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw$in" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw$out" = weak_odr constant [2 x ptr] [ptr @_llgo_int, ptr @_llgo_error], align 8
@77 = private unnamed_addr constant [7 x i8] c"WriteTo", align 1
@"_llgo_func$vSv85k0UY6JWccAc3T-lvdCx9J-4GM-oZC9zGLrxW1M" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1753174026, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 30 }, ptr @"*_llgo_func$vSv85k0UY6JWccAc3T-lvdCx9J-4GM-oZC9zGLrxW1M" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$vSv85k0UY6JWccAc3T-lvdCx9J-4GM-oZC9zGLrxW1M$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$vSv85k0UY6JWccAc3T-lvdCx9J-4GM-oZC9zGLrxW1M$out", i64 2, i64 2 } }, align 8
@_llgo_io.Writer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1423852385, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 9 }, ptr @"*_llgo_io.Writer" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$kr1iSWwMezh0B9LdQN0MhEZUNZvBlHPhlst95jAyxE0$imethods", i64 1, i64 1 } }, align 8
@"*_llgo_io.Writer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1477879550, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 9 }, ptr null }, ptr @_llgo_io.Writer }, align 8
@78 = private unnamed_addr constant [9 x i8] c"io.Writer", align 1
@"_llgo_iface$kr1iSWwMezh0B9LdQN0MhEZUNZvBlHPhlst95jAyxE0$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 5 }, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk" }], align 8
@"*_llgo_func$vSv85k0UY6JWccAc3T-lvdCx9J-4GM-oZC9zGLrxW1M" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1055881531, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 30 }, ptr null }, ptr @"_llgo_func$vSv85k0UY6JWccAc3T-lvdCx9J-4GM-oZC9zGLrxW1M" }, align 8
@79 = private unnamed_addr constant [30 x i8] c"func(io.Writer) (int64, error)", align 1
@"_llgo_func$vSv85k0UY6JWccAc3T-lvdCx9J-4GM-oZC9zGLrxW1M$in" = weak_odr constant [1 x ptr] [ptr @_llgo_io.Writer], align 8
@"_llgo_func$vSv85k0UY6JWccAc3T-lvdCx9J-4GM-oZC9zGLrxW1M$out" = weak_odr constant [2 x ptr] [ptr @_llgo_int64, ptr @_llgo_error], align 8
@80 = private unnamed_addr constant [5 x i8] c"empty", align 1
@81 = private unnamed_addr constant [11 x i8] c"bytes.empty", align 1
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -541022001, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 11 }, ptr @"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out", i64 1, i64 1 } }, align 8
@_llgo_bool = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 554183389, i8 12, i8 1, i8 1, i8 33, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 4 }, ptr @"*_llgo_bool" }, align 8
@"*_llgo_bool" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1896950390, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 4 }, ptr null }, ptr @_llgo_bool }, align 8
@82 = private unnamed_addr constant [4 x i8] c"bool", align 1
@"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -367308996, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 11 }, ptr null }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, align 8
@83 = private unnamed_addr constant [11 x i8] c"func() bool", align 1
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out" = weak_odr constant [1 x ptr] [ptr @_llgo_bool], align 8
@84 = private unnamed_addr constant [4 x i8] c"grow", align 1
@85 = private unnamed_addr constant [10 x i8] c"bytes.grow", align 1
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134531106, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 13 }, ptr @"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out", i64 1, i64 1 } }, align 8
@"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1763581361, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 13 }, ptr null }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, align 8
@86 = private unnamed_addr constant [13 x i8] c"func(int) int", align 1
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@87 = private unnamed_addr constant [9 x i8] c"readSlice", align 1
@88 = private unnamed_addr constant [15 x i8] c"bytes.readSlice", align 1
@89 = private unnamed_addr constant [16 x i8] c"tryGrowByReslice", align 1
@90 = private unnamed_addr constant [22 x i8] c"bytes.tryGrowByReslice", align 1
@"_llgo_func$qVJ5SH6qhXP_h0AM41vpBGzQEMp-fQIfvwQEJy5NI8M" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 559523889, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @91, i64 21 }, ptr @"*_llgo_func$qVJ5SH6qhXP_h0AM41vpBGzQEMp-fQIfvwQEJy5NI8M" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$qVJ5SH6qhXP_h0AM41vpBGzQEMp-fQIfvwQEJy5NI8M$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$qVJ5SH6qhXP_h0AM41vpBGzQEMp-fQIfvwQEJy5NI8M$out", i64 2, i64 2 } }, align 8
@"*_llgo_func$qVJ5SH6qhXP_h0AM41vpBGzQEMp-fQIfvwQEJy5NI8M" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1842714480, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @91, i64 21 }, ptr null }, ptr @"_llgo_func$qVJ5SH6qhXP_h0AM41vpBGzQEMp-fQIfvwQEJy5NI8M" }, align 8
@91 = private unnamed_addr constant [21 x i8] c"func(int) (int, bool)", align 1
@"_llgo_func$qVJ5SH6qhXP_h0AM41vpBGzQEMp-fQIfvwQEJy5NI8M$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_func$qVJ5SH6qhXP_h0AM41vpBGzQEMp-fQIfvwQEJy5NI8M$out" = weak_odr constant [2 x ptr] [ptr @_llgo_int, ptr @_llgo_bool], align 8
@92 = private unnamed_addr constant [31 x i8] c"struct { m int; *bytes.Buffer }", align 1
@93 = private unnamed_addr constant [6 x i8] c"Buffer", align 1
@"github.com/goplus/llgo/cl/_testgo/abimethod.struct$RGW016k7zllXgGPm1CvD5-IBe-9lphOOTCFtYyDGLjY$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @93, i64 6 }, ptr @"*_llgo_bytes.Buffer", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true }], align 8
@"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -195205541, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @94, i64 29 }, ptr @"*_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U$imethods", i64 1, i64 1 } }, align 8
@"*_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 876051709, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @94, i64 29 }, ptr null }, ptr @"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U" }, align 8
@94 = private unnamed_addr constant [29 x i8] c"interface { String() string }", align 1
@"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }], align 8
@95 = private unnamed_addr constant [25 x i8] c"testAnonymousBuffer error", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/abimethod.Pointer[any]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1798654480, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @100, i64 17 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/abimethod.Pointer[any]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @103, i64 4 }, ptr @"_llgo_func$oqZ09zjnrQRdlivNw60EomwRoboDQbCk5_Y4MGDpQMQ", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.(*Pointer[any]).Load", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.(*Pointer[any]).Load" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @105, i64 5 }, ptr @"_llgo_func$Y8Pl6IHgSDuynhMRTXPlqFo9zl71SSTuMe0Wi5m8eWw", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.(*Pointer[any]).Store", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.(*Pointer[any]).Store" }] }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/abimethod.Pointer[any]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -858197093, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/abimethod.Pointer[any]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @100, i64 17 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/abimethod.Pointer[any]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$WF_Ikp6H-8IyobSlL849gp6AslXPTyT8oKnkzqHD2NA$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"[0]*_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 0, i64 0, i32 -1235244625, i8 8, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[0]*_llgo_any" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @97, i64 16 }, ptr @"*[0]*_llgo_any" }, ptr @"*_llgo_any", ptr @"[]*_llgo_any", i64 0 }, align 8
@"*_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1741196194, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @96, i64 12 }, ptr null }, ptr @_llgo_any }, align 8
@_llgo_any = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1376530322, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @96, i64 12 }, ptr @"*_llgo_any" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@96 = private unnamed_addr constant [12 x i8] c"interface {}", align 1
@"*[0]*_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1487017406, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @97, i64 16 }, ptr null }, ptr @"[0]*_llgo_any" }, align 8
@97 = private unnamed_addr constant [16 x i8] c"[0]*interface {}", align 1
@"[]*_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 1393026359, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @98, i64 15 }, ptr @"*[]*_llgo_any" }, ptr @"*_llgo_any" }, align 8
@"*[]*_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1459791968, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @98, i64 15 }, ptr null }, ptr @"[]*_llgo_any" }, align 8
@98 = private unnamed_addr constant [15 x i8] c"[]*interface {}", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @99, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @99, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@99 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@100 = private unnamed_addr constant [17 x i8] c"main.Pointer[any]", align 1
@101 = private unnamed_addr constant [1 x i8] c"_", align 1
@102 = private unnamed_addr constant [1 x i8] c"v", align 1
@"github.com/goplus/llgo/cl/_testgo/abimethod.struct$WF_Ikp6H-8IyobSlL849gp6AslXPTyT8oKnkzqHD2NA$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @101, i64 1 }, ptr @"[0]*_llgo_any", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @102, i64 1 }, ptr @_llgo_Pointer, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@103 = private unnamed_addr constant [4 x i8] c"Load", align 1
@"_llgo_func$oqZ09zjnrQRdlivNw60EomwRoboDQbCk5_Y4MGDpQMQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1908794164, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @104, i64 20 }, ptr @"*_llgo_func$oqZ09zjnrQRdlivNw60EomwRoboDQbCk5_Y4MGDpQMQ" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$oqZ09zjnrQRdlivNw60EomwRoboDQbCk5_Y4MGDpQMQ$out", i64 1, i64 1 } }, align 8
@"*_llgo_func$oqZ09zjnrQRdlivNw60EomwRoboDQbCk5_Y4MGDpQMQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 709309578, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @104, i64 20 }, ptr null }, ptr @"_llgo_func$oqZ09zjnrQRdlivNw60EomwRoboDQbCk5_Y4MGDpQMQ" }, align 8
@104 = private unnamed_addr constant [20 x i8] c"func() *interface {}", align 1
@"_llgo_func$oqZ09zjnrQRdlivNw60EomwRoboDQbCk5_Y4MGDpQMQ$out" = weak_odr constant [1 x ptr] [ptr @"*_llgo_any"], align 8
@105 = private unnamed_addr constant [5 x i8] c"Store", align 1
@"_llgo_func$Y8Pl6IHgSDuynhMRTXPlqFo9zl71SSTuMe0Wi5m8eWw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1005812159, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @106, i64 19 }, ptr @"*_llgo_func$Y8Pl6IHgSDuynhMRTXPlqFo9zl71SSTuMe0Wi5m8eWw" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$Y8Pl6IHgSDuynhMRTXPlqFo9zl71SSTuMe0Wi5m8eWw$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@"*_llgo_func$Y8Pl6IHgSDuynhMRTXPlqFo9zl71SSTuMe0Wi5m8eWw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1778721426, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @106, i64 19 }, ptr null }, ptr @"_llgo_func$Y8Pl6IHgSDuynhMRTXPlqFo9zl71SSTuMe0Wi5m8eWw" }, align 8
@106 = private unnamed_addr constant [19 x i8] c"func(*interface {})", align 1
@"_llgo_func$Y8Pl6IHgSDuynhMRTXPlqFo9zl71SSTuMe0Wi5m8eWw$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_any"], align 8
@"_llgo_iface$uinGjIxPTfzB5e5h5gH-0VIvLl5rQdJ_yx2UsrxQqds" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 414101712, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @107, i64 56 }, ptr @"*_llgo_iface$uinGjIxPTfzB5e5h5gH-0VIvLl5rQdJ_yx2UsrxQqds" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$uinGjIxPTfzB5e5h5gH-0VIvLl5rQdJ_yx2UsrxQqds$imethods", i64 2, i64 2 } }, align 8
@"*_llgo_iface$uinGjIxPTfzB5e5h5gH-0VIvLl5rQdJ_yx2UsrxQqds" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -756921395, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @107, i64 56 }, ptr null }, ptr @"_llgo_iface$uinGjIxPTfzB5e5h5gH-0VIvLl5rQdJ_yx2UsrxQqds" }, align 8
@107 = private unnamed_addr constant [56 x i8] c"interface { Load() *interface {}; Store(*interface {}) }", align 1
@"_llgo_iface$uinGjIxPTfzB5e5h5gH-0VIvLl5rQdJ_yx2UsrxQqds$imethods" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @103, i64 4 }, ptr @"_llgo_func$oqZ09zjnrQRdlivNw60EomwRoboDQbCk5_Y4MGDpQMQ" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @105, i64 5 }, ptr @"_llgo_func$Y8Pl6IHgSDuynhMRTXPlqFo9zl71SSTuMe0Wi5m8eWw" }], align 8
@108 = private unnamed_addr constant [40 x i8] c"type assertion interface{} -> int failed", align 1
@109 = private unnamed_addr constant [17 x i8] c"testGeneric error", align 1
@110 = private unnamed_addr constant [16 x i8] c"testNamed1 error", align 1
@111 = private unnamed_addr constant [16 x i8] c"testNamed2 error", align 1
@112 = private unnamed_addr constant [16 x i8] c"testNamed4 error", align 1

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.T.Demo1"(%"github.com/goplus/llgo/cl/_testgo/abimethod.T" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testgo/abimethod.T", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/abimethod.T" %0, ptr %1, align 4
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %1, i32 0, i32 0
  %3 = load i64, ptr %2, align 4
  ret i64 %3
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).Demo1"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %0, align 4
  %2 = call i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.T.Demo1"(%"github.com/goplus/llgo/cl/_testgo/abimethod.T" %1)
  ret i64 %2
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).Demo2"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %0, i32 0, i32 0
  %2 = load i64, ptr %1, align 4
  ret i64 %2
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).demo3"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %0, i32 0, i32 0
  %2 = load i64, ptr %1, align 4
  ret i64 %2
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.init$guard", align 1
  call void @bytes.init()
  call void @fmt.init()
  call void @"sync/atomic.init"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/cl/_testgo/abimethod.testGeneric"()
  call void @"github.com/goplus/llgo/cl/_testgo/abimethod.testNamed1"()
  call void @"github.com/goplus/llgo/cl/_testgo/abimethod.testNamed2"()
  call void @"github.com/goplus/llgo/cl/_testgo/abimethod.testNamed3"()
  call void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymous1"()
  call void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymous2"()
  call void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymous3"()
  call void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymous4"()
  call void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymous5"()
  call void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymous6"()
  call void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymous7"()
  call void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymous8"()
  call void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymousBuffer"()
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymous1"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %1 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 0
  %2 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %3, i32 0, i32 0
  store i64 100, ptr %4, align 4
  store i64 10, ptr %1, align 4
  store ptr %3, ptr %2, align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$WkyTd7mXEW0USaC6FIo7OG9IdUUyjAJl_h3PFrMEtHc", ptr @"*github.com/goplus/llgo/cl/_testgo/abimethod.struct$mRfo5gQx8vKF1DvrL24XRoyvI_ttVDcwc1JYMRxWfb8")
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %5, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, ptr %0, 1
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %7)
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, 0
  %10 = getelementptr ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  %12 = insertvalue { ptr, ptr } undef, ptr %11, 0
  %13 = insertvalue { ptr, ptr } %12, ptr %8, 1
  %14 = extractvalue { ptr, ptr } %13, 1
  %15 = extractvalue { ptr, ptr } %13, 0
  %16 = call i64 %15(ptr %14)
  %17 = icmp ne i64 %16, 100
  br i1 %17, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 20 }, ptr %18, align 8
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %18, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %19)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymous2"() {
_llgo_0:
  %0 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %0, i8 0, i64 16, i1 false)
  %1 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 0
  %2 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %3, i32 0, i32 0
  store i64 100, ptr %4, align 4
  store i64 10, ptr %1, align 4
  store ptr %3, ptr %2, align 8
  %5 = load { i64, ptr }, ptr %0, align 8
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { i64, ptr } %5, ptr %6, align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$WkyTd7mXEW0USaC6FIo7OG9IdUUyjAJl_h3PFrMEtHc", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$mRfo5gQx8vKF1DvrL24XRoyvI_ttVDcwc1JYMRxWfb8")
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %7, 0
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, ptr %6, 1
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %9)
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, 0
  %12 = getelementptr ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  %14 = insertvalue { ptr, ptr } undef, ptr %13, 0
  %15 = insertvalue { ptr, ptr } %14, ptr %10, 1
  %16 = extractvalue { ptr, ptr } %15, 1
  %17 = extractvalue { ptr, ptr } %15, 0
  %18 = call i64 %17(ptr %16)
  %19 = icmp ne i64 %18, 100
  br i1 %19, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 20 }, ptr %20, align 8
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %20, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %21)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymous3"() {
_llgo_0:
  %0 = alloca { i64, %"github.com/goplus/llgo/cl/_testgo/abimethod.T" }, align 8
  call void @llvm.memset(ptr %0, i8 0, i64 16, i1 false)
  %1 = getelementptr inbounds { i64, %"github.com/goplus/llgo/cl/_testgo/abimethod.T" }, ptr %0, i32 0, i32 0
  %2 = getelementptr inbounds { i64, %"github.com/goplus/llgo/cl/_testgo/abimethod.T" }, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %2, i32 0, i32 0
  store i64 10, ptr %1, align 4
  store i64 100, ptr %3, align 4
  %4 = load { i64, %"github.com/goplus/llgo/cl/_testgo/abimethod.T" }, ptr %0, align 4
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { i64, %"github.com/goplus/llgo/cl/_testgo/abimethod.T" } %4, ptr %5, align 4
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$WkyTd7mXEW0USaC6FIo7OG9IdUUyjAJl_h3PFrMEtHc", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$F3FioEGWwXQRUdV6xoxVUEDjRNgBQIpL0XIyBECp088")
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %6, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, ptr %5, 1
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %8)
  %10 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, 0
  %11 = getelementptr ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  %13 = insertvalue { ptr, ptr } undef, ptr %12, 0
  %14 = insertvalue { ptr, ptr } %13, ptr %9, 1
  %15 = extractvalue { ptr, ptr } %14, 1
  %16 = extractvalue { ptr, ptr } %14, 0
  %17 = call i64 %16(ptr %15)
  %18 = icmp ne i64 %17, 100
  br i1 %18, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 20 }, ptr %19, align 8
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %19, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %20)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymous4"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %1 = getelementptr inbounds { i64, %"github.com/goplus/llgo/cl/_testgo/abimethod.T" }, ptr %0, i32 0, i32 0
  %2 = getelementptr inbounds { i64, %"github.com/goplus/llgo/cl/_testgo/abimethod.T" }, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %2, i32 0, i32 0
  store i64 10, ptr %1, align 4
  store i64 100, ptr %3, align 4
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$WkyTd7mXEW0USaC6FIo7OG9IdUUyjAJl_h3PFrMEtHc", ptr @"*github.com/goplus/llgo/cl/_testgo/abimethod.struct$F3FioEGWwXQRUdV6xoxVUEDjRNgBQIpL0XIyBECp088")
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %4, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5, ptr %0, 1
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %6)
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, 0
  %9 = getelementptr ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  %11 = insertvalue { ptr, ptr } undef, ptr %10, 0
  %12 = insertvalue { ptr, ptr } %11, ptr %7, 1
  %13 = extractvalue { ptr, ptr } %12, 1
  %14 = extractvalue { ptr, ptr } %12, 0
  %15 = call i64 %14(ptr %13)
  %16 = icmp ne i64 %15, 100
  br i1 %16, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 20 }, ptr %17, align 8
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %17, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %18)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymous5"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %1 = getelementptr inbounds { i64, %"github.com/goplus/llgo/cl/_testgo/abimethod.T" }, ptr %0, i32 0, i32 0
  %2 = getelementptr inbounds { i64, %"github.com/goplus/llgo/cl/_testgo/abimethod.T" }, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %2, i32 0, i32 0
  store i64 10, ptr %1, align 4
  store i64 100, ptr %3, align 4
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$GIQLduxo5T_xLwYbboAKy8LzikHgsGzb7WxrkOH3Lr4", ptr @"*github.com/goplus/llgo/cl/_testgo/abimethod.struct$F3FioEGWwXQRUdV6xoxVUEDjRNgBQIpL0XIyBECp088")
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %4, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5, ptr %0, 1
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %6)
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, 0
  %9 = getelementptr ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  %11 = insertvalue { ptr, ptr } undef, ptr %10, 0
  %12 = insertvalue { ptr, ptr } %11, ptr %7, 1
  %13 = extractvalue { ptr, ptr } %12, 1
  %14 = extractvalue { ptr, ptr } %12, 0
  %15 = call i64 %14(ptr %13)
  %16 = icmp ne i64 %15, 100
  br i1 %16, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 20 }, ptr %17, align 8
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %17, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %18)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymous6"() {
_llgo_0:
  %0 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %0, i8 0, i64 16, i1 false)
  %1 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 0
  %2 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %3, i32 0, i32 0
  store i64 100, ptr %4, align 4
  store i64 10, ptr %1, align 4
  store ptr %3, ptr %2, align 8
  %5 = load { i64, ptr }, ptr %0, align 8
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { i64, ptr } %5, ptr %6, align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$GIQLduxo5T_xLwYbboAKy8LzikHgsGzb7WxrkOH3Lr4", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$mRfo5gQx8vKF1DvrL24XRoyvI_ttVDcwc1JYMRxWfb8")
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %7, 0
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, ptr %6, 1
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %9)
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, 0
  %12 = getelementptr ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  %14 = insertvalue { ptr, ptr } undef, ptr %13, 0
  %15 = insertvalue { ptr, ptr } %14, ptr %10, 1
  %16 = extractvalue { ptr, ptr } %15, 1
  %17 = extractvalue { ptr, ptr } %15, 0
  %18 = call i64 %17(ptr %16)
  %19 = icmp ne i64 %18, 100
  br i1 %19, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 20 }, ptr %20, align 8
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %20, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %21)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymous7"() {
_llgo_0:
  %0 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %0, i8 0, i64 16, i1 false)
  %1 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 0
  %2 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %3, i32 0, i32 0
  store i64 100, ptr %4, align 4
  store i64 10, ptr %1, align 4
  store ptr %3, ptr %2, align 8
  %5 = load { i64, ptr }, ptr %0, align 8
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { i64, ptr } %5, ptr %6, align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$58AxoxqQ6sGUOM73FOqFrXsMlgxkU4HGd-S1Wl-ssYw", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$mRfo5gQx8vKF1DvrL24XRoyvI_ttVDcwc1JYMRxWfb8")
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %7, 0
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, ptr %6, 1
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %9)
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, 0
  %12 = getelementptr ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  %14 = insertvalue { ptr, ptr } undef, ptr %13, 0
  %15 = insertvalue { ptr, ptr } %14, ptr %10, 1
  %16 = extractvalue { ptr, ptr } %15, 1
  %17 = extractvalue { ptr, ptr } %15, 0
  %18 = call i64 %17(ptr %16)
  %19 = icmp ne i64 %18, 100
  br i1 %19, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 20 }, ptr %20, align 8
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %20, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %21)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %9)
  %23 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, 0
  %24 = getelementptr ptr, ptr %23, i64 4
  %25 = load ptr, ptr %24, align 8
  %26 = insertvalue { ptr, ptr } undef, ptr %25, 0
  %27 = insertvalue { ptr, ptr } %26, ptr %22, 1
  %28 = extractvalue { ptr, ptr } %27, 1
  %29 = extractvalue { ptr, ptr } %27, 0
  %30 = call i64 %29(ptr %28)
  %31 = icmp ne i64 %30, 100
  br i1 %31, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 20 }, ptr %32, align 8
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %32, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %33)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymous8"() {
_llgo_0:
  %0 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %0, i8 0, i64 16, i1 false)
  %1 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 0
  %2 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %3, i32 0, i32 0
  store i64 100, ptr %4, align 4
  store i64 10, ptr %1, align 4
  store ptr %3, ptr %2, align 8
  %5 = load { i64, ptr }, ptr %0, align 8
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { i64, ptr } %5, ptr %6, align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.iface$kT5SIXt45Cspjl04Bof3DZVSOIltlDo-njpk6KqtZvA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$mRfo5gQx8vKF1DvrL24XRoyvI_ttVDcwc1JYMRxWfb8")
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %7, 0
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, ptr %6, 1
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %9)
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, 0
  %12 = getelementptr ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  %14 = insertvalue { ptr, ptr } undef, ptr %13, 0
  %15 = insertvalue { ptr, ptr } %14, ptr %10, 1
  %16 = extractvalue { ptr, ptr } %15, 1
  %17 = extractvalue { ptr, ptr } %15, 0
  %18 = call i64 %17(ptr %16)
  %19 = icmp ne i64 %18, 100
  br i1 %19, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 20 }, ptr %20, align 8
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %20, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %21)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %9)
  %23 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, 0
  %24 = getelementptr ptr, ptr %23, i64 4
  %25 = load ptr, ptr %24, align 8
  %26 = insertvalue { ptr, ptr } undef, ptr %25, 0
  %27 = insertvalue { ptr, ptr } %26, ptr %22, 1
  %28 = extractvalue { ptr, ptr } %27, 1
  %29 = extractvalue { ptr, ptr } %27, 0
  %30 = call i64 %29(ptr %28)
  %31 = icmp ne i64 %30, 100
  br i1 %31, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 20 }, ptr %32, align 8
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %32, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %33)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %9)
  %35 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, 0
  %36 = getelementptr ptr, ptr %35, i64 5
  %37 = load ptr, ptr %36, align 8
  %38 = insertvalue { ptr, ptr } undef, ptr %37, 0
  %39 = insertvalue { ptr, ptr } %38, ptr %34, 1
  %40 = extractvalue { ptr, ptr } %39, 1
  %41 = extractvalue { ptr, ptr } %39, 0
  %42 = call i64 %41(ptr %40)
  %43 = icmp ne i64 %42, 100
  br i1 %43, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 20 }, ptr %44, align 8
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %44, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %45)
  unreachable

_llgo_6:                                          ; preds = %_llgo_4
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymousBuffer"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %1 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 0
  %2 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %3 = call ptr @bytes.NewBufferString(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 5 })
  store i64 10, ptr %1, align 4
  store ptr %3, ptr %2, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U", ptr @"*github.com/goplus/llgo/cl/_testgo/abimethod.struct$RGW016k7zllXgGPm1CvD5-IBe-9lphOOTCFtYyDGLjY")
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %4, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5, ptr %0, 1
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %6)
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, 0
  %9 = getelementptr ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  %11 = insertvalue { ptr, ptr } undef, ptr %10, 0
  %12 = insertvalue { ptr, ptr } %11, ptr %7, 1
  %13 = extractvalue { ptr, ptr } %12, 1
  %14 = extractvalue { ptr, ptr } %12, 0
  %15 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %14(ptr %13)
  %16 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %15, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 5 })
  %17 = xor i1 %16, true
  br i1 %17, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @95, i64 25 }, ptr %18, align 8
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %18, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %19)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.testGeneric"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uinGjIxPTfzB5e5h5gH-0VIvLl5rQdJ_yx2UsrxQqds", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/abimethod.Pointer[any]")
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %1, 0
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, ptr %0, 1
  %4 = call ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.testGeneric$1"()
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %3)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, 0
  %7 = getelementptr ptr, ptr %6, i64 4
  %8 = load ptr, ptr %7, align 8
  %9 = insertvalue { ptr, ptr } undef, ptr %8, 0
  %10 = insertvalue { ptr, ptr } %9, ptr %5, 1
  %11 = extractvalue { ptr, ptr } %10, 1
  %12 = extractvalue { ptr, ptr } %10, 0
  call void %12(ptr %11, ptr %4)
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %3)
  %14 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, 0
  %15 = getelementptr ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  %17 = insertvalue { ptr, ptr } undef, ptr %16, 0
  %18 = insertvalue { ptr, ptr } %17, ptr %13, 1
  %19 = extractvalue { ptr, ptr } %18, 1
  %20 = extractvalue { ptr, ptr } %18, 0
  %21 = call ptr %20(ptr %19)
  %22 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %21, align 8
  %23 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %22, 0
  %24 = icmp eq ptr %23, @_llgo_int
  br i1 %24, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_3
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @109, i64 17 }, ptr %25, align 8
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %25, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %26)
  unreachable

_llgo_2:                                          ; preds = %_llgo_3
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %27 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %22, 1
  %28 = ptrtoint ptr %27 to i64
  %29 = icmp ne i64 %28, 100
  br i1 %29, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_0
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @108, i64 40 }, ptr %30, align 8
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %30, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %31)
  unreachable
}

define ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.testGeneric$1"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 100 to ptr) }, ptr %0, align 8
  ret ptr %0
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.testNamed1"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %0, i32 0, i32 0
  store i64 100, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$WkyTd7mXEW0USaC6FIo7OG9IdUUyjAJl_h3PFrMEtHc", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/abimethod.T")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %0, 1
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %4)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, 0
  %7 = getelementptr ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = insertvalue { ptr, ptr } undef, ptr %8, 0
  %10 = insertvalue { ptr, ptr } %9, ptr %5, 1
  %11 = extractvalue { ptr, ptr } %10, 1
  %12 = extractvalue { ptr, ptr } %10, 0
  %13 = call i64 %12(ptr %11)
  %14 = icmp ne i64 %13, 100
  br i1 %14, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @110, i64 16 }, ptr %15, align 8
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %15, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %16)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.testNamed2"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/cl/_testgo/abimethod.T", align 8
  call void @llvm.memset(ptr %0, i8 0, i64 8, i1 false)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %0, i32 0, i32 0
  store i64 100, ptr %1, align 4
  %2 = load %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %0, align 4
  %3 = extractvalue %"github.com/goplus/llgo/cl/_testgo/abimethod.T" %2, 0
  %4 = inttoptr i64 %3 to ptr
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$WkyTd7mXEW0USaC6FIo7OG9IdUUyjAJl_h3PFrMEtHc", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/abimethod.T")
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %5, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, ptr %4, 1
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %7)
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, 0
  %10 = getelementptr ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  %12 = insertvalue { ptr, ptr } undef, ptr %11, 0
  %13 = insertvalue { ptr, ptr } %12, ptr %8, 1
  %14 = extractvalue { ptr, ptr } %13, 1
  %15 = extractvalue { ptr, ptr } %13, 0
  %16 = call i64 %15(ptr %14)
  %17 = icmp ne i64 %16, 100
  br i1 %17, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @111, i64 16 }, ptr %18, align 8
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %18, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %19)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.testNamed3"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %0, i32 0, i32 0
  store i64 100, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$GIQLduxo5T_xLwYbboAKy8LzikHgsGzb7WxrkOH3Lr4", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/abimethod.T")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %0, 1
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %4)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, 0
  %7 = getelementptr ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = insertvalue { ptr, ptr } undef, ptr %8, 0
  %10 = insertvalue { ptr, ptr } %9, ptr %5, 1
  %11 = extractvalue { ptr, ptr } %10, 1
  %12 = extractvalue { ptr, ptr } %10, 0
  %13 = call i64 %12(ptr %11)
  %14 = icmp ne i64 %13, 100
  br i1 %14, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @112, i64 16 }, ptr %15, align 8
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %15, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %16)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @bytes.init()

declare void @fmt.init()

declare void @"sync/atomic.init"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo1"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %2 = load ptr, ptr %1, align 8
  %3 = load %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %2, align 4
  %4 = call i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.T.Demo1"(%"github.com/goplus/llgo/cl/_testgo/abimethod.T" %3)
  ret i64 %4
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo2"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %2 = load ptr, ptr %1, align 8
  %3 = call i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).Demo2"(ptr %2)
  ret i64 %3
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.demo3"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %2 = load ptr, ptr %1, align 8
  %3 = call i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).demo3"(ptr %2)
  ret i64 %3
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo1"({ i64, ptr } %0) {
_llgo_0:
  %1 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %1, align 8
  %2 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = load %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %3, align 4
  %5 = call i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.T.Demo1"(%"github.com/goplus/llgo/cl/_testgo/abimethod.T" %4)
  ret i64 %5
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo2"({ i64, ptr } %0) {
_llgo_0:
  %1 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %1, align 8
  %2 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = call i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).Demo2"(ptr %3)
  ret i64 %4
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.demo3"({ i64, ptr } %0) {
_llgo_0:
  %1 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %1, align 8
  %2 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = call i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).demo3"(ptr %3)
  ret i64 %4
}

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

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo1"({ i64, %"github.com/goplus/llgo/cl/_testgo/abimethod.T" } %0) {
_llgo_0:
  %1 = alloca { i64, %"github.com/goplus/llgo/cl/_testgo/abimethod.T" }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store { i64, %"github.com/goplus/llgo/cl/_testgo/abimethod.T" } %0, ptr %1, align 4
  %2 = getelementptr inbounds { i64, %"github.com/goplus/llgo/cl/_testgo/abimethod.T" }, ptr %1, i32 0, i32 1
  %3 = load %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %2, align 4
  %4 = call i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.T.Demo1"(%"github.com/goplus/llgo/cl/_testgo/abimethod.T" %3)
  ret i64 %4
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo1"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds { i64, %"github.com/goplus/llgo/cl/_testgo/abimethod.T" }, ptr %0, i32 0, i32 1
  %2 = load %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %1, align 4
  %3 = call i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.T.Demo1"(%"github.com/goplus/llgo/cl/_testgo/abimethod.T" %2)
  ret i64 %3
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo2"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds { i64, %"github.com/goplus/llgo/cl/_testgo/abimethod.T" }, ptr %0, i32 0, i32 1
  %2 = call i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).Demo2"(ptr %1)
  ret i64 %2
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; github.com/goplus/llgo/cl/_testgo/abimethod.T}.demo3"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds { i64, %"github.com/goplus/llgo/cl/_testgo/abimethod.T" }, ptr %0, i32 0, i32 1
  %2 = call i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).demo3"(ptr %1)
  ret i64 %2
}

declare ptr @bytes.NewBufferString(%"github.com/goplus/llgo/runtime/internal/runtime.String")

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Available"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %2 = load ptr, ptr %1, align 8
  %3 = call i64 @"bytes.(*Buffer).Available"(ptr %2)
  ret i64 %3
}

define %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.AvailableBuffer"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %2 = load ptr, ptr %1, align 8
  %3 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"bytes.(*Buffer).AvailableBuffer"(ptr %2)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3
}

define %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Bytes"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %2 = load ptr, ptr %1, align 8
  %3 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"bytes.(*Buffer).Bytes"(ptr %2)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Cap"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %2 = load ptr, ptr %1, align 8
  %3 = call i64 @"bytes.(*Buffer).Cap"(ptr %2)
  ret i64 %3
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Grow"(ptr %0, i64 %1) {
_llgo_0:
  %2 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  call void @"bytes.(*Buffer).Grow"(ptr %3, i64 %1)
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Len"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %2 = load ptr, ptr %1, align 8
  %3 = call i64 @"bytes.(*Buffer).Len"(ptr %2)
  ret i64 %3
}

define %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Next"(ptr %0, i64 %1) {
_llgo_0:
  %2 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"bytes.(*Buffer).Next"(ptr %3, i64 %1)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Read"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).Read"(ptr %3, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1)
  %5 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %4, 0
  %6 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %4, 1
  %7 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %5, 0
  %8 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %7, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %8
}

define { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadByte"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %2 = load ptr, ptr %1, align 8
  %3 = call { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).ReadByte"(ptr %2)
  %4 = extractvalue { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %3, 0
  %5 = extractvalue { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %3, 1
  %6 = insertvalue { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i8 %4, 0
  %7 = insertvalue { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %6, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5, 1
  ret { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %7
}

define { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadBytes"(ptr %0, i8 %1) {
_llgo_0:
  %2 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = call { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).ReadBytes"(ptr %3, i8 %1)
  %5 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %4, 0
  %6 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %4, 1
  %7 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, 0
  %8 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %7, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, 1
  ret { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %8
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadFrom"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1) {
_llgo_0:
  %2 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).ReadFrom"(ptr %3, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  %5 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %4, 0
  %6 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %4, 1
  %7 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %5, 0
  %8 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %7, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %8
}

define { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadRune"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %2 = load ptr, ptr %1, align 8
  %3 = call { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).ReadRune"(ptr %2)
  %4 = extractvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %3, 0
  %5 = extractvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %3, 1
  %6 = extractvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %3, 2
  %7 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i32 %4, 0
  %8 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %7, i64 %5, 1
  %9 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, 2
  ret { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %9
}

define { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadString"(ptr %0, i8 %1) {
_llgo_0:
  %2 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = call { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).ReadString"(ptr %3, i8 %1)
  %5 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %4, 0
  %6 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %4, 1
  %7 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" %5, 0
  %8 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %7, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, 1
  ret { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %8
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Reset"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %2 = load ptr, ptr %1, align 8
  call void @"bytes.(*Buffer).Reset"(ptr %2)
  ret void
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.String"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %2 = load ptr, ptr %1, align 8
  %3 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"bytes.(*Buffer).String"(ptr %2)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %3
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Truncate"(ptr %0, i64 %1) {
_llgo_0:
  %2 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  call void @"bytes.(*Buffer).Truncate"(ptr %3, i64 %1)
  ret void
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.UnreadByte"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %2 = load ptr, ptr %1, align 8
  %3 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"bytes.(*Buffer).UnreadByte"(ptr %2)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.UnreadRune"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %2 = load ptr, ptr %1, align 8
  %3 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"bytes.(*Buffer).UnreadRune"(ptr %2)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Write"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).Write"(ptr %3, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1)
  %5 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %4, 0
  %6 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %4, 1
  %7 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %5, 0
  %8 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %7, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %8
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.WriteByte"(ptr %0, i8 %1) {
_llgo_0:
  %2 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"bytes.(*Buffer).WriteByte"(ptr %3, i8 %1)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.WriteRune"(ptr %0, i32 %1) {
_llgo_0:
  %2 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).WriteRune"(ptr %3, i32 %1)
  %5 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %4, 0
  %6 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %4, 1
  %7 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %5, 0
  %8 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %7, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %8
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.WriteString"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  %2 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).WriteString"(ptr %3, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1)
  %5 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %4, 0
  %6 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %4, 1
  %7 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %5, 0
  %8 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %7, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %8
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.WriteTo"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1) {
_llgo_0:
  %2 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).WriteTo"(ptr %3, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  %5 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %4, 0
  %6 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %4, 1
  %7 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %5, 0
  %8 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %7, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %8
}

define i1 @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.empty"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %2 = load ptr, ptr %1, align 8
  %3 = call i1 @"bytes.(*Buffer).empty"(ptr %2)
  ret i1 %3
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.grow"(ptr %0, i64 %1) {
_llgo_0:
  %2 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = call i64 @"bytes.(*Buffer).grow"(ptr %3, i64 %1)
  ret i64 %4
}

define { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.readSlice"(ptr %0, i8 %1) {
_llgo_0:
  %2 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = call { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).readSlice"(ptr %3, i8 %1)
  %5 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %4, 0
  %6 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %4, 1
  %7 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, 0
  %8 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %7, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, 1
  ret { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %8
}

define { i64, i1 } @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.tryGrowByReslice"(ptr %0, i64 %1) {
_llgo_0:
  %2 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = call { i64, i1 } @"bytes.(*Buffer).tryGrowByReslice"(ptr %3, i64 %1)
  %5 = extractvalue { i64, i1 } %4, 0
  %6 = extractvalue { i64, i1 } %4, 1
  %7 = insertvalue { i64, i1 } undef, i64 %5, 0
  %8 = insertvalue { i64, i1 } %7, i1 %6, 1
  ret { i64, i1 } %8
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Available"({ i64, ptr } %0) {
_llgo_0:
  %1 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %1, align 8
  %2 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = call i64 @"bytes.(*Buffer).Available"(ptr %3)
  ret i64 %4
}

define %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.AvailableBuffer"({ i64, ptr } %0) {
_llgo_0:
  %1 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %1, align 8
  %2 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"bytes.(*Buffer).AvailableBuffer"(ptr %3)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4
}

define %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Bytes"({ i64, ptr } %0) {
_llgo_0:
  %1 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %1, align 8
  %2 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"bytes.(*Buffer).Bytes"(ptr %3)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Cap"({ i64, ptr } %0) {
_llgo_0:
  %1 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %1, align 8
  %2 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = call i64 @"bytes.(*Buffer).Cap"(ptr %3)
  ret i64 %4
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Grow"({ i64, ptr } %0, i64 %1) {
_llgo_0:
  %2 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %2, align 8
  %3 = getelementptr inbounds { i64, ptr }, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  call void @"bytes.(*Buffer).Grow"(ptr %4, i64 %1)
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Len"({ i64, ptr } %0) {
_llgo_0:
  %1 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %1, align 8
  %2 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = call i64 @"bytes.(*Buffer).Len"(ptr %3)
  ret i64 %4
}

define %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Next"({ i64, ptr } %0, i64 %1) {
_llgo_0:
  %2 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %2, align 8
  %3 = getelementptr inbounds { i64, ptr }, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"bytes.(*Buffer).Next"(ptr %4, i64 %1)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Read"({ i64, ptr } %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %2, align 8
  %3 = getelementptr inbounds { i64, ptr }, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).Read"(ptr %4, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1)
  %6 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %5, 0
  %7 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %5, 1
  %8 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %6, 0
  %9 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %9
}

define { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.ReadByte"({ i64, ptr } %0) {
_llgo_0:
  %1 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %1, align 8
  %2 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = call { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).ReadByte"(ptr %3)
  %5 = extractvalue { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %4, 0
  %6 = extractvalue { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %4, 1
  %7 = insertvalue { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i8 %5, 0
  %8 = insertvalue { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %7, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, 1
  ret { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %8
}

define { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.ReadBytes"({ i64, ptr } %0, i8 %1) {
_llgo_0:
  %2 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %2, align 8
  %3 = getelementptr inbounds { i64, ptr }, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = call { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).ReadBytes"(ptr %4, i8 %1)
  %6 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %5, 0
  %7 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %5, 1
  %8 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, 0
  %9 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, 1
  ret { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %9
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.ReadFrom"({ i64, ptr } %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1) {
_llgo_0:
  %2 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %2, align 8
  %3 = getelementptr inbounds { i64, ptr }, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).ReadFrom"(ptr %4, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  %6 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %5, 0
  %7 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %5, 1
  %8 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %6, 0
  %9 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %9
}

define { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.ReadRune"({ i64, ptr } %0) {
_llgo_0:
  %1 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %1, align 8
  %2 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = call { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).ReadRune"(ptr %3)
  %5 = extractvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %4, 0
  %6 = extractvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %4, 1
  %7 = extractvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %4, 2
  %8 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i32 %5, 0
  %9 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %8, i64 %6, 1
  %10 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %9, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, 2
  ret { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %10
}

define { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.ReadString"({ i64, ptr } %0, i8 %1) {
_llgo_0:
  %2 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %2, align 8
  %3 = getelementptr inbounds { i64, ptr }, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = call { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).ReadString"(ptr %4, i8 %1)
  %6 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %5, 0
  %7 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %5, 1
  %8 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" %6, 0
  %9 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, 1
  ret { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %9
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Reset"({ i64, ptr } %0) {
_llgo_0:
  %1 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %1, align 8
  %2 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  call void @"bytes.(*Buffer).Reset"(ptr %3)
  ret void
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.String"({ i64, ptr } %0) {
_llgo_0:
  %1 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %1, align 8
  %2 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"bytes.(*Buffer).String"(ptr %3)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %4
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Truncate"({ i64, ptr } %0, i64 %1) {
_llgo_0:
  %2 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %2, align 8
  %3 = getelementptr inbounds { i64, ptr }, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  call void @"bytes.(*Buffer).Truncate"(ptr %4, i64 %1)
  ret void
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.UnreadByte"({ i64, ptr } %0) {
_llgo_0:
  %1 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %1, align 8
  %2 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"bytes.(*Buffer).UnreadByte"(ptr %3)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.UnreadRune"({ i64, ptr } %0) {
_llgo_0:
  %1 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %1, align 8
  %2 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"bytes.(*Buffer).UnreadRune"(ptr %3)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Write"({ i64, ptr } %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %2, align 8
  %3 = getelementptr inbounds { i64, ptr }, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).Write"(ptr %4, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1)
  %6 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %5, 0
  %7 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %5, 1
  %8 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %6, 0
  %9 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %9
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.WriteByte"({ i64, ptr } %0, i8 %1) {
_llgo_0:
  %2 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %2, align 8
  %3 = getelementptr inbounds { i64, ptr }, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"bytes.(*Buffer).WriteByte"(ptr %4, i8 %1)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.WriteRune"({ i64, ptr } %0, i32 %1) {
_llgo_0:
  %2 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %2, align 8
  %3 = getelementptr inbounds { i64, ptr }, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).WriteRune"(ptr %4, i32 %1)
  %6 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %5, 0
  %7 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %5, 1
  %8 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %6, 0
  %9 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %9
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.WriteString"({ i64, ptr } %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  %2 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %2, align 8
  %3 = getelementptr inbounds { i64, ptr }, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).WriteString"(ptr %4, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1)
  %6 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %5, 0
  %7 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %5, 1
  %8 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %6, 0
  %9 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %9
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.WriteTo"({ i64, ptr } %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1) {
_llgo_0:
  %2 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %2, align 8
  %3 = getelementptr inbounds { i64, ptr }, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).WriteTo"(ptr %4, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  %6 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %5, 0
  %7 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %5, 1
  %8 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %6, 0
  %9 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %9
}

define i1 @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.empty"({ i64, ptr } %0) {
_llgo_0:
  %1 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %1, align 8
  %2 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = call i1 @"bytes.(*Buffer).empty"(ptr %3)
  ret i1 %4
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.grow"({ i64, ptr } %0, i64 %1) {
_llgo_0:
  %2 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %2, align 8
  %3 = getelementptr inbounds { i64, ptr }, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = call i64 @"bytes.(*Buffer).grow"(ptr %4, i64 %1)
  ret i64 %5
}

define { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.readSlice"({ i64, ptr } %0, i8 %1) {
_llgo_0:
  %2 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %2, align 8
  %3 = getelementptr inbounds { i64, ptr }, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = call { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).readSlice"(ptr %4, i8 %1)
  %6 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %5, 0
  %7 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %5, 1
  %8 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, 0
  %9 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, 1
  ret { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %9
}

define { i64, i1 } @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.tryGrowByReslice"({ i64, ptr } %0, i64 %1) {
_llgo_0:
  %2 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %2, align 8
  %3 = getelementptr inbounds { i64, ptr }, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = call { i64, i1 } @"bytes.(*Buffer).tryGrowByReslice"(ptr %4, i64 %1)
  %6 = extractvalue { i64, i1 } %5, 0
  %7 = extractvalue { i64, i1 } %5, 1
  %8 = insertvalue { i64, i1 } undef, i64 %6, 0
  %9 = insertvalue { i64, i1 } %8, i1 %7, 1
  ret { i64, i1 } %9
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  ret i1 %3
}

declare i64 @"bytes.(*Buffer).Available"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"bytes.(*Buffer).AvailableBuffer"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"bytes.(*Buffer).Bytes"(ptr)

declare i64 @"bytes.(*Buffer).Cap"(ptr)

declare void @"bytes.(*Buffer).Grow"(ptr, i64)

declare i64 @"bytes.(*Buffer).Len"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"bytes.(*Buffer).Next"(ptr, i64)

declare { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).Read"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).ReadByte"(ptr)

declare { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).ReadBytes"(ptr, i8)

declare { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).ReadFrom"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).ReadRune"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr %1, ptr %2)
  ret i1 %3
}

declare { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).ReadString"(ptr, i8)

declare void @"bytes.(*Buffer).Reset"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"bytes.(*Buffer).String"(ptr)

declare void @"bytes.(*Buffer).Truncate"(ptr, i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"bytes.(*Buffer).UnreadByte"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"bytes.(*Buffer).UnreadRune"(ptr)

declare { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).Write"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"bytes.(*Buffer).WriteByte"(ptr, i8)

declare { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).WriteRune"(ptr, i32)

declare { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).WriteString"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).WriteTo"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare i1 @"bytes.(*Buffer).empty"(ptr)

declare i64 @"bytes.(*Buffer).grow"(ptr, i64)

declare { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).readSlice"(ptr, i8)

declare { i64, i1 } @"bytes.(*Buffer).tryGrowByReslice"(ptr, i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

define linkonce ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.(*Pointer[any]).Load"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/abimethod.Pointer[any]", ptr %0, i32 0, i32 1
  %2 = load atomic ptr, ptr %1 seq_cst, align 8
  ret ptr %2
}

define linkonce void @"github.com/goplus/llgo/cl/_testgo/abimethod.(*Pointer[any]).Store"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/abimethod.Pointer[any]", ptr %0, i32 0, i32 1
  store atomic ptr %1, ptr %2 seq_cst, align 8
  ret void
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal"(ptr, ptr, ptr)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
