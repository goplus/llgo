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
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testgo/abimethod.Pointer[any]" = type { [0 x ptr], ptr }

@"github.com/goplus/llgo/cl/_testgo/abimethod.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [45 x i8] c"github.com/goplus/llgo/cl/_testgo/abimethod.T", align 1
@1 = private unnamed_addr constant [5 x i8] c"Demo1", align 1
@"*github.com/goplus/llgo/cl/_testgo/abimethod.struct$mRfo5gQx8vKF1DvrL24XRoyvI_ttVDcwc1JYMRxWfb8" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -712860747, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 25 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$mRfo5gQx8vKF1DvrL24XRoyvI_ttVDcwc1JYMRxWfb8" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 43 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo1", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo1" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo2", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo2" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 49 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.demo3", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.demo3" }] }, align 8
@2 = private unnamed_addr constant [25 x i8] c"struct { m int; *main.T }", align 1
@"github.com/goplus/llgo/cl/_testgo/abimethod.struct$mRfo5gQx8vKF1DvrL24XRoyvI_ttVDcwc1JYMRxWfb8" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 235980794, i8 9, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$mRfo5gQx8vKF1DvrL24XRoyvI_ttVDcwc1JYMRxWfb8" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 25 }, ptr @"*github.com/goplus/llgo/cl/_testgo/abimethod.struct$mRfo5gQx8vKF1DvrL24XRoyvI_ttVDcwc1JYMRxWfb8" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$mRfo5gQx8vKF1DvrL24XRoyvI_ttVDcwc1JYMRxWfb8$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 43 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo1", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo1" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo2", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo2" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 49 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.demo3", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.demo3" }] }, align 8
@3 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testgo/abimethod", align 1
@4 = private unnamed_addr constant [1 x i8] c"m", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 2, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, ptr @"*_llgo_int" }, align 8
@5 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@6 = private unnamed_addr constant [1 x i8] c"T", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/abimethod.T" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -908752194, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/abimethod.T" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 43 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).Demo1", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).Demo1" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).Demo2", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).Demo2" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 49 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).demo3", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).demo3" }] }, align 8
@7 = private unnamed_addr constant [6 x i8] c"main.T", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/abimethod.T" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -666093743, i8 13, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/abimethod.T" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/abimethod.T" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).Demo1", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.T.Demo1" }] }, align 8
@8 = private unnamed_addr constant [1 x i8] c"n", align 1
@"github.com/goplus/llgo/cl/_testgo/abimethod.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2131144854, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 10 }, ptr @"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out", i64 1, i64 1 } }, align 8
@9 = private unnamed_addr constant [10 x i8] c"func() int", align 1
@"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1805835775, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 10 }, ptr null }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@10 = private unnamed_addr constant [5 x i8] c"Demo2", align 1
@11 = private unnamed_addr constant [5 x i8] c"demo3", align 1
@12 = private unnamed_addr constant [49 x i8] c"github.com/goplus/llgo/cl/_testgo/abimethod.demo3", align 1
@"github.com/goplus/llgo/cl/_testgo/abimethod.struct$mRfo5gQx8vKF1DvrL24XRoyvI_ttVDcwc1JYMRxWfb8$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 1 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/abimethod.T", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true }], align 8
@"_llgo_iface$WkyTd7mXEW0USaC6FIo7OG9IdUUyjAJl_h3PFrMEtHc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1807485229, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 25 }, ptr @"*_llgo_iface$WkyTd7mXEW0USaC6FIo7OG9IdUUyjAJl_h3PFrMEtHc" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$WkyTd7mXEW0USaC6FIo7OG9IdUUyjAJl_h3PFrMEtHc$imethods", i64 1, i64 1 } }, align 8
@13 = private unnamed_addr constant [25 x i8] c"interface { Demo1() int }", align 1
@"*_llgo_iface$WkyTd7mXEW0USaC6FIo7OG9IdUUyjAJl_h3PFrMEtHc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 929086049, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 25 }, ptr null }, ptr @"_llgo_iface$WkyTd7mXEW0USaC6FIo7OG9IdUUyjAJl_h3PFrMEtHc" }, align 8
@"_llgo_iface$WkyTd7mXEW0USaC6FIo7OG9IdUUyjAJl_h3PFrMEtHc$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }], align 8
@14 = private unnamed_addr constant [20 x i8] c"testAnonymous1 error", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, ptr @"*_llgo_string" }, align 8
@15 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@16 = private unnamed_addr constant [20 x i8] c"testAnonymous2 error", align 1
@"github.com/goplus/llgo/cl/_testgo/abimethod.struct$F3FioEGWwXQRUdV6xoxVUEDjRNgBQIpL0XIyBECp088" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 179876865, i8 9, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$F3FioEGWwXQRUdV6xoxVUEDjRNgBQIpL0XIyBECp088" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 24 }, ptr @"*github.com/goplus/llgo/cl/_testgo/abimethod.struct$F3FioEGWwXQRUdV6xoxVUEDjRNgBQIpL0XIyBECp088" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$F3FioEGWwXQRUdV6xoxVUEDjRNgBQIpL0XIyBECp088$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo1", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo1" }] }, align 8
@17 = private unnamed_addr constant [24 x i8] c"struct { m int; main.T }", align 1
@"*github.com/goplus/llgo/cl/_testgo/abimethod.struct$F3FioEGWwXQRUdV6xoxVUEDjRNgBQIpL0XIyBECp088" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -343027978, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 24 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$F3FioEGWwXQRUdV6xoxVUEDjRNgBQIpL0XIyBECp088" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 43 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo1", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo1" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo2", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo2" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 49 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; github.com/goplus/llgo/cl/_testgo/abimethod.T}.demo3", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; github.com/goplus/llgo/cl/_testgo/abimethod.T}.demo3" }] }, align 8
@"github.com/goplus/llgo/cl/_testgo/abimethod.struct$F3FioEGWwXQRUdV6xoxVUEDjRNgBQIpL0XIyBECp088$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 1 }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/abimethod.T", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true }], align 8
@18 = private unnamed_addr constant [20 x i8] c"testAnonymous3 error", align 1
@19 = private unnamed_addr constant [20 x i8] c"testAnonymous4 error", align 1
@"_llgo_iface$GIQLduxo5T_xLwYbboAKy8LzikHgsGzb7WxrkOH3Lr4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1090904853, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 25 }, ptr @"*_llgo_iface$GIQLduxo5T_xLwYbboAKy8LzikHgsGzb7WxrkOH3Lr4" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$GIQLduxo5T_xLwYbboAKy8LzikHgsGzb7WxrkOH3Lr4$imethods", i64 1, i64 1 } }, align 8
@20 = private unnamed_addr constant [25 x i8] c"interface { Demo2() int }", align 1
@"*_llgo_iface$GIQLduxo5T_xLwYbboAKy8LzikHgsGzb7WxrkOH3Lr4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1063382362, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 25 }, ptr null }, ptr @"_llgo_iface$GIQLduxo5T_xLwYbboAKy8LzikHgsGzb7WxrkOH3Lr4" }, align 8
@"_llgo_iface$GIQLduxo5T_xLwYbboAKy8LzikHgsGzb7WxrkOH3Lr4$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }], align 8
@21 = private unnamed_addr constant [20 x i8] c"testAnonymous5 error", align 1
@22 = private unnamed_addr constant [20 x i8] c"testAnonymous6 error", align 1
@"_llgo_iface$58AxoxqQ6sGUOM73FOqFrXsMlgxkU4HGd-S1Wl-ssYw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 541709743, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 38 }, ptr @"*_llgo_iface$58AxoxqQ6sGUOM73FOqFrXsMlgxkU4HGd-S1Wl-ssYw" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$58AxoxqQ6sGUOM73FOqFrXsMlgxkU4HGd-S1Wl-ssYw$imethods", i64 2, i64 2 } }, align 8
@23 = private unnamed_addr constant [38 x i8] c"interface { Demo1() int; Demo2() int }", align 1
@"*_llgo_iface$58AxoxqQ6sGUOM73FOqFrXsMlgxkU4HGd-S1Wl-ssYw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 945986433, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 38 }, ptr null }, ptr @"_llgo_iface$58AxoxqQ6sGUOM73FOqFrXsMlgxkU4HGd-S1Wl-ssYw" }, align 8
@"_llgo_iface$58AxoxqQ6sGUOM73FOqFrXsMlgxkU4HGd-S1Wl-ssYw$imethods" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }], align 8
@24 = private unnamed_addr constant [20 x i8] c"testAnonymous7 error", align 1
@"github.com/goplus/llgo/cl/_testgo/abimethod.iface$kT5SIXt45Cspjl04Bof3DZVSOIltlDo-njpk6KqtZvA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -601152795, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 56 }, ptr @"*github.com/goplus/llgo/cl/_testgo/abimethod.iface$kT5SIXt45Cspjl04Bof3DZVSOIltlDo-njpk6KqtZvA" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.iface$kT5SIXt45Cspjl04Bof3DZVSOIltlDo-njpk6KqtZvA$imethods", i64 3, i64 3 } }, align 8
@25 = private unnamed_addr constant [56 x i8] c"interface { Demo1() int; Demo2() int; main.demo3() int }", align 1
@"*github.com/goplus/llgo/cl/_testgo/abimethod.iface$kT5SIXt45Cspjl04Bof3DZVSOIltlDo-njpk6KqtZvA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 162233315, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 56 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.iface$kT5SIXt45Cspjl04Bof3DZVSOIltlDo-njpk6KqtZvA" }, align 8
@"github.com/goplus/llgo/cl/_testgo/abimethod.iface$kT5SIXt45Cspjl04Bof3DZVSOIltlDo-njpk6KqtZvA$imethods" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 49 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }], align 8
@26 = private unnamed_addr constant [20 x i8] c"testAnonymous8 error", align 1
@27 = private unnamed_addr constant [5 x i8] c"hello", align 1
@"*github.com/goplus/llgo/cl/_testgo/abimethod.struct$RGW016k7zllXgGPm1CvD5-IBe-9lphOOTCFtYyDGLjY" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [27 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1554050967, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 31 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$RGW016k7zllXgGPm1CvD5-IBe-9lphOOTCFtYyDGLjY" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 43 }, i16 27, i16 23, i32 24 }, [27 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 9 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Available", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Available" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 15 }, ptr @"_llgo_func$Z_-7GWzB37LCYRTQLsSYmEihg_hqBK8o_GbT88pqnPY", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.AvailableBuffer", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.AvailableBuffer" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 5 }, ptr @"_llgo_func$Z_-7GWzB37LCYRTQLsSYmEihg_hqBK8o_GbT88pqnPY", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Bytes", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Bytes" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 3 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Cap", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Cap" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 4 }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Grow", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Grow" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 3 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Len", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Len" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 4 }, ptr @"_llgo_func$d4kMA_oCkLwnd1j8nVlv1hwRarEVuCIrDCpnHhDz9UY", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Next", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Next" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 4 }, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Read", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Read" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 8 }, ptr @"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadByte", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadByte" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 9 }, ptr @"_llgo_func$aJkaU3jhXr0Q2QraTe2_TTdupeMMW2MD66UwBxynRM0", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadBytes", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadBytes" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 8 }, ptr @"_llgo_func$uVmBDI0DMcrui3Q9y-g_hbtVN8JckQ18V2wmO5_G7A8", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadFrom", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadFrom" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 8 }, ptr @"_llgo_func$q-bw-_pPYBCXnr1TXIF8sOD4fVVzzIlpHqD-A13AB4Y", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadRune", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadRune" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 10 }, ptr @"_llgo_func$TBlCn7YTQdraI1HMiBWmkrqIGG-8UgD1UVyJy62Z_0o", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadString", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadString" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 5 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Reset", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Reset" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.String", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.String" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Truncate", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Truncate" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 10 }, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.UnreadByte", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.UnreadByte" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 10 }, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.UnreadRune", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.UnreadRune" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 5 }, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Write", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Write" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 9 }, ptr @"_llgo_func$w4tN9iibS_UimF5vLUWoKP0uAk2tJZF26VqETo_8LVg", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.WriteByte", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.WriteByte" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 9 }, ptr @"_llgo_func$uf8yw1UkUdbDuCneSpNKIq_NThWIEVE7f1IYfJGz_bw", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.WriteRune", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.WriteRune" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 11 }, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.WriteString", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.WriteString" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 7 }, ptr @"_llgo_func$vSv85k0UY6JWccAc3T-lvdCx9J-4GM-oZC9zGLrxW1M", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.WriteTo", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.WriteTo" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @84, i64 11 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.empty", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.empty" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @88, i64 10 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.grow", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.grow" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @91, i64 15 }, ptr @"_llgo_func$aJkaU3jhXr0Q2QraTe2_TTdupeMMW2MD66UwBxynRM0", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.readSlice", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.readSlice" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @93, i64 22 }, ptr @"_llgo_func$qVJ5SH6qhXP_h0AM41vpBGzQEMp-fQIfvwQEJy5NI8M", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.tryGrowByReslice", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.tryGrowByReslice" }] }, align 8
@28 = private unnamed_addr constant [31 x i8] c"struct { m int; *bytes.Buffer }", align 1
@"github.com/goplus/llgo/cl/_testgo/abimethod.struct$RGW016k7zllXgGPm1CvD5-IBe-9lphOOTCFtYyDGLjY" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [27 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1137763463, i8 9, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$RGW016k7zllXgGPm1CvD5-IBe-9lphOOTCFtYyDGLjY" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 31 }, ptr @"*github.com/goplus/llgo/cl/_testgo/abimethod.struct$RGW016k7zllXgGPm1CvD5-IBe-9lphOOTCFtYyDGLjY" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$RGW016k7zllXgGPm1CvD5-IBe-9lphOOTCFtYyDGLjY$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 43 }, i16 27, i16 23, i32 24 }, [27 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 9 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Available", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Available" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 15 }, ptr @"_llgo_func$Z_-7GWzB37LCYRTQLsSYmEihg_hqBK8o_GbT88pqnPY", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.AvailableBuffer", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.AvailableBuffer" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 5 }, ptr @"_llgo_func$Z_-7GWzB37LCYRTQLsSYmEihg_hqBK8o_GbT88pqnPY", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Bytes", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Bytes" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 3 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Cap", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Cap" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 4 }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Grow", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Grow" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 3 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Len", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Len" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 4 }, ptr @"_llgo_func$d4kMA_oCkLwnd1j8nVlv1hwRarEVuCIrDCpnHhDz9UY", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Next", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Next" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 4 }, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Read", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Read" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 8 }, ptr @"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadByte", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.ReadByte" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 9 }, ptr @"_llgo_func$aJkaU3jhXr0Q2QraTe2_TTdupeMMW2MD66UwBxynRM0", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadBytes", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.ReadBytes" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 8 }, ptr @"_llgo_func$uVmBDI0DMcrui3Q9y-g_hbtVN8JckQ18V2wmO5_G7A8", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadFrom", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.ReadFrom" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 8 }, ptr @"_llgo_func$q-bw-_pPYBCXnr1TXIF8sOD4fVVzzIlpHqD-A13AB4Y", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadRune", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.ReadRune" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 10 }, ptr @"_llgo_func$TBlCn7YTQdraI1HMiBWmkrqIGG-8UgD1UVyJy62Z_0o", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadString", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.ReadString" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 5 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Reset", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Reset" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.String", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.String" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Truncate", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Truncate" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 10 }, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.UnreadByte", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.UnreadByte" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 10 }, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.UnreadRune", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.UnreadRune" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 5 }, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Write", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Write" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 9 }, ptr @"_llgo_func$w4tN9iibS_UimF5vLUWoKP0uAk2tJZF26VqETo_8LVg", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.WriteByte", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.WriteByte" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 9 }, ptr @"_llgo_func$uf8yw1UkUdbDuCneSpNKIq_NThWIEVE7f1IYfJGz_bw", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.WriteRune", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.WriteRune" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 11 }, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.WriteString", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.WriteString" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 7 }, ptr @"_llgo_func$vSv85k0UY6JWccAc3T-lvdCx9J-4GM-oZC9zGLrxW1M", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.WriteTo", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.WriteTo" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @84, i64 11 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.empty", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.empty" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @88, i64 10 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.grow", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.grow" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @91, i64 15 }, ptr @"_llgo_func$aJkaU3jhXr0Q2QraTe2_TTdupeMMW2MD66UwBxynRM0", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.readSlice", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.readSlice" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @93, i64 22 }, ptr @"_llgo_func$qVJ5SH6qhXP_h0AM41vpBGzQEMp-fQIfvwQEJy5NI8M", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.tryGrowByReslice", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.tryGrowByReslice" }] }, align 8
@29 = private unnamed_addr constant [6 x i8] c"Buffer", align 1
@"*_llgo_bytes.Buffer" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [27 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 258663788, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 12 }, ptr null }, ptr @_llgo_bytes.Buffer }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 5 }, i16 27, i16 23, i32 24 }, [27 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 9 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"bytes.(*Buffer).Available", ptr @"bytes.(*Buffer).Available" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 15 }, ptr @"_llgo_func$Z_-7GWzB37LCYRTQLsSYmEihg_hqBK8o_GbT88pqnPY", ptr @"bytes.(*Buffer).AvailableBuffer", ptr @"bytes.(*Buffer).AvailableBuffer" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 5 }, ptr @"_llgo_func$Z_-7GWzB37LCYRTQLsSYmEihg_hqBK8o_GbT88pqnPY", ptr @"bytes.(*Buffer).Bytes", ptr @"bytes.(*Buffer).Bytes" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 3 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"bytes.(*Buffer).Cap", ptr @"bytes.(*Buffer).Cap" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 4 }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", ptr @"bytes.(*Buffer).Grow", ptr @"bytes.(*Buffer).Grow" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 3 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"bytes.(*Buffer).Len", ptr @"bytes.(*Buffer).Len" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 4 }, ptr @"_llgo_func$d4kMA_oCkLwnd1j8nVlv1hwRarEVuCIrDCpnHhDz9UY", ptr @"bytes.(*Buffer).Next", ptr @"bytes.(*Buffer).Next" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 4 }, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", ptr @"bytes.(*Buffer).Read", ptr @"bytes.(*Buffer).Read" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 8 }, ptr @"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ", ptr @"bytes.(*Buffer).ReadByte", ptr @"bytes.(*Buffer).ReadByte" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 9 }, ptr @"_llgo_func$aJkaU3jhXr0Q2QraTe2_TTdupeMMW2MD66UwBxynRM0", ptr @"bytes.(*Buffer).ReadBytes", ptr @"bytes.(*Buffer).ReadBytes" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 8 }, ptr @"_llgo_func$uVmBDI0DMcrui3Q9y-g_hbtVN8JckQ18V2wmO5_G7A8", ptr @"bytes.(*Buffer).ReadFrom", ptr @"bytes.(*Buffer).ReadFrom" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 8 }, ptr @"_llgo_func$q-bw-_pPYBCXnr1TXIF8sOD4fVVzzIlpHqD-A13AB4Y", ptr @"bytes.(*Buffer).ReadRune", ptr @"bytes.(*Buffer).ReadRune" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 10 }, ptr @"_llgo_func$TBlCn7YTQdraI1HMiBWmkrqIGG-8UgD1UVyJy62Z_0o", ptr @"bytes.(*Buffer).ReadString", ptr @"bytes.(*Buffer).ReadString" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 5 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"bytes.(*Buffer).Reset", ptr @"bytes.(*Buffer).Reset" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"bytes.(*Buffer).String", ptr @"bytes.(*Buffer).String" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", ptr @"bytes.(*Buffer).Truncate", ptr @"bytes.(*Buffer).Truncate" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 10 }, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", ptr @"bytes.(*Buffer).UnreadByte", ptr @"bytes.(*Buffer).UnreadByte" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 10 }, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", ptr @"bytes.(*Buffer).UnreadRune", ptr @"bytes.(*Buffer).UnreadRune" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 5 }, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", ptr @"bytes.(*Buffer).Write", ptr @"bytes.(*Buffer).Write" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 9 }, ptr @"_llgo_func$w4tN9iibS_UimF5vLUWoKP0uAk2tJZF26VqETo_8LVg", ptr @"bytes.(*Buffer).WriteByte", ptr @"bytes.(*Buffer).WriteByte" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 9 }, ptr @"_llgo_func$uf8yw1UkUdbDuCneSpNKIq_NThWIEVE7f1IYfJGz_bw", ptr @"bytes.(*Buffer).WriteRune", ptr @"bytes.(*Buffer).WriteRune" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 11 }, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", ptr @"bytes.(*Buffer).WriteString", ptr @"bytes.(*Buffer).WriteString" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 7 }, ptr @"_llgo_func$vSv85k0UY6JWccAc3T-lvdCx9J-4GM-oZC9zGLrxW1M", ptr @"bytes.(*Buffer).WriteTo", ptr @"bytes.(*Buffer).WriteTo" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @84, i64 11 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"bytes.(*Buffer).empty", ptr @"bytes.(*Buffer).empty" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @88, i64 10 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr @"bytes.(*Buffer).grow", ptr @"bytes.(*Buffer).grow" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @91, i64 15 }, ptr @"_llgo_func$aJkaU3jhXr0Q2QraTe2_TTdupeMMW2MD66UwBxynRM0", ptr @"bytes.(*Buffer).readSlice", ptr @"bytes.(*Buffer).readSlice" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @93, i64 22 }, ptr @"_llgo_func$qVJ5SH6qhXP_h0AM41vpBGzQEMp-fQIfvwQEJy5NI8M", ptr @"bytes.(*Buffer).tryGrowByReslice", ptr @"bytes.(*Buffer).tryGrowByReslice" }] }, align 8
@30 = private unnamed_addr constant [12 x i8] c"bytes.Buffer", align 1
@_llgo_bytes.Buffer = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 40, i64 0, i32 661676552, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 12 }, ptr @"*_llgo_bytes.Buffer" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 5 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$8M6lRFZ7Fk2XCr2laNI9Y7uQtk2A8VDBrezMuq2Fkuo$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 5 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@31 = private unnamed_addr constant [5 x i8] c"bytes", align 1
@32 = private unnamed_addr constant [3 x i8] c"buf", align 1
@"[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 370346748, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 7 }, ptr @"*[]_llgo_uint8" }, ptr @_llgo_uint8 }, align 8
@33 = private unnamed_addr constant [7 x i8] c"[]uint8", align 1
@"*[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2143776929, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 7 }, ptr null }, ptr @"[]_llgo_uint8" }, align 8
@_llgo_uint8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 269156761, i8 12, i8 1, i8 1, i8 8, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 5 }, ptr @"*_llgo_uint8" }, align 8
@34 = private unnamed_addr constant [5 x i8] c"uint8", align 1
@"*_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1277858201, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 5 }, ptr null }, ptr @_llgo_uint8 }, align 8
@35 = private unnamed_addr constant [3 x i8] c"off", align 1
@36 = private unnamed_addr constant [8 x i8] c"lastRead", align 1
@_llgo_bytes.readOp = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 1507423333, i8 13, i8 1, i8 1, i8 3, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 12 }, ptr @"*_llgo_bytes.readOp" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 5 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@37 = private unnamed_addr constant [12 x i8] c"bytes.readOp", align 1
@"*_llgo_bytes.readOp" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1082688598, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 12 }, ptr null }, ptr @_llgo_bytes.readOp }, align 8
@"github.com/goplus/llgo/cl/_testgo/abimethod.struct$8M6lRFZ7Fk2XCr2laNI9Y7uQtk2A8VDBrezMuq2Fkuo$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 3 }, ptr @"[]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 3 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 8 }, ptr @_llgo_bytes.readOp, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@38 = private unnamed_addr constant [9 x i8] c"Available", align 1
@39 = private unnamed_addr constant [15 x i8] c"AvailableBuffer", align 1
@"_llgo_func$Z_-7GWzB37LCYRTQLsSYmEihg_hqBK8o_GbT88pqnPY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -153447421, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 14 }, ptr @"*_llgo_func$Z_-7GWzB37LCYRTQLsSYmEihg_hqBK8o_GbT88pqnPY" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$Z_-7GWzB37LCYRTQLsSYmEihg_hqBK8o_GbT88pqnPY$out", i64 1, i64 1 } }, align 8
@40 = private unnamed_addr constant [14 x i8] c"func() []uint8", align 1
@"*_llgo_func$Z_-7GWzB37LCYRTQLsSYmEihg_hqBK8o_GbT88pqnPY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1574747178, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 14 }, ptr null }, ptr @"_llgo_func$Z_-7GWzB37LCYRTQLsSYmEihg_hqBK8o_GbT88pqnPY" }, align 8
@"_llgo_func$Z_-7GWzB37LCYRTQLsSYmEihg_hqBK8o_GbT88pqnPY$out" = weak_odr constant [1 x ptr] [ptr @"[]_llgo_uint8"], align 8
@41 = private unnamed_addr constant [5 x i8] c"Bytes", align 1
@42 = private unnamed_addr constant [3 x i8] c"Cap", align 1
@43 = private unnamed_addr constant [4 x i8] c"Grow", align 1
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -637187458, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 9 }, ptr @"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@44 = private unnamed_addr constant [9 x i8] c"func(int)", align 1
@"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 735356155, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 9 }, ptr null }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@45 = private unnamed_addr constant [3 x i8] c"Len", align 1
@46 = private unnamed_addr constant [4 x i8] c"Next", align 1
@"_llgo_func$d4kMA_oCkLwnd1j8nVlv1hwRarEVuCIrDCpnHhDz9UY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -875118098, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 17 }, ptr @"*_llgo_func$d4kMA_oCkLwnd1j8nVlv1hwRarEVuCIrDCpnHhDz9UY" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$d4kMA_oCkLwnd1j8nVlv1hwRarEVuCIrDCpnHhDz9UY$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$d4kMA_oCkLwnd1j8nVlv1hwRarEVuCIrDCpnHhDz9UY$out", i64 1, i64 1 } }, align 8
@47 = private unnamed_addr constant [17 x i8] c"func(int) []uint8", align 1
@"*_llgo_func$d4kMA_oCkLwnd1j8nVlv1hwRarEVuCIrDCpnHhDz9UY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1809495648, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 17 }, ptr null }, ptr @"_llgo_func$d4kMA_oCkLwnd1j8nVlv1hwRarEVuCIrDCpnHhDz9UY" }, align 8
@"_llgo_func$d4kMA_oCkLwnd1j8nVlv1hwRarEVuCIrDCpnHhDz9UY$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_func$d4kMA_oCkLwnd1j8nVlv1hwRarEVuCIrDCpnHhDz9UY$out" = weak_odr constant [1 x ptr] [ptr @"[]_llgo_uint8"], align 8
@48 = private unnamed_addr constant [4 x i8] c"Read", align 1
@"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -58533757, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 26 }, ptr @"*_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk$out", i64 2, i64 2 } }, align 8
@49 = private unnamed_addr constant [26 x i8] c"func([]uint8) (int, error)", align 1
@"*_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1244675479, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 26 }, ptr null }, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk" }, align 8
@"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk$in" = weak_odr constant [1 x ptr] [ptr @"[]_llgo_uint8"], align 8
@_llgo_error = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1462738452, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 5 }, ptr @"*_llgo_error" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU$imethods", i64 1, i64 1 } }, align 8
@50 = private unnamed_addr constant [5 x i8] c"error", align 1
@"*_llgo_error" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1621558991, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 5 }, ptr null }, ptr @_llgo_error }, align 8
@51 = private unnamed_addr constant [5 x i8] c"Error", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1419376263, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 13 }, ptr @"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out", i64 1, i64 1 } }, align 8
@52 = private unnamed_addr constant [13 x i8] c"func() string", align 1
@"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1900367307, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 13 }, ptr null }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 5 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }], align 8
@"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk$out" = weak_odr constant [2 x ptr] [ptr @_llgo_int, ptr @_llgo_error], align 8
@53 = private unnamed_addr constant [8 x i8] c"ReadByte", align 1
@"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1499372428, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 21 }, ptr @"*_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ$out", i64 2, i64 2 } }, align 8
@54 = private unnamed_addr constant [21 x i8] c"func() (uint8, error)", align 1
@"*_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1164205677, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 21 }, ptr null }, ptr @"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ" }, align 8
@"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ$out" = weak_odr constant [2 x ptr] [ptr @_llgo_uint8, ptr @_llgo_error], align 8
@55 = private unnamed_addr constant [9 x i8] c"ReadBytes", align 1
@"_llgo_func$aJkaU3jhXr0Q2QraTe2_TTdupeMMW2MD66UwBxynRM0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1659702664, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 28 }, ptr @"*_llgo_func$aJkaU3jhXr0Q2QraTe2_TTdupeMMW2MD66UwBxynRM0" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$aJkaU3jhXr0Q2QraTe2_TTdupeMMW2MD66UwBxynRM0$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$aJkaU3jhXr0Q2QraTe2_TTdupeMMW2MD66UwBxynRM0$out", i64 2, i64 2 } }, align 8
@56 = private unnamed_addr constant [28 x i8] c"func(uint8) ([]uint8, error)", align 1
@"*_llgo_func$aJkaU3jhXr0Q2QraTe2_TTdupeMMW2MD66UwBxynRM0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2010891442, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 28 }, ptr null }, ptr @"_llgo_func$aJkaU3jhXr0Q2QraTe2_TTdupeMMW2MD66UwBxynRM0" }, align 8
@"_llgo_func$aJkaU3jhXr0Q2QraTe2_TTdupeMMW2MD66UwBxynRM0$in" = weak_odr constant [1 x ptr] [ptr @_llgo_uint8], align 8
@"_llgo_func$aJkaU3jhXr0Q2QraTe2_TTdupeMMW2MD66UwBxynRM0$out" = weak_odr constant [2 x ptr] [ptr @"[]_llgo_uint8", ptr @_llgo_error], align 8
@57 = private unnamed_addr constant [8 x i8] c"ReadFrom", align 1
@"_llgo_func$uVmBDI0DMcrui3Q9y-g_hbtVN8JckQ18V2wmO5_G7A8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1635781323, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 30 }, ptr @"*_llgo_func$uVmBDI0DMcrui3Q9y-g_hbtVN8JckQ18V2wmO5_G7A8" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$uVmBDI0DMcrui3Q9y-g_hbtVN8JckQ18V2wmO5_G7A8$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$uVmBDI0DMcrui3Q9y-g_hbtVN8JckQ18V2wmO5_G7A8$out", i64 2, i64 2 } }, align 8
@58 = private unnamed_addr constant [30 x i8] c"func(io.Reader) (int64, error)", align 1
@"*_llgo_func$uVmBDI0DMcrui3Q9y-g_hbtVN8JckQ18V2wmO5_G7A8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1930979199, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 30 }, ptr null }, ptr @"_llgo_func$uVmBDI0DMcrui3Q9y-g_hbtVN8JckQ18V2wmO5_G7A8" }, align 8
@_llgo_io.Reader = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1885455791, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 9 }, ptr @"*_llgo_io.Reader" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$uycIKA3bbxRhudEjW1hHKWKdLqHQsCVy8NdW1bkQmNw$imethods", i64 1, i64 1 } }, align 8
@59 = private unnamed_addr constant [9 x i8] c"io.Reader", align 1
@"*_llgo_io.Reader" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 760453616, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 9 }, ptr null }, ptr @_llgo_io.Reader }, align 8
@"_llgo_iface$uycIKA3bbxRhudEjW1hHKWKdLqHQsCVy8NdW1bkQmNw$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 4 }, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk" }], align 8
@"_llgo_func$uVmBDI0DMcrui3Q9y-g_hbtVN8JckQ18V2wmO5_G7A8$in" = weak_odr constant [1 x ptr] [ptr @_llgo_io.Reader], align 8
@_llgo_int64 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 394795202, i8 12, i8 8, i8 8, i8 6, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 5 }, ptr @"*_llgo_int64" }, align 8
@60 = private unnamed_addr constant [5 x i8] c"int64", align 1
@"*_llgo_int64" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1901231210, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 5 }, ptr null }, ptr @_llgo_int64 }, align 8
@"_llgo_func$uVmBDI0DMcrui3Q9y-g_hbtVN8JckQ18V2wmO5_G7A8$out" = weak_odr constant [2 x ptr] [ptr @_llgo_int64, ptr @_llgo_error], align 8
@61 = private unnamed_addr constant [8 x i8] c"ReadRune", align 1
@"_llgo_func$q-bw-_pPYBCXnr1TXIF8sOD4fVVzzIlpHqD-A13AB4Y" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1043083527, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 26 }, ptr @"*_llgo_func$q-bw-_pPYBCXnr1TXIF8sOD4fVVzzIlpHqD-A13AB4Y" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$q-bw-_pPYBCXnr1TXIF8sOD4fVVzzIlpHqD-A13AB4Y$out", i64 3, i64 3 } }, align 8
@62 = private unnamed_addr constant [26 x i8] c"func() (int32, int, error)", align 1
@"*_llgo_func$q-bw-_pPYBCXnr1TXIF8sOD4fVVzzIlpHqD-A13AB4Y" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 746645372, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 26 }, ptr null }, ptr @"_llgo_func$q-bw-_pPYBCXnr1TXIF8sOD4fVVzzIlpHqD-A13AB4Y" }, align 8
@_llgo_int32 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 4, i64 0, i32 1448558410, i8 12, i8 4, i8 4, i8 5, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal32", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 5 }, ptr @"*_llgo_int32" }, align 8
@63 = private unnamed_addr constant [5 x i8] c"int32", align 1
@"*_llgo_int32" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -38689692, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 5 }, ptr null }, ptr @_llgo_int32 }, align 8
@"_llgo_func$q-bw-_pPYBCXnr1TXIF8sOD4fVVzzIlpHqD-A13AB4Y$out" = weak_odr constant [3 x ptr] [ptr @_llgo_int32, ptr @_llgo_int, ptr @_llgo_error], align 8
@64 = private unnamed_addr constant [10 x i8] c"ReadString", align 1
@"_llgo_func$TBlCn7YTQdraI1HMiBWmkrqIGG-8UgD1UVyJy62Z_0o" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2138446355, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 27 }, ptr @"*_llgo_func$TBlCn7YTQdraI1HMiBWmkrqIGG-8UgD1UVyJy62Z_0o" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$TBlCn7YTQdraI1HMiBWmkrqIGG-8UgD1UVyJy62Z_0o$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$TBlCn7YTQdraI1HMiBWmkrqIGG-8UgD1UVyJy62Z_0o$out", i64 2, i64 2 } }, align 8
@65 = private unnamed_addr constant [27 x i8] c"func(uint8) (string, error)", align 1
@"*_llgo_func$TBlCn7YTQdraI1HMiBWmkrqIGG-8UgD1UVyJy62Z_0o" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1932918037, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 27 }, ptr null }, ptr @"_llgo_func$TBlCn7YTQdraI1HMiBWmkrqIGG-8UgD1UVyJy62Z_0o" }, align 8
@"_llgo_func$TBlCn7YTQdraI1HMiBWmkrqIGG-8UgD1UVyJy62Z_0o$in" = weak_odr constant [1 x ptr] [ptr @_llgo_uint8], align 8
@"_llgo_func$TBlCn7YTQdraI1HMiBWmkrqIGG-8UgD1UVyJy62Z_0o$out" = weak_odr constant [2 x ptr] [ptr @_llgo_string, ptr @_llgo_error], align 8
@66 = private unnamed_addr constant [5 x i8] c"Reset", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@67 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@68 = private unnamed_addr constant [6 x i8] c"String", align 1
@69 = private unnamed_addr constant [8 x i8] c"Truncate", align 1
@70 = private unnamed_addr constant [10 x i8] c"UnreadByte", align 1
@"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1183719404, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 12 }, ptr @"*_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w$out", i64 1, i64 1 } }, align 8
@71 = private unnamed_addr constant [12 x i8] c"func() error", align 1
@"*_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1571491799, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 12 }, ptr null }, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" }, align 8
@"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w$out" = weak_odr constant [1 x ptr] [ptr @_llgo_error], align 8
@72 = private unnamed_addr constant [10 x i8] c"UnreadRune", align 1
@73 = private unnamed_addr constant [5 x i8] c"Write", align 1
@74 = private unnamed_addr constant [9 x i8] c"WriteByte", align 1
@"_llgo_func$w4tN9iibS_UimF5vLUWoKP0uAk2tJZF26VqETo_8LVg" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1226479232, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 17 }, ptr @"*_llgo_func$w4tN9iibS_UimF5vLUWoKP0uAk2tJZF26VqETo_8LVg" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$w4tN9iibS_UimF5vLUWoKP0uAk2tJZF26VqETo_8LVg$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$w4tN9iibS_UimF5vLUWoKP0uAk2tJZF26VqETo_8LVg$out", i64 1, i64 1 } }, align 8
@75 = private unnamed_addr constant [17 x i8] c"func(uint8) error", align 1
@"*_llgo_func$w4tN9iibS_UimF5vLUWoKP0uAk2tJZF26VqETo_8LVg" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 513101056, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 17 }, ptr null }, ptr @"_llgo_func$w4tN9iibS_UimF5vLUWoKP0uAk2tJZF26VqETo_8LVg" }, align 8
@"_llgo_func$w4tN9iibS_UimF5vLUWoKP0uAk2tJZF26VqETo_8LVg$in" = weak_odr constant [1 x ptr] [ptr @_llgo_uint8], align 8
@"_llgo_func$w4tN9iibS_UimF5vLUWoKP0uAk2tJZF26VqETo_8LVg$out" = weak_odr constant [1 x ptr] [ptr @_llgo_error], align 8
@76 = private unnamed_addr constant [9 x i8] c"WriteRune", align 1
@"_llgo_func$uf8yw1UkUdbDuCneSpNKIq_NThWIEVE7f1IYfJGz_bw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1027172853, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 24 }, ptr @"*_llgo_func$uf8yw1UkUdbDuCneSpNKIq_NThWIEVE7f1IYfJGz_bw" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$uf8yw1UkUdbDuCneSpNKIq_NThWIEVE7f1IYfJGz_bw$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$uf8yw1UkUdbDuCneSpNKIq_NThWIEVE7f1IYfJGz_bw$out", i64 2, i64 2 } }, align 8
@77 = private unnamed_addr constant [24 x i8] c"func(int32) (int, error)", align 1
@"*_llgo_func$uf8yw1UkUdbDuCneSpNKIq_NThWIEVE7f1IYfJGz_bw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -841225112, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 24 }, ptr null }, ptr @"_llgo_func$uf8yw1UkUdbDuCneSpNKIq_NThWIEVE7f1IYfJGz_bw" }, align 8
@"_llgo_func$uf8yw1UkUdbDuCneSpNKIq_NThWIEVE7f1IYfJGz_bw$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int32], align 8
@"_llgo_func$uf8yw1UkUdbDuCneSpNKIq_NThWIEVE7f1IYfJGz_bw$out" = weak_odr constant [2 x ptr] [ptr @_llgo_int, ptr @_llgo_error], align 8
@78 = private unnamed_addr constant [11 x i8] c"WriteString", align 1
@"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -183202291, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 25 }, ptr @"*_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw$out", i64 2, i64 2 } }, align 8
@79 = private unnamed_addr constant [25 x i8] c"func(string) (int, error)", align 1
@"*_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1229992101, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 25 }, ptr null }, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw" }, align 8
@"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw$in" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw$out" = weak_odr constant [2 x ptr] [ptr @_llgo_int, ptr @_llgo_error], align 8
@80 = private unnamed_addr constant [7 x i8] c"WriteTo", align 1
@"_llgo_func$vSv85k0UY6JWccAc3T-lvdCx9J-4GM-oZC9zGLrxW1M" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1753174026, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 30 }, ptr @"*_llgo_func$vSv85k0UY6JWccAc3T-lvdCx9J-4GM-oZC9zGLrxW1M" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$vSv85k0UY6JWccAc3T-lvdCx9J-4GM-oZC9zGLrxW1M$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$vSv85k0UY6JWccAc3T-lvdCx9J-4GM-oZC9zGLrxW1M$out", i64 2, i64 2 } }, align 8
@81 = private unnamed_addr constant [30 x i8] c"func(io.Writer) (int64, error)", align 1
@"*_llgo_func$vSv85k0UY6JWccAc3T-lvdCx9J-4GM-oZC9zGLrxW1M" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1055881531, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 30 }, ptr null }, ptr @"_llgo_func$vSv85k0UY6JWccAc3T-lvdCx9J-4GM-oZC9zGLrxW1M" }, align 8
@_llgo_io.Writer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1423852385, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 9 }, ptr @"*_llgo_io.Writer" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$kr1iSWwMezh0B9LdQN0MhEZUNZvBlHPhlst95jAyxE0$imethods", i64 1, i64 1 } }, align 8
@82 = private unnamed_addr constant [9 x i8] c"io.Writer", align 1
@"*_llgo_io.Writer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1477879550, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 9 }, ptr null }, ptr @_llgo_io.Writer }, align 8
@"_llgo_iface$kr1iSWwMezh0B9LdQN0MhEZUNZvBlHPhlst95jAyxE0$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 5 }, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk" }], align 8
@"_llgo_func$vSv85k0UY6JWccAc3T-lvdCx9J-4GM-oZC9zGLrxW1M$in" = weak_odr constant [1 x ptr] [ptr @_llgo_io.Writer], align 8
@"_llgo_func$vSv85k0UY6JWccAc3T-lvdCx9J-4GM-oZC9zGLrxW1M$out" = weak_odr constant [2 x ptr] [ptr @_llgo_int64, ptr @_llgo_error], align 8
@83 = private unnamed_addr constant [5 x i8] c"empty", align 1
@84 = private unnamed_addr constant [11 x i8] c"bytes.empty", align 1
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -541022001, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 11 }, ptr @"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out", i64 1, i64 1 } }, align 8
@85 = private unnamed_addr constant [11 x i8] c"func() bool", align 1
@"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -367308996, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 11 }, ptr null }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, align 8
@_llgo_bool = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 554183389, i8 12, i8 1, i8 1, i8 1, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 4 }, ptr @"*_llgo_bool" }, align 8
@86 = private unnamed_addr constant [4 x i8] c"bool", align 1
@"*_llgo_bool" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1896950390, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 4 }, ptr null }, ptr @_llgo_bool }, align 8
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out" = weak_odr constant [1 x ptr] [ptr @_llgo_bool], align 8
@87 = private unnamed_addr constant [4 x i8] c"grow", align 1
@88 = private unnamed_addr constant [10 x i8] c"bytes.grow", align 1
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134531106, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @89, i64 13 }, ptr @"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out", i64 1, i64 1 } }, align 8
@89 = private unnamed_addr constant [13 x i8] c"func(int) int", align 1
@"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1763581361, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @89, i64 13 }, ptr null }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@90 = private unnamed_addr constant [9 x i8] c"readSlice", align 1
@91 = private unnamed_addr constant [15 x i8] c"bytes.readSlice", align 1
@92 = private unnamed_addr constant [16 x i8] c"tryGrowByReslice", align 1
@93 = private unnamed_addr constant [22 x i8] c"bytes.tryGrowByReslice", align 1
@"_llgo_func$qVJ5SH6qhXP_h0AM41vpBGzQEMp-fQIfvwQEJy5NI8M" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 559523889, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @94, i64 21 }, ptr @"*_llgo_func$qVJ5SH6qhXP_h0AM41vpBGzQEMp-fQIfvwQEJy5NI8M" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$qVJ5SH6qhXP_h0AM41vpBGzQEMp-fQIfvwQEJy5NI8M$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$qVJ5SH6qhXP_h0AM41vpBGzQEMp-fQIfvwQEJy5NI8M$out", i64 2, i64 2 } }, align 8
@94 = private unnamed_addr constant [21 x i8] c"func(int) (int, bool)", align 1
@"*_llgo_func$qVJ5SH6qhXP_h0AM41vpBGzQEMp-fQIfvwQEJy5NI8M" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1842714480, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @94, i64 21 }, ptr null }, ptr @"_llgo_func$qVJ5SH6qhXP_h0AM41vpBGzQEMp-fQIfvwQEJy5NI8M" }, align 8
@"_llgo_func$qVJ5SH6qhXP_h0AM41vpBGzQEMp-fQIfvwQEJy5NI8M$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_func$qVJ5SH6qhXP_h0AM41vpBGzQEMp-fQIfvwQEJy5NI8M$out" = weak_odr constant [2 x ptr] [ptr @_llgo_int, ptr @_llgo_bool], align 8
@"github.com/goplus/llgo/cl/_testgo/abimethod.struct$RGW016k7zllXgGPm1CvD5-IBe-9lphOOTCFtYyDGLjY$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 6 }, ptr @"*_llgo_bytes.Buffer", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true }], align 8
@"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -195205541, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @95, i64 29 }, ptr @"*_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U$imethods", i64 1, i64 1 } }, align 8
@95 = private unnamed_addr constant [29 x i8] c"interface { String() string }", align 1
@"*_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 876051709, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @95, i64 29 }, ptr null }, ptr @"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U" }, align 8
@"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }], align 8
@96 = private unnamed_addr constant [25 x i8] c"testAnonymousBuffer error", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/abimethod.Pointer[any]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1798654480, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @97, i64 17 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/abimethod.Pointer[any]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 43 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @104, i64 4 }, ptr @"_llgo_func$oqZ09zjnrQRdlivNw60EomwRoboDQbCk5_Y4MGDpQMQ", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.(*Pointer[any]).Load", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.(*Pointer[any]).Load" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @106, i64 5 }, ptr @"_llgo_func$Y8Pl6IHgSDuynhMRTXPlqFo9zl71SSTuMe0Wi5m8eWw", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.(*Pointer[any]).Store", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.(*Pointer[any]).Store" }] }, align 8
@97 = private unnamed_addr constant [17 x i8] c"main.Pointer[any]", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/abimethod.Pointer[any]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -858197093, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/abimethod.Pointer[any]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @97, i64 17 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/abimethod.Pointer[any]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$WF_Ikp6H-8IyobSlL849gp6AslXPTyT8oKnkzqHD2NA$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@98 = private unnamed_addr constant [1 x i8] c"_", align 1
@"[0]*_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 0, i64 0, i32 -1235244625, i8 8, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[0]*_llgo_any" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @99, i64 16 }, ptr @"*[0]*_llgo_any" }, ptr @"*_llgo_any", ptr @"[]*_llgo_any", i64 0 }, align 8
@99 = private unnamed_addr constant [16 x i8] c"[0]*interface {}", align 1
@"*[0]*_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1487017406, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @99, i64 16 }, ptr null }, ptr @"[0]*_llgo_any" }, align 8
@"*_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1741196194, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @100, i64 12 }, ptr null }, ptr @_llgo_any }, align 8
@100 = private unnamed_addr constant [12 x i8] c"interface {}", align 1
@_llgo_any = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1376530322, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @100, i64 12 }, ptr @"*_llgo_any" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@"[]*_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 1393026359, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @101, i64 15 }, ptr @"*[]*_llgo_any" }, ptr @"*_llgo_any" }, align 8
@101 = private unnamed_addr constant [15 x i8] c"[]*interface {}", align 1
@"*[]*_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1459791968, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @101, i64 15 }, ptr null }, ptr @"[]*_llgo_any" }, align 8
@102 = private unnamed_addr constant [1 x i8] c"v", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @103, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@103 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @103, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"github.com/goplus/llgo/cl/_testgo/abimethod.struct$WF_Ikp6H-8IyobSlL849gp6AslXPTyT8oKnkzqHD2NA$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @98, i64 1 }, ptr @"[0]*_llgo_any", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @102, i64 1 }, ptr @_llgo_Pointer, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@104 = private unnamed_addr constant [4 x i8] c"Load", align 1
@"_llgo_func$oqZ09zjnrQRdlivNw60EomwRoboDQbCk5_Y4MGDpQMQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1908794164, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @105, i64 20 }, ptr @"*_llgo_func$oqZ09zjnrQRdlivNw60EomwRoboDQbCk5_Y4MGDpQMQ" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$oqZ09zjnrQRdlivNw60EomwRoboDQbCk5_Y4MGDpQMQ$out", i64 1, i64 1 } }, align 8
@105 = private unnamed_addr constant [20 x i8] c"func() *interface {}", align 1
@"*_llgo_func$oqZ09zjnrQRdlivNw60EomwRoboDQbCk5_Y4MGDpQMQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 709309578, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @105, i64 20 }, ptr null }, ptr @"_llgo_func$oqZ09zjnrQRdlivNw60EomwRoboDQbCk5_Y4MGDpQMQ" }, align 8
@"_llgo_func$oqZ09zjnrQRdlivNw60EomwRoboDQbCk5_Y4MGDpQMQ$out" = weak_odr constant [1 x ptr] [ptr @"*_llgo_any"], align 8
@106 = private unnamed_addr constant [5 x i8] c"Store", align 1
@"_llgo_func$Y8Pl6IHgSDuynhMRTXPlqFo9zl71SSTuMe0Wi5m8eWw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1005812159, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @107, i64 19 }, ptr @"*_llgo_func$Y8Pl6IHgSDuynhMRTXPlqFo9zl71SSTuMe0Wi5m8eWw" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$Y8Pl6IHgSDuynhMRTXPlqFo9zl71SSTuMe0Wi5m8eWw$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@107 = private unnamed_addr constant [19 x i8] c"func(*interface {})", align 1
@"*_llgo_func$Y8Pl6IHgSDuynhMRTXPlqFo9zl71SSTuMe0Wi5m8eWw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1778721426, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @107, i64 19 }, ptr null }, ptr @"_llgo_func$Y8Pl6IHgSDuynhMRTXPlqFo9zl71SSTuMe0Wi5m8eWw" }, align 8
@"_llgo_func$Y8Pl6IHgSDuynhMRTXPlqFo9zl71SSTuMe0Wi5m8eWw$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_any"], align 8
@"_llgo_iface$uinGjIxPTfzB5e5h5gH-0VIvLl5rQdJ_yx2UsrxQqds" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 414101712, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @108, i64 56 }, ptr @"*_llgo_iface$uinGjIxPTfzB5e5h5gH-0VIvLl5rQdJ_yx2UsrxQqds" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$uinGjIxPTfzB5e5h5gH-0VIvLl5rQdJ_yx2UsrxQqds$imethods", i64 2, i64 2 } }, align 8
@108 = private unnamed_addr constant [56 x i8] c"interface { Load() *interface {}; Store(*interface {}) }", align 1
@"*_llgo_iface$uinGjIxPTfzB5e5h5gH-0VIvLl5rQdJ_yx2UsrxQqds" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -756921395, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @108, i64 56 }, ptr null }, ptr @"_llgo_iface$uinGjIxPTfzB5e5h5gH-0VIvLl5rQdJ_yx2UsrxQqds" }, align 8
@"_llgo_iface$uinGjIxPTfzB5e5h5gH-0VIvLl5rQdJ_yx2UsrxQqds$imethods" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @104, i64 4 }, ptr @"_llgo_func$oqZ09zjnrQRdlivNw60EomwRoboDQbCk5_Y4MGDpQMQ" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @106, i64 5 }, ptr @"_llgo_func$Y8Pl6IHgSDuynhMRTXPlqFo9zl71SSTuMe0Wi5m8eWw" }], align 8
@109 = private unnamed_addr constant [3 x i8] c"any", align 1
@110 = private unnamed_addr constant [17 x i8] c"testGeneric error", align 1
@111 = private unnamed_addr constant [16 x i8] c"testNamed1 error", align 1
@112 = private unnamed_addr constant [16 x i8] c"testNamed2 error", align 1
@113 = private unnamed_addr constant [16 x i8] c"testNamed4 error", align 1

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.T.Demo1"(%"github.com/goplus/llgo/cl/_testgo/abimethod.T" %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca %"github.com/goplus/llgo/cl/_testgo/abimethod.T", align 8
  call void @llvm.memset(ptr %3, i8 0, i64 8, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/abimethod.T" %0, ptr %3, align 4
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %3, i32 0, i32 0
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
  store %"github.com/goplus/llgo/cl/_testgo/abimethod.T" zeroinitializer, ptr %3, align 4
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  ret i64 %20
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).Demo1"(ptr %0) {
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
  %7 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakePanicWrapError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 45 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 })
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
  %20 = alloca %"github.com/goplus/llgo/cl/_testgo/abimethod.T", align 8
  call void @runtime.LoadHiddenPointee(ptr %20, i64 %19, i64 8)
  %21 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %20, align 4
  store %"github.com/goplus/llgo/cl/_testgo/abimethod.T" zeroinitializer, ptr %20, align 4
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.T.Demo1")
  %24 = call i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.T.Demo1"(%"github.com/goplus/llgo/cl/_testgo/abimethod.T" %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %23)
  ret i64 %24

_llgo_3:                                          ; No predecessors!
  unreachable
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).Demo2"(ptr %0) {
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %5, i32 0, i32 0
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
  %20 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %20, i64 %19, i64 8)
  %21 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load i64, ptr %20, align 4
  store i64 0, ptr %20, align 4
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  ret i64 %22
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).demo3"(ptr %0) {
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %5, i32 0, i32 0
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
  %20 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %20, i64 %19, i64 8)
  %21 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load i64, ptr %20, align 4
  store i64 0, ptr %20, align 4
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  ret i64 %22
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
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
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/abimethod.testGeneric"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %0)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/abimethod.testNamed1"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/abimethod.testNamed2"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %2)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/abimethod.testNamed3"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymous1"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %4)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymous2"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %5)
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymous3"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %6)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymous4"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %7)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymous5"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %8)
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymous6"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %9)
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymous7"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %10)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymous8"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %11)
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymousBuffer"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %12)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymous1"() {
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
  %10 = call i64 @runtime.AllocZHidden(i64 16)
  store i64 %10, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %10)
  %11 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = load i64, ptr %0, align 4
  %13 = and i64 %12, 72057594037927935
  %14 = lshr i64 %13, 17
  %15 = select i1 false, i64 0, i64 %14
  %16 = shl i64 %13, 39
  %17 = select i1 false, i64 0, i64 %16
  %18 = or i64 %15, %17
  %19 = and i64 %18, 72057594037927935
  %20 = xor i64 %19, 25399393228665167
  %21 = inttoptr i64 %20 to ptr
  %22 = icmp eq ptr %21, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = getelementptr inbounds { i64, ptr }, ptr %21, i32 0, i32 0
  %24 = ptrtoint ptr %23 to i64
  %25 = and i64 %24, 72057594037927935
  %26 = xor i64 %25, 25399393228665167
  %27 = shl i64 %26, 17
  %28 = select i1 false, i64 0, i64 %27
  %29 = lshr i64 %26, 39
  %30 = select i1 false, i64 0, i64 %29
  %31 = or i64 %28, %30
  %32 = and i64 %31, 72057594037927935
  %33 = or i64 %32, -6557241057451442176
  store i64 %33, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %33)
  call void @runtime.ClobberPointerRegs()
  %34 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %34)
  %35 = load i64, ptr %0, align 4
  %36 = and i64 %35, 72057594037927935
  %37 = lshr i64 %36, 17
  %38 = select i1 false, i64 0, i64 %37
  %39 = shl i64 %36, 39
  %40 = select i1 false, i64 0, i64 %39
  %41 = or i64 %38, %40
  %42 = and i64 %41, 72057594037927935
  %43 = xor i64 %42, 25399393228665167
  %44 = inttoptr i64 %43 to ptr
  %45 = icmp eq ptr %44, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = getelementptr inbounds { i64, ptr }, ptr %44, i32 0, i32 1
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
  store i64 %56, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %56)
  call void @runtime.ClobberPointerRegs()
  %57 = call i64 @runtime.AllocZHidden(i64 8)
  store i64 %57, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %57)
  %58 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %58)
  %59 = load i64, ptr %6, align 4
  %60 = and i64 %59, 72057594037927935
  %61 = lshr i64 %60, 17
  %62 = select i1 false, i64 0, i64 %61
  %63 = shl i64 %60, 39
  %64 = select i1 false, i64 0, i64 %63
  %65 = or i64 %62, %64
  %66 = and i64 %65, 72057594037927935
  %67 = xor i64 %66, 25399393228665167
  %68 = inttoptr i64 %67 to ptr
  %69 = icmp eq ptr %68, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %69)
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %68, i32 0, i32 0
  %71 = ptrtoint ptr %70 to i64
  %72 = and i64 %71, 72057594037927935
  %73 = xor i64 %72, 25399393228665167
  %74 = shl i64 %73, 17
  %75 = select i1 false, i64 0, i64 %74
  %76 = lshr i64 %73, 39
  %77 = select i1 false, i64 0, i64 %76
  %78 = or i64 %75, %77
  %79 = and i64 %78, 72057594037927935
  %80 = or i64 %79, -6557241057451442176
  store i64 %80, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %80)
  call void @runtime.ClobberPointerRegs()
  %81 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %81)
  %82 = load i64, ptr %8, align 4
  %83 = alloca i64, align 8
  store i64 100, ptr %83, align 4
  call void @runtime.StoreHiddenPointee(i64 %82, ptr %83, i64 8)
  store i64 0, ptr %83, align 4
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %84 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %84)
  %85 = load i64, ptr %2, align 4
  %86 = alloca i64, align 8
  store i64 10, ptr %86, align 4
  call void @runtime.StoreHiddenPointee(i64 %85, ptr %86, i64 8)
  store i64 0, ptr %86, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %87 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %87)
  %88 = load i64, ptr %4, align 4
  %89 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %89)
  %90 = load i64, ptr %6, align 4
  %91 = and i64 %90, 72057594037927935
  %92 = lshr i64 %91, 17
  %93 = select i1 false, i64 0, i64 %92
  %94 = shl i64 %91, 39
  %95 = select i1 false, i64 0, i64 %94
  %96 = or i64 %93, %95
  %97 = and i64 %96, 72057594037927935
  %98 = xor i64 %97, 25399393228665167
  %99 = inttoptr i64 %98 to ptr
  %100 = alloca ptr, align 8
  store ptr %99, ptr %100, align 8
  call void @runtime.StoreHiddenPointee(i64 %88, ptr %100, i64 8)
  store ptr null, ptr %100, align 8
  call void @runtime.TouchConservativeSlot(ptr %100, i64 8)
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %101 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %101)
  %102 = load i64, ptr %0, align 4
  %103 = and i64 %102, 72057594037927935
  %104 = lshr i64 %103, 17
  %105 = select i1 false, i64 0, i64 %104
  %106 = shl i64 %103, 39
  %107 = select i1 false, i64 0, i64 %106
  %108 = or i64 %105, %107
  %109 = and i64 %108, 72057594037927935
  %110 = xor i64 %109, 25399393228665167
  %111 = inttoptr i64 %110 to ptr
  %112 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$WkyTd7mXEW0USaC6FIo7OG9IdUUyjAJl_h3PFrMEtHc", ptr @"*github.com/goplus/llgo/cl/_testgo/abimethod.struct$mRfo5gQx8vKF1DvrL24XRoyvI_ttVDcwc1JYMRxWfb8")
  %113 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %112, 0
  %114 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %113, ptr %111, 1
  %115 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %114)
  %116 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %114, 0
  %117 = getelementptr ptr, ptr %116, i64 3
  %118 = load ptr, ptr %117, align 8
  %119 = insertvalue { ptr, ptr } undef, ptr %118, 0
  %120 = insertvalue { ptr, ptr } %119, ptr %115, 1
  %121 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %122 = extractvalue { ptr, ptr } %120, 1
  %123 = extractvalue { ptr, ptr } %120, 0
  %124 = call i64 %123(ptr %122)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %121)
  %125 = icmp ne i64 %124, 100
  br i1 %125, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %126 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 20 }, ptr %126, align 8
  %127 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %126, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %127)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void

_llgo_3:                                          ; No predecessors!
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymous2"() {
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
  %8 = alloca { i64, ptr }, align 8
  %9 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %9, i8 0, i64 16, i1 false)
  %10 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds { i64, ptr }, ptr %9, i32 0, i32 0
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 72057594037927935
  %14 = xor i64 %13, 25399393228665167
  %15 = shl i64 %14, 17
  %16 = select i1 false, i64 0, i64 %15
  %17 = lshr i64 %14, 39
  %18 = select i1 false, i64 0, i64 %17
  %19 = or i64 %16, %18
  %20 = and i64 %19, 72057594037927935
  %21 = or i64 %20, -6557241057451442176
  store i64 %21, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %21)
  call void @runtime.ClobberPointerRegs()
  %22 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = getelementptr inbounds { i64, ptr }, ptr %9, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i64
  %25 = and i64 %24, 72057594037927935
  %26 = xor i64 %25, 25399393228665167
  %27 = shl i64 %26, 17
  %28 = select i1 false, i64 0, i64 %27
  %29 = lshr i64 %26, 39
  %30 = select i1 false, i64 0, i64 %29
  %31 = or i64 %28, %30
  %32 = and i64 %31, 72057594037927935
  %33 = or i64 %32, -6557241057451442176
  store i64 %33, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %33)
  call void @runtime.ClobberPointerRegs()
  %34 = call i64 @runtime.AllocZHidden(i64 8)
  store i64 %34, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %34)
  %35 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %35)
  %36 = load i64, ptr %4, align 4
  %37 = and i64 %36, 72057594037927935
  %38 = lshr i64 %37, 17
  %39 = select i1 false, i64 0, i64 %38
  %40 = shl i64 %37, 39
  %41 = select i1 false, i64 0, i64 %40
  %42 = or i64 %39, %41
  %43 = and i64 %42, 72057594037927935
  %44 = xor i64 %43, 25399393228665167
  %45 = inttoptr i64 %44 to ptr
  %46 = icmp eq ptr %45, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %46)
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %45, i32 0, i32 0
  %48 = ptrtoint ptr %47 to i64
  %49 = and i64 %48, 72057594037927935
  %50 = xor i64 %49, 25399393228665167
  %51 = shl i64 %50, 17
  %52 = select i1 false, i64 0, i64 %51
  %53 = lshr i64 %50, 39
  %54 = select i1 false, i64 0, i64 %53
  %55 = or i64 %52, %54
  %56 = and i64 %55, 72057594037927935
  %57 = or i64 %56, -6557241057451442176
  store i64 %57, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %57)
  call void @runtime.ClobberPointerRegs()
  %58 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %58)
  %59 = load i64, ptr %6, align 4
  %60 = alloca i64, align 8
  store i64 100, ptr %60, align 4
  call void @runtime.StoreHiddenPointee(i64 %59, ptr %60, i64 8)
  store i64 0, ptr %60, align 4
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %61 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %61)
  %62 = load i64, ptr %0, align 4
  %63 = alloca i64, align 8
  store i64 10, ptr %63, align 4
  call void @runtime.StoreHiddenPointee(i64 %62, ptr %63, i64 8)
  store i64 0, ptr %63, align 4
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %64 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %64)
  %65 = load i64, ptr %2, align 4
  %66 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %66)
  %67 = load i64, ptr %4, align 4
  %68 = and i64 %67, 72057594037927935
  %69 = lshr i64 %68, 17
  %70 = select i1 false, i64 0, i64 %69
  %71 = shl i64 %68, 39
  %72 = select i1 false, i64 0, i64 %71
  %73 = or i64 %70, %72
  %74 = and i64 %73, 72057594037927935
  %75 = xor i64 %74, 25399393228665167
  %76 = inttoptr i64 %75 to ptr
  %77 = alloca ptr, align 8
  store ptr %76, ptr %77, align 8
  call void @runtime.StoreHiddenPointee(i64 %65, ptr %77, i64 8)
  store ptr null, ptr %77, align 8
  call void @runtime.TouchConservativeSlot(ptr %77, i64 8)
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %78 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %78)
  %79 = load { i64, ptr }, ptr %9, align 8
  store { i64, ptr } %79, ptr %8, align 8
  store { i64, ptr } zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  call void @runtime.ClobberPointerRegs()
  %80 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %80)
  %81 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$mRfo5gQx8vKF1DvrL24XRoyvI_ttVDcwc1JYMRxWfb8", ptr %81, ptr %9)
  %82 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$WkyTd7mXEW0USaC6FIo7OG9IdUUyjAJl_h3PFrMEtHc", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$mRfo5gQx8vKF1DvrL24XRoyvI_ttVDcwc1JYMRxWfb8")
  %83 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %82, 0
  %84 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %83, ptr %81, 1
  %85 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %84)
  %86 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %84, 0
  %87 = getelementptr ptr, ptr %86, i64 3
  %88 = load ptr, ptr %87, align 8
  %89 = insertvalue { ptr, ptr } undef, ptr %88, 0
  %90 = insertvalue { ptr, ptr } %89, ptr %85, 1
  %91 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store { i64, ptr } zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  call void @runtime.ClobberPointerRegs()
  %92 = extractvalue { ptr, ptr } %90, 1
  %93 = extractvalue { ptr, ptr } %90, 0
  %94 = call i64 %93(ptr %92)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %91)
  %95 = icmp ne i64 %94, 100
  br i1 %95, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %96 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 20 }, ptr %96, align 8
  %97 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %96, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %97)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void

_llgo_3:                                          ; No predecessors!
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymous3"() {
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
  %6 = alloca { i64, %"github.com/goplus/llgo/cl/_testgo/abimethod.T" }, align 8
  call void @llvm.memset(ptr %6, i8 0, i64 16, i1 false)
  %7 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = getelementptr inbounds { i64, %"github.com/goplus/llgo/cl/_testgo/abimethod.T" }, ptr %6, i32 0, i32 0
  %9 = ptrtoint ptr %8 to i64
  %10 = and i64 %9, 72057594037927935
  %11 = xor i64 %10, 25399393228665167
  %12 = shl i64 %11, 17
  %13 = select i1 false, i64 0, i64 %12
  %14 = lshr i64 %11, 39
  %15 = select i1 false, i64 0, i64 %14
  %16 = or i64 %13, %15
  %17 = and i64 %16, 72057594037927935
  %18 = or i64 %17, -6557241057451442176
  store i64 %18, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %18)
  call void @runtime.ClobberPointerRegs()
  %19 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = getelementptr inbounds { i64, %"github.com/goplus/llgo/cl/_testgo/abimethod.T" }, ptr %6, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i64
  %22 = and i64 %21, 72057594037927935
  %23 = xor i64 %22, 25399393228665167
  %24 = shl i64 %23, 17
  %25 = select i1 false, i64 0, i64 %24
  %26 = lshr i64 %23, 39
  %27 = select i1 false, i64 0, i64 %26
  %28 = or i64 %25, %27
  %29 = and i64 %28, 72057594037927935
  %30 = or i64 %29, -6557241057451442176
  store i64 %30, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %30)
  call void @runtime.ClobberPointerRegs()
  %31 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %31)
  %32 = load i64, ptr %2, align 4
  %33 = and i64 %32, 72057594037927935
  %34 = lshr i64 %33, 17
  %35 = select i1 false, i64 0, i64 %34
  %36 = shl i64 %33, 39
  %37 = select i1 false, i64 0, i64 %36
  %38 = or i64 %35, %37
  %39 = and i64 %38, 72057594037927935
  %40 = xor i64 %39, 25399393228665167
  %41 = inttoptr i64 %40 to ptr
  %42 = icmp eq ptr %41, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %42)
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %41, i32 0, i32 0
  %44 = ptrtoint ptr %43 to i64
  %45 = and i64 %44, 72057594037927935
  %46 = xor i64 %45, 25399393228665167
  %47 = shl i64 %46, 17
  %48 = select i1 false, i64 0, i64 %47
  %49 = lshr i64 %46, 39
  %50 = select i1 false, i64 0, i64 %49
  %51 = or i64 %48, %50
  %52 = and i64 %51, 72057594037927935
  %53 = or i64 %52, -6557241057451442176
  store i64 %53, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %53)
  call void @runtime.ClobberPointerRegs()
  %54 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %54)
  %55 = load i64, ptr %0, align 4
  %56 = alloca i64, align 8
  store i64 10, ptr %56, align 4
  call void @runtime.StoreHiddenPointee(i64 %55, ptr %56, i64 8)
  store i64 0, ptr %56, align 4
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %57 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %57)
  %58 = load i64, ptr %4, align 4
  %59 = alloca i64, align 8
  store i64 100, ptr %59, align 4
  call void @runtime.StoreHiddenPointee(i64 %58, ptr %59, i64 8)
  store i64 0, ptr %59, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %60 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %60)
  %61 = load { i64, %"github.com/goplus/llgo/cl/_testgo/abimethod.T" }, ptr %6, align 4
  store { i64, %"github.com/goplus/llgo/cl/_testgo/abimethod.T" } zeroinitializer, ptr %6, align 4
  call void @runtime.ClobberPointerRegs()
  %62 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %62)
  %63 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$F3FioEGWwXQRUdV6xoxVUEDjRNgBQIpL0XIyBECp088", ptr %63, ptr %6)
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$WkyTd7mXEW0USaC6FIo7OG9IdUUyjAJl_h3PFrMEtHc", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$F3FioEGWwXQRUdV6xoxVUEDjRNgBQIpL0XIyBECp088")
  %65 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %64, 0
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %65, ptr %63, 1
  %67 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %66)
  %68 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %66, 0
  %69 = getelementptr ptr, ptr %68, i64 3
  %70 = load ptr, ptr %69, align 8
  %71 = insertvalue { ptr, ptr } undef, ptr %70, 0
  %72 = insertvalue { ptr, ptr } %71, ptr %67, 1
  %73 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %74 = extractvalue { ptr, ptr } %72, 1
  %75 = extractvalue { ptr, ptr } %72, 0
  %76 = call i64 %75(ptr %74)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %73)
  %77 = icmp ne i64 %76, 100
  br i1 %77, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %78 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 20 }, ptr %78, align 8
  %79 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %78, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %79)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void

_llgo_3:                                          ; No predecessors!
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymous4"() {
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
  %8 = call i64 @runtime.AllocZHidden(i64 16)
  store i64 %8, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %8)
  %9 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = load i64, ptr %0, align 4
  %11 = and i64 %10, 72057594037927935
  %12 = lshr i64 %11, 17
  %13 = select i1 false, i64 0, i64 %12
  %14 = shl i64 %11, 39
  %15 = select i1 false, i64 0, i64 %14
  %16 = or i64 %13, %15
  %17 = and i64 %16, 72057594037927935
  %18 = xor i64 %17, 25399393228665167
  %19 = inttoptr i64 %18 to ptr
  %20 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = getelementptr inbounds { i64, %"github.com/goplus/llgo/cl/_testgo/abimethod.T" }, ptr %19, i32 0, i32 0
  %22 = ptrtoint ptr %21 to i64
  %23 = and i64 %22, 72057594037927935
  %24 = xor i64 %23, 25399393228665167
  %25 = shl i64 %24, 17
  %26 = select i1 false, i64 0, i64 %25
  %27 = lshr i64 %24, 39
  %28 = select i1 false, i64 0, i64 %27
  %29 = or i64 %26, %28
  %30 = and i64 %29, 72057594037927935
  %31 = or i64 %30, -6557241057451442176
  store i64 %31, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %31)
  call void @runtime.ClobberPointerRegs()
  %32 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %32)
  %33 = load i64, ptr %0, align 4
  %34 = and i64 %33, 72057594037927935
  %35 = lshr i64 %34, 17
  %36 = select i1 false, i64 0, i64 %35
  %37 = shl i64 %34, 39
  %38 = select i1 false, i64 0, i64 %37
  %39 = or i64 %36, %38
  %40 = and i64 %39, 72057594037927935
  %41 = xor i64 %40, 25399393228665167
  %42 = inttoptr i64 %41 to ptr
  %43 = icmp eq ptr %42, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = getelementptr inbounds { i64, %"github.com/goplus/llgo/cl/_testgo/abimethod.T" }, ptr %42, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i64
  %46 = and i64 %45, 72057594037927935
  %47 = xor i64 %46, 25399393228665167
  %48 = shl i64 %47, 17
  %49 = select i1 false, i64 0, i64 %48
  %50 = lshr i64 %47, 39
  %51 = select i1 false, i64 0, i64 %50
  %52 = or i64 %49, %51
  %53 = and i64 %52, 72057594037927935
  %54 = or i64 %53, -6557241057451442176
  store i64 %54, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %54)
  call void @runtime.ClobberPointerRegs()
  %55 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %55)
  %56 = load i64, ptr %4, align 4
  %57 = and i64 %56, 72057594037927935
  %58 = lshr i64 %57, 17
  %59 = select i1 false, i64 0, i64 %58
  %60 = shl i64 %57, 39
  %61 = select i1 false, i64 0, i64 %60
  %62 = or i64 %59, %61
  %63 = and i64 %62, 72057594037927935
  %64 = xor i64 %63, 25399393228665167
  %65 = inttoptr i64 %64 to ptr
  %66 = icmp eq ptr %65, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %66)
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %65, i32 0, i32 0
  %68 = ptrtoint ptr %67 to i64
  %69 = and i64 %68, 72057594037927935
  %70 = xor i64 %69, 25399393228665167
  %71 = shl i64 %70, 17
  %72 = select i1 false, i64 0, i64 %71
  %73 = lshr i64 %70, 39
  %74 = select i1 false, i64 0, i64 %73
  %75 = or i64 %72, %74
  %76 = and i64 %75, 72057594037927935
  %77 = or i64 %76, -6557241057451442176
  store i64 %77, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %77)
  call void @runtime.ClobberPointerRegs()
  %78 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %78)
  %79 = load i64, ptr %2, align 4
  %80 = alloca i64, align 8
  store i64 10, ptr %80, align 4
  call void @runtime.StoreHiddenPointee(i64 %79, ptr %80, i64 8)
  store i64 0, ptr %80, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %81 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %81)
  %82 = load i64, ptr %6, align 4
  %83 = alloca i64, align 8
  store i64 100, ptr %83, align 4
  call void @runtime.StoreHiddenPointee(i64 %82, ptr %83, i64 8)
  store i64 0, ptr %83, align 4
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %84 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %84)
  %85 = load i64, ptr %0, align 4
  %86 = and i64 %85, 72057594037927935
  %87 = lshr i64 %86, 17
  %88 = select i1 false, i64 0, i64 %87
  %89 = shl i64 %86, 39
  %90 = select i1 false, i64 0, i64 %89
  %91 = or i64 %88, %90
  %92 = and i64 %91, 72057594037927935
  %93 = xor i64 %92, 25399393228665167
  %94 = inttoptr i64 %93 to ptr
  %95 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$WkyTd7mXEW0USaC6FIo7OG9IdUUyjAJl_h3PFrMEtHc", ptr @"*github.com/goplus/llgo/cl/_testgo/abimethod.struct$F3FioEGWwXQRUdV6xoxVUEDjRNgBQIpL0XIyBECp088")
  %96 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %95, 0
  %97 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %96, ptr %94, 1
  %98 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %97)
  %99 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %97, 0
  %100 = getelementptr ptr, ptr %99, i64 3
  %101 = load ptr, ptr %100, align 8
  %102 = insertvalue { ptr, ptr } undef, ptr %101, 0
  %103 = insertvalue { ptr, ptr } %102, ptr %98, 1
  %104 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %105 = extractvalue { ptr, ptr } %103, 1
  %106 = extractvalue { ptr, ptr } %103, 0
  %107 = call i64 %106(ptr %105)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %104)
  %108 = icmp ne i64 %107, 100
  br i1 %108, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %109 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 20 }, ptr %109, align 8
  %110 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %109, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %110)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void

_llgo_3:                                          ; No predecessors!
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymous5"() {
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
  %8 = call i64 @runtime.AllocZHidden(i64 16)
  store i64 %8, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %8)
  %9 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = load i64, ptr %0, align 4
  %11 = and i64 %10, 72057594037927935
  %12 = lshr i64 %11, 17
  %13 = select i1 false, i64 0, i64 %12
  %14 = shl i64 %11, 39
  %15 = select i1 false, i64 0, i64 %14
  %16 = or i64 %13, %15
  %17 = and i64 %16, 72057594037927935
  %18 = xor i64 %17, 25399393228665167
  %19 = inttoptr i64 %18 to ptr
  %20 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = getelementptr inbounds { i64, %"github.com/goplus/llgo/cl/_testgo/abimethod.T" }, ptr %19, i32 0, i32 0
  %22 = ptrtoint ptr %21 to i64
  %23 = and i64 %22, 72057594037927935
  %24 = xor i64 %23, 25399393228665167
  %25 = shl i64 %24, 17
  %26 = select i1 false, i64 0, i64 %25
  %27 = lshr i64 %24, 39
  %28 = select i1 false, i64 0, i64 %27
  %29 = or i64 %26, %28
  %30 = and i64 %29, 72057594037927935
  %31 = or i64 %30, -6557241057451442176
  store i64 %31, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %31)
  call void @runtime.ClobberPointerRegs()
  %32 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %32)
  %33 = load i64, ptr %0, align 4
  %34 = and i64 %33, 72057594037927935
  %35 = lshr i64 %34, 17
  %36 = select i1 false, i64 0, i64 %35
  %37 = shl i64 %34, 39
  %38 = select i1 false, i64 0, i64 %37
  %39 = or i64 %36, %38
  %40 = and i64 %39, 72057594037927935
  %41 = xor i64 %40, 25399393228665167
  %42 = inttoptr i64 %41 to ptr
  %43 = icmp eq ptr %42, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = getelementptr inbounds { i64, %"github.com/goplus/llgo/cl/_testgo/abimethod.T" }, ptr %42, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i64
  %46 = and i64 %45, 72057594037927935
  %47 = xor i64 %46, 25399393228665167
  %48 = shl i64 %47, 17
  %49 = select i1 false, i64 0, i64 %48
  %50 = lshr i64 %47, 39
  %51 = select i1 false, i64 0, i64 %50
  %52 = or i64 %49, %51
  %53 = and i64 %52, 72057594037927935
  %54 = or i64 %53, -6557241057451442176
  store i64 %54, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %54)
  call void @runtime.ClobberPointerRegs()
  %55 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %55)
  %56 = load i64, ptr %4, align 4
  %57 = and i64 %56, 72057594037927935
  %58 = lshr i64 %57, 17
  %59 = select i1 false, i64 0, i64 %58
  %60 = shl i64 %57, 39
  %61 = select i1 false, i64 0, i64 %60
  %62 = or i64 %59, %61
  %63 = and i64 %62, 72057594037927935
  %64 = xor i64 %63, 25399393228665167
  %65 = inttoptr i64 %64 to ptr
  %66 = icmp eq ptr %65, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %66)
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %65, i32 0, i32 0
  %68 = ptrtoint ptr %67 to i64
  %69 = and i64 %68, 72057594037927935
  %70 = xor i64 %69, 25399393228665167
  %71 = shl i64 %70, 17
  %72 = select i1 false, i64 0, i64 %71
  %73 = lshr i64 %70, 39
  %74 = select i1 false, i64 0, i64 %73
  %75 = or i64 %72, %74
  %76 = and i64 %75, 72057594037927935
  %77 = or i64 %76, -6557241057451442176
  store i64 %77, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %77)
  call void @runtime.ClobberPointerRegs()
  %78 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %78)
  %79 = load i64, ptr %2, align 4
  %80 = alloca i64, align 8
  store i64 10, ptr %80, align 4
  call void @runtime.StoreHiddenPointee(i64 %79, ptr %80, i64 8)
  store i64 0, ptr %80, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %81 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %81)
  %82 = load i64, ptr %6, align 4
  %83 = alloca i64, align 8
  store i64 100, ptr %83, align 4
  call void @runtime.StoreHiddenPointee(i64 %82, ptr %83, i64 8)
  store i64 0, ptr %83, align 4
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %84 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %84)
  %85 = load i64, ptr %0, align 4
  %86 = and i64 %85, 72057594037927935
  %87 = lshr i64 %86, 17
  %88 = select i1 false, i64 0, i64 %87
  %89 = shl i64 %86, 39
  %90 = select i1 false, i64 0, i64 %89
  %91 = or i64 %88, %90
  %92 = and i64 %91, 72057594037927935
  %93 = xor i64 %92, 25399393228665167
  %94 = inttoptr i64 %93 to ptr
  %95 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$GIQLduxo5T_xLwYbboAKy8LzikHgsGzb7WxrkOH3Lr4", ptr @"*github.com/goplus/llgo/cl/_testgo/abimethod.struct$F3FioEGWwXQRUdV6xoxVUEDjRNgBQIpL0XIyBECp088")
  %96 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %95, 0
  %97 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %96, ptr %94, 1
  %98 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %97)
  %99 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %97, 0
  %100 = getelementptr ptr, ptr %99, i64 3
  %101 = load ptr, ptr %100, align 8
  %102 = insertvalue { ptr, ptr } undef, ptr %101, 0
  %103 = insertvalue { ptr, ptr } %102, ptr %98, 1
  %104 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %105 = extractvalue { ptr, ptr } %103, 1
  %106 = extractvalue { ptr, ptr } %103, 0
  %107 = call i64 %106(ptr %105)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %104)
  %108 = icmp ne i64 %107, 100
  br i1 %108, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %109 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 20 }, ptr %109, align 8
  %110 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %109, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %110)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void

_llgo_3:                                          ; No predecessors!
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymous6"() {
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
  %8 = alloca { i64, ptr }, align 8
  %9 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %9, i8 0, i64 16, i1 false)
  %10 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds { i64, ptr }, ptr %9, i32 0, i32 0
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 72057594037927935
  %14 = xor i64 %13, 25399393228665167
  %15 = shl i64 %14, 17
  %16 = select i1 false, i64 0, i64 %15
  %17 = lshr i64 %14, 39
  %18 = select i1 false, i64 0, i64 %17
  %19 = or i64 %16, %18
  %20 = and i64 %19, 72057594037927935
  %21 = or i64 %20, -6557241057451442176
  store i64 %21, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %21)
  call void @runtime.ClobberPointerRegs()
  %22 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = getelementptr inbounds { i64, ptr }, ptr %9, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i64
  %25 = and i64 %24, 72057594037927935
  %26 = xor i64 %25, 25399393228665167
  %27 = shl i64 %26, 17
  %28 = select i1 false, i64 0, i64 %27
  %29 = lshr i64 %26, 39
  %30 = select i1 false, i64 0, i64 %29
  %31 = or i64 %28, %30
  %32 = and i64 %31, 72057594037927935
  %33 = or i64 %32, -6557241057451442176
  store i64 %33, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %33)
  call void @runtime.ClobberPointerRegs()
  %34 = call i64 @runtime.AllocZHidden(i64 8)
  store i64 %34, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %34)
  %35 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %35)
  %36 = load i64, ptr %4, align 4
  %37 = and i64 %36, 72057594037927935
  %38 = lshr i64 %37, 17
  %39 = select i1 false, i64 0, i64 %38
  %40 = shl i64 %37, 39
  %41 = select i1 false, i64 0, i64 %40
  %42 = or i64 %39, %41
  %43 = and i64 %42, 72057594037927935
  %44 = xor i64 %43, 25399393228665167
  %45 = inttoptr i64 %44 to ptr
  %46 = icmp eq ptr %45, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %46)
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %45, i32 0, i32 0
  %48 = ptrtoint ptr %47 to i64
  %49 = and i64 %48, 72057594037927935
  %50 = xor i64 %49, 25399393228665167
  %51 = shl i64 %50, 17
  %52 = select i1 false, i64 0, i64 %51
  %53 = lshr i64 %50, 39
  %54 = select i1 false, i64 0, i64 %53
  %55 = or i64 %52, %54
  %56 = and i64 %55, 72057594037927935
  %57 = or i64 %56, -6557241057451442176
  store i64 %57, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %57)
  call void @runtime.ClobberPointerRegs()
  %58 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %58)
  %59 = load i64, ptr %6, align 4
  %60 = alloca i64, align 8
  store i64 100, ptr %60, align 4
  call void @runtime.StoreHiddenPointee(i64 %59, ptr %60, i64 8)
  store i64 0, ptr %60, align 4
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %61 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %61)
  %62 = load i64, ptr %0, align 4
  %63 = alloca i64, align 8
  store i64 10, ptr %63, align 4
  call void @runtime.StoreHiddenPointee(i64 %62, ptr %63, i64 8)
  store i64 0, ptr %63, align 4
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %64 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %64)
  %65 = load i64, ptr %2, align 4
  %66 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %66)
  %67 = load i64, ptr %4, align 4
  %68 = and i64 %67, 72057594037927935
  %69 = lshr i64 %68, 17
  %70 = select i1 false, i64 0, i64 %69
  %71 = shl i64 %68, 39
  %72 = select i1 false, i64 0, i64 %71
  %73 = or i64 %70, %72
  %74 = and i64 %73, 72057594037927935
  %75 = xor i64 %74, 25399393228665167
  %76 = inttoptr i64 %75 to ptr
  %77 = alloca ptr, align 8
  store ptr %76, ptr %77, align 8
  call void @runtime.StoreHiddenPointee(i64 %65, ptr %77, i64 8)
  store ptr null, ptr %77, align 8
  call void @runtime.TouchConservativeSlot(ptr %77, i64 8)
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %78 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %78)
  %79 = load { i64, ptr }, ptr %9, align 8
  store { i64, ptr } %79, ptr %8, align 8
  store { i64, ptr } zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  call void @runtime.ClobberPointerRegs()
  %80 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %80)
  %81 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$mRfo5gQx8vKF1DvrL24XRoyvI_ttVDcwc1JYMRxWfb8", ptr %81, ptr %9)
  %82 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$GIQLduxo5T_xLwYbboAKy8LzikHgsGzb7WxrkOH3Lr4", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$mRfo5gQx8vKF1DvrL24XRoyvI_ttVDcwc1JYMRxWfb8")
  %83 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %82, 0
  %84 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %83, ptr %81, 1
  %85 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %84)
  %86 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %84, 0
  %87 = getelementptr ptr, ptr %86, i64 3
  %88 = load ptr, ptr %87, align 8
  %89 = insertvalue { ptr, ptr } undef, ptr %88, 0
  %90 = insertvalue { ptr, ptr } %89, ptr %85, 1
  %91 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store { i64, ptr } zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  call void @runtime.ClobberPointerRegs()
  %92 = extractvalue { ptr, ptr } %90, 1
  %93 = extractvalue { ptr, ptr } %90, 0
  %94 = call i64 %93(ptr %92)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %91)
  %95 = icmp ne i64 %94, 100
  br i1 %95, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %96 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 20 }, ptr %96, align 8
  %97 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %96, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %97)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void

_llgo_3:                                          ; No predecessors!
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymous7"() {
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
  %8 = alloca { i64, ptr }, align 8
  %9 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %9, i8 0, i64 16, i1 false)
  %10 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds { i64, ptr }, ptr %9, i32 0, i32 0
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 72057594037927935
  %14 = xor i64 %13, 25399393228665167
  %15 = shl i64 %14, 17
  %16 = select i1 false, i64 0, i64 %15
  %17 = lshr i64 %14, 39
  %18 = select i1 false, i64 0, i64 %17
  %19 = or i64 %16, %18
  %20 = and i64 %19, 72057594037927935
  %21 = or i64 %20, -6557241057451442176
  store i64 %21, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %21)
  call void @runtime.ClobberPointerRegs()
  %22 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = getelementptr inbounds { i64, ptr }, ptr %9, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i64
  %25 = and i64 %24, 72057594037927935
  %26 = xor i64 %25, 25399393228665167
  %27 = shl i64 %26, 17
  %28 = select i1 false, i64 0, i64 %27
  %29 = lshr i64 %26, 39
  %30 = select i1 false, i64 0, i64 %29
  %31 = or i64 %28, %30
  %32 = and i64 %31, 72057594037927935
  %33 = or i64 %32, -6557241057451442176
  store i64 %33, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %33)
  call void @runtime.ClobberPointerRegs()
  %34 = call i64 @runtime.AllocZHidden(i64 8)
  store i64 %34, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %34)
  %35 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %35)
  %36 = load i64, ptr %4, align 4
  %37 = and i64 %36, 72057594037927935
  %38 = lshr i64 %37, 17
  %39 = select i1 false, i64 0, i64 %38
  %40 = shl i64 %37, 39
  %41 = select i1 false, i64 0, i64 %40
  %42 = or i64 %39, %41
  %43 = and i64 %42, 72057594037927935
  %44 = xor i64 %43, 25399393228665167
  %45 = inttoptr i64 %44 to ptr
  %46 = icmp eq ptr %45, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %46)
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %45, i32 0, i32 0
  %48 = ptrtoint ptr %47 to i64
  %49 = and i64 %48, 72057594037927935
  %50 = xor i64 %49, 25399393228665167
  %51 = shl i64 %50, 17
  %52 = select i1 false, i64 0, i64 %51
  %53 = lshr i64 %50, 39
  %54 = select i1 false, i64 0, i64 %53
  %55 = or i64 %52, %54
  %56 = and i64 %55, 72057594037927935
  %57 = or i64 %56, -6557241057451442176
  store i64 %57, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %57)
  call void @runtime.ClobberPointerRegs()
  %58 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %58)
  %59 = load i64, ptr %6, align 4
  %60 = alloca i64, align 8
  store i64 100, ptr %60, align 4
  call void @runtime.StoreHiddenPointee(i64 %59, ptr %60, i64 8)
  store i64 0, ptr %60, align 4
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %61 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %61)
  %62 = load i64, ptr %0, align 4
  %63 = alloca i64, align 8
  store i64 10, ptr %63, align 4
  call void @runtime.StoreHiddenPointee(i64 %62, ptr %63, i64 8)
  store i64 0, ptr %63, align 4
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %64 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %64)
  %65 = load i64, ptr %2, align 4
  %66 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %66)
  %67 = load i64, ptr %4, align 4
  %68 = and i64 %67, 72057594037927935
  %69 = lshr i64 %68, 17
  %70 = select i1 false, i64 0, i64 %69
  %71 = shl i64 %68, 39
  %72 = select i1 false, i64 0, i64 %71
  %73 = or i64 %70, %72
  %74 = and i64 %73, 72057594037927935
  %75 = xor i64 %74, 25399393228665167
  %76 = inttoptr i64 %75 to ptr
  %77 = alloca ptr, align 8
  store ptr %76, ptr %77, align 8
  call void @runtime.StoreHiddenPointee(i64 %65, ptr %77, i64 8)
  store ptr null, ptr %77, align 8
  call void @runtime.TouchConservativeSlot(ptr %77, i64 8)
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %78 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %78)
  %79 = load { i64, ptr }, ptr %9, align 8
  store { i64, ptr } %79, ptr %8, align 8
  store { i64, ptr } zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  call void @runtime.ClobberPointerRegs()
  %80 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %80)
  %81 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$mRfo5gQx8vKF1DvrL24XRoyvI_ttVDcwc1JYMRxWfb8", ptr %81, ptr %9)
  %82 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$58AxoxqQ6sGUOM73FOqFrXsMlgxkU4HGd-S1Wl-ssYw", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$mRfo5gQx8vKF1DvrL24XRoyvI_ttVDcwc1JYMRxWfb8")
  %83 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %82, 0
  %84 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %83, ptr %81, 1
  %85 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %84)
  %86 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %84, 0
  %87 = getelementptr ptr, ptr %86, i64 3
  %88 = load ptr, ptr %87, align 8
  %89 = insertvalue { ptr, ptr } undef, ptr %88, 0
  %90 = insertvalue { ptr, ptr } %89, ptr %85, 1
  %91 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %92 = extractvalue { ptr, ptr } %90, 1
  %93 = extractvalue { ptr, ptr } %90, 0
  %94 = call i64 %93(ptr %92)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %91)
  %95 = icmp ne i64 %94, 100
  br i1 %95, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %96 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 20 }, ptr %96, align 8
  %97 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %96, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %97)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %98 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %84)
  %99 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %84, 0
  %100 = getelementptr ptr, ptr %99, i64 4
  %101 = load ptr, ptr %100, align 8
  %102 = insertvalue { ptr, ptr } undef, ptr %101, 0
  %103 = insertvalue { ptr, ptr } %102, ptr %98, 1
  %104 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store { i64, ptr } zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  call void @runtime.ClobberPointerRegs()
  %105 = extractvalue { ptr, ptr } %103, 1
  %106 = extractvalue { ptr, ptr } %103, 0
  %107 = call i64 %106(ptr %105)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %104)
  %108 = icmp ne i64 %107, 100
  br i1 %108, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %109 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 20 }, ptr %109, align 8
  %110 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %109, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %110)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  ret void

_llgo_5:                                          ; No predecessors!
  unreachable

_llgo_6:                                          ; No predecessors!
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymous8"() {
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
  %8 = alloca { i64, ptr }, align 8
  %9 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %9, i8 0, i64 16, i1 false)
  %10 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds { i64, ptr }, ptr %9, i32 0, i32 0
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 72057594037927935
  %14 = xor i64 %13, 25399393228665167
  %15 = shl i64 %14, 17
  %16 = select i1 false, i64 0, i64 %15
  %17 = lshr i64 %14, 39
  %18 = select i1 false, i64 0, i64 %17
  %19 = or i64 %16, %18
  %20 = and i64 %19, 72057594037927935
  %21 = or i64 %20, -6557241057451442176
  store i64 %21, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %21)
  call void @runtime.ClobberPointerRegs()
  %22 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = getelementptr inbounds { i64, ptr }, ptr %9, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i64
  %25 = and i64 %24, 72057594037927935
  %26 = xor i64 %25, 25399393228665167
  %27 = shl i64 %26, 17
  %28 = select i1 false, i64 0, i64 %27
  %29 = lshr i64 %26, 39
  %30 = select i1 false, i64 0, i64 %29
  %31 = or i64 %28, %30
  %32 = and i64 %31, 72057594037927935
  %33 = or i64 %32, -6557241057451442176
  store i64 %33, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %33)
  call void @runtime.ClobberPointerRegs()
  %34 = call i64 @runtime.AllocZHidden(i64 8)
  store i64 %34, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %34)
  %35 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %35)
  %36 = load i64, ptr %4, align 4
  %37 = and i64 %36, 72057594037927935
  %38 = lshr i64 %37, 17
  %39 = select i1 false, i64 0, i64 %38
  %40 = shl i64 %37, 39
  %41 = select i1 false, i64 0, i64 %40
  %42 = or i64 %39, %41
  %43 = and i64 %42, 72057594037927935
  %44 = xor i64 %43, 25399393228665167
  %45 = inttoptr i64 %44 to ptr
  %46 = icmp eq ptr %45, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %46)
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %45, i32 0, i32 0
  %48 = ptrtoint ptr %47 to i64
  %49 = and i64 %48, 72057594037927935
  %50 = xor i64 %49, 25399393228665167
  %51 = shl i64 %50, 17
  %52 = select i1 false, i64 0, i64 %51
  %53 = lshr i64 %50, 39
  %54 = select i1 false, i64 0, i64 %53
  %55 = or i64 %52, %54
  %56 = and i64 %55, 72057594037927935
  %57 = or i64 %56, -6557241057451442176
  store i64 %57, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %57)
  call void @runtime.ClobberPointerRegs()
  %58 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %58)
  %59 = load i64, ptr %6, align 4
  %60 = alloca i64, align 8
  store i64 100, ptr %60, align 4
  call void @runtime.StoreHiddenPointee(i64 %59, ptr %60, i64 8)
  store i64 0, ptr %60, align 4
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %61 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %61)
  %62 = load i64, ptr %0, align 4
  %63 = alloca i64, align 8
  store i64 10, ptr %63, align 4
  call void @runtime.StoreHiddenPointee(i64 %62, ptr %63, i64 8)
  store i64 0, ptr %63, align 4
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %64 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %64)
  %65 = load i64, ptr %2, align 4
  %66 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %66)
  %67 = load i64, ptr %4, align 4
  %68 = and i64 %67, 72057594037927935
  %69 = lshr i64 %68, 17
  %70 = select i1 false, i64 0, i64 %69
  %71 = shl i64 %68, 39
  %72 = select i1 false, i64 0, i64 %71
  %73 = or i64 %70, %72
  %74 = and i64 %73, 72057594037927935
  %75 = xor i64 %74, 25399393228665167
  %76 = inttoptr i64 %75 to ptr
  %77 = alloca ptr, align 8
  store ptr %76, ptr %77, align 8
  call void @runtime.StoreHiddenPointee(i64 %65, ptr %77, i64 8)
  store ptr null, ptr %77, align 8
  call void @runtime.TouchConservativeSlot(ptr %77, i64 8)
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %78 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %78)
  %79 = load { i64, ptr }, ptr %9, align 8
  store { i64, ptr } %79, ptr %8, align 8
  store { i64, ptr } zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  call void @runtime.ClobberPointerRegs()
  %80 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %80)
  %81 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$mRfo5gQx8vKF1DvrL24XRoyvI_ttVDcwc1JYMRxWfb8", ptr %81, ptr %9)
  %82 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.iface$kT5SIXt45Cspjl04Bof3DZVSOIltlDo-njpk6KqtZvA", ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.struct$mRfo5gQx8vKF1DvrL24XRoyvI_ttVDcwc1JYMRxWfb8")
  %83 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %82, 0
  %84 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %83, ptr %81, 1
  %85 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %84)
  %86 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %84, 0
  %87 = getelementptr ptr, ptr %86, i64 3
  %88 = load ptr, ptr %87, align 8
  %89 = insertvalue { ptr, ptr } undef, ptr %88, 0
  %90 = insertvalue { ptr, ptr } %89, ptr %85, 1
  %91 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %92 = extractvalue { ptr, ptr } %90, 1
  %93 = extractvalue { ptr, ptr } %90, 0
  %94 = call i64 %93(ptr %92)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %91)
  %95 = icmp ne i64 %94, 100
  br i1 %95, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %96 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 20 }, ptr %96, align 8
  %97 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %96, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %97)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %98 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %84)
  %99 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %84, 0
  %100 = getelementptr ptr, ptr %99, i64 4
  %101 = load ptr, ptr %100, align 8
  %102 = insertvalue { ptr, ptr } undef, ptr %101, 0
  %103 = insertvalue { ptr, ptr } %102, ptr %98, 1
  %104 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %105 = extractvalue { ptr, ptr } %103, 1
  %106 = extractvalue { ptr, ptr } %103, 0
  %107 = call i64 %106(ptr %105)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %104)
  %108 = icmp ne i64 %107, 100
  br i1 %108, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %109 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 20 }, ptr %109, align 8
  %110 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %109, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %110)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %111 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %84)
  %112 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %84, 0
  %113 = getelementptr ptr, ptr %112, i64 5
  %114 = load ptr, ptr %113, align 8
  %115 = insertvalue { ptr, ptr } undef, ptr %114, 0
  %116 = insertvalue { ptr, ptr } %115, ptr %111, 1
  %117 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store { i64, ptr } zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  call void @runtime.ClobberPointerRegs()
  %118 = extractvalue { ptr, ptr } %116, 1
  %119 = extractvalue { ptr, ptr } %116, 0
  %120 = call i64 %119(ptr %118)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %117)
  %121 = icmp ne i64 %120, 100
  br i1 %121, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %122 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 20 }, ptr %122, align 8
  %123 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %122, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %123)
  unreachable

_llgo_6:                                          ; preds = %_llgo_4
  ret void

_llgo_7:                                          ; No predecessors!
  unreachable

_llgo_8:                                          ; No predecessors!
  unreachable

_llgo_9:                                          ; No predecessors!
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.testAnonymousBuffer"() {
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
  %8 = alloca { i64, i64 }, align 8
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %9, align 8
  %10 = call i64 @runtime.AllocZHidden(i64 16)
  store i64 %10, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %10)
  %11 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = load i64, ptr %0, align 4
  %13 = and i64 %12, 72057594037927935
  %14 = lshr i64 %13, 17
  %15 = select i1 false, i64 0, i64 %14
  %16 = shl i64 %13, 39
  %17 = select i1 false, i64 0, i64 %16
  %18 = or i64 %15, %17
  %19 = and i64 %18, 72057594037927935
  %20 = xor i64 %19, 25399393228665167
  %21 = inttoptr i64 %20 to ptr
  %22 = icmp eq ptr %21, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = getelementptr inbounds { i64, ptr }, ptr %21, i32 0, i32 0
  %24 = ptrtoint ptr %23 to i64
  %25 = and i64 %24, 72057594037927935
  %26 = xor i64 %25, 25399393228665167
  %27 = shl i64 %26, 17
  %28 = select i1 false, i64 0, i64 %27
  %29 = lshr i64 %26, 39
  %30 = select i1 false, i64 0, i64 %29
  %31 = or i64 %28, %30
  %32 = and i64 %31, 72057594037927935
  %33 = or i64 %32, -6557241057451442176
  store i64 %33, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %33)
  call void @runtime.ClobberPointerRegs()
  %34 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %34)
  %35 = load i64, ptr %0, align 4
  %36 = and i64 %35, 72057594037927935
  %37 = lshr i64 %36, 17
  %38 = select i1 false, i64 0, i64 %37
  %39 = shl i64 %36, 39
  %40 = select i1 false, i64 0, i64 %39
  %41 = or i64 %38, %40
  %42 = and i64 %41, 72057594037927935
  %43 = xor i64 %42, 25399393228665167
  %44 = inttoptr i64 %43 to ptr
  %45 = icmp eq ptr %44, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = getelementptr inbounds { i64, ptr }, ptr %44, i32 0, i32 1
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
  store i64 %56, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %56)
  call void @runtime.ClobberPointerRegs()
  %57 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %58 = call ptr @bytes.NewBufferString(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %57)
  %59 = ptrtoint ptr %58 to i64
  %60 = and i64 %59, 72057594037927935
  %61 = xor i64 %60, 25399393228665167
  %62 = shl i64 %61, 17
  %63 = select i1 false, i64 0, i64 %62
  %64 = lshr i64 %61, 39
  %65 = select i1 false, i64 0, i64 %64
  %66 = or i64 %63, %65
  %67 = and i64 %66, 72057594037927935
  %68 = or i64 %67, -6557241057451442176
  store i64 %68, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %68)
  call void @runtime.ClobberPointerRegs()
  %69 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %69)
  %70 = load i64, ptr %2, align 4
  %71 = alloca i64, align 8
  store i64 10, ptr %71, align 4
  call void @runtime.StoreHiddenPointee(i64 %70, ptr %71, i64 8)
  store i64 0, ptr %71, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %72 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %72)
  %73 = load i64, ptr %4, align 4
  %74 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %74)
  %75 = load i64, ptr %6, align 4
  %76 = and i64 %75, 72057594037927935
  %77 = lshr i64 %76, 17
  %78 = select i1 false, i64 0, i64 %77
  %79 = shl i64 %76, 39
  %80 = select i1 false, i64 0, i64 %79
  %81 = or i64 %78, %80
  %82 = and i64 %81, 72057594037927935
  %83 = xor i64 %82, 25399393228665167
  %84 = inttoptr i64 %83 to ptr
  %85 = alloca ptr, align 8
  store ptr %84, ptr %85, align 8
  call void @runtime.StoreHiddenPointee(i64 %73, ptr %85, i64 8)
  store ptr null, ptr %85, align 8
  call void @runtime.TouchConservativeSlot(ptr %85, i64 8)
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %86 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %86)
  %87 = load i64, ptr %0, align 4
  %88 = and i64 %87, 72057594037927935
  %89 = lshr i64 %88, 17
  %90 = select i1 false, i64 0, i64 %89
  %91 = shl i64 %88, 39
  %92 = select i1 false, i64 0, i64 %91
  %93 = or i64 %90, %92
  %94 = and i64 %93, 72057594037927935
  %95 = xor i64 %94, 25399393228665167
  %96 = inttoptr i64 %95 to ptr
  %97 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U", ptr @"*github.com/goplus/llgo/cl/_testgo/abimethod.struct$RGW016k7zllXgGPm1CvD5-IBe-9lphOOTCFtYyDGLjY")
  %98 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %97, 0
  %99 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %98, ptr %96, 1
  %100 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %99)
  %101 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %99, 0
  %102 = getelementptr ptr, ptr %101, i64 3
  %103 = load ptr, ptr %102, align 8
  %104 = insertvalue { ptr, ptr } undef, ptr %103, 0
  %105 = insertvalue { ptr, ptr } %104, ptr %100, 1
  %106 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %107 = extractvalue { ptr, ptr } %105, 1
  %108 = extractvalue { ptr, ptr } %105, 0
  %109 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %108(ptr %107)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %106)
  %110 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %109, ptr %110, align 8
  %111 = icmp eq ptr %110, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %111)
  %112 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %110, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %112, ptr %9, align 8
  %113 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %112, 0
  %114 = ptrtoint ptr %113 to i64
  %115 = and i64 %114, 72057594037927935
  %116 = xor i64 %115, 25399393228665167
  %117 = shl i64 %116, 17
  %118 = select i1 false, i64 0, i64 %117
  %119 = lshr i64 %116, 39
  %120 = select i1 false, i64 0, i64 %119
  %121 = or i64 %118, %120
  %122 = and i64 %121, 72057594037927935
  %123 = or i64 %122, -6557241057451442176
  %124 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %112, 1
  %125 = insertvalue { i64, i64 } undef, i64 %123, 0
  %126 = insertvalue { i64, i64 } %125, i64 %124, 1
  store { i64, i64 } %126, ptr %8, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %110, align 8
  call void @runtime.TouchConservativeSlot(ptr %110, i64 16)
  call void @runtime.ClobberPointerRegs()
  %127 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %127)
  %128 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %9, align 8
  %129 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %128, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 })
  %130 = xor i1 %129, true
  store { i64, i64 } zeroinitializer, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  call void @runtime.ClobberPointerRegs()
  br i1 %130, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %131 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @96, i64 25 }, ptr %131, align 8
  %132 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %131, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %132)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void

_llgo_3:                                          ; No predecessors!
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.testGeneric"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uinGjIxPTfzB5e5h5gH-0VIvLl5rQdJ_yx2UsrxQqds", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/abimethod.Pointer[any]")
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %6, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, ptr %5, 1
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %10 = call ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.testGeneric$1"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %9)
  %11 = ptrtoint ptr %10 to i64
  %12 = and i64 %11, 72057594037927935
  %13 = xor i64 %12, 25399393228665167
  %14 = shl i64 %13, 17
  %15 = select i1 false, i64 0, i64 %14
  %16 = lshr i64 %13, 39
  %17 = select i1 false, i64 0, i64 %16
  %18 = or i64 %15, %17
  %19 = and i64 %18, 72057594037927935
  %20 = or i64 %19, -6557241057451442176
  store i64 %20, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %20)
  call void @runtime.ClobberPointerRegs()
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %8)
  %22 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, 0
  %23 = getelementptr ptr, ptr %22, i64 4
  %24 = load ptr, ptr %23, align 8
  %25 = insertvalue { ptr, ptr } undef, ptr %24, 0
  %26 = insertvalue { ptr, ptr } %25, ptr %21, 1
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %28 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = load i64, ptr %0, align 4
  %30 = and i64 %29, 72057594037927935
  %31 = lshr i64 %30, 17
  %32 = select i1 false, i64 0, i64 %31
  %33 = shl i64 %30, 39
  %34 = select i1 false, i64 0, i64 %33
  %35 = or i64 %32, %34
  %36 = and i64 %35, 72057594037927935
  %37 = xor i64 %36, 25399393228665167
  %38 = inttoptr i64 %37 to ptr
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %39 = extractvalue { ptr, ptr } %26, 1
  %40 = extractvalue { ptr, ptr } %26, 0
  call void %40(ptr %39, ptr %38)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %27)
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %8)
  %42 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, 0
  %43 = getelementptr ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  %45 = insertvalue { ptr, ptr } undef, ptr %44, 0
  %46 = insertvalue { ptr, ptr } %45, ptr %41, 1
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %48 = extractvalue { ptr, ptr } %46, 1
  %49 = extractvalue { ptr, ptr } %46, 0
  %50 = call ptr %49(ptr %48)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %47)
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
  store i64 %60, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %60)
  call void @runtime.ClobberPointerRegs()
  %61 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %61)
  %62 = load i64, ptr %2, align 4
  %63 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  call void @runtime.LoadHiddenPointee(ptr %63, i64 %62, i64 16)
  %64 = icmp eq ptr %63, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %64)
  %65 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %63, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %63, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %65, ptr %4, align 8
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %66 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %66)
  %67 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %4, align 8
  %68 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %67, 0
  %69 = icmp eq ptr %68, @_llgo_int
  br i1 %69, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_3
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @110, i64 17 }, ptr %70, align 8
  %71 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %70, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %71)
  unreachable

_llgo_2:                                          ; preds = %_llgo_3
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %72 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %67, 1
  %73 = load i64, ptr %72, align 4
  %74 = icmp ne i64 %73, 100
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  call void @runtime.ClobberPointerRegs()
  br i1 %74, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_0
  %75 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakeTypeAssertionError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @109, i64 3 }, ptr %68, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %75)
  unreachable

_llgo_5:                                          ; No predecessors!
  unreachable

_llgo_6:                                          ; No predecessors!
  unreachable
}

define ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.testGeneric$1"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = call i64 @runtime.AllocZHidden(i64 16)
  store i64 %2, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %2)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 100, ptr %3, align 4
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %3, 1
  %5 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = load i64, ptr %0, align 4
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %4, ptr %7, align 8
  call void @runtime.StoreHiddenPointee(i64 %6, ptr %7, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  %8 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = load i64, ptr %0, align 4
  %10 = and i64 %9, 72057594037927935
  %11 = lshr i64 %10, 17
  %12 = select i1 false, i64 0, i64 %11
  %13 = shl i64 %10, 39
  %14 = select i1 false, i64 0, i64 %13
  %15 = or i64 %12, %14
  %16 = and i64 %15, 72057594037927935
  %17 = xor i64 %16, 25399393228665167
  %18 = inttoptr i64 %17 to ptr
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  ret ptr %18
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.testNamed1"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = call i64 @runtime.AllocZHidden(i64 8)
  store i64 %4, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %4)
  %5 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = load i64, ptr %0, align 4
  %7 = and i64 %6, 72057594037927935
  %8 = lshr i64 %7, 17
  %9 = select i1 false, i64 0, i64 %8
  %10 = shl i64 %7, 39
  %11 = select i1 false, i64 0, i64 %10
  %12 = or i64 %9, %11
  %13 = and i64 %12, 72057594037927935
  %14 = xor i64 %13, 25399393228665167
  %15 = inttoptr i64 %14 to ptr
  %16 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %16)
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %15, i32 0, i32 0
  %18 = ptrtoint ptr %17 to i64
  %19 = and i64 %18, 72057594037927935
  %20 = xor i64 %19, 25399393228665167
  %21 = shl i64 %20, 17
  %22 = select i1 false, i64 0, i64 %21
  %23 = lshr i64 %20, 39
  %24 = select i1 false, i64 0, i64 %23
  %25 = or i64 %22, %24
  %26 = and i64 %25, 72057594037927935
  %27 = or i64 %26, -6557241057451442176
  store i64 %27, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %27)
  call void @runtime.ClobberPointerRegs()
  %28 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = load i64, ptr %2, align 4
  %30 = alloca i64, align 8
  store i64 100, ptr %30, align 4
  call void @runtime.StoreHiddenPointee(i64 %29, ptr %30, i64 8)
  store i64 0, ptr %30, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %31 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %31)
  %32 = load i64, ptr %0, align 4
  %33 = and i64 %32, 72057594037927935
  %34 = lshr i64 %33, 17
  %35 = select i1 false, i64 0, i64 %34
  %36 = shl i64 %33, 39
  %37 = select i1 false, i64 0, i64 %36
  %38 = or i64 %35, %37
  %39 = and i64 %38, 72057594037927935
  %40 = xor i64 %39, 25399393228665167
  %41 = inttoptr i64 %40 to ptr
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$WkyTd7mXEW0USaC6FIo7OG9IdUUyjAJl_h3PFrMEtHc", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/abimethod.T")
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %42, 0
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %43, ptr %41, 1
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %44)
  %46 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %44, 0
  %47 = getelementptr ptr, ptr %46, i64 3
  %48 = load ptr, ptr %47, align 8
  %49 = insertvalue { ptr, ptr } undef, ptr %48, 0
  %50 = insertvalue { ptr, ptr } %49, ptr %45, 1
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %52 = extractvalue { ptr, ptr } %50, 1
  %53 = extractvalue { ptr, ptr } %50, 0
  %54 = call i64 %53(ptr %52)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %51)
  %55 = icmp ne i64 %54, 100
  br i1 %55, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %56 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @111, i64 16 }, ptr %56, align 8
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %56, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %57)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void

_llgo_3:                                          ; No predecessors!
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.testNamed2"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca %"github.com/goplus/llgo/cl/_testgo/abimethod.T", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 8, i1 false)
  %3 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %2, i32 0, i32 0
  %5 = ptrtoint ptr %4 to i64
  %6 = and i64 %5, 72057594037927935
  %7 = xor i64 %6, 25399393228665167
  %8 = shl i64 %7, 17
  %9 = select i1 false, i64 0, i64 %8
  %10 = lshr i64 %7, 39
  %11 = select i1 false, i64 0, i64 %10
  %12 = or i64 %9, %11
  %13 = and i64 %12, 72057594037927935
  %14 = or i64 %13, -6557241057451442176
  store i64 %14, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %14)
  call void @runtime.ClobberPointerRegs()
  %15 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %15)
  %16 = load i64, ptr %0, align 4
  %17 = alloca i64, align 8
  store i64 100, ptr %17, align 4
  call void @runtime.StoreHiddenPointee(i64 %16, ptr %17, i64 8)
  store i64 0, ptr %17, align 4
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %18 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %18)
  %19 = load %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %2, align 4
  store %"github.com/goplus/llgo/cl/_testgo/abimethod.T" zeroinitializer, ptr %2, align 4
  call void @runtime.ClobberPointerRegs()
  %20 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %21, ptr %2)
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$WkyTd7mXEW0USaC6FIo7OG9IdUUyjAJl_h3PFrMEtHc", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/abimethod.T")
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %22, 0
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %23, ptr %21, 1
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %24)
  %26 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %24, 0
  %27 = getelementptr ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  %29 = insertvalue { ptr, ptr } undef, ptr %28, 0
  %30 = insertvalue { ptr, ptr } %29, ptr %25, 1
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %32 = extractvalue { ptr, ptr } %30, 1
  %33 = extractvalue { ptr, ptr } %30, 0
  %34 = call i64 %33(ptr %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %31)
  %35 = icmp ne i64 %34, 100
  br i1 %35, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @112, i64 16 }, ptr %36, align 8
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %36, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %37)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void

_llgo_3:                                          ; No predecessors!
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.testNamed3"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = call i64 @runtime.AllocZHidden(i64 8)
  store i64 %4, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %4)
  %5 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = load i64, ptr %0, align 4
  %7 = and i64 %6, 72057594037927935
  %8 = lshr i64 %7, 17
  %9 = select i1 false, i64 0, i64 %8
  %10 = shl i64 %7, 39
  %11 = select i1 false, i64 0, i64 %10
  %12 = or i64 %9, %11
  %13 = and i64 %12, 72057594037927935
  %14 = xor i64 %13, 25399393228665167
  %15 = inttoptr i64 %14 to ptr
  %16 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %16)
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %15, i32 0, i32 0
  %18 = ptrtoint ptr %17 to i64
  %19 = and i64 %18, 72057594037927935
  %20 = xor i64 %19, 25399393228665167
  %21 = shl i64 %20, 17
  %22 = select i1 false, i64 0, i64 %21
  %23 = lshr i64 %20, 39
  %24 = select i1 false, i64 0, i64 %23
  %25 = or i64 %22, %24
  %26 = and i64 %25, 72057594037927935
  %27 = or i64 %26, -6557241057451442176
  store i64 %27, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %27)
  call void @runtime.ClobberPointerRegs()
  %28 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = load i64, ptr %2, align 4
  %30 = alloca i64, align 8
  store i64 100, ptr %30, align 4
  call void @runtime.StoreHiddenPointee(i64 %29, ptr %30, i64 8)
  store i64 0, ptr %30, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %31 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %31)
  %32 = load i64, ptr %0, align 4
  %33 = and i64 %32, 72057594037927935
  %34 = lshr i64 %33, 17
  %35 = select i1 false, i64 0, i64 %34
  %36 = shl i64 %33, 39
  %37 = select i1 false, i64 0, i64 %36
  %38 = or i64 %35, %37
  %39 = and i64 %38, 72057594037927935
  %40 = xor i64 %39, 25399393228665167
  %41 = inttoptr i64 %40 to ptr
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$GIQLduxo5T_xLwYbboAKy8LzikHgsGzb7WxrkOH3Lr4", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/abimethod.T")
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %42, 0
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %43, ptr %41, 1
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %44)
  %46 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %44, 0
  %47 = getelementptr ptr, ptr %46, i64 3
  %48 = load ptr, ptr %47, align 8
  %49 = insertvalue { ptr, ptr } undef, ptr %48, 0
  %50 = insertvalue { ptr, ptr } %49, ptr %45, 1
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %52 = extractvalue { ptr, ptr } %50, 1
  %53 = extractvalue { ptr, ptr } %50, 0
  %54 = call i64 %53(ptr %52)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %51)
  %55 = icmp ne i64 %54, 100
  br i1 %55, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %56 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @113, i64 16 }, ptr %56, align 8
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %56, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %57)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void

_llgo_3:                                          ; No predecessors!
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakePanicWrapError"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare void @bytes.init()

declare void @fmt.init()

declare void @"sync/atomic.init"()

declare void @unsafe.init()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare i64 @runtime.AllocZHidden(i64)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo1"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @runtime.ClobberPointerRegs()
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds { i64, ptr }, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, 72057594037927935
  %12 = xor i64 %11, 25399393228665167
  %13 = shl i64 %12, 17
  %14 = select i1 false, i64 0, i64 %13
  %15 = lshr i64 %12, 39
  %16 = select i1 false, i64 0, i64 %15
  %17 = or i64 %14, %16
  %18 = and i64 %17, 72057594037927935
  %19 = or i64 %18, -6557241057451442176
  store i64 %19, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %19)
  call void @runtime.ClobberPointerRegs()
  %20 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %1, align 4
  %22 = call i64 @runtime.LoadHiddenPointerKey(i64 %21)
  store i64 %22, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %22)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %23 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load i64, ptr %3, align 4
  %25 = alloca %"github.com/goplus/llgo/cl/_testgo/abimethod.T", align 8
  call void @runtime.LoadHiddenPointee(ptr %25, i64 %24, i64 8)
  %26 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %25, align 4
  store %"github.com/goplus/llgo/cl/_testgo/abimethod.T" zeroinitializer, ptr %25, align 4
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.T.Demo1")
  %29 = call i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.T.Demo1"(%"github.com/goplus/llgo/cl/_testgo/abimethod.T" %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %28)
  ret i64 %29
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo2"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @runtime.ClobberPointerRegs()
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds { i64, ptr }, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, 72057594037927935
  %12 = xor i64 %11, 25399393228665167
  %13 = shl i64 %12, 17
  %14 = select i1 false, i64 0, i64 %13
  %15 = lshr i64 %12, 39
  %16 = select i1 false, i64 0, i64 %15
  %17 = or i64 %14, %16
  %18 = and i64 %17, 72057594037927935
  %19 = or i64 %18, -6557241057451442176
  store i64 %19, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %19)
  call void @runtime.ClobberPointerRegs()
  %20 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %1, align 4
  %22 = call i64 @runtime.LoadHiddenPointerKey(i64 %21)
  store i64 %22, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %22)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).Demo2")
  %24 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load i64, ptr %3, align 4
  %26 = and i64 %25, 72057594037927935
  %27 = lshr i64 %26, 17
  %28 = select i1 false, i64 0, i64 %27
  %29 = shl i64 %26, 39
  %30 = select i1 false, i64 0, i64 %29
  %31 = or i64 %28, %30
  %32 = and i64 %31, 72057594037927935
  %33 = xor i64 %32, 25399393228665167
  %34 = inttoptr i64 %33 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %35 = call i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).Demo2"(ptr %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %23)
  ret i64 %35
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.demo3"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @runtime.ClobberPointerRegs()
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds { i64, ptr }, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, 72057594037927935
  %12 = xor i64 %11, 25399393228665167
  %13 = shl i64 %12, 17
  %14 = select i1 false, i64 0, i64 %13
  %15 = lshr i64 %12, 39
  %16 = select i1 false, i64 0, i64 %15
  %17 = or i64 %14, %16
  %18 = and i64 %17, 72057594037927935
  %19 = or i64 %18, -6557241057451442176
  store i64 %19, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %19)
  call void @runtime.ClobberPointerRegs()
  %20 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %1, align 4
  %22 = call i64 @runtime.LoadHiddenPointerKey(i64 %21)
  store i64 %22, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %22)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).demo3")
  %24 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load i64, ptr %3, align 4
  %26 = and i64 %25, 72057594037927935
  %27 = lshr i64 %26, 17
  %28 = select i1 false, i64 0, i64 %27
  %29 = shl i64 %26, 39
  %30 = select i1 false, i64 0, i64 %29
  %31 = or i64 %28, %30
  %32 = and i64 %31, 72057594037927935
  %33 = xor i64 %32, 25399393228665167
  %34 = inttoptr i64 %33 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %35 = call i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).demo3"(ptr %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %23)
  ret i64 %35
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo1"({ i64, ptr } %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %5, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %5, align 8
  call void @runtime.ClobberPointerRegs()
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds { i64, ptr }, ptr %5, i32 0, i32 1
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
  %20 = call i64 @runtime.LoadHiddenPointerKey(i64 %19)
  store i64 %20, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %20)
  store { i64, ptr } zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %21 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load i64, ptr %3, align 4
  %23 = alloca %"github.com/goplus/llgo/cl/_testgo/abimethod.T", align 8
  call void @runtime.LoadHiddenPointee(ptr %23, i64 %22, i64 8)
  %24 = icmp eq ptr %23, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %23, align 4
  store %"github.com/goplus/llgo/cl/_testgo/abimethod.T" zeroinitializer, ptr %23, align 4
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.T.Demo1")
  %27 = call i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.T.Demo1"(%"github.com/goplus/llgo/cl/_testgo/abimethod.T" %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %26)
  ret i64 %27
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo2"({ i64, ptr } %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %5, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %5, align 8
  call void @runtime.ClobberPointerRegs()
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds { i64, ptr }, ptr %5, i32 0, i32 1
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
  %20 = call i64 @runtime.LoadHiddenPointerKey(i64 %19)
  store i64 %20, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %20)
  store { i64, ptr } zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).Demo2")
  %22 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load i64, ptr %3, align 4
  %24 = and i64 %23, 72057594037927935
  %25 = lshr i64 %24, 17
  %26 = select i1 false, i64 0, i64 %25
  %27 = shl i64 %24, 39
  %28 = select i1 false, i64 0, i64 %27
  %29 = or i64 %26, %28
  %30 = and i64 %29, 72057594037927935
  %31 = xor i64 %30, 25399393228665167
  %32 = inttoptr i64 %31 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %33 = call i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).Demo2"(ptr %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %21)
  ret i64 %33
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *github.com/goplus/llgo/cl/_testgo/abimethod.T}.demo3"({ i64, ptr } %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %5, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %5, align 8
  call void @runtime.ClobberPointerRegs()
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds { i64, ptr }, ptr %5, i32 0, i32 1
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
  %20 = call i64 @runtime.LoadHiddenPointerKey(i64 %19)
  store i64 %20, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %20)
  store { i64, ptr } zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).demo3")
  %22 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load i64, ptr %3, align 4
  %24 = and i64 %23, 72057594037927935
  %25 = lshr i64 %24, 17
  %26 = select i1 false, i64 0, i64 %25
  %27 = shl i64 %24, 39
  %28 = select i1 false, i64 0, i64 %27
  %29 = or i64 %26, %28
  %30 = and i64 %29, 72057594037927935
  %31 = xor i64 %30, 25399393228665167
  %32 = inttoptr i64 %31 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %33 = call i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).demo3"(ptr %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %21)
  ret i64 %33
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal64")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.interequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

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

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo1"({ i64, %"github.com/goplus/llgo/cl/_testgo/abimethod.T" } %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca { i64, %"github.com/goplus/llgo/cl/_testgo/abimethod.T" }, align 8
  call void @llvm.memset(ptr %3, i8 0, i64 16, i1 false)
  store { i64, %"github.com/goplus/llgo/cl/_testgo/abimethod.T" } %0, ptr %3, align 4
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = getelementptr inbounds { i64, %"github.com/goplus/llgo/cl/_testgo/abimethod.T" }, ptr %3, i32 0, i32 1
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
  %18 = alloca %"github.com/goplus/llgo/cl/_testgo/abimethod.T", align 8
  call void @runtime.LoadHiddenPointee(ptr %18, i64 %17, i64 8)
  %19 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = load %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %18, align 4
  store %"github.com/goplus/llgo/cl/_testgo/abimethod.T" zeroinitializer, ptr %18, align 4
  store { i64, %"github.com/goplus/llgo/cl/_testgo/abimethod.T" } zeroinitializer, ptr %3, align 4
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.T.Demo1")
  %22 = call i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.T.Demo1"(%"github.com/goplus/llgo/cl/_testgo/abimethod.T" %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %21)
  ret i64 %22
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo1"(ptr %0) {
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds { i64, %"github.com/goplus/llgo/cl/_testgo/abimethod.T" }, ptr %5, i32 0, i32 1
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
  %20 = alloca %"github.com/goplus/llgo/cl/_testgo/abimethod.T", align 8
  call void @runtime.LoadHiddenPointee(ptr %20, i64 %19, i64 8)
  %21 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load %"github.com/goplus/llgo/cl/_testgo/abimethod.T", ptr %20, align 4
  store %"github.com/goplus/llgo/cl/_testgo/abimethod.T" zeroinitializer, ptr %20, align 4
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.T.Demo1")
  %24 = call i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.T.Demo1"(%"github.com/goplus/llgo/cl/_testgo/abimethod.T" %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %23)
  ret i64 %24
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; github.com/goplus/llgo/cl/_testgo/abimethod.T}.Demo2"(ptr %0) {
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds { i64, %"github.com/goplus/llgo/cl/_testgo/abimethod.T" }, ptr %5, i32 0, i32 1
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
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).Demo2")
  %19 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = load i64, ptr %1, align 4
  %21 = and i64 %20, 72057594037927935
  %22 = lshr i64 %21, 17
  %23 = select i1 false, i64 0, i64 %22
  %24 = shl i64 %21, 39
  %25 = select i1 false, i64 0, i64 %24
  %26 = or i64 %23, %25
  %27 = and i64 %26, 72057594037927935
  %28 = xor i64 %27, 25399393228665167
  %29 = inttoptr i64 %28 to ptr
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %30 = call i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).Demo2"(ptr %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %18)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  ret i64 %30
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; github.com/goplus/llgo/cl/_testgo/abimethod.T}.demo3"(ptr %0) {
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds { i64, %"github.com/goplus/llgo/cl/_testgo/abimethod.T" }, ptr %5, i32 0, i32 1
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
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).demo3")
  %19 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = load i64, ptr %1, align 4
  %21 = and i64 %20, 72057594037927935
  %22 = lshr i64 %21, 17
  %23 = select i1 false, i64 0, i64 %22
  %24 = shl i64 %21, 39
  %25 = select i1 false, i64 0, i64 %24
  %26 = or i64 %23, %25
  %27 = and i64 %26, 72057594037927935
  %28 = xor i64 %27, 25399393228665167
  %29 = inttoptr i64 %28 to ptr
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %30 = call i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.(*T).demo3"(ptr %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %18)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  ret i64 %30
}

declare ptr @bytes.NewBufferString(%"github.com/goplus/llgo/runtime/internal/runtime.String")

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Available"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @runtime.ClobberPointerRegs()
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds { i64, ptr }, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, 72057594037927935
  %12 = xor i64 %11, 25399393228665167
  %13 = shl i64 %12, 17
  %14 = select i1 false, i64 0, i64 %13
  %15 = lshr i64 %12, 39
  %16 = select i1 false, i64 0, i64 %15
  %17 = or i64 %14, %16
  %18 = and i64 %17, 72057594037927935
  %19 = or i64 %18, -6557241057451442176
  store i64 %19, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %19)
  call void @runtime.ClobberPointerRegs()
  %20 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %1, align 4
  %22 = call i64 @runtime.LoadHiddenPointerKey(i64 %21)
  store i64 %22, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %22)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).Available")
  %24 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load i64, ptr %3, align 4
  %26 = and i64 %25, 72057594037927935
  %27 = lshr i64 %26, 17
  %28 = select i1 false, i64 0, i64 %27
  %29 = shl i64 %26, 39
  %30 = select i1 false, i64 0, i64 %29
  %31 = or i64 %28, %30
  %32 = and i64 %31, 72057594037927935
  %33 = xor i64 %32, 25399393228665167
  %34 = inttoptr i64 %33 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %35 = call i64 @"bytes.(*Buffer).Available"(ptr %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %23)
  ret i64 %35
}

define %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.AvailableBuffer"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca { i64, i64, i64 }, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %6, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  call void @runtime.ClobberPointerRegs()
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds { i64, ptr }, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 72057594037927935
  %14 = xor i64 %13, 25399393228665167
  %15 = shl i64 %14, 17
  %16 = select i1 false, i64 0, i64 %15
  %17 = lshr i64 %14, 39
  %18 = select i1 false, i64 0, i64 %17
  %19 = or i64 %16, %18
  %20 = and i64 %19, 72057594037927935
  %21 = or i64 %20, -6557241057451442176
  store i64 %21, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %21)
  call void @runtime.ClobberPointerRegs()
  %22 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load i64, ptr %1, align 4
  %24 = call i64 @runtime.LoadHiddenPointerKey(i64 %23)
  store i64 %24, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %24)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).AvailableBuffer")
  %26 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load i64, ptr %3, align 4
  %28 = and i64 %27, 72057594037927935
  %29 = lshr i64 %28, 17
  %30 = select i1 false, i64 0, i64 %29
  %31 = shl i64 %28, 39
  %32 = select i1 false, i64 0, i64 %31
  %33 = or i64 %30, %32
  %34 = and i64 %33, 72057594037927935
  %35 = xor i64 %34, 25399393228665167
  %36 = inttoptr i64 %35 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %37 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"bytes.(*Buffer).AvailableBuffer"(ptr %36)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %25)
  %38 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, ptr %38, align 8
  %39 = icmp eq ptr %38, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %39)
  %40 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %38, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, ptr %6, align 8
  %41 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, 0
  %42 = ptrtoint ptr %41 to i64
  %43 = and i64 %42, 72057594037927935
  %44 = xor i64 %43, 25399393228665167
  %45 = shl i64 %44, 17
  %46 = select i1 false, i64 0, i64 %45
  %47 = lshr i64 %44, 39
  %48 = select i1 false, i64 0, i64 %47
  %49 = or i64 %46, %48
  %50 = and i64 %49, 72057594037927935
  %51 = or i64 %50, -6557241057451442176
  %52 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, 1
  %53 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, 2
  %54 = insertvalue { i64, i64, i64 } undef, i64 %51, 0
  %55 = insertvalue { i64, i64, i64 } %54, i64 %52, 1
  %56 = insertvalue { i64, i64, i64 } %55, i64 %53, 2
  store { i64, i64, i64 } %56, ptr %5, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %38, align 8
  call void @runtime.TouchConservativeSlot(ptr %38, i64 24)
  call void @runtime.ClobberPointerRegs()
  %57 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %57)
  %58 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %6, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  store { i64, i64, i64 } zeroinitializer, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58
}

define %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Bytes"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca { i64, i64, i64 }, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %6, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  call void @runtime.ClobberPointerRegs()
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds { i64, ptr }, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 72057594037927935
  %14 = xor i64 %13, 25399393228665167
  %15 = shl i64 %14, 17
  %16 = select i1 false, i64 0, i64 %15
  %17 = lshr i64 %14, 39
  %18 = select i1 false, i64 0, i64 %17
  %19 = or i64 %16, %18
  %20 = and i64 %19, 72057594037927935
  %21 = or i64 %20, -6557241057451442176
  store i64 %21, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %21)
  call void @runtime.ClobberPointerRegs()
  %22 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load i64, ptr %1, align 4
  %24 = call i64 @runtime.LoadHiddenPointerKey(i64 %23)
  store i64 %24, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %24)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).Bytes")
  %26 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load i64, ptr %3, align 4
  %28 = and i64 %27, 72057594037927935
  %29 = lshr i64 %28, 17
  %30 = select i1 false, i64 0, i64 %29
  %31 = shl i64 %28, 39
  %32 = select i1 false, i64 0, i64 %31
  %33 = or i64 %30, %32
  %34 = and i64 %33, 72057594037927935
  %35 = xor i64 %34, 25399393228665167
  %36 = inttoptr i64 %35 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %37 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"bytes.(*Buffer).Bytes"(ptr %36)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %25)
  %38 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, ptr %38, align 8
  %39 = icmp eq ptr %38, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %39)
  %40 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %38, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, ptr %6, align 8
  %41 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, 0
  %42 = ptrtoint ptr %41 to i64
  %43 = and i64 %42, 72057594037927935
  %44 = xor i64 %43, 25399393228665167
  %45 = shl i64 %44, 17
  %46 = select i1 false, i64 0, i64 %45
  %47 = lshr i64 %44, 39
  %48 = select i1 false, i64 0, i64 %47
  %49 = or i64 %46, %48
  %50 = and i64 %49, 72057594037927935
  %51 = or i64 %50, -6557241057451442176
  %52 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, 1
  %53 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, 2
  %54 = insertvalue { i64, i64, i64 } undef, i64 %51, 0
  %55 = insertvalue { i64, i64, i64 } %54, i64 %52, 1
  %56 = insertvalue { i64, i64, i64 } %55, i64 %53, 2
  store { i64, i64, i64 } %56, ptr %5, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %38, align 8
  call void @runtime.TouchConservativeSlot(ptr %38, i64 24)
  call void @runtime.ClobberPointerRegs()
  %57 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %57)
  %58 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %6, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  store { i64, i64, i64 } zeroinitializer, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Cap"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @runtime.ClobberPointerRegs()
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds { i64, ptr }, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, 72057594037927935
  %12 = xor i64 %11, 25399393228665167
  %13 = shl i64 %12, 17
  %14 = select i1 false, i64 0, i64 %13
  %15 = lshr i64 %12, 39
  %16 = select i1 false, i64 0, i64 %15
  %17 = or i64 %14, %16
  %18 = and i64 %17, 72057594037927935
  %19 = or i64 %18, -6557241057451442176
  store i64 %19, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %19)
  call void @runtime.ClobberPointerRegs()
  %20 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %1, align 4
  %22 = call i64 @runtime.LoadHiddenPointerKey(i64 %21)
  store i64 %22, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %22)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).Cap")
  %24 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load i64, ptr %3, align 4
  %26 = and i64 %25, 72057594037927935
  %27 = lshr i64 %26, 17
  %28 = select i1 false, i64 0, i64 %27
  %29 = shl i64 %26, 39
  %30 = select i1 false, i64 0, i64 %29
  %31 = or i64 %28, %30
  %32 = and i64 %31, 72057594037927935
  %33 = xor i64 %32, 25399393228665167
  %34 = inttoptr i64 %33 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %35 = call i64 @"bytes.(*Buffer).Cap"(ptr %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %23)
  ret i64 %35
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Grow"(ptr %0, i64 %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @runtime.ClobberPointerRegs()
  %7 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = load ptr, ptr %6, align 8
  %9 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = getelementptr inbounds { i64, ptr }, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i64
  %12 = and i64 %11, 72057594037927935
  %13 = xor i64 %12, 25399393228665167
  %14 = shl i64 %13, 17
  %15 = select i1 false, i64 0, i64 %14
  %16 = lshr i64 %13, 39
  %17 = select i1 false, i64 0, i64 %16
  %18 = or i64 %15, %17
  %19 = and i64 %18, 72057594037927935
  %20 = or i64 %19, -6557241057451442176
  store i64 %20, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %20)
  call void @runtime.ClobberPointerRegs()
  %21 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load i64, ptr %2, align 4
  %23 = call i64 @runtime.LoadHiddenPointerKey(i64 %22)
  store i64 %23, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %23)
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).Grow")
  %25 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %25)
  %26 = load i64, ptr %4, align 4
  %27 = and i64 %26, 72057594037927935
  %28 = lshr i64 %27, 17
  %29 = select i1 false, i64 0, i64 %28
  %30 = shl i64 %27, 39
  %31 = select i1 false, i64 0, i64 %30
  %32 = or i64 %29, %31
  %33 = and i64 %32, 72057594037927935
  %34 = xor i64 %33, 25399393228665167
  %35 = inttoptr i64 %34 to ptr
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"bytes.(*Buffer).Grow"(ptr %35, i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %24)
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Len"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @runtime.ClobberPointerRegs()
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds { i64, ptr }, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, 72057594037927935
  %12 = xor i64 %11, 25399393228665167
  %13 = shl i64 %12, 17
  %14 = select i1 false, i64 0, i64 %13
  %15 = lshr i64 %12, 39
  %16 = select i1 false, i64 0, i64 %15
  %17 = or i64 %14, %16
  %18 = and i64 %17, 72057594037927935
  %19 = or i64 %18, -6557241057451442176
  store i64 %19, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %19)
  call void @runtime.ClobberPointerRegs()
  %20 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %1, align 4
  %22 = call i64 @runtime.LoadHiddenPointerKey(i64 %21)
  store i64 %22, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %22)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).Len")
  %24 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load i64, ptr %3, align 4
  %26 = and i64 %25, 72057594037927935
  %27 = lshr i64 %26, 17
  %28 = select i1 false, i64 0, i64 %27
  %29 = shl i64 %26, 39
  %30 = select i1 false, i64 0, i64 %29
  %31 = or i64 %28, %30
  %32 = and i64 %31, 72057594037927935
  %33 = xor i64 %32, 25399393228665167
  %34 = inttoptr i64 %33 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %35 = call i64 @"bytes.(*Buffer).Len"(ptr %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %23)
  ret i64 %35
}

define %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Next"(ptr %0, i64 %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca { i64, i64, i64 }, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %7, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8
  call void @runtime.ClobberPointerRegs()
  %9 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = getelementptr inbounds { i64, ptr }, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i64
  %14 = and i64 %13, 72057594037927935
  %15 = xor i64 %14, 25399393228665167
  %16 = shl i64 %15, 17
  %17 = select i1 false, i64 0, i64 %16
  %18 = lshr i64 %15, 39
  %19 = select i1 false, i64 0, i64 %18
  %20 = or i64 %17, %19
  %21 = and i64 %20, 72057594037927935
  %22 = or i64 %21, -6557241057451442176
  store i64 %22, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %22)
  call void @runtime.ClobberPointerRegs()
  %23 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load i64, ptr %2, align 4
  %25 = call i64 @runtime.LoadHiddenPointerKey(i64 %24)
  store i64 %25, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %25)
  store ptr null, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).Next")
  %27 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %27)
  %28 = load i64, ptr %4, align 4
  %29 = and i64 %28, 72057594037927935
  %30 = lshr i64 %29, 17
  %31 = select i1 false, i64 0, i64 %30
  %32 = shl i64 %29, 39
  %33 = select i1 false, i64 0, i64 %32
  %34 = or i64 %31, %33
  %35 = and i64 %34, 72057594037927935
  %36 = xor i64 %35, 25399393228665167
  %37 = inttoptr i64 %36 to ptr
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %38 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"bytes.(*Buffer).Next"(ptr %37, i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %26)
  %39 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38, ptr %39, align 8
  %40 = icmp eq ptr %39, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %40)
  %41 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %39, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, ptr %7, align 8
  %42 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, 0
  %43 = ptrtoint ptr %42 to i64
  %44 = and i64 %43, 72057594037927935
  %45 = xor i64 %44, 25399393228665167
  %46 = shl i64 %45, 17
  %47 = select i1 false, i64 0, i64 %46
  %48 = lshr i64 %45, 39
  %49 = select i1 false, i64 0, i64 %48
  %50 = or i64 %47, %49
  %51 = and i64 %50, 72057594037927935
  %52 = or i64 %51, -6557241057451442176
  %53 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, 1
  %54 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, 2
  %55 = insertvalue { i64, i64, i64 } undef, i64 %52, 0
  %56 = insertvalue { i64, i64, i64 } %55, i64 %53, 1
  %57 = insertvalue { i64, i64, i64 } %56, i64 %54, 2
  store { i64, i64, i64 } %57, ptr %6, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %39, align 8
  call void @runtime.TouchConservativeSlot(ptr %39, i64 24)
  call void @runtime.ClobberPointerRegs()
  %58 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %58)
  %59 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %7, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 24)
  store { i64, i64, i64 } zeroinitializer, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 24)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %59
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Read"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, ptr %9, align 8
  call void @runtime.ClobberPointerRegs()
  %10 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = load ptr, ptr %8, align 8
  %12 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %12)
  %13 = getelementptr inbounds { i64, ptr }, ptr %11, i32 0, i32 1
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
  %26 = call i64 @runtime.LoadHiddenPointerKey(i64 %25)
  store i64 %26, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %26)
  store ptr null, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).Read")
  %28 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = load i64, ptr %4, align 4
  %30 = and i64 %29, 72057594037927935
  %31 = lshr i64 %30, 17
  %32 = select i1 false, i64 0, i64 %31
  %33 = shl i64 %30, 39
  %34 = select i1 false, i64 0, i64 %33
  %35 = or i64 %32, %34
  %36 = and i64 %35, 72057594037927935
  %37 = xor i64 %36, 25399393228665167
  %38 = inttoptr i64 %37 to ptr
  %39 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %39)
  %40 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %9, align 8
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %41 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).Read"(ptr %38, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %27)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %41, ptr %6, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 24)
  call void @runtime.ClobberPointerRegs()
  %42 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %42)
  %43 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %44 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %43, 0
  %45 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %47 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %46, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %47, ptr %7, align 8
  %48 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %48)
  %49 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %7, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  call void @runtime.ClobberPointerRegs()
  %50 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %44, 0
  %51 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %50, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %49, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %51
}

define { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadByte"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  call void @runtime.ClobberPointerRegs()
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds { i64, ptr }, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 72057594037927935
  %14 = xor i64 %13, 25399393228665167
  %15 = shl i64 %14, 17
  %16 = select i1 false, i64 0, i64 %15
  %17 = lshr i64 %14, 39
  %18 = select i1 false, i64 0, i64 %17
  %19 = or i64 %16, %18
  %20 = and i64 %19, 72057594037927935
  %21 = or i64 %20, -6557241057451442176
  store i64 %21, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %21)
  call void @runtime.ClobberPointerRegs()
  %22 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load i64, ptr %1, align 4
  %24 = call i64 @runtime.LoadHiddenPointerKey(i64 %23)
  store i64 %24, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %24)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).ReadByte")
  %26 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load i64, ptr %3, align 4
  %28 = and i64 %27, 72057594037927935
  %29 = lshr i64 %28, 17
  %30 = select i1 false, i64 0, i64 %29
  %31 = shl i64 %28, 39
  %32 = select i1 false, i64 0, i64 %31
  %33 = or i64 %30, %32
  %34 = and i64 %33, 72057594037927935
  %35 = xor i64 %34, 25399393228665167
  %36 = inttoptr i64 %35 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %37 = call { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).ReadByte"(ptr %36)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %25)
  store { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %37, ptr %5, align 8
  %38 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %38)
  %39 = load { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %5, align 8
  %40 = extractvalue { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %39, 0
  %41 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %41)
  %42 = load { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %5, align 8
  %43 = extractvalue { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %42, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %43, ptr %6, align 8
  %44 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %44)
  %45 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %6, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  store { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  %46 = insertvalue { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i8 %40, 0
  %47 = insertvalue { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %46, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %45, 1
  ret { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %47
}

define { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadBytes"(ptr %0, i8 %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %7 = alloca { i64, i64, i64 }, align 8
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %8, align 8
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %10, align 8
  call void @runtime.ClobberPointerRegs()
  %11 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = load ptr, ptr %10, align 8
  %13 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = getelementptr inbounds { i64, ptr }, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i64
  %16 = and i64 %15, 72057594037927935
  %17 = xor i64 %16, 25399393228665167
  %18 = shl i64 %17, 17
  %19 = select i1 false, i64 0, i64 %18
  %20 = lshr i64 %17, 39
  %21 = select i1 false, i64 0, i64 %20
  %22 = or i64 %19, %21
  %23 = and i64 %22, 72057594037927935
  %24 = or i64 %23, -6557241057451442176
  store i64 %24, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %24)
  call void @runtime.ClobberPointerRegs()
  %25 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %25)
  %26 = load i64, ptr %2, align 4
  %27 = call i64 @runtime.LoadHiddenPointerKey(i64 %26)
  store i64 %27, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %27)
  store ptr null, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).ReadBytes")
  %29 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %29)
  %30 = load i64, ptr %4, align 4
  %31 = and i64 %30, 72057594037927935
  %32 = lshr i64 %31, 17
  %33 = select i1 false, i64 0, i64 %32
  %34 = shl i64 %31, 39
  %35 = select i1 false, i64 0, i64 %34
  %36 = or i64 %33, %35
  %37 = and i64 %36, 72057594037927935
  %38 = xor i64 %37, 25399393228665167
  %39 = inttoptr i64 %38 to ptr
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %40 = call { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).ReadBytes"(ptr %39, i8 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %28)
  store { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %40, ptr %6, align 8
  %41 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %41)
  %42 = load { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %43 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %42, 0
  %44 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %43, ptr %44, align 8
  %45 = icmp eq ptr %44, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %44, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %46, ptr %8, align 8
  %47 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %46, 0
  %48 = ptrtoint ptr %47 to i64
  %49 = and i64 %48, 72057594037927935
  %50 = xor i64 %49, 25399393228665167
  %51 = shl i64 %50, 17
  %52 = select i1 false, i64 0, i64 %51
  %53 = lshr i64 %50, 39
  %54 = select i1 false, i64 0, i64 %53
  %55 = or i64 %52, %54
  %56 = and i64 %55, 72057594037927935
  %57 = or i64 %56, -6557241057451442176
  %58 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %46, 1
  %59 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %46, 2
  %60 = insertvalue { i64, i64, i64 } undef, i64 %57, 0
  %61 = insertvalue { i64, i64, i64 } %60, i64 %58, 1
  %62 = insertvalue { i64, i64, i64 } %61, i64 %59, 2
  store { i64, i64, i64 } %62, ptr %7, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %44, align 8
  call void @runtime.TouchConservativeSlot(ptr %44, i64 24)
  call void @runtime.ClobberPointerRegs()
  %63 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %63)
  %64 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %8, align 8
  %65 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %65)
  %66 = load { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %67 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %66, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %67, ptr %9, align 8
  %68 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %68)
  %69 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %9, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  store { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 40)
  store { i64, i64, i64 } zeroinitializer, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  call void @runtime.ClobberPointerRegs()
  %70 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %64, 0
  %71 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %70, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %69, 1
  ret { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %71
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadFrom"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1, ptr %9, align 8
  call void @runtime.ClobberPointerRegs()
  %10 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = load ptr, ptr %8, align 8
  %12 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %12)
  %13 = getelementptr inbounds { i64, ptr }, ptr %11, i32 0, i32 1
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
  %26 = call i64 @runtime.LoadHiddenPointerKey(i64 %25)
  store i64 %26, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %26)
  store ptr null, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).ReadFrom")
  %28 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = load i64, ptr %4, align 4
  %30 = and i64 %29, 72057594037927935
  %31 = lshr i64 %30, 17
  %32 = select i1 false, i64 0, i64 %31
  %33 = shl i64 %30, 39
  %34 = select i1 false, i64 0, i64 %33
  %35 = or i64 %32, %34
  %36 = and i64 %35, 72057594037927935
  %37 = xor i64 %36, 25399393228665167
  %38 = inttoptr i64 %37 to ptr
  %39 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %39)
  %40 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %9, align 8
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %41 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).ReadFrom"(ptr %38, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %40)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %27)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %41, ptr %6, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  call void @runtime.ClobberPointerRegs()
  %42 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %42)
  %43 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %44 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %43, 0
  %45 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %47 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %46, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %47, ptr %7, align 8
  %48 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %48)
  %49 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %7, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  call void @runtime.ClobberPointerRegs()
  %50 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %44, 0
  %51 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %50, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %49, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %51
}

define { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadRune"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  call void @runtime.ClobberPointerRegs()
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds { i64, ptr }, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 72057594037927935
  %14 = xor i64 %13, 25399393228665167
  %15 = shl i64 %14, 17
  %16 = select i1 false, i64 0, i64 %15
  %17 = lshr i64 %14, 39
  %18 = select i1 false, i64 0, i64 %17
  %19 = or i64 %16, %18
  %20 = and i64 %19, 72057594037927935
  %21 = or i64 %20, -6557241057451442176
  store i64 %21, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %21)
  call void @runtime.ClobberPointerRegs()
  %22 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load i64, ptr %1, align 4
  %24 = call i64 @runtime.LoadHiddenPointerKey(i64 %23)
  store i64 %24, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %24)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).ReadRune")
  %26 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load i64, ptr %3, align 4
  %28 = and i64 %27, 72057594037927935
  %29 = lshr i64 %28, 17
  %30 = select i1 false, i64 0, i64 %29
  %31 = shl i64 %28, 39
  %32 = select i1 false, i64 0, i64 %31
  %33 = or i64 %30, %32
  %34 = and i64 %33, 72057594037927935
  %35 = xor i64 %34, 25399393228665167
  %36 = inttoptr i64 %35 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %37 = call { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).ReadRune"(ptr %36)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %25)
  store { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %37, ptr %5, align 8
  %38 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %38)
  %39 = load { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %5, align 8
  %40 = extractvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %39, 0
  %41 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %41)
  %42 = load { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %5, align 8
  %43 = extractvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %42, 1
  %44 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %44)
  %45 = load { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %5, align 8
  %46 = extractvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %45, 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %46, ptr %6, align 8
  %47 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %47)
  %48 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %6, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  store { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 32)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  %49 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i32 %40, 0
  %50 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %49, i64 %43, 1
  %51 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %50, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %48, 2
  ret { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %51
}

define { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.ReadString"(ptr %0, i8 %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %7 = alloca { i64, i64 }, align 8
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %8, align 8
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %10, align 8
  call void @runtime.ClobberPointerRegs()
  %11 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = load ptr, ptr %10, align 8
  %13 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = getelementptr inbounds { i64, ptr }, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i64
  %16 = and i64 %15, 72057594037927935
  %17 = xor i64 %16, 25399393228665167
  %18 = shl i64 %17, 17
  %19 = select i1 false, i64 0, i64 %18
  %20 = lshr i64 %17, 39
  %21 = select i1 false, i64 0, i64 %20
  %22 = or i64 %19, %21
  %23 = and i64 %22, 72057594037927935
  %24 = or i64 %23, -6557241057451442176
  store i64 %24, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %24)
  call void @runtime.ClobberPointerRegs()
  %25 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %25)
  %26 = load i64, ptr %2, align 4
  %27 = call i64 @runtime.LoadHiddenPointerKey(i64 %26)
  store i64 %27, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %27)
  store ptr null, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).ReadString")
  %29 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %29)
  %30 = load i64, ptr %4, align 4
  %31 = and i64 %30, 72057594037927935
  %32 = lshr i64 %31, 17
  %33 = select i1 false, i64 0, i64 %32
  %34 = shl i64 %31, 39
  %35 = select i1 false, i64 0, i64 %34
  %36 = or i64 %33, %35
  %37 = and i64 %36, 72057594037927935
  %38 = xor i64 %37, 25399393228665167
  %39 = inttoptr i64 %38 to ptr
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %40 = call { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).ReadString"(ptr %39, i8 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %28)
  store { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %40, ptr %6, align 8
  %41 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %41)
  %42 = load { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %43 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %42, 0
  %44 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %43, ptr %44, align 8
  %45 = icmp eq ptr %44, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %44, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %46, ptr %8, align 8
  %47 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %46, 0
  %48 = ptrtoint ptr %47 to i64
  %49 = and i64 %48, 72057594037927935
  %50 = xor i64 %49, 25399393228665167
  %51 = shl i64 %50, 17
  %52 = select i1 false, i64 0, i64 %51
  %53 = lshr i64 %50, 39
  %54 = select i1 false, i64 0, i64 %53
  %55 = or i64 %52, %54
  %56 = and i64 %55, 72057594037927935
  %57 = or i64 %56, -6557241057451442176
  %58 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %46, 1
  %59 = insertvalue { i64, i64 } undef, i64 %57, 0
  %60 = insertvalue { i64, i64 } %59, i64 %58, 1
  store { i64, i64 } %60, ptr %7, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %44, align 8
  call void @runtime.TouchConservativeSlot(ptr %44, i64 16)
  call void @runtime.ClobberPointerRegs()
  %61 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %61)
  %62 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %8, align 8
  %63 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %63)
  %64 = load { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %65 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %64, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %65, ptr %9, align 8
  %66 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %66)
  %67 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %9, align 8
  store { i64, i64 } zeroinitializer, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  store { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 32)
  store { i64, i64 } zeroinitializer, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  call void @runtime.ClobberPointerRegs()
  %68 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" %62, 0
  %69 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %68, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %67, 1
  ret { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %69
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Reset"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @runtime.ClobberPointerRegs()
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds { i64, ptr }, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, 72057594037927935
  %12 = xor i64 %11, 25399393228665167
  %13 = shl i64 %12, 17
  %14 = select i1 false, i64 0, i64 %13
  %15 = lshr i64 %12, 39
  %16 = select i1 false, i64 0, i64 %15
  %17 = or i64 %14, %16
  %18 = and i64 %17, 72057594037927935
  %19 = or i64 %18, -6557241057451442176
  store i64 %19, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %19)
  call void @runtime.ClobberPointerRegs()
  %20 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %1, align 4
  %22 = call i64 @runtime.LoadHiddenPointerKey(i64 %21)
  store i64 %22, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %22)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).Reset")
  %24 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load i64, ptr %3, align 4
  %26 = and i64 %25, 72057594037927935
  %27 = lshr i64 %26, 17
  %28 = select i1 false, i64 0, i64 %27
  %29 = shl i64 %26, 39
  %30 = select i1 false, i64 0, i64 %29
  %31 = or i64 %28, %30
  %32 = and i64 %31, 72057594037927935
  %33 = xor i64 %32, 25399393228665167
  %34 = inttoptr i64 %33 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"bytes.(*Buffer).Reset"(ptr %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %23)
  ret void
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.String"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca { i64, i64 }, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  call void @runtime.ClobberPointerRegs()
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds { i64, ptr }, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 72057594037927935
  %14 = xor i64 %13, 25399393228665167
  %15 = shl i64 %14, 17
  %16 = select i1 false, i64 0, i64 %15
  %17 = lshr i64 %14, 39
  %18 = select i1 false, i64 0, i64 %17
  %19 = or i64 %16, %18
  %20 = and i64 %19, 72057594037927935
  %21 = or i64 %20, -6557241057451442176
  store i64 %21, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %21)
  call void @runtime.ClobberPointerRegs()
  %22 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load i64, ptr %1, align 4
  %24 = call i64 @runtime.LoadHiddenPointerKey(i64 %23)
  store i64 %24, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %24)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).String")
  %26 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load i64, ptr %3, align 4
  %28 = and i64 %27, 72057594037927935
  %29 = lshr i64 %28, 17
  %30 = select i1 false, i64 0, i64 %29
  %31 = shl i64 %28, 39
  %32 = select i1 false, i64 0, i64 %31
  %33 = or i64 %30, %32
  %34 = and i64 %33, 72057594037927935
  %35 = xor i64 %34, 25399393228665167
  %36 = inttoptr i64 %35 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %37 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"bytes.(*Buffer).String"(ptr %36)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %25)
  %38 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %37, ptr %38, align 8
  %39 = icmp eq ptr %38, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %39)
  %40 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %38, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %40, ptr %6, align 8
  %41 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %40, 0
  %42 = ptrtoint ptr %41 to i64
  %43 = and i64 %42, 72057594037927935
  %44 = xor i64 %43, 25399393228665167
  %45 = shl i64 %44, 17
  %46 = select i1 false, i64 0, i64 %45
  %47 = lshr i64 %44, 39
  %48 = select i1 false, i64 0, i64 %47
  %49 = or i64 %46, %48
  %50 = and i64 %49, 72057594037927935
  %51 = or i64 %50, -6557241057451442176
  %52 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %40, 1
  %53 = insertvalue { i64, i64 } undef, i64 %51, 0
  %54 = insertvalue { i64, i64 } %53, i64 %52, 1
  store { i64, i64 } %54, ptr %5, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %38, align 8
  call void @runtime.TouchConservativeSlot(ptr %38, i64 16)
  call void @runtime.ClobberPointerRegs()
  %55 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %55)
  %56 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %6, align 8
  store { i64, i64 } zeroinitializer, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  store { i64, i64 } zeroinitializer, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %56
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Truncate"(ptr %0, i64 %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @runtime.ClobberPointerRegs()
  %7 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = load ptr, ptr %6, align 8
  %9 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = getelementptr inbounds { i64, ptr }, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i64
  %12 = and i64 %11, 72057594037927935
  %13 = xor i64 %12, 25399393228665167
  %14 = shl i64 %13, 17
  %15 = select i1 false, i64 0, i64 %14
  %16 = lshr i64 %13, 39
  %17 = select i1 false, i64 0, i64 %16
  %18 = or i64 %15, %17
  %19 = and i64 %18, 72057594037927935
  %20 = or i64 %19, -6557241057451442176
  store i64 %20, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %20)
  call void @runtime.ClobberPointerRegs()
  %21 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load i64, ptr %2, align 4
  %23 = call i64 @runtime.LoadHiddenPointerKey(i64 %22)
  store i64 %23, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %23)
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).Truncate")
  %25 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %25)
  %26 = load i64, ptr %4, align 4
  %27 = and i64 %26, 72057594037927935
  %28 = lshr i64 %27, 17
  %29 = select i1 false, i64 0, i64 %28
  %30 = shl i64 %27, 39
  %31 = select i1 false, i64 0, i64 %30
  %32 = or i64 %29, %31
  %33 = and i64 %32, 72057594037927935
  %34 = xor i64 %33, 25399393228665167
  %35 = inttoptr i64 %34 to ptr
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"bytes.(*Buffer).Truncate"(ptr %35, i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %24)
  ret void
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.UnreadByte"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @runtime.ClobberPointerRegs()
  %7 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = load ptr, ptr %6, align 8
  %9 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = getelementptr inbounds { i64, ptr }, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i64
  %12 = and i64 %11, 72057594037927935
  %13 = xor i64 %12, 25399393228665167
  %14 = shl i64 %13, 17
  %15 = select i1 false, i64 0, i64 %14
  %16 = lshr i64 %13, 39
  %17 = select i1 false, i64 0, i64 %16
  %18 = or i64 %15, %17
  %19 = and i64 %18, 72057594037927935
  %20 = or i64 %19, -6557241057451442176
  store i64 %20, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %20)
  call void @runtime.ClobberPointerRegs()
  %21 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load i64, ptr %1, align 4
  %23 = call i64 @runtime.LoadHiddenPointerKey(i64 %22)
  store i64 %23, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %23)
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).UnreadByte")
  %25 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %25)
  %26 = load i64, ptr %3, align 4
  %27 = and i64 %26, 72057594037927935
  %28 = lshr i64 %27, 17
  %29 = select i1 false, i64 0, i64 %28
  %30 = shl i64 %27, 39
  %31 = select i1 false, i64 0, i64 %30
  %32 = or i64 %29, %31
  %33 = and i64 %32, 72057594037927935
  %34 = xor i64 %33, 25399393228665167
  %35 = inttoptr i64 %34 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %36 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"bytes.(*Buffer).UnreadByte"(ptr %35)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %36, ptr %5, align 8
  %37 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %5, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %38
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.UnreadRune"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @runtime.ClobberPointerRegs()
  %7 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = load ptr, ptr %6, align 8
  %9 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = getelementptr inbounds { i64, ptr }, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i64
  %12 = and i64 %11, 72057594037927935
  %13 = xor i64 %12, 25399393228665167
  %14 = shl i64 %13, 17
  %15 = select i1 false, i64 0, i64 %14
  %16 = lshr i64 %13, 39
  %17 = select i1 false, i64 0, i64 %16
  %18 = or i64 %15, %17
  %19 = and i64 %18, 72057594037927935
  %20 = or i64 %19, -6557241057451442176
  store i64 %20, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %20)
  call void @runtime.ClobberPointerRegs()
  %21 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load i64, ptr %1, align 4
  %23 = call i64 @runtime.LoadHiddenPointerKey(i64 %22)
  store i64 %23, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %23)
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).UnreadRune")
  %25 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %25)
  %26 = load i64, ptr %3, align 4
  %27 = and i64 %26, 72057594037927935
  %28 = lshr i64 %27, 17
  %29 = select i1 false, i64 0, i64 %28
  %30 = shl i64 %27, 39
  %31 = select i1 false, i64 0, i64 %30
  %32 = or i64 %29, %31
  %33 = and i64 %32, 72057594037927935
  %34 = xor i64 %33, 25399393228665167
  %35 = inttoptr i64 %34 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %36 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"bytes.(*Buffer).UnreadRune"(ptr %35)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %36, ptr %5, align 8
  %37 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %5, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %38
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.Write"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, ptr %9, align 8
  call void @runtime.ClobberPointerRegs()
  %10 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = load ptr, ptr %8, align 8
  %12 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %12)
  %13 = getelementptr inbounds { i64, ptr }, ptr %11, i32 0, i32 1
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
  %26 = call i64 @runtime.LoadHiddenPointerKey(i64 %25)
  store i64 %26, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %26)
  store ptr null, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).Write")
  %28 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = load i64, ptr %4, align 4
  %30 = and i64 %29, 72057594037927935
  %31 = lshr i64 %30, 17
  %32 = select i1 false, i64 0, i64 %31
  %33 = shl i64 %30, 39
  %34 = select i1 false, i64 0, i64 %33
  %35 = or i64 %32, %34
  %36 = and i64 %35, 72057594037927935
  %37 = xor i64 %36, 25399393228665167
  %38 = inttoptr i64 %37 to ptr
  %39 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %39)
  %40 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %9, align 8
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %41 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).Write"(ptr %38, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %27)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %41, ptr %6, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 24)
  call void @runtime.ClobberPointerRegs()
  %42 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %42)
  %43 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %44 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %43, 0
  %45 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %47 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %46, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %47, ptr %7, align 8
  %48 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %48)
  %49 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %7, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  call void @runtime.ClobberPointerRegs()
  %50 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %44, 0
  %51 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %50, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %49, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %51
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.WriteByte"(ptr %0, i8 %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  call void @runtime.ClobberPointerRegs()
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds { i64, ptr }, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 72057594037927935
  %14 = xor i64 %13, 25399393228665167
  %15 = shl i64 %14, 17
  %16 = select i1 false, i64 0, i64 %15
  %17 = lshr i64 %14, 39
  %18 = select i1 false, i64 0, i64 %17
  %19 = or i64 %16, %18
  %20 = and i64 %19, 72057594037927935
  %21 = or i64 %20, -6557241057451442176
  store i64 %21, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %21)
  call void @runtime.ClobberPointerRegs()
  %22 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load i64, ptr %2, align 4
  %24 = call i64 @runtime.LoadHiddenPointerKey(i64 %23)
  store i64 %24, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %24)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).WriteByte")
  %26 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load i64, ptr %4, align 4
  %28 = and i64 %27, 72057594037927935
  %29 = lshr i64 %28, 17
  %30 = select i1 false, i64 0, i64 %29
  %31 = shl i64 %28, 39
  %32 = select i1 false, i64 0, i64 %31
  %33 = or i64 %30, %32
  %34 = and i64 %33, 72057594037927935
  %35 = xor i64 %34, 25399393228665167
  %36 = inttoptr i64 %35 to ptr
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %37 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"bytes.(*Buffer).WriteByte"(ptr %36, i8 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %25)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %37, ptr %6, align 8
  %38 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %38)
  %39 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %6, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %39
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.WriteRune"(ptr %0, i32 %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8
  call void @runtime.ClobberPointerRegs()
  %9 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = getelementptr inbounds { i64, ptr }, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i64
  %14 = and i64 %13, 72057594037927935
  %15 = xor i64 %14, 25399393228665167
  %16 = shl i64 %15, 17
  %17 = select i1 false, i64 0, i64 %16
  %18 = lshr i64 %15, 39
  %19 = select i1 false, i64 0, i64 %18
  %20 = or i64 %17, %19
  %21 = and i64 %20, 72057594037927935
  %22 = or i64 %21, -6557241057451442176
  store i64 %22, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %22)
  call void @runtime.ClobberPointerRegs()
  %23 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load i64, ptr %2, align 4
  %25 = call i64 @runtime.LoadHiddenPointerKey(i64 %24)
  store i64 %25, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %25)
  store ptr null, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).WriteRune")
  %27 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %27)
  %28 = load i64, ptr %4, align 4
  %29 = and i64 %28, 72057594037927935
  %30 = lshr i64 %29, 17
  %31 = select i1 false, i64 0, i64 %30
  %32 = shl i64 %29, 39
  %33 = select i1 false, i64 0, i64 %32
  %34 = or i64 %31, %33
  %35 = and i64 %34, 72057594037927935
  %36 = xor i64 %35, 25399393228665167
  %37 = inttoptr i64 %36 to ptr
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %38 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).WriteRune"(ptr %37, i32 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %26)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %38, ptr %6, align 8
  %39 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %39)
  %40 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %41 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %40, 0
  %42 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %42)
  %43 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %44 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %43, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %44, ptr %7, align 8
  %45 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %7, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  call void @runtime.ClobberPointerRegs()
  %47 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %41, 0
  %48 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %47, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %46, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %48
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.WriteString"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %1, ptr %9, align 8
  call void @runtime.ClobberPointerRegs()
  %10 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = load ptr, ptr %8, align 8
  %12 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %12)
  %13 = getelementptr inbounds { i64, ptr }, ptr %11, i32 0, i32 1
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
  %26 = call i64 @runtime.LoadHiddenPointerKey(i64 %25)
  store i64 %26, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %26)
  store ptr null, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).WriteString")
  %28 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = load i64, ptr %4, align 4
  %30 = and i64 %29, 72057594037927935
  %31 = lshr i64 %30, 17
  %32 = select i1 false, i64 0, i64 %31
  %33 = shl i64 %30, 39
  %34 = select i1 false, i64 0, i64 %33
  %35 = or i64 %32, %34
  %36 = and i64 %35, 72057594037927935
  %37 = xor i64 %36, 25399393228665167
  %38 = inttoptr i64 %37 to ptr
  %39 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %39)
  %40 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %9, align 8
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %41 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).WriteString"(ptr %38, %"github.com/goplus/llgo/runtime/internal/runtime.String" %40)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %27)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %41, ptr %6, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  call void @runtime.ClobberPointerRegs()
  %42 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %42)
  %43 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %44 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %43, 0
  %45 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %47 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %46, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %47, ptr %7, align 8
  %48 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %48)
  %49 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %7, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  call void @runtime.ClobberPointerRegs()
  %50 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %44, 0
  %51 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %50, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %49, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %51
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.WriteTo"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1, ptr %9, align 8
  call void @runtime.ClobberPointerRegs()
  %10 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = load ptr, ptr %8, align 8
  %12 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %12)
  %13 = getelementptr inbounds { i64, ptr }, ptr %11, i32 0, i32 1
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
  %26 = call i64 @runtime.LoadHiddenPointerKey(i64 %25)
  store i64 %26, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %26)
  store ptr null, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).WriteTo")
  %28 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = load i64, ptr %4, align 4
  %30 = and i64 %29, 72057594037927935
  %31 = lshr i64 %30, 17
  %32 = select i1 false, i64 0, i64 %31
  %33 = shl i64 %30, 39
  %34 = select i1 false, i64 0, i64 %33
  %35 = or i64 %32, %34
  %36 = and i64 %35, 72057594037927935
  %37 = xor i64 %36, 25399393228665167
  %38 = inttoptr i64 %37 to ptr
  %39 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %39)
  %40 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %9, align 8
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %41 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).WriteTo"(ptr %38, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %40)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %27)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %41, ptr %6, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  call void @runtime.ClobberPointerRegs()
  %42 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %42)
  %43 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %44 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %43, 0
  %45 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %47 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %46, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %47, ptr %7, align 8
  %48 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %48)
  %49 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %7, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  call void @runtime.ClobberPointerRegs()
  %50 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %44, 0
  %51 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %50, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %49, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %51
}

define i1 @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.empty"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @runtime.ClobberPointerRegs()
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds { i64, ptr }, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, 72057594037927935
  %12 = xor i64 %11, 25399393228665167
  %13 = shl i64 %12, 17
  %14 = select i1 false, i64 0, i64 %13
  %15 = lshr i64 %12, 39
  %16 = select i1 false, i64 0, i64 %15
  %17 = or i64 %14, %16
  %18 = and i64 %17, 72057594037927935
  %19 = or i64 %18, -6557241057451442176
  store i64 %19, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %19)
  call void @runtime.ClobberPointerRegs()
  %20 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %1, align 4
  %22 = call i64 @runtime.LoadHiddenPointerKey(i64 %21)
  store i64 %22, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %22)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).empty")
  %24 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load i64, ptr %3, align 4
  %26 = and i64 %25, 72057594037927935
  %27 = lshr i64 %26, 17
  %28 = select i1 false, i64 0, i64 %27
  %29 = shl i64 %26, 39
  %30 = select i1 false, i64 0, i64 %29
  %31 = or i64 %28, %30
  %32 = and i64 %31, 72057594037927935
  %33 = xor i64 %32, 25399393228665167
  %34 = inttoptr i64 %33 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %35 = call i1 @"bytes.(*Buffer).empty"(ptr %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %23)
  ret i1 %35
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.grow"(ptr %0, i64 %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @runtime.ClobberPointerRegs()
  %7 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = load ptr, ptr %6, align 8
  %9 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = getelementptr inbounds { i64, ptr }, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i64
  %12 = and i64 %11, 72057594037927935
  %13 = xor i64 %12, 25399393228665167
  %14 = shl i64 %13, 17
  %15 = select i1 false, i64 0, i64 %14
  %16 = lshr i64 %13, 39
  %17 = select i1 false, i64 0, i64 %16
  %18 = or i64 %15, %17
  %19 = and i64 %18, 72057594037927935
  %20 = or i64 %19, -6557241057451442176
  store i64 %20, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %20)
  call void @runtime.ClobberPointerRegs()
  %21 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load i64, ptr %2, align 4
  %23 = call i64 @runtime.LoadHiddenPointerKey(i64 %22)
  store i64 %23, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %23)
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).grow")
  %25 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %25)
  %26 = load i64, ptr %4, align 4
  %27 = and i64 %26, 72057594037927935
  %28 = lshr i64 %27, 17
  %29 = select i1 false, i64 0, i64 %28
  %30 = shl i64 %27, 39
  %31 = select i1 false, i64 0, i64 %30
  %32 = or i64 %29, %31
  %33 = and i64 %32, 72057594037927935
  %34 = xor i64 %33, 25399393228665167
  %35 = inttoptr i64 %34 to ptr
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %36 = call i64 @"bytes.(*Buffer).grow"(ptr %35, i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %24)
  ret i64 %36
}

define { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.readSlice"(ptr %0, i8 %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %7 = alloca { i64, i64, i64 }, align 8
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %8, align 8
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %10, align 8
  call void @runtime.ClobberPointerRegs()
  %11 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = load ptr, ptr %10, align 8
  %13 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = getelementptr inbounds { i64, ptr }, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i64
  %16 = and i64 %15, 72057594037927935
  %17 = xor i64 %16, 25399393228665167
  %18 = shl i64 %17, 17
  %19 = select i1 false, i64 0, i64 %18
  %20 = lshr i64 %17, 39
  %21 = select i1 false, i64 0, i64 %20
  %22 = or i64 %19, %21
  %23 = and i64 %22, 72057594037927935
  %24 = or i64 %23, -6557241057451442176
  store i64 %24, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %24)
  call void @runtime.ClobberPointerRegs()
  %25 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %25)
  %26 = load i64, ptr %2, align 4
  %27 = call i64 @runtime.LoadHiddenPointerKey(i64 %26)
  store i64 %27, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %27)
  store ptr null, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).readSlice")
  %29 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %29)
  %30 = load i64, ptr %4, align 4
  %31 = and i64 %30, 72057594037927935
  %32 = lshr i64 %31, 17
  %33 = select i1 false, i64 0, i64 %32
  %34 = shl i64 %31, 39
  %35 = select i1 false, i64 0, i64 %34
  %36 = or i64 %33, %35
  %37 = and i64 %36, 72057594037927935
  %38 = xor i64 %37, 25399393228665167
  %39 = inttoptr i64 %38 to ptr
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %40 = call { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).readSlice"(ptr %39, i8 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %28)
  store { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %40, ptr %6, align 8
  %41 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %41)
  %42 = load { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %43 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %42, 0
  %44 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %43, ptr %44, align 8
  %45 = icmp eq ptr %44, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %44, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %46, ptr %8, align 8
  %47 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %46, 0
  %48 = ptrtoint ptr %47 to i64
  %49 = and i64 %48, 72057594037927935
  %50 = xor i64 %49, 25399393228665167
  %51 = shl i64 %50, 17
  %52 = select i1 false, i64 0, i64 %51
  %53 = lshr i64 %50, 39
  %54 = select i1 false, i64 0, i64 %53
  %55 = or i64 %52, %54
  %56 = and i64 %55, 72057594037927935
  %57 = or i64 %56, -6557241057451442176
  %58 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %46, 1
  %59 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %46, 2
  %60 = insertvalue { i64, i64, i64 } undef, i64 %57, 0
  %61 = insertvalue { i64, i64, i64 } %60, i64 %58, 1
  %62 = insertvalue { i64, i64, i64 } %61, i64 %59, 2
  store { i64, i64, i64 } %62, ptr %7, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %44, align 8
  call void @runtime.TouchConservativeSlot(ptr %44, i64 24)
  call void @runtime.ClobberPointerRegs()
  %63 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %63)
  %64 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %8, align 8
  %65 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %65)
  %66 = load { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %67 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %66, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %67, ptr %9, align 8
  %68 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %68)
  %69 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %9, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  store { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 40)
  store { i64, i64, i64 } zeroinitializer, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  call void @runtime.ClobberPointerRegs()
  %70 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %64, 0
  %71 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %70, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %69, 1
  ret { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %71
}

define { i64, i1 } @"github.com/goplus/llgo/cl/_testgo/abimethod.*struct{m int; *bytes.Buffer}.tryGrowByReslice"(ptr %0, i64 %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @runtime.ClobberPointerRegs()
  %7 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = load ptr, ptr %6, align 8
  %9 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = getelementptr inbounds { i64, ptr }, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i64
  %12 = and i64 %11, 72057594037927935
  %13 = xor i64 %12, 25399393228665167
  %14 = shl i64 %13, 17
  %15 = select i1 false, i64 0, i64 %14
  %16 = lshr i64 %13, 39
  %17 = select i1 false, i64 0, i64 %16
  %18 = or i64 %15, %17
  %19 = and i64 %18, 72057594037927935
  %20 = or i64 %19, -6557241057451442176
  store i64 %20, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %20)
  call void @runtime.ClobberPointerRegs()
  %21 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load i64, ptr %2, align 4
  %23 = call i64 @runtime.LoadHiddenPointerKey(i64 %22)
  store i64 %23, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %23)
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).tryGrowByReslice")
  %25 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %25)
  %26 = load i64, ptr %4, align 4
  %27 = and i64 %26, 72057594037927935
  %28 = lshr i64 %27, 17
  %29 = select i1 false, i64 0, i64 %28
  %30 = shl i64 %27, 39
  %31 = select i1 false, i64 0, i64 %30
  %32 = or i64 %29, %31
  %33 = and i64 %32, 72057594037927935
  %34 = xor i64 %33, 25399393228665167
  %35 = inttoptr i64 %34 to ptr
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %36 = call { i64, i1 } @"bytes.(*Buffer).tryGrowByReslice"(ptr %35, i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %24)
  %37 = extractvalue { i64, i1 } %36, 0
  %38 = extractvalue { i64, i1 } %36, 1
  %39 = insertvalue { i64, i1 } undef, i64 %37, 0
  %40 = insertvalue { i64, i1 } %39, i1 %38, 1
  ret { i64, i1 } %40
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Available"({ i64, ptr } %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %5, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %5, align 8
  call void @runtime.ClobberPointerRegs()
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds { i64, ptr }, ptr %5, i32 0, i32 1
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
  %20 = call i64 @runtime.LoadHiddenPointerKey(i64 %19)
  store i64 %20, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %20)
  store { i64, ptr } zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).Available")
  %22 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load i64, ptr %3, align 4
  %24 = and i64 %23, 72057594037927935
  %25 = lshr i64 %24, 17
  %26 = select i1 false, i64 0, i64 %25
  %27 = shl i64 %24, 39
  %28 = select i1 false, i64 0, i64 %27
  %29 = or i64 %26, %28
  %30 = and i64 %29, 72057594037927935
  %31 = xor i64 %30, 25399393228665167
  %32 = inttoptr i64 %31 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %33 = call i64 @"bytes.(*Buffer).Available"(ptr %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %21)
  ret i64 %33
}

define %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.AvailableBuffer"({ i64, ptr } %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca { i64, i64, i64 }, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %6, align 8
  %7 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %7, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %7, align 8
  call void @runtime.ClobberPointerRegs()
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds { i64, ptr }, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, 72057594037927935
  %12 = xor i64 %11, 25399393228665167
  %13 = shl i64 %12, 17
  %14 = select i1 false, i64 0, i64 %13
  %15 = lshr i64 %12, 39
  %16 = select i1 false, i64 0, i64 %15
  %17 = or i64 %14, %16
  %18 = and i64 %17, 72057594037927935
  %19 = or i64 %18, -6557241057451442176
  store i64 %19, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %19)
  call void @runtime.ClobberPointerRegs()
  %20 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %1, align 4
  %22 = call i64 @runtime.LoadHiddenPointerKey(i64 %21)
  store i64 %22, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %22)
  store { i64, ptr } zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).AvailableBuffer")
  %24 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load i64, ptr %3, align 4
  %26 = and i64 %25, 72057594037927935
  %27 = lshr i64 %26, 17
  %28 = select i1 false, i64 0, i64 %27
  %29 = shl i64 %26, 39
  %30 = select i1 false, i64 0, i64 %29
  %31 = or i64 %28, %30
  %32 = and i64 %31, 72057594037927935
  %33 = xor i64 %32, 25399393228665167
  %34 = inttoptr i64 %33 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %35 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"bytes.(*Buffer).AvailableBuffer"(ptr %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %23)
  %36 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35, ptr %36, align 8
  %37 = icmp eq ptr %36, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %36, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38, ptr %6, align 8
  %39 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38, 0
  %40 = ptrtoint ptr %39 to i64
  %41 = and i64 %40, 72057594037927935
  %42 = xor i64 %41, 25399393228665167
  %43 = shl i64 %42, 17
  %44 = select i1 false, i64 0, i64 %43
  %45 = lshr i64 %42, 39
  %46 = select i1 false, i64 0, i64 %45
  %47 = or i64 %44, %46
  %48 = and i64 %47, 72057594037927935
  %49 = or i64 %48, -6557241057451442176
  %50 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38, 1
  %51 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38, 2
  %52 = insertvalue { i64, i64, i64 } undef, i64 %49, 0
  %53 = insertvalue { i64, i64, i64 } %52, i64 %50, 1
  %54 = insertvalue { i64, i64, i64 } %53, i64 %51, 2
  store { i64, i64, i64 } %54, ptr %5, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %36, align 8
  call void @runtime.TouchConservativeSlot(ptr %36, i64 24)
  call void @runtime.ClobberPointerRegs()
  %55 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %55)
  %56 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %6, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  store { i64, i64, i64 } zeroinitializer, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %56
}

define %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Bytes"({ i64, ptr } %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca { i64, i64, i64 }, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %6, align 8
  %7 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %7, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %7, align 8
  call void @runtime.ClobberPointerRegs()
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds { i64, ptr }, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, 72057594037927935
  %12 = xor i64 %11, 25399393228665167
  %13 = shl i64 %12, 17
  %14 = select i1 false, i64 0, i64 %13
  %15 = lshr i64 %12, 39
  %16 = select i1 false, i64 0, i64 %15
  %17 = or i64 %14, %16
  %18 = and i64 %17, 72057594037927935
  %19 = or i64 %18, -6557241057451442176
  store i64 %19, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %19)
  call void @runtime.ClobberPointerRegs()
  %20 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %1, align 4
  %22 = call i64 @runtime.LoadHiddenPointerKey(i64 %21)
  store i64 %22, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %22)
  store { i64, ptr } zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).Bytes")
  %24 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load i64, ptr %3, align 4
  %26 = and i64 %25, 72057594037927935
  %27 = lshr i64 %26, 17
  %28 = select i1 false, i64 0, i64 %27
  %29 = shl i64 %26, 39
  %30 = select i1 false, i64 0, i64 %29
  %31 = or i64 %28, %30
  %32 = and i64 %31, 72057594037927935
  %33 = xor i64 %32, 25399393228665167
  %34 = inttoptr i64 %33 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %35 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"bytes.(*Buffer).Bytes"(ptr %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %23)
  %36 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35, ptr %36, align 8
  %37 = icmp eq ptr %36, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %36, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38, ptr %6, align 8
  %39 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38, 0
  %40 = ptrtoint ptr %39 to i64
  %41 = and i64 %40, 72057594037927935
  %42 = xor i64 %41, 25399393228665167
  %43 = shl i64 %42, 17
  %44 = select i1 false, i64 0, i64 %43
  %45 = lshr i64 %42, 39
  %46 = select i1 false, i64 0, i64 %45
  %47 = or i64 %44, %46
  %48 = and i64 %47, 72057594037927935
  %49 = or i64 %48, -6557241057451442176
  %50 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38, 1
  %51 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38, 2
  %52 = insertvalue { i64, i64, i64 } undef, i64 %49, 0
  %53 = insertvalue { i64, i64, i64 } %52, i64 %50, 1
  %54 = insertvalue { i64, i64, i64 } %53, i64 %51, 2
  store { i64, i64, i64 } %54, ptr %5, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %36, align 8
  call void @runtime.TouchConservativeSlot(ptr %36, i64 24)
  call void @runtime.ClobberPointerRegs()
  %55 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %55)
  %56 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %6, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  store { i64, i64, i64 } zeroinitializer, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %56
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Cap"({ i64, ptr } %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %5, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %5, align 8
  call void @runtime.ClobberPointerRegs()
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds { i64, ptr }, ptr %5, i32 0, i32 1
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
  %20 = call i64 @runtime.LoadHiddenPointerKey(i64 %19)
  store i64 %20, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %20)
  store { i64, ptr } zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).Cap")
  %22 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load i64, ptr %3, align 4
  %24 = and i64 %23, 72057594037927935
  %25 = lshr i64 %24, 17
  %26 = select i1 false, i64 0, i64 %25
  %27 = shl i64 %24, 39
  %28 = select i1 false, i64 0, i64 %27
  %29 = or i64 %26, %28
  %30 = and i64 %29, 72057594037927935
  %31 = xor i64 %30, 25399393228665167
  %32 = inttoptr i64 %31 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %33 = call i64 @"bytes.(*Buffer).Cap"(ptr %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %21)
  ret i64 %33
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Grow"({ i64, ptr } %0, i64 %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %6, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %6, align 8
  call void @runtime.ClobberPointerRegs()
  %7 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = getelementptr inbounds { i64, ptr }, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i64
  %10 = and i64 %9, 72057594037927935
  %11 = xor i64 %10, 25399393228665167
  %12 = shl i64 %11, 17
  %13 = select i1 false, i64 0, i64 %12
  %14 = lshr i64 %11, 39
  %15 = select i1 false, i64 0, i64 %14
  %16 = or i64 %13, %15
  %17 = and i64 %16, 72057594037927935
  %18 = or i64 %17, -6557241057451442176
  store i64 %18, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %18)
  call void @runtime.ClobberPointerRegs()
  %19 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = load i64, ptr %2, align 4
  %21 = call i64 @runtime.LoadHiddenPointerKey(i64 %20)
  store i64 %21, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %21)
  store { i64, ptr } zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).Grow")
  %23 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load i64, ptr %4, align 4
  %25 = and i64 %24, 72057594037927935
  %26 = lshr i64 %25, 17
  %27 = select i1 false, i64 0, i64 %26
  %28 = shl i64 %25, 39
  %29 = select i1 false, i64 0, i64 %28
  %30 = or i64 %27, %29
  %31 = and i64 %30, 72057594037927935
  %32 = xor i64 %31, 25399393228665167
  %33 = inttoptr i64 %32 to ptr
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"bytes.(*Buffer).Grow"(ptr %33, i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %22)
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Len"({ i64, ptr } %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %5, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %5, align 8
  call void @runtime.ClobberPointerRegs()
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds { i64, ptr }, ptr %5, i32 0, i32 1
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
  %20 = call i64 @runtime.LoadHiddenPointerKey(i64 %19)
  store i64 %20, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %20)
  store { i64, ptr } zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).Len")
  %22 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load i64, ptr %3, align 4
  %24 = and i64 %23, 72057594037927935
  %25 = lshr i64 %24, 17
  %26 = select i1 false, i64 0, i64 %25
  %27 = shl i64 %24, 39
  %28 = select i1 false, i64 0, i64 %27
  %29 = or i64 %26, %28
  %30 = and i64 %29, 72057594037927935
  %31 = xor i64 %30, 25399393228665167
  %32 = inttoptr i64 %31 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %33 = call i64 @"bytes.(*Buffer).Len"(ptr %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %21)
  ret i64 %33
}

define %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Next"({ i64, ptr } %0, i64 %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca { i64, i64, i64 }, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %7, align 8
  %8 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %8, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %8, align 8
  call void @runtime.ClobberPointerRegs()
  %9 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = getelementptr inbounds { i64, ptr }, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i64
  %12 = and i64 %11, 72057594037927935
  %13 = xor i64 %12, 25399393228665167
  %14 = shl i64 %13, 17
  %15 = select i1 false, i64 0, i64 %14
  %16 = lshr i64 %13, 39
  %17 = select i1 false, i64 0, i64 %16
  %18 = or i64 %15, %17
  %19 = and i64 %18, 72057594037927935
  %20 = or i64 %19, -6557241057451442176
  store i64 %20, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %20)
  call void @runtime.ClobberPointerRegs()
  %21 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load i64, ptr %2, align 4
  %23 = call i64 @runtime.LoadHiddenPointerKey(i64 %22)
  store i64 %23, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %23)
  store { i64, ptr } zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).Next")
  %25 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %25)
  %26 = load i64, ptr %4, align 4
  %27 = and i64 %26, 72057594037927935
  %28 = lshr i64 %27, 17
  %29 = select i1 false, i64 0, i64 %28
  %30 = shl i64 %27, 39
  %31 = select i1 false, i64 0, i64 %30
  %32 = or i64 %29, %31
  %33 = and i64 %32, 72057594037927935
  %34 = xor i64 %33, 25399393228665167
  %35 = inttoptr i64 %34 to ptr
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %36 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"bytes.(*Buffer).Next"(ptr %35, i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %24)
  %37 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %36, ptr %37, align 8
  %38 = icmp eq ptr %37, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %38)
  %39 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %37, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, ptr %7, align 8
  %40 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, 0
  %41 = ptrtoint ptr %40 to i64
  %42 = and i64 %41, 72057594037927935
  %43 = xor i64 %42, 25399393228665167
  %44 = shl i64 %43, 17
  %45 = select i1 false, i64 0, i64 %44
  %46 = lshr i64 %43, 39
  %47 = select i1 false, i64 0, i64 %46
  %48 = or i64 %45, %47
  %49 = and i64 %48, 72057594037927935
  %50 = or i64 %49, -6557241057451442176
  %51 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, 1
  %52 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, 2
  %53 = insertvalue { i64, i64, i64 } undef, i64 %50, 0
  %54 = insertvalue { i64, i64, i64 } %53, i64 %51, 1
  %55 = insertvalue { i64, i64, i64 } %54, i64 %52, 2
  store { i64, i64, i64 } %55, ptr %6, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %37, align 8
  call void @runtime.TouchConservativeSlot(ptr %37, i64 24)
  call void @runtime.ClobberPointerRegs()
  %56 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %56)
  %57 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %7, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 24)
  store { i64, i64, i64 } zeroinitializer, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 24)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %57
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Read"({ i64, ptr } %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, ptr %8, align 8
  call void @runtime.ClobberPointerRegs()
  %9 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %9, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %9, align 8
  %10 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds { i64, ptr }, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 72057594037927935
  %14 = xor i64 %13, 25399393228665167
  %15 = shl i64 %14, 17
  %16 = select i1 false, i64 0, i64 %15
  %17 = lshr i64 %14, 39
  %18 = select i1 false, i64 0, i64 %17
  %19 = or i64 %16, %18
  %20 = and i64 %19, 72057594037927935
  %21 = or i64 %20, -6557241057451442176
  store i64 %21, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %21)
  call void @runtime.ClobberPointerRegs()
  %22 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load i64, ptr %2, align 4
  %24 = call i64 @runtime.LoadHiddenPointerKey(i64 %23)
  store i64 %24, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %24)
  store { i64, ptr } zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).Read")
  %26 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load i64, ptr %4, align 4
  %28 = and i64 %27, 72057594037927935
  %29 = lshr i64 %28, 17
  %30 = select i1 false, i64 0, i64 %29
  %31 = shl i64 %28, 39
  %32 = select i1 false, i64 0, i64 %31
  %33 = or i64 %30, %32
  %34 = and i64 %33, 72057594037927935
  %35 = xor i64 %34, 25399393228665167
  %36 = inttoptr i64 %35 to ptr
  %37 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %8, align 8
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %39 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).Read"(ptr %36, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %25)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %39, ptr %6, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 24)
  call void @runtime.ClobberPointerRegs()
  %40 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %40)
  %41 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %42 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %41, 0
  %43 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %45 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %44, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %45, ptr %7, align 8
  %46 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %46)
  %47 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %7, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  call void @runtime.ClobberPointerRegs()
  %48 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %42, 0
  %49 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %48, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %47, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %49
}

define { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.ReadByte"({ i64, ptr } %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %7 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %7, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %7, align 8
  call void @runtime.ClobberPointerRegs()
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds { i64, ptr }, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, 72057594037927935
  %12 = xor i64 %11, 25399393228665167
  %13 = shl i64 %12, 17
  %14 = select i1 false, i64 0, i64 %13
  %15 = lshr i64 %12, 39
  %16 = select i1 false, i64 0, i64 %15
  %17 = or i64 %14, %16
  %18 = and i64 %17, 72057594037927935
  %19 = or i64 %18, -6557241057451442176
  store i64 %19, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %19)
  call void @runtime.ClobberPointerRegs()
  %20 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %1, align 4
  %22 = call i64 @runtime.LoadHiddenPointerKey(i64 %21)
  store i64 %22, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %22)
  store { i64, ptr } zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).ReadByte")
  %24 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load i64, ptr %3, align 4
  %26 = and i64 %25, 72057594037927935
  %27 = lshr i64 %26, 17
  %28 = select i1 false, i64 0, i64 %27
  %29 = shl i64 %26, 39
  %30 = select i1 false, i64 0, i64 %29
  %31 = or i64 %28, %30
  %32 = and i64 %31, 72057594037927935
  %33 = xor i64 %32, 25399393228665167
  %34 = inttoptr i64 %33 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %35 = call { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).ReadByte"(ptr %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %23)
  store { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %35, ptr %5, align 8
  %36 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %36)
  %37 = load { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %5, align 8
  %38 = extractvalue { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %37, 0
  %39 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %39)
  %40 = load { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %5, align 8
  %41 = extractvalue { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %40, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %41, ptr %6, align 8
  %42 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %42)
  %43 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %6, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  store { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  %44 = insertvalue { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i8 %38, 0
  %45 = insertvalue { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %44, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %43, 1
  ret { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %45
}

define { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.ReadBytes"({ i64, ptr } %0, i8 %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %7 = alloca { i64, i64, i64 }, align 8
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %8, align 8
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %10 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %10, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %10, align 8
  call void @runtime.ClobberPointerRegs()
  %11 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = getelementptr inbounds { i64, ptr }, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i64
  %14 = and i64 %13, 72057594037927935
  %15 = xor i64 %14, 25399393228665167
  %16 = shl i64 %15, 17
  %17 = select i1 false, i64 0, i64 %16
  %18 = lshr i64 %15, 39
  %19 = select i1 false, i64 0, i64 %18
  %20 = or i64 %17, %19
  %21 = and i64 %20, 72057594037927935
  %22 = or i64 %21, -6557241057451442176
  store i64 %22, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %22)
  call void @runtime.ClobberPointerRegs()
  %23 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load i64, ptr %2, align 4
  %25 = call i64 @runtime.LoadHiddenPointerKey(i64 %24)
  store i64 %25, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %25)
  store { i64, ptr } zeroinitializer, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).ReadBytes")
  %27 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %27)
  %28 = load i64, ptr %4, align 4
  %29 = and i64 %28, 72057594037927935
  %30 = lshr i64 %29, 17
  %31 = select i1 false, i64 0, i64 %30
  %32 = shl i64 %29, 39
  %33 = select i1 false, i64 0, i64 %32
  %34 = or i64 %31, %33
  %35 = and i64 %34, 72057594037927935
  %36 = xor i64 %35, 25399393228665167
  %37 = inttoptr i64 %36 to ptr
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %38 = call { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).ReadBytes"(ptr %37, i8 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %26)
  store { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %38, ptr %6, align 8
  %39 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %39)
  %40 = load { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %41 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %40, 0
  %42 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, ptr %42, align 8
  %43 = icmp eq ptr %42, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %42, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44, ptr %8, align 8
  %45 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44, 0
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
  %56 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44, 1
  %57 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44, 2
  %58 = insertvalue { i64, i64, i64 } undef, i64 %55, 0
  %59 = insertvalue { i64, i64, i64 } %58, i64 %56, 1
  %60 = insertvalue { i64, i64, i64 } %59, i64 %57, 2
  store { i64, i64, i64 } %60, ptr %7, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %42, align 8
  call void @runtime.TouchConservativeSlot(ptr %42, i64 24)
  call void @runtime.ClobberPointerRegs()
  %61 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %61)
  %62 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %8, align 8
  %63 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %63)
  %64 = load { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %65 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %64, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %65, ptr %9, align 8
  %66 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %66)
  %67 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %9, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  store { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 40)
  store { i64, i64, i64 } zeroinitializer, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  call void @runtime.ClobberPointerRegs()
  %68 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62, 0
  %69 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %68, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %67, 1
  ret { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %69
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.ReadFrom"({ i64, ptr } %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1, ptr %8, align 8
  call void @runtime.ClobberPointerRegs()
  %9 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %9, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %9, align 8
  %10 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds { i64, ptr }, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 72057594037927935
  %14 = xor i64 %13, 25399393228665167
  %15 = shl i64 %14, 17
  %16 = select i1 false, i64 0, i64 %15
  %17 = lshr i64 %14, 39
  %18 = select i1 false, i64 0, i64 %17
  %19 = or i64 %16, %18
  %20 = and i64 %19, 72057594037927935
  %21 = or i64 %20, -6557241057451442176
  store i64 %21, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %21)
  call void @runtime.ClobberPointerRegs()
  %22 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load i64, ptr %2, align 4
  %24 = call i64 @runtime.LoadHiddenPointerKey(i64 %23)
  store i64 %24, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %24)
  store { i64, ptr } zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).ReadFrom")
  %26 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load i64, ptr %4, align 4
  %28 = and i64 %27, 72057594037927935
  %29 = lshr i64 %28, 17
  %30 = select i1 false, i64 0, i64 %29
  %31 = shl i64 %28, 39
  %32 = select i1 false, i64 0, i64 %31
  %33 = or i64 %30, %32
  %34 = and i64 %33, 72057594037927935
  %35 = xor i64 %34, 25399393228665167
  %36 = inttoptr i64 %35 to ptr
  %37 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %8, align 8
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %39 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).ReadFrom"(ptr %36, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %38)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %25)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %39, ptr %6, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  call void @runtime.ClobberPointerRegs()
  %40 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %40)
  %41 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %42 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %41, 0
  %43 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %45 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %44, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %45, ptr %7, align 8
  %46 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %46)
  %47 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %7, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  call void @runtime.ClobberPointerRegs()
  %48 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %42, 0
  %49 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %48, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %47, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %49
}

define { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.ReadRune"({ i64, ptr } %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %7 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %7, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %7, align 8
  call void @runtime.ClobberPointerRegs()
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds { i64, ptr }, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, 72057594037927935
  %12 = xor i64 %11, 25399393228665167
  %13 = shl i64 %12, 17
  %14 = select i1 false, i64 0, i64 %13
  %15 = lshr i64 %12, 39
  %16 = select i1 false, i64 0, i64 %15
  %17 = or i64 %14, %16
  %18 = and i64 %17, 72057594037927935
  %19 = or i64 %18, -6557241057451442176
  store i64 %19, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %19)
  call void @runtime.ClobberPointerRegs()
  %20 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %1, align 4
  %22 = call i64 @runtime.LoadHiddenPointerKey(i64 %21)
  store i64 %22, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %22)
  store { i64, ptr } zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).ReadRune")
  %24 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load i64, ptr %3, align 4
  %26 = and i64 %25, 72057594037927935
  %27 = lshr i64 %26, 17
  %28 = select i1 false, i64 0, i64 %27
  %29 = shl i64 %26, 39
  %30 = select i1 false, i64 0, i64 %29
  %31 = or i64 %28, %30
  %32 = and i64 %31, 72057594037927935
  %33 = xor i64 %32, 25399393228665167
  %34 = inttoptr i64 %33 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %35 = call { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).ReadRune"(ptr %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %23)
  store { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %35, ptr %5, align 8
  %36 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %36)
  %37 = load { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %5, align 8
  %38 = extractvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %37, 0
  %39 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %39)
  %40 = load { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %5, align 8
  %41 = extractvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %40, 1
  %42 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %42)
  %43 = load { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %5, align 8
  %44 = extractvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %43, 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %44, ptr %6, align 8
  %45 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %6, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  store { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 32)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  %47 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i32 %38, 0
  %48 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %47, i64 %41, 1
  %49 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %48, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %46, 2
  ret { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %49
}

define { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.ReadString"({ i64, ptr } %0, i8 %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %7 = alloca { i64, i64 }, align 8
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %8, align 8
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %10 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %10, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %10, align 8
  call void @runtime.ClobberPointerRegs()
  %11 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = getelementptr inbounds { i64, ptr }, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i64
  %14 = and i64 %13, 72057594037927935
  %15 = xor i64 %14, 25399393228665167
  %16 = shl i64 %15, 17
  %17 = select i1 false, i64 0, i64 %16
  %18 = lshr i64 %15, 39
  %19 = select i1 false, i64 0, i64 %18
  %20 = or i64 %17, %19
  %21 = and i64 %20, 72057594037927935
  %22 = or i64 %21, -6557241057451442176
  store i64 %22, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %22)
  call void @runtime.ClobberPointerRegs()
  %23 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load i64, ptr %2, align 4
  %25 = call i64 @runtime.LoadHiddenPointerKey(i64 %24)
  store i64 %25, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %25)
  store { i64, ptr } zeroinitializer, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).ReadString")
  %27 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %27)
  %28 = load i64, ptr %4, align 4
  %29 = and i64 %28, 72057594037927935
  %30 = lshr i64 %29, 17
  %31 = select i1 false, i64 0, i64 %30
  %32 = shl i64 %29, 39
  %33 = select i1 false, i64 0, i64 %32
  %34 = or i64 %31, %33
  %35 = and i64 %34, 72057594037927935
  %36 = xor i64 %35, 25399393228665167
  %37 = inttoptr i64 %36 to ptr
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %38 = call { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).ReadString"(ptr %37, i8 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %26)
  store { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %38, ptr %6, align 8
  %39 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %39)
  %40 = load { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %41 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %40, 0
  %42 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %41, ptr %42, align 8
  %43 = icmp eq ptr %42, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %42, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %44, ptr %8, align 8
  %45 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %44, 0
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
  %56 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %44, 1
  %57 = insertvalue { i64, i64 } undef, i64 %55, 0
  %58 = insertvalue { i64, i64 } %57, i64 %56, 1
  store { i64, i64 } %58, ptr %7, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %42, align 8
  call void @runtime.TouchConservativeSlot(ptr %42, i64 16)
  call void @runtime.ClobberPointerRegs()
  %59 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %59)
  %60 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %8, align 8
  %61 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %61)
  %62 = load { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %63 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %62, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %63, ptr %9, align 8
  %64 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %64)
  %65 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %9, align 8
  store { i64, i64 } zeroinitializer, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  store { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 32)
  store { i64, i64 } zeroinitializer, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  call void @runtime.ClobberPointerRegs()
  %66 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" %60, 0
  %67 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %66, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %65, 1
  ret { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %67
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Reset"({ i64, ptr } %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %5, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %5, align 8
  call void @runtime.ClobberPointerRegs()
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds { i64, ptr }, ptr %5, i32 0, i32 1
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
  %20 = call i64 @runtime.LoadHiddenPointerKey(i64 %19)
  store i64 %20, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %20)
  store { i64, ptr } zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).Reset")
  %22 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load i64, ptr %3, align 4
  %24 = and i64 %23, 72057594037927935
  %25 = lshr i64 %24, 17
  %26 = select i1 false, i64 0, i64 %25
  %27 = shl i64 %24, 39
  %28 = select i1 false, i64 0, i64 %27
  %29 = or i64 %26, %28
  %30 = and i64 %29, 72057594037927935
  %31 = xor i64 %30, 25399393228665167
  %32 = inttoptr i64 %31 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"bytes.(*Buffer).Reset"(ptr %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %21)
  ret void
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.String"({ i64, ptr } %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca { i64, i64 }, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  %7 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %7, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %7, align 8
  call void @runtime.ClobberPointerRegs()
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds { i64, ptr }, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, 72057594037927935
  %12 = xor i64 %11, 25399393228665167
  %13 = shl i64 %12, 17
  %14 = select i1 false, i64 0, i64 %13
  %15 = lshr i64 %12, 39
  %16 = select i1 false, i64 0, i64 %15
  %17 = or i64 %14, %16
  %18 = and i64 %17, 72057594037927935
  %19 = or i64 %18, -6557241057451442176
  store i64 %19, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %19)
  call void @runtime.ClobberPointerRegs()
  %20 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %1, align 4
  %22 = call i64 @runtime.LoadHiddenPointerKey(i64 %21)
  store i64 %22, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %22)
  store { i64, ptr } zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).String")
  %24 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load i64, ptr %3, align 4
  %26 = and i64 %25, 72057594037927935
  %27 = lshr i64 %26, 17
  %28 = select i1 false, i64 0, i64 %27
  %29 = shl i64 %26, 39
  %30 = select i1 false, i64 0, i64 %29
  %31 = or i64 %28, %30
  %32 = and i64 %31, 72057594037927935
  %33 = xor i64 %32, 25399393228665167
  %34 = inttoptr i64 %33 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %35 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"bytes.(*Buffer).String"(ptr %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %23)
  %36 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %35, ptr %36, align 8
  %37 = icmp eq ptr %36, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %36, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %38, ptr %6, align 8
  %39 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %38, 0
  %40 = ptrtoint ptr %39 to i64
  %41 = and i64 %40, 72057594037927935
  %42 = xor i64 %41, 25399393228665167
  %43 = shl i64 %42, 17
  %44 = select i1 false, i64 0, i64 %43
  %45 = lshr i64 %42, 39
  %46 = select i1 false, i64 0, i64 %45
  %47 = or i64 %44, %46
  %48 = and i64 %47, 72057594037927935
  %49 = or i64 %48, -6557241057451442176
  %50 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %38, 1
  %51 = insertvalue { i64, i64 } undef, i64 %49, 0
  %52 = insertvalue { i64, i64 } %51, i64 %50, 1
  store { i64, i64 } %52, ptr %5, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %36, align 8
  call void @runtime.TouchConservativeSlot(ptr %36, i64 16)
  call void @runtime.ClobberPointerRegs()
  %53 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %53)
  %54 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %6, align 8
  store { i64, i64 } zeroinitializer, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  store { i64, i64 } zeroinitializer, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %54
}

define void @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Truncate"({ i64, ptr } %0, i64 %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %6, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %6, align 8
  call void @runtime.ClobberPointerRegs()
  %7 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = getelementptr inbounds { i64, ptr }, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i64
  %10 = and i64 %9, 72057594037927935
  %11 = xor i64 %10, 25399393228665167
  %12 = shl i64 %11, 17
  %13 = select i1 false, i64 0, i64 %12
  %14 = lshr i64 %11, 39
  %15 = select i1 false, i64 0, i64 %14
  %16 = or i64 %13, %15
  %17 = and i64 %16, 72057594037927935
  %18 = or i64 %17, -6557241057451442176
  store i64 %18, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %18)
  call void @runtime.ClobberPointerRegs()
  %19 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = load i64, ptr %2, align 4
  %21 = call i64 @runtime.LoadHiddenPointerKey(i64 %20)
  store i64 %21, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %21)
  store { i64, ptr } zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).Truncate")
  %23 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load i64, ptr %4, align 4
  %25 = and i64 %24, 72057594037927935
  %26 = lshr i64 %25, 17
  %27 = select i1 false, i64 0, i64 %26
  %28 = shl i64 %25, 39
  %29 = select i1 false, i64 0, i64 %28
  %30 = or i64 %27, %29
  %31 = and i64 %30, 72057594037927935
  %32 = xor i64 %31, 25399393228665167
  %33 = inttoptr i64 %32 to ptr
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"bytes.(*Buffer).Truncate"(ptr %33, i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %22)
  ret void
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.UnreadByte"({ i64, ptr } %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %6 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %6, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %6, align 8
  call void @runtime.ClobberPointerRegs()
  %7 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = getelementptr inbounds { i64, ptr }, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i64
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
  %19 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = load i64, ptr %1, align 4
  %21 = call i64 @runtime.LoadHiddenPointerKey(i64 %20)
  store i64 %21, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %21)
  store { i64, ptr } zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).UnreadByte")
  %23 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load i64, ptr %3, align 4
  %25 = and i64 %24, 72057594037927935
  %26 = lshr i64 %25, 17
  %27 = select i1 false, i64 0, i64 %26
  %28 = shl i64 %25, 39
  %29 = select i1 false, i64 0, i64 %28
  %30 = or i64 %27, %29
  %31 = and i64 %30, 72057594037927935
  %32 = xor i64 %31, 25399393228665167
  %33 = inttoptr i64 %32 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %34 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"bytes.(*Buffer).UnreadByte"(ptr %33)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %22)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %34, ptr %5, align 8
  %35 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %35)
  %36 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %5, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %36
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.UnreadRune"({ i64, ptr } %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %6 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %6, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %6, align 8
  call void @runtime.ClobberPointerRegs()
  %7 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = getelementptr inbounds { i64, ptr }, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i64
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
  %19 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = load i64, ptr %1, align 4
  %21 = call i64 @runtime.LoadHiddenPointerKey(i64 %20)
  store i64 %21, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %21)
  store { i64, ptr } zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).UnreadRune")
  %23 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load i64, ptr %3, align 4
  %25 = and i64 %24, 72057594037927935
  %26 = lshr i64 %25, 17
  %27 = select i1 false, i64 0, i64 %26
  %28 = shl i64 %25, 39
  %29 = select i1 false, i64 0, i64 %28
  %30 = or i64 %27, %29
  %31 = and i64 %30, 72057594037927935
  %32 = xor i64 %31, 25399393228665167
  %33 = inttoptr i64 %32 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %34 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"bytes.(*Buffer).UnreadRune"(ptr %33)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %22)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %34, ptr %5, align 8
  %35 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %35)
  %36 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %5, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %36
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.Write"({ i64, ptr } %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, ptr %8, align 8
  call void @runtime.ClobberPointerRegs()
  %9 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %9, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %9, align 8
  %10 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds { i64, ptr }, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 72057594037927935
  %14 = xor i64 %13, 25399393228665167
  %15 = shl i64 %14, 17
  %16 = select i1 false, i64 0, i64 %15
  %17 = lshr i64 %14, 39
  %18 = select i1 false, i64 0, i64 %17
  %19 = or i64 %16, %18
  %20 = and i64 %19, 72057594037927935
  %21 = or i64 %20, -6557241057451442176
  store i64 %21, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %21)
  call void @runtime.ClobberPointerRegs()
  %22 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load i64, ptr %2, align 4
  %24 = call i64 @runtime.LoadHiddenPointerKey(i64 %23)
  store i64 %24, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %24)
  store { i64, ptr } zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).Write")
  %26 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load i64, ptr %4, align 4
  %28 = and i64 %27, 72057594037927935
  %29 = lshr i64 %28, 17
  %30 = select i1 false, i64 0, i64 %29
  %31 = shl i64 %28, 39
  %32 = select i1 false, i64 0, i64 %31
  %33 = or i64 %30, %32
  %34 = and i64 %33, 72057594037927935
  %35 = xor i64 %34, 25399393228665167
  %36 = inttoptr i64 %35 to ptr
  %37 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %8, align 8
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %39 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).Write"(ptr %36, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %25)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %39, ptr %6, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 24)
  call void @runtime.ClobberPointerRegs()
  %40 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %40)
  %41 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %42 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %41, 0
  %43 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %45 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %44, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %45, ptr %7, align 8
  %46 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %46)
  %47 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %7, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  call void @runtime.ClobberPointerRegs()
  %48 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %42, 0
  %49 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %48, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %47, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %49
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.WriteByte"({ i64, ptr } %0, i8 %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %7 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %7, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %7, align 8
  call void @runtime.ClobberPointerRegs()
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds { i64, ptr }, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, 72057594037927935
  %12 = xor i64 %11, 25399393228665167
  %13 = shl i64 %12, 17
  %14 = select i1 false, i64 0, i64 %13
  %15 = lshr i64 %12, 39
  %16 = select i1 false, i64 0, i64 %15
  %17 = or i64 %14, %16
  %18 = and i64 %17, 72057594037927935
  %19 = or i64 %18, -6557241057451442176
  store i64 %19, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %19)
  call void @runtime.ClobberPointerRegs()
  %20 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %2, align 4
  %22 = call i64 @runtime.LoadHiddenPointerKey(i64 %21)
  store i64 %22, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %22)
  store { i64, ptr } zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).WriteByte")
  %24 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load i64, ptr %4, align 4
  %26 = and i64 %25, 72057594037927935
  %27 = lshr i64 %26, 17
  %28 = select i1 false, i64 0, i64 %27
  %29 = shl i64 %26, 39
  %30 = select i1 false, i64 0, i64 %29
  %31 = or i64 %28, %30
  %32 = and i64 %31, 72057594037927935
  %33 = xor i64 %32, 25399393228665167
  %34 = inttoptr i64 %33 to ptr
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %35 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"bytes.(*Buffer).WriteByte"(ptr %34, i8 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %23)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %35, ptr %6, align 8
  %36 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %36)
  %37 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %6, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %37
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.WriteRune"({ i64, ptr } %0, i32 %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %8 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %8, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %8, align 8
  call void @runtime.ClobberPointerRegs()
  %9 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = getelementptr inbounds { i64, ptr }, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i64
  %12 = and i64 %11, 72057594037927935
  %13 = xor i64 %12, 25399393228665167
  %14 = shl i64 %13, 17
  %15 = select i1 false, i64 0, i64 %14
  %16 = lshr i64 %13, 39
  %17 = select i1 false, i64 0, i64 %16
  %18 = or i64 %15, %17
  %19 = and i64 %18, 72057594037927935
  %20 = or i64 %19, -6557241057451442176
  store i64 %20, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %20)
  call void @runtime.ClobberPointerRegs()
  %21 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load i64, ptr %2, align 4
  %23 = call i64 @runtime.LoadHiddenPointerKey(i64 %22)
  store i64 %23, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %23)
  store { i64, ptr } zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).WriteRune")
  %25 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %25)
  %26 = load i64, ptr %4, align 4
  %27 = and i64 %26, 72057594037927935
  %28 = lshr i64 %27, 17
  %29 = select i1 false, i64 0, i64 %28
  %30 = shl i64 %27, 39
  %31 = select i1 false, i64 0, i64 %30
  %32 = or i64 %29, %31
  %33 = and i64 %32, 72057594037927935
  %34 = xor i64 %33, 25399393228665167
  %35 = inttoptr i64 %34 to ptr
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %36 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).WriteRune"(ptr %35, i32 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %24)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %36, ptr %6, align 8
  %37 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %39 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %38, 0
  %40 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %40)
  %41 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %42 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %41, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %42, ptr %7, align 8
  %43 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %7, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  call void @runtime.ClobberPointerRegs()
  %45 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %39, 0
  %46 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %45, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %44, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %46
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.WriteString"({ i64, ptr } %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %1, ptr %8, align 8
  call void @runtime.ClobberPointerRegs()
  %9 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %9, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %9, align 8
  %10 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds { i64, ptr }, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 72057594037927935
  %14 = xor i64 %13, 25399393228665167
  %15 = shl i64 %14, 17
  %16 = select i1 false, i64 0, i64 %15
  %17 = lshr i64 %14, 39
  %18 = select i1 false, i64 0, i64 %17
  %19 = or i64 %16, %18
  %20 = and i64 %19, 72057594037927935
  %21 = or i64 %20, -6557241057451442176
  store i64 %21, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %21)
  call void @runtime.ClobberPointerRegs()
  %22 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load i64, ptr %2, align 4
  %24 = call i64 @runtime.LoadHiddenPointerKey(i64 %23)
  store i64 %24, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %24)
  store { i64, ptr } zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).WriteString")
  %26 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load i64, ptr %4, align 4
  %28 = and i64 %27, 72057594037927935
  %29 = lshr i64 %28, 17
  %30 = select i1 false, i64 0, i64 %29
  %31 = shl i64 %28, 39
  %32 = select i1 false, i64 0, i64 %31
  %33 = or i64 %30, %32
  %34 = and i64 %33, 72057594037927935
  %35 = xor i64 %34, 25399393228665167
  %36 = inttoptr i64 %35 to ptr
  %37 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %8, align 8
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %39 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).WriteString"(ptr %36, %"github.com/goplus/llgo/runtime/internal/runtime.String" %38)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %25)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %39, ptr %6, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  call void @runtime.ClobberPointerRegs()
  %40 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %40)
  %41 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %42 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %41, 0
  %43 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %45 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %44, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %45, ptr %7, align 8
  %46 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %46)
  %47 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %7, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  call void @runtime.ClobberPointerRegs()
  %48 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %42, 0
  %49 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %48, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %47, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %49
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.WriteTo"({ i64, ptr } %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1, ptr %8, align 8
  call void @runtime.ClobberPointerRegs()
  %9 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %9, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %9, align 8
  %10 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds { i64, ptr }, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 72057594037927935
  %14 = xor i64 %13, 25399393228665167
  %15 = shl i64 %14, 17
  %16 = select i1 false, i64 0, i64 %15
  %17 = lshr i64 %14, 39
  %18 = select i1 false, i64 0, i64 %17
  %19 = or i64 %16, %18
  %20 = and i64 %19, 72057594037927935
  %21 = or i64 %20, -6557241057451442176
  store i64 %21, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %21)
  call void @runtime.ClobberPointerRegs()
  %22 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load i64, ptr %2, align 4
  %24 = call i64 @runtime.LoadHiddenPointerKey(i64 %23)
  store i64 %24, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %24)
  store { i64, ptr } zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).WriteTo")
  %26 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load i64, ptr %4, align 4
  %28 = and i64 %27, 72057594037927935
  %29 = lshr i64 %28, 17
  %30 = select i1 false, i64 0, i64 %29
  %31 = shl i64 %28, 39
  %32 = select i1 false, i64 0, i64 %31
  %33 = or i64 %30, %32
  %34 = and i64 %33, 72057594037927935
  %35 = xor i64 %34, 25399393228665167
  %36 = inttoptr i64 %35 to ptr
  %37 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %8, align 8
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %39 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).WriteTo"(ptr %36, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %38)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %25)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %39, ptr %6, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  call void @runtime.ClobberPointerRegs()
  %40 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %40)
  %41 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %42 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %41, 0
  %43 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %45 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %44, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %45, ptr %7, align 8
  %46 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %46)
  %47 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %7, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  call void @runtime.ClobberPointerRegs()
  %48 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %42, 0
  %49 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %48, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %47, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %49
}

define i1 @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.empty"({ i64, ptr } %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %5, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %5, align 8
  call void @runtime.ClobberPointerRegs()
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds { i64, ptr }, ptr %5, i32 0, i32 1
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
  %20 = call i64 @runtime.LoadHiddenPointerKey(i64 %19)
  store i64 %20, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %20)
  store { i64, ptr } zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).empty")
  %22 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load i64, ptr %3, align 4
  %24 = and i64 %23, 72057594037927935
  %25 = lshr i64 %24, 17
  %26 = select i1 false, i64 0, i64 %25
  %27 = shl i64 %24, 39
  %28 = select i1 false, i64 0, i64 %27
  %29 = or i64 %26, %28
  %30 = and i64 %29, 72057594037927935
  %31 = xor i64 %30, 25399393228665167
  %32 = inttoptr i64 %31 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %33 = call i1 @"bytes.(*Buffer).empty"(ptr %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %21)
  ret i1 %33
}

define i64 @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.grow"({ i64, ptr } %0, i64 %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %6, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %6, align 8
  call void @runtime.ClobberPointerRegs()
  %7 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = getelementptr inbounds { i64, ptr }, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i64
  %10 = and i64 %9, 72057594037927935
  %11 = xor i64 %10, 25399393228665167
  %12 = shl i64 %11, 17
  %13 = select i1 false, i64 0, i64 %12
  %14 = lshr i64 %11, 39
  %15 = select i1 false, i64 0, i64 %14
  %16 = or i64 %13, %15
  %17 = and i64 %16, 72057594037927935
  %18 = or i64 %17, -6557241057451442176
  store i64 %18, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %18)
  call void @runtime.ClobberPointerRegs()
  %19 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = load i64, ptr %2, align 4
  %21 = call i64 @runtime.LoadHiddenPointerKey(i64 %20)
  store i64 %21, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %21)
  store { i64, ptr } zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).grow")
  %23 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load i64, ptr %4, align 4
  %25 = and i64 %24, 72057594037927935
  %26 = lshr i64 %25, 17
  %27 = select i1 false, i64 0, i64 %26
  %28 = shl i64 %25, 39
  %29 = select i1 false, i64 0, i64 %28
  %30 = or i64 %27, %29
  %31 = and i64 %30, 72057594037927935
  %32 = xor i64 %31, 25399393228665167
  %33 = inttoptr i64 %32 to ptr
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %34 = call i64 @"bytes.(*Buffer).grow"(ptr %33, i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %22)
  ret i64 %34
}

define { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.readSlice"({ i64, ptr } %0, i8 %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %7 = alloca { i64, i64, i64 }, align 8
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %8, align 8
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %10 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %10, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %10, align 8
  call void @runtime.ClobberPointerRegs()
  %11 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = getelementptr inbounds { i64, ptr }, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i64
  %14 = and i64 %13, 72057594037927935
  %15 = xor i64 %14, 25399393228665167
  %16 = shl i64 %15, 17
  %17 = select i1 false, i64 0, i64 %16
  %18 = lshr i64 %15, 39
  %19 = select i1 false, i64 0, i64 %18
  %20 = or i64 %17, %19
  %21 = and i64 %20, 72057594037927935
  %22 = or i64 %21, -6557241057451442176
  store i64 %22, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %22)
  call void @runtime.ClobberPointerRegs()
  %23 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load i64, ptr %2, align 4
  %25 = call i64 @runtime.LoadHiddenPointerKey(i64 %24)
  store i64 %25, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %25)
  store { i64, ptr } zeroinitializer, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).readSlice")
  %27 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %27)
  %28 = load i64, ptr %4, align 4
  %29 = and i64 %28, 72057594037927935
  %30 = lshr i64 %29, 17
  %31 = select i1 false, i64 0, i64 %30
  %32 = shl i64 %29, 39
  %33 = select i1 false, i64 0, i64 %32
  %34 = or i64 %31, %33
  %35 = and i64 %34, 72057594037927935
  %36 = xor i64 %35, 25399393228665167
  %37 = inttoptr i64 %36 to ptr
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %38 = call { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).readSlice"(ptr %37, i8 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %26)
  store { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %38, ptr %6, align 8
  %39 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %39)
  %40 = load { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %41 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %40, 0
  %42 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, ptr %42, align 8
  %43 = icmp eq ptr %42, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %42, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44, ptr %8, align 8
  %45 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44, 0
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
  %56 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44, 1
  %57 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44, 2
  %58 = insertvalue { i64, i64, i64 } undef, i64 %55, 0
  %59 = insertvalue { i64, i64, i64 } %58, i64 %56, 1
  %60 = insertvalue { i64, i64, i64 } %59, i64 %57, 2
  store { i64, i64, i64 } %60, ptr %7, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %42, align 8
  call void @runtime.TouchConservativeSlot(ptr %42, i64 24)
  call void @runtime.ClobberPointerRegs()
  %61 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %61)
  %62 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %8, align 8
  %63 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %63)
  %64 = load { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %65 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %64, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %65, ptr %9, align 8
  %66 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %66)
  %67 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %9, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  store { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 40)
  store { i64, i64, i64 } zeroinitializer, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  call void @runtime.ClobberPointerRegs()
  %68 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62, 0
  %69 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %68, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %67, 1
  ret { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %69
}

define { i64, i1 } @"github.com/goplus/llgo/cl/_testgo/abimethod.struct{m int; *bytes.Buffer}.tryGrowByReslice"({ i64, ptr } %0, i64 %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca { i64, ptr }, align 8
  call void @llvm.memset(ptr %6, i8 0, i64 16, i1 false)
  store { i64, ptr } %0, ptr %6, align 8
  call void @runtime.ClobberPointerRegs()
  %7 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = getelementptr inbounds { i64, ptr }, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i64
  %10 = and i64 %9, 72057594037927935
  %11 = xor i64 %10, 25399393228665167
  %12 = shl i64 %11, 17
  %13 = select i1 false, i64 0, i64 %12
  %14 = lshr i64 %11, 39
  %15 = select i1 false, i64 0, i64 %14
  %16 = or i64 %13, %15
  %17 = and i64 %16, 72057594037927935
  %18 = or i64 %17, -6557241057451442176
  store i64 %18, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %18)
  call void @runtime.ClobberPointerRegs()
  %19 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = load i64, ptr %2, align 4
  %21 = call i64 @runtime.LoadHiddenPointerKey(i64 %20)
  store i64 %21, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %21)
  store { i64, ptr } zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"bytes.(*Buffer).tryGrowByReslice")
  %23 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load i64, ptr %4, align 4
  %25 = and i64 %24, 72057594037927935
  %26 = lshr i64 %25, 17
  %27 = select i1 false, i64 0, i64 %26
  %28 = shl i64 %25, 39
  %29 = select i1 false, i64 0, i64 %28
  %30 = or i64 %27, %29
  %31 = and i64 %30, 72057594037927935
  %32 = xor i64 %31, 25399393228665167
  %33 = inttoptr i64 %32 to ptr
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %34 = call { i64, i1 } @"bytes.(*Buffer).tryGrowByReslice"(ptr %33, i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %22)
  %35 = extractvalue { i64, i1 } %34, 0
  %36 = extractvalue { i64, i1 } %34, 1
  %37 = insertvalue { i64, i1 } undef, i64 %35, 0
  %38 = insertvalue { i64, i1 } %37, i1 %36, 1
  ret { i64, i1 } %38
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal8")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
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
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal32")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
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

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define linkonce ptr @"github.com/goplus/llgo/cl/_testgo/abimethod.(*Pointer[any]).Load"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/abimethod.Pointer[any]", ptr %0, i32 0, i32 1
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
  %20 = and i64 %19, 72057594037927935
  %21 = lshr i64 %20, 17
  %22 = select i1 false, i64 0, i64 %21
  %23 = shl i64 %20, 39
  %24 = select i1 false, i64 0, i64 %23
  %25 = or i64 %22, %24
  %26 = and i64 %25, 72057594037927935
  %27 = xor i64 %26, 25399393228665167
  %28 = inttoptr i64 %27 to ptr
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %29 = icmp eq ptr %28, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %29)
  %30 = load atomic ptr, ptr %28 seq_cst, align 8
  store ptr %30, ptr %3, align 8
  %31 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %31)
  %32 = load ptr, ptr %3, align 8
  %33 = ptrtoint ptr %32 to i64
  %34 = and i64 %33, 72057594037927935
  %35 = xor i64 %34, 25399393228665167
  %36 = shl i64 %35, 17
  %37 = select i1 false, i64 0, i64 %36
  %38 = lshr i64 %35, 39
  %39 = select i1 false, i64 0, i64 %38
  %40 = or i64 %37, %39
  %41 = and i64 %40, 72057594037927935
  %42 = or i64 %41, -6557241057451442176
  store i64 %42, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %42)
  call void @runtime.ClobberPointerRegs()
  %43 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = load i64, ptr %4, align 4
  %45 = and i64 %44, 72057594037927935
  %46 = lshr i64 %45, 17
  %47 = select i1 false, i64 0, i64 %46
  %48 = shl i64 %45, 39
  %49 = select i1 false, i64 0, i64 %48
  %50 = or i64 %47, %49
  %51 = and i64 %50, 72057594037927935
  %52 = xor i64 %51, 25399393228665167
  %53 = inttoptr i64 %52 to ptr
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  ret ptr %53
}

define linkonce void @"github.com/goplus/llgo/cl/_testgo/abimethod.(*Pointer[any]).Store"(ptr %0, ptr %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %5, align 8
  call void @runtime.ClobberPointerRegs()
  %6 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/abimethod.Pointer[any]", ptr %0, i32 0, i32 1
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
  %18 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %18)
  %19 = load ptr, ptr %5, align 8
  store ptr %19, ptr %4, align 8
  %20 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %2, align 4
  %22 = and i64 %21, 72057594037927935
  %23 = lshr i64 %22, 17
  %24 = select i1 false, i64 0, i64 %23
  %25 = shl i64 %22, 39
  %26 = select i1 false, i64 0, i64 %25
  %27 = or i64 %24, %26
  %28 = and i64 %27, 72057594037927935
  %29 = xor i64 %28, 25399393228665167
  %30 = inttoptr i64 %29 to ptr
  %31 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %31)
  %32 = load ptr, ptr %4, align 8
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  store atomic ptr %32, ptr %30 seq_cst, align 8
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  ret void
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakeTypeAssertionError"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare i64 @runtime.LoadHiddenPointerKey(i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
