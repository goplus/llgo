; ModuleID = 'github.com/goplus/llgo/cl/_testpull/complex'
source_filename = "github.com/goplus/llgo/cl/_testpull/complex"

%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.InterfaceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/async.Poll[int]" = type { i1, i64 }
%"github.com/goplus/llgo/async.AsyncFuture[int]" = type { { ptr, ptr }, i1, i1, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/async.Context" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }

@"*github.com/goplus/llgo/cl/_testpull/complex.struct$kDt4IAIBmi49sDZ23sKu8J3E55K9ptB0X9Pd7tOedxI" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -380429173, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 149 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$kDt4IAIBmi49sDZ23sKu8J3E55K9ptB0X9Pd7tOedxI" }, align 8
@0 = private unnamed_addr constant [149 x i8] c"struct { state int8; param0 int; sub0 async.AsyncFuture[int]; sub1 async.AsyncFuture[int]; sub2 async.AsyncFuture[int]; sub3 async.AsyncFuture[int] }", align 1
@"github.com/goplus/llgo/cl/_testpull/complex.struct$kDt4IAIBmi49sDZ23sKu8J3E55K9ptB0X9Pd7tOedxI" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 144, i64 0, i32 1472862792, i8 0, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 149 }, ptr @"*github.com/goplus/llgo/cl/_testpull/complex.struct$kDt4IAIBmi49sDZ23sKu8J3E55K9ptB0X9Pd7tOedxI" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$kDt4IAIBmi49sDZ23sKu8J3E55K9ptB0X9Pd7tOedxI$fields", i64 6, i64 6 } }, align 8
@1 = private unnamed_addr constant [5 x i8] c"state", align 1
@_llgo_int8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 1444672578, i8 12, i8 1, i8 1, i8 35, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 4 }, ptr @"*_llgo_int8" }, align 8
@2 = private unnamed_addr constant [4 x i8] c"int8", align 1
@"*_llgo_int8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1399554408, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 4 }, ptr null }, ptr @_llgo_int8 }, align 8
@3 = private unnamed_addr constant [6 x i8] c"param0", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, ptr @"*_llgo_int" }, align 8
@4 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@5 = private unnamed_addr constant [4 x i8] c"sub0", align 1
@"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 0, i32 1769159236, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@6 = private unnamed_addr constant [22 x i8] c"async.AsyncFuture[int]", align 1
@"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 964362133, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll" }] }, align 8
@7 = private unnamed_addr constant [28 x i8] c"github.com/goplus/llgo/async", align 1
@8 = private unnamed_addr constant [5 x i8] c"Await", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2131144854, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 10 }, ptr @"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out", i64 1, i64 1 } }, align 8
@9 = private unnamed_addr constant [10 x i8] c"func() int", align 1
@"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1805835775, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 10 }, ptr null }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@10 = private unnamed_addr constant [4 x i8] c"Poll", align 1
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1655717054, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 36 }, ptr @"*_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$out", i64 1, i64 1 } }, align 8
@11 = private unnamed_addr constant [36 x i8] c"func(*async.Context) async.Poll[int]", align 1
@"*_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -62824656, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 36 }, ptr null }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }, align 8
@"*_llgo_github.com/goplus/llgo/async.Context" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -808118033, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 13 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Context" }, align 8
@12 = private unnamed_addr constant [13 x i8] c"async.Context", align 1
@"_llgo_github.com/goplus/llgo/async.Context" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 29200871, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Context" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 13 }, ptr @"*_llgo_github.com/goplus/llgo/async.Context" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$RRVsRJkYHdoR-mI2_FrzGPRXwNM5u9bW2w1hN455sNs$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@13 = private unnamed_addr constant [5 x i8] c"Waker", align 1
@"_llgo_github.com/goplus/llgo/async.Waker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -2133419533, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 11 }, ptr @"*_llgo_github.com/goplus/llgo/async.Waker" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$5udCHZ6xl-fBE2F9apjWV2qrxMb4_QYfwdoy0QD1D8c$imethods", i64 1, i64 1 } }, align 8
@14 = private unnamed_addr constant [11 x i8] c"async.Waker", align 1
@"*_llgo_github.com/goplus/llgo/async.Waker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 504672852, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 11 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Waker" }, align 8
@15 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testpull/complex", align 1
@16 = private unnamed_addr constant [4 x i8] c"Wake", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@17 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@"_llgo_iface$5udCHZ6xl-fBE2F9apjWV2qrxMb4_QYfwdoy0QD1D8c$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 4 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }], align 8
@"_llgo_struct$RRVsRJkYHdoR-mI2_FrzGPRXwNM5u9bW2w1hN455sNs$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/async.Waker", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/async.Context"], align 8
@"_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 801809575, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 15 }, ptr @"*_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$L-bv4mYIsagI76ZXTH6q8eUj7E6Age9HPTzroAJOrXs$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.Poll[int].IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.Poll[int].Value" }] }, align 8
@18 = private unnamed_addr constant [15 x i8] c"async.Poll[int]", align 1
@"*_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -920093333, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 15 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value" }] }, align 8
@19 = private unnamed_addr constant [7 x i8] c"IsReady", align 1
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -541022001, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 11 }, ptr @"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out", i64 1, i64 1 } }, align 8
@20 = private unnamed_addr constant [11 x i8] c"func() bool", align 1
@"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -367308996, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 11 }, ptr null }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, align 8
@_llgo_bool = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 554183389, i8 12, i8 1, i8 1, i8 33, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 4 }, ptr @"*_llgo_bool" }, align 8
@21 = private unnamed_addr constant [4 x i8] c"bool", align 1
@"*_llgo_bool" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1896950390, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 4 }, ptr null }, ptr @_llgo_bool }, align 8
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out" = weak_odr constant [1 x ptr] [ptr @_llgo_bool], align 8
@22 = private unnamed_addr constant [5 x i8] c"Value", align 1
@23 = private unnamed_addr constant [5 x i8] c"ready", align 1
@24 = private unnamed_addr constant [5 x i8] c"value", align 1
@"github.com/goplus/llgo/cl/_testpull/complex.struct$L-bv4mYIsagI76ZXTH6q8eUj7E6Age9HPTzroAJOrXs$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 5 }, ptr @_llgo_bool, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 5 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]"], align 8
@25 = private unnamed_addr constant [2 x i8] c"fn", align 1
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1213993089, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 87 }, ptr @"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields", i64 2, i64 2 } }, align 8
@26 = private unnamed_addr constant [87 x i8] c"struct { $f func(struct { $f func(int); $data unsafe.Pointer }); $data unsafe.Pointer }", align 1
@"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1666834553, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 87 }, ptr null }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, align 8
@27 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2009615728, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 51 }, ptr @"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@28 = private unnamed_addr constant [51 x i8] c"func(struct { $f func(int); $data unsafe.Pointer })", align 1
@"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1512208703, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 51 }, ptr null }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1556934939, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 45 }, ptr @"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields", i64 2, i64 2 } }, align 8
@29 = private unnamed_addr constant [45 x i8] c"struct { $f func(int); $data unsafe.Pointer }", align 1
@"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 364872269, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 45 }, ptr null }, ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -637187458, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 9 }, ptr @"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@30 = private unnamed_addr constant [9 x i8] c"func(int)", align 1
@"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 735356155, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 9 }, ptr null }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@31 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@32 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 2 }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM"], align 8
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 2 }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@33 = private unnamed_addr constant [7 x i8] c"started", align 1
@"github.com/goplus/llgo/cl/_testpull/complex.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 2 }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 7 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 5 }, ptr @_llgo_bool, i64 17, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 5 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@34 = private unnamed_addr constant [4 x i8] c"sub1", align 1
@35 = private unnamed_addr constant [4 x i8] c"sub2", align 1
@36 = private unnamed_addr constant [4 x i8] c"sub3", align 1
@"github.com/goplus/llgo/cl/_testpull/complex.struct$kDt4IAIBmi49sDZ23sKu8J3E55K9ptB0X9Pd7tOedxI$fields" = weak_odr constant [6 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 968294533, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 50 }, ptr @"*_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0$imethods", i64 1, i64 1 } }, align 8
@37 = private unnamed_addr constant [50 x i8] c"interface { Poll(*async.Context) async.Poll[int] }", align 1
@"*_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1655281012, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 50 }, ptr null }, ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" }, align 8
@"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }], align 8
@"*github.com/goplus/llgo/cl/_testpull/complex.struct$7e1RCWjPGu_u3TIZ6J4vQNovPKzKYvxEsh5rK0KXcvg" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1978246923, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 91 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$7e1RCWjPGu_u3TIZ6J4vQNovPKzKYvxEsh5rK0KXcvg" }, align 8
@38 = private unnamed_addr constant [91 x i8] c"struct { state int8; param0 int; sub0 async.AsyncFuture[int]; sub1 async.AsyncFuture[int] }", align 1
@"github.com/goplus/llgo/cl/_testpull/complex.struct$7e1RCWjPGu_u3TIZ6J4vQNovPKzKYvxEsh5rK0KXcvg" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 80, i64 0, i32 -608961843, i8 0, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 91 }, ptr @"*github.com/goplus/llgo/cl/_testpull/complex.struct$7e1RCWjPGu_u3TIZ6J4vQNovPKzKYvxEsh5rK0KXcvg" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$7e1RCWjPGu_u3TIZ6J4vQNovPKzKYvxEsh5rK0KXcvg$fields", i64 4, i64 4 } }, align 8
@"github.com/goplus/llgo/cl/_testpull/complex.struct$7e1RCWjPGu_u3TIZ6J4vQNovPKzKYvxEsh5rK0KXcvg$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*github.com/goplus/llgo/cl/_testpull/complex.struct$EQcz-Tcs1Tk49FGwgZTBUCbCuEsFnwxkNs81p9Q8tBw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -481811692, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 130 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$EQcz-Tcs1Tk49FGwgZTBUCbCuEsFnwxkNs81p9Q8tBw" }, align 8
@39 = private unnamed_addr constant [130 x i8] c"struct { state int8; param0 int; var0 int; sub0 async.AsyncFuture[int]; sub1 async.AsyncFuture[int]; sub2 async.AsyncFuture[int] }", align 1
@"github.com/goplus/llgo/cl/_testpull/complex.struct$EQcz-Tcs1Tk49FGwgZTBUCbCuEsFnwxkNs81p9Q8tBw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 120, i64 0, i32 1972249608, i8 0, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 130 }, ptr @"*github.com/goplus/llgo/cl/_testpull/complex.struct$EQcz-Tcs1Tk49FGwgZTBUCbCuEsFnwxkNs81p9Q8tBw" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$EQcz-Tcs1Tk49FGwgZTBUCbCuEsFnwxkNs81p9Q8tBw$fields", i64 6, i64 6 } }, align 8
@40 = private unnamed_addr constant [4 x i8] c"var0", align 1
@"github.com/goplus/llgo/cl/_testpull/complex.struct$EQcz-Tcs1Tk49FGwgZTBUCbCuEsFnwxkNs81p9Q8tBw$fields" = weak_odr constant [6 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*github.com/goplus/llgo/cl/_testpull/complex.struct$o9qLwkTKVf3sSa2Rrtjqj_f9YLO0luUQlAfqxIiGfFo" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1157629145, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 116 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$o9qLwkTKVf3sSa2Rrtjqj_f9YLO0luUQlAfqxIiGfFo" }, align 8
@41 = private unnamed_addr constant [116 x i8] c"struct { state int8; param0 int; var0 *async.Future[int]; sub0 async.AsyncFuture[int]; sub1 async.AsyncFuture[int] }", align 1
@"github.com/goplus/llgo/cl/_testpull/complex.struct$o9qLwkTKVf3sSa2Rrtjqj_f9YLO0luUQlAfqxIiGfFo" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 88, i64 16, i32 -1341137540, i8 0, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 116 }, ptr @"*github.com/goplus/llgo/cl/_testpull/complex.struct$o9qLwkTKVf3sSa2Rrtjqj_f9YLO0luUQlAfqxIiGfFo" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$o9qLwkTKVf3sSa2Rrtjqj_f9YLO0luUQlAfqxIiGfFo$fields", i64 5, i64 5 } }, align 8
@"*_llgo_github.com/goplus/llgo/async.Future[int]" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 934108082, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 17 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]" }, align 8
@42 = private unnamed_addr constant [17 x i8] c"async.Future[int]", align 1
@"_llgo_github.com/goplus/llgo/async.Future[int]" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1503177044, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 17 }, ptr @"*_llgo_github.com/goplus/llgo/async.Future[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0$imethods", i64 1, i64 1 } }, align 8
@"github.com/goplus/llgo/cl/_testpull/complex.struct$o9qLwkTKVf3sSa2Rrtjqj_f9YLO0luUQlAfqxIiGfFo$fields" = weak_odr constant [5 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.Future[int]", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*github.com/goplus/llgo/cl/_testpull/complex.struct$12Z5Ktbh4uwTNX9aHATV2r-XY_l0pAVPPvnR3GedS2w" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2093865110, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 72 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$12Z5Ktbh4uwTNX9aHATV2r-XY_l0pAVPPvnR3GedS2w" }, align 8
@43 = private unnamed_addr constant [72 x i8] c"struct { state int8; param0 int; var0 int; sub0 async.AsyncFuture[int] }", align 1
@"github.com/goplus/llgo/cl/_testpull/complex.struct$12Z5Ktbh4uwTNX9aHATV2r-XY_l0pAVPPvnR3GedS2w" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 56, i64 0, i32 555517639, i8 0, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 72 }, ptr @"*github.com/goplus/llgo/cl/_testpull/complex.struct$12Z5Ktbh4uwTNX9aHATV2r-XY_l0pAVPPvnR3GedS2w" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$12Z5Ktbh4uwTNX9aHATV2r-XY_l0pAVPPvnR3GedS2w$fields", i64 4, i64 4 } }, align 8
@"github.com/goplus/llgo/cl/_testpull/complex.struct$12Z5Ktbh4uwTNX9aHATV2r-XY_l0pAVPPvnR3GedS2w$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*github.com/goplus/llgo/cl/_testpull/complex.struct$b66P-KjKr1qWh2fT60P09C42KO4zXmaQFTiFF2GOWVQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 677844656, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 82 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$b66P-KjKr1qWh2fT60P09C42KO4zXmaQFTiFF2GOWVQ" }, align 8
@44 = private unnamed_addr constant [82 x i8] c"struct { state int8; param0 int; var0 int; var1 int; sub0 async.AsyncFuture[int] }", align 1
@"github.com/goplus/llgo/cl/_testpull/complex.struct$b66P-KjKr1qWh2fT60P09C42KO4zXmaQFTiFF2GOWVQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 0, i32 -1579145073, i8 0, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 82 }, ptr @"*github.com/goplus/llgo/cl/_testpull/complex.struct$b66P-KjKr1qWh2fT60P09C42KO4zXmaQFTiFF2GOWVQ" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$b66P-KjKr1qWh2fT60P09C42KO4zXmaQFTiFF2GOWVQ$fields", i64 5, i64 5 } }, align 8
@45 = private unnamed_addr constant [4 x i8] c"var1", align 1
@"github.com/goplus/llgo/cl/_testpull/complex.struct$b66P-KjKr1qWh2fT60P09C42KO4zXmaQFTiFF2GOWVQ$fields" = weak_odr constant [5 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*github.com/goplus/llgo/cl/_testpull/complex.struct$ud5kCRItYRpYybjh9TzlOagDjxnfXCIS65wN0sEA7kA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1666748949, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 159 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$ud5kCRItYRpYybjh9TzlOagDjxnfXCIS65wN0sEA7kA" }, align 8
@46 = private unnamed_addr constant [159 x i8] c"struct { state int8; param0 int; var0 int; sub0 async.AsyncFuture[int]; sub1 async.AsyncFuture[int]; sub2 async.AsyncFuture[int]; sub3 async.AsyncFuture[int] }", align 1
@"github.com/goplus/llgo/cl/_testpull/complex.struct$ud5kCRItYRpYybjh9TzlOagDjxnfXCIS65wN0sEA7kA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 152, i64 0, i32 119196840, i8 0, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 159 }, ptr @"*github.com/goplus/llgo/cl/_testpull/complex.struct$ud5kCRItYRpYybjh9TzlOagDjxnfXCIS65wN0sEA7kA" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$ud5kCRItYRpYybjh9TzlOagDjxnfXCIS65wN0sEA7kA$fields", i64 7, i64 7 } }, align 8
@"github.com/goplus/llgo/cl/_testpull/complex.struct$ud5kCRItYRpYybjh9TzlOagDjxnfXCIS65wN0sEA7kA$fields" = weak_odr constant [7 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 120, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*github.com/goplus/llgo/cl/_testpull/complex.struct$Yo1AD5VRPpvNrxTSifJvsH_uNOcPRffZDm4O_vq9dhQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -882327107, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 141 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$Yo1AD5VRPpvNrxTSifJvsH_uNOcPRffZDm4O_vq9dhQ" }, align 8
@47 = private unnamed_addr constant [141 x i8] c"struct { state int8; param0 int; var0 int; var1 int; var2 int; var3 int; var4 int; sub0 async.AsyncFuture[int]; sub1 async.AsyncFuture[int] }", align 1
@"github.com/goplus/llgo/cl/_testpull/complex.struct$Yo1AD5VRPpvNrxTSifJvsH_uNOcPRffZDm4O_vq9dhQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 120, i64 0, i32 -870912166, i8 0, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 141 }, ptr @"*github.com/goplus/llgo/cl/_testpull/complex.struct$Yo1AD5VRPpvNrxTSifJvsH_uNOcPRffZDm4O_vq9dhQ" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$Yo1AD5VRPpvNrxTSifJvsH_uNOcPRffZDm4O_vq9dhQ$fields", i64 9, i64 9 } }, align 8
@48 = private unnamed_addr constant [4 x i8] c"var2", align 1
@49 = private unnamed_addr constant [4 x i8] c"var3", align 1
@50 = private unnamed_addr constant [4 x i8] c"var4", align 1
@"github.com/goplus/llgo/cl/_testpull/complex.struct$Yo1AD5VRPpvNrxTSifJvsH_uNOcPRffZDm4O_vq9dhQ$fields" = weak_odr constant [9 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/complex.init$guard" = global i1 false, align 1
@51 = private unnamed_addr constant [45 x i8] c"Await() should be transformed by the compiler", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 6 }, ptr @"*_llgo_string" }, align 8
@52 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 6 }, ptr null }, ptr @_llgo_string }, align 8

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_6 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %7 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds { ptr, ptr }, ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %_llgo_7, label %_llgo_8

_llgo_2:                                          ; preds = %_llgo_9, %_llgo_0
  %11 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %14 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %13, i32 0, i32 0
  %15 = getelementptr inbounds { ptr, ptr }, ptr %14, i32 0, i32 0
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %_llgo_11, label %_llgo_12

_llgo_3:                                          ; preds = %_llgo_13, %_llgo_0
  %18 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %19 = load i64, ptr %18, align 4
  %20 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %20, i32 0, i32 0
  %22 = getelementptr inbounds { ptr, ptr }, ptr %21, i32 0, i32 0
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %_llgo_15, label %_llgo_16

_llgo_4:                                          ; preds = %_llgo_17, %_llgo_0
  %25 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %28 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %27, i32 0, i32 0
  %29 = getelementptr inbounds { ptr, ptr }, ptr %28, i32 0, i32 0
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %_llgo_19, label %_llgo_20

_llgo_5:                                          ; preds = %_llgo_21, %_llgo_0
  %32 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %33 = load i64, ptr %32, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_6:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_7:                                          ; preds = %_llgo_1
  %34 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %5)
  %35 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %34, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %35, ptr %6, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_1
  %36 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %6, ptr %1)
  %37 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %36, ptr %37, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %37, i32 0, i32 0
  %39 = load i1, ptr %38, align 1
  br i1 %39, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %37, i32 0, i32 1
  %41 = load i64, ptr %40, align 4
  %42 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %42, align 1
  br label %_llgo_2

_llgo_10:                                         ; preds = %_llgo_8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_11:                                         ; preds = %_llgo_2
  %43 = call i64 @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await"(ptr %34)
  %44 = mul i64 %43, 2
  %45 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %44)
  %46 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %45, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %46, ptr %13, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_2
  %47 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %13, ptr %1)
  %48 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %47, ptr %48, align 4
  %49 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %48, i32 0, i32 0
  %50 = load i1, ptr %49, align 1
  br i1 %50, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %51 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %48, i32 0, i32 1
  %52 = load i64, ptr %51, align 4
  %53 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %53, align 1
  br label %_llgo_3

_llgo_14:                                         ; preds = %_llgo_12
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_15:                                         ; preds = %_llgo_3
  %54 = call i64 @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await"(ptr %45)
  %55 = add i64 %54, 10
  %56 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %55)
  %57 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %56, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %57, ptr %20, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_3
  %58 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %20, ptr %1)
  %59 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %58, ptr %59, align 4
  %60 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %59, i32 0, i32 0
  %61 = load i1, ptr %60, align 1
  br i1 %61, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %62 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %59, i32 0, i32 1
  %63 = load i64, ptr %62, align 4
  %64 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %64, align 1
  br label %_llgo_4

_llgo_18:                                         ; preds = %_llgo_16
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_19:                                         ; preds = %_llgo_4
  %65 = call i64 @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await"(ptr %56)
  %66 = sub i64 %65, 5
  %67 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %66)
  %68 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %67, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %68, ptr %27, align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_4
  %69 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %27, ptr %1)
  %70 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %69, ptr %70, align 4
  %71 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %70, i32 0, i32 0
  %72 = load i1, ptr %71, align 1
  br i1 %72, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %73 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %70, i32 0, i32 1
  %74 = load i64, ptr %73, align 4
  %75 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 4, ptr %75, align 1
  br label %_llgo_5

_llgo_22:                                         ; preds = %_llgo_20
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step$1", ptr undef }, ptr %2, 1
  %5 = call ptr @"github.com/goplus/llgo/async.Async[int]"({ ptr, ptr } %4)
  ret ptr %5
}

define void @"github.com/goplus/llgo/cl/_testpull/complex.Step$1"(ptr %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load i64, ptr %3, align 4
  %5 = extractvalue { ptr, ptr } %1, 1
  %6 = extractvalue { ptr, ptr } %1, 0
  call void %6(ptr %5, i64 %4)
  ret void
}

declare %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr, ptr)

define linkonce i64 @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 45 }, ptr %1, align 8
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %1, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %2)
  unreachable
}

define ptr @"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 48)
  %2 = getelementptr inbounds { i8, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds { i8, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 2
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds { i8, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds { i8, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 4
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds { i8, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 5
  store ptr null, ptr %7, align 8
  ret ptr %1
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*github.com/goplus/llgo/cl/_testpull/complex.struct$kDt4IAIBmi49sDZ23sKu8J3E55K9ptB0X9Pd7tOedxI")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  ret i1 %3
}

define linkonce %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store ptr %0, ptr %2, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store ptr %1, ptr %3, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %4, i32 0, i32 2
  %6 = load i1, ptr %5, align 1
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %7, i32 0, i32 3
  %9 = load i64, ptr %8, align 4
  %10 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.Ready[int]"(i64 %9)
  ret %"github.com/goplus/llgo/async.Poll[int]" %10

_llgo_2:                                          ; preds = %_llgo_0
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %11, i32 0, i32 1
  %13 = load i1, ptr %12, align 1
  br i1 %13, label %_llgo_4, label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %14, i32 0, i32 1
  store i1 true, ptr %15, align 1
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %16, i32 0, i32 0
  %18 = load { ptr, ptr }, ptr %17, align 8
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %20 = getelementptr inbounds { ptr, ptr }, ptr %19, i32 0, i32 0
  store ptr %2, ptr %20, align 8
  %21 = getelementptr inbounds { ptr, ptr }, ptr %19, i32 0, i32 1
  store ptr %3, ptr %21, align 8
  %22 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll$1[int]", ptr undef }, ptr %19, 1
  %23 = extractvalue { ptr, ptr } %18, 1
  %24 = extractvalue { ptr, ptr } %18, 0
  call void %24(ptr %23, { ptr, ptr } %22)
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %25, i32 0, i32 2
  %27 = load i1, ptr %26, align 1
  br i1 %27, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %28, i32 0, i32 3
  %30 = load i64, ptr %29, align 4
  %31 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.Ready[int]"(i64 %30)
  ret %"github.com/goplus/llgo/async.Poll[int]" %31

_llgo_6:                                          ; preds = %_llgo_4
  %32 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.Pending[int]"()
  ret %"github.com/goplus/llgo/async.Poll[int]" %32
}

define linkonce void @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll$1[int]"(ptr %0, i64 %1) {
_llgo_0:
  %2 = load { ptr, ptr }, ptr %0, align 8
  %3 = extractvalue { ptr, ptr } %2, 0
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %4, i32 0, i32 3
  store i64 %1, ptr %5, align 4
  %6 = extractvalue { ptr, ptr } %2, 0
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %7, i32 0, i32 2
  store i1 true, ptr %8, align 1
  %9 = extractvalue { ptr, ptr } %2, 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/async.Context", ptr %10, i32 0, i32 0
  %12 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %11, align 8
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %12)
  %14 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %12, 1
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %13, 0
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %15, ptr %14, 1
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %17, 0
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %18, ptr null, 1
  %20 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %16, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %19)
  %21 = xor i1 %20, true
  br i1 %21, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %22 = extractvalue { ptr, ptr } %2, 1
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/async.Context", ptr %23, i32 0, i32 0
  %25 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %24, align 8
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %25)
  %27 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %25, 0
  %28 = getelementptr ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  %30 = insertvalue { ptr, ptr } undef, ptr %29, 0
  %31 = insertvalue { ptr, ptr } %30, ptr %26, 1
  %32 = extractvalue { ptr, ptr } %31, 1
  %33 = extractvalue { ptr, ptr } %31, 0
  call void %33(ptr %32)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %1, ptr %2)
  ret i1 %3
}

define linkonce i1 @"github.com/goplus/llgo/async.Poll[int].IsReady"(%"github.com/goplus/llgo/async.Poll[int]" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/async.Poll[int]" %0, ptr %1, align 4
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %1, i32 0, i32 0
  %3 = load i1, ptr %2, align 1
  ret i1 %3
}

define linkonce i64 @"github.com/goplus/llgo/async.Poll[int].Value"(%"github.com/goplus/llgo/async.Poll[int]" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/async.Poll[int]" %0, ptr %1, align 4
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %1, i32 0, i32 1
  %3 = load i64, ptr %2, align 4
  ret i64 %3
}

define linkonce i1 @"github.com/goplus/llgo/async.(*Poll[int]).IsReady"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %0, align 4
  %2 = call i1 @"github.com/goplus/llgo/async.Poll[int].IsReady"(%"github.com/goplus/llgo/async.Poll[int]" %1)
  ret i1 %2
}

define linkonce i64 @"github.com/goplus/llgo/async.(*Poll[int]).Value"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %0, align 4
  %2 = call i64 @"github.com/goplus/llgo/async.Poll[int].Value"(%"github.com/goplus/llgo/async.Poll[int]" %1)
  ret i64 %2
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_4 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %7 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds { ptr, ptr }, ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %_llgo_5, label %_llgo_6

_llgo_2:                                          ; preds = %_llgo_7, %_llgo_0
  %11 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %14 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %13, i32 0, i32 0
  %15 = getelementptr inbounds { ptr, ptr }, ptr %14, i32 0, i32 0
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %_llgo_9, label %_llgo_10

_llgo_3:                                          ; preds = %_llgo_11, %_llgo_0
  %18 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %19 = load i64, ptr %18, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_4:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_5:                                          ; preds = %_llgo_1
  %20 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %5)
  %21 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %20, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %21, ptr %6, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_1
  %22 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %6, ptr %1)
  %23 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %22, ptr %23, align 4
  %24 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %23, i32 0, i32 0
  %25 = load i1, ptr %24, align 1
  br i1 %25, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %26 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %23, i32 0, i32 1
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %28, align 1
  br label %_llgo_2

_llgo_8:                                          ; preds = %_llgo_6
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_9:                                          ; preds = %_llgo_2
  %29 = call i64 @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await"(ptr %20)
  %30 = mul i64 %29, 2
  %31 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %30)
  %32 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %31, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %32, ptr %13, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_2
  %33 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %13, ptr %1)
  %34 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %33, ptr %34, align 4
  %35 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %34, i32 0, i32 0
  %36 = load i1, ptr %35, align 1
  br i1 %36, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %37 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %34, i32 0, i32 1
  %38 = load i64, ptr %37, align 4
  %39 = getelementptr inbounds { i8, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %39, align 1
  br label %_llgo_3

_llgo_12:                                         ; preds = %_llgo_10
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %2 = getelementptr inbounds { i8, i64, ptr, ptr }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, i64, ptr, ptr }, ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds { i8, i64, ptr, ptr }, ptr %1, i32 0, i32 2
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds { i8, i64, ptr, ptr }, ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*github.com/goplus/llgo/cl/_testpull/complex.struct$7e1RCWjPGu_u3TIZ6J4vQNovPKzKYvxEsh5rK0KXcvg")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_8 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
    i8 5, label %_llgo_6
    i8 6, label %_llgo_7
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %8, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %9 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %14 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %13, i32 0, i32 0
  %15 = getelementptr inbounds { ptr, ptr }, ptr %14, i32 0, i32 0
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %_llgo_9, label %_llgo_10

_llgo_3:                                          ; preds = %_llgo_11, %_llgo_0
  %18 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %19 = load i64, ptr %18, align 4
  %20 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %21 = load i64, ptr %20, align 4
  %22 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %22, align 1
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_0
  %23 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %24 = load i64, ptr %23, align 4
  %25 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %28 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %27, i32 0, i32 0
  %29 = getelementptr inbounds { ptr, ptr }, ptr %28, i32 0, i32 0
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %_llgo_13, label %_llgo_14

_llgo_5:                                          ; preds = %_llgo_15, %_llgo_0
  %32 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %33 = load i64, ptr %32, align 4
  %34 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %35 = load i64, ptr %34, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_6:                                          ; preds = %_llgo_0
  %36 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %39 = load i64, ptr %38, align 4
  %40 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %41 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %40, i32 0, i32 0
  %42 = getelementptr inbounds { ptr, ptr }, ptr %41, i32 0, i32 0
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %_llgo_17, label %_llgo_18

_llgo_7:                                          ; preds = %_llgo_19, %_llgo_0
  %45 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %46 = load i64, ptr %45, align 4
  %47 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %48 = load i64, ptr %47, align 4
  %49 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 7, ptr %49, align 1
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_8:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_9:                                          ; preds = %_llgo_2
  %50 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %12)
  %51 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %50, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %51, ptr %13, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_2
  %52 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %13, ptr %1)
  %53 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %52, ptr %53, align 4
  %54 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %53, i32 0, i32 0
  %55 = load i1, ptr %54, align 1
  br i1 %55, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %56 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %53, i32 0, i32 1
  %57 = load i64, ptr %56, align 4
  %58 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %58, align 1
  br label %_llgo_3

_llgo_12:                                         ; preds = %_llgo_10
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_13:                                         ; preds = %_llgo_4
  %59 = phi i64 
  %60 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %59)
  %61 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %60, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %61, ptr %27, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_4
  %62 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %27, ptr %1)
  %63 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %62, ptr %63, align 4
  %64 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %63, i32 0, i32 0
  %65 = load i1, ptr %64, align 1
  br i1 %65, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %66 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %63, i32 0, i32 1
  %67 = load i64, ptr %66, align 4
  %68 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 4, ptr %68, align 1
  br label %_llgo_5

_llgo_16:                                         ; preds = %_llgo_14
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_17:                                         ; preds = %_llgo_6
  %69 = sub i64 0, %39
  %70 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %69)
  %71 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %70, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %71, ptr %40, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_6
  %72 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %40, ptr %1)
  %73 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %72, ptr %73, align 4
  %74 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %73, i32 0, i32 0
  %75 = load i1, ptr %74, align 1
  br i1 %75, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %76 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %73, i32 0, i32 1
  %77 = load i64, ptr %76, align 4
  %78 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 6, ptr %78, align 1
  br label %_llgo_7

_llgo_20:                                         ; preds = %_llgo_18
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 48)
  %2 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %1, i32 0, i32 4
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %1, i32 0, i32 5
  store ptr null, ptr %7, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*github.com/goplus/llgo/cl/_testpull/complex.struct$EQcz-Tcs1Tk49FGwgZTBUCbCuEsFnwxkNs81p9Q8tBw")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, ptr, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_5 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, ptr, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds { i8, i64, ptr, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds { i8, i64, ptr, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %8, i32 0, i32 0
  %10 = getelementptr inbounds { ptr, ptr }, ptr %9, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %_llgo_6, label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_8, %_llgo_0
  %13 = getelementptr inbounds { i8, i64, ptr, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %14 = load i64, ptr %13, align 4
  %15 = getelementptr inbounds { i8, i64, ptr, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds { i8, i64, ptr, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %17, i32 0, i32 0
  %19 = getelementptr inbounds { ptr, ptr }, ptr %18, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %_llgo_10, label %_llgo_11

_llgo_3:                                          ; preds = %_llgo_12, %_llgo_0
  %22 = getelementptr inbounds { i8, i64, ptr, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %23 = load i64, ptr %22, align 4
  %24 = getelementptr inbounds { i8, i64, ptr, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_4:                                          ; preds = %_llgo_0
  %26 = getelementptr inbounds { i8, i64, ptr, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds { i8, i64, ptr, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_5:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_6:                                          ; preds = %_llgo_1
  %30 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %5)
  %31 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %30, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %31, ptr %8, align 8
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_1
  %32 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %8, ptr %1)
  %33 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %32, ptr %33, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %33, i32 0, i32 0
  %35 = load i1, ptr %34, align 1
  br i1 %35, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  %36 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %33, i32 0, i32 1
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds { i8, i64, ptr, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %38, align 1
  br label %_llgo_2

_llgo_9:                                          ; preds = %_llgo_7
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_10:                                         ; preds = %_llgo_2
  %39 = call i64 @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await"(ptr %30)
  %40 = add i64 %39, 10
  %41 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %40)
  %42 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %41, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %42, ptr %17, align 8
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_2
  %43 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %17, ptr %1)
  %44 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %43, ptr %44, align 4
  %45 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %44, i32 0, i32 0
  %46 = load i1, ptr %45, align 1
  br i1 %46, label %_llgo_12, label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_11
  %47 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %44, i32 0, i32 1
  %48 = load i64, ptr %47, align 4
  %49 = getelementptr inbounds { i8, i64, ptr, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %49, align 1
  br label %_llgo_3

_llgo_13:                                         ; preds = %_llgo_11
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %2 = getelementptr inbounds { i8, i64, ptr, ptr, ptr }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, i64, ptr, ptr, ptr }, ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds { i8, i64, ptr, ptr, ptr }, ptr %1, i32 0, i32 2
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds { i8, i64, ptr, ptr, ptr }, ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds { i8, i64, ptr, ptr, ptr }, ptr %1, i32 0, i32 4
  store ptr null, ptr %6, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*github.com/goplus/llgo/cl/_testpull/complex.struct$o9qLwkTKVf3sSa2Rrtjqj_f9YLO0luUQlAfqxIiGfFo")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_9 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
    i8 5, label %_llgo_6
    i8 6, label %_llgo_7
    i8 7, label %_llgo_8
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %8, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %9 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %13, align 1
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %14 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %18, align 1
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_0
  %19 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 4, ptr %23, align 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %24 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %25 = load i64, ptr %24, align 4
  %26 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %27 = load i64, ptr %26, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_6:                                          ; preds = %_llgo_0
  %28 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %29 = load i64, ptr %28, align 4
  %30 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %31 = load i64, ptr %30, align 4
  %32 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 6, ptr %32, align 1
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_0
  %33 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %34 = load i64, ptr %33, align 4
  %35 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %36 = load i64, ptr %35, align 4
  %37 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %38 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %37, i32 0, i32 0
  %39 = getelementptr inbounds { ptr, ptr }, ptr %38, i32 0, i32 0
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %_llgo_10, label %_llgo_11

_llgo_8:                                          ; preds = %_llgo_12, %_llgo_0
  %42 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %43 = load i64, ptr %42, align 4
  %44 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %45 = load i64, ptr %44, align 4
  %46 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 8, ptr %46, align 1
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_9:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_10:                                         ; preds = %_llgo_7
  %47 = phi i64 
  %48 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %47)
  %49 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %48, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %49, ptr %37, align 8
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_7
  %50 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %37, ptr %1)
  %51 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %50, ptr %51, align 4
  %52 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %51, i32 0, i32 0
  %53 = load i1, ptr %52, align 1
  br i1 %53, label %_llgo_12, label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_11
  %54 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %51, i32 0, i32 1
  %55 = load i64, ptr %54, align 4
  %56 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 7, ptr %56, align 1
  br label %_llgo_8

_llgo_13:                                         ; preds = %_llgo_11
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %2 = getelementptr inbounds { i8, i64, i64, ptr }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, i64, i64, ptr }, ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds { i8, i64, i64, ptr }, ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds { i8, i64, i64, ptr }, ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*github.com/goplus/llgo/cl/_testpull/complex.struct$12Z5Ktbh4uwTNX9aHATV2r-XY_l0pAVPPvnR3GedS2w")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_6 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %10, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %11 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %14 = load i64, ptr %13, align 4
  %15 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %17, align 1
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %18 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %19 = load i64, ptr %18, align 4
  %20 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %21 = load i64, ptr %20, align 4
  %22 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %23 = load i64, ptr %22, align 4
  %24 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %25 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %24, i32 0, i32 0
  %26 = getelementptr inbounds { ptr, ptr }, ptr %25, i32 0, i32 0
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %_llgo_7, label %_llgo_8

_llgo_4:                                          ; preds = %_llgo_9, %_llgo_0
  %29 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %30 = load i64, ptr %29, align 4
  %31 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %32 = load i64, ptr %31, align 4
  %33 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %34 = load i64, ptr %33, align 4
  %35 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 4, ptr %35, align 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %36 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %39 = load i64, ptr %38, align 4
  %40 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %41 = load i64, ptr %40, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_6:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_7:                                          ; preds = %_llgo_3
  %42 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %23)
  %43 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %42, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %43, ptr %24, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_3
  %44 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %24, ptr %1)
  %45 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %44, ptr %45, align 4
  %46 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %45, i32 0, i32 0
  %47 = load i1, ptr %46, align 1
  br i1 %47, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %45, i32 0, i32 1
  %49 = load i64, ptr %48, align 4
  %50 = getelementptr inbounds { i8, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %50, align 1
  br label %_llgo_4

_llgo_10:                                         ; preds = %_llgo_8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %2 = getelementptr inbounds { i8, i64, i64, i64, ptr }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, i64, i64, i64, ptr }, ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds { i8, i64, i64, i64, ptr }, ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds { i8, i64, i64, i64, ptr }, ptr %1, i32 0, i32 3
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds { i8, i64, i64, i64, ptr }, ptr %1, i32 0, i32 4
  store ptr null, ptr %6, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*github.com/goplus/llgo/cl/_testpull/complex.struct$b66P-KjKr1qWh2fT60P09C42KO4zXmaQFTiFF2GOWVQ")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_11 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
    i8 5, label %_llgo_6
    i8 6, label %_llgo_7
    i8 7, label %_llgo_8
    i8 8, label %_llgo_9
    i8 9, label %_llgo_10
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %8, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %9 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %14 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %13, i32 0, i32 0
  %15 = getelementptr inbounds { ptr, ptr }, ptr %14, i32 0, i32 0
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %_llgo_12, label %_llgo_13

_llgo_3:                                          ; preds = %_llgo_14, %_llgo_0
  %18 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %19 = load i64, ptr %18, align 4
  %20 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %21 = load i64, ptr %20, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_4:                                          ; preds = %_llgo_0
  %22 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %23 = load i64, ptr %22, align 4
  %24 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %25 = load i64, ptr %24, align 4
  %26 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 4, ptr %26, align 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %27 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %28 = load i64, ptr %27, align 4
  %29 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %30 = load i64, ptr %29, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_6:                                          ; preds = %_llgo_0
  %31 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %32 = load i64, ptr %31, align 4
  %33 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %34 = load i64, ptr %33, align 4
  %35 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %36 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %35, i32 0, i32 0
  %37 = getelementptr inbounds { ptr, ptr }, ptr %36, i32 0, i32 0
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %_llgo_16, label %_llgo_17

_llgo_7:                                          ; preds = %_llgo_18, %_llgo_0
  %40 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %41 = load i64, ptr %40, align 4
  %42 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %43 = load i64, ptr %42, align 4
  %44 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 7, ptr %44, align 1
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_0
  %45 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %46 = load i64, ptr %45, align 4
  %47 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %48 = load i64, ptr %47, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_9:                                          ; preds = %_llgo_0
  %49 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %50 = load i64, ptr %49, align 4
  %51 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %52 = load i64, ptr %51, align 4
  %53 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %54 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %53, i32 0, i32 0
  %55 = getelementptr inbounds { ptr, ptr }, ptr %54, i32 0, i32 0
  %56 = load ptr, ptr %55, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %_llgo_20, label %_llgo_21

_llgo_10:                                         ; preds = %_llgo_22, %_llgo_0
  %58 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %59 = load i64, ptr %58, align 4
  %60 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %61 = load i64, ptr %60, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_11:                                         ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_12:                                         ; preds = %_llgo_2
  %62 = sub i64 0, %12
  %63 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %62)
  %64 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %63, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %64, ptr %13, align 8
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_2
  %65 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %13, ptr %1)
  %66 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %65, ptr %66, align 4
  %67 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %66, i32 0, i32 0
  %68 = load i1, ptr %67, align 1
  br i1 %68, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  %69 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %66, i32 0, i32 1
  %70 = load i64, ptr %69, align 4
  %71 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %71, align 1
  br label %_llgo_3

_llgo_15:                                         ; preds = %_llgo_13
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_16:                                         ; preds = %_llgo_6
  %72 = mul i64 %34, 2
  %73 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %72)
  %74 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %73, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %74, ptr %35, align 8
  br label %_llgo_17

_llgo_17:                                         ; preds = %_llgo_16, %_llgo_6
  %75 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %35, ptr %1)
  %76 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %75, ptr %76, align 4
  %77 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %76, i32 0, i32 0
  %78 = load i1, ptr %77, align 1
  br i1 %78, label %_llgo_18, label %_llgo_19

_llgo_18:                                         ; preds = %_llgo_17
  %79 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %76, i32 0, i32 1
  %80 = load i64, ptr %79, align 4
  %81 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 6, ptr %81, align 1
  br label %_llgo_7

_llgo_19:                                         ; preds = %_llgo_17
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_20:                                         ; preds = %_llgo_9
  %82 = call i64 @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await"(ptr %73)
  %83 = add i64 %82, 50
  %84 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %83)
  %85 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %84, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %85, ptr %53, align 8
  br label %_llgo_21

_llgo_21:                                         ; preds = %_llgo_20, %_llgo_9
  %86 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %53, ptr %1)
  %87 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %86, ptr %87, align 4
  %88 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %87, i32 0, i32 0
  %89 = load i1, ptr %88, align 1
  br i1 %89, label %_llgo_22, label %_llgo_23

_llgo_22:                                         ; preds = %_llgo_21
  %90 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %87, i32 0, i32 1
  %91 = load i64, ptr %90, align 4
  %92 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 9, ptr %92, align 1
  br label %_llgo_10

_llgo_23:                                         ; preds = %_llgo_21
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 48)
  %2 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %1, i32 0, i32 4
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr }, ptr %1, i32 0, i32 5
  store ptr null, ptr %7, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*github.com/goplus/llgo/cl/_testpull/complex.struct$EQcz-Tcs1Tk49FGwgZTBUCbCuEsFnwxkNs81p9Q8tBw")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_11 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
    i8 5, label %_llgo_6
    i8 6, label %_llgo_7
    i8 7, label %_llgo_8
    i8 8, label %_llgo_9
    i8 9, label %_llgo_10
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %8, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %9 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %14 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %13, i32 0, i32 0
  %15 = getelementptr inbounds { ptr, ptr }, ptr %14, i32 0, i32 0
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %_llgo_12, label %_llgo_13

_llgo_3:                                          ; preds = %_llgo_14, %_llgo_0
  %18 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %19 = load i64, ptr %18, align 4
  %20 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %21 = load i64, ptr %20, align 4
  %22 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %22, align 1
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_0
  %23 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %24 = load i64, ptr %23, align 4
  %25 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %26 = load i64, ptr %25, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_5:                                          ; preds = %_llgo_0
  %27 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %28 = load i64, ptr %27, align 4
  %29 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %30 = load i64, ptr %29, align 4
  %31 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %32 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %31, i32 0, i32 0
  %33 = getelementptr inbounds { ptr, ptr }, ptr %32, i32 0, i32 0
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %_llgo_16, label %_llgo_17

_llgo_6:                                          ; preds = %_llgo_18, %_llgo_0
  %36 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %39 = load i64, ptr %38, align 4
  %40 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 6, ptr %40, align 1
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_0
  %41 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %42 = load i64, ptr %41, align 4
  %43 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %44 = load i64, ptr %43, align 4
  %45 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %46 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %45, i32 0, i32 0
  %47 = getelementptr inbounds { ptr, ptr }, ptr %46, i32 0, i32 0
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %_llgo_20, label %_llgo_21

_llgo_8:                                          ; preds = %_llgo_22, %_llgo_0
  %50 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %51 = load i64, ptr %50, align 4
  %52 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %53 = load i64, ptr %52, align 4
  %54 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 8, ptr %54, align 1
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_0
  %55 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %56 = load i64, ptr %55, align 4
  %57 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %58 = load i64, ptr %57, align 4
  %59 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 6
  %60 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %59, i32 0, i32 0
  %61 = getelementptr inbounds { ptr, ptr }, ptr %60, i32 0, i32 0
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %_llgo_24, label %_llgo_25

_llgo_10:                                         ; preds = %_llgo_26, %_llgo_0
  %64 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %65 = load i64, ptr %64, align 4
  %66 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %67 = load i64, ptr %66, align 4
  %68 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 10, ptr %68, align 1
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_11:                                         ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_12:                                         ; preds = %_llgo_2
  %69 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %10)
  %70 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %69, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %70, ptr %13, align 8
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_2
  %71 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %13, ptr %1)
  %72 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %71, ptr %72, align 4
  %73 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %72, i32 0, i32 0
  %74 = load i1, ptr %73, align 1
  br i1 %74, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  %75 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %72, i32 0, i32 1
  %76 = load i64, ptr %75, align 4
  %77 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  store i64 %76, ptr %77, align 4
  %78 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %78, align 1
  br label %_llgo_3

_llgo_15:                                         ; preds = %_llgo_13
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_16:                                         ; preds = %_llgo_5
  %79 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 100)
  %80 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %79, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %80, ptr %31, align 8
  br label %_llgo_17

_llgo_17:                                         ; preds = %_llgo_16, %_llgo_5
  %81 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %31, ptr %1)
  %82 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %81, ptr %82, align 4
  %83 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %82, i32 0, i32 0
  %84 = load i1, ptr %83, align 1
  br i1 %84, label %_llgo_18, label %_llgo_19

_llgo_18:                                         ; preds = %_llgo_17
  %85 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %82, i32 0, i32 1
  %86 = load i64, ptr %85, align 4
  %87 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 5, ptr %87, align 1
  br label %_llgo_6

_llgo_19:                                         ; preds = %_llgo_17
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_20:                                         ; preds = %_llgo_7
  %88 = mul i64 %44, 2
  %89 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %88)
  %90 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %89, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %90, ptr %45, align 8
  br label %_llgo_21

_llgo_21:                                         ; preds = %_llgo_20, %_llgo_7
  %91 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %45, ptr %1)
  %92 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %91, ptr %92, align 4
  %93 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %92, i32 0, i32 0
  %94 = load i1, ptr %93, align 1
  br i1 %94, label %_llgo_22, label %_llgo_23

_llgo_22:                                         ; preds = %_llgo_21
  %95 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %92, i32 0, i32 1
  %96 = load i64, ptr %95, align 4
  %97 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 7, ptr %97, align 1
  br label %_llgo_8

_llgo_23:                                         ; preds = %_llgo_21
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_24:                                         ; preds = %_llgo_9
  %98 = add i64 %58, 5
  %99 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %98)
  %100 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %99, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %100, ptr %59, align 8
  br label %_llgo_25

_llgo_25:                                         ; preds = %_llgo_24, %_llgo_9
  %101 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %59, ptr %1)
  %102 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %101, ptr %102, align 4
  %103 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %102, i32 0, i32 0
  %104 = load i1, ptr %103, align 1
  br i1 %104, label %_llgo_26, label %_llgo_27

_llgo_26:                                         ; preds = %_llgo_25
  %105 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %102, i32 0, i32 1
  %106 = load i64, ptr %105, align 4
  %107 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 9, ptr %107, align 1
  br label %_llgo_10

_llgo_27:                                         ; preds = %_llgo_25
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 56)
  %2 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 4
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 5
  store ptr null, ptr %7, align 8
  %8 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 6
  store ptr null, ptr %8, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*github.com/goplus/llgo/cl/_testpull/complex.struct$ud5kCRItYRpYybjh9TzlOagDjxnfXCIS65wN0sEA7kA")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_13 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
    i8 5, label %_llgo_6
    i8 6, label %_llgo_7
    i8 7, label %_llgo_8
    i8 8, label %_llgo_9
    i8 9, label %_llgo_10
    i8 10, label %_llgo_11
    i8 11, label %_llgo_12
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %8, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %9 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %12 = load i64, ptr %11, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_3:                                          ; preds = %_llgo_0
  %13 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %14 = load i64, ptr %13, align 4
  %15 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %18 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %17, i32 0, i32 0
  %19 = getelementptr inbounds { ptr, ptr }, ptr %18, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %_llgo_14, label %_llgo_15

_llgo_4:                                          ; preds = %_llgo_16, %_llgo_0
  %22 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %23 = load i64, ptr %22, align 4
  %24 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %25 = load i64, ptr %24, align 4
  %26 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 4, ptr %26, align 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %27 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %28 = load i64, ptr %27, align 4
  %29 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %30 = load i64, ptr %29, align 4
  %31 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %32 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %31, i32 0, i32 0
  %33 = getelementptr inbounds { ptr, ptr }, ptr %32, i32 0, i32 0
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %_llgo_18, label %_llgo_19

_llgo_6:                                          ; preds = %_llgo_20, %_llgo_0
  %36 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %39 = load i64, ptr %38, align 4
  %40 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 6, ptr %40, align 1
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_0
  %41 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %42 = load i64, ptr %41, align 4
  %43 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %44 = load i64, ptr %43, align 4
  %45 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 7, ptr %45, align 1
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_0
  %46 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %47 = load i64, ptr %46, align 4
  %48 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %49 = load i64, ptr %48, align 4
  %50 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %51 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %50, i32 0, i32 0
  %52 = getelementptr inbounds { ptr, ptr }, ptr %51, i32 0, i32 0
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %_llgo_22, label %_llgo_23

_llgo_9:                                          ; preds = %_llgo_24, %_llgo_0
  %55 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %56 = load i64, ptr %55, align 4
  %57 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %58 = load i64, ptr %57, align 4
  %59 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 9, ptr %59, align 1
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_0
  %60 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %61 = load i64, ptr %60, align 4
  %62 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %63 = load i64, ptr %62, align 4
  %64 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 10, ptr %64, align 1
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_0
  %65 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %66 = load i64, ptr %65, align 4
  %67 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %68 = load i64, ptr %67, align 4
  %69 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 6
  %70 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %69, i32 0, i32 0
  %71 = getelementptr inbounds { ptr, ptr }, ptr %70, i32 0, i32 0
  %72 = load ptr, ptr %71, align 8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %_llgo_26, label %_llgo_27

_llgo_12:                                         ; preds = %_llgo_28, %_llgo_0
  %74 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %75 = load i64, ptr %74, align 4
  %76 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %77 = load i64, ptr %76, align 4
  %78 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 12, ptr %78, align 1
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_13:                                         ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_14:                                         ; preds = %_llgo_3
  %79 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 0)
  %80 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %79, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %80, ptr %17, align 8
  br label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14, %_llgo_3
  %81 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %17, ptr %1)
  %82 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %81, ptr %82, align 4
  %83 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %82, i32 0, i32 0
  %84 = load i1, ptr %83, align 1
  br i1 %84, label %_llgo_16, label %_llgo_17

_llgo_16:                                         ; preds = %_llgo_15
  %85 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %82, i32 0, i32 1
  %86 = load i64, ptr %85, align 4
  %87 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %87, align 1
  br label %_llgo_4

_llgo_17:                                         ; preds = %_llgo_15
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_18:                                         ; preds = %_llgo_5
  %88 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 10)
  %89 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %88, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %89, ptr %31, align 8
  br label %_llgo_19

_llgo_19:                                         ; preds = %_llgo_18, %_llgo_5
  %90 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %31, ptr %1)
  %91 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %90, ptr %91, align 4
  %92 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %91, i32 0, i32 0
  %93 = load i1, ptr %92, align 1
  br i1 %93, label %_llgo_20, label %_llgo_21

_llgo_20:                                         ; preds = %_llgo_19
  %94 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %91, i32 0, i32 1
  %95 = load i64, ptr %94, align 4
  %96 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 5, ptr %96, align 1
  br label %_llgo_6

_llgo_21:                                         ; preds = %_llgo_19
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_22:                                         ; preds = %_llgo_8
  %97 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 20)
  %98 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %97, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %98, ptr %50, align 8
  br label %_llgo_23

_llgo_23:                                         ; preds = %_llgo_22, %_llgo_8
  %99 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %50, ptr %1)
  %100 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %99, ptr %100, align 4
  %101 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %100, i32 0, i32 0
  %102 = load i1, ptr %101, align 1
  br i1 %102, label %_llgo_24, label %_llgo_25

_llgo_24:                                         ; preds = %_llgo_23
  %103 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %100, i32 0, i32 1
  %104 = load i64, ptr %103, align 4
  %105 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 8, ptr %105, align 1
  br label %_llgo_9

_llgo_25:                                         ; preds = %_llgo_23
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_26:                                         ; preds = %_llgo_11
  %106 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 100)
  %107 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %106, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %107, ptr %69, align 8
  br label %_llgo_27

_llgo_27:                                         ; preds = %_llgo_26, %_llgo_11
  %108 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %69, ptr %1)
  %109 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %108, ptr %109, align 4
  %110 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %109, i32 0, i32 0
  %111 = load i1, ptr %110, align 1
  br i1 %111, label %_llgo_28, label %_llgo_29

_llgo_28:                                         ; preds = %_llgo_27
  %112 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %109, i32 0, i32 1
  %113 = load i64, ptr %112, align 4
  %114 = getelementptr inbounds { i8, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 11, ptr %114, align 1
  br label %_llgo_12

_llgo_29:                                         ; preds = %_llgo_27
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 56)
  %2 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 4
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 5
  store ptr null, ptr %7, align 8
  %8 = getelementptr inbounds { i8, i64, i64, ptr, ptr, ptr, ptr }, ptr %1, i32 0, i32 6
  store ptr null, ptr %8, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*github.com/goplus/llgo/cl/_testpull/complex.struct$ud5kCRItYRpYybjh9TzlOagDjxnfXCIS65wN0sEA7kA")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_10 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
    i8 5, label %_llgo_6
    i8 6, label %_llgo_7
    i8 7, label %_llgo_8
    i8 8, label %_llgo_9
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %13 = load i64, ptr %12, align 4
  %14 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 6
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 1, ptr %16, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %17 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %24 = load i64, ptr %23, align 4
  %25 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 6
  %28 = load i64, ptr %27, align 4
  %29 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 2, ptr %29, align 1
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %30 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %31 = load i64, ptr %30, align 4
  %32 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %33 = load i64, ptr %32, align 4
  %34 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %35 = load i64, ptr %34, align 4
  %36 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %39 = load i64, ptr %38, align 4
  %40 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 6
  %41 = load i64, ptr %40, align 4
  %42 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 7
  %43 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %42, i32 0, i32 0
  %44 = getelementptr inbounds { ptr, ptr }, ptr %43, i32 0, i32 0
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %_llgo_11, label %_llgo_12

_llgo_4:                                          ; preds = %_llgo_13, %_llgo_0
  %47 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %48 = load i64, ptr %47, align 4
  %49 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %50 = load i64, ptr %49, align 4
  %51 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %52 = load i64, ptr %51, align 4
  %53 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %54 = load i64, ptr %53, align 4
  %55 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %56 = load i64, ptr %55, align 4
  %57 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 6
  %58 = load i64, ptr %57, align 4
  %59 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 4, ptr %59, align 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %60 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %61 = load i64, ptr %60, align 4
  %62 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %63 = load i64, ptr %62, align 4
  %64 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %65 = load i64, ptr %64, align 4
  %66 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %67 = load i64, ptr %66, align 4
  %68 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %69 = load i64, ptr %68, align 4
  %70 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 6
  %71 = load i64, ptr %70, align 4
  %72 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 5, ptr %72, align 1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %73 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %74 = load i64, ptr %73, align 4
  %75 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %76 = load i64, ptr %75, align 4
  %77 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %78 = load i64, ptr %77, align 4
  %79 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %80 = load i64, ptr %79, align 4
  %81 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %82 = load i64, ptr %81, align 4
  %83 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 6
  %84 = load i64, ptr %83, align 4
  %85 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 6, ptr %85, align 1
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_0
  %86 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %87 = load i64, ptr %86, align 4
  %88 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %89 = load i64, ptr %88, align 4
  %90 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %91 = load i64, ptr %90, align 4
  %92 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %93 = load i64, ptr %92, align 4
  %94 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %95 = load i64, ptr %94, align 4
  %96 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 6
  %97 = load i64, ptr %96, align 4
  %98 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %98, i32 0, i32 0
  %100 = getelementptr inbounds { ptr, ptr }, ptr %99, i32 0, i32 0
  %101 = load ptr, ptr %100, align 8
  %102 = icmp eq ptr %101, null
  br i1 %102, label %_llgo_15, label %_llgo_16

_llgo_8:                                          ; preds = %_llgo_17, %_llgo_0
  %103 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %104 = load i64, ptr %103, align 4
  %105 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %106 = load i64, ptr %105, align 4
  %107 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %108 = load i64, ptr %107, align 4
  %109 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %110 = load i64, ptr %109, align 4
  %111 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %112 = load i64, ptr %111, align 4
  %113 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 6
  %114 = load i64, ptr %113, align 4
  %115 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 8, ptr %115, align 1
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_0
  %116 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 1
  %117 = load i64, ptr %116, align 4
  %118 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 2
  %119 = load i64, ptr %118, align 4
  %120 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 3
  %121 = load i64, ptr %120, align 4
  %122 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 4
  %123 = load i64, ptr %122, align 4
  %124 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 5
  %125 = load i64, ptr %124, align 4
  %126 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 6
  %127 = load i64, ptr %126, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_10:                                         ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_11:                                         ; preds = %_llgo_3
  %128 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %37)
  %129 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %128, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %129, ptr %42, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_3
  %130 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %42, ptr %1)
  %131 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %130, ptr %131, align 4
  %132 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %131, i32 0, i32 0
  %133 = load i1, ptr %132, align 1
  br i1 %133, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %134 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %131, i32 0, i32 1
  %135 = load i64, ptr %134, align 4
  %136 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 3, ptr %136, align 1
  br label %_llgo_4

_llgo_14:                                         ; preds = %_llgo_12
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_15:                                         ; preds = %_llgo_7
  %137 = mul i64 %97, 2
  %138 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %137)
  %139 = load %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %138, align 8
  store %"github.com/goplus/llgo/async.AsyncFuture[int]" %139, ptr %98, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_7
  %140 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %98, ptr %1)
  %141 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %140, ptr %141, align 4
  %142 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %141, i32 0, i32 0
  %143 = load i1, ptr %142, align 1
  br i1 %143, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %144 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %141, i32 0, i32 1
  %145 = load i64, ptr %144, align 4
  %146 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, %"github.com/goplus/llgo/async.AsyncFuture[int]", %"github.com/goplus/llgo/async.AsyncFuture[int]" }, ptr %0, i32 0, i32 0
  store i8 7, ptr %146, align 1
  br label %_llgo_8

_llgo_18:                                         ; preds = %_llgo_16
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 72)
  %2 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, ptr, ptr }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, ptr, ptr }, ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, ptr, ptr }, ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, ptr, ptr }, ptr %1, i32 0, i32 3
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, ptr, ptr }, ptr %1, i32 0, i32 4
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, ptr, ptr }, ptr %1, i32 0, i32 5
  store i64 0, ptr %7, align 4
  %8 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, ptr, ptr }, ptr %1, i32 0, i32 6
  store i64 0, ptr %8, align 4
  %9 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, ptr, ptr }, ptr %1, i32 0, i32 7
  store ptr null, ptr %9, align 8
  %10 = getelementptr inbounds { i8, i64, i64, i64, i64, i64, i64, ptr, ptr }, ptr %1, i32 0, i32 8
  store ptr null, ptr %10, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*github.com/goplus/llgo/cl/_testpull/complex.struct$Yo1AD5VRPpvNrxTSifJvsH_uNOcPRffZDm4O_vq9dhQ")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define void @"github.com/goplus/llgo/cl/_testpull/complex.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testpull/complex.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testpull/complex.init$guard", align 1
  call void @"github.com/goplus/llgo/async.init"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define linkonce ptr @"github.com/goplus/llgo/async.Async[int]"({ ptr, ptr } %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %1, i32 0, i32 0
  store { ptr, ptr } %0, ptr %2, align 8
  ret ptr %1
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

define linkonce %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.Ready[int]"(i64 %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %1, i32 0, i32 0
  %3 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %1, i32 0, i32 1
  store i1 true, ptr %2, align 1
  store i64 %0, ptr %3, align 4
  %4 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %1, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" %4
}

define linkonce %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.Pending[int]"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  call void @llvm.memset(ptr %0, i8 0, i64 16, i1 false)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %0, i32 0, i32 0
  store i1 false, ptr %1, align 1
  %2 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %0, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" %2
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/async.init"()

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
