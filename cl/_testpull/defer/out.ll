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
@"*_llgo_github.com/goplus/llgo/async.Context" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -808118033, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 13 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Context" }, align 8
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
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/async.Context"], align 8
@"_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 801809575, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 15 }, ptr @"*_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$M9E5HRdqyc11Zqvq07yhy6frK_fAyRGIc35bZKl9nrs$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error", ptr @"github.com/goplus/llgo/async.Poll[int].Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError", ptr @"github.com/goplus/llgo/async.Poll[int].HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.Poll[int].IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.Poll[int].Value" }] }, align 8
@16 = private unnamed_addr constant [15 x i8] c"async.Poll[int]", align 1
@"*_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -920093333, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 15 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value" }] }, align 8
@17 = private unnamed_addr constant [5 x i8] c"Error", align 1
@"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1398528794, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 19 }, ptr @"*_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8$out", i64 1, i64 1 } }, align 8
@18 = private unnamed_addr constant [19 x i8] c"func() interface {}", align 1
@"*_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1160547289, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 19 }, ptr null }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" }, align 8
@_llgo_any = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1376530322, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 12 }, ptr @"*_llgo_any" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@19 = private unnamed_addr constant [12 x i8] c"interface {}", align 1
@"*_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1741196194, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 12 }, ptr null }, ptr @_llgo_any }, align 8
@"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8$out" = weak_odr constant [1 x ptr] [ptr @_llgo_any], align 8
@20 = private unnamed_addr constant [8 x i8] c"HasError", align 1
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -541022001, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 11 }, ptr @"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out", i64 1, i64 1 } }, align 8
@21 = private unnamed_addr constant [11 x i8] c"func() bool", align 1
@"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -367308996, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 11 }, ptr null }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, align 8
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out" = weak_odr constant [1 x ptr] [ptr @_llgo_bool], align 8
@22 = private unnamed_addr constant [7 x i8] c"IsReady", align 1
@23 = private unnamed_addr constant [5 x i8] c"Value", align 1
@24 = private unnamed_addr constant [5 x i8] c"ready", align 1
@25 = private unnamed_addr constant [3 x i8] c"err", align 1
@"github.com/goplus/llgo/cl/_testpull/defer.struct$M9E5HRdqyc11Zqvq07yhy6frK_fAyRGIc35bZKl9nrs$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 5 }, ptr @_llgo_bool, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @_llgo_any, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]"], align 8
@"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 975938808, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 63 }, ptr @"*_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI$imethods", i64 2, i64 2 } }, align 8
@26 = private unnamed_addr constant [63 x i8] c"interface { Await() int; Poll(*async.Context) async.Poll[int] }", align 1
@"*_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1309347707, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 63 }, ptr null }, ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI" }, align 8
@"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI$imethods" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 663533385, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 26 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*ConditionalDefer$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*ConditionalDefer$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*ConditionalDefer$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*ConditionalDefer$State).Poll" }] }, align 8
@27 = private unnamed_addr constant [26 x i8] c"foo.ConditionalDefer$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 112, i64 88, i32 -92085647, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 26 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$lNBr80m3sNmgNr-OYQuWtUJwLBzaPqXVyX-5y2_DnC0$fields", i64 10, i64 10 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@28 = private unnamed_addr constant [5 x i8] c"state", align 1
@_llgo_int8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 1444672578, i8 12, i8 1, i8 1, i8 35, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 4 }, ptr @"*_llgo_int8" }, align 8
@29 = private unnamed_addr constant [4 x i8] c"int8", align 1
@"*_llgo_int8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1399554408, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 4 }, ptr null }, ptr @_llgo_int8 }, align 8
@30 = private unnamed_addr constant [6 x i8] c"param0", align 1
@31 = private unnamed_addr constant [4 x i8] c"var0", align 1
@"_llgo_github.com/goplus/llgo/async.Future[int]" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1503177044, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 17 }, ptr @"*_llgo_github.com/goplus/llgo/async.Future[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI$imethods", i64 2, i64 2 } }, align 8
@32 = private unnamed_addr constant [17 x i8] c"async.Future[int]", align 1
@"*_llgo_github.com/goplus/llgo/async.Future[int]" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 934108082, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 17 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]" }, align 8
@33 = private unnamed_addr constant [4 x i8] c"var1", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 948368506, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 12 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 5 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*Resource).Close", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*Resource).Close" }] }, align 8
@34 = private unnamed_addr constant [12 x i8] c"foo.Resource", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1664976224, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 12 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$ez3MeZvA9D8F8Wht1tbuFMqI0WKAf0EmqyhZ0-FECas$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@35 = private unnamed_addr constant [2 x i8] c"id", align 1
@"github.com/goplus/llgo/cl/_testpull/defer.struct$ez3MeZvA9D8F8Wht1tbuFMqI0WKAf0EmqyhZ0-FECas$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 2 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@36 = private unnamed_addr constant [5 x i8] c"Close", align 1
@37 = private unnamed_addr constant [4 x i8] c"var2", align 1
@38 = private unnamed_addr constant [4 x i8] c"sub0", align 1
@"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1886666427, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 70 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Await", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll" }] }, align 8
@39 = private unnamed_addr constant [70 x i8] c"async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", align 1
@"_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 -2008577653, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 70 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$yHxrLaDf8dGjl-j7DMKFOzKYTCmfrbXkRsiAu0cRnm0$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@40 = private unnamed_addr constant [2 x i8] c"fn", align 1
@"_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1200775160, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 97 }, ptr @"*_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8$fields", i64 2, i64 2 } }, align 8
@41 = private unnamed_addr constant [97 x i8] c"struct { $f func(struct { $f func(*foo.Resource); $data unsafe.Pointer }); $data unsafe.Pointer }", align 1
@"*_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1292151995, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 97 }, ptr null }, ptr @"_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8" }, align 8
@42 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1152223553, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 61 }, ptr @"*_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@43 = private unnamed_addr constant [61 x i8] c"func(struct { $f func(*foo.Resource); $data unsafe.Pointer })", align 1
@"*_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2059840044, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 61 }, ptr null }, ptr @"_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk" }, align 8
@"_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -968588264, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 55 }, ptr @"*_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M$fields", i64 2, i64 2 } }, align 8
@44 = private unnamed_addr constant [55 x i8] c"struct { $f func(*foo.Resource); $data unsafe.Pointer }", align 1
@"*_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1753174139, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 55 }, ptr null }, ptr @"_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M" }, align 8
@"_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1954501058, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 19 }, ptr @"*_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@45 = private unnamed_addr constant [19 x i8] c"func(*foo.Resource)", align 1
@"*_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2096868712, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 19 }, ptr null }, ptr @"_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8" }, align 8
@"_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource"], align 8
@46 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@47 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 2 }, ptr @"_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M"], align 8
@"_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 2 }, ptr @"_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@48 = private unnamed_addr constant [7 x i8] c"started", align 1
@"github.com/goplus/llgo/cl/_testpull/defer.struct$yHxrLaDf8dGjl-j7DMKFOzKYTCmfrbXkRsiAu0cRnm0$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 2 }, ptr @"_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 7 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 5 }, ptr @_llgo_bool, i64 17, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -247520586, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 20 }, ptr @"*_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE$out", i64 1, i64 1 } }, align 8
@49 = private unnamed_addr constant [20 x i8] c"func() *foo.Resource", align 1
@"*_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -873504099, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 20 }, ptr null }, ptr @"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE" }, align 8
@"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE$out" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource"], align 8
@"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2030322516, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 84 }, ptr @"*_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA$out", i64 1, i64 1 } }, align 8
@50 = private unnamed_addr constant [84 x i8] c"func(*async.Context) async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", align 1
@"*_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1084380263, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 84 }, ptr null }, ptr @"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA" }, align 8
@"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/async.Context"], align 8
@"_llgo_github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 1693813997, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 63 }, ptr @"*_llgo_github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$EkmiDKJC-fqoNXricL5fDFuVyHAn72DRRPybohR3dTM$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Error", ptr @"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource].Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).HasError", ptr @"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource].HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).IsReady", ptr @"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource].IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 5 }, ptr @"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Value", ptr @"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource].Value" }] }, align 8
@51 = private unnamed_addr constant [63 x i8] c"async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", align 1
@"*_llgo_github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -887888728, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 63 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Error", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).HasError", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).IsReady", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 5 }, ptr @"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Value", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Value" }] }, align 8
@"github.com/goplus/llgo/cl/_testpull/defer.struct$EkmiDKJC-fqoNXricL5fDFuVyHAn72DRRPybohR3dTM$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 5 }, ptr @_llgo_bool, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @_llgo_any, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]"], align 8
@52 = private unnamed_addr constant [4 x i8] c"sub1", align 1
@"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 964362133, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll" }] }, align 8
@53 = private unnamed_addr constant [22 x i8] c"async.AsyncFuture[int]", align 1
@"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 0, i32 1769159236, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1213993089, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 87 }, ptr @"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields", i64 2, i64 2 } }, align 8
@54 = private unnamed_addr constant [87 x i8] c"struct { $f func(struct { $f func(int); $data unsafe.Pointer }); $data unsafe.Pointer }", align 1
@"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1666834553, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 87 }, ptr null }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, align 8
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2009615728, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 51 }, ptr @"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@55 = private unnamed_addr constant [51 x i8] c"func(struct { $f func(int); $data unsafe.Pointer })", align 1
@"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1512208703, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 51 }, ptr null }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1556934939, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 45 }, ptr @"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields", i64 2, i64 2 } }, align 8
@56 = private unnamed_addr constant [45 x i8] c"struct { $f func(int); $data unsafe.Pointer }", align 1
@"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 364872269, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 45 }, ptr null }, ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -637187458, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr @"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@57 = private unnamed_addr constant [9 x i8] c"func(int)", align 1
@"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 735356155, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr null }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 2 }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM"], align 8
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 2 }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/defer.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 2 }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 7 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 5 }, ptr @_llgo_bool, i64 17, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@58 = private unnamed_addr constant [10 x i8] c"deferState", align 1
@"_llgo_github.com/goplus/llgo/async.DeferState" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 8, i32 986572485, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.DeferState" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 16 }, ptr @"*_llgo_github.com/goplus/llgo/async.DeferState" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$Td80-BLvbtmjWV_MtKrt1TE6IBW4brip3KX8E1cxLks$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@59 = private unnamed_addr constant [16 x i8] c"async.DeferState", align 1
@"*_llgo_github.com/goplus/llgo/async.DeferState" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1092035480, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 16 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.DeferState" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 7 }, ptr @"_llgo_func$TUWCG8mUhPMa3Uemciu2rP6lY7SbhS3dNyiPALfsZE4", ptr @"github.com/goplus/llgo/async.(*DeferState).DoPanic", ptr @"github.com/goplus/llgo/async.(*DeferState).DoPanic" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 9 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*DeferState).DoRecover", ptr @"github.com/goplus/llgo/async.(*DeferState).DoRecover" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 9 }, ptr @"_llgo_func$AIgmJ1gQ2N3pYn8zY3Ok3J2IF-TrGXGuEAjk99jMqyk", ptr @"github.com/goplus/llgo/async.(*DeferState).PushDefer", ptr @"github.com/goplus/llgo/async.(*DeferState).PushDefer" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 9 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/async.(*DeferState).RunDefers", ptr @"github.com/goplus/llgo/async.(*DeferState).RunDefers" }] }, align 8
@60 = private unnamed_addr constant [7 x i8] c"DoPanic", align 1
@"_llgo_func$TUWCG8mUhPMa3Uemciu2rP6lY7SbhS3dNyiPALfsZE4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1057540033, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 23 }, ptr @"*_llgo_func$TUWCG8mUhPMa3Uemciu2rP6lY7SbhS3dNyiPALfsZE4" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$TUWCG8mUhPMa3Uemciu2rP6lY7SbhS3dNyiPALfsZE4$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$TUWCG8mUhPMa3Uemciu2rP6lY7SbhS3dNyiPALfsZE4$out", i64 1, i64 1 } }, align 8
@61 = private unnamed_addr constant [23 x i8] c"func(interface {}) bool", align 1
@"*_llgo_func$TUWCG8mUhPMa3Uemciu2rP6lY7SbhS3dNyiPALfsZE4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1898502247, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 23 }, ptr null }, ptr @"_llgo_func$TUWCG8mUhPMa3Uemciu2rP6lY7SbhS3dNyiPALfsZE4" }, align 8
@"_llgo_func$TUWCG8mUhPMa3Uemciu2rP6lY7SbhS3dNyiPALfsZE4$in" = weak_odr constant [1 x ptr] [ptr @_llgo_any], align 8
@"_llgo_func$TUWCG8mUhPMa3Uemciu2rP6lY7SbhS3dNyiPALfsZE4$out" = weak_odr constant [1 x ptr] [ptr @_llgo_bool], align 8
@62 = private unnamed_addr constant [9 x i8] c"DoRecover", align 1
@63 = private unnamed_addr constant [9 x i8] c"PushDefer", align 1
@"_llgo_func$AIgmJ1gQ2N3pYn8zY3Ok3J2IF-TrGXGuEAjk99jMqyk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -329630838, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 78 }, ptr @"*_llgo_func$AIgmJ1gQ2N3pYn8zY3Ok3J2IF-TrGXGuEAjk99jMqyk" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$AIgmJ1gQ2N3pYn8zY3Ok3J2IF-TrGXGuEAjk99jMqyk$in", i64 2, i64 2 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@64 = private unnamed_addr constant [78 x i8] c"func(struct { $f func(unsafe.Pointer); $data unsafe.Pointer }, unsafe.Pointer)", align 1
@"*_llgo_func$AIgmJ1gQ2N3pYn8zY3Ok3J2IF-TrGXGuEAjk99jMqyk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2091350364, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 78 }, ptr null }, ptr @"_llgo_func$AIgmJ1gQ2N3pYn8zY3Ok3J2IF-TrGXGuEAjk99jMqyk" }, align 8
@"_llgo_closure$FNB11V1bR1J-X_G8HcXdDp-oak1nhPOBL7Pt6o5nLxs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1271797440, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 56 }, ptr @"*_llgo_closure$FNB11V1bR1J-X_G8HcXdDp-oak1nhPOBL7Pt6o5nLxs" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$FNB11V1bR1J-X_G8HcXdDp-oak1nhPOBL7Pt6o5nLxs$fields", i64 2, i64 2 } }, align 8
@65 = private unnamed_addr constant [56 x i8] c"struct { $f func(unsafe.Pointer); $data unsafe.Pointer }", align 1
@"*_llgo_closure$FNB11V1bR1J-X_G8HcXdDp-oak1nhPOBL7Pt6o5nLxs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 585623024, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 56 }, ptr null }, ptr @"_llgo_closure$FNB11V1bR1J-X_G8HcXdDp-oak1nhPOBL7Pt6o5nLxs" }, align 8
@"_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1235344768, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 20 }, ptr @"*_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@66 = private unnamed_addr constant [20 x i8] c"func(unsafe.Pointer)", align 1
@"*_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 579283862, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 20 }, ptr null }, ptr @"_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30" }, align 8
@"_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30$in" = weak_odr constant [1 x ptr] [ptr @_llgo_Pointer], align 8
@"_llgo_closure$FNB11V1bR1J-X_G8HcXdDp-oak1nhPOBL7Pt6o5nLxs$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 2 }, ptr @"_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$AIgmJ1gQ2N3pYn8zY3Ok3J2IF-TrGXGuEAjk99jMqyk$in" = weak_odr constant [2 x ptr] [ptr @"_llgo_closure$FNB11V1bR1J-X_G8HcXdDp-oak1nhPOBL7Pt6o5nLxs", ptr @_llgo_Pointer], align 8
@67 = private unnamed_addr constant [9 x i8] c"RunDefers", align 1
@68 = private unnamed_addr constant [9 x i8] c"DeferHead", align 1
@69 = private unnamed_addr constant [10 x i8] c"PanicValue", align 1
@70 = private unnamed_addr constant [11 x i8] c"IsPanicking", align 1
@71 = private unnamed_addr constant [9 x i8] c"Recovered", align 1
@"_llgo_struct$Td80-BLvbtmjWV_MtKrt1TE6IBW4brip3KX8E1cxLks$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 9 }, ptr @_llgo_Pointer, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 10 }, ptr @_llgo_any, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 11 }, ptr @_llgo_bool, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 9 }, ptr @_llgo_bool, i64 25, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@72 = private unnamed_addr constant [8 x i8] c"panicErr", align 1
@73 = private unnamed_addr constant [11 x i8] c"resultValue", align 1
@"github.com/goplus/llgo/cl/_testpull/defer.struct$lNBr80m3sNmgNr-OYQuWtUJwLBzaPqXVyX-5y2_DnC0$fields" = weak_odr constant [10 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 6 }, ptr @_llgo_bool, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 10 }, ptr @"_llgo_github.com/goplus/llgo/async.DeferState", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 8 }, ptr @_llgo_any, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 11 }, ptr @_llgo_int, i64 104, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1432003878, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 19 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*LoopDefer$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*LoopDefer$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*LoopDefer$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*LoopDefer$State).Poll" }] }, align 8
@74 = private unnamed_addr constant [19 x i8] c"foo.LoopDefer$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 160, i64 136, i32 313239395, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 19 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$LkNw-uCYEt4MzNJbABrF6Wv6_5qgJDMhBYp79BFsJvU$fields", i64 15, i64 15 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@75 = private unnamed_addr constant [4 x i8] c"var3", align 1
@76 = private unnamed_addr constant [4 x i8] c"var4", align 1
@77 = private unnamed_addr constant [4 x i8] c"var5", align 1
@78 = private unnamed_addr constant [4 x i8] c"var6", align 1
@79 = private unnamed_addr constant [4 x i8] c"var7", align 1
@"github.com/goplus/llgo/cl/_testpull/defer.struct$LkNw-uCYEt4MzNJbABrF6Wv6_5qgJDMhBYp79BFsJvU$fields" = weak_odr constant [15 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 4 }, ptr @_llgo_bool, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource", i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 4 }, ptr @_llgo_int, i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 10 }, ptr @"_llgo_github.com/goplus/llgo/async.DeferState", i64 104, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 8 }, ptr @_llgo_any, i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 11 }, ptr @_llgo_int, i64 152, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1664288224, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 23 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*MultipleDefer$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*MultipleDefer$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*MultipleDefer$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*MultipleDefer$State).Poll" }] }, align 8
@80 = private unnamed_addr constant [23 x i8] c"foo.MultipleDefer$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 144, i64 120, i32 701184026, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 23 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$Vo9tSQTITAe7qXK6KXStS77YuN23Kfe87hvObUKZ-JA$fields", i64 13, i64 13 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@81 = private unnamed_addr constant [4 x i8] c"sub2", align 1
@82 = private unnamed_addr constant [4 x i8] c"sub3", align 1
@"github.com/goplus/llgo/cl/_testpull/defer.struct$Vo9tSQTITAe7qXK6KXStS77YuN23Kfe87hvObUKZ-JA$fields" = weak_odr constant [13 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource", i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 10 }, ptr @"_llgo_github.com/goplus/llgo/async.DeferState", i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 8 }, ptr @_llgo_any, i64 120, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 11 }, ptr @_llgo_int, i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1442532042, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 21 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*SimpleDefer$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*SimpleDefer$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*SimpleDefer$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*SimpleDefer$State).Poll" }] }, align 8
@83 = private unnamed_addr constant [21 x i8] c"foo.SimpleDefer$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 112, i64 88, i32 -822773017, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 21 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$_bwC8YMqt6kwtCL12O1D8S7zOATzvTXX9fTlYgvAtuA$fields", i64 9, i64 9 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/defer.struct$_bwC8YMqt6kwtCL12O1D8S7zOATzvTXX9fTlYgvAtuA$fields" = weak_odr constant [9 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 10 }, ptr @"_llgo_github.com/goplus/llgo/async.DeferState", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 8 }, ptr @_llgo_any, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 11 }, ptr @_llgo_int, i64 104, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/defer.init$guard" = global i1 false, align 1
@84 = private unnamed_addr constant [45 x i8] c"Await() should be transformed by the compiler", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 6 }, ptr @"*_llgo_string" }, align 8
@85 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 6 }, ptr null }, ptr @_llgo_string }, align 8

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
  %53 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 9
  store i64 %46, ptr %54, align 4
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 8
  %56 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %55, align 8
  store { ptr, ptr } zeroinitializer, ptr %55, align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %58 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %58, ptr %57, align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %59, align 1
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 9
  %61 = load i64, ptr %60, align 4
  %62 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %61, 1
  %63 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %62, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %63

ConditionalDefer_state_04:                        ; preds = %ConditionalDefer_state_00_false, %ConditionalDefer_entry
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %65 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %64, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %65, ptr %2, align 8
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 1
  %67 = load i1, ptr %66, align 1
  %68 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 3
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 4
  %71 = load i64, ptr %70, align 4
  %72 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 0)
  %73 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %74 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %73, 0
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %74, ptr %72, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %75, ptr %2, align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 9
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %75, ptr %76, align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 7
  call void @"github.com/goplus/llgo/async.(*DeferState).RunDefers"(ptr %77)
  %78 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 9
  store i64 0, ptr %79, align 4
  %80 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 8
  %81 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %80, align 8
  store { ptr, ptr } zeroinitializer, ptr %80, align 8
  %82 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %83 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %83, ptr %82, align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %84, align 1
  %85 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 9
  %86 = load i64, ptr %85, align 4
  %87 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %86, 1
  %88 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %87, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %88

ConditionalDefer_state_05:                        ; preds = %ConditionalDefer_entry
  %89 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %90 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %89, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %90, ptr %2, align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 1
  %92 = load i1, ptr %91, align 1
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 3
  %94 = load ptr, ptr %93, align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 4
  %96 = load i64, ptr %95, align 4
  %97 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 8
  %99 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %98, align 8
  store { ptr, ptr } zeroinitializer, ptr %98, align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %101 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %101, ptr %100, align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %102, align 1
  %103 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 9
  %104 = load i64, ptr %103, align 4
  %105 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %104, 1
  %106 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %105, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %106

ConditionalDefer_state_done:                      ; preds = %ConditionalDefer_entry
  %107 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 8
  %108 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %107, align 8
  %109 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %108, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %109

ConditionalDefer_state_unreach:                   ; preds = %ConditionalDefer_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_9:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

ConditionalDefer_state_00_true:                   ; preds = %ConditionalDefer_state_00
  %110 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  store ptr %2, ptr %110, align 8
  %111 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %112 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %112, ptr %111, align 8
  %113 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %113, align 1
  br label %ConditionalDefer_state_01

ConditionalDefer_state_00_false:                  ; preds = %ConditionalDefer_state_00
  %114 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  store ptr %2, ptr %114, align 8
  %115 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %116 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %116, ptr %115, align 8
  %117 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %117, align 1
  br label %ConditionalDefer_state_04

ConditionalDefer_state_01_init:                   ; preds = %ConditionalDefer_state_01
  %118 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 1
  %119 = load i1, ptr %118, align 1
  %120 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %121 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %120, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %121, ptr %2, align 8
  %122 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 3
  %123 = load ptr, ptr %122, align 8
  %124 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 4
  %125 = load i64, ptr %124, align 4
  %126 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource"(i64 1)
  store ptr %126, ptr %23, align 8
  br label %ConditionalDefer_state_01_poll

ConditionalDefer_state_01_poll:                   ; preds = %ConditionalDefer_state_01_init, %ConditionalDefer_state_01
  %127 = load ptr, ptr %23, align 8
  %128 = call %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll"(ptr %127, ptr %1)
  %129 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %128, 0
  br i1 %129, label %ConditionalDefer_state_01_ready, label %ConditionalDefer_state_01_pending

ConditionalDefer_state_01_ready:                  ; preds = %ConditionalDefer_state_01_poll
  %130 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %128, 2
  %131 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %130, { ptr, ptr } zeroinitializer)
  %132 = xor i1 %131, true
  br i1 %132, label %ConditionalDefer_state_01_err, label %ConditionalDefer_state_01_ready_cont

ConditionalDefer_state_01_pending:                ; preds = %ConditionalDefer_state_01_poll
  %133 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %134 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %134, ptr %133, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

ConditionalDefer_state_01_err:                    ; preds = %ConditionalDefer_state_01_ready
  %135 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 7
  %136 = call i1 @"github.com/goplus/llgo/async.(*DeferState).DoPanic"(ptr %135, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %130)
  br i1 %136, label %ConditionalDefer_state_01_err_recovered, label %ConditionalDefer_state_01_err_propagate

ConditionalDefer_state_01_ready_cont:             ; preds = %ConditionalDefer_state_01_ready
  %137 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %128, 1
  %138 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 3
  store ptr %137, ptr %138, align 8
  %139 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 4
  store i64 %125, ptr %139, align 4
  store ptr null, ptr %23, align 8
  %140 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %141 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %141, ptr %140, align 8
  %142 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %142, align 1
  br label %ConditionalDefer_state_02

ConditionalDefer_state_01_err_recovered:          ; preds = %ConditionalDefer_state_01_err
  %143 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %143, align 1
  %144 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 8
  %145 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %144, align 8
  store { ptr, ptr } zeroinitializer, ptr %144, align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 9
  %147 = load i64, ptr %146, align 4
  %148 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %149 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %148)
  %150 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %148, 0
  %151 = getelementptr ptr, ptr %150, i64 4
  %152 = load ptr, ptr %151, align 8
  %153 = insertvalue { ptr, ptr } undef, ptr %152, 0
  %154 = insertvalue { ptr, ptr } %153, ptr %149, 1
  %155 = extractvalue { ptr, ptr } %154, 1
  %156 = extractvalue { ptr, ptr } %154, 0
  %157 = call %"github.com/goplus/llgo/async.Poll[int]" %156(ptr %155, ptr null)
  %158 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %157, 1
  %159 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 9
  store i64 %158, ptr %159, align 4
  %160 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %158, 1
  %161 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %160, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %161

ConditionalDefer_state_01_err_propagate:          ; preds = %ConditionalDefer_state_01_err
  %162 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %162, align 1
  %163 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %130, ptr %163, align 8
  %164 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %130, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %164

ConditionalDefer_state_02_init:                   ; preds = %ConditionalDefer_state_02
  %165 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 1
  %166 = load i1, ptr %165, align 1
  %167 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %168 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %167, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %168, ptr %2, align 8
  %169 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 3
  %170 = load ptr, ptr %169, align 8
  %171 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 4
  %172 = load i64, ptr %171, align 4
  %173 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 7
  %174 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %175 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %174, i32 0, i32 0
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testpull/defer.(*Resource).Close", ptr null }, ptr %175, align 8
  %176 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %174, i32 0, i32 1
  store ptr %170, ptr %176, align 8
  call void @"github.com/goplus/llgo/async.(*DeferState).PushDefer"(ptr %173, { ptr, ptr } { ptr @"__llgo_stub.__llgo_defer_wrap$github_com_goplus_llgo_cl__testpull_defer_ConditionalDefer$1", ptr null }, ptr %174)
  %177 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource"(ptr %170)
  store ptr %177, ptr %34, align 8
  br label %ConditionalDefer_state_02_poll

ConditionalDefer_state_02_poll:                   ; preds = %ConditionalDefer_state_02_init, %ConditionalDefer_state_02
  %178 = load ptr, ptr %34, align 8
  %179 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %178, ptr %1)
  %180 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %179, 0
  br i1 %180, label %ConditionalDefer_state_02_ready, label %ConditionalDefer_state_02_pending

ConditionalDefer_state_02_ready:                  ; preds = %ConditionalDefer_state_02_poll
  %181 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %179, 2
  %182 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %181, { ptr, ptr } zeroinitializer)
  %183 = xor i1 %182, true
  br i1 %183, label %ConditionalDefer_state_02_err, label %ConditionalDefer_state_02_ready_cont

ConditionalDefer_state_02_pending:                ; preds = %ConditionalDefer_state_02_poll
  %184 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %185 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %185, ptr %184, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

ConditionalDefer_state_02_err:                    ; preds = %ConditionalDefer_state_02_ready
  %186 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 7
  %187 = call i1 @"github.com/goplus/llgo/async.(*DeferState).DoPanic"(ptr %186, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %181)
  br i1 %187, label %ConditionalDefer_state_02_err_recovered, label %ConditionalDefer_state_02_err_propagate

ConditionalDefer_state_02_ready_cont:             ; preds = %ConditionalDefer_state_02_ready
  %188 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %179, 1
  %189 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 4
  store i64 %188, ptr %189, align 4
  %190 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 3
  store ptr %170, ptr %190, align 8
  store ptr null, ptr %34, align 8
  %191 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %192 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %192, ptr %191, align 8
  %193 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %193, align 1
  br label %ConditionalDefer_state_03

ConditionalDefer_state_02_err_recovered:          ; preds = %ConditionalDefer_state_02_err
  %194 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %194, align 1
  %195 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 8
  %196 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %195, align 8
  store { ptr, ptr } zeroinitializer, ptr %195, align 8
  %197 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 9
  %198 = load i64, ptr %197, align 4
  %199 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %200 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %199)
  %201 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %199, 0
  %202 = getelementptr ptr, ptr %201, i64 4
  %203 = load ptr, ptr %202, align 8
  %204 = insertvalue { ptr, ptr } undef, ptr %203, 0
  %205 = insertvalue { ptr, ptr } %204, ptr %200, 1
  %206 = extractvalue { ptr, ptr } %205, 1
  %207 = extractvalue { ptr, ptr } %205, 0
  %208 = call %"github.com/goplus/llgo/async.Poll[int]" %207(ptr %206, ptr null)
  %209 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %208, 1
  %210 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 9
  store i64 %209, ptr %210, align 4
  %211 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %209, 1
  %212 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %211, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %212

ConditionalDefer_state_02_err_propagate:          ; preds = %ConditionalDefer_state_02_err
  %213 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %213, align 1
  %214 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %181, ptr %214, align 8
  %215 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %181, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %215
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
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @84, i64 45 }, ptr %1, align 8
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
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @84, i64 45 }, ptr %1, align 8
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
  %140 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %141 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 14
  store i64 %133, ptr %141, align 4
  %142 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 13
  %143 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %142, align 8
  store { ptr, ptr } zeroinitializer, ptr %142, align 8
  %144 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %145 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %145, ptr %144, align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %146, align 1
  %147 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 14
  %148 = load i64, ptr %147, align 4
  %149 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %148, 1
  %150 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %149, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %150

LoopDefer_state_06:                               ; preds = %LoopDefer_entry
  %151 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %152 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %151, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %152, ptr %2, align 8
  %153 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 1
  %154 = load i64, ptr %153, align 4
  %155 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %156 = load i64, ptr %155, align 4
  %157 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  %158 = load i64, ptr %157, align 4
  %159 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 5
  %160 = load i1, ptr %159, align 1
  %161 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 6
  %162 = load ptr, ptr %161, align 8
  %163 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 7
  %164 = load ptr, ptr %163, align 8
  %165 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 8
  %166 = load ptr, ptr %165, align 8
  %167 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 9
  %168 = load i64, ptr %167, align 4
  %169 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %170 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 13
  %171 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %170, align 8
  store { ptr, ptr } zeroinitializer, ptr %170, align 8
  %172 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %173 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %173, ptr %172, align 8
  %174 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %174, align 1
  %175 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 14
  %176 = load i64, ptr %175, align 4
  %177 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %176, 1
  %178 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %177, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %178

LoopDefer_state_done:                             ; preds = %LoopDefer_entry
  %179 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 13
  %180 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %179, align 8
  %181 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %180, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %181

LoopDefer_state_unreach:                          ; preds = %LoopDefer_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_10:                                         ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

LoopDefer_state_01_true:                          ; preds = %LoopDefer_state_01
  %182 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 5
  store i1 %47, ptr %182, align 1
  %183 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %184 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %184, ptr %183, align 8
  %185 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %185, align 1
  br label %LoopDefer_state_02

LoopDefer_state_01_false:                         ; preds = %LoopDefer_state_01
  %186 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 5
  store i1 %47, ptr %186, align 1
  %187 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %188 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %188, ptr %187, align 8
  %189 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %189, align 1
  br label %LoopDefer_state_05

LoopDefer_state_02_init:                          ; preds = %LoopDefer_state_02
  %190 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 1
  %191 = load i64, ptr %190, align 4
  %192 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %193 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %192, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %193, ptr %2, align 8
  %194 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %195 = load i64, ptr %194, align 4
  %196 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  %197 = load i64, ptr %196, align 4
  %198 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 5
  %199 = load i1, ptr %198, align 1
  %200 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 7
  %201 = load ptr, ptr %200, align 8
  %202 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 9
  %203 = load i64, ptr %202, align 4
  %204 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource"(i64 %197)
  %205 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 6
  store ptr %204, ptr %205, align 8
  store ptr %204, ptr %65, align 8
  br label %LoopDefer_state_02_poll

LoopDefer_state_02_poll:                          ; preds = %LoopDefer_state_02_init, %LoopDefer_state_02
  %206 = load ptr, ptr %65, align 8
  %207 = call %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll"(ptr %206, ptr %1)
  %208 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %207, 0
  br i1 %208, label %LoopDefer_state_02_ready, label %LoopDefer_state_02_pending

LoopDefer_state_02_ready:                         ; preds = %LoopDefer_state_02_poll
  %209 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %207, 2
  %210 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %209, { ptr, ptr } zeroinitializer)
  %211 = xor i1 %210, true
  br i1 %211, label %LoopDefer_state_02_err, label %LoopDefer_state_02_ready_cont

LoopDefer_state_02_pending:                       ; preds = %LoopDefer_state_02_poll
  %212 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %213 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %213, ptr %212, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

LoopDefer_state_02_err:                           ; preds = %LoopDefer_state_02_ready
  %214 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 12
  %215 = call i1 @"github.com/goplus/llgo/async.(*DeferState).DoPanic"(ptr %214, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %209)
  br i1 %215, label %LoopDefer_state_02_err_recovered, label %LoopDefer_state_02_err_propagate

LoopDefer_state_02_ready_cont:                    ; preds = %LoopDefer_state_02_ready
  %216 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %207, 1
  %217 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 7
  store ptr %216, ptr %217, align 8
  %218 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  store i64 %195, ptr %218, align 4
  %219 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  store i64 %197, ptr %219, align 4
  %220 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 5
  store i1 %199, ptr %220, align 1
  %221 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 6
  store ptr %204, ptr %221, align 8
  %222 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 8
  %223 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource"(ptr %201)
  store ptr %223, ptr %222, align 8
  %224 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 9
  store i64 %203, ptr %224, align 4
  store ptr null, ptr %65, align 8
  %225 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %226 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %226, ptr %225, align 8
  %227 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %227, align 1
  br label %LoopDefer_state_03

LoopDefer_state_02_err_recovered:                 ; preds = %LoopDefer_state_02_err
  %228 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %228, align 1
  %229 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 13
  %230 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %229, align 8
  store { ptr, ptr } zeroinitializer, ptr %229, align 8
  %231 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 14
  %232 = load i64, ptr %231, align 4
  %233 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %234 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %233)
  %235 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %233, 0
  %236 = getelementptr ptr, ptr %235, i64 4
  %237 = load ptr, ptr %236, align 8
  %238 = insertvalue { ptr, ptr } undef, ptr %237, 0
  %239 = insertvalue { ptr, ptr } %238, ptr %234, 1
  %240 = extractvalue { ptr, ptr } %239, 1
  %241 = extractvalue { ptr, ptr } %239, 0
  %242 = call %"github.com/goplus/llgo/async.Poll[int]" %241(ptr %240, ptr null)
  %243 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %242, 1
  %244 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 14
  store i64 %243, ptr %244, align 4
  %245 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %243, 1
  %246 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %245, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %246

LoopDefer_state_02_err_propagate:                 ; preds = %LoopDefer_state_02_err
  %247 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %247, align 1
  %248 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 13
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %209, ptr %248, align 8
  %249 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %209, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %249

LoopDefer_state_03_init:                          ; preds = %LoopDefer_state_03
  %250 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 1
  %251 = load i64, ptr %250, align 4
  %252 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %253 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %252, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %253, ptr %2, align 8
  %254 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %255 = load i64, ptr %254, align 4
  %256 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  %257 = load i64, ptr %256, align 4
  %258 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 5
  %259 = load i1, ptr %258, align 1
  %260 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 7
  %261 = load ptr, ptr %260, align 8
  %262 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 9
  %263 = load i64, ptr %262, align 4
  %264 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 12
  %265 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %266 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %265, i32 0, i32 0
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testpull/defer.(*Resource).Close", ptr null }, ptr %266, align 8
  %267 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %265, i32 0, i32 1
  store ptr %261, ptr %267, align 8
  call void @"github.com/goplus/llgo/async.(*DeferState).PushDefer"(ptr %264, { ptr, ptr } { ptr @"__llgo_stub.__llgo_defer_wrap$github_com_goplus_llgo_cl__testpull_defer_LoopDefer$1", ptr null }, ptr %265)
  %268 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource"(ptr %261)
  %269 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 8
  store ptr %268, ptr %269, align 8
  store ptr %268, ptr %82, align 8
  br label %LoopDefer_state_03_poll

LoopDefer_state_03_poll:                          ; preds = %LoopDefer_state_03_init, %LoopDefer_state_03
  %270 = load ptr, ptr %82, align 8
  %271 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %270, ptr %1)
  %272 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %271, 0
  br i1 %272, label %LoopDefer_state_03_ready, label %LoopDefer_state_03_pending

LoopDefer_state_03_ready:                         ; preds = %LoopDefer_state_03_poll
  %273 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %271, 2
  %274 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %273, { ptr, ptr } zeroinitializer)
  %275 = xor i1 %274, true
  br i1 %275, label %LoopDefer_state_03_err, label %LoopDefer_state_03_ready_cont

LoopDefer_state_03_pending:                       ; preds = %LoopDefer_state_03_poll
  %276 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %277 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %277, ptr %276, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

LoopDefer_state_03_err:                           ; preds = %LoopDefer_state_03_ready
  %278 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 12
  %279 = call i1 @"github.com/goplus/llgo/async.(*DeferState).DoPanic"(ptr %278, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %273)
  br i1 %279, label %LoopDefer_state_03_err_recovered, label %LoopDefer_state_03_err_propagate

LoopDefer_state_03_ready_cont:                    ; preds = %LoopDefer_state_03_ready
  %280 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %271, 1
  %281 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 9
  store i64 %280, ptr %281, align 4
  %282 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  store i64 %255, ptr %282, align 4
  %283 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  store i64 %257, ptr %283, align 4
  %284 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 5
  store i1 %259, ptr %284, align 1
  %285 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 6
  %286 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource"(i64 %257)
  store ptr %286, ptr %285, align 8
  %287 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 7
  store ptr %261, ptr %287, align 8
  %288 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 8
  store ptr %268, ptr %288, align 8
  store ptr null, ptr %82, align 8
  %289 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %290 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %290, ptr %289, align 8
  %291 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %291, align 1
  br label %LoopDefer_state_04

LoopDefer_state_03_err_recovered:                 ; preds = %LoopDefer_state_03_err
  %292 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %292, align 1
  %293 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 13
  %294 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %293, align 8
  store { ptr, ptr } zeroinitializer, ptr %293, align 8
  %295 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 14
  %296 = load i64, ptr %295, align 4
  %297 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %298 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %297)
  %299 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %297, 0
  %300 = getelementptr ptr, ptr %299, i64 4
  %301 = load ptr, ptr %300, align 8
  %302 = insertvalue { ptr, ptr } undef, ptr %301, 0
  %303 = insertvalue { ptr, ptr } %302, ptr %298, 1
  %304 = extractvalue { ptr, ptr } %303, 1
  %305 = extractvalue { ptr, ptr } %303, 0
  %306 = call %"github.com/goplus/llgo/async.Poll[int]" %305(ptr %304, ptr null)
  %307 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %306, 1
  %308 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 14
  store i64 %307, ptr %308, align 4
  %309 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %307, 1
  %310 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %309, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %310

LoopDefer_state_03_err_propagate:                 ; preds = %LoopDefer_state_03_err
  %311 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %311, align 1
  %312 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 13
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %273, ptr %312, align 8
  %313 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %273, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %313
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
  %74 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 12
  store i64 %67, ptr %75, align 4
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 11
  %77 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %76, align 8
  store { ptr, ptr } zeroinitializer, ptr %76, align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %79 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %79, ptr %78, align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %80, align 1
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 12
  %82 = load i64, ptr %81, align 4
  %83 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %82, 1
  %84 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %83, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %84

MultipleDefer_state_05:                           ; preds = %MultipleDefer_entry
  %85 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %86 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %85, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %86, ptr %2, align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %90 = load ptr, ptr %89, align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %92 = load i64, ptr %91, align 4
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  %94 = load i64, ptr %93, align 4
  %95 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 11
  %97 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %96, align 8
  store { ptr, ptr } zeroinitializer, ptr %96, align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %99 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %99, ptr %98, align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %100, align 1
  %101 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 12
  %102 = load i64, ptr %101, align 4
  %103 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %102, 1
  %104 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %103, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %104

MultipleDefer_state_done:                         ; preds = %MultipleDefer_entry
  %105 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 11
  %106 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %105, align 8
  %107 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %106, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %107

MultipleDefer_state_unreach:                      ; preds = %MultipleDefer_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_9:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

MultipleDefer_state_00_init:                      ; preds = %MultipleDefer_state_00
  %108 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %109 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %108, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %109, ptr %2, align 8
  %110 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %111 = load ptr, ptr %110, align 8
  %112 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %113 = load ptr, ptr %112, align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %115 = load i64, ptr %114, align 4
  %116 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  %117 = load i64, ptr %116, align 4
  %118 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource"(i64 1)
  store ptr %118, ptr %15, align 8
  br label %MultipleDefer_state_00_poll

MultipleDefer_state_00_poll:                      ; preds = %MultipleDefer_state_00_init, %MultipleDefer_state_00
  %119 = load ptr, ptr %15, align 8
  %120 = call %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll"(ptr %119, ptr %1)
  %121 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %120, 0
  br i1 %121, label %MultipleDefer_state_00_ready, label %MultipleDefer_state_00_pending

MultipleDefer_state_00_ready:                     ; preds = %MultipleDefer_state_00_poll
  %122 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %120, 2
  %123 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %122, { ptr, ptr } zeroinitializer)
  %124 = xor i1 %123, true
  br i1 %124, label %MultipleDefer_state_00_err, label %MultipleDefer_state_00_ready_cont

MultipleDefer_state_00_pending:                   ; preds = %MultipleDefer_state_00_poll
  %125 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %126 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %126, ptr %125, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

MultipleDefer_state_00_err:                       ; preds = %MultipleDefer_state_00_ready
  %127 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 10
  %128 = call i1 @"github.com/goplus/llgo/async.(*DeferState).DoPanic"(ptr %127, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %122)
  br i1 %128, label %MultipleDefer_state_00_err_recovered, label %MultipleDefer_state_00_err_propagate

MultipleDefer_state_00_ready_cont:                ; preds = %MultipleDefer_state_00_ready
  %129 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %120, 1
  %130 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  store ptr %129, ptr %130, align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  store ptr %113, ptr %131, align 8
  %132 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  store i64 %115, ptr %132, align 4
  %133 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  store i64 %117, ptr %133, align 4
  store ptr null, ptr %15, align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %135 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %135, ptr %134, align 8
  %136 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %136, align 1
  br label %MultipleDefer_state_01

MultipleDefer_state_00_err_recovered:             ; preds = %MultipleDefer_state_00_err
  %137 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %137, align 1
  %138 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 11
  %139 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %138, align 8
  store { ptr, ptr } zeroinitializer, ptr %138, align 8
  %140 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 12
  %141 = load i64, ptr %140, align 4
  %142 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %143 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %142)
  %144 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %142, 0
  %145 = getelementptr ptr, ptr %144, i64 4
  %146 = load ptr, ptr %145, align 8
  %147 = insertvalue { ptr, ptr } undef, ptr %146, 0
  %148 = insertvalue { ptr, ptr } %147, ptr %143, 1
  %149 = extractvalue { ptr, ptr } %148, 1
  %150 = extractvalue { ptr, ptr } %148, 0
  %151 = call %"github.com/goplus/llgo/async.Poll[int]" %150(ptr %149, ptr null)
  %152 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %151, 1
  %153 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 12
  store i64 %152, ptr %153, align 4
  %154 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %152, 1
  %155 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %154, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %155

MultipleDefer_state_00_err_propagate:             ; preds = %MultipleDefer_state_00_err
  %156 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %156, align 1
  %157 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 11
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %122, ptr %157, align 8
  %158 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %122, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %158

MultipleDefer_state_01_init:                      ; preds = %MultipleDefer_state_01
  %159 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %160 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %159, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %160, ptr %2, align 8
  %161 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %162 = load ptr, ptr %161, align 8
  %163 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %164 = load ptr, ptr %163, align 8
  %165 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %166 = load i64, ptr %165, align 4
  %167 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  %168 = load i64, ptr %167, align 4
  %169 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 10
  %170 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %171 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %170, i32 0, i32 0
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testpull/defer.(*Resource).Close", ptr null }, ptr %171, align 8
  %172 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %170, i32 0, i32 1
  store ptr %162, ptr %172, align 8
  call void @"github.com/goplus/llgo/async.(*DeferState).PushDefer"(ptr %169, { ptr, ptr } { ptr @"__llgo_stub.__llgo_defer_wrap$github_com_goplus_llgo_cl__testpull_defer_MultipleDefer$1", ptr null }, ptr %170)
  %173 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource"(i64 2)
  store ptr %173, ptr %28, align 8
  br label %MultipleDefer_state_01_poll

MultipleDefer_state_01_poll:                      ; preds = %MultipleDefer_state_01_init, %MultipleDefer_state_01
  %174 = load ptr, ptr %28, align 8
  %175 = call %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll"(ptr %174, ptr %1)
  %176 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %175, 0
  br i1 %176, label %MultipleDefer_state_01_ready, label %MultipleDefer_state_01_pending

MultipleDefer_state_01_ready:                     ; preds = %MultipleDefer_state_01_poll
  %177 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %175, 2
  %178 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %177, { ptr, ptr } zeroinitializer)
  %179 = xor i1 %178, true
  br i1 %179, label %MultipleDefer_state_01_err, label %MultipleDefer_state_01_ready_cont

MultipleDefer_state_01_pending:                   ; preds = %MultipleDefer_state_01_poll
  %180 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %181 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %181, ptr %180, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

MultipleDefer_state_01_err:                       ; preds = %MultipleDefer_state_01_ready
  %182 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 10
  %183 = call i1 @"github.com/goplus/llgo/async.(*DeferState).DoPanic"(ptr %182, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %177)
  br i1 %183, label %MultipleDefer_state_01_err_recovered, label %MultipleDefer_state_01_err_propagate

MultipleDefer_state_01_ready_cont:                ; preds = %MultipleDefer_state_01_ready
  %184 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %175, 1
  %185 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  store ptr %184, ptr %185, align 8
  %186 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  store ptr %162, ptr %186, align 8
  %187 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  store i64 %166, ptr %187, align 4
  %188 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  store i64 %168, ptr %188, align 4
  store ptr null, ptr %28, align 8
  %189 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %190 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %190, ptr %189, align 8
  %191 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %191, align 1
  br label %MultipleDefer_state_02

MultipleDefer_state_01_err_recovered:             ; preds = %MultipleDefer_state_01_err
  %192 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %192, align 1
  %193 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 11
  %194 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %193, align 8
  store { ptr, ptr } zeroinitializer, ptr %193, align 8
  %195 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 12
  %196 = load i64, ptr %195, align 4
  %197 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %198 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %197)
  %199 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %197, 0
  %200 = getelementptr ptr, ptr %199, i64 4
  %201 = load ptr, ptr %200, align 8
  %202 = insertvalue { ptr, ptr } undef, ptr %201, 0
  %203 = insertvalue { ptr, ptr } %202, ptr %198, 1
  %204 = extractvalue { ptr, ptr } %203, 1
  %205 = extractvalue { ptr, ptr } %203, 0
  %206 = call %"github.com/goplus/llgo/async.Poll[int]" %205(ptr %204, ptr null)
  %207 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %206, 1
  %208 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 12
  store i64 %207, ptr %208, align 4
  %209 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %207, 1
  %210 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %209, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %210

MultipleDefer_state_01_err_propagate:             ; preds = %MultipleDefer_state_01_err
  %211 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %211, align 1
  %212 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 11
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %177, ptr %212, align 8
  %213 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %177, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %213

MultipleDefer_state_02_init:                      ; preds = %MultipleDefer_state_02
  %214 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %215 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %214, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %215, ptr %2, align 8
  %216 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %217 = load ptr, ptr %216, align 8
  %218 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %219 = load ptr, ptr %218, align 8
  %220 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %221 = load i64, ptr %220, align 4
  %222 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  %223 = load i64, ptr %222, align 4
  %224 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 10
  %225 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %226 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %225, i32 0, i32 0
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testpull/defer.(*Resource).Close", ptr null }, ptr %226, align 8
  %227 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %225, i32 0, i32 1
  store ptr %219, ptr %227, align 8
  call void @"github.com/goplus/llgo/async.(*DeferState).PushDefer"(ptr %224, { ptr, ptr } { ptr @"__llgo_stub.__llgo_defer_wrap$github_com_goplus_llgo_cl__testpull_defer_MultipleDefer$1", ptr null }, ptr %225)
  %228 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource"(ptr %217)
  store ptr %228, ptr %41, align 8
  br label %MultipleDefer_state_02_poll

MultipleDefer_state_02_poll:                      ; preds = %MultipleDefer_state_02_init, %MultipleDefer_state_02
  %229 = load ptr, ptr %41, align 8
  %230 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %229, ptr %1)
  %231 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %230, 0
  br i1 %231, label %MultipleDefer_state_02_ready, label %MultipleDefer_state_02_pending

MultipleDefer_state_02_ready:                     ; preds = %MultipleDefer_state_02_poll
  %232 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %230, 2
  %233 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %232, { ptr, ptr } zeroinitializer)
  %234 = xor i1 %233, true
  br i1 %234, label %MultipleDefer_state_02_err, label %MultipleDefer_state_02_ready_cont

MultipleDefer_state_02_pending:                   ; preds = %MultipleDefer_state_02_poll
  %235 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %236 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %236, ptr %235, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

MultipleDefer_state_02_err:                       ; preds = %MultipleDefer_state_02_ready
  %237 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 10
  %238 = call i1 @"github.com/goplus/llgo/async.(*DeferState).DoPanic"(ptr %237, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %232)
  br i1 %238, label %MultipleDefer_state_02_err_recovered, label %MultipleDefer_state_02_err_propagate

MultipleDefer_state_02_ready_cont:                ; preds = %MultipleDefer_state_02_ready
  %239 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %230, 1
  %240 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  store i64 %239, ptr %240, align 4
  %241 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  store ptr %217, ptr %241, align 8
  %242 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  store ptr %219, ptr %242, align 8
  %243 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  store i64 %223, ptr %243, align 4
  store ptr null, ptr %41, align 8
  %244 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %245 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %245, ptr %244, align 8
  %246 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %246, align 1
  br label %MultipleDefer_state_03

MultipleDefer_state_02_err_recovered:             ; preds = %MultipleDefer_state_02_err
  %247 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %247, align 1
  %248 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 11
  %249 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %248, align 8
  store { ptr, ptr } zeroinitializer, ptr %248, align 8
  %250 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 12
  %251 = load i64, ptr %250, align 4
  %252 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %253 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %252)
  %254 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %252, 0
  %255 = getelementptr ptr, ptr %254, i64 4
  %256 = load ptr, ptr %255, align 8
  %257 = insertvalue { ptr, ptr } undef, ptr %256, 0
  %258 = insertvalue { ptr, ptr } %257, ptr %253, 1
  %259 = extractvalue { ptr, ptr } %258, 1
  %260 = extractvalue { ptr, ptr } %258, 0
  %261 = call %"github.com/goplus/llgo/async.Poll[int]" %260(ptr %259, ptr null)
  %262 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %261, 1
  %263 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 12
  store i64 %262, ptr %263, align 4
  %264 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %262, 1
  %265 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %264, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %265

MultipleDefer_state_02_err_propagate:             ; preds = %MultipleDefer_state_02_err
  %266 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %266, align 1
  %267 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 11
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %232, ptr %267, align 8
  %268 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %232, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %268

MultipleDefer_state_03_init:                      ; preds = %MultipleDefer_state_03
  %269 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %270 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %269, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %270, ptr %2, align 8
  %271 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %272 = load ptr, ptr %271, align 8
  %273 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %274 = load ptr, ptr %273, align 8
  %275 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %276 = load i64, ptr %275, align 4
  %277 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  %278 = load i64, ptr %277, align 4
  %279 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource"(ptr %274)
  store ptr %279, ptr %54, align 8
  br label %MultipleDefer_state_03_poll

MultipleDefer_state_03_poll:                      ; preds = %MultipleDefer_state_03_init, %MultipleDefer_state_03
  %280 = load ptr, ptr %54, align 8
  %281 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %280, ptr %1)
  %282 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %281, 0
  br i1 %282, label %MultipleDefer_state_03_ready, label %MultipleDefer_state_03_pending

MultipleDefer_state_03_ready:                     ; preds = %MultipleDefer_state_03_poll
  %283 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %281, 2
  %284 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %283, { ptr, ptr } zeroinitializer)
  %285 = xor i1 %284, true
  br i1 %285, label %MultipleDefer_state_03_err, label %MultipleDefer_state_03_ready_cont

MultipleDefer_state_03_pending:                   ; preds = %MultipleDefer_state_03_poll
  %286 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %287 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %287, ptr %286, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

MultipleDefer_state_03_err:                       ; preds = %MultipleDefer_state_03_ready
  %288 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 10
  %289 = call i1 @"github.com/goplus/llgo/async.(*DeferState).DoPanic"(ptr %288, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %283)
  br i1 %289, label %MultipleDefer_state_03_err_recovered, label %MultipleDefer_state_03_err_propagate

MultipleDefer_state_03_ready_cont:                ; preds = %MultipleDefer_state_03_ready
  %290 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %281, 1
  %291 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  store i64 %290, ptr %291, align 4
  %292 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  store ptr %272, ptr %292, align 8
  %293 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  store ptr %274, ptr %293, align 8
  %294 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  store i64 %276, ptr %294, align 4
  store ptr null, ptr %54, align 8
  %295 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %296 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %296, ptr %295, align 8
  %297 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %297, align 1
  br label %MultipleDefer_state_04

MultipleDefer_state_03_err_recovered:             ; preds = %MultipleDefer_state_03_err
  %298 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %298, align 1
  %299 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 11
  %300 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %299, align 8
  store { ptr, ptr } zeroinitializer, ptr %299, align 8
  %301 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 12
  %302 = load i64, ptr %301, align 4
  %303 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %304 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %303)
  %305 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %303, 0
  %306 = getelementptr ptr, ptr %305, i64 4
  %307 = load ptr, ptr %306, align 8
  %308 = insertvalue { ptr, ptr } undef, ptr %307, 0
  %309 = insertvalue { ptr, ptr } %308, ptr %304, 1
  %310 = extractvalue { ptr, ptr } %309, 1
  %311 = extractvalue { ptr, ptr } %309, 0
  %312 = call %"github.com/goplus/llgo/async.Poll[int]" %311(ptr %310, ptr null)
  %313 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %312, 1
  %314 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 12
  store i64 %313, ptr %314, align 4
  %315 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %313, 1
  %316 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %315, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %316

MultipleDefer_state_03_err_propagate:             ; preds = %MultipleDefer_state_03_err
  %317 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %317, align 1
  %318 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 11
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %283, ptr %318, align 8
  %319 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %283, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %319
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
  %37 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 8
  store i64 %30, ptr %38, align 4
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 7
  %40 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %39, align 8
  store { ptr, ptr } zeroinitializer, ptr %39, align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %42 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %42, ptr %41, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %43, align 1
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 8
  %45 = load i64, ptr %44, align 4
  %46 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %45, 1
  %47 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %46, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %47

SimpleDefer_state_03:                             ; preds = %SimpleDefer_entry
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %49 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %48, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %49, ptr %2, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 2
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 3
  %53 = load i64, ptr %52, align 4
  %54 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 7
  %56 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %55, align 8
  store { ptr, ptr } zeroinitializer, ptr %55, align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %58 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %58, ptr %57, align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %59, align 1
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 8
  %61 = load i64, ptr %60, align 4
  %62 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %61, 1
  %63 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %62, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %63

SimpleDefer_state_done:                           ; preds = %SimpleDefer_entry
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 7
  %65 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %64, align 8
  %66 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %65, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %66

SimpleDefer_state_unreach:                        ; preds = %SimpleDefer_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_7:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

SimpleDefer_state_00_init:                        ; preds = %SimpleDefer_state_00
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %68 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %67, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %68, ptr %2, align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 2
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 3
  %72 = load i64, ptr %71, align 4
  %73 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource"(i64 1)
  store ptr %73, ptr %11, align 8
  br label %SimpleDefer_state_00_poll

SimpleDefer_state_00_poll:                        ; preds = %SimpleDefer_state_00_init, %SimpleDefer_state_00
  %74 = load ptr, ptr %11, align 8
  %75 = call %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll"(ptr %74, ptr %1)
  %76 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %75, 0
  br i1 %76, label %SimpleDefer_state_00_ready, label %SimpleDefer_state_00_pending

SimpleDefer_state_00_ready:                       ; preds = %SimpleDefer_state_00_poll
  %77 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %75, 2
  %78 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %77, { ptr, ptr } zeroinitializer)
  %79 = xor i1 %78, true
  br i1 %79, label %SimpleDefer_state_00_err, label %SimpleDefer_state_00_ready_cont

SimpleDefer_state_00_pending:                     ; preds = %SimpleDefer_state_00_poll
  %80 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %81 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %81, ptr %80, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

SimpleDefer_state_00_err:                         ; preds = %SimpleDefer_state_00_ready
  %82 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 6
  %83 = call i1 @"github.com/goplus/llgo/async.(*DeferState).DoPanic"(ptr %82, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %77)
  br i1 %83, label %SimpleDefer_state_00_err_recovered, label %SimpleDefer_state_00_err_propagate

SimpleDefer_state_00_ready_cont:                  ; preds = %SimpleDefer_state_00_ready
  %84 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %75, 1
  %85 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 2
  store ptr %84, ptr %85, align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 3
  store i64 %72, ptr %86, align 4
  store ptr null, ptr %11, align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %88 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %88, ptr %87, align 8
  %89 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %89, align 1
  br label %SimpleDefer_state_01

SimpleDefer_state_00_err_recovered:               ; preds = %SimpleDefer_state_00_err
  %90 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %90, align 1
  %91 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 7
  %92 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %91, align 8
  store { ptr, ptr } zeroinitializer, ptr %91, align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 8
  %94 = load i64, ptr %93, align 4
  %95 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %96 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %95)
  %97 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %95, 0
  %98 = getelementptr ptr, ptr %97, i64 4
  %99 = load ptr, ptr %98, align 8
  %100 = insertvalue { ptr, ptr } undef, ptr %99, 0
  %101 = insertvalue { ptr, ptr } %100, ptr %96, 1
  %102 = extractvalue { ptr, ptr } %101, 1
  %103 = extractvalue { ptr, ptr } %101, 0
  %104 = call %"github.com/goplus/llgo/async.Poll[int]" %103(ptr %102, ptr null)
  %105 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %104, 1
  %106 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 8
  store i64 %105, ptr %106, align 4
  %107 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %105, 1
  %108 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %107, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %108

SimpleDefer_state_00_err_propagate:               ; preds = %SimpleDefer_state_00_err
  %109 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %109, align 1
  %110 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 7
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %77, ptr %110, align 8
  %111 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %77, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %111

SimpleDefer_state_01_init:                        ; preds = %SimpleDefer_state_01
  %112 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %113 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %112, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %113, ptr %2, align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 2
  %115 = load ptr, ptr %114, align 8
  %116 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 3
  %117 = load i64, ptr %116, align 4
  %118 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 6
  %119 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %120 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %119, i32 0, i32 0
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testpull/defer.(*Resource).Close", ptr null }, ptr %120, align 8
  %121 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %119, i32 0, i32 1
  store ptr %115, ptr %121, align 8
  call void @"github.com/goplus/llgo/async.(*DeferState).PushDefer"(ptr %118, { ptr, ptr } { ptr @"__llgo_stub.__llgo_defer_wrap$github_com_goplus_llgo_cl__testpull_defer_SimpleDefer$1", ptr null }, ptr %119)
  %122 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource"(ptr %115)
  store ptr %122, ptr %20, align 8
  br label %SimpleDefer_state_01_poll

SimpleDefer_state_01_poll:                        ; preds = %SimpleDefer_state_01_init, %SimpleDefer_state_01
  %123 = load ptr, ptr %20, align 8
  %124 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %123, ptr %1)
  %125 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %124, 0
  br i1 %125, label %SimpleDefer_state_01_ready, label %SimpleDefer_state_01_pending

SimpleDefer_state_01_ready:                       ; preds = %SimpleDefer_state_01_poll
  %126 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %124, 2
  %127 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %126, { ptr, ptr } zeroinitializer)
  %128 = xor i1 %127, true
  br i1 %128, label %SimpleDefer_state_01_err, label %SimpleDefer_state_01_ready_cont

SimpleDefer_state_01_pending:                     ; preds = %SimpleDefer_state_01_poll
  %129 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %130 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %130, ptr %129, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

SimpleDefer_state_01_err:                         ; preds = %SimpleDefer_state_01_ready
  %131 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 6
  %132 = call i1 @"github.com/goplus/llgo/async.(*DeferState).DoPanic"(ptr %131, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %126)
  br i1 %132, label %SimpleDefer_state_01_err_recovered, label %SimpleDefer_state_01_err_propagate

SimpleDefer_state_01_ready_cont:                  ; preds = %SimpleDefer_state_01_ready
  %133 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %124, 1
  %134 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 3
  store i64 %133, ptr %134, align 4
  %135 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 2
  store ptr %115, ptr %135, align 8
  store ptr null, ptr %20, align 8
  %136 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %137 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %137, ptr %136, align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %138, align 1
  br label %SimpleDefer_state_02

SimpleDefer_state_01_err_recovered:               ; preds = %SimpleDefer_state_01_err
  %139 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %139, align 1
  %140 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 7
  %141 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %140, align 8
  store { ptr, ptr } zeroinitializer, ptr %140, align 8
  %142 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 8
  %143 = load i64, ptr %142, align 4
  %144 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %145 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %144)
  %146 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %144, 0
  %147 = getelementptr ptr, ptr %146, i64 4
  %148 = load ptr, ptr %147, align 8
  %149 = insertvalue { ptr, ptr } undef, ptr %148, 0
  %150 = insertvalue { ptr, ptr } %149, ptr %145, 1
  %151 = extractvalue { ptr, ptr } %150, 1
  %152 = extractvalue { ptr, ptr } %150, 0
  %153 = call %"github.com/goplus/llgo/async.Poll[int]" %152(ptr %151, ptr null)
  %154 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %153, 1
  %155 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 8
  store i64 %154, ptr %155, align 4
  %156 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %154, 1
  %157 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %156, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %157

SimpleDefer_state_01_err_propagate:               ; preds = %SimpleDefer_state_01_err
  %158 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %158, align 1
  %159 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 7
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %126, ptr %159, align 8
  %160 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %126, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %160
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
