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
%"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State" = type { i8, i1, %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr, i64, ptr, ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1, i1, i64 }
%"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" = type { i1, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.eface" }
%"github.com/goplus/llgo/cl/_testpull/defer.Resource" = type { i64 }
%"github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" = type { { ptr, ptr }, i1, i1, ptr }
%"github.com/goplus/llgo/async.AsyncFuture[int]" = type { { ptr, ptr }, i1, i1, i64 }
%"github.com/goplus/llgo/async.ReadyFuture[int]" = type { i64 }
%"github.com/goplus/llgo/async.Context" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }
%"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State" = type { i8, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface", i64, i64, i1, ptr, ptr, ptr, i64, ptr, ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1, i1, i64 }
%"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State" = type { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1, i1, i64 }
%"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State" = type { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr, i64, ptr, ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1, i1, i64 }

@0 = private unnamed_addr constant [16 x i8] c"ConditionalDefer", align 1
@1 = private unnamed_addr constant [8 x i8] c"dispatch", align 1
@2 = private unnamed_addr constant [5 x i8] c"enter", align 1
@3 = private unnamed_addr constant [7 x i8] c"pending", align 1
@4 = private unnamed_addr constant [5 x i8] c"ready", align 1
@"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -103283099, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Await", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Poll", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Poll" }] }, align 8
@5 = private unnamed_addr constant [22 x i8] c"async.ReadyFuture[int]", align 1
@"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1814719306, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@6 = private unnamed_addr constant [28 x i8] c"github.com/goplus/llgo/async", align 1
@7 = private unnamed_addr constant [5 x i8] c"value", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 3 }, ptr @"*_llgo_int" }, align 8
@8 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"github.com/goplus/llgo/cl/_testpull/defer.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@9 = private unnamed_addr constant [5 x i8] c"Await", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2131144854, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 10 }, ptr @"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out", i64 1, i64 1 } }, align 8
@10 = private unnamed_addr constant [10 x i8] c"func() int", align 1
@"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1805835775, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 10 }, ptr null }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@11 = private unnamed_addr constant [4 x i8] c"Poll", align 1
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1655717054, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 36 }, ptr @"*_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$out", i64 1, i64 1 } }, align 8
@12 = private unnamed_addr constant [36 x i8] c"func(*async.Context) async.Poll[int]", align 1
@"*_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -62824656, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 36 }, ptr null }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }, align 8
@"*_llgo_github.com/goplus/llgo/async.Context" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -808118033, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 13 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Context" }, align 8
@13 = private unnamed_addr constant [13 x i8] c"async.Context", align 1
@"_llgo_github.com/goplus/llgo/async.Context" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 0, i32 29200871, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Context" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 13 }, ptr @"*_llgo_github.com/goplus/llgo/async.Context" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$Re9uCNpaPdvqJtnZYej5NZ8aMgZjb-_ftN8ogfRqy78$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@14 = private unnamed_addr constant [5 x i8] c"Waker", align 1
@"_llgo_github.com/goplus/llgo/async.Waker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -2133419533, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 11 }, ptr @"*_llgo_github.com/goplus/llgo/async.Waker" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$5udCHZ6xl-fBE2F9apjWV2qrxMb4_QYfwdoy0QD1D8c$imethods", i64 1, i64 1 } }, align 8
@15 = private unnamed_addr constant [11 x i8] c"async.Waker", align 1
@"*_llgo_github.com/goplus/llgo/async.Waker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 504672852, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 11 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Waker" }, align 8
@16 = private unnamed_addr constant [41 x i8] c"github.com/goplus/llgo/cl/_testpull/defer", align 1
@17 = private unnamed_addr constant [4 x i8] c"Wake", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@18 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@"_llgo_iface$5udCHZ6xl-fBE2F9apjWV2qrxMb4_QYfwdoy0QD1D8c$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 4 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }], align 8
@19 = private unnamed_addr constant [8 x i8] c"hasWaker", align 1
@_llgo_bool = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 554183389, i8 12, i8 1, i8 1, i8 33, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 4 }, ptr @"*_llgo_bool" }, align 8
@20 = private unnamed_addr constant [4 x i8] c"bool", align 1
@"*_llgo_bool" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1896950390, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 4 }, ptr null }, ptr @_llgo_bool }, align 8
@"github.com/goplus/llgo/cl/_testpull/defer.struct$Re9uCNpaPdvqJtnZYej5NZ8aMgZjb-_ftN8ogfRqy78$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/async.Waker", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 8 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/async.Context"], align 8
@"_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 801809575, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 15 }, ptr @"*_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$M9E5HRdqyc11Zqvq07yhy6frK_fAyRGIc35bZKl9nrs$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error", ptr @"github.com/goplus/llgo/async.Poll[int].Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError", ptr @"github.com/goplus/llgo/async.Poll[int].HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.Poll[int].IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.Poll[int].Value" }] }, align 8
@21 = private unnamed_addr constant [15 x i8] c"async.Poll[int]", align 1
@"*_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -920093333, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 15 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value" }] }, align 8
@22 = private unnamed_addr constant [5 x i8] c"Error", align 1
@"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1398528794, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 19 }, ptr @"*_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8$out", i64 1, i64 1 } }, align 8
@23 = private unnamed_addr constant [19 x i8] c"func() interface {}", align 1
@"*_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1160547289, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 19 }, ptr null }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" }, align 8
@_llgo_any = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1376530322, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 12 }, ptr @"*_llgo_any" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@24 = private unnamed_addr constant [12 x i8] c"interface {}", align 1
@"*_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1741196194, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 12 }, ptr null }, ptr @_llgo_any }, align 8
@"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8$out" = weak_odr constant [1 x ptr] [ptr @_llgo_any], align 8
@25 = private unnamed_addr constant [8 x i8] c"HasError", align 1
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -541022001, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 11 }, ptr @"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out", i64 1, i64 1 } }, align 8
@26 = private unnamed_addr constant [11 x i8] c"func() bool", align 1
@"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -367308996, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 11 }, ptr null }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, align 8
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out" = weak_odr constant [1 x ptr] [ptr @_llgo_bool], align 8
@27 = private unnamed_addr constant [7 x i8] c"IsReady", align 1
@28 = private unnamed_addr constant [5 x i8] c"Value", align 1
@29 = private unnamed_addr constant [3 x i8] c"err", align 1
@"github.com/goplus/llgo/cl/_testpull/defer.struct$M9E5HRdqyc11Zqvq07yhy6frK_fAyRGIc35bZKl9nrs$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @_llgo_bool, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 3 }, ptr @_llgo_any, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]"], align 8
@"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 968294533, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 50 }, ptr @"*_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0$imethods", i64 1, i64 1 } }, align 8
@30 = private unnamed_addr constant [50 x i8] c"interface { Poll(*async.Context) async.Poll[int] }", align 1
@"*_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1655281012, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 50 }, ptr null }, ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" }, align 8
@"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }], align 8
@31 = private unnamed_addr constant [4 x i8] c"done", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 663533385, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 26 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*ConditionalDefer$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*ConditionalDefer$State).Poll" }] }, align 8
@32 = private unnamed_addr constant [26 x i8] c"foo.ConditionalDefer$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 96, i64 64, i32 -92085647, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 26 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$rU3r4uV_uSMJfGtQaaRZ-mLltEEEEhZLyvJ3XhnWDPQ$fields", i64 12, i64 12 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@33 = private unnamed_addr constant [5 x i8] c"state", align 1
@_llgo_int8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 1444672578, i8 12, i8 1, i8 1, i8 35, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @"*_llgo_int8" }, align 8
@34 = private unnamed_addr constant [4 x i8] c"int8", align 1
@"*_llgo_int8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1399554408, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr null }, ptr @_llgo_int8 }, align 8
@35 = private unnamed_addr constant [6 x i8] c"param0", align 1
@36 = private unnamed_addr constant [4 x i8] c"var0", align 1
@"_llgo_github.com/goplus/llgo/async.Future[int]" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1503177044, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 17 }, ptr @"*_llgo_github.com/goplus/llgo/async.Future[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0$imethods", i64 1, i64 1 } }, align 8
@37 = private unnamed_addr constant [17 x i8] c"async.Future[int]", align 1
@"*_llgo_github.com/goplus/llgo/async.Future[int]" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 934108082, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 17 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]" }, align 8
@38 = private unnamed_addr constant [4 x i8] c"var1", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 948368506, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 12 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 5 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*Resource).Close", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*Resource).Close" }] }, align 8
@39 = private unnamed_addr constant [12 x i8] c"foo.Resource", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1664976224, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 12 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$ez3MeZvA9D8F8Wht1tbuFMqI0WKAf0EmqyhZ0-FECas$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@40 = private unnamed_addr constant [2 x i8] c"id", align 1
@"github.com/goplus/llgo/cl/_testpull/defer.struct$ez3MeZvA9D8F8Wht1tbuFMqI0WKAf0EmqyhZ0-FECas$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 2 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@41 = private unnamed_addr constant [5 x i8] c"Close", align 1
@42 = private unnamed_addr constant [4 x i8] c"var2", align 1
@43 = private unnamed_addr constant [4 x i8] c"sub0", align 1
@"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1886666427, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 70 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Await", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll" }] }, align 8
@44 = private unnamed_addr constant [70 x i8] c"async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", align 1
@"_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 -2008577653, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 70 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$yHxrLaDf8dGjl-j7DMKFOzKYTCmfrbXkRsiAu0cRnm0$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@45 = private unnamed_addr constant [2 x i8] c"fn", align 1
@"_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1200775160, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 97 }, ptr @"*_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8$fields", i64 2, i64 2 } }, align 8
@46 = private unnamed_addr constant [97 x i8] c"struct { $f func(struct { $f func(*foo.Resource); $data unsafe.Pointer }); $data unsafe.Pointer }", align 1
@"*_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1292151995, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 97 }, ptr null }, ptr @"_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8" }, align 8
@47 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1152223553, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 61 }, ptr @"*_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@48 = private unnamed_addr constant [61 x i8] c"func(struct { $f func(*foo.Resource); $data unsafe.Pointer })", align 1
@"*_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2059840044, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 61 }, ptr null }, ptr @"_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk" }, align 8
@"_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -968588264, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 55 }, ptr @"*_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M$fields", i64 2, i64 2 } }, align 8
@49 = private unnamed_addr constant [55 x i8] c"struct { $f func(*foo.Resource); $data unsafe.Pointer }", align 1
@"*_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1753174139, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 55 }, ptr null }, ptr @"_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M" }, align 8
@"_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1954501058, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 19 }, ptr @"*_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@50 = private unnamed_addr constant [19 x i8] c"func(*foo.Resource)", align 1
@"*_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2096868712, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 19 }, ptr null }, ptr @"_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8" }, align 8
@"_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource"], align 8
@51 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@52 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 2 }, ptr @"_llgo_func$CVTwDUUEgOzLjosm3nkMl07Qh28lMv91f6dc4QowZj8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_closure$yo5xzH9PyrViEfyy-pDnyUEEinlFiJ50KbvRn3ubQ3M"], align 8
@"_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 2 }, ptr @"_llgo_func$vv_1nZ1l-yctg2YVr9u1L38vOdJ60xGI4n5RAPoAFGk", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@53 = private unnamed_addr constant [7 x i8] c"started", align 1
@"github.com/goplus/llgo/cl/_testpull/defer.struct$yHxrLaDf8dGjl-j7DMKFOzKYTCmfrbXkRsiAu0cRnm0$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 2 }, ptr @"_llgo_closure$ECToUMfM36L3lDZP4rfTKxyP-IriwOibJlKLlN8pYh8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 7 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @_llgo_bool, i64 17, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -247520586, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 20 }, ptr @"*_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE$out", i64 1, i64 1 } }, align 8
@54 = private unnamed_addr constant [20 x i8] c"func() *foo.Resource", align 1
@"*_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -873504099, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 20 }, ptr null }, ptr @"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE" }, align 8
@"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE$out" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource"], align 8
@"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2030322516, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 84 }, ptr @"*_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA$out", i64 1, i64 1 } }, align 8
@55 = private unnamed_addr constant [84 x i8] c"func(*async.Context) async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", align 1
@"*_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1084380263, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 84 }, ptr null }, ptr @"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA" }, align 8
@"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/async.Context"], align 8
@"_llgo_github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 1693813997, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 63 }, ptr @"*_llgo_github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$EkmiDKJC-fqoNXricL5fDFuVyHAn72DRRPybohR3dTM$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Error", ptr @"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource].Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).HasError", ptr @"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource].HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).IsReady", ptr @"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource].IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Value", ptr @"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource].Value" }] }, align 8
@56 = private unnamed_addr constant [63 x i8] c"async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", align 1
@"*_llgo_github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -887888728, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 63 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Error", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).HasError", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).IsReady", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @"_llgo_func$OAkuM8v0g85aAhczRzd8KfWjQOXss7uNGsH24lVdFPE", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Value", ptr @"github.com/goplus/llgo/async.(*Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Value" }] }, align 8
@"github.com/goplus/llgo/cl/_testpull/defer.struct$EkmiDKJC-fqoNXricL5fDFuVyHAn72DRRPybohR3dTM$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @_llgo_bool, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 3 }, ptr @_llgo_any, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$kDqXpDdEt6uwZIf5Y86sdIDFCHhMEZN35n7xhGuJKTA$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]"], align 8
@57 = private unnamed_addr constant [4 x i8] c"sub1", align 1
@"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 964362133, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll" }] }, align 8
@58 = private unnamed_addr constant [22 x i8] c"async.AsyncFuture[int]", align 1
@"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 0, i32 1769159236, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1213993089, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 87 }, ptr @"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields", i64 2, i64 2 } }, align 8
@59 = private unnamed_addr constant [87 x i8] c"struct { $f func(struct { $f func(int); $data unsafe.Pointer }); $data unsafe.Pointer }", align 1
@"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1666834553, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 87 }, ptr null }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, align 8
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2009615728, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 51 }, ptr @"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@60 = private unnamed_addr constant [51 x i8] c"func(struct { $f func(int); $data unsafe.Pointer })", align 1
@"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1512208703, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 51 }, ptr null }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1556934939, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 45 }, ptr @"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields", i64 2, i64 2 } }, align 8
@61 = private unnamed_addr constant [45 x i8] c"struct { $f func(int); $data unsafe.Pointer }", align 1
@"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 364872269, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 45 }, ptr null }, ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -637187458, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 9 }, ptr @"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@62 = private unnamed_addr constant [9 x i8] c"func(int)", align 1
@"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 735356155, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 9 }, ptr null }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 2 }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM"], align 8
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 2 }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/defer.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 2 }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 7 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @_llgo_bool, i64 17, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@63 = private unnamed_addr constant [9 x i8] c"deferHead", align 1
@64 = private unnamed_addr constant [10 x i8] c"panicValue", align 1
@65 = private unnamed_addr constant [11 x i8] c"isPanicking", align 1
@66 = private unnamed_addr constant [9 x i8] c"recovered", align 1
@67 = private unnamed_addr constant [11 x i8] c"resultValue", align 1
@"github.com/goplus/llgo/cl/_testpull/defer.struct$rU3r4uV_uSMJfGtQaaRZ-mLltEEEEhZLyvJ3XhnWDPQ$fields" = weak_odr constant [12 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @_llgo_bool, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 9 }, ptr @_llgo_Pointer, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 10 }, ptr @_llgo_any, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 11 }, ptr @_llgo_bool, i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 9 }, ptr @_llgo_bool, i64 81, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 11 }, ptr @_llgo_int, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@68 = private unnamed_addr constant [9 x i8] c"LoopDefer", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1432003878, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 19 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*LoopDefer$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*LoopDefer$State).Poll" }] }, align 8
@69 = private unnamed_addr constant [19 x i8] c"foo.LoopDefer$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 144, i64 112, i32 313239395, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 19 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$aJFkaAFxDzzARrRNJl4vQtGfCaacdFdp9YfHsRXrOh8$fields", i64 17, i64 17 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@70 = private unnamed_addr constant [4 x i8] c"var3", align 1
@71 = private unnamed_addr constant [4 x i8] c"var4", align 1
@72 = private unnamed_addr constant [4 x i8] c"var5", align 1
@73 = private unnamed_addr constant [4 x i8] c"var6", align 1
@74 = private unnamed_addr constant [4 x i8] c"var7", align 1
@"github.com/goplus/llgo/cl/_testpull/defer.struct$aJFkaAFxDzzARrRNJl4vQtGfCaacdFdp9YfHsRXrOh8$fields" = weak_odr constant [17 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 4 }, ptr @_llgo_bool, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource", i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 4 }, ptr @_llgo_int, i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 9 }, ptr @_llgo_Pointer, i64 104, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 10 }, ptr @_llgo_any, i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 11 }, ptr @_llgo_bool, i64 128, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 9 }, ptr @_llgo_bool, i64 129, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 11 }, ptr @_llgo_int, i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@75 = private unnamed_addr constant [13 x i8] c"MultipleDefer", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1664288224, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 23 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*MultipleDefer$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*MultipleDefer$State).Poll" }] }, align 8
@76 = private unnamed_addr constant [23 x i8] c"foo.MultipleDefer$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 128, i64 96, i32 701184026, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 23 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$huFY0lQLsZMA1Jpthr4Bs0qE-V6qM9hDGEL2_UJCxmE$fields", i64 15, i64 15 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@77 = private unnamed_addr constant [4 x i8] c"sub2", align 1
@78 = private unnamed_addr constant [4 x i8] c"sub3", align 1
@"github.com/goplus/llgo/cl/_testpull/defer.struct$huFY0lQLsZMA1Jpthr4Bs0qE-V6qM9hDGEL2_UJCxmE$fields" = weak_odr constant [15 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource", i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 9 }, ptr @_llgo_Pointer, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 10 }, ptr @_llgo_any, i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 11 }, ptr @_llgo_bool, i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 9 }, ptr @_llgo_bool, i64 113, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 11 }, ptr @_llgo_int, i64 120, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@79 = private unnamed_addr constant [11 x i8] c"SimpleDefer", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1442532042, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 21 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*SimpleDefer$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/defer.(*SimpleDefer$State).Poll" }] }, align 8
@80 = private unnamed_addr constant [21 x i8] c"foo.SimpleDefer$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 96, i64 64, i32 -822773017, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 21 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/defer.struct$sR8pAeC9tfjZHmA6PUBO7Y88rl850OxlDLzK1hSpFWY$fields", i64 11, i64 11 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/defer.struct$sR8pAeC9tfjZHmA6PUBO7Y88rl850OxlDLzK1hSpFWY$fields" = weak_odr constant [11 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.Resource", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 9 }, ptr @_llgo_Pointer, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 10 }, ptr @_llgo_any, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 11 }, ptr @_llgo_bool, i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 9 }, ptr @_llgo_bool, i64 81, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 11 }, ptr @_llgo_int, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/defer.init$guard" = global i1 false, align 1
@81 = private unnamed_addr constant [45 x i8] c"Await() should be transformed by the compiler", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 6 }, ptr @"*_llgo_string" }, align 8
@82 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 6 }, ptr null }, ptr @_llgo_string }, align 8

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/defer.(*ConditionalDefer$State).Poll"(ptr %0, ptr %1) {
ConditionalDefer_entry:
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  %4 = load i8, ptr %3, align 1
  %5 = sext i8 %4 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 16 }, i64 %5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
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
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %7 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %6, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, ptr %2, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 1
  %9 = load i1, ptr %8, align 1
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 4
  %13 = load i64, ptr %12, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 16 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %15 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %15, ptr %14, align 8
  br i1 %9, label %ConditionalDefer_state_00_true, label %ConditionalDefer_state_00_false

ConditionalDefer_state_01:                        ; preds = %ConditionalDefer_state_00_true, %ConditionalDefer_entry
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %17 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %16, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %17, ptr %2, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 1
  %19 = load i1, ptr %18, align 1
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 4
  %23 = load i64, ptr %22, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 16 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 5
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %ConditionalDefer_state_01_init, label %ConditionalDefer_state_01_poll

ConditionalDefer_state_02:                        ; preds = %ConditionalDefer_state_01_ready, %ConditionalDefer_entry
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %28 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %27, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %28, ptr %2, align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 1
  %30 = load i1, ptr %29, align 1
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 4
  %34 = load i64, ptr %33, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 16 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 6
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %ConditionalDefer_state_02_init, label %ConditionalDefer_state_02_poll

ConditionalDefer_state_03:                        ; preds = %ConditionalDefer_state_02_ready, %ConditionalDefer_entry
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %39 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %38, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %39, ptr %2, align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 1
  %41 = load i1, ptr %40, align 1
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 3
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 4
  %45 = load i64, ptr %44, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 16 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 4
  %47 = load i64, ptr %46, align 4
  %48 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %45)
  %49 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %49, 0
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %50, ptr %48, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %51, ptr %2, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 7
  call void @"github.com/goplus/llgo/async.(*DeferState).RunDefers"(ptr %52)
  %53 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 11
  store i64 %47, ptr %54, align 4
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %56 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %56, ptr %55, align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %57, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 16 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 11
  %59 = load i64, ptr %58, align 4
  %60 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %59, 1
  %61 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %60, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %61

ConditionalDefer_state_04:                        ; preds = %ConditionalDefer_state_00_false, %ConditionalDefer_entry
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %63 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %62, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %63, ptr %2, align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 1
  %65 = load i1, ptr %64, align 1
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 3
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 4
  %69 = load i64, ptr %68, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 16 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %70 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 0)
  %71 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %71, 0
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %72, ptr %70, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %73, ptr %2, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 7
  call void @"github.com/goplus/llgo/async.(*DeferState).RunDefers"(ptr %74)
  %75 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 11
  store i64 0, ptr %76, align 4
  %77 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %78 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %78, ptr %77, align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %79, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 16 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %80 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 11
  %81 = load i64, ptr %80, align 4
  %82 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %81, 1
  %83 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %82, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %83

ConditionalDefer_state_05:                        ; preds = %ConditionalDefer_entry
  %84 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %85 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %84, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %85, ptr %2, align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 1
  %87 = load i1, ptr %86, align 1
  %88 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 3
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 4
  %91 = load i64, ptr %90, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 16 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %92 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %94 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %94, ptr %93, align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %95, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 16 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %96 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 11
  %97 = load i64, ptr %96, align 4
  %98 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %97, 1
  %99 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %98, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %99

ConditionalDefer_state_done:                      ; preds = %ConditionalDefer_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 16 }, i64 6, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, i1 false, i1 true)
  %100 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 11
  %101 = load i64, ptr %100, align 4
  %102 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %101, 1
  %103 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %102, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %103

ConditionalDefer_state_unreach:                   ; preds = %ConditionalDefer_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_9:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

ConditionalDefer_state_00_true:                   ; preds = %ConditionalDefer_state_00
  %104 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  store ptr %2, ptr %104, align 8
  %105 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %106 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %106, ptr %105, align 8
  %107 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %107, align 1
  br label %ConditionalDefer_state_01

ConditionalDefer_state_00_false:                  ; preds = %ConditionalDefer_state_00
  %108 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  store ptr %2, ptr %108, align 8
  %109 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %110 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %110, ptr %109, align 8
  %111 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %111, align 1
  br label %ConditionalDefer_state_04

ConditionalDefer_state_01_init:                   ; preds = %ConditionalDefer_state_01
  %112 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 1
  %113 = load i1, ptr %112, align 1
  %114 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %115 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %114, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %115, ptr %2, align 8
  %116 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 3
  %117 = load ptr, ptr %116, align 8
  %118 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 4
  %119 = load i64, ptr %118, align 4
  %120 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource"(i64 1)
  store ptr %120, ptr %24, align 8
  br label %ConditionalDefer_state_01_poll

ConditionalDefer_state_01_poll:                   ; preds = %ConditionalDefer_state_01_init, %ConditionalDefer_state_01
  %121 = load ptr, ptr %24, align 8
  %122 = call %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll"(ptr %121, ptr %1)
  %123 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %122, 0
  br i1 %123, label %ConditionalDefer_state_01_ready, label %ConditionalDefer_state_01_pending

ConditionalDefer_state_01_ready:                  ; preds = %ConditionalDefer_state_01_poll
  %124 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %122, 1
  %125 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 3
  store ptr %124, ptr %125, align 8
  store ptr null, ptr %24, align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %127 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %127, ptr %126, align 8
  %128 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %128, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 16 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %ConditionalDefer_state_02

ConditionalDefer_state_01_pending:                ; preds = %ConditionalDefer_state_01_poll
  %129 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %130 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %130, ptr %129, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 16 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

ConditionalDefer_state_02_init:                   ; preds = %ConditionalDefer_state_02
  %131 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 1
  %132 = load i1, ptr %131, align 1
  %133 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %134 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %133, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %134, ptr %2, align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 3
  %136 = load ptr, ptr %135, align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 4
  %138 = load i64, ptr %137, align 4
  %139 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 7
  %140 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %141 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %140, i32 0, i32 0
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testpull/defer.(*Resource).Close", ptr null }, ptr %141, align 8
  %142 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %140, i32 0, i32 1
  store ptr %136, ptr %142, align 8
  call void @"github.com/goplus/llgo/async.(*DeferState).PushDefer"(ptr %139, { ptr, ptr } { ptr @"__llgo_stub.__llgo_defer_wrap$github_com_goplus_llgo_cl__testpull_defer_ConditionalDefer$1", ptr null }, ptr %140)
  %143 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource"(ptr %136)
  store ptr %143, ptr %35, align 8
  br label %ConditionalDefer_state_02_poll

ConditionalDefer_state_02_poll:                   ; preds = %ConditionalDefer_state_02_init, %ConditionalDefer_state_02
  %144 = load ptr, ptr %35, align 8
  %145 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %144, ptr %1)
  %146 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %145, 0
  br i1 %146, label %ConditionalDefer_state_02_ready, label %ConditionalDefer_state_02_pending

ConditionalDefer_state_02_ready:                  ; preds = %ConditionalDefer_state_02_poll
  %147 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %145, 1
  %148 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 4
  store i64 %147, ptr %148, align 4
  store ptr null, ptr %35, align 8
  %149 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %150 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %150, ptr %149, align 8
  %151 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %151, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 16 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %ConditionalDefer_state_03

ConditionalDefer_state_02_pending:                ; preds = %ConditionalDefer_state_02_poll
  %152 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State", ptr %0, i32 0, i32 2
  %153 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %153, ptr %152, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 16 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1, i1)

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
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 96)
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
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.ConditionalDefer$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define linkonce ptr @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Await"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 45 }, ptr %1, align 8
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
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 45 }, ptr %1, align 8
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

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/defer.(*LoopDefer$State).Poll"(ptr %0, ptr %1) {
LoopDefer_entry:
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  %4 = load i8, ptr %3, align 1
  %5 = sext i8 %4 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 9 }, i64 %5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
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
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %7 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %6, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, ptr %2, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 1
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  %13 = load i64, ptr %12, align 4
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 5
  %15 = load i1, ptr %14, align 1
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 6
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 7
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 8
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 9
  %23 = load i64, ptr %22, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 9 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %25 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %25, ptr %24, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  store i64 0, ptr %26, align 4
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  store i64 0, ptr %27, align 4
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  store ptr %2, ptr %28, align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %30 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %30, ptr %29, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %31, align 1
  br label %LoopDefer_state_01

LoopDefer_state_01:                               ; preds = %LoopDefer_state_04, %LoopDefer_state_00, %LoopDefer_entry
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %33 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %32, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %33, ptr %2, align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 1
  %35 = load i64, ptr %34, align 4
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  %39 = load i64, ptr %38, align 4
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 6
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 7
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 8
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 9
  %47 = load i64, ptr %46, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 9 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %48 = icmp slt i64 %39, %35
  %49 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 5
  store i1 %48, ptr %49, align 1
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %51 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %51, ptr %50, align 8
  br i1 %48, label %LoopDefer_state_01_true, label %LoopDefer_state_01_false

LoopDefer_state_02:                               ; preds = %LoopDefer_state_01_true, %LoopDefer_entry
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %53 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %52, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %53, ptr %2, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 1
  %55 = load i64, ptr %54, align 4
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %57 = load i64, ptr %56, align 4
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  %59 = load i64, ptr %58, align 4
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 5
  %61 = load i1, ptr %60, align 1
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 7
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 9
  %65 = load i64, ptr %64, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 9 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 10
  %67 = load ptr, ptr %66, align 8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %LoopDefer_state_02_init, label %LoopDefer_state_02_poll

LoopDefer_state_03:                               ; preds = %LoopDefer_state_02_ready, %LoopDefer_entry
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %70 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %69, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %70, ptr %2, align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 1
  %72 = load i64, ptr %71, align 4
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %74 = load i64, ptr %73, align 4
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  %76 = load i64, ptr %75, align 4
  %77 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 5
  %78 = load i1, ptr %77, align 1
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 7
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 9
  %82 = load i64, ptr %81, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 9 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 11
  %84 = load ptr, ptr %83, align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %LoopDefer_state_03_init, label %LoopDefer_state_03_poll

LoopDefer_state_04:                               ; preds = %LoopDefer_state_03_ready, %LoopDefer_entry
  %86 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %87 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %86, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %87, ptr %2, align 8
  %88 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 1
  %89 = load i64, ptr %88, align 4
  %90 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %91 = load i64, ptr %90, align 4
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  %93 = load i64, ptr %92, align 4
  %94 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 5
  %95 = load i1, ptr %94, align 1
  %96 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 7
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 9
  %99 = load i64, ptr %98, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 9 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %100 = add i64 %91, %99
  %101 = add i64 %93, 1
  %102 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %103 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %103, ptr %102, align 8
  %104 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  store i64 %100, ptr %104, align 4
  %105 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  store i64 %101, ptr %105, align 4
  %106 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource"(i64 %101)
  %107 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 6
  store ptr %106, ptr %107, align 8
  %108 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 7
  store ptr %97, ptr %108, align 8
  %109 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource"(ptr %97)
  %110 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 8
  store ptr %109, ptr %110, align 8
  %111 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 9
  store i64 %99, ptr %111, align 4
  %112 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %113 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %113, ptr %112, align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %114, align 1
  br label %LoopDefer_state_01

LoopDefer_state_05:                               ; preds = %LoopDefer_state_01_false, %LoopDefer_entry
  %115 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %116 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %115, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %116, ptr %2, align 8
  %117 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 1
  %118 = load i64, ptr %117, align 4
  %119 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %120 = load i64, ptr %119, align 4
  %121 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  %122 = load i64, ptr %121, align 4
  %123 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 5
  %124 = load i1, ptr %123, align 1
  %125 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 6
  %126 = load ptr, ptr %125, align 8
  %127 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 7
  %128 = load ptr, ptr %127, align 8
  %129 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 8
  %130 = load ptr, ptr %129, align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 9
  %132 = load i64, ptr %131, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 9 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %133 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %134 = load i64, ptr %133, align 4
  %135 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %120)
  %136 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %137 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %136, 0
  %138 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %137, ptr %135, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %138, ptr %2, align 8
  %139 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 12
  call void @"github.com/goplus/llgo/async.(*DeferState).RunDefers"(ptr %139)
  %140 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %141 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 16
  store i64 %134, ptr %141, align 4
  %142 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %143 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %143, ptr %142, align 8
  %144 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %144, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 9 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %145 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 16
  %146 = load i64, ptr %145, align 4
  %147 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %146, 1
  %148 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %147, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %148

LoopDefer_state_06:                               ; preds = %LoopDefer_entry
  %149 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %150 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %149, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %150, ptr %2, align 8
  %151 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 1
  %152 = load i64, ptr %151, align 4
  %153 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %154 = load i64, ptr %153, align 4
  %155 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  %156 = load i64, ptr %155, align 4
  %157 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 5
  %158 = load i1, ptr %157, align 1
  %159 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 6
  %160 = load ptr, ptr %159, align 8
  %161 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 7
  %162 = load ptr, ptr %161, align 8
  %163 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 8
  %164 = load ptr, ptr %163, align 8
  %165 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 9
  %166 = load i64, ptr %165, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 9 }, i64 6, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %167 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %168 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %169 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %169, ptr %168, align 8
  %170 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %170, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 9 }, i64 6, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %171 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 16
  %172 = load i64, ptr %171, align 4
  %173 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %172, 1
  %174 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %173, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %174

LoopDefer_state_done:                             ; preds = %LoopDefer_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 9 }, i64 7, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, i1 false, i1 true)
  %175 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 16
  %176 = load i64, ptr %175, align 4
  %177 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %176, 1
  %178 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %177, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %178

LoopDefer_state_unreach:                          ; preds = %LoopDefer_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_10:                                         ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

LoopDefer_state_01_true:                          ; preds = %LoopDefer_state_01
  %179 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 5
  store i1 %48, ptr %179, align 1
  %180 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %181 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %181, ptr %180, align 8
  %182 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %182, align 1
  br label %LoopDefer_state_02

LoopDefer_state_01_false:                         ; preds = %LoopDefer_state_01
  %183 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 5
  store i1 %48, ptr %183, align 1
  %184 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %185 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %185, ptr %184, align 8
  %186 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %186, align 1
  br label %LoopDefer_state_05

LoopDefer_state_02_init:                          ; preds = %LoopDefer_state_02
  %187 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 1
  %188 = load i64, ptr %187, align 4
  %189 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %190 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %189, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %190, ptr %2, align 8
  %191 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %192 = load i64, ptr %191, align 4
  %193 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  %194 = load i64, ptr %193, align 4
  %195 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 5
  %196 = load i1, ptr %195, align 1
  %197 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 7
  %198 = load ptr, ptr %197, align 8
  %199 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 9
  %200 = load i64, ptr %199, align 4
  %201 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource"(i64 %194)
  %202 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 6
  store ptr %201, ptr %202, align 8
  store ptr %201, ptr %66, align 8
  br label %LoopDefer_state_02_poll

LoopDefer_state_02_poll:                          ; preds = %LoopDefer_state_02_init, %LoopDefer_state_02
  %203 = load ptr, ptr %66, align 8
  %204 = call %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll"(ptr %203, ptr %1)
  %205 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %204, 0
  br i1 %205, label %LoopDefer_state_02_ready, label %LoopDefer_state_02_pending

LoopDefer_state_02_ready:                         ; preds = %LoopDefer_state_02_poll
  %206 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %204, 1
  %207 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 7
  store ptr %206, ptr %207, align 8
  store ptr null, ptr %66, align 8
  %208 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %209 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %209, ptr %208, align 8
  %210 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %210, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 9 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %LoopDefer_state_03

LoopDefer_state_02_pending:                       ; preds = %LoopDefer_state_02_poll
  %211 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %212 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %212, ptr %211, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 9 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

LoopDefer_state_03_init:                          ; preds = %LoopDefer_state_03
  %213 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 1
  %214 = load i64, ptr %213, align 4
  %215 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %216 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %215, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %216, ptr %2, align 8
  %217 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 3
  %218 = load i64, ptr %217, align 4
  %219 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 4
  %220 = load i64, ptr %219, align 4
  %221 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 5
  %222 = load i1, ptr %221, align 1
  %223 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 7
  %224 = load ptr, ptr %223, align 8
  %225 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 9
  %226 = load i64, ptr %225, align 4
  %227 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 12
  %228 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %229 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %228, i32 0, i32 0
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testpull/defer.(*Resource).Close", ptr null }, ptr %229, align 8
  %230 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %228, i32 0, i32 1
  store ptr %224, ptr %230, align 8
  call void @"github.com/goplus/llgo/async.(*DeferState).PushDefer"(ptr %227, { ptr, ptr } { ptr @"__llgo_stub.__llgo_defer_wrap$github_com_goplus_llgo_cl__testpull_defer_LoopDefer$1", ptr null }, ptr %228)
  %231 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource"(ptr %224)
  %232 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 8
  store ptr %231, ptr %232, align 8
  store ptr %231, ptr %83, align 8
  br label %LoopDefer_state_03_poll

LoopDefer_state_03_poll:                          ; preds = %LoopDefer_state_03_init, %LoopDefer_state_03
  %233 = load ptr, ptr %83, align 8
  %234 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %233, ptr %1)
  %235 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %234, 0
  br i1 %235, label %LoopDefer_state_03_ready, label %LoopDefer_state_03_pending

LoopDefer_state_03_ready:                         ; preds = %LoopDefer_state_03_poll
  %236 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %234, 1
  %237 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 9
  store i64 %236, ptr %237, align 4
  store ptr null, ptr %83, align 8
  %238 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %239 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %239, ptr %238, align 8
  %240 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %240, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 9 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %LoopDefer_state_04

LoopDefer_state_03_pending:                       ; preds = %LoopDefer_state_03_poll
  %241 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State", ptr %0, i32 0, i32 2
  %242 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %242, ptr %241, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 9 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
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
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 144)
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
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.LoopDefer$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/defer.(*MultipleDefer$State).Poll"(ptr %0, ptr %1) {
MultipleDefer_entry:
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  %4 = load i8, ptr %3, align 1
  %5 = sext i8 %4 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 13 }, i64 %5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
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
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %7 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %6, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, ptr %2, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %13 = load i64, ptr %12, align 4
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  %15 = load i64, ptr %14, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 13 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 6
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %MultipleDefer_state_00_init, label %MultipleDefer_state_00_poll

MultipleDefer_state_01:                           ; preds = %MultipleDefer_state_00_ready, %MultipleDefer_entry
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %20 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %19, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %20, ptr %2, align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  %28 = load i64, ptr %27, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 13 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 7
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %MultipleDefer_state_01_init, label %MultipleDefer_state_01_poll

MultipleDefer_state_02:                           ; preds = %MultipleDefer_state_01_ready, %MultipleDefer_entry
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %33 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %32, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %33, ptr %2, align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %39 = load i64, ptr %38, align 4
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  %41 = load i64, ptr %40, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 13 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 8
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %MultipleDefer_state_02_init, label %MultipleDefer_state_02_poll

MultipleDefer_state_03:                           ; preds = %MultipleDefer_state_02_ready, %MultipleDefer_entry
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %46 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %45, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %46, ptr %2, align 8
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %52 = load i64, ptr %51, align 4
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  %54 = load i64, ptr %53, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 13 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 9
  %56 = load ptr, ptr %55, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %MultipleDefer_state_03_init, label %MultipleDefer_state_03_poll

MultipleDefer_state_04:                           ; preds = %MultipleDefer_state_03_ready, %MultipleDefer_entry
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %59 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %58, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %59, ptr %2, align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %65 = load i64, ptr %64, align 4
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  %67 = load i64, ptr %66, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 13 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %68 = add i64 %65, %67
  %69 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %68)
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %71 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %70, 0
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %71, ptr %69, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %72, ptr %2, align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 10
  call void @"github.com/goplus/llgo/async.(*DeferState).RunDefers"(ptr %73)
  %74 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 14
  store i64 %68, ptr %75, align 4
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %77 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %77, ptr %76, align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %78, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 13 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 14
  %80 = load i64, ptr %79, align 4
  %81 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %80, 1
  %82 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %81, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %82

MultipleDefer_state_05:                           ; preds = %MultipleDefer_entry
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %84 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %83, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %84, ptr %2, align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %90 = load i64, ptr %89, align 4
  %91 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  %92 = load i64, ptr %91, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 13 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %93 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %95 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %95, ptr %94, align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %96, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 13 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %97 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 14
  %98 = load i64, ptr %97, align 4
  %99 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %98, 1
  %100 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %99, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %100

MultipleDefer_state_done:                         ; preds = %MultipleDefer_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 13 }, i64 6, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, i1 false, i1 true)
  %101 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 14
  %102 = load i64, ptr %101, align 4
  %103 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %102, 1
  %104 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %103, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %104

MultipleDefer_state_unreach:                      ; preds = %MultipleDefer_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_9:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

MultipleDefer_state_00_init:                      ; preds = %MultipleDefer_state_00
  %105 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %106 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %105, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %106, ptr %2, align 8
  %107 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %108 = load ptr, ptr %107, align 8
  %109 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %110 = load ptr, ptr %109, align 8
  %111 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %112 = load i64, ptr %111, align 4
  %113 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  %114 = load i64, ptr %113, align 4
  %115 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource"(i64 1)
  store ptr %115, ptr %16, align 8
  br label %MultipleDefer_state_00_poll

MultipleDefer_state_00_poll:                      ; preds = %MultipleDefer_state_00_init, %MultipleDefer_state_00
  %116 = load ptr, ptr %16, align 8
  %117 = call %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll"(ptr %116, ptr %1)
  %118 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %117, 0
  br i1 %118, label %MultipleDefer_state_00_ready, label %MultipleDefer_state_00_pending

MultipleDefer_state_00_ready:                     ; preds = %MultipleDefer_state_00_poll
  %119 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %117, 1
  %120 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  store ptr %119, ptr %120, align 8
  store ptr null, ptr %16, align 8
  %121 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %122 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %122, ptr %121, align 8
  %123 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %123, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 13 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %MultipleDefer_state_01

MultipleDefer_state_00_pending:                   ; preds = %MultipleDefer_state_00_poll
  %124 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %125 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %125, ptr %124, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 13 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

MultipleDefer_state_01_init:                      ; preds = %MultipleDefer_state_01
  %126 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %127 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %126, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %127, ptr %2, align 8
  %128 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %129 = load ptr, ptr %128, align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %131 = load ptr, ptr %130, align 8
  %132 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %133 = load i64, ptr %132, align 4
  %134 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  %135 = load i64, ptr %134, align 4
  %136 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 10
  %137 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %138 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %137, i32 0, i32 0
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testpull/defer.(*Resource).Close", ptr null }, ptr %138, align 8
  %139 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %137, i32 0, i32 1
  store ptr %129, ptr %139, align 8
  call void @"github.com/goplus/llgo/async.(*DeferState).PushDefer"(ptr %136, { ptr, ptr } { ptr @"__llgo_stub.__llgo_defer_wrap$github_com_goplus_llgo_cl__testpull_defer_MultipleDefer$1", ptr null }, ptr %137)
  %140 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource"(i64 2)
  store ptr %140, ptr %29, align 8
  br label %MultipleDefer_state_01_poll

MultipleDefer_state_01_poll:                      ; preds = %MultipleDefer_state_01_init, %MultipleDefer_state_01
  %141 = load ptr, ptr %29, align 8
  %142 = call %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll"(ptr %141, ptr %1)
  %143 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %142, 0
  br i1 %143, label %MultipleDefer_state_01_ready, label %MultipleDefer_state_01_pending

MultipleDefer_state_01_ready:                     ; preds = %MultipleDefer_state_01_poll
  %144 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %142, 1
  %145 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  store ptr %144, ptr %145, align 8
  store ptr null, ptr %29, align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %147 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %147, ptr %146, align 8
  %148 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %148, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 13 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %MultipleDefer_state_02

MultipleDefer_state_01_pending:                   ; preds = %MultipleDefer_state_01_poll
  %149 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %150 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %150, ptr %149, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 13 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

MultipleDefer_state_02_init:                      ; preds = %MultipleDefer_state_02
  %151 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %152 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %151, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %152, ptr %2, align 8
  %153 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %154 = load ptr, ptr %153, align 8
  %155 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %156 = load ptr, ptr %155, align 8
  %157 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %158 = load i64, ptr %157, align 4
  %159 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  %160 = load i64, ptr %159, align 4
  %161 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 10
  %162 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %163 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %162, i32 0, i32 0
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testpull/defer.(*Resource).Close", ptr null }, ptr %163, align 8
  %164 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %162, i32 0, i32 1
  store ptr %156, ptr %164, align 8
  call void @"github.com/goplus/llgo/async.(*DeferState).PushDefer"(ptr %161, { ptr, ptr } { ptr @"__llgo_stub.__llgo_defer_wrap$github_com_goplus_llgo_cl__testpull_defer_MultipleDefer$1", ptr null }, ptr %162)
  %165 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource"(ptr %154)
  store ptr %165, ptr %42, align 8
  br label %MultipleDefer_state_02_poll

MultipleDefer_state_02_poll:                      ; preds = %MultipleDefer_state_02_init, %MultipleDefer_state_02
  %166 = load ptr, ptr %42, align 8
  %167 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %166, ptr %1)
  %168 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %167, 0
  br i1 %168, label %MultipleDefer_state_02_ready, label %MultipleDefer_state_02_pending

MultipleDefer_state_02_ready:                     ; preds = %MultipleDefer_state_02_poll
  %169 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %167, 1
  %170 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  store i64 %169, ptr %170, align 4
  store ptr null, ptr %42, align 8
  %171 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %172 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %172, ptr %171, align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %173, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 13 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %MultipleDefer_state_03

MultipleDefer_state_02_pending:                   ; preds = %MultipleDefer_state_02_poll
  %174 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %175 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %175, ptr %174, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 13 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

MultipleDefer_state_03_init:                      ; preds = %MultipleDefer_state_03
  %176 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %177 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %176, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %177, ptr %2, align 8
  %178 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 2
  %179 = load ptr, ptr %178, align 8
  %180 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 3
  %181 = load ptr, ptr %180, align 8
  %182 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 4
  %183 = load i64, ptr %182, align 4
  %184 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  %185 = load i64, ptr %184, align 4
  %186 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource"(ptr %181)
  store ptr %186, ptr %55, align 8
  br label %MultipleDefer_state_03_poll

MultipleDefer_state_03_poll:                      ; preds = %MultipleDefer_state_03_init, %MultipleDefer_state_03
  %187 = load ptr, ptr %55, align 8
  %188 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %187, ptr %1)
  %189 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %188, 0
  br i1 %189, label %MultipleDefer_state_03_ready, label %MultipleDefer_state_03_pending

MultipleDefer_state_03_ready:                     ; preds = %MultipleDefer_state_03_poll
  %190 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %188, 1
  %191 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 5
  store i64 %190, ptr %191, align 4
  store ptr null, ptr %55, align 8
  %192 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %193 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %193, ptr %192, align 8
  %194 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %194, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 13 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %MultipleDefer_state_04

MultipleDefer_state_03_pending:                   ; preds = %MultipleDefer_state_03_poll
  %195 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State", ptr %0, i32 0, i32 1
  %196 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %196, ptr %195, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 13 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
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
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 128)
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
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/defer.MultipleDefer$State")
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %1, 0
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, ptr %0, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/defer.(*SimpleDefer$State).Poll"(ptr %0, ptr %1) {
SimpleDefer_entry:
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  %4 = load i8, ptr %3, align 1
  %5 = sext i8 %4 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 11 }, i64 %5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
  switch i8 %4, label %SimpleDefer_state_unreach [
    i8 0, label %SimpleDefer_state_00
    i8 1, label %SimpleDefer_state_01
    i8 2, label %SimpleDefer_state_02
    i8 3, label %SimpleDefer_state_03
    i8 4, label %SimpleDefer_state_done
  ]

SimpleDefer_state_00:                             ; preds = %SimpleDefer_entry
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %7 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %6, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, ptr %2, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 3
  %11 = load i64, ptr %10, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 11 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %SimpleDefer_state_00_init, label %SimpleDefer_state_00_poll

SimpleDefer_state_01:                             ; preds = %SimpleDefer_state_00_ready, %SimpleDefer_entry
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %16 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %15, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %16, ptr %2, align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 3
  %20 = load i64, ptr %19, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 11 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 5
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %SimpleDefer_state_01_init, label %SimpleDefer_state_01_poll

SimpleDefer_state_02:                             ; preds = %SimpleDefer_state_01_ready, %SimpleDefer_entry
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %25 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %24, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %25, ptr %2, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 3
  %29 = load i64, ptr %28, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 11 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 3
  %31 = load i64, ptr %30, align 4
  %32 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %29)
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %33, 0
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %34, ptr %32, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %35, ptr %2, align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 6
  call void @"github.com/goplus/llgo/async.(*DeferState).RunDefers"(ptr %36)
  %37 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 10
  store i64 %31, ptr %38, align 4
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %40 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %40, ptr %39, align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %41, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 11 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 10
  %43 = load i64, ptr %42, align 4
  %44 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %43, 1
  %45 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %44, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %45

SimpleDefer_state_03:                             ; preds = %SimpleDefer_entry
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %47 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %46, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %47, ptr %2, align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 2
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 3
  %51 = load i64, ptr %50, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 11 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %52 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %54 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %54, ptr %53, align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %55, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 11 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 10
  %57 = load i64, ptr %56, align 4
  %58 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %57, 1
  %59 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %58, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %59

SimpleDefer_state_done:                           ; preds = %SimpleDefer_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 11 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, i1 false, i1 true)
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 10
  %61 = load i64, ptr %60, align 4
  %62 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %61, 1
  %63 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %62, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %63

SimpleDefer_state_unreach:                        ; preds = %SimpleDefer_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_7:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

SimpleDefer_state_00_init:                        ; preds = %SimpleDefer_state_00
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %65 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %64, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %65, ptr %2, align 8
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 2
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 3
  %69 = load i64, ptr %68, align 4
  %70 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.OpenResource"(i64 1)
  store ptr %70, ptr %12, align 8
  br label %SimpleDefer_state_00_poll

SimpleDefer_state_00_poll:                        ; preds = %SimpleDefer_state_00_init, %SimpleDefer_state_00
  %71 = load ptr, ptr %12, align 8
  %72 = call %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" @"github.com/goplus/llgo/async.(*AsyncFuture[*github.com/goplus/llgo/cl/_testpull/defer.Resource]).Poll"(ptr %71, ptr %1)
  %73 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %72, 0
  br i1 %73, label %SimpleDefer_state_00_ready, label %SimpleDefer_state_00_pending

SimpleDefer_state_00_ready:                       ; preds = %SimpleDefer_state_00_poll
  %74 = extractvalue %"github.com/goplus/llgo/async.Poll[*github.com/goplus/llgo/cl/_testpull/defer.Resource]" %72, 1
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 2
  store ptr %74, ptr %75, align 8
  store ptr null, ptr %12, align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %77 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %77, ptr %76, align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %78, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 11 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %SimpleDefer_state_01

SimpleDefer_state_00_pending:                     ; preds = %SimpleDefer_state_00_poll
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %80 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %80, ptr %79, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 11 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

SimpleDefer_state_01_init:                        ; preds = %SimpleDefer_state_01
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %82 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %81, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %82, ptr %2, align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 2
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 3
  %86 = load i64, ptr %85, align 4
  %87 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 6
  %88 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %89 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %88, i32 0, i32 0
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testpull/defer.(*Resource).Close", ptr null }, ptr %89, align 8
  %90 = getelementptr inbounds { { ptr, ptr }, ptr }, ptr %88, i32 0, i32 1
  store ptr %84, ptr %90, align 8
  call void @"github.com/goplus/llgo/async.(*DeferState).PushDefer"(ptr %87, { ptr, ptr } { ptr @"__llgo_stub.__llgo_defer_wrap$github_com_goplus_llgo_cl__testpull_defer_SimpleDefer$1", ptr null }, ptr %88)
  %91 = call ptr @"github.com/goplus/llgo/cl/_testpull/defer.ProcessResource"(ptr %84)
  store ptr %91, ptr %21, align 8
  br label %SimpleDefer_state_01_poll

SimpleDefer_state_01_poll:                        ; preds = %SimpleDefer_state_01_init, %SimpleDefer_state_01
  %92 = load ptr, ptr %21, align 8
  %93 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %92, ptr %1)
  %94 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %93, 0
  br i1 %94, label %SimpleDefer_state_01_ready, label %SimpleDefer_state_01_pending

SimpleDefer_state_01_ready:                       ; preds = %SimpleDefer_state_01_poll
  %95 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %93, 1
  %96 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 3
  store i64 %95, ptr %96, align 4
  store ptr null, ptr %21, align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %98 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %98, ptr %97, align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %99, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 11 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %SimpleDefer_state_02

SimpleDefer_state_01_pending:                     ; preds = %SimpleDefer_state_01_poll
  %100 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/defer.SimpleDefer$State", ptr %0, i32 0, i32 1
  %101 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %101, ptr %100, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 11 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
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
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 96)
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
