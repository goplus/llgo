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
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State" = type { i8, i1, %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr, i64, ptr, ptr, %"github.com/goplus/llgo/async.DeferState", %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 }
%"github.com/goplus/llgo/async.DeferState" = type { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1, i1 }
%"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" = type { i1, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.eface" }
%"github.com/goplus/llgo/cl/_testpull/defer.Resource" = type { i64 }
%"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" = type { { ptr, ptr }, i1, i1, ptr }
%"github.com/goplus/llgo/async.AsyncFuture[int]" = type { { ptr, ptr }, i1, i1, i64 }
%"github.com/goplus/llgo/async.ReadyFuture[int]" = type { i64 }
%"github.com/goplus/llgo/async.Context" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }
%"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State" = type { i8, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface", i64, i64, i1, ptr, ptr, ptr, i64, ptr, ptr, %"github.com/goplus/llgo/async.DeferState", %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 }
%"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State" = type { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, %"github.com/goplus/llgo/async.DeferState", %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 }
%"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State" = type { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr, i64, ptr, ptr, %"github.com/goplus/llgo/async.DeferState", %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 }

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
@"*_llgo_github.com/goplus/llgo/async.Context" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -808118033, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 13 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Context" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 8 }, ptr @"_llgo_func$hRRUfwMucJP6hu2rj5eMGL_l9FG4lIzXJkudFcfAh48", ptr @"github.com/goplus/llgo/async.(*Context).SetWaker", ptr @"github.com/goplus/llgo/async.(*Context).SetWaker" }] }, align 8
@8 = private unnamed_addr constant [13 x i8] c"async.Context", align 1
@"_llgo_github.com/goplus/llgo/async.Context" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 0, i32 29200871, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Context" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 13 }, ptr @"*_llgo_github.com/goplus/llgo/async.Context" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$Re9uCNpaPdvqJtnZYej5NZ8aMgZjb-_ftN8ogfRqy78$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
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
@14 = private unnamed_addr constant [8 x i8] c"hasWaker", align 1
@_llgo_bool = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 554183389, i8 12, i8 1, i8 1, i8 33, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 4 }, ptr @"*_llgo_bool" }, align 8
@15 = private unnamed_addr constant [4 x i8] c"bool", align 1
@"*_llgo_bool" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1896950390, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 4 }, ptr null }, ptr @_llgo_bool }, align 8
@"github.com/goplus/llgo/cl/_testpull/defer.struct$Re9uCNpaPdvqJtnZYej5NZ8aMgZjb-_ftN8ogfRqy78$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/async.Waker", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 8 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@16 = private unnamed_addr constant [8 x i8] c"SetWaker", align 1
@"_llgo_func$hRRUfwMucJP6hu2rj5eMGL_l9FG4lIzXJkudFcfAh48" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -410209345, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 17 }, ptr @"*_llgo_func$hRRUfwMucJP6hu2rj5eMGL_l9FG4lIzXJkudFcfAh48" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$hRRUfwMucJP6hu2rj5eMGL_l9FG4lIzXJkudFcfAh48$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@17 = private unnamed_addr constant [17 x i8] c"func(async.Waker)", align 1
@"*_llgo_func$hRRUfwMucJP6hu2rj5eMGL_l9FG4lIzXJkudFcfAh48" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -719936013, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 17 }, ptr null }, ptr @"_llgo_func$hRRUfwMucJP6hu2rj5eMGL_l9FG4lIzXJkudFcfAh48" }, align 8
@"_llgo_func$hRRUfwMucJP6hu2rj5eMGL_l9FG4lIzXJkudFcfAh48$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Waker"], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/async.Context"], align 8
@"_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 801809575, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 15 }, ptr @"*_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$M9E5HRdqyc11Zqvq07yhy6frK_fAyRGIc35bZKl9nrs$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error", ptr @"github.com/goplus/llgo/async.Poll[int].Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError", ptr @"github.com/goplus/llgo/async.Poll[int].HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.Poll[int].IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.Poll[int].Value" }] }, align 8
@18 = private unnamed_addr constant [15 x i8] c"async.Poll[int]", align 1
@"*_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -920093333, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 15 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value" }] }, align 8
@19 = private unnamed_addr constant [5 x i8] c"Error", align 1
@"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1398528794, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 19 }, ptr @"*_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8$out", i64 1, i64 1 } }, align 8
@20 = private unnamed_addr constant [19 x i8] c"func() interface {}", align 1
@"*_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1160547289, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 19 }, ptr null }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" }, align 8
@_llgo_any = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1376530322, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 12 }, ptr @"*_llgo_any" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@21 = private unnamed_addr constant [12 x i8] c"interface {}", align 1
@"*_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1741196194, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 12 }, ptr null }, ptr @_llgo_any }, align 8
@"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8$out" = weak_odr constant [1 x ptr] [ptr @_llgo_any], align 8
@22 = private unnamed_addr constant [8 x i8] c"HasError", align 1
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -541022001, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 11 }, ptr @"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out", i64 1, i64 1 } }, align 8
@23 = private unnamed_addr constant [11 x i8] c"func() bool", align 1
@"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -367308996, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 11 }, ptr null }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, align 8
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out" = weak_odr constant [1 x ptr] [ptr @_llgo_bool], align 8
@24 = private unnamed_addr constant [7 x i8] c"IsReady", align 1
@25 = private unnamed_addr constant [5 x i8] c"Value", align 1
@26 = private unnamed_addr constant [5 x i8] c"ready", align 1
@27 = private unnamed_addr constant [3 x i8] c"err", align 1
@"github.com/goplus/llgo/cl/_testpull/defer.struct$M9E5HRdqyc11Zqvq07yhy6frK_fAyRGIc35bZKl9nrs$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 5 }, ptr @_llgo_bool, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 3 }, ptr @_llgo_any, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]"], align 8
@"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 975938808, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 63 }, ptr @"*_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI$imethods", i64 2, i64 2 } }, align 8
@28 = private unnamed_addr constant [63 x i8] c"interface { Await() int; Poll(*async.Context) async.Poll[int] }", align 1
@"*_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1309347707, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 63 }, ptr null }, ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI" }, align 8
@"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI$imethods" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 663533385, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 26 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*ConditionalDefer$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*ConditionalDefer$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*ConditionalDefer$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*ConditionalDefer$State).Poll" }] }, align 8
@29 = private unnamed_addr constant [26 x i8] c"foo.ConditionalDefer$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 112, i64 88, i32 -92085647, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 26 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$lNBr80m3sNmgNr-OYQuWtUJwLBzaPqXVyX-5y2_DnC0$fields", i64 10, i64 10 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@30 = private unnamed_addr constant [5 x i8] c"state", align 1
@_llgo_int8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 1444672578, i8 12, i8 1, i8 1, i8 35, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, ptr @"*_llgo_int8" }, align 8
@31 = private unnamed_addr constant [4 x i8] c"int8", align 1
@"*_llgo_int8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1399554408, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, ptr null }, ptr @_llgo_int8 }, align 8
@32 = private unnamed_addr constant [6 x i8] c"param0", align 1
@33 = private unnamed_addr constant [4 x i8] c"var0", align 1
@"_llgo_github.com/goplus/llgo/async.Future[int]" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1503177044, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 17 }, ptr @"*_llgo_github.com/goplus/llgo/async.Future[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI$imethods", i64 2, i64 2 } }, align 8
@34 = private unnamed_addr constant [17 x i8] c"async.Future[int]", align 1
@"*_llgo_github.com/goplus/llgo/async.Future[int]" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 934108082, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 17 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]" }, align 8
@35 = private unnamed_addr constant [4 x i8] c"var1", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 948368506, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 12 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 5 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*Resource).Close", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*Resource).Close" }] }, align 8
@36 = private unnamed_addr constant [12 x i8] c"foo.Resource", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1664976224, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 12 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$ez3MeZvA9D8F8Wht1tbuFMqI0WKAf0EmqyhZ0-FECas$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@37 = private unnamed_addr constant [2 x i8] c"id", align 1
@"github.com/goplus/llgo/cl/_testpull/defer.struct$ez3MeZvA9D8F8Wht1tbuFMqI0WKAf0EmqyhZ0-FECas$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 2 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@38 = private unnamed_addr constant [5 x i8] c"Close", align 1
@39 = private unnamed_addr constant [4 x i8] c"var2", align 1
@40 = private unnamed_addr constant [4 x i8] c"sub0", align 1
@"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1886666427, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 70 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Await", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll" }] }, align 8
@41 = private unnamed_addr constant [70 x i8] c"async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", align 1
@"_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 -2008577653, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 70 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$yHxrLaDf8dGjl-j7DMKFOzKYTCmfrbXkRsiAu0cRnm0$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@42 = private unnamed_addr constant [2 x i8] c"fn", align 1
@"_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1200775160, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 97 }, ptr @"*_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8$fields", i64 2, i64 2 } }, align 8
@43 = private unnamed_addr constant [97 x i8] c"struct { $f func(struct { $f func(*foo.Resource); $data unsafe.Pointer }); $data unsafe.Pointer }", align 1
@"*_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1292151995, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 97 }, ptr null }, ptr @"_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8" }, align 8
@44 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1152223553, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 61 }, ptr @"*_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@45 = private unnamed_addr constant [61 x i8] c"func(struct { $f func(*foo.Resource); $data unsafe.Pointer })", align 1
@"*_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2059840044, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 61 }, ptr null }, ptr @"_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk" }, align 8
@"_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -968588264, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 55 }, ptr @"*_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M$fields", i64 2, i64 2 } }, align 8
@46 = private unnamed_addr constant [55 x i8] c"struct { $f func(*foo.Resource); $data unsafe.Pointer }", align 1
@"*_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1753174139, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 55 }, ptr null }, ptr @"_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M" }, align 8
@"_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1954501058, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 19 }, ptr @"*_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@47 = private unnamed_addr constant [19 x i8] c"func(*foo.Resource)", align 1
@"*_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2096868712, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 19 }, ptr null }, ptr @"_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8" }, align 8
@"_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource"], align 8
@48 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@49 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 2 }, ptr @"_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M"], align 8
@"_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 2 }, ptr @"_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@50 = private unnamed_addr constant [7 x i8] c"started", align 1
@"github.com/goplus/llgo/cl/_testpull/defer.struct$yHxrLaDf8dGjl-j7DMKFOzKYTCmfrbXkRsiAu0cRnm0$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 2 }, ptr @"_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 7 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 5 }, ptr @_llgo_bool, i64 17, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -247520586, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 20 }, ptr @"*_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE$out", i64 1, i64 1 } }, align 8
@51 = private unnamed_addr constant [20 x i8] c"func() *foo.Resource", align 1
@"*_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -873504099, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 20 }, ptr null }, ptr @"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE" }, align 8
@"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE$out" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource"], align 8
@"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2030322516, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 84 }, ptr @"*_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA$out", i64 1, i64 1 } }, align 8
@52 = private unnamed_addr constant [84 x i8] c"func(*async.Context) async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", align 1
@"*_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1084380263, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 84 }, ptr null }, ptr @"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA" }, align 8
@"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/async.Context"], align 8
@"_llgo_github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 1693813997, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 63 }, ptr @"*_llgo_github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$EkmiDKJC-fqoNXricL5fDFuVyHAn72DRRPybohR3dTM$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Error", ptr @"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource].Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).HasError", ptr @"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource].HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).IsReady", ptr @"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource].IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 5 }, ptr @"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Value", ptr @"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource].Value" }] }, align 8
@53 = private unnamed_addr constant [63 x i8] c"async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", align 1
@"*_llgo_github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -887888728, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 63 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Error", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).HasError", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).IsReady", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 5 }, ptr @"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Value", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Value" }] }, align 8
@"github.com/goplus/llgo/cl/_testpull/defer.struct$EkmiDKJC-fqoNXricL5fDFuVyHAn72DRRPybohR3dTM$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 5 }, ptr @_llgo_bool, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 3 }, ptr @_llgo_any, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]"], align 8
@54 = private unnamed_addr constant [4 x i8] c"sub1", align 1
@"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 964362133, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll" }] }, align 8
@55 = private unnamed_addr constant [22 x i8] c"async.AsyncFuture[int]", align 1
@"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 0, i32 1769159236, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1213993089, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 87 }, ptr @"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields", i64 2, i64 2 } }, align 8
@56 = private unnamed_addr constant [87 x i8] c"struct { $f func(struct { $f func(int); $data unsafe.Pointer }); $data unsafe.Pointer }", align 1
@"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1666834553, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 87 }, ptr null }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, align 8
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2009615728, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 51 }, ptr @"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@57 = private unnamed_addr constant [51 x i8] c"func(struct { $f func(int); $data unsafe.Pointer })", align 1
@"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1512208703, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 51 }, ptr null }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1556934939, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 45 }, ptr @"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields", i64 2, i64 2 } }, align 8
@58 = private unnamed_addr constant [45 x i8] c"struct { $f func(int); $data unsafe.Pointer }", align 1
@"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 364872269, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 45 }, ptr null }, ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -637187458, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 9 }, ptr @"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@59 = private unnamed_addr constant [9 x i8] c"func(int)", align 1
@"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 735356155, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 9 }, ptr null }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 2 }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM"], align 8
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 2 }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/defer.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 2 }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 7 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 5 }, ptr @_llgo_bool, i64 17, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@60 = private unnamed_addr constant [10 x i8] c"deferState", align 1
@"_llgo_github.com/goplus/llgo/async.DeferState" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 8, i32 986572485, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.DeferState" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 16 }, ptr @"*_llgo_github.com/goplus/llgo/async.DeferState" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$Td80-BLvbtmjWV_MtKrt1TE6IBW4brip3KX8E1cxLks$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@61 = private unnamed_addr constant [16 x i8] c"async.DeferState", align 1
@"*_llgo_github.com/goplus/llgo/async.DeferState" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1092035480, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 16 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.DeferState" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 7 }, ptr @"_llgo_func$TUWCG8mUhPMa3Uemciu2rP6lY7SbhS3dNyiPALfsZE4", ptr @"github.com/goplus/llgo/async.(*DeferState).DoPanic", ptr @"github.com/goplus/llgo/async.(*DeferState).DoPanic" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 9 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*DeferState).DoRecover", ptr @"github.com/goplus/llgo/async.(*DeferState).DoRecover" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 9 }, ptr @"_llgo_func$AIgmJ1gQ2N3pYn8zY3Ok3J2IF-TrGXGuEAjk99jMqyk", ptr @"github.com/goplus/llgo/async.(*DeferState).PushDefer", ptr @"github.com/goplus/llgo/async.(*DeferState).PushDefer" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 9 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/async.(*DeferState).RunDefers", ptr @"github.com/goplus/llgo/async.(*DeferState).RunDefers" }] }, align 8
@62 = private unnamed_addr constant [7 x i8] c"DoPanic", align 1
@"_llgo_func$TUWCG8mUhPMa3Uemciu2rP6lY7SbhS3dNyiPALfsZE4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1057540033, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 23 }, ptr @"*_llgo_func$TUWCG8mUhPMa3Uemciu2rP6lY7SbhS3dNyiPALfsZE4" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$TUWCG8mUhPMa3Uemciu2rP6lY7SbhS3dNyiPALfsZE4$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$TUWCG8mUhPMa3Uemciu2rP6lY7SbhS3dNyiPALfsZE4$out", i64 1, i64 1 } }, align 8
@63 = private unnamed_addr constant [23 x i8] c"func(interface {}) bool", align 1
@"*_llgo_func$TUWCG8mUhPMa3Uemciu2rP6lY7SbhS3dNyiPALfsZE4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1898502247, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 23 }, ptr null }, ptr @"_llgo_func$TUWCG8mUhPMa3Uemciu2rP6lY7SbhS3dNyiPALfsZE4" }, align 8
@"_llgo_func$TUWCG8mUhPMa3Uemciu2rP6lY7SbhS3dNyiPALfsZE4$in" = weak_odr constant [1 x ptr] [ptr @_llgo_any], align 8
@"_llgo_func$TUWCG8mUhPMa3Uemciu2rP6lY7SbhS3dNyiPALfsZE4$out" = weak_odr constant [1 x ptr] [ptr @_llgo_bool], align 8
@64 = private unnamed_addr constant [9 x i8] c"DoRecover", align 1
@65 = private unnamed_addr constant [9 x i8] c"PushDefer", align 1
@"_llgo_func$AIgmJ1gQ2N3pYn8zY3Ok3J2IF-TrGXGuEAjk99jMqyk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -329630838, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 78 }, ptr @"*_llgo_func$AIgmJ1gQ2N3pYn8zY3Ok3J2IF-TrGXGuEAjk99jMqyk" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$AIgmJ1gQ2N3pYn8zY3Ok3J2IF-TrGXGuEAjk99jMqyk$in", i64 2, i64 2 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@66 = private unnamed_addr constant [78 x i8] c"func(struct { $f func(unsafe.Pointer); $data unsafe.Pointer }, unsafe.Pointer)", align 1
@"*_llgo_func$AIgmJ1gQ2N3pYn8zY3Ok3J2IF-TrGXGuEAjk99jMqyk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2091350364, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 78 }, ptr null }, ptr @"_llgo_func$AIgmJ1gQ2N3pYn8zY3Ok3J2IF-TrGXGuEAjk99jMqyk" }, align 8
@"_llgo_closure$FNB11V1bR1J-X_G8HcXdDp-oak1nhPOBL7Pt6o5nLxs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1271797440, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 56 }, ptr @"*_llgo_closure$FNB11V1bR1J-X_G8HcXdDp-oak1nhPOBL7Pt6o5nLxs" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$FNB11V1bR1J-X_G8HcXdDp-oak1nhPOBL7Pt6o5nLxs$fields", i64 2, i64 2 } }, align 8
@67 = private unnamed_addr constant [56 x i8] c"struct { $f func(unsafe.Pointer); $data unsafe.Pointer }", align 1
@"*_llgo_closure$FNB11V1bR1J-X_G8HcXdDp-oak1nhPOBL7Pt6o5nLxs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 585623024, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 56 }, ptr null }, ptr @"_llgo_closure$FNB11V1bR1J-X_G8HcXdDp-oak1nhPOBL7Pt6o5nLxs" }, align 8
@"_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1235344768, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 20 }, ptr @"*_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@68 = private unnamed_addr constant [20 x i8] c"func(unsafe.Pointer)", align 1
@"*_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 579283862, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 20 }, ptr null }, ptr @"_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30" }, align 8
@"_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30$in" = weak_odr constant [1 x ptr] [ptr @_llgo_Pointer], align 8
@"_llgo_closure$FNB11V1bR1J-X_G8HcXdDp-oak1nhPOBL7Pt6o5nLxs$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 2 }, ptr @"_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$AIgmJ1gQ2N3pYn8zY3Ok3J2IF-TrGXGuEAjk99jMqyk$in" = weak_odr constant [2 x ptr] [ptr @"_llgo_closure$FNB11V1bR1J-X_G8HcXdDp-oak1nhPOBL7Pt6o5nLxs", ptr @_llgo_Pointer], align 8
@69 = private unnamed_addr constant [9 x i8] c"RunDefers", align 1
@70 = private unnamed_addr constant [9 x i8] c"DeferHead", align 1
@71 = private unnamed_addr constant [10 x i8] c"PanicValue", align 1
@72 = private unnamed_addr constant [11 x i8] c"IsPanicking", align 1
@73 = private unnamed_addr constant [9 x i8] c"Recovered", align 1
@"_llgo_struct$Td80-BLvbtmjWV_MtKrt1TE6IBW4brip3KX8E1cxLks$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 9 }, ptr @_llgo_Pointer, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 10 }, ptr @_llgo_any, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 11 }, ptr @_llgo_bool, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 9 }, ptr @_llgo_bool, i64 25, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@74 = private unnamed_addr constant [8 x i8] c"panicErr", align 1
@75 = private unnamed_addr constant [11 x i8] c"resultValue", align 1
@"github.com/goplus/llgo/cl/_testpull/defer.struct$lNBr80m3sNmgNr-OYQuWtUJwLBzaPqXVyX-5y2_DnC0$fields" = weak_odr constant [10 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 6 }, ptr @_llgo_bool, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 10 }, ptr @"_llgo_github.com/goplus/llgo/async.DeferState", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 8 }, ptr @_llgo_any, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 11 }, ptr @_llgo_int, i64 104, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1432003878, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 19 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*LoopDefer$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*LoopDefer$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*LoopDefer$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*LoopDefer$State).Poll" }] }, align 8
@76 = private unnamed_addr constant [19 x i8] c"foo.LoopDefer$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 160, i64 136, i32 313239395, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 19 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$LkNw-uCYEt4MzNJbABrF6Wv6_5qgJDMhBYp79BFsJvU$fields", i64 15, i64 15 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@77 = private unnamed_addr constant [4 x i8] c"var3", align 1
@78 = private unnamed_addr constant [4 x i8] c"var4", align 1
@79 = private unnamed_addr constant [4 x i8] c"var5", align 1
@80 = private unnamed_addr constant [4 x i8] c"var6", align 1
@81 = private unnamed_addr constant [4 x i8] c"var7", align 1
@"github.com/goplus/llgo/cl/_testpull/defer.struct$LkNw-uCYEt4MzNJbABrF6Wv6_5qgJDMhBYp79BFsJvU$fields" = weak_odr constant [15 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 4 }, ptr @_llgo_bool, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource", i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 4 }, ptr @_llgo_int, i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 10 }, ptr @"_llgo_github.com/goplus/llgo/async.DeferState", i64 104, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 8 }, ptr @_llgo_any, i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 11 }, ptr @_llgo_int, i64 152, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1664288224, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 23 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*MultipleDefer$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*MultipleDefer$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*MultipleDefer$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*MultipleDefer$State).Poll" }] }, align 8
@82 = private unnamed_addr constant [23 x i8] c"foo.MultipleDefer$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 144, i64 120, i32 701184026, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 23 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$Vo9tSQTITAe7qXK6KXStS77YuN23Kfe87hvObUKZ-JA$fields", i64 13, i64 13 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@83 = private unnamed_addr constant [4 x i8] c"sub2", align 1
@84 = private unnamed_addr constant [4 x i8] c"sub3", align 1
@"github.com/goplus/llgo/cl/_testpull/defer.struct$Vo9tSQTITAe7qXK6KXStS77YuN23Kfe87hvObUKZ-JA$fields" = weak_odr constant [13 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource", i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @84, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 10 }, ptr @"_llgo_github.com/goplus/llgo/async.DeferState", i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 8 }, ptr @_llgo_any, i64 120, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 11 }, ptr @_llgo_int, i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1442532042, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 21 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*SimpleDefer$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*SimpleDefer$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*SimpleDefer$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*SimpleDefer$State).Poll" }] }, align 8
@85 = private unnamed_addr constant [21 x i8] c"foo.SimpleDefer$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 112, i64 88, i32 -822773017, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 21 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$_bwC8YMqt6kwtCL12O1D8S7zOATzvTXX9fTlYgvAtuA$fields", i64 9, i64 9 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/defer.struct$_bwC8YMqt6kwtCL12O1D8S7zOATzvTXX9fTlYgvAtuA$fields" = weak_odr constant [9 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 10 }, ptr @"_llgo_github.com/goplus/llgo/async.DeferState", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 8 }, ptr @_llgo_any, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 11 }, ptr @_llgo_int, i64 104, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/defer.init$guard" = global i1 false, align 1
@86 = private unnamed_addr constant [45 x i8] c"Await() should be transformed by the compiler", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @87, i64 6 }, ptr @"*_llgo_string" }, align 8
@87 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @87, i64 6 }, ptr null }, ptr @_llgo_string }, align 8

define i64 @"github.com/goplus/llgo/cl/_testpull/defer.(*ConditionalDefer$State).Await"(ptr %0) {
_llgo_0:
  ret i64 undef
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/defer.(*ConditionalDefer$State).Poll"(ptr %0, ptr %1) {
ConditionalDefer_entry:
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  %4 = load i8, ptr %3, align 1
  switch i8 %4, label %ConditionalDefer_state_unreach [
    i8 0, label %ConditionalDefer_state_00
    i8 1, label %ConditionalDefer_state_01
    i8 2, label %ConditionalDefer_state_02
    i8 3, label %ConditionalDefer_state_03
    i8 4, label %ConditionalDefer_state_04
    i8 5, label %ConditionalDefer_state_05
    i8 6, label %ConditionalDefer_state_done
  ]

ConditionalDefer_state_00:                        ; preds = %ConditionalDefer_entry
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %6 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %5, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, ptr %2, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 1
  %8 = load i1, ptr %7, align 1
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 4
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %14 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %14, ptr %13, align 8
  br i1 %8, label %ConditionalDefer_state_00_true, label %ConditionalDefer_state_00_false

ConditionalDefer_state_01:                        ; preds = %ConditionalDefer_state_00_true, %ConditionalDefer_entry
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %16 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %15, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %16, ptr %2, align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 1
  %18 = load i1, ptr %17, align 1
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 4
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 5
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %ConditionalDefer_state_01_init, label %ConditionalDefer_state_01_poll

ConditionalDefer_state_02:                        ; preds = %ConditionalDefer_state_01_ready_cont, %ConditionalDefer_entry
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %27 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %26, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %27, ptr %2, align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 1
  %29 = load i1, ptr %28, align 1
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 3
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 4
  %33 = load i64, ptr %32, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 6
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %ConditionalDefer_state_02_init, label %ConditionalDefer_state_02_poll

ConditionalDefer_state_03:                        ; preds = %ConditionalDefer_state_02_ready_cont, %ConditionalDefer_entry
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %38 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %37, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %38, ptr %2, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 1
  %40 = load i1, ptr %39, align 1
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 3
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 4
  %44 = load i64, ptr %43, align 4
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 4
  %46 = load i64, ptr %45, align 4
  %47 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %44)
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %48, 0
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %49, ptr %47, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %50, ptr %2, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 9
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %50, ptr %51, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 7
  call void @"github.com/goplus/llgo/async.(*DeferState).RunDefers"(ptr %52)
  %53 = getelementptr inbounds %"github.com/goplus/llgo/async.DeferState", ptr %52, i32 0, i32 2
  %54 = getelementptr inbounds %"github.com/goplus/llgo/async.DeferState", ptr %52, i32 0, i32 3
  %55 = getelementptr inbounds %"github.com/goplus/llgo/async.DeferState", ptr %52, i32 0, i32 1
  %56 = load i1, ptr %53, align 1
  br i1 %56, label %_llgo_29, label %_llgo_28

ConditionalDefer_state_04:                        ; preds = %ConditionalDefer_state_00_false, %ConditionalDefer_entry
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %58 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %57, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %58, ptr %2, align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 1
  %60 = load i1, ptr %59, align 1
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 3
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 4
  %64 = load i64, ptr %63, align 4
  %65 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 0)
  %66 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %66, 0
  %68 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %67, ptr %65, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %68, ptr %2, align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 9
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %68, ptr %69, align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 7
  call void @"github.com/goplus/llgo/async.(*DeferState).RunDefers"(ptr %70)
  %71 = getelementptr inbounds %"github.com/goplus/llgo/async.DeferState", ptr %70, i32 0, i32 2
  %72 = getelementptr inbounds %"github.com/goplus/llgo/async.DeferState", ptr %70, i32 0, i32 3
  %73 = getelementptr inbounds %"github.com/goplus/llgo/async.DeferState", ptr %70, i32 0, i32 1
  %74 = load i1, ptr %71, align 1
  br i1 %74, label %_llgo_32, label %_llgo_31

ConditionalDefer_state_05:                        ; preds = %ConditionalDefer_entry
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %76 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %75, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %76, ptr %2, align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 1
  %78 = load i1, ptr %77, align 1
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 3
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 4
  %82 = load i64, ptr %81, align 4
  %83 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 8
  %85 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %84, align 8
  store { ptr, ptr } zeroinitializer, ptr %84, align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %87 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %87, ptr %86, align 8
  %88 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %88, align 1
  %89 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 9
  %90 = load i64, ptr %89, align 4
  %91 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %90, 1
  %92 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %91, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %92

ConditionalDefer_state_done:                      ; preds = %ConditionalDefer_entry
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 8
  %94 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %93, align 8
  %95 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %94, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %95

ConditionalDefer_state_unreach:                   ; preds = %ConditionalDefer_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_9:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

ConditionalDefer_state_00_true:                   ; preds = %ConditionalDefer_state_00
  %96 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  store ptr %2, ptr %96, align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %98 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %98, ptr %97, align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %99, align 1
  br label %ConditionalDefer_state_01

ConditionalDefer_state_00_false:                  ; preds = %ConditionalDefer_state_00
  %100 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  store ptr %2, ptr %100, align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %102 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %102, ptr %101, align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %103, align 1
  br label %ConditionalDefer_state_04

ConditionalDefer_state_01_init:                   ; preds = %ConditionalDefer_state_01
  %104 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 1
  %105 = load i1, ptr %104, align 1
  %106 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %107 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %106, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %107, ptr %2, align 8
  %108 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 3
  %109 = load ptr, ptr %108, align 8
  %110 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 4
  %111 = load i64, ptr %110, align 4
  %112 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource"(i64 1)
  store ptr %112, ptr %23, align 8
  br label %ConditionalDefer_state_01_poll

ConditionalDefer_state_01_poll:                   ; preds = %ConditionalDefer_state_01_init, %ConditionalDefer_state_01
  %113 = load ptr, ptr %23, align 8
  %114 = call %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll"(ptr %113, ptr %1)
  %115 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %114, 0
  br i1 %115, label %ConditionalDefer_state_01_ready, label %ConditionalDefer_state_01_pending

ConditionalDefer_state_01_ready:                  ; preds = %ConditionalDefer_state_01_poll
  %116 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %114, 2
  %117 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %116, { ptr, ptr } zeroinitializer)
  %118 = xor i1 %117, true
  br i1 %118, label %ConditionalDefer_state_01_err, label %ConditionalDefer_state_01_ready_cont

ConditionalDefer_state_01_pending:                ; preds = %ConditionalDefer_state_01_poll
  %119 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %120 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %120, ptr %119, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

ConditionalDefer_state_01_err:                    ; preds = %ConditionalDefer_state_01_ready
  %121 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 7
  %122 = call i1 @"github.com/goplus/llgo/async.(*DeferState).DoPanic"(ptr %121, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %116)
  br i1 %122, label %ConditionalDefer_state_01_err_recovered, label %ConditionalDefer_state_01_err_propagate

ConditionalDefer_state_01_ready_cont:             ; preds = %ConditionalDefer_state_01_ready
  %123 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %114, 1
  %124 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 3
  store ptr %123, ptr %124, align 8
  %125 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 4
  store i64 %111, ptr %125, align 4
  store ptr null, ptr %23, align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %127 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %127, ptr %126, align 8
  %128 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %128, align 1
  br label %ConditionalDefer_state_02

ConditionalDefer_state_01_err_recovered:          ; preds = %ConditionalDefer_state_01_err
  %129 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %129, align 1
  %130 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 8
  %131 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %130, align 8
  store { ptr, ptr } zeroinitializer, ptr %130, align 8
  %132 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 9
  %133 = load i64, ptr %132, align 4
  %134 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %135 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %134)
  %136 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %134, 0
  %137 = getelementptr ptr, ptr %136, i64 4
  %138 = load ptr, ptr %137, align 8
  %139 = insertvalue { ptr, ptr } undef, ptr %138, 0
  %140 = insertvalue { ptr, ptr } %139, ptr %135, 1
  %141 = extractvalue { ptr, ptr } %140, 1
  %142 = extractvalue { ptr, ptr } %140, 0
  %143 = call %"github.com/goplus/llgo/async.Poll[int]" %142(ptr %141, ptr null)
  %144 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %143, 1
  %145 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 9
  store i64 %144, ptr %145, align 4
  %146 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %144, 1
  %147 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %146, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %147

ConditionalDefer_state_01_err_propagate:          ; preds = %ConditionalDefer_state_01_err
  %148 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %148, align 1
  %149 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %116, ptr %149, align 8
  %150 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %116, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %150

ConditionalDefer_state_02_init:                   ; preds = %ConditionalDefer_state_02
  %151 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 1
  %152 = load i1, ptr %151, align 1
  %153 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %154 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %153, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %154, ptr %2, align 8
  %155 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 3
  %156 = load ptr, ptr %155, align 8
  %157 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 4
  %158 = load i64, ptr %157, align 4
  %159 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 7
  %160 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %161 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %160, i32 0, i32 0
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testpull/defer.(*Resource).Close", ptr null }, ptr %161, align 8
  %162 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %160, i32 0, i32 1
  store ptr %156, ptr %162, align 8
  call void @"github.com/goplus/llgo/async.(*DeferState).PushDefer"(ptr %159, { ptr, ptr } { ptr @"__llgo_stub.__llgo_defer_wrap$github_com_goplus_llgo_cl__testpull_defer_ConditionalDefer$1", ptr null }, ptr %160)
  %163 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource"(ptr %156)
  store ptr %163, ptr %34, align 8
  br label %ConditionalDefer_state_02_poll

ConditionalDefer_state_02_poll:                   ; preds = %ConditionalDefer_state_02_init, %ConditionalDefer_state_02
  %164 = load ptr, ptr %34, align 8
  %165 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %164, ptr %1)
  %166 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %165, 0
  br i1 %166, label %ConditionalDefer_state_02_ready, label %ConditionalDefer_state_02_pending

ConditionalDefer_state_02_ready:                  ; preds = %ConditionalDefer_state_02_poll
  %167 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %165, 2
  %168 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %167, { ptr, ptr } zeroinitializer)
  %169 = xor i1 %168, true
  br i1 %169, label %ConditionalDefer_state_02_err, label %ConditionalDefer_state_02_ready_cont

ConditionalDefer_state_02_pending:                ; preds = %ConditionalDefer_state_02_poll
  %170 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %171 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %171, ptr %170, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

ConditionalDefer_state_02_err:                    ; preds = %ConditionalDefer_state_02_ready
  %172 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 7
  %173 = call i1 @"github.com/goplus/llgo/async.(*DeferState).DoPanic"(ptr %172, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %167)
  br i1 %173, label %ConditionalDefer_state_02_err_recovered, label %ConditionalDefer_state_02_err_propagate

ConditionalDefer_state_02_ready_cont:             ; preds = %ConditionalDefer_state_02_ready
  %174 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %165, 1
  %175 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 4
  store i64 %174, ptr %175, align 4
  %176 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 3
  store ptr %156, ptr %176, align 8
  store ptr null, ptr %34, align 8
  %177 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %178 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %178, ptr %177, align 8
  %179 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %179, align 1
  br label %ConditionalDefer_state_03

ConditionalDefer_state_02_err_recovered:          ; preds = %ConditionalDefer_state_02_err
  %180 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %180, align 1
  %181 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 8
  %182 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %181, align 8
  store { ptr, ptr } zeroinitializer, ptr %181, align 8
  %183 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 9
  %184 = load i64, ptr %183, align 4
  %185 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %186 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %185)
  %187 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %185, 0
  %188 = getelementptr ptr, ptr %187, i64 4
  %189 = load ptr, ptr %188, align 8
  %190 = insertvalue { ptr, ptr } undef, ptr %189, 0
  %191 = insertvalue { ptr, ptr } %190, ptr %186, 1
  %192 = extractvalue { ptr, ptr } %191, 1
  %193 = extractvalue { ptr, ptr } %191, 0
  %194 = call %"github.com/goplus/llgo/async.Poll[int]" %193(ptr %192, ptr null)
  %195 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %194, 1
  %196 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 9
  store i64 %195, ptr %196, align 4
  %197 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %195, 1
  %198 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %197, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %198

ConditionalDefer_state_02_err_propagate:          ; preds = %ConditionalDefer_state_02_err
  %199 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %199, align 1
  %200 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %167, ptr %200, align 8
  %201 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %167, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %201

_llgo_28:                                         ; preds = %_llgo_29, %ConditionalDefer_state_03
  %202 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %203 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 9
  store i64 %46, ptr %203, align 4
  %204 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 8
  %205 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %204, align 8
  store { ptr, ptr } zeroinitializer, ptr %204, align 8
  %206 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %207 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %207, ptr %206, align 8
  %208 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %208, align 1
  %209 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 9
  %210 = load i64, ptr %209, align 4
  %211 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %210, 1
  %212 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %211, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %212

_llgo_29:                                         ; preds = %ConditionalDefer_state_03
  %213 = load i1, ptr %54, align 1
  %214 = icmp eq i1 %213, false
  br i1 %214, label %_llgo_30, label %_llgo_28

_llgo_30:                                         ; preds = %_llgo_29
  %215 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %55, align 8
  %216 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %216, align 1
  %217 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %215, ptr %217, align 8
  %218 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %215, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %218

_llgo_31:                                         ; preds = %_llgo_32, %ConditionalDefer_state_04
  %219 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %220 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 9
  store i64 0, ptr %220, align 4
  %221 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 8
  %222 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %221, align 8
  store { ptr, ptr } zeroinitializer, ptr %221, align 8
  %223 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %224 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %224, ptr %223, align 8
  %225 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %225, align 1
  %226 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 9
  %227 = load i64, ptr %226, align 4
  %228 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %227, 1
  %229 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %228, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %229

_llgo_32:                                         ; preds = %ConditionalDefer_state_04
  %230 = load i1, ptr %72, align 1
  %231 = icmp eq i1 %230, false
  br i1 %231, label %_llgo_33, label %_llgo_31

_llgo_33:                                         ; preds = %_llgo_32
  %232 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %73, align 8
  %233 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %233, align 1
  %234 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %232, ptr %234, align 8
  %235 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %232, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %235
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

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

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare i1 @"github.com/goplus/llgo/async.(*DeferState).DoPanic"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

define void @"github.com/goplus/llgo/cl/_testpull/defer.(*Resource).Close"(ptr %0) {
_llgo_0:
  ret void
}

define void @"__llgo_defer_wrap$github_com_goplus_llgo_cl__testpull_defer_ConditionalDefer$1"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %0, i32 0, i32 0
  %2 = load { ptr, ptr }, ptr %1, align 8
  %3 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = extractvalue { ptr, ptr } %2, 1
  %6 = extractvalue { ptr, ptr } %2, 0
  call void %6(ptr %5, ptr %4)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testpull/defer.(*Resource).Close"(ptr %0, ptr %1) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/cl/_testpull/defer.(*Resource).Close"(ptr %1)
  ret void
}

declare void @"github.com/goplus/llgo/async.(*DeferState).PushDefer"(ptr, { ptr, ptr }, ptr)

define linkonce void @"__llgo_stub.__llgo_defer_wrap$github_com_goplus_llgo_cl__testpull_defer_ConditionalDefer$1"(ptr %0, ptr %1) {
_llgo_0:
  tail call void @"__llgo_defer_wrap$github_com_goplus_llgo_cl__testpull_defer_ConditionalDefer$1"(ptr %1)
  ret void
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

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  ret i1 %3
}

declare void @"github.com/goplus/llgo/async.(*Context).SetWaker"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface")

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

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare void @"github.com/goplus/llgo/async.(*DeferState).RunDefers"(ptr)

define ptr @"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$Concrete"(i1 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 112)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %1, i32 0, i32 1
  store i1 %0, ptr %3, align 1
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %1, i32 0, i32 2
  store { ptr, ptr } zeroinitializer, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %1, i32 0, i32 4
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %1, i32 0, i32 5
  store ptr null, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %1, i32 0, i32 6
  store ptr null, ptr %8, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer"(i1 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$Concrete"(i1 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define linkonce ptr @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Await"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 45 }, ptr %1, align 8
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
  %11 = icmp ne ptr %10, null
  br i1 %11, label %_llgo_3, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_3
  %12 = extractvalue { ptr, ptr } %2, 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/async.Context", ptr %13, i32 0, i32 0
  %15 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %14, align 8
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %15)
  %17 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %15, 0
  %18 = getelementptr ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  %20 = insertvalue { ptr, ptr } undef, ptr %19, 0
  %21 = insertvalue { ptr, ptr } %20, ptr %16, 1
  %22 = extractvalue { ptr, ptr } %21, 1
  %23 = extractvalue { ptr, ptr } %21, 0
  call void %23(ptr %22)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_3, %_llgo_0
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %24 = extractvalue { ptr, ptr } %2, 1
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/async.Context", ptr %25, i32 0, i32 1
  %27 = load i1, ptr %26, align 1
  br i1 %27, label %_llgo_1, label %_llgo_2
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
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 45 }, ptr %1, align 8
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
  %11 = icmp ne ptr %10, null
  br i1 %11, label %_llgo_3, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_3
  %12 = extractvalue { ptr, ptr } %2, 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/async.Context", ptr %13, i32 0, i32 0
  %15 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %14, align 8
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %15)
  %17 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %15, 0
  %18 = getelementptr ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  %20 = insertvalue { ptr, ptr } undef, ptr %19, 0
  %21 = insertvalue { ptr, ptr } %20, ptr %16, 1
  %22 = extractvalue { ptr, ptr } %21, 1
  %23 = extractvalue { ptr, ptr } %21, 0
  call void %23(ptr %22)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_3, %_llgo_0
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %24 = extractvalue { ptr, ptr } %2, 1
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/async.Context", ptr %25, i32 0, i32 1
  %27 = load i1, ptr %26, align 1
  br i1 %27, label %_llgo_1, label %_llgo_2
}

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/async.(*DeferState).DoRecover"(ptr)

define i64 @"github.com/goplus/llgo/cl/_testpull/defer.(*LoopDefer$State).Await"(ptr %0) {
_llgo_0:
  ret i64 undef
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/defer.(*LoopDefer$State).Poll"(ptr %0, ptr %1) {
LoopDefer_entry:
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  %4 = load i8, ptr %3, align 1
  switch i8 %4, label %LoopDefer_state_unreach [
    i8 0, label %LoopDefer_state_00
    i8 1, label %LoopDefer_state_01
    i8 2, label %LoopDefer_state_02
    i8 3, label %LoopDefer_state_03
    i8 4, label %LoopDefer_state_04
    i8 5, label %LoopDefer_state_05
    i8 6, label %LoopDefer_state_06
    i8 7, label %LoopDefer_state_done
  ]

LoopDefer_state_00:                               ; preds = %LoopDefer_entry
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %6 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %5, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, ptr %2, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 1
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 5
  %14 = load i1, ptr %13, align 1
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 7
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 8
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 9
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %24 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %24, ptr %23, align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  store i64 0, ptr %25, align 4
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  store i64 0, ptr %26, align 4
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  store ptr %2, ptr %27, align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %29 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %29, ptr %28, align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %30, align 1
  br label %LoopDefer_state_01

LoopDefer_state_01:                               ; preds = %LoopDefer_state_04, %LoopDefer_state_00, %LoopDefer_entry
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %32 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %31, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %32, ptr %2, align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 1
  %34 = load i64, ptr %33, align 4
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %36 = load i64, ptr %35, align 4
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  %38 = load i64, ptr %37, align 4
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 6
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 7
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 8
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 9
  %46 = load i64, ptr %45, align 4
  %47 = icmp slt i64 %38, %34
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 5
  store i1 %47, ptr %48, align 1
  %49 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %50 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %50, ptr %49, align 8
  br i1 %47, label %LoopDefer_state_01_true, label %LoopDefer_state_01_false

LoopDefer_state_02:                               ; preds = %LoopDefer_state_01_true, %LoopDefer_entry
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %52 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %51, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %52, ptr %2, align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 1
  %54 = load i64, ptr %53, align 4
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %56 = load i64, ptr %55, align 4
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  %58 = load i64, ptr %57, align 4
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 5
  %60 = load i1, ptr %59, align 1
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 7
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 9
  %64 = load i64, ptr %63, align 4
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 10
  %66 = load ptr, ptr %65, align 8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %LoopDefer_state_02_init, label %LoopDefer_state_02_poll

LoopDefer_state_03:                               ; preds = %LoopDefer_state_02_ready_cont, %LoopDefer_entry
  %68 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %69 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %68, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %69, ptr %2, align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 1
  %71 = load i64, ptr %70, align 4
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %73 = load i64, ptr %72, align 4
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  %75 = load i64, ptr %74, align 4
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 5
  %77 = load i1, ptr %76, align 1
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 7
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 9
  %81 = load i64, ptr %80, align 4
  %82 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 11
  %83 = load ptr, ptr %82, align 8
  %84 = icmp eq ptr %83, null
  br i1 %84, label %LoopDefer_state_03_init, label %LoopDefer_state_03_poll

LoopDefer_state_04:                               ; preds = %LoopDefer_state_03_ready_cont, %LoopDefer_entry
  %85 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %86 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %85, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %86, ptr %2, align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 1
  %88 = load i64, ptr %87, align 4
  %89 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %90 = load i64, ptr %89, align 4
  %91 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  %92 = load i64, ptr %91, align 4
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 5
  %94 = load i1, ptr %93, align 1
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 7
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 9
  %98 = load i64, ptr %97, align 4
  %99 = add i64 %90, %98
  %100 = add i64 %92, 1
  %101 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %102 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %102, ptr %101, align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  store i64 %99, ptr %103, align 4
  %104 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  store i64 %100, ptr %104, align 4
  %105 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource"(i64 %100)
  %106 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 6
  store ptr %105, ptr %106, align 8
  %107 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 7
  store ptr %96, ptr %107, align 8
  %108 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource"(ptr %96)
  %109 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 8
  store ptr %108, ptr %109, align 8
  %110 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 9
  store i64 %98, ptr %110, align 4
  %111 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %112 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %112, ptr %111, align 8
  %113 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %113, align 1
  br label %LoopDefer_state_01

LoopDefer_state_05:                               ; preds = %LoopDefer_state_01_false, %LoopDefer_entry
  %114 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %115 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %114, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %115, ptr %2, align 8
  %116 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 1
  %117 = load i64, ptr %116, align 4
  %118 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %119 = load i64, ptr %118, align 4
  %120 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  %121 = load i64, ptr %120, align 4
  %122 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 5
  %123 = load i1, ptr %122, align 1
  %124 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 6
  %125 = load ptr, ptr %124, align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 7
  %127 = load ptr, ptr %126, align 8
  %128 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 8
  %129 = load ptr, ptr %128, align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 9
  %131 = load i64, ptr %130, align 4
  %132 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %133 = load i64, ptr %132, align 4
  %134 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %119)
  %135 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %136 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %135, 0
  %137 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %136, ptr %134, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %137, ptr %2, align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 14
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %137, ptr %138, align 8
  %139 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 12
  call void @"github.com/goplus/llgo/async.(*DeferState).RunDefers"(ptr %139)
  %140 = getelementptr inbounds %"github.com/goplus/llgo/async.DeferState", ptr %139, i32 0, i32 2
  %141 = getelementptr inbounds %"github.com/goplus/llgo/async.DeferState", ptr %139, i32 0, i32 3
  %142 = getelementptr inbounds %"github.com/goplus/llgo/async.DeferState", ptr %139, i32 0, i32 1
  %143 = load i1, ptr %140, align 1
  br i1 %143, label %_llgo_30, label %_llgo_29

LoopDefer_state_06:                               ; preds = %LoopDefer_entry
  %144 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %145 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %144, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %145, ptr %2, align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 1
  %147 = load i64, ptr %146, align 4
  %148 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %149 = load i64, ptr %148, align 4
  %150 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  %151 = load i64, ptr %150, align 4
  %152 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 5
  %153 = load i1, ptr %152, align 1
  %154 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 6
  %155 = load ptr, ptr %154, align 8
  %156 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 7
  %157 = load ptr, ptr %156, align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 8
  %159 = load ptr, ptr %158, align 8
  %160 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 9
  %161 = load i64, ptr %160, align 4
  %162 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %163 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 13
  %164 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %163, align 8
  store { ptr, ptr } zeroinitializer, ptr %163, align 8
  %165 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %166 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %166, ptr %165, align 8
  %167 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %167, align 1
  %168 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 14
  %169 = load i64, ptr %168, align 4
  %170 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %169, 1
  %171 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %170, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %171

LoopDefer_state_done:                             ; preds = %LoopDefer_entry
  %172 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 13
  %173 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %172, align 8
  %174 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %173, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %174

LoopDefer_state_unreach:                          ; preds = %LoopDefer_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_10:                                         ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

LoopDefer_state_01_true:                          ; preds = %LoopDefer_state_01
  %175 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 5
  store i1 %47, ptr %175, align 1
  %176 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %177 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %177, ptr %176, align 8
  %178 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %178, align 1
  br label %LoopDefer_state_02

LoopDefer_state_01_false:                         ; preds = %LoopDefer_state_01
  %179 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 5
  store i1 %47, ptr %179, align 1
  %180 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %181 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %181, ptr %180, align 8
  %182 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %182, align 1
  br label %LoopDefer_state_05

LoopDefer_state_02_init:                          ; preds = %LoopDefer_state_02
  %183 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 1
  %184 = load i64, ptr %183, align 4
  %185 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %186 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %185, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %186, ptr %2, align 8
  %187 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %188 = load i64, ptr %187, align 4
  %189 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  %190 = load i64, ptr %189, align 4
  %191 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 5
  %192 = load i1, ptr %191, align 1
  %193 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 7
  %194 = load ptr, ptr %193, align 8
  %195 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 9
  %196 = load i64, ptr %195, align 4
  %197 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource"(i64 %190)
  %198 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 6
  store ptr %197, ptr %198, align 8
  store ptr %197, ptr %65, align 8
  br label %LoopDefer_state_02_poll

LoopDefer_state_02_poll:                          ; preds = %LoopDefer_state_02_init, %LoopDefer_state_02
  %199 = load ptr, ptr %65, align 8
  %200 = call %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll"(ptr %199, ptr %1)
  %201 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %200, 0
  br i1 %201, label %LoopDefer_state_02_ready, label %LoopDefer_state_02_pending

LoopDefer_state_02_ready:                         ; preds = %LoopDefer_state_02_poll
  %202 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %200, 2
  %203 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %202, { ptr, ptr } zeroinitializer)
  %204 = xor i1 %203, true
  br i1 %204, label %LoopDefer_state_02_err, label %LoopDefer_state_02_ready_cont

LoopDefer_state_02_pending:                       ; preds = %LoopDefer_state_02_poll
  %205 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %206 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %206, ptr %205, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

LoopDefer_state_02_err:                           ; preds = %LoopDefer_state_02_ready
  %207 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 12
  %208 = call i1 @"github.com/goplus/llgo/async.(*DeferState).DoPanic"(ptr %207, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %202)
  br i1 %208, label %LoopDefer_state_02_err_recovered, label %LoopDefer_state_02_err_propagate

LoopDefer_state_02_ready_cont:                    ; preds = %LoopDefer_state_02_ready
  %209 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %200, 1
  %210 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 7
  store ptr %209, ptr %210, align 8
  %211 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 6
  store ptr %197, ptr %211, align 8
  %212 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 8
  %213 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource"(ptr %194)
  store ptr %213, ptr %212, align 8
  %214 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 9
  store i64 %196, ptr %214, align 4
  store ptr null, ptr %65, align 8
  %215 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %216 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %216, ptr %215, align 8
  %217 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %217, align 1
  br label %LoopDefer_state_03

LoopDefer_state_02_err_recovered:                 ; preds = %LoopDefer_state_02_err
  %218 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %218, align 1
  %219 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 13
  %220 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %219, align 8
  store { ptr, ptr } zeroinitializer, ptr %219, align 8
  %221 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 14
  %222 = load i64, ptr %221, align 4
  %223 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %224 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %223)
  %225 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %223, 0
  %226 = getelementptr ptr, ptr %225, i64 4
  %227 = load ptr, ptr %226, align 8
  %228 = insertvalue { ptr, ptr } undef, ptr %227, 0
  %229 = insertvalue { ptr, ptr } %228, ptr %224, 1
  %230 = extractvalue { ptr, ptr } %229, 1
  %231 = extractvalue { ptr, ptr } %229, 0
  %232 = call %"github.com/goplus/llgo/async.Poll[int]" %231(ptr %230, ptr null)
  %233 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %232, 1
  %234 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 14
  store i64 %233, ptr %234, align 4
  %235 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %233, 1
  %236 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %235, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %236

LoopDefer_state_02_err_propagate:                 ; preds = %LoopDefer_state_02_err
  %237 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %237, align 1
  %238 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 13
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %202, ptr %238, align 8
  %239 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %202, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %239

LoopDefer_state_03_init:                          ; preds = %LoopDefer_state_03
  %240 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 1
  %241 = load i64, ptr %240, align 4
  %242 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %243 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %242, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %243, ptr %2, align 8
  %244 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %245 = load i64, ptr %244, align 4
  %246 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  %247 = load i64, ptr %246, align 4
  %248 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 5
  %249 = load i1, ptr %248, align 1
  %250 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 7
  %251 = load ptr, ptr %250, align 8
  %252 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 9
  %253 = load i64, ptr %252, align 4
  %254 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 12
  %255 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %256 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %255, i32 0, i32 0
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testpull/defer.(*Resource).Close", ptr null }, ptr %256, align 8
  %257 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %255, i32 0, i32 1
  store ptr %251, ptr %257, align 8
  call void @"github.com/goplus/llgo/async.(*DeferState).PushDefer"(ptr %254, { ptr, ptr } { ptr @"__llgo_stub.__llgo_defer_wrap$github_com_goplus_llgo_cl__testpull_defer_LoopDefer$1", ptr null }, ptr %255)
  %258 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource"(ptr %251)
  %259 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 8
  store ptr %258, ptr %259, align 8
  store ptr %258, ptr %82, align 8
  br label %LoopDefer_state_03_poll

LoopDefer_state_03_poll:                          ; preds = %LoopDefer_state_03_init, %LoopDefer_state_03
  %260 = load ptr, ptr %82, align 8
  %261 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %260, ptr %1)
  %262 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %261, 0
  br i1 %262, label %LoopDefer_state_03_ready, label %LoopDefer_state_03_pending

LoopDefer_state_03_ready:                         ; preds = %LoopDefer_state_03_poll
  %263 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %261, 2
  %264 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %263, { ptr, ptr } zeroinitializer)
  %265 = xor i1 %264, true
  br i1 %265, label %LoopDefer_state_03_err, label %LoopDefer_state_03_ready_cont

LoopDefer_state_03_pending:                       ; preds = %LoopDefer_state_03_poll
  %266 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %267 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %267, ptr %266, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

LoopDefer_state_03_err:                           ; preds = %LoopDefer_state_03_ready
  %268 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 12
  %269 = call i1 @"github.com/goplus/llgo/async.(*DeferState).DoPanic"(ptr %268, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %263)
  br i1 %269, label %LoopDefer_state_03_err_recovered, label %LoopDefer_state_03_err_propagate

LoopDefer_state_03_ready_cont:                    ; preds = %LoopDefer_state_03_ready
  %270 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %261, 1
  %271 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 9
  store i64 %270, ptr %271, align 4
  %272 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 6
  %273 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource"(i64 %247)
  store ptr %273, ptr %272, align 8
  %274 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 7
  store ptr %251, ptr %274, align 8
  %275 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 8
  store ptr %258, ptr %275, align 8
  store ptr null, ptr %82, align 8
  %276 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %277 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %277, ptr %276, align 8
  %278 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %278, align 1
  br label %LoopDefer_state_04

LoopDefer_state_03_err_recovered:                 ; preds = %LoopDefer_state_03_err
  %279 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %279, align 1
  %280 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 13
  %281 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %280, align 8
  store { ptr, ptr } zeroinitializer, ptr %280, align 8
  %282 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 14
  %283 = load i64, ptr %282, align 4
  %284 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %285 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %284)
  %286 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %284, 0
  %287 = getelementptr ptr, ptr %286, i64 4
  %288 = load ptr, ptr %287, align 8
  %289 = insertvalue { ptr, ptr } undef, ptr %288, 0
  %290 = insertvalue { ptr, ptr } %289, ptr %285, 1
  %291 = extractvalue { ptr, ptr } %290, 1
  %292 = extractvalue { ptr, ptr } %290, 0
  %293 = call %"github.com/goplus/llgo/async.Poll[int]" %292(ptr %291, ptr null)
  %294 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %293, 1
  %295 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 14
  store i64 %294, ptr %295, align 4
  %296 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %294, 1
  %297 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %296, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %297

LoopDefer_state_03_err_propagate:                 ; preds = %LoopDefer_state_03_err
  %298 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %298, align 1
  %299 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 13
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %263, ptr %299, align 8
  %300 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %263, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %300

_llgo_29:                                         ; preds = %_llgo_30, %LoopDefer_state_05
  %301 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %302 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 14
  store i64 %133, ptr %302, align 4
  %303 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 13
  %304 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %303, align 8
  store { ptr, ptr } zeroinitializer, ptr %303, align 8
  %305 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %306 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %306, ptr %305, align 8
  %307 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %307, align 1
  %308 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 14
  %309 = load i64, ptr %308, align 4
  %310 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %309, 1
  %311 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %310, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %311

_llgo_30:                                         ; preds = %LoopDefer_state_05
  %312 = load i1, ptr %141, align 1
  %313 = icmp eq i1 %312, false
  br i1 %313, label %_llgo_31, label %_llgo_29

_llgo_31:                                         ; preds = %_llgo_30
  %314 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %142, align 8
  %315 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %315, align 1
  %316 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 13
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %314, ptr %316, align 8
  %317 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %314, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %317
}

define void @"__llgo_defer_wrap$github_com_goplus_llgo_cl__testpull_defer_LoopDefer$1"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %0, i32 0, i32 0
  %2 = load { ptr, ptr }, ptr %1, align 8
  %3 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = extractvalue { ptr, ptr } %2, 1
  %6 = extractvalue { ptr, ptr } %2, 0
  call void %6(ptr %5, ptr %4)
  ret void
}

define linkonce void @"__llgo_stub.__llgo_defer_wrap$github_com_goplus_llgo_cl__testpull_defer_LoopDefer$1"(ptr %0, ptr %1) {
_llgo_0:
  tail call void @"__llgo_defer_wrap$github_com_goplus_llgo_cl__testpull_defer_LoopDefer$1"(ptr %1)
  ret void
}

define ptr @"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 160)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %1, i32 0, i32 2
  store { ptr, ptr } zeroinitializer, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %1, i32 0, i32 3
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %1, i32 0, i32 4
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %1, i32 0, i32 5
  store i1 false, ptr %7, align 1
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %1, i32 0, i32 6
  store ptr null, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %1, i32 0, i32 7
  store ptr null, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %1, i32 0, i32 8
  store ptr null, ptr %10, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %1, i32 0, i32 9
  store i64 0, ptr %11, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %1, i32 0, i32 10
  store ptr null, ptr %12, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %1, i32 0, i32 11
  store ptr null, ptr %13, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define i64 @"github.com/goplus/llgo/cl/_testpull/defer.(*MultipleDefer$State).Await"(ptr %0) {
_llgo_0:
  ret i64 undef
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/defer.(*MultipleDefer$State).Poll"(ptr %0, ptr %1) {
MultipleDefer_entry:
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  %4 = load i8, ptr %3, align 1
  switch i8 %4, label %MultipleDefer_state_unreach [
    i8 0, label %MultipleDefer_state_00
    i8 1, label %MultipleDefer_state_01
    i8 2, label %MultipleDefer_state_02
    i8 3, label %MultipleDefer_state_03
    i8 4, label %MultipleDefer_state_04
    i8 5, label %MultipleDefer_state_05
    i8 6, label %MultipleDefer_state_done
  ]

MultipleDefer_state_00:                           ; preds = %MultipleDefer_entry
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %6 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %5, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, ptr %2, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  %14 = load i64, ptr %13, align 4
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %MultipleDefer_state_00_init, label %MultipleDefer_state_00_poll

MultipleDefer_state_01:                           ; preds = %MultipleDefer_state_00_ready_cont, %MultipleDefer_entry
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %19 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %18, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %19, ptr %2, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %25 = load i64, ptr %24, align 4
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 7
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %MultipleDefer_state_01_init, label %MultipleDefer_state_01_poll

MultipleDefer_state_02:                           ; preds = %MultipleDefer_state_01_ready_cont, %MultipleDefer_entry
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %32 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %31, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %32, ptr %2, align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %38 = load i64, ptr %37, align 4
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  %40 = load i64, ptr %39, align 4
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 8
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %MultipleDefer_state_02_init, label %MultipleDefer_state_02_poll

MultipleDefer_state_03:                           ; preds = %MultipleDefer_state_02_ready_cont, %MultipleDefer_entry
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %45 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %44, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %45, ptr %2, align 8
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %51 = load i64, ptr %50, align 4
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  %53 = load i64, ptr %52, align 4
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 9
  %55 = load ptr, ptr %54, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %MultipleDefer_state_03_init, label %MultipleDefer_state_03_poll

MultipleDefer_state_04:                           ; preds = %MultipleDefer_state_03_ready_cont, %MultipleDefer_entry
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %58 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %57, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %58, ptr %2, align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %64 = load i64, ptr %63, align 4
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  %66 = load i64, ptr %65, align 4
  %67 = add i64 %64, %66
  %68 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %67)
  %69 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %70 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %69, 0
  %71 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %70, ptr %68, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %71, ptr %2, align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 12
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %71, ptr %72, align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 10
  call void @"github.com/goplus/llgo/async.(*DeferState).RunDefers"(ptr %73)
  %74 = getelementptr inbounds %"github.com/goplus/llgo/async.DeferState", ptr %73, i32 0, i32 2
  %75 = getelementptr inbounds %"github.com/goplus/llgo/async.DeferState", ptr %73, i32 0, i32 3
  %76 = getelementptr inbounds %"github.com/goplus/llgo/async.DeferState", ptr %73, i32 0, i32 1
  %77 = load i1, ptr %74, align 1
  br i1 %77, label %_llgo_43, label %_llgo_42

MultipleDefer_state_05:                           ; preds = %MultipleDefer_entry
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %79 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %78, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %79, ptr %2, align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %85 = load i64, ptr %84, align 4
  %86 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  %87 = load i64, ptr %86, align 4
  %88 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %89 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 11
  %90 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %89, align 8
  store { ptr, ptr } zeroinitializer, ptr %89, align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %92 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %92, ptr %91, align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %93, align 1
  %94 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 12
  %95 = load i64, ptr %94, align 4
  %96 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %95, 1
  %97 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %96, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %97

MultipleDefer_state_done:                         ; preds = %MultipleDefer_entry
  %98 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 11
  %99 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %98, align 8
  %100 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %99, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %100

MultipleDefer_state_unreach:                      ; preds = %MultipleDefer_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_9:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

MultipleDefer_state_00_init:                      ; preds = %MultipleDefer_state_00
  %101 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %102 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %101, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %102, ptr %2, align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %104 = load ptr, ptr %103, align 8
  %105 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %106 = load ptr, ptr %105, align 8
  %107 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %108 = load i64, ptr %107, align 4
  %109 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  %110 = load i64, ptr %109, align 4
  %111 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource"(i64 1)
  store ptr %111, ptr %15, align 8
  br label %MultipleDefer_state_00_poll

MultipleDefer_state_00_poll:                      ; preds = %MultipleDefer_state_00_init, %MultipleDefer_state_00
  %112 = load ptr, ptr %15, align 8
  %113 = call %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll"(ptr %112, ptr %1)
  %114 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %113, 0
  br i1 %114, label %MultipleDefer_state_00_ready, label %MultipleDefer_state_00_pending

MultipleDefer_state_00_ready:                     ; preds = %MultipleDefer_state_00_poll
  %115 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %113, 2
  %116 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %115, { ptr, ptr } zeroinitializer)
  %117 = xor i1 %116, true
  br i1 %117, label %MultipleDefer_state_00_err, label %MultipleDefer_state_00_ready_cont

MultipleDefer_state_00_pending:                   ; preds = %MultipleDefer_state_00_poll
  %118 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %119 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %119, ptr %118, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

MultipleDefer_state_00_err:                       ; preds = %MultipleDefer_state_00_ready
  %120 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 10
  %121 = call i1 @"github.com/goplus/llgo/async.(*DeferState).DoPanic"(ptr %120, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %115)
  br i1 %121, label %MultipleDefer_state_00_err_recovered, label %MultipleDefer_state_00_err_propagate

MultipleDefer_state_00_ready_cont:                ; preds = %MultipleDefer_state_00_ready
  %122 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %113, 1
  %123 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  store ptr %122, ptr %123, align 8
  %124 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  store ptr %106, ptr %124, align 8
  %125 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  store i64 %108, ptr %125, align 4
  %126 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  store i64 %110, ptr %126, align 4
  store ptr null, ptr %15, align 8
  %127 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %128 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %128, ptr %127, align 8
  %129 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %129, align 1
  br label %MultipleDefer_state_01

MultipleDefer_state_00_err_recovered:             ; preds = %MultipleDefer_state_00_err
  %130 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %130, align 1
  %131 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 11
  %132 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %131, align 8
  store { ptr, ptr } zeroinitializer, ptr %131, align 8
  %133 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 12
  %134 = load i64, ptr %133, align 4
  %135 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %136 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %135)
  %137 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %135, 0
  %138 = getelementptr ptr, ptr %137, i64 4
  %139 = load ptr, ptr %138, align 8
  %140 = insertvalue { ptr, ptr } undef, ptr %139, 0
  %141 = insertvalue { ptr, ptr } %140, ptr %136, 1
  %142 = extractvalue { ptr, ptr } %141, 1
  %143 = extractvalue { ptr, ptr } %141, 0
  %144 = call %"github.com/goplus/llgo/async.Poll[int]" %143(ptr %142, ptr null)
  %145 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %144, 1
  %146 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 12
  store i64 %145, ptr %146, align 4
  %147 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %145, 1
  %148 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %147, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %148

MultipleDefer_state_00_err_propagate:             ; preds = %MultipleDefer_state_00_err
  %149 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %149, align 1
  %150 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 11
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %115, ptr %150, align 8
  %151 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %115, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %151

MultipleDefer_state_01_init:                      ; preds = %MultipleDefer_state_01
  %152 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %153 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %152, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %153, ptr %2, align 8
  %154 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %155 = load ptr, ptr %154, align 8
  %156 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %157 = load ptr, ptr %156, align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %159 = load i64, ptr %158, align 4
  %160 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  %161 = load i64, ptr %160, align 4
  %162 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 10
  %163 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %164 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %163, i32 0, i32 0
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testpull/defer.(*Resource).Close", ptr null }, ptr %164, align 8
  %165 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %163, i32 0, i32 1
  store ptr %155, ptr %165, align 8
  call void @"github.com/goplus/llgo/async.(*DeferState).PushDefer"(ptr %162, { ptr, ptr } { ptr @"__llgo_stub.__llgo_defer_wrap$github_com_goplus_llgo_cl__testpull_defer_MultipleDefer$1", ptr null }, ptr %163)
  %166 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource"(i64 2)
  store ptr %166, ptr %28, align 8
  br label %MultipleDefer_state_01_poll

MultipleDefer_state_01_poll:                      ; preds = %MultipleDefer_state_01_init, %MultipleDefer_state_01
  %167 = load ptr, ptr %28, align 8
  %168 = call %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll"(ptr %167, ptr %1)
  %169 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %168, 0
  br i1 %169, label %MultipleDefer_state_01_ready, label %MultipleDefer_state_01_pending

MultipleDefer_state_01_ready:                     ; preds = %MultipleDefer_state_01_poll
  %170 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %168, 2
  %171 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %170, { ptr, ptr } zeroinitializer)
  %172 = xor i1 %171, true
  br i1 %172, label %MultipleDefer_state_01_err, label %MultipleDefer_state_01_ready_cont

MultipleDefer_state_01_pending:                   ; preds = %MultipleDefer_state_01_poll
  %173 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %174 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %174, ptr %173, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

MultipleDefer_state_01_err:                       ; preds = %MultipleDefer_state_01_ready
  %175 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 10
  %176 = call i1 @"github.com/goplus/llgo/async.(*DeferState).DoPanic"(ptr %175, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %170)
  br i1 %176, label %MultipleDefer_state_01_err_recovered, label %MultipleDefer_state_01_err_propagate

MultipleDefer_state_01_ready_cont:                ; preds = %MultipleDefer_state_01_ready
  %177 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %168, 1
  %178 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  store ptr %177, ptr %178, align 8
  %179 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  store ptr %155, ptr %179, align 8
  %180 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  store i64 %159, ptr %180, align 4
  %181 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  store i64 %161, ptr %181, align 4
  store ptr null, ptr %28, align 8
  %182 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %183 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %183, ptr %182, align 8
  %184 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %184, align 1
  br label %MultipleDefer_state_02

MultipleDefer_state_01_err_recovered:             ; preds = %MultipleDefer_state_01_err
  %185 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %185, align 1
  %186 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 11
  %187 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %186, align 8
  store { ptr, ptr } zeroinitializer, ptr %186, align 8
  %188 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 12
  %189 = load i64, ptr %188, align 4
  %190 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %191 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %190)
  %192 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %190, 0
  %193 = getelementptr ptr, ptr %192, i64 4
  %194 = load ptr, ptr %193, align 8
  %195 = insertvalue { ptr, ptr } undef, ptr %194, 0
  %196 = insertvalue { ptr, ptr } %195, ptr %191, 1
  %197 = extractvalue { ptr, ptr } %196, 1
  %198 = extractvalue { ptr, ptr } %196, 0
  %199 = call %"github.com/goplus/llgo/async.Poll[int]" %198(ptr %197, ptr null)
  %200 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %199, 1
  %201 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 12
  store i64 %200, ptr %201, align 4
  %202 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %200, 1
  %203 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %202, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %203

MultipleDefer_state_01_err_propagate:             ; preds = %MultipleDefer_state_01_err
  %204 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %204, align 1
  %205 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 11
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %170, ptr %205, align 8
  %206 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %170, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %206

MultipleDefer_state_02_init:                      ; preds = %MultipleDefer_state_02
  %207 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %208 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %207, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %208, ptr %2, align 8
  %209 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %210 = load ptr, ptr %209, align 8
  %211 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %212 = load ptr, ptr %211, align 8
  %213 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %214 = load i64, ptr %213, align 4
  %215 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  %216 = load i64, ptr %215, align 4
  %217 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 10
  %218 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %219 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %218, i32 0, i32 0
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testpull/defer.(*Resource).Close", ptr null }, ptr %219, align 8
  %220 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %218, i32 0, i32 1
  store ptr %212, ptr %220, align 8
  call void @"github.com/goplus/llgo/async.(*DeferState).PushDefer"(ptr %217, { ptr, ptr } { ptr @"__llgo_stub.__llgo_defer_wrap$github_com_goplus_llgo_cl__testpull_defer_MultipleDefer$1", ptr null }, ptr %218)
  %221 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource"(ptr %210)
  store ptr %221, ptr %41, align 8
  br label %MultipleDefer_state_02_poll

MultipleDefer_state_02_poll:                      ; preds = %MultipleDefer_state_02_init, %MultipleDefer_state_02
  %222 = load ptr, ptr %41, align 8
  %223 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %222, ptr %1)
  %224 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %223, 0
  br i1 %224, label %MultipleDefer_state_02_ready, label %MultipleDefer_state_02_pending

MultipleDefer_state_02_ready:                     ; preds = %MultipleDefer_state_02_poll
  %225 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %223, 2
  %226 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %225, { ptr, ptr } zeroinitializer)
  %227 = xor i1 %226, true
  br i1 %227, label %MultipleDefer_state_02_err, label %MultipleDefer_state_02_ready_cont

MultipleDefer_state_02_pending:                   ; preds = %MultipleDefer_state_02_poll
  %228 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %229 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %229, ptr %228, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

MultipleDefer_state_02_err:                       ; preds = %MultipleDefer_state_02_ready
  %230 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 10
  %231 = call i1 @"github.com/goplus/llgo/async.(*DeferState).DoPanic"(ptr %230, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %225)
  br i1 %231, label %MultipleDefer_state_02_err_recovered, label %MultipleDefer_state_02_err_propagate

MultipleDefer_state_02_ready_cont:                ; preds = %MultipleDefer_state_02_ready
  %232 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %223, 1
  %233 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  store i64 %232, ptr %233, align 4
  %234 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  store ptr %210, ptr %234, align 8
  %235 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  store ptr %212, ptr %235, align 8
  %236 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  store i64 %216, ptr %236, align 4
  store ptr null, ptr %41, align 8
  %237 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %238 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %238, ptr %237, align 8
  %239 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %239, align 1
  br label %MultipleDefer_state_03

MultipleDefer_state_02_err_recovered:             ; preds = %MultipleDefer_state_02_err
  %240 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %240, align 1
  %241 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 11
  %242 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %241, align 8
  store { ptr, ptr } zeroinitializer, ptr %241, align 8
  %243 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 12
  %244 = load i64, ptr %243, align 4
  %245 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %246 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %245)
  %247 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %245, 0
  %248 = getelementptr ptr, ptr %247, i64 4
  %249 = load ptr, ptr %248, align 8
  %250 = insertvalue { ptr, ptr } undef, ptr %249, 0
  %251 = insertvalue { ptr, ptr } %250, ptr %246, 1
  %252 = extractvalue { ptr, ptr } %251, 1
  %253 = extractvalue { ptr, ptr } %251, 0
  %254 = call %"github.com/goplus/llgo/async.Poll[int]" %253(ptr %252, ptr null)
  %255 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %254, 1
  %256 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 12
  store i64 %255, ptr %256, align 4
  %257 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %255, 1
  %258 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %257, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %258

MultipleDefer_state_02_err_propagate:             ; preds = %MultipleDefer_state_02_err
  %259 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %259, align 1
  %260 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 11
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %225, ptr %260, align 8
  %261 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %225, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %261

MultipleDefer_state_03_init:                      ; preds = %MultipleDefer_state_03
  %262 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %263 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %262, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %263, ptr %2, align 8
  %264 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %265 = load ptr, ptr %264, align 8
  %266 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %267 = load ptr, ptr %266, align 8
  %268 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %269 = load i64, ptr %268, align 4
  %270 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  %271 = load i64, ptr %270, align 4
  %272 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource"(ptr %267)
  store ptr %272, ptr %54, align 8
  br label %MultipleDefer_state_03_poll

MultipleDefer_state_03_poll:                      ; preds = %MultipleDefer_state_03_init, %MultipleDefer_state_03
  %273 = load ptr, ptr %54, align 8
  %274 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %273, ptr %1)
  %275 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %274, 0
  br i1 %275, label %MultipleDefer_state_03_ready, label %MultipleDefer_state_03_pending

MultipleDefer_state_03_ready:                     ; preds = %MultipleDefer_state_03_poll
  %276 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %274, 2
  %277 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %276, { ptr, ptr } zeroinitializer)
  %278 = xor i1 %277, true
  br i1 %278, label %MultipleDefer_state_03_err, label %MultipleDefer_state_03_ready_cont

MultipleDefer_state_03_pending:                   ; preds = %MultipleDefer_state_03_poll
  %279 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %280 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %280, ptr %279, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

MultipleDefer_state_03_err:                       ; preds = %MultipleDefer_state_03_ready
  %281 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 10
  %282 = call i1 @"github.com/goplus/llgo/async.(*DeferState).DoPanic"(ptr %281, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %276)
  br i1 %282, label %MultipleDefer_state_03_err_recovered, label %MultipleDefer_state_03_err_propagate

MultipleDefer_state_03_ready_cont:                ; preds = %MultipleDefer_state_03_ready
  %283 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %274, 1
  %284 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  store i64 %283, ptr %284, align 4
  %285 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  store ptr %265, ptr %285, align 8
  %286 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  store ptr %267, ptr %286, align 8
  %287 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  store i64 %269, ptr %287, align 4
  store ptr null, ptr %54, align 8
  %288 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %289 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %289, ptr %288, align 8
  %290 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %290, align 1
  br label %MultipleDefer_state_04

MultipleDefer_state_03_err_recovered:             ; preds = %MultipleDefer_state_03_err
  %291 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %291, align 1
  %292 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 11
  %293 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %292, align 8
  store { ptr, ptr } zeroinitializer, ptr %292, align 8
  %294 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 12
  %295 = load i64, ptr %294, align 4
  %296 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %297 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %296)
  %298 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %296, 0
  %299 = getelementptr ptr, ptr %298, i64 4
  %300 = load ptr, ptr %299, align 8
  %301 = insertvalue { ptr, ptr } undef, ptr %300, 0
  %302 = insertvalue { ptr, ptr } %301, ptr %297, 1
  %303 = extractvalue { ptr, ptr } %302, 1
  %304 = extractvalue { ptr, ptr } %302, 0
  %305 = call %"github.com/goplus/llgo/async.Poll[int]" %304(ptr %303, ptr null)
  %306 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %305, 1
  %307 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 12
  store i64 %306, ptr %307, align 4
  %308 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %306, 1
  %309 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %308, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %309

MultipleDefer_state_03_err_propagate:             ; preds = %MultipleDefer_state_03_err
  %310 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %310, align 1
  %311 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 11
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %276, ptr %311, align 8
  %312 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %276, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %312

_llgo_42:                                         ; preds = %_llgo_43, %MultipleDefer_state_04
  %313 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %314 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 12
  store i64 %67, ptr %314, align 4
  %315 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 11
  %316 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %315, align 8
  store { ptr, ptr } zeroinitializer, ptr %315, align 8
  %317 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %318 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %318, ptr %317, align 8
  %319 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %319, align 1
  %320 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 12
  %321 = load i64, ptr %320, align 4
  %322 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %321, 1
  %323 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %322, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %323

_llgo_43:                                         ; preds = %MultipleDefer_state_04
  %324 = load i1, ptr %75, align 1
  %325 = icmp eq i1 %324, false
  br i1 %325, label %_llgo_44, label %_llgo_42

_llgo_44:                                         ; preds = %_llgo_43
  %326 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %76, align 8
  %327 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %327, align 1
  %328 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 11
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %326, ptr %328, align 8
  %329 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %326, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %329
}

define void @"__llgo_defer_wrap$github_com_goplus_llgo_cl__testpull_defer_MultipleDefer$1"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %0, i32 0, i32 0
  %2 = load { ptr, ptr }, ptr %1, align 8
  %3 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = extractvalue { ptr, ptr } %2, 1
  %6 = extractvalue { ptr, ptr } %2, 0
  call void %6(ptr %5, ptr %4)
  ret void
}

define linkonce void @"__llgo_stub.__llgo_defer_wrap$github_com_goplus_llgo_cl__testpull_defer_MultipleDefer$1"(ptr %0, ptr %1) {
_llgo_0:
  tail call void @"__llgo_defer_wrap$github_com_goplus_llgo_cl__testpull_defer_MultipleDefer$1"(ptr %1)
  ret void
}

define ptr @"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$Concrete"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 144)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 0, ptr %1, align 1
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  store { ptr, ptr } zeroinitializer, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  store ptr null, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 6
  store ptr null, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 7
  store ptr null, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 8
  store ptr null, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 9
  store ptr null, ptr %10, align 8
  ret ptr %0
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$Concrete"()
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State")
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %1, 0
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, ptr %0, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3
}

define i64 @"github.com/goplus/llgo/cl/_testpull/defer.(*SimpleDefer$State).Await"(ptr %0) {
_llgo_0:
  ret i64 undef
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/defer.(*SimpleDefer$State).Poll"(ptr %0, ptr %1) {
SimpleDefer_entry:
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  %4 = load i8, ptr %3, align 1
  switch i8 %4, label %SimpleDefer_state_unreach [
    i8 0, label %SimpleDefer_state_00
    i8 1, label %SimpleDefer_state_01
    i8 2, label %SimpleDefer_state_02
    i8 3, label %SimpleDefer_state_03
    i8 4, label %SimpleDefer_state_done
  ]

SimpleDefer_state_00:                             ; preds = %SimpleDefer_entry
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %6 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %5, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, ptr %2, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 3
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %SimpleDefer_state_00_init, label %SimpleDefer_state_00_poll

SimpleDefer_state_01:                             ; preds = %SimpleDefer_state_00_ready_cont, %SimpleDefer_entry
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %15 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %14, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %15, ptr %2, align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 3
  %19 = load i64, ptr %18, align 4
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 5
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %SimpleDefer_state_01_init, label %SimpleDefer_state_01_poll

SimpleDefer_state_02:                             ; preds = %SimpleDefer_state_01_ready_cont, %SimpleDefer_entry
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %24 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %23, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %24, ptr %2, align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 3
  %28 = load i64, ptr %27, align 4
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 3
  %30 = load i64, ptr %29, align 4
  %31 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %28)
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %32, 0
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %33, ptr %31, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %34, ptr %2, align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %34, ptr %35, align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 6
  call void @"github.com/goplus/llgo/async.(*DeferState).RunDefers"(ptr %36)
  %37 = getelementptr inbounds %"github.com/goplus/llgo/async.DeferState", ptr %36, i32 0, i32 2
  %38 = getelementptr inbounds %"github.com/goplus/llgo/async.DeferState", ptr %36, i32 0, i32 3
  %39 = getelementptr inbounds %"github.com/goplus/llgo/async.DeferState", ptr %36, i32 0, i32 1
  %40 = load i1, ptr %37, align 1
  br i1 %40, label %_llgo_25, label %_llgo_24

SimpleDefer_state_03:                             ; preds = %SimpleDefer_entry
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %42 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %41, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %42, ptr %2, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 3
  %46 = load i64, ptr %45, align 4
  %47 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 7
  %49 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %48, align 8
  store { ptr, ptr } zeroinitializer, ptr %48, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %51 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %51, ptr %50, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %52, align 1
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 8
  %54 = load i64, ptr %53, align 4
  %55 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %54, 1
  %56 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %55, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %56

SimpleDefer_state_done:                           ; preds = %SimpleDefer_entry
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 7
  %58 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %57, align 8
  %59 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %58, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %59

SimpleDefer_state_unreach:                        ; preds = %SimpleDefer_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_7:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

SimpleDefer_state_00_init:                        ; preds = %SimpleDefer_state_00
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %61 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %60, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %61, ptr %2, align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 2
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 3
  %65 = load i64, ptr %64, align 4
  %66 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource"(i64 1)
  store ptr %66, ptr %11, align 8
  br label %SimpleDefer_state_00_poll

SimpleDefer_state_00_poll:                        ; preds = %SimpleDefer_state_00_init, %SimpleDefer_state_00
  %67 = load ptr, ptr %11, align 8
  %68 = call %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll"(ptr %67, ptr %1)
  %69 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %68, 0
  br i1 %69, label %SimpleDefer_state_00_ready, label %SimpleDefer_state_00_pending

SimpleDefer_state_00_ready:                       ; preds = %SimpleDefer_state_00_poll
  %70 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %68, 2
  %71 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %70, { ptr, ptr } zeroinitializer)
  %72 = xor i1 %71, true
  br i1 %72, label %SimpleDefer_state_00_err, label %SimpleDefer_state_00_ready_cont

SimpleDefer_state_00_pending:                     ; preds = %SimpleDefer_state_00_poll
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %74 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %74, ptr %73, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

SimpleDefer_state_00_err:                         ; preds = %SimpleDefer_state_00_ready
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 6
  %76 = call i1 @"github.com/goplus/llgo/async.(*DeferState).DoPanic"(ptr %75, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %70)
  br i1 %76, label %SimpleDefer_state_00_err_recovered, label %SimpleDefer_state_00_err_propagate

SimpleDefer_state_00_ready_cont:                  ; preds = %SimpleDefer_state_00_ready
  %77 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %68, 1
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 2
  store ptr %77, ptr %78, align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 3
  store i64 %65, ptr %79, align 4
  store ptr null, ptr %11, align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %81 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %81, ptr %80, align 8
  %82 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %82, align 1
  br label %SimpleDefer_state_01

SimpleDefer_state_00_err_recovered:               ; preds = %SimpleDefer_state_00_err
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %83, align 1
  %84 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 7
  %85 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %84, align 8
  store { ptr, ptr } zeroinitializer, ptr %84, align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 8
  %87 = load i64, ptr %86, align 4
  %88 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %89 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %88)
  %90 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %88, 0
  %91 = getelementptr ptr, ptr %90, i64 4
  %92 = load ptr, ptr %91, align 8
  %93 = insertvalue { ptr, ptr } undef, ptr %92, 0
  %94 = insertvalue { ptr, ptr } %93, ptr %89, 1
  %95 = extractvalue { ptr, ptr } %94, 1
  %96 = extractvalue { ptr, ptr } %94, 0
  %97 = call %"github.com/goplus/llgo/async.Poll[int]" %96(ptr %95, ptr null)
  %98 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %97, 1
  %99 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 8
  store i64 %98, ptr %99, align 4
  %100 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %98, 1
  %101 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %100, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %101

SimpleDefer_state_00_err_propagate:               ; preds = %SimpleDefer_state_00_err
  %102 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %102, align 1
  %103 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 7
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %70, ptr %103, align 8
  %104 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %70, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %104

SimpleDefer_state_01_init:                        ; preds = %SimpleDefer_state_01
  %105 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %106 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %105, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %106, ptr %2, align 8
  %107 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 2
  %108 = load ptr, ptr %107, align 8
  %109 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 3
  %110 = load i64, ptr %109, align 4
  %111 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 6
  %112 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %113 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %112, i32 0, i32 0
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testpull/defer.(*Resource).Close", ptr null }, ptr %113, align 8
  %114 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %112, i32 0, i32 1
  store ptr %108, ptr %114, align 8
  call void @"github.com/goplus/llgo/async.(*DeferState).PushDefer"(ptr %111, { ptr, ptr } { ptr @"__llgo_stub.__llgo_defer_wrap$github_com_goplus_llgo_cl__testpull_defer_SimpleDefer$1", ptr null }, ptr %112)
  %115 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource"(ptr %108)
  store ptr %115, ptr %20, align 8
  br label %SimpleDefer_state_01_poll

SimpleDefer_state_01_poll:                        ; preds = %SimpleDefer_state_01_init, %SimpleDefer_state_01
  %116 = load ptr, ptr %20, align 8
  %117 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %116, ptr %1)
  %118 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %117, 0
  br i1 %118, label %SimpleDefer_state_01_ready, label %SimpleDefer_state_01_pending

SimpleDefer_state_01_ready:                       ; preds = %SimpleDefer_state_01_poll
  %119 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %117, 2
  %120 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %119, { ptr, ptr } zeroinitializer)
  %121 = xor i1 %120, true
  br i1 %121, label %SimpleDefer_state_01_err, label %SimpleDefer_state_01_ready_cont

SimpleDefer_state_01_pending:                     ; preds = %SimpleDefer_state_01_poll
  %122 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %123 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %123, ptr %122, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

SimpleDefer_state_01_err:                         ; preds = %SimpleDefer_state_01_ready
  %124 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 6
  %125 = call i1 @"github.com/goplus/llgo/async.(*DeferState).DoPanic"(ptr %124, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %119)
  br i1 %125, label %SimpleDefer_state_01_err_recovered, label %SimpleDefer_state_01_err_propagate

SimpleDefer_state_01_ready_cont:                  ; preds = %SimpleDefer_state_01_ready
  %126 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %117, 1
  %127 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 3
  store i64 %126, ptr %127, align 4
  %128 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 2
  store ptr %108, ptr %128, align 8
  store ptr null, ptr %20, align 8
  %129 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %130 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %130, ptr %129, align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %131, align 1
  br label %SimpleDefer_state_02

SimpleDefer_state_01_err_recovered:               ; preds = %SimpleDefer_state_01_err
  %132 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %132, align 1
  %133 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 7
  %134 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %133, align 8
  store { ptr, ptr } zeroinitializer, ptr %133, align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 8
  %136 = load i64, ptr %135, align 4
  %137 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %138 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %137)
  %139 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %137, 0
  %140 = getelementptr ptr, ptr %139, i64 4
  %141 = load ptr, ptr %140, align 8
  %142 = insertvalue { ptr, ptr } undef, ptr %141, 0
  %143 = insertvalue { ptr, ptr } %142, ptr %138, 1
  %144 = extractvalue { ptr, ptr } %143, 1
  %145 = extractvalue { ptr, ptr } %143, 0
  %146 = call %"github.com/goplus/llgo/async.Poll[int]" %145(ptr %144, ptr null)
  %147 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %146, 1
  %148 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 8
  store i64 %147, ptr %148, align 4
  %149 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %147, 1
  %150 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %149, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %150

SimpleDefer_state_01_err_propagate:               ; preds = %SimpleDefer_state_01_err
  %151 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %151, align 1
  %152 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 7
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %119, ptr %152, align 8
  %153 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %119, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %153

_llgo_24:                                         ; preds = %_llgo_25, %SimpleDefer_state_02
  %154 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %155 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 8
  store i64 %30, ptr %155, align 4
  %156 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 7
  %157 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %156, align 8
  store { ptr, ptr } zeroinitializer, ptr %156, align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %159 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %159, ptr %158, align 8
  %160 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %160, align 1
  %161 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 8
  %162 = load i64, ptr %161, align 4
  %163 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %162, 1
  %164 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %163, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %164

_llgo_25:                                         ; preds = %SimpleDefer_state_02
  %165 = load i1, ptr %38, align 1
  %166 = icmp eq i1 %165, false
  br i1 %166, label %_llgo_26, label %_llgo_24

_llgo_26:                                         ; preds = %_llgo_25
  %167 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %39, align 8
  %168 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %168, align 1
  %169 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 7
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %167, ptr %169, align 8
  %170 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %167, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %170
}

define void @"__llgo_defer_wrap$github_com_goplus_llgo_cl__testpull_defer_SimpleDefer$1"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %0, i32 0, i32 0
  %2 = load { ptr, ptr }, ptr %1, align 8
  %3 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = extractvalue { ptr, ptr } %2, 1
  %6 = extractvalue { ptr, ptr } %2, 0
  call void %6(ptr %5, ptr %4)
  ret void
}

define linkonce void @"__llgo_stub.__llgo_defer_wrap$github_com_goplus_llgo_cl__testpull_defer_SimpleDefer$1"(ptr %0, ptr %1) {
_llgo_0:
  tail call void @"__llgo_defer_wrap$github_com_goplus_llgo_cl__testpull_defer_SimpleDefer$1"(ptr %1)
  ret void
}

define ptr @"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$Concrete"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 112)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  store i8 0, ptr %1, align 1
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  store { ptr, ptr } zeroinitializer, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 2
  store ptr null, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 3
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 4
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 5
  store ptr null, ptr %6, align 8
  ret ptr %0
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$Concrete"()
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State")
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
