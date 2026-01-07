; ModuleID = 'github.com/goplus/llgo/cl/_testpull/defer'
source_filename = "github.com/goplus/llgo/cl/_testpull/defer"

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
%"github.com/goplus/llgo/async.Poll[int]" = type { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.eface" }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State" = type { i8, i1, ptr, ptr, ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1, i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" = type { i1, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.eface" }
%"github.com/goplus/llgo/cl/_testpull/defer.Resource" = type { i64 }
%"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" = type { { ptr, ptr }, i1, i1, ptr }
%"github.com/goplus/llgo/async.AsyncFuture[int]" = type { { ptr, ptr }, i1, i1, i64 }
%"github.com/goplus/llgo/async.ReadyFuture[int]" = type { i64 }
%"github.com/goplus/llgo/async.Context" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }
%"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State" = type { i8, i64, ptr, i64, i64, ptr, ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1, i1 }
%"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State" = type { i8, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1, i1 }
%"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State" = type { i8, ptr, ptr, ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1, i1 }

@"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -103283099, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Await", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Poll", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Poll" }] }, align 8
@0 = private unnamed_addr constant [22 x i8] c"async.ReadyFuture[int]", align 1
@"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1814719306, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@1 = private unnamed_addr constant [28 x i8] c"github.com/goplus/llgo/async", align 1
@2 = private unnamed_addr constant [5 x i8] c"value", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr @"*_llgo_int" }, align 8
@3 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"github.com/goplus/llgo/cl/_testpull/defer.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@4 = private unnamed_addr constant [5 x i8] c"Await", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2131144854, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 10 }, ptr @"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out", i64 1, i64 1 } }, align 8
@5 = private unnamed_addr constant [10 x i8] c"func() int", align 1
@"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1805835775, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 10 }, ptr null }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@6 = private unnamed_addr constant [4 x i8] c"Poll", align 1
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1655717054, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 36 }, ptr @"*_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$out", i64 1, i64 1 } }, align 8
@7 = private unnamed_addr constant [36 x i8] c"func(*async.Context) async.Poll[int]", align 1
@"*_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -62824656, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 36 }, ptr null }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }, align 8
@"*_llgo_github.com/goplus/llgo/async.Context" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -808118033, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 13 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Context" }, align 8
@8 = private unnamed_addr constant [13 x i8] c"async.Context", align 1
@"_llgo_github.com/goplus/llgo/async.Context" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 29200871, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Context" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 13 }, ptr @"*_llgo_github.com/goplus/llgo/async.Context" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$RRVsRJkYHdoR-mI2_FrzGPRXwNM5u9bW2w1hN455sNs$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@9 = private unnamed_addr constant [5 x i8] c"Waker", align 1
@"_llgo_github.com/goplus/llgo/async.Waker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -2133419533, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 11 }, ptr @"*_llgo_github.com/goplus/llgo/async.Waker" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$5udCHZ6xl-fBE2F9apjWV2qrxMb4_QYfwdoy0QD1D8c$imethods", i64 1, i64 1 } }, align 8
@10 = private unnamed_addr constant [11 x i8] c"async.Waker", align 1
@"*_llgo_github.com/goplus/llgo/async.Waker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 504672852, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 11 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Waker" }, align 8
@11 = private unnamed_addr constant [41 x i8] c"github.com/goplus/llgo/cl/_testpull/defer", align 1
@12 = private unnamed_addr constant [4 x i8] c"Wake", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@13 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@"_llgo_iface$5udCHZ6xl-fBE2F9apjWV2qrxMb4_QYfwdoy0QD1D8c$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 4 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }], align 8
@"_llgo_struct$RRVsRJkYHdoR-mI2_FrzGPRXwNM5u9bW2w1hN455sNs$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/async.Waker", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/async.Context"], align 8
@"_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 801809575, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 15 }, ptr @"*_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$M9E5HRdqyc11Zqvq07yhy6frK_fAyRGIc35bZKl9nrs$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error", ptr @"github.com/goplus/llgo/async.Poll[int].Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError", ptr @"github.com/goplus/llgo/async.Poll[int].HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.Poll[int].IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.Poll[int].Value" }] }, align 8
@14 = private unnamed_addr constant [15 x i8] c"async.Poll[int]", align 1
@"*_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -920093333, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 15 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value" }] }, align 8
@15 = private unnamed_addr constant [5 x i8] c"Error", align 1
@"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1398528794, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 19 }, ptr @"*_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8$out", i64 1, i64 1 } }, align 8
@16 = private unnamed_addr constant [19 x i8] c"func() interface {}", align 1
@"*_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1160547289, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 19 }, ptr null }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" }, align 8
@_llgo_any = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1376530322, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 12 }, ptr @"*_llgo_any" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@17 = private unnamed_addr constant [12 x i8] c"interface {}", align 1
@"*_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1741196194, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 12 }, ptr null }, ptr @_llgo_any }, align 8
@"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8$out" = weak_odr constant [1 x ptr] [ptr @_llgo_any], align 8
@18 = private unnamed_addr constant [8 x i8] c"HasError", align 1
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -541022001, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 11 }, ptr @"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out", i64 1, i64 1 } }, align 8
@19 = private unnamed_addr constant [11 x i8] c"func() bool", align 1
@"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -367308996, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 11 }, ptr null }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, align 8
@_llgo_bool = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 554183389, i8 12, i8 1, i8 1, i8 33, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 4 }, ptr @"*_llgo_bool" }, align 8
@20 = private unnamed_addr constant [4 x i8] c"bool", align 1
@"*_llgo_bool" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1896950390, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 4 }, ptr null }, ptr @_llgo_bool }, align 8
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out" = weak_odr constant [1 x ptr] [ptr @_llgo_bool], align 8
@21 = private unnamed_addr constant [7 x i8] c"IsReady", align 1
@22 = private unnamed_addr constant [5 x i8] c"Value", align 1
@23 = private unnamed_addr constant [5 x i8] c"ready", align 1
@24 = private unnamed_addr constant [3 x i8] c"err", align 1
@"github.com/goplus/llgo/cl/_testpull/defer.struct$M9E5HRdqyc11Zqvq07yhy6frK_fAyRGIc35bZKl9nrs$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 5 }, ptr @_llgo_bool, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 3 }, ptr @_llgo_any, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]"], align 8
@"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 968294533, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 50 }, ptr @"*_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0$imethods", i64 1, i64 1 } }, align 8
@25 = private unnamed_addr constant [50 x i8] c"interface { Poll(*async.Context) async.Poll[int] }", align 1
@"*_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1655281012, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 50 }, ptr null }, ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" }, align 8
@"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 663533385, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 26 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*ConditionalDefer$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*ConditionalDefer$State).Poll" }] }, align 8
@26 = private unnamed_addr constant [26 x i8] c"foo.ConditionalDefer$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 40, i32 -92085647, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 26 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$AOMyWes14sxiyft93EF1lYdfIne_3oyEq5EH6U-Ab2M$fields", i64 9, i64 9 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@27 = private unnamed_addr constant [5 x i8] c"state", align 1
@_llgo_int8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 1444672578, i8 12, i8 1, i8 1, i8 35, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 4 }, ptr @"*_llgo_int8" }, align 8
@28 = private unnamed_addr constant [4 x i8] c"int8", align 1
@"*_llgo_int8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1399554408, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 4 }, ptr null }, ptr @_llgo_int8 }, align 8
@29 = private unnamed_addr constant [6 x i8] c"param0", align 1
@30 = private unnamed_addr constant [4 x i8] c"var0", align 1
@"*_llgo_github.com/goplus/llgo/async.Future[int]" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 934108082, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 17 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]" }, align 8
@31 = private unnamed_addr constant [17 x i8] c"async.Future[int]", align 1
@"_llgo_github.com/goplus/llgo/async.Future[int]" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1503177044, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 17 }, ptr @"*_llgo_github.com/goplus/llgo/async.Future[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0$imethods", i64 1, i64 1 } }, align 8
@32 = private unnamed_addr constant [4 x i8] c"sub0", align 1
@"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1886666427, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 70 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Await", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll" }] }, align 8
@33 = private unnamed_addr constant [70 x i8] c"async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", align 1
@"_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 -2008577653, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 70 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$yHxrLaDf8dGjl-j7DMKFOzKYTCmfrbXkRsiAu0cRnm0$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@34 = private unnamed_addr constant [2 x i8] c"fn", align 1
@"_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1200775160, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 97 }, ptr @"*_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8$fields", i64 2, i64 2 } }, align 8
@35 = private unnamed_addr constant [97 x i8] c"struct { $f func(struct { $f func(*foo.Resource); $data unsafe.Pointer }); $data unsafe.Pointer }", align 1
@"*_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1292151995, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 97 }, ptr null }, ptr @"_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8" }, align 8
@36 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1152223553, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 61 }, ptr @"*_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@37 = private unnamed_addr constant [61 x i8] c"func(struct { $f func(*foo.Resource); $data unsafe.Pointer })", align 1
@"*_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2059840044, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 61 }, ptr null }, ptr @"_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk" }, align 8
@"_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -968588264, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 55 }, ptr @"*_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M$fields", i64 2, i64 2 } }, align 8
@38 = private unnamed_addr constant [55 x i8] c"struct { $f func(*foo.Resource); $data unsafe.Pointer }", align 1
@"*_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1753174139, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 55 }, ptr null }, ptr @"_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M" }, align 8
@"_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1954501058, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 19 }, ptr @"*_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@39 = private unnamed_addr constant [19 x i8] c"func(*foo.Resource)", align 1
@"*_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2096868712, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 19 }, ptr null }, ptr @"_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8" }, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 948368506, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 12 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 5 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*Resource).Close", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*Resource).Close" }] }, align 8
@40 = private unnamed_addr constant [12 x i8] c"foo.Resource", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1664976224, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 12 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$ez3MeZvA9D8F8Wht1tbuFMqI0WKAf0EmqyhZ0-FECas$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@41 = private unnamed_addr constant [2 x i8] c"id", align 1
@"github.com/goplus/llgo/cl/_testpull/defer.struct$ez3MeZvA9D8F8Wht1tbuFMqI0WKAf0EmqyhZ0-FECas$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 2 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@42 = private unnamed_addr constant [5 x i8] c"Close", align 1
@"_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource"], align 8
@43 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@44 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 2 }, ptr @"_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M"], align 8
@"_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 2 }, ptr @"_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@45 = private unnamed_addr constant [7 x i8] c"started", align 1
@"github.com/goplus/llgo/cl/_testpull/defer.struct$yHxrLaDf8dGjl-j7DMKFOzKYTCmfrbXkRsiAu0cRnm0$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 2 }, ptr @"_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 7 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 5 }, ptr @_llgo_bool, i64 17, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -247520586, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 20 }, ptr @"*_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE$out", i64 1, i64 1 } }, align 8
@46 = private unnamed_addr constant [20 x i8] c"func() *foo.Resource", align 1
@"*_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -873504099, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 20 }, ptr null }, ptr @"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE" }, align 8
@"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE$out" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource"], align 8
@"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2030322516, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 84 }, ptr @"*_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA$out", i64 1, i64 1 } }, align 8
@47 = private unnamed_addr constant [84 x i8] c"func(*async.Context) async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", align 1
@"*_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1084380263, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 84 }, ptr null }, ptr @"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA" }, align 8
@"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/async.Context"], align 8
@"_llgo_github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 1693813997, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 63 }, ptr @"*_llgo_github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$EkmiDKJC-fqoNXricL5fDFuVyHAn72DRRPybohR3dTM$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Error", ptr @"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource].Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).HasError", ptr @"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource].HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).IsReady", ptr @"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource].IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr @"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Value", ptr @"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource].Value" }] }, align 8
@48 = private unnamed_addr constant [63 x i8] c"async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", align 1
@"*_llgo_github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -887888728, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 63 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Error", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).HasError", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).IsReady", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr @"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Value", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Value" }] }, align 8
@"github.com/goplus/llgo/cl/_testpull/defer.struct$EkmiDKJC-fqoNXricL5fDFuVyHAn72DRRPybohR3dTM$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 5 }, ptr @_llgo_bool, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 3 }, ptr @_llgo_any, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]"], align 8
@49 = private unnamed_addr constant [4 x i8] c"sub1", align 1
@"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 964362133, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll" }] }, align 8
@50 = private unnamed_addr constant [22 x i8] c"async.AsyncFuture[int]", align 1
@"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 0, i32 1769159236, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1213993089, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 87 }, ptr @"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields", i64 2, i64 2 } }, align 8
@51 = private unnamed_addr constant [87 x i8] c"struct { $f func(struct { $f func(int); $data unsafe.Pointer }); $data unsafe.Pointer }", align 1
@"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1666834553, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 87 }, ptr null }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, align 8
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2009615728, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 51 }, ptr @"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@52 = private unnamed_addr constant [51 x i8] c"func(struct { $f func(int); $data unsafe.Pointer })", align 1
@"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1512208703, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 51 }, ptr null }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1556934939, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 45 }, ptr @"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields", i64 2, i64 2 } }, align 8
@53 = private unnamed_addr constant [45 x i8] c"struct { $f func(int); $data unsafe.Pointer }", align 1
@"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 364872269, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 45 }, ptr null }, ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -637187458, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 9 }, ptr @"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@54 = private unnamed_addr constant [9 x i8] c"func(int)", align 1
@"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 735356155, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 9 }, ptr null }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 2 }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM"], align 8
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 2 }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/defer.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 2 }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 7 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 5 }, ptr @_llgo_bool, i64 17, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@55 = private unnamed_addr constant [9 x i8] c"deferHead", align 1
@56 = private unnamed_addr constant [10 x i8] c"panicValue", align 1
@57 = private unnamed_addr constant [11 x i8] c"isPanicking", align 1
@58 = private unnamed_addr constant [9 x i8] c"recovered", align 1
@"github.com/goplus/llgo/cl/_testpull/defer.struct$AOMyWes14sxiyft93EF1lYdfIne_3oyEq5EH6U-Ab2M$fields" = weak_odr constant [9 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 6 }, ptr @_llgo_bool, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.Future[int]", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 9 }, ptr @_llgo_Pointer, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 10 }, ptr @_llgo_any, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 11 }, ptr @_llgo_bool, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 9 }, ptr @_llgo_bool, i64 57, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1432003878, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 19 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*LoopDefer$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*LoopDefer$State).Poll" }] }, align 8
@59 = private unnamed_addr constant [19 x i8] c"foo.LoopDefer$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 88, i64 64, i32 313239395, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 19 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$jDRwE0a-WqLcfIydFiVcPscPjhIUXenIaNkSH8HEELA$fields", i64 11, i64 11 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@60 = private unnamed_addr constant [4 x i8] c"var1", align 1
@61 = private unnamed_addr constant [4 x i8] c"var2", align 1
@"github.com/goplus/llgo/cl/_testpull/defer.struct$jDRwE0a-WqLcfIydFiVcPscPjhIUXenIaNkSH8HEELA$fields" = weak_odr constant [11 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.Future[int]", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 9 }, ptr @_llgo_Pointer, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 10 }, ptr @_llgo_any, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 11 }, ptr @_llgo_bool, i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 9 }, ptr @_llgo_bool, i64 81, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1664288224, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 23 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*MultipleDefer$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*MultipleDefer$State).Poll" }] }, align 8
@62 = private unnamed_addr constant [23 x i8] c"foo.MultipleDefer$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 104, i64 80, i32 701184026, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 23 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$RkVl0evvpDdN6d5oaK3Rb5u35wLN6TUDJFRkdoXQtmw$fields", i64 13, i64 13 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@63 = private unnamed_addr constant [4 x i8] c"var3", align 1
@64 = private unnamed_addr constant [4 x i8] c"sub2", align 1
@65 = private unnamed_addr constant [4 x i8] c"sub3", align 1
@"github.com/goplus/llgo/cl/_testpull/defer.struct$RkVl0evvpDdN6d5oaK3Rb5u35wLN6TUDJFRkdoXQtmw$fields" = weak_odr constant [13 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.Future[int]", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 9 }, ptr @_llgo_Pointer, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 10 }, ptr @_llgo_any, i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 11 }, ptr @_llgo_bool, i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 9 }, ptr @_llgo_bool, i64 97, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1442532042, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 21 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*SimpleDefer$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*SimpleDefer$State).Poll" }] }, align 8
@66 = private unnamed_addr constant [21 x i8] c"foo.SimpleDefer$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 40, i32 -822773017, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 21 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$xBuS1EcJ9rtFnP3xAJQyIYsHi3xyQ4qWjb-Gt8FM8qE$fields", i64 8, i64 8 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/defer.struct$xBuS1EcJ9rtFnP3xAJQyIYsHi3xyQ4qWjb-Gt8FM8qE$fields" = weak_odr constant [8 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.Future[int]", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 9 }, ptr @_llgo_Pointer, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 10 }, ptr @_llgo_any, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 11 }, ptr @_llgo_bool, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 9 }, ptr @_llgo_bool, i64 57, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/defer.init$guard" = global i1 false, align 1
@67 = private unnamed_addr constant [45 x i8] c"Await() should be transformed by the compiler", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 6 }, ptr @"*_llgo_string" }, align 8
@68 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 6 }, ptr null }, ptr @_llgo_string }, align 8

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/defer.(*ConditionalDefer$State).Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
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
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 1
  %5 = load i1, ptr %4, align 1
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %8, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 1
  %10 = load i1, ptr %9, align 1
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %_llgo_10, label %_llgo_11

_llgo_3:                                          ; preds = %_llgo_12, %_llgo_0
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 1
  %17 = load i1, ptr %16, align 1
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 4
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %_llgo_14, label %_llgo_15

_llgo_4:                                          ; preds = %_llgo_16, %_llgo_0
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 1
  %24 = load i1, ptr %23, align 1
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %92)
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %28, 0
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %29, ptr %27, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %30, ptr %26, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 5
  call void @"github.com/goplus/llgo/async.(*DeferState).RunDefers"(ptr %31)
  %32 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %26, align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %33, align 1
  %34 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %34, i32 0, i32 0
  store i1 true, ptr %35, align 1
  %36 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %34, i32 0, i32 1
  store i64 0, ptr %36, align 4
  %37 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %34, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" %37

_llgo_5:                                          ; preds = %_llgo_0
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 1
  %39 = load i1, ptr %38, align 1
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8
  %42 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 0)
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %43, 0
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %44, ptr %42, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %45, ptr %41, align 8
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 5
  call void @"github.com/goplus/llgo/async.(*DeferState).RunDefers"(ptr %46)
  %47 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %41, align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %48, align 1
  %49 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %49, i32 0, i32 0
  store i1 true, ptr %50, align 1
  %51 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %49, i32 0, i32 1
  store i64 0, ptr %51, align 4
  %52 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %49, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" %52

_llgo_6:                                          ; preds = %_llgo_0
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 1
  %54 = load i1, ptr %53, align 1
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %56 = load ptr, ptr %55, align 8
  %57 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %56, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %58, align 1
  %59 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %59, i32 0, i32 0
  store i1 true, ptr %60, align 1
  %61 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %59, i32 0, i32 1
  store i64 0, ptr %61, align 4
  %62 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %59, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" %62

_llgo_7:                                          ; preds = %_llgo_0
  %63 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %63, i32 0, i32 0
  store i1 true, ptr %64, align 1
  %65 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %63, i32 0, i32 1
  store i64 0, ptr %65, align 4
  %66 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %63, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" %66

_llgo_8:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_9:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_10:                                         ; preds = %_llgo_2
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 1
  %68 = load i1, ptr %67, align 1
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %70 = load ptr, ptr %69, align 8
  %71 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource"(i64 1)
  store ptr %71, ptr %13, align 8
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_2
  %72 = load ptr, ptr %13, align 8
  %73 = call %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll"(ptr %72, ptr %1)
  %74 = alloca %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", align 8
  store %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %73, ptr %74, align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %74, i32 0, i32 0
  %76 = load i1, ptr %75, align 1
  br i1 %76, label %_llgo_12, label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_11
  %77 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %74, i32 0, i32 1
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %79, align 1
  br label %_llgo_3

_llgo_13:                                         ; preds = %_llgo_11
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_14:                                         ; preds = %_llgo_3
  %80 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 1
  %81 = load i1, ptr %80, align 1
  %82 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 5
  %85 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource"(ptr %78)
  store ptr %85, ptr %20, align 8
  br label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14, %_llgo_3
  %86 = load ptr, ptr %20, align 8
  %87 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %86, ptr %1)
  %88 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %87, ptr %88, align 8
  %89 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %88, i32 0, i32 0
  %90 = load i1, ptr %89, align 1
  br i1 %90, label %_llgo_16, label %_llgo_17

_llgo_16:                                         ; preds = %_llgo_15
  %91 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %88, i32 0, i32 1
  %92 = load i64, ptr %91, align 4
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %93, align 1
  br label %_llgo_4

_llgo_17:                                         ; preds = %_llgo_15
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource$1", ptr undef }, ptr %2, 1
  %5 = call ptr @"github.com/goplus/llgo/async.Async[*github.com/goplus/llgo/cl/_testpull/defer.Resource]"({ ptr, ptr } %4)
  ret ptr %5
}

define void @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource$1"(ptr %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.Resource", ptr %2, i32 0, i32 0
  %4 = load { ptr }, ptr %0, align 8
  %5 = extractvalue { ptr } %4, 0
  %6 = load i64, ptr %5, align 4
  store i64 %6, ptr %3, align 4
  %7 = extractvalue { ptr, ptr } %1, 1
  %8 = extractvalue { ptr, ptr } %1, 0
  call void %8(ptr %7, ptr %2)
  ret void
}

define %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store ptr %0, ptr %2, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store ptr %1, ptr %3, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %4, i32 0, i32 2
  %6 = load i1, ptr %5, align 1
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = call %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.Ready[*github.com/goplus/llgo/cl/_testpull/defer.Resource]"(ptr %9)
  ret %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %10

_llgo_2:                                          ; preds = %_llgo_0
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %11, i32 0, i32 1
  %13 = load i1, ptr %12, align 1
  br i1 %13, label %_llgo_4, label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %14, i32 0, i32 1
  store i1 true, ptr %15, align 1
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %16, i32 0, i32 0
  %18 = load { ptr, ptr }, ptr %17, align 8
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %20 = getelementptr inbounds { ptr, ptr }, ptr %19, i32 0, i32 0
  store ptr %2, ptr %20, align 8
  %21 = getelementptr inbounds { ptr, ptr }, ptr %19, i32 0, i32 1
  store ptr %3, ptr %21, align 8
  %22 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll$1[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr undef }, ptr %19, 1
  %23 = extractvalue { ptr, ptr } %18, 1
  %24 = extractvalue { ptr, ptr } %18, 0
  call void %24(ptr %23, { ptr, ptr } %22)
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %25, i32 0, i32 2
  %27 = load i1, ptr %26, align 1
  br i1 %27, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %28, i32 0, i32 3
  %30 = load ptr, ptr %29, align 8
  %31 = call %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.Ready[*github.com/goplus/llgo/cl/_testpull/defer.Resource]"(ptr %30)
  ret %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %31

_llgo_6:                                          ; preds = %_llgo_4
  %32 = call %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.Pending[*github.com/goplus/llgo/cl/_testpull/defer.Resource]"()
  ret %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %32
}

define ptr @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store ptr %0, ptr %1, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource$1", ptr undef }, ptr %2, 1
  %5 = call ptr @"github.com/goplus/llgo/async.Async[int]"({ ptr, ptr } %4)
  ret ptr %5
}

define void @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource$1"(ptr %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.Resource", ptr %4, i32 0, i32 0
  %6 = load i64, ptr %5, align 4
  %7 = mul i64 %6, 10
  %8 = extractvalue { ptr, ptr } %1, 1
  %9 = extractvalue { ptr, ptr } %1, 0
  call void %9(ptr %8, i64 %7)
  ret void
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %0, ptr %1) {
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

define linkonce ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.ReadyFuture[int]", ptr %1, i32 0, i32 0
  store i64 %0, ptr %2, align 4
  ret ptr %1
}

define linkonce i64 @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Await"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/async.ReadyFuture[int]", ptr %0, i32 0, i32 0
  %2 = load i64, ptr %1, align 4
  ret i64 %2
}

define linkonce %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.ReadyFuture[int]", ptr %0, i32 0, i32 0
  %3 = load i64, ptr %2, align 4
  %4 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.Ready[int]"(i64 %3)
  ret %"github.com/goplus/llgo/async.Poll[int]" %4
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

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %1, ptr %2)
  ret i1 %3
}

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/async.Poll[int].Error"(%"github.com/goplus/llgo/async.Poll[int]" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 32, i1 false)
  store %"github.com/goplus/llgo/async.Poll[int]" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %1, i32 0, i32 2
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %2, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3
}

define linkonce i1 @"github.com/goplus/llgo/async.Poll[int].HasError"(%"github.com/goplus/llgo/async.Poll[int]" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 32, i1 false)
  store %"github.com/goplus/llgo/async.Poll[int]" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %1, i32 0, i32 2
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %2, align 8
  %4 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer)
  %5 = xor i1 %4, true
  ret i1 %5
}

define linkonce i1 @"github.com/goplus/llgo/async.Poll[int].IsReady"(%"github.com/goplus/llgo/async.Poll[int]" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 32, i1 false)
  store %"github.com/goplus/llgo/async.Poll[int]" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %1, i32 0, i32 0
  %3 = load i1, ptr %2, align 1
  ret i1 %3
}

define linkonce i64 @"github.com/goplus/llgo/async.Poll[int].Value"(%"github.com/goplus/llgo/async.Poll[int]" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 32, i1 false)
  store %"github.com/goplus/llgo/async.Poll[int]" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %1, i32 0, i32 1
  %3 = load i64, ptr %2, align 4
  ret i64 %3
}

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/async.(*Poll[int]).Error"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %0, align 8
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/async.Poll[int].Error"(%"github.com/goplus/llgo/async.Poll[int]" %1)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.eface" %2
}

define linkonce i1 @"github.com/goplus/llgo/async.(*Poll[int]).HasError"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %0, align 8
  %2 = call i1 @"github.com/goplus/llgo/async.Poll[int].HasError"(%"github.com/goplus/llgo/async.Poll[int]" %1)
  ret i1 %2
}

define linkonce i1 @"github.com/goplus/llgo/async.(*Poll[int]).IsReady"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %0, align 8
  %2 = call i1 @"github.com/goplus/llgo/async.Poll[int].IsReady"(%"github.com/goplus/llgo/async.Poll[int]" %1)
  ret i1 %2
}

define linkonce i64 @"github.com/goplus/llgo/async.(*Poll[int]).Value"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %0, align 8
  %2 = call i64 @"github.com/goplus/llgo/async.Poll[int].Value"(%"github.com/goplus/llgo/async.Poll[int]" %1)
  ret i64 %2
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare void @"github.com/goplus/llgo/async.(*DeferState).RunDefers"(ptr)

define ptr @"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$Concrete"(i1 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 64)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %1, i32 0, i32 1
  store i1 %0, ptr %3, align 1
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %1, i32 0, i32 2
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %1, i32 0, i32 4
  store ptr null, ptr %6, align 8
  ret ptr %1
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer"(i1 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$Concrete"(i1 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define linkonce ptr @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Await"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 45 }, ptr %1, align 8
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %1, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %2)
  unreachable
}

define linkonce void @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll$1[*github.com/goplus/llgo/cl/_testpull/defer.Resource]"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load { ptr, ptr }, ptr %0, align 8
  %3 = extractvalue { ptr, ptr } %2, 0
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %4, i32 0, i32 3
  store ptr %1, ptr %5, align 8
  %6 = extractvalue { ptr, ptr } %2, 0
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %7, i32 0, i32 2
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

define void @"github.com/goplus/llgo/cl/_testpull/defer.(*Resource).Close"(ptr %0) {
_llgo_0:
  ret void
}

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource].Error"(%"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 32, i1 false)
  store %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %1, i32 0, i32 2
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %2, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3
}

define linkonce i1 @"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource].HasError"(%"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 32, i1 false)
  store %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %1, i32 0, i32 2
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %2, align 8
  %4 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer)
  %5 = xor i1 %4, true
  ret i1 %5
}

define linkonce i1 @"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource].IsReady"(%"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 32, i1 false)
  store %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %1, i32 0, i32 0
  %3 = load i1, ptr %2, align 1
  ret i1 %3
}

define linkonce ptr @"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource].Value"(%"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 32, i1 false)
  store %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Error"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %0, align 8
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource].Error"(%"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %1)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.eface" %2
}

define linkonce i1 @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).HasError"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %0, align 8
  %2 = call i1 @"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource].HasError"(%"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %1)
  ret i1 %2
}

define linkonce i1 @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).IsReady"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %0, align 8
  %2 = call i1 @"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource].IsReady"(%"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %1)
  ret i1 %2
}

define linkonce ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Value"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %0, align 8
  %2 = call ptr @"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource].Value"(%"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %1)
  ret ptr %2
}

define linkonce i64 @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 45 }, ptr %1, align 8
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %1, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %2)
  unreachable
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

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/defer.(*LoopDefer$State).Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
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
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %12, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 1
  %14 = load i64, ptr %13, align 4
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %21, align 1
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 1
  %23 = load i64, ptr %22, align 4
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  %29 = load i64, ptr %28, align 4
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 5
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %_llgo_11, label %_llgo_12

_llgo_4:                                          ; preds = %_llgo_13, %_llgo_0
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 1
  %34 = load i64, ptr %33, align 4
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %38 = load i64, ptr %37, align 4
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  %40 = load i64, ptr %39, align 4
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 6
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %_llgo_15, label %_llgo_16

_llgo_5:                                          ; preds = %_llgo_17, %_llgo_0
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 1
  %45 = load i64, ptr %44, align 4
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %49 = load i64, ptr %48, align 4
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  %51 = load i64, ptr %50, align 4
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %52, align 1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 1
  %54 = load i64, ptr %53, align 4
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %58 = load i64, ptr %57, align 4
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  %60 = load i64, ptr %59, align 4
  %61 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %58)
  %62 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %63 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %62, 0
  %64 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %63, ptr %61, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %64, ptr %56, align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 7
  call void @"github.com/goplus/llgo/async.(*DeferState).RunDefers"(ptr %65)
  %66 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %56, align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %67, align 1
  %68 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %68, i32 0, i32 0
  store i1 true, ptr %69, align 1
  %70 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %68, i32 0, i32 1
  store i64 0, ptr %70, align 4
  %71 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %68, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" %71

_llgo_7:                                          ; preds = %_llgo_0
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 1
  %73 = load i64, ptr %72, align 4
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %77 = load i64, ptr %76, align 4
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  %79 = load i64, ptr %78, align 4
  %80 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %75, align 8
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %81, align 1
  %82 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %82, i32 0, i32 0
  store i1 true, ptr %83, align 1
  %84 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %82, i32 0, i32 1
  store i64 0, ptr %84, align 4
  %85 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %82, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" %85

_llgo_8:                                          ; preds = %_llgo_0
  %86 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %86, i32 0, i32 0
  store i1 true, ptr %87, align 1
  %88 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %86, i32 0, i32 1
  store i64 0, ptr %88, align 4
  %89 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %86, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" %89

_llgo_9:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_10:                                         ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_11:                                         ; preds = %_llgo_3
  %90 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 1
  %91 = load i64, ptr %90, align 4
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %93 = load ptr, ptr %92, align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %95 = load i64, ptr %94, align 4
  %96 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  %97 = load i64, ptr %96, align 4
  %98 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource"(i64 %97)
  store ptr %98, ptr %30, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_3
  %99 = load ptr, ptr %30, align 8
  %100 = call %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll"(ptr %99, ptr %1)
  %101 = alloca %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", align 8
  store %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %100, ptr %101, align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %101, i32 0, i32 0
  %103 = load i1, ptr %102, align 1
  br i1 %103, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %104 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %101, i32 0, i32 1
  %105 = load ptr, ptr %104, align 8
  %106 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %106, align 1
  br label %_llgo_4

_llgo_14:                                         ; preds = %_llgo_12
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_15:                                         ; preds = %_llgo_4
  %107 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 1
  %108 = load i64, ptr %107, align 4
  %109 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %110 = load ptr, ptr %109, align 8
  %111 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %112 = load i64, ptr %111, align 4
  %113 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  %114 = load i64, ptr %113, align 4
  %115 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 7
  %116 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource"(ptr %105)
  store ptr %116, ptr %41, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_4
  %117 = load ptr, ptr %41, align 8
  %118 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %117, ptr %1)
  %119 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %118, ptr %119, align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %119, i32 0, i32 0
  %121 = load i1, ptr %120, align 1
  br i1 %121, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %122 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %119, i32 0, i32 1
  %123 = load i64, ptr %122, align 4
  %124 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %124, align 1
  br label %_llgo_5

_llgo_18:                                         ; preds = %_llgo_16
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 88)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %1, i32 0, i32 2
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %1, i32 0, i32 3
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %1, i32 0, i32 4
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %1, i32 0, i32 5
  store ptr null, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %1, i32 0, i32 6
  store ptr null, ptr %8, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/defer.(*MultipleDefer$State).Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
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
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %_llgo_10, label %_llgo_11

_llgo_2:                                          ; preds = %_llgo_12, %_llgo_0
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 6
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %_llgo_14, label %_llgo_15

_llgo_3:                                          ; preds = %_llgo_16, %_llgo_0
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %33 = load i64, ptr %32, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 7
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %_llgo_18, label %_llgo_19

_llgo_4:                                          ; preds = %_llgo_20, %_llgo_0
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %44 = load i64, ptr %43, align 4
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 8
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %_llgo_22, label %_llgo_23

_llgo_5:                                          ; preds = %_llgo_24, %_llgo_0
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %55 = load i64, ptr %54, align 4
  %56 = add i64 %55, %160
  %57 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %56)
  %58 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %58, 0
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %59, ptr %57, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %60, ptr %49, align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 9
  call void @"github.com/goplus/llgo/async.(*DeferState).RunDefers"(ptr %61)
  %62 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %49, align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %63, align 1
  %64 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %64, i32 0, i32 0
  store i1 true, ptr %65, align 1
  %66 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %64, i32 0, i32 1
  store i64 0, ptr %66, align 4
  %67 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %64, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" %67

_llgo_6:                                          ; preds = %_llgo_0
  %68 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %75 = load i64, ptr %74, align 4
  %76 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %69, align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %77, align 1
  %78 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %78, i32 0, i32 0
  store i1 true, ptr %79, align 1
  %80 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %78, i32 0, i32 1
  store i64 0, ptr %80, align 4
  %81 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %78, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" %81

_llgo_7:                                          ; preds = %_llgo_0
  %82 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %82, i32 0, i32 0
  store i1 true, ptr %83, align 1
  %84 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %82, i32 0, i32 1
  store i64 0, ptr %84, align 4
  %85 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %82, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" %85

_llgo_8:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_9:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_10:                                         ; preds = %_llgo_1
  %86 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %93 = load i64, ptr %92, align 4
  %94 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @llvm.memset(ptr %94, i8 0, i64 16, i1 false)
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  store ptr %94, ptr %95, align 8
  %96 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @llvm.memset(ptr %96, i8 0, i64 16, i1 false)
  %97 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource"(i64 1)
  store ptr %97, ptr %12, align 8
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_1
  %98 = load ptr, ptr %12, align 8
  %99 = call %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll"(ptr %98, ptr %1)
  %100 = alloca %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", align 8
  store %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %99, ptr %100, align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %100, i32 0, i32 0
  %102 = load i1, ptr %101, align 1
  br i1 %102, label %_llgo_12, label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_11
  %103 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %100, i32 0, i32 1
  %104 = load ptr, ptr %103, align 8
  %105 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  store ptr %104, ptr %105, align 8
  %106 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %106, align 1
  br label %_llgo_2

_llgo_13:                                         ; preds = %_llgo_11
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_14:                                         ; preds = %_llgo_2
  %107 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %108 = load ptr, ptr %107, align 8
  %109 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %110 = load ptr, ptr %109, align 8
  %111 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %112 = load ptr, ptr %111, align 8
  %113 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %114 = load i64, ptr %113, align 4
  %115 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 9
  %116 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource"(i64 2)
  store ptr %116, ptr %23, align 8
  br label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14, %_llgo_2
  %117 = load ptr, ptr %23, align 8
  %118 = call %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll"(ptr %117, ptr %1)
  %119 = alloca %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", align 8
  store %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %118, ptr %119, align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %119, i32 0, i32 0
  %121 = load i1, ptr %120, align 1
  br i1 %121, label %_llgo_16, label %_llgo_17

_llgo_16:                                         ; preds = %_llgo_15
  %122 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %119, i32 0, i32 1
  %123 = load ptr, ptr %122, align 8
  %124 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  store ptr %123, ptr %124, align 8
  %125 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %125, align 1
  br label %_llgo_3

_llgo_17:                                         ; preds = %_llgo_15
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_18:                                         ; preds = %_llgo_3
  %126 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %127 = load ptr, ptr %126, align 8
  %128 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %129 = load ptr, ptr %128, align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %131 = load ptr, ptr %130, align 8
  %132 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %133 = load i64, ptr %132, align 4
  %134 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 9
  %135 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource"(ptr %129)
  store ptr %135, ptr %34, align 8
  br label %_llgo_19

_llgo_19:                                         ; preds = %_llgo_18, %_llgo_3
  %136 = load ptr, ptr %34, align 8
  %137 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %136, ptr %1)
  %138 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %137, ptr %138, align 8
  %139 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %138, i32 0, i32 0
  %140 = load i1, ptr %139, align 1
  br i1 %140, label %_llgo_20, label %_llgo_21

_llgo_20:                                         ; preds = %_llgo_19
  %141 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %138, i32 0, i32 1
  %142 = load i64, ptr %141, align 4
  %143 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  store i64 %142, ptr %143, align 4
  %144 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %144, align 1
  br label %_llgo_4

_llgo_21:                                         ; preds = %_llgo_19
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_22:                                         ; preds = %_llgo_4
  %145 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %146 = load ptr, ptr %145, align 8
  %147 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %148 = load ptr, ptr %147, align 8
  %149 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %150 = load ptr, ptr %149, align 8
  %151 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %152 = load i64, ptr %151, align 4
  %153 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource"(ptr %150)
  store ptr %153, ptr %45, align 8
  br label %_llgo_23

_llgo_23:                                         ; preds = %_llgo_22, %_llgo_4
  %154 = load ptr, ptr %45, align 8
  %155 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %154, ptr %1)
  %156 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %155, ptr %156, align 8
  %157 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %156, i32 0, i32 0
  %158 = load i1, ptr %157, align 1
  br i1 %158, label %_llgo_24, label %_llgo_25

_llgo_24:                                         ; preds = %_llgo_23
  %159 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %156, i32 0, i32 1
  %160 = load i64, ptr %159, align 4
  %161 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %161, align 1
  br label %_llgo_5

_llgo_25:                                         ; preds = %_llgo_23
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

define ptr @"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$Concrete"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 104)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 0, ptr %1, align 1
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  store ptr null, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  store ptr null, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 6
  store ptr null, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 7
  store ptr null, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 8
  store ptr null, ptr %9, align 8
  ret ptr %0
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$Concrete"()
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State")
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %1, 0
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, ptr %0, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/defer.(*SimpleDefer$State).Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_6 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %_llgo_8, label %_llgo_9

_llgo_2:                                          ; preds = %_llgo_10, %_llgo_0
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %_llgo_12, label %_llgo_13

_llgo_3:                                          ; preds = %_llgo_14, %_llgo_0
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %63)
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %17, 0
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %18, ptr %16, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %19, ptr %15, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 4
  call void @"github.com/goplus/llgo/async.(*DeferState).RunDefers"(ptr %20)
  %21 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %15, align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %22, align 1
  %23 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %23, i32 0, i32 0
  store i1 true, ptr %24, align 1
  %25 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %23, i32 0, i32 1
  store i64 0, ptr %25, align 4
  %26 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %23, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" %26

_llgo_4:                                          ; preds = %_llgo_0
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %28, align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %30, align 1
  %31 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %31, i32 0, i32 0
  store i1 true, ptr %32, align 1
  %33 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %31, i32 0, i32 1
  store i64 0, ptr %33, align 4
  %34 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %31, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" %34

_llgo_5:                                          ; preds = %_llgo_0
  %35 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %35, i32 0, i32 0
  store i1 true, ptr %36, align 1
  %37 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %35, i32 0, i32 1
  store i64 0, ptr %37, align 4
  %38 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %35, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" %38

_llgo_6:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_7:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_8:                                          ; preds = %_llgo_1
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @llvm.memset(ptr %41, i8 0, i64 16, i1 false)
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  store ptr %41, ptr %42, align 8
  %43 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @llvm.memset(ptr %43, i8 0, i64 16, i1 false)
  %44 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource"(i64 1)
  store ptr %44, ptr %6, align 8
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_1
  %45 = load ptr, ptr %6, align 8
  %46 = call %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll"(ptr %45, ptr %1)
  %47 = alloca %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", align 8
  store %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %46, ptr %47, align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %47, i32 0, i32 0
  %49 = load i1, ptr %48, align 1
  br i1 %49, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %50 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %47, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %52, align 1
  br label %_llgo_2

_llgo_11:                                         ; preds = %_llgo_9
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_12:                                         ; preds = %_llgo_2
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 4
  %56 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource"(ptr %51)
  store ptr %56, ptr %11, align 8
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_2
  %57 = load ptr, ptr %11, align 8
  %58 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %57, ptr %1)
  %59 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %58, ptr %59, align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %59, i32 0, i32 0
  %61 = load i1, ptr %60, align 1
  br i1 %61, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  %62 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %59, i32 0, i32 1
  %63 = load i64, ptr %62, align 4
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %64, align 1
  br label %_llgo_3

_llgo_15:                                         ; preds = %_llgo_13
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$Concrete"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 64)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  store i8 0, ptr %1, align 1
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  store ptr null, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 2
  store ptr null, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 3
  store ptr null, ptr %4, align 8
  ret ptr %0
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$Concrete"()
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State")
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %1, 0
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, ptr %0, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3
}

define void @"github.com/goplus/llgo/cl/_testpull/defer.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testpull/defer.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testpull/defer.init$guard", align 1
  call void @"github.com/goplus/llgo/async.init"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define linkonce ptr @"github.com/goplus/llgo/async.Async[*github.com/goplus/llgo/cl/_testpull/defer.Resource]"({ ptr, ptr } %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %1, i32 0, i32 0
  store { ptr, ptr } %0, ptr %2, align 8
  ret ptr %1
}

define linkonce ptr @"github.com/goplus/llgo/async.Async[int]"({ ptr, ptr } %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %1, i32 0, i32 0
  store { ptr, ptr } %0, ptr %2, align 8
  ret ptr %1
}

define linkonce %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.Ready[int]"(i64 %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 32, i1 false)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %1, i32 0, i32 0
  %3 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %1, i32 0, i32 1
  store i1 true, ptr %2, align 1
  store i64 %0, ptr %3, align 4
  %4 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %1, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

define linkonce %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.Ready[*github.com/goplus/llgo/cl/_testpull/defer.Resource]"(ptr %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 32, i1 false)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %1, i32 0, i32 0
  %3 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %1, i32 0, i32 1
  store i1 true, ptr %2, align 1
  store ptr %0, ptr %3, align 8
  %4 = load %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %1, align 8
  ret %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %4
}

define linkonce %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.Pending[*github.com/goplus/llgo/cl/_testpull/defer.Resource]"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", align 8
  call void @llvm.memset(ptr %0, i8 0, i64 32, i1 false)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %0, i32 0, i32 0
  store i1 false, ptr %1, align 1
  %2 = load %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %0, align 8
  ret %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %2
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

define linkonce %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.Pending[int]"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  call void @llvm.memset(ptr %0, i8 0, i64 32, i1 false)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %0, i32 0, i32 0
  store i1 false, ptr %1, align 1
  %2 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %0, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" %2
}

declare void @"github.com/goplus/llgo/async.init"()

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
