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
%"github.com/goplus/llgo/async.Poll[int]" = type { i1, i64 }
%"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State" = type { i8, i1, ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" = type { i1, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Defer" = type { ptr, i64, ptr, ptr, ptr, ptr }
%"github.com/goplus/llgo/cl/_testpull/defer.Resource" = type { i64 }
%"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" = type { { ptr, ptr }, i1, i1, ptr }
%"github.com/goplus/llgo/async.AsyncFuture[int]" = type { { ptr, ptr }, i1, i1, i64 }
%"github.com/goplus/llgo/async.ReadyFuture[int]" = type { i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/async.Context" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }
%"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State" = type { i8, i64, ptr, i64, i64, ptr, ptr }
%"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State" = type { i8, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr }
%"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State" = type { i8, ptr, ptr, ptr }

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
@"_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 801809575, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 15 }, ptr @"*_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$L-bv4mYIsagI76ZXTH6q8eUj7E6Age9HPTzroAJOrXs$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.Poll[int].IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.Poll[int].Value" }] }, align 8
@14 = private unnamed_addr constant [15 x i8] c"async.Poll[int]", align 1
@"*_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -920093333, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 15 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value" }] }, align 8
@15 = private unnamed_addr constant [7 x i8] c"IsReady", align 1
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -541022001, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 11 }, ptr @"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out", i64 1, i64 1 } }, align 8
@16 = private unnamed_addr constant [11 x i8] c"func() bool", align 1
@"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -367308996, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 11 }, ptr null }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, align 8
@_llgo_bool = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 554183389, i8 12, i8 1, i8 1, i8 33, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 4 }, ptr @"*_llgo_bool" }, align 8
@17 = private unnamed_addr constant [4 x i8] c"bool", align 1
@"*_llgo_bool" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1896950390, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 4 }, ptr null }, ptr @_llgo_bool }, align 8
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out" = weak_odr constant [1 x ptr] [ptr @_llgo_bool], align 8
@18 = private unnamed_addr constant [5 x i8] c"Value", align 1
@19 = private unnamed_addr constant [5 x i8] c"ready", align 1
@"github.com/goplus/llgo/cl/_testpull/defer.struct$L-bv4mYIsagI76ZXTH6q8eUj7E6Age9HPTzroAJOrXs$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 5 }, ptr @_llgo_bool, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]"], align 8
@"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 968294533, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 50 }, ptr @"*_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0$imethods", i64 1, i64 1 } }, align 8
@20 = private unnamed_addr constant [50 x i8] c"interface { Poll(*async.Context) async.Poll[int] }", align 1
@"*_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1655281012, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 50 }, ptr null }, ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" }, align 8
@"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 663533385, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 26 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*ConditionalDefer$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*ConditionalDefer$State).Poll" }] }, align 8
@21 = private unnamed_addr constant [26 x i8] c"foo.ConditionalDefer$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 -92085647, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 26 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$aghk7C4yAvBFuAY2Qj2hI4UXzdZcG7YIS64QKXQZkHA$fields", i64 5, i64 5 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@22 = private unnamed_addr constant [5 x i8] c"state", align 1
@_llgo_int8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 1444672578, i8 12, i8 1, i8 1, i8 35, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 4 }, ptr @"*_llgo_int8" }, align 8
@23 = private unnamed_addr constant [4 x i8] c"int8", align 1
@"*_llgo_int8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1399554408, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 4 }, ptr null }, ptr @_llgo_int8 }, align 8
@24 = private unnamed_addr constant [6 x i8] c"param0", align 1
@25 = private unnamed_addr constant [4 x i8] c"var0", align 1
@"*_llgo_github.com/goplus/llgo/async.Future[int]" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 934108082, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 17 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]" }, align 8
@26 = private unnamed_addr constant [17 x i8] c"async.Future[int]", align 1
@"_llgo_github.com/goplus/llgo/async.Future[int]" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1503177044, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 17 }, ptr @"*_llgo_github.com/goplus/llgo/async.Future[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0$imethods", i64 1, i64 1 } }, align 8
@27 = private unnamed_addr constant [4 x i8] c"sub0", align 1
@"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1886666427, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 70 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Await", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll" }] }, align 8
@28 = private unnamed_addr constant [70 x i8] c"async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", align 1
@"_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 -2008577653, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 70 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$yHxrLaDf8dGjl-j7DMKFOzKYTCmfrbXkRsiAu0cRnm0$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@29 = private unnamed_addr constant [2 x i8] c"fn", align 1
@"_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1200775160, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 97 }, ptr @"*_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8$fields", i64 2, i64 2 } }, align 8
@30 = private unnamed_addr constant [97 x i8] c"struct { $f func(struct { $f func(*foo.Resource); $data unsafe.Pointer }); $data unsafe.Pointer }", align 1
@"*_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1292151995, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 97 }, ptr null }, ptr @"_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8" }, align 8
@31 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1152223553, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 61 }, ptr @"*_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@32 = private unnamed_addr constant [61 x i8] c"func(struct { $f func(*foo.Resource); $data unsafe.Pointer })", align 1
@"*_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2059840044, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 61 }, ptr null }, ptr @"_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk" }, align 8
@"_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -968588264, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 55 }, ptr @"*_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M$fields", i64 2, i64 2 } }, align 8
@33 = private unnamed_addr constant [55 x i8] c"struct { $f func(*foo.Resource); $data unsafe.Pointer }", align 1
@"*_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1753174139, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 55 }, ptr null }, ptr @"_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M" }, align 8
@"_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1954501058, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 19 }, ptr @"*_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@34 = private unnamed_addr constant [19 x i8] c"func(*foo.Resource)", align 1
@"*_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2096868712, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 19 }, ptr null }, ptr @"_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8" }, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 948368506, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 12 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 5 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*Resource).Close", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*Resource).Close" }] }, align 8
@35 = private unnamed_addr constant [12 x i8] c"foo.Resource", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1664976224, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 12 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$ez3MeZvA9D8F8Wht1tbuFMqI0WKAf0EmqyhZ0-FECas$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@36 = private unnamed_addr constant [2 x i8] c"id", align 1
@"github.com/goplus/llgo/cl/_testpull/defer.struct$ez3MeZvA9D8F8Wht1tbuFMqI0WKAf0EmqyhZ0-FECas$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 2 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@37 = private unnamed_addr constant [5 x i8] c"Close", align 1
@"_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource"], align 8
@38 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@39 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 2 }, ptr @"_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M"], align 8
@"_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 2 }, ptr @"_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@40 = private unnamed_addr constant [7 x i8] c"started", align 1
@"github.com/goplus/llgo/cl/_testpull/defer.struct$yHxrLaDf8dGjl-j7DMKFOzKYTCmfrbXkRsiAu0cRnm0$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 2 }, ptr @"_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 7 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 5 }, ptr @_llgo_bool, i64 17, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -247520586, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 20 }, ptr @"*_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE$out", i64 1, i64 1 } }, align 8
@41 = private unnamed_addr constant [20 x i8] c"func() *foo.Resource", align 1
@"*_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -873504099, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 20 }, ptr null }, ptr @"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE" }, align 8
@"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE$out" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource"], align 8
@"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2030322516, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 84 }, ptr @"*_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA$out", i64 1, i64 1 } }, align 8
@42 = private unnamed_addr constant [84 x i8] c"func(*async.Context) async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", align 1
@"*_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1084380263, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 84 }, ptr null }, ptr @"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA" }, align 8
@"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/async.Context"], align 8
@"_llgo_github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1693813997, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 63 }, ptr @"*_llgo_github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$ZeJ7o_LiPJpp1pgm000QHPAurJtkxjBbT-KSqeWxBXk$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).IsReady", ptr @"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource].IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, ptr @"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Value", ptr @"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource].Value" }] }, align 8
@43 = private unnamed_addr constant [63 x i8] c"async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", align 1
@"*_llgo_github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -887888728, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 63 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).IsReady", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, ptr @"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Value", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Value" }] }, align 8
@"github.com/goplus/llgo/cl/_testpull/defer.struct$ZeJ7o_LiPJpp1pgm000QHPAurJtkxjBbT-KSqeWxBXk$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 5 }, ptr @_llgo_bool, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]"], align 8
@44 = private unnamed_addr constant [4 x i8] c"sub1", align 1
@"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 964362133, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll" }] }, align 8
@45 = private unnamed_addr constant [22 x i8] c"async.AsyncFuture[int]", align 1
@"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 0, i32 1769159236, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1213993089, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 87 }, ptr @"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields", i64 2, i64 2 } }, align 8
@46 = private unnamed_addr constant [87 x i8] c"struct { $f func(struct { $f func(int); $data unsafe.Pointer }); $data unsafe.Pointer }", align 1
@"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1666834553, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 87 }, ptr null }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, align 8
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2009615728, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 51 }, ptr @"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@47 = private unnamed_addr constant [51 x i8] c"func(struct { $f func(int); $data unsafe.Pointer })", align 1
@"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1512208703, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 51 }, ptr null }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1556934939, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 45 }, ptr @"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields", i64 2, i64 2 } }, align 8
@48 = private unnamed_addr constant [45 x i8] c"struct { $f func(int); $data unsafe.Pointer }", align 1
@"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 364872269, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 45 }, ptr null }, ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -637187458, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 9 }, ptr @"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@49 = private unnamed_addr constant [9 x i8] c"func(int)", align 1
@"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 735356155, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 9 }, ptr null }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 2 }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM"], align 8
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 2 }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/defer.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 2 }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 7 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 5 }, ptr @_llgo_bool, i64 17, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/defer.struct$aghk7C4yAvBFuAY2Qj2hI4UXzdZcG7YIS64QKXQZkHA$fields" = weak_odr constant [5 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 6 }, ptr @_llgo_bool, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.Future[int]", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1432003878, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 19 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*LoopDefer$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*LoopDefer$State).Poll" }] }, align 8
@50 = private unnamed_addr constant [19 x i8] c"foo.LoopDefer$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 56, i64 56, i32 313239395, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 19 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$aw3GWA5anuz-vzbiNUIO_m0ChpmvZTTFTk7_OymSReE$fields", i64 7, i64 7 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@51 = private unnamed_addr constant [4 x i8] c"var1", align 1
@52 = private unnamed_addr constant [4 x i8] c"var2", align 1
@"github.com/goplus/llgo/cl/_testpull/defer.struct$aw3GWA5anuz-vzbiNUIO_m0ChpmvZTTFTk7_OymSReE$fields" = weak_odr constant [7 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.Future[int]", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1664288224, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 23 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*MultipleDefer$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*MultipleDefer$State).Poll" }] }, align 8
@53 = private unnamed_addr constant [23 x i8] c"foo.MultipleDefer$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 72, i64 72, i32 701184026, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 23 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$nvojiIce3nhod2sDvDDO9ml9gMXQCV2-ZSTI2Djt4nU$fields", i64 9, i64 9 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@54 = private unnamed_addr constant [4 x i8] c"var3", align 1
@55 = private unnamed_addr constant [4 x i8] c"sub2", align 1
@56 = private unnamed_addr constant [4 x i8] c"sub3", align 1
@"github.com/goplus/llgo/cl/_testpull/defer.struct$nvojiIce3nhod2sDvDDO9ml9gMXQCV2-ZSTI2Djt4nU$fields" = weak_odr constant [9 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.Future[int]", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1442532042, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 21 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*SimpleDefer$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*SimpleDefer$State).Poll" }] }, align 8
@57 = private unnamed_addr constant [21 x i8] c"foo.SimpleDefer$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 -822773017, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 21 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$_8ovVBkwlhNbfBmCX2Sy49CpdwHvgekTOSALCsDLbLc$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/defer.struct$_8ovVBkwlhNbfBmCX2Sy49CpdwHvgekTOSALCsDLbLc$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.Future[int]", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/defer.init$guard" = global i1 false, align 1
@58 = private unnamed_addr constant [45 x i8] c"Await() should be transformed by the compiler", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 6 }, ptr @"*_llgo_string" }, align 8
@59 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 6 }, ptr null }, ptr @_llgo_string }, align 8

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

_llgo_4:                                          ; preds = %_llgo_20, %_llgo_0
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 1
  %24 = load i1, ptr %23, align 1
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %94)
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %28, 0
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %29, ptr %27, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %30, ptr %26, align 8
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testpull/defer.(*ConditionalDefer$State).Poll", %_llgo_22), ptr %79, align 8
  br label %_llgo_16

_llgo_5:                                          ; preds = %_llgo_0
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 1
  %32 = load i1, ptr %31, align 1
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 0)
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %36, 0
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %37, ptr %35, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %38, ptr %34, align 8
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testpull/defer.(*ConditionalDefer$State).Poll", %_llgo_23), ptr %79, align 8
  br label %_llgo_16

_llgo_6:                                          ; preds = %_llgo_0
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 1
  %40 = load i1, ptr %39, align 1
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %42 = load ptr, ptr %41, align 8
  %43 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %42, align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %44, align 1
  %45 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %46 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %45, i32 0, i32 0
  store i1 true, ptr %46, align 1
  %47 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %45, i32 0, i32 1
  store i64 0, ptr %47, align 4
  %48 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %45, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" %48

_llgo_7:                                          ; preds = %_llgo_0
  %49 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %49, i32 0, i32 0
  store i1 true, ptr %50, align 1
  %51 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %49, i32 0, i32 1
  store i64 0, ptr %51, align 4
  %52 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %49, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" %52

_llgo_8:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_9:                                          ; preds = %_llgo_17
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_10:                                         ; preds = %_llgo_2
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 1
  %54 = load i1, ptr %53, align 1
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %56 = load ptr, ptr %55, align 8
  %57 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource"(i64 1)
  store ptr %57, ptr %13, align 8
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_2
  %58 = load ptr, ptr %13, align 8
  %59 = call %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll"(ptr %58, ptr %1)
  %60 = alloca %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", align 8
  store %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %59, ptr %60, align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %60, i32 0, i32 0
  %62 = load i1, ptr %61, align 1
  br i1 %62, label %_llgo_12, label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_11
  %63 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %60, i32 0, i32 1
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %65, align 1
  br label %_llgo_3

_llgo_13:                                         ; preds = %_llgo_11
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_14:                                         ; preds = %_llgo_3
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 1
  %67 = load i1, ptr %66, align 1
  %68 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %69 = load ptr, ptr %68, align 8
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"()
  %71 = alloca i8, i64 196, align 1
  %72 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %73 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %72, i32 0, i32 0
  store ptr %71, ptr %73, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %72, i32 0, i32 1
  store i64 0, ptr %74, align 4
  %75 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %72, i32 0, i32 2
  store ptr %70, ptr %75, align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %72, i32 0, i32 3
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testpull/defer.(*ConditionalDefer$State).Poll", %_llgo_16), ptr %76, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %72)
  %77 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %72, i32 0, i32 1
  %78 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %72, i32 0, i32 3
  %79 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %72, i32 0, i32 4
  %80 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %72, i32 0, i32 5
  store ptr null, ptr %80, align 8
  %81 = call i32 @sigsetjmp(ptr %71, i32 0)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %_llgo_18, label %_llgo_19

_llgo_15:                                         ; preds = %_llgo_18, %_llgo_3
  %83 = load ptr, ptr %20, align 8
  %84 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %83, ptr %1)
  %85 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %84, ptr %85, align 4
  %86 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %85, i32 0, i32 0
  %87 = load i1, ptr %86, align 1
  br i1 %87, label %_llgo_20, label %_llgo_21

_llgo_16:                                         ; preds = %_llgo_5, %_llgo_4

_llgo_17:                                         ; No predecessors!
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr %70)
  br label %_llgo_9

_llgo_18:                                         ; preds = %_llgo_14
  %88 = load ptr, ptr %80, align 8
  %89 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %90 = getelementptr inbounds { ptr, ptr }, ptr %89, i32 0, i32 0
  store ptr %88, ptr %90, align 8
  %91 = getelementptr inbounds { ptr, ptr }, ptr %89, i32 0, i32 1
  store ptr %64, ptr %91, align 8
  store ptr %89, ptr %80, align 8
  %92 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource"(ptr %64)
  store ptr %92, ptr %20, align 8
  br label %_llgo_15

_llgo_19:                                         ; preds = %_llgo_14

_llgo_20:                                         ; preds = %_llgo_15
  %93 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %85, i32 0, i32 1
  %94 = load i64, ptr %93, align 4
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %95, align 1
  br label %_llgo_4

_llgo_21:                                         ; preds = %_llgo_15
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_22:                                         ; No predecessors!
  %96 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %26, align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %97, align 1
  %98 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %98, i32 0, i32 0
  store i1 true, ptr %99, align 1
  %100 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %98, i32 0, i32 1
  store i64 0, ptr %100, align 4
  %101 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %98, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" %101

_llgo_23:                                         ; No predecessors!
  %102 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %34, align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %103, align 1
  %104 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %105 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %104, i32 0, i32 0
  store i1 true, ptr %105, align 1
  %106 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %104, i32 0, i32 1
  store i64 0, ptr %106, align 4
  %107 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %104, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" %107
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

define void @"github.com/goplus/llgo/cl/_testpull/defer.(*Resource).Close"(ptr %0) {
_llgo_0:
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr)

; Function Attrs: returns_twice
declare i32 @sigsetjmp(ptr, i32) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr)

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

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

define ptr @"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$Concrete"(i1 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
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
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 45 }, ptr %1, align 8
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

define linkonce i1 @"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource].IsReady"(%"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %1, i32 0, i32 0
  %3 = load i1, ptr %2, align 1
  ret i1 %3
}

define linkonce ptr @"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource].Value"(%"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
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
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 45 }, ptr %1, align 8
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

_llgo_5:                                          ; preds = %_llgo_21, %_llgo_0
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
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testpull/defer.(*LoopDefer$State).Poll", %_llgo_23), ptr %117, align 8
  br label %_llgo_17

_llgo_7:                                          ; preds = %_llgo_0
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 1
  %66 = load i64, ptr %65, align 4
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %70 = load i64, ptr %69, align 4
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  %72 = load i64, ptr %71, align 4
  %73 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %68, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %74, align 1
  %75 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %75, i32 0, i32 0
  store i1 true, ptr %76, align 1
  %77 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %75, i32 0, i32 1
  store i64 0, ptr %77, align 4
  %78 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %75, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" %78

_llgo_8:                                          ; preds = %_llgo_0
  %79 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %79, i32 0, i32 0
  store i1 true, ptr %80, align 1
  %81 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %79, i32 0, i32 1
  store i64 0, ptr %81, align 4
  %82 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %79, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" %82

_llgo_9:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_10:                                         ; preds = %_llgo_18
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_11:                                         ; preds = %_llgo_3
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 1
  %84 = load i64, ptr %83, align 4
  %85 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %88 = load i64, ptr %87, align 4
  %89 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  %90 = load i64, ptr %89, align 4
  %91 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource"(i64 %90)
  store ptr %91, ptr %30, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_3
  %92 = load ptr, ptr %30, align 8
  %93 = call %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll"(ptr %92, ptr %1)
  %94 = alloca %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", align 8
  store %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %93, ptr %94, align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %94, i32 0, i32 0
  %96 = load i1, ptr %95, align 1
  br i1 %96, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %97 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %94, i32 0, i32 1
  %98 = load ptr, ptr %97, align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %99, align 1
  br label %_llgo_4

_llgo_14:                                         ; preds = %_llgo_12
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_15:                                         ; preds = %_llgo_4
  %100 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 1
  %101 = load i64, ptr %100, align 4
  %102 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %103 = load ptr, ptr %102, align 8
  %104 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %105 = load i64, ptr %104, align 4
  %106 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  %107 = load i64, ptr %106, align 4
  %108 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"()
  %109 = alloca i8, i64 196, align 1
  %110 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %111 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %110, i32 0, i32 0
  store ptr %109, ptr %111, align 8
  %112 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %110, i32 0, i32 1
  store i64 0, ptr %112, align 4
  %113 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %110, i32 0, i32 2
  store ptr %108, ptr %113, align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %110, i32 0, i32 3
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testpull/defer.(*LoopDefer$State).Poll", %_llgo_17), ptr %114, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %110)
  %115 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %110, i32 0, i32 1
  %116 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %110, i32 0, i32 3
  %117 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %110, i32 0, i32 4
  %118 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %110, i32 0, i32 5
  store ptr null, ptr %118, align 8
  %119 = call i32 @sigsetjmp(ptr %109, i32 0)
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %_llgo_19, label %_llgo_20

_llgo_16:                                         ; preds = %_llgo_19, %_llgo_4
  %121 = load ptr, ptr %41, align 8
  %122 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %121, ptr %1)
  %123 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %122, ptr %123, align 4
  %124 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %123, i32 0, i32 0
  %125 = load i1, ptr %124, align 1
  br i1 %125, label %_llgo_21, label %_llgo_22

_llgo_17:                                         ; preds = %_llgo_6

_llgo_18:                                         ; No predecessors!
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr %108)
  br label %_llgo_10

_llgo_19:                                         ; preds = %_llgo_15
  %126 = load ptr, ptr %118, align 8
  %127 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %128 = getelementptr inbounds { ptr, ptr }, ptr %127, i32 0, i32 0
  store ptr %126, ptr %128, align 8
  %129 = getelementptr inbounds { ptr, ptr }, ptr %127, i32 0, i32 1
  store ptr %98, ptr %129, align 8
  store ptr %127, ptr %118, align 8
  %130 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource"(ptr %98)
  store ptr %130, ptr %41, align 8
  br label %_llgo_16

_llgo_20:                                         ; preds = %_llgo_15

_llgo_21:                                         ; preds = %_llgo_16
  %131 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %123, i32 0, i32 1
  %132 = load i64, ptr %131, align 4
  %133 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %133, align 1
  br label %_llgo_5

_llgo_22:                                         ; preds = %_llgo_16
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_23:                                         ; No predecessors!
  %134 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %56, align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %135, align 1
  %136 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %136, i32 0, i32 0
  store i1 true, ptr %137, align 1
  %138 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %136, i32 0, i32 1
  store i64 0, ptr %138, align 4
  %139 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %136, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" %139
}

define ptr @"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 56)
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

_llgo_3:                                          ; preds = %_llgo_20, %_llgo_0
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
  br i1 %36, label %_llgo_22, label %_llgo_23

_llgo_4:                                          ; preds = %_llgo_24, %_llgo_0
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
  br i1 %47, label %_llgo_26, label %_llgo_27

_llgo_5:                                          ; preds = %_llgo_28, %_llgo_0
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %55 = load i64, ptr %54, align 4
  %56 = add i64 %55, %172
  %57 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %56)
  %58 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %58, 0
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %59, ptr %57, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %60, ptr %49, align 8
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testpull/defer.(*MultipleDefer$State).Poll", %_llgo_30), ptr %117, align 8
  br label %_llgo_16

_llgo_6:                                          ; preds = %_llgo_0
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %68 = load i64, ptr %67, align 4
  %69 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %62, align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %70, align 1
  %71 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %71, i32 0, i32 0
  store i1 true, ptr %72, align 1
  %73 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %71, i32 0, i32 1
  store i64 0, ptr %73, align 4
  %74 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %71, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" %74

_llgo_7:                                          ; preds = %_llgo_0
  %75 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %75, i32 0, i32 0
  store i1 true, ptr %76, align 1
  %77 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %75, i32 0, i32 1
  store i64 0, ptr %77, align 4
  %78 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %75, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" %78

_llgo_8:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_9:                                          ; preds = %_llgo_17
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_10:                                         ; preds = %_llgo_1
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %82 = load ptr, ptr %81, align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %86 = load i64, ptr %85, align 4
  %87 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @llvm.memset(ptr %87, i8 0, i64 16, i1 false)
  %88 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  store ptr %87, ptr %88, align 8
  %89 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @llvm.memset(ptr %89, i8 0, i64 16, i1 false)
  %90 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource"(i64 1)
  store ptr %90, ptr %12, align 8
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_1
  %91 = load ptr, ptr %12, align 8
  %92 = call %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll"(ptr %91, ptr %1)
  %93 = alloca %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", align 8
  store %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %92, ptr %93, align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %93, i32 0, i32 0
  %95 = load i1, ptr %94, align 1
  br i1 %95, label %_llgo_12, label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_11
  %96 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %93, i32 0, i32 1
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  store ptr %97, ptr %98, align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %99, align 1
  br label %_llgo_2

_llgo_13:                                         ; preds = %_llgo_11
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_14:                                         ; preds = %_llgo_2
  %100 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %101 = load ptr, ptr %100, align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %103 = load ptr, ptr %102, align 8
  %104 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %105 = load ptr, ptr %104, align 8
  %106 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %107 = load i64, ptr %106, align 4
  %108 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"()
  %109 = alloca i8, i64 196, align 1
  %110 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %111 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %110, i32 0, i32 0
  store ptr %109, ptr %111, align 8
  %112 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %110, i32 0, i32 1
  store i64 0, ptr %112, align 4
  %113 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %110, i32 0, i32 2
  store ptr %108, ptr %113, align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %110, i32 0, i32 3
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testpull/defer.(*MultipleDefer$State).Poll", %_llgo_16), ptr %114, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %110)
  %115 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %110, i32 0, i32 1
  %116 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %110, i32 0, i32 3
  %117 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %110, i32 0, i32 4
  %118 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %110, i32 0, i32 5
  store ptr null, ptr %118, align 8
  %119 = call i32 @sigsetjmp(ptr %109, i32 0)
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %_llgo_18, label %_llgo_19

_llgo_15:                                         ; preds = %_llgo_18, %_llgo_2
  %121 = load ptr, ptr %23, align 8
  %122 = call %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll"(ptr %121, ptr %1)
  %123 = alloca %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", align 8
  store %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %122, ptr %123, align 8
  %124 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %123, i32 0, i32 0
  %125 = load i1, ptr %124, align 1
  br i1 %125, label %_llgo_20, label %_llgo_21

_llgo_16:                                         ; preds = %_llgo_5

_llgo_17:                                         ; No predecessors!
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr %108)
  br label %_llgo_9

_llgo_18:                                         ; preds = %_llgo_14
  %126 = load ptr, ptr %118, align 8
  %127 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %128 = getelementptr inbounds { ptr, ptr }, ptr %127, i32 0, i32 0
  store ptr %126, ptr %128, align 8
  %129 = getelementptr inbounds { ptr, ptr }, ptr %127, i32 0, i32 1
  store ptr %103, ptr %129, align 8
  store ptr %127, ptr %118, align 8
  %130 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource"(i64 2)
  store ptr %130, ptr %23, align 8
  br label %_llgo_15

_llgo_19:                                         ; preds = %_llgo_14

_llgo_20:                                         ; preds = %_llgo_15
  %131 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %123, i32 0, i32 1
  %132 = load ptr, ptr %131, align 8
  %133 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  store ptr %132, ptr %133, align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %134, align 1
  br label %_llgo_3

_llgo_21:                                         ; preds = %_llgo_15
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_22:                                         ; preds = %_llgo_3
  %135 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %136 = load ptr, ptr %135, align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %138 = load ptr, ptr %137, align 8
  %139 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %140 = load ptr, ptr %139, align 8
  %141 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %142 = load i64, ptr %141, align 4
  %143 = load ptr, ptr %118, align 8
  %144 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %145 = getelementptr inbounds { ptr, ptr }, ptr %144, i32 0, i32 0
  store ptr %143, ptr %145, align 8
  %146 = getelementptr inbounds { ptr, ptr }, ptr %144, i32 0, i32 1
  store ptr %140, ptr %146, align 8
  store ptr %144, ptr %118, align 8
  %147 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource"(ptr %138)
  store ptr %147, ptr %34, align 8
  br label %_llgo_23

_llgo_23:                                         ; preds = %_llgo_22, %_llgo_3
  %148 = load ptr, ptr %34, align 8
  %149 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %148, ptr %1)
  %150 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %149, ptr %150, align 4
  %151 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %150, i32 0, i32 0
  %152 = load i1, ptr %151, align 1
  br i1 %152, label %_llgo_24, label %_llgo_25

_llgo_24:                                         ; preds = %_llgo_23
  %153 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %150, i32 0, i32 1
  %154 = load i64, ptr %153, align 4
  %155 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  store i64 %154, ptr %155, align 4
  %156 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %156, align 1
  br label %_llgo_4

_llgo_25:                                         ; preds = %_llgo_23
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_26:                                         ; preds = %_llgo_4
  %157 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %158 = load ptr, ptr %157, align 8
  %159 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %160 = load ptr, ptr %159, align 8
  %161 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %162 = load ptr, ptr %161, align 8
  %163 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %164 = load i64, ptr %163, align 4
  %165 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource"(ptr %162)
  store ptr %165, ptr %45, align 8
  br label %_llgo_27

_llgo_27:                                         ; preds = %_llgo_26, %_llgo_4
  %166 = load ptr, ptr %45, align 8
  %167 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %166, ptr %1)
  %168 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %167, ptr %168, align 4
  %169 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %168, i32 0, i32 0
  %170 = load i1, ptr %169, align 1
  br i1 %170, label %_llgo_28, label %_llgo_29

_llgo_28:                                         ; preds = %_llgo_27
  %171 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %168, i32 0, i32 1
  %172 = load i64, ptr %171, align 4
  %173 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %173, align 1
  br label %_llgo_5

_llgo_29:                                         ; preds = %_llgo_27
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_30:                                         ; No predecessors!
  %174 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %49, align 8
  %175 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %175, align 1
  %176 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %177 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %176, i32 0, i32 0
  store i1 true, ptr %177, align 1
  %178 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %176, i32 0, i32 1
  store i64 0, ptr %178, align 4
  %179 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %176, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" %179
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #1

define ptr @"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$Concrete"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 72)
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

_llgo_3:                                          ; preds = %_llgo_18, %_llgo_0
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %72)
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %17, 0
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %18, ptr %16, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %19, ptr %15, align 8
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testpull/defer.(*SimpleDefer$State).Poll", %_llgo_20), ptr %57, align 8
  br label %_llgo_14

_llgo_4:                                          ; preds = %_llgo_0
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %21, align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %23, align 1
  %24 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %24, i32 0, i32 0
  store i1 true, ptr %25, align 1
  %26 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %24, i32 0, i32 1
  store i64 0, ptr %26, align 4
  %27 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %24, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" %27

_llgo_5:                                          ; preds = %_llgo_0
  %28 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %28, i32 0, i32 0
  store i1 true, ptr %29, align 1
  %30 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %28, i32 0, i32 1
  store i64 0, ptr %30, align 4
  %31 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %28, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" %31

_llgo_6:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_7:                                          ; preds = %_llgo_15
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_8:                                          ; preds = %_llgo_1
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8
  %34 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @llvm.memset(ptr %34, i8 0, i64 16, i1 false)
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  store ptr %34, ptr %35, align 8
  %36 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @llvm.memset(ptr %36, i8 0, i64 16, i1 false)
  %37 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource"(i64 1)
  store ptr %37, ptr %6, align 8
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_1
  %38 = load ptr, ptr %6, align 8
  %39 = call %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll"(ptr %38, ptr %1)
  %40 = alloca %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", align 8
  store %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %39, ptr %40, align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %40, i32 0, i32 0
  %42 = load i1, ptr %41, align 1
  br i1 %42, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %43 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %40, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %45, align 1
  br label %_llgo_2

_llgo_11:                                         ; preds = %_llgo_9
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_12:                                         ; preds = %_llgo_2
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %47 = load ptr, ptr %46, align 8
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"()
  %49 = alloca i8, i64 196, align 1
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %51 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %50, i32 0, i32 0
  store ptr %49, ptr %51, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %50, i32 0, i32 1
  store i64 0, ptr %52, align 4
  %53 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %50, i32 0, i32 2
  store ptr %48, ptr %53, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %50, i32 0, i32 3
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testpull/defer.(*SimpleDefer$State).Poll", %_llgo_14), ptr %54, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %50)
  %55 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %50, i32 0, i32 1
  %56 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %50, i32 0, i32 3
  %57 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %50, i32 0, i32 4
  %58 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %50, i32 0, i32 5
  store ptr null, ptr %58, align 8
  %59 = call i32 @sigsetjmp(ptr %49, i32 0)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %_llgo_16, label %_llgo_17

_llgo_13:                                         ; preds = %_llgo_16, %_llgo_2
  %61 = load ptr, ptr %11, align 8
  %62 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %61, ptr %1)
  %63 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %62, ptr %63, align 4
  %64 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %63, i32 0, i32 0
  %65 = load i1, ptr %64, align 1
  br i1 %65, label %_llgo_18, label %_llgo_19

_llgo_14:                                         ; preds = %_llgo_3

_llgo_15:                                         ; No predecessors!
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr %48)
  br label %_llgo_7

_llgo_16:                                         ; preds = %_llgo_12
  %66 = load ptr, ptr %58, align 8
  %67 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %68 = getelementptr inbounds { ptr, ptr }, ptr %67, i32 0, i32 0
  store ptr %66, ptr %68, align 8
  %69 = getelementptr inbounds { ptr, ptr }, ptr %67, i32 0, i32 1
  store ptr %44, ptr %69, align 8
  store ptr %67, ptr %58, align 8
  %70 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource"(ptr %44)
  store ptr %70, ptr %11, align 8
  br label %_llgo_13

_llgo_17:                                         ; preds = %_llgo_12

_llgo_18:                                         ; preds = %_llgo_13
  %71 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %63, i32 0, i32 1
  %72 = load i64, ptr %71, align 4
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %73, align 1
  br label %_llgo_3

_llgo_19:                                         ; preds = %_llgo_13
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_20:                                         ; No predecessors!
  %74 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %15, align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %75, align 1
  %76 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %76, i32 0, i32 0
  store i1 true, ptr %77, align 1
  %78 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %76, i32 0, i32 1
  store i64 0, ptr %78, align 4
  %79 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %76, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" %79
}

define ptr @"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$Concrete"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
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
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %1, i32 0, i32 0
  %3 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %1, i32 0, i32 1
  store i1 true, ptr %2, align 1
  store i64 %0, ptr %3, align 4
  %4 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %1, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" %4
}

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
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
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
  call void @llvm.memset(ptr %0, i8 0, i64 16, i1 false)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %0, i32 0, i32 0
  store i1 false, ptr %1, align 1
  %2 = load %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", ptr %0, align 8
  ret %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %2
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

define linkonce %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.Pending[int]"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  call void @llvm.memset(ptr %0, i8 0, i64 16, i1 false)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %0, i32 0, i32 0
  store i1 false, ptr %1, align 1
  %2 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %0, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" %2
}

declare void @"github.com/goplus/llgo/async.init"()

attributes #0 = { returns_twice }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
