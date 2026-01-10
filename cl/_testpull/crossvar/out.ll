; ModuleID = 'github.com/goplus/llgo/cl/_testpull/crossvar'
source_filename = "github.com/goplus/llgo/cl/_testpull/crossvar"

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
%"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State" = type { i8, i64, i64, i64, i64, i64, ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/async.AsyncFuture[int]" = type { { ptr, ptr }, i1, i1, i64 }
%"github.com/goplus/llgo/async.ReadyFuture[int]" = type { i64 }
%"github.com/goplus/llgo/async.Context" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }
%"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State" = type { i8, i64, i64, i64, i64, ptr, i64 }
%"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State" = type { i8, i64, i64, i64, i64, ptr, ptr, i64 }
%"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State" = type { i8, i64, i64, i64, i64, ptr, ptr, i64 }

@0 = private unnamed_addr constant [24 x i8] c"AccumulateWithMultiplier", align 1
@1 = private unnamed_addr constant [8 x i8] c"dispatch", align 1
@2 = private unnamed_addr constant [5 x i8] c"enter", align 1
@3 = private unnamed_addr constant [7 x i8] c"pending", align 1
@4 = private unnamed_addr constant [5 x i8] c"ready", align 1
@"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -103283099, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Await", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Poll", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Poll" }] }, align 8
@5 = private unnamed_addr constant [22 x i8] c"async.ReadyFuture[int]", align 1
@"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1814719306, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@6 = private unnamed_addr constant [28 x i8] c"github.com/goplus/llgo/async", align 1
@7 = private unnamed_addr constant [5 x i8] c"value", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 3 }, ptr @"*_llgo_int" }, align 8
@8 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"github.com/goplus/llgo/cl/_testpull/crossvar.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
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
@"_llgo_github.com/goplus/llgo/async.Context" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 0, i32 29200871, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Context" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 13 }, ptr @"*_llgo_github.com/goplus/llgo/async.Context" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.struct$Re9uCNpaPdvqJtnZYej5NZ8aMgZjb-_ftN8ogfRqy78$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@14 = private unnamed_addr constant [5 x i8] c"Waker", align 1
@"_llgo_github.com/goplus/llgo/async.Waker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -2133419533, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 11 }, ptr @"*_llgo_github.com/goplus/llgo/async.Waker" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$5udCHZ6xl-fBE2F9apjWV2qrxMb4_QYfwdoy0QD1D8c$imethods", i64 1, i64 1 } }, align 8
@15 = private unnamed_addr constant [11 x i8] c"async.Waker", align 1
@"*_llgo_github.com/goplus/llgo/async.Waker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 504672852, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 11 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Waker" }, align 8
@16 = private unnamed_addr constant [44 x i8] c"github.com/goplus/llgo/cl/_testpull/crossvar", align 1
@17 = private unnamed_addr constant [4 x i8] c"Wake", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@18 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@"_llgo_iface$5udCHZ6xl-fBE2F9apjWV2qrxMb4_QYfwdoy0QD1D8c$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 4 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }], align 8
@19 = private unnamed_addr constant [8 x i8] c"hasWaker", align 1
@_llgo_bool = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 554183389, i8 12, i8 1, i8 1, i8 33, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 4 }, ptr @"*_llgo_bool" }, align 8
@20 = private unnamed_addr constant [4 x i8] c"bool", align 1
@"*_llgo_bool" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1896950390, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 4 }, ptr null }, ptr @_llgo_bool }, align 8
@"github.com/goplus/llgo/cl/_testpull/crossvar.struct$Re9uCNpaPdvqJtnZYej5NZ8aMgZjb-_ftN8ogfRqy78$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/async.Waker", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 8 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/async.Context"], align 8
@"_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 801809575, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 15 }, ptr @"*_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.struct$M9E5HRdqyc11Zqvq07yhy6frK_fAyRGIc35bZKl9nrs$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error", ptr @"github.com/goplus/llgo/async.Poll[int].Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError", ptr @"github.com/goplus/llgo/async.Poll[int].HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.Poll[int].IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.Poll[int].Value" }] }, align 8
@21 = private unnamed_addr constant [15 x i8] c"async.Poll[int]", align 1
@"*_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -920093333, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 15 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value" }] }, align 8
@22 = private unnamed_addr constant [5 x i8] c"Error", align 1
@"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1398528794, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 19 }, ptr @"*_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8$out", i64 1, i64 1 } }, align 8
@23 = private unnamed_addr constant [19 x i8] c"func() interface {}", align 1
@"*_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1160547289, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 19 }, ptr null }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" }, align 8
@_llgo_any = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1376530322, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 12 }, ptr @"*_llgo_any" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
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
@"github.com/goplus/llgo/cl/_testpull/crossvar.struct$M9E5HRdqyc11Zqvq07yhy6frK_fAyRGIc35bZKl9nrs$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @_llgo_bool, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 3 }, ptr @_llgo_any, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]"], align 8
@"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 968294533, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 50 }, ptr @"*_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0$imethods", i64 1, i64 1 } }, align 8
@30 = private unnamed_addr constant [50 x i8] c"interface { Poll(*async.Context) async.Poll[int] }", align 1
@"*_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1655281012, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 50 }, ptr null }, ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" }, align 8
@"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }], align 8
@31 = private unnamed_addr constant [4 x i8] c"done", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1136102875, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 39 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 44 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.(*AccumulateWithMultiplier$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.(*AccumulateWithMultiplier$State).Poll" }] }, align 8
@32 = private unnamed_addr constant [39 x i8] c"crossvar.AccumulateWithMultiplier$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 48, i32 -775893706, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 39 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.struct$Gfvv1FM62WlunUPZpaeE7RnPvQhKi0E0gyyN7ljntbM$fields", i64 8, i64 8 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 44 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@33 = private unnamed_addr constant [5 x i8] c"state", align 1
@_llgo_int8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 1444672578, i8 12, i8 1, i8 1, i8 35, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @"*_llgo_int8" }, align 8
@34 = private unnamed_addr constant [4 x i8] c"int8", align 1
@"*_llgo_int8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1399554408, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr null }, ptr @_llgo_int8 }, align 8
@35 = private unnamed_addr constant [6 x i8] c"param0", align 1
@36 = private unnamed_addr constant [4 x i8] c"var0", align 1
@37 = private unnamed_addr constant [4 x i8] c"var1", align 1
@38 = private unnamed_addr constant [4 x i8] c"var2", align 1
@39 = private unnamed_addr constant [4 x i8] c"var3", align 1
@40 = private unnamed_addr constant [4 x i8] c"sub0", align 1
@"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 964362133, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll" }] }, align 8
@41 = private unnamed_addr constant [22 x i8] c"async.AsyncFuture[int]", align 1
@"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 0, i32 1769159236, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@42 = private unnamed_addr constant [2 x i8] c"fn", align 1
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1213993089, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 87 }, ptr @"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields", i64 2, i64 2 } }, align 8
@43 = private unnamed_addr constant [87 x i8] c"struct { $f func(struct { $f func(int); $data unsafe.Pointer }); $data unsafe.Pointer }", align 1
@"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1666834553, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 87 }, ptr null }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, align 8
@44 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2009615728, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 51 }, ptr @"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@45 = private unnamed_addr constant [51 x i8] c"func(struct { $f func(int); $data unsafe.Pointer })", align 1
@"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1512208703, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 51 }, ptr null }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1556934939, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 45 }, ptr @"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields", i64 2, i64 2 } }, align 8
@46 = private unnamed_addr constant [45 x i8] c"struct { $f func(int); $data unsafe.Pointer }", align 1
@"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 364872269, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 45 }, ptr null }, ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -637187458, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 9 }, ptr @"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@47 = private unnamed_addr constant [9 x i8] c"func(int)", align 1
@"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 735356155, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 9 }, ptr null }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@48 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@49 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 2 }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM"], align 8
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 2 }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@50 = private unnamed_addr constant [7 x i8] c"started", align 1
@"github.com/goplus/llgo/cl/_testpull/crossvar.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 2 }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 7 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @_llgo_bool, i64 17, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@51 = private unnamed_addr constant [11 x i8] c"resultValue", align 1
@"github.com/goplus/llgo/cl/_testpull/crossvar.struct$Gfvv1FM62WlunUPZpaeE7RnPvQhKi0E0gyyN7ljntbM$fields" = weak_odr constant [8 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 11 }, ptr @_llgo_int, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@52 = private unnamed_addr constant [15 x i8] c"IncrementInLoop", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1151257552, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 30 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 44 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.(*IncrementInLoop$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.(*IncrementInLoop$State).Poll" }] }, align 8
@53 = private unnamed_addr constant [30 x i8] c"crossvar.IncrementInLoop$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 56, i64 40, i32 -1381468253, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 30 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.struct$26Q51EwcSfhkLaoYD6AIwODvuOMdRQj1X9-HCh0ouVg$fields", i64 7, i64 7 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 44 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/crossvar.struct$26Q51EwcSfhkLaoYD6AIwODvuOMdRQj1X9-HCh0ouVg$fields" = weak_odr constant [7 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 11 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@54 = private unnamed_addr constant [19 x i8] c"ModifyBetweenAwaits", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1289674255, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 34 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 44 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.(*ModifyBetweenAwaits$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.(*ModifyBetweenAwaits$State).Poll" }] }, align 8
@55 = private unnamed_addr constant [34 x i8] c"crossvar.ModifyBetweenAwaits$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 48, i32 -1656447495, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 34 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.struct$bmjjY3YjvOdlTdD91ol43FDzsybwKJb095PEBP4TI5Y$fields", i64 8, i64 8 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 44 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@56 = private unnamed_addr constant [4 x i8] c"sub1", align 1
@"github.com/goplus/llgo/cl/_testpull/crossvar.struct$bmjjY3YjvOdlTdD91ol43FDzsybwKJb095PEBP4TI5Y$fields" = weak_odr constant [8 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 11 }, ptr @_llgo_int, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@57 = private unnamed_addr constant [13 x i8] c"SwapVariables", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -581387861, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 28 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 44 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.(*SwapVariables$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.(*SwapVariables$State).Poll" }] }, align 8
@58 = private unnamed_addr constant [28 x i8] c"crossvar.SwapVariables$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 48, i32 1630639055, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 28 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.struct$D0CqqQDTRtk7JRpCDY6II-63DzwyeybwKcup1Vfgblg$fields", i64 8, i64 8 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 44 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@59 = private unnamed_addr constant [6 x i8] c"param1", align 1
@"github.com/goplus/llgo/cl/_testpull/crossvar.struct$D0CqqQDTRtk7JRpCDY6II-63DzwyeybwKcup1Vfgblg$fields" = weak_odr constant [8 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 6 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 11 }, ptr @_llgo_int, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/crossvar.init$guard" = global i1 false, align 1
@60 = private unnamed_addr constant [45 x i8] c"Await() should be transformed by the compiler", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 6 }, ptr @"*_llgo_string" }, align 8
@61 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 6 }, ptr null }, ptr @_llgo_string }, align 8

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/crossvar.(*AccumulateWithMultiplier$State).Poll"(ptr %0, ptr %1) {
AccumulateWithMultiplier_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  %4 = sext i8 %3 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 24 }, i64 %4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
  switch i8 %3, label %AccumulateWithMultiplier_state_unreach [
    i8 0, label %AccumulateWithMultiplier_state_00
    i8 1, label %AccumulateWithMultiplier_state_01
    i8 2, label %AccumulateWithMultiplier_state_02
    i8 3, label %AccumulateWithMultiplier_state_03
    i8 4, label %AccumulateWithMultiplier_state_04
    i8 5, label %AccumulateWithMultiplier_state_done
  ]

AccumulateWithMultiplier_state_00:                ; preds = %AccumulateWithMultiplier_entry
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 2
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 3
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 4
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 5
  %14 = load i64, ptr %13, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 24 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 2
  store i64 0, ptr %15, align 4
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 3
  store i64 1, ptr %16, align 4
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 4
  store i64 0, ptr %17, align 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %18, align 1
  br label %AccumulateWithMultiplier_state_01

AccumulateWithMultiplier_state_01:                ; preds = %AccumulateWithMultiplier_state_03, %AccumulateWithMultiplier_state_00, %AccumulateWithMultiplier_entry
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 1
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 2
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 3
  %24 = load i64, ptr %23, align 4
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 4
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 5
  %28 = load i64, ptr %27, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 24 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %29 = icmp slt i64 %26, %20
  br i1 %29, label %AccumulateWithMultiplier_state_01_true, label %AccumulateWithMultiplier_state_01_false

AccumulateWithMultiplier_state_02:                ; preds = %AccumulateWithMultiplier_state_01_true, %AccumulateWithMultiplier_entry
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 1
  %31 = load i64, ptr %30, align 4
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 2
  %33 = load i64, ptr %32, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 3
  %35 = load i64, ptr %34, align 4
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 4
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 5
  %39 = load i64, ptr %38, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 24 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 6
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %AccumulateWithMultiplier_state_02_init, label %AccumulateWithMultiplier_state_02_poll

AccumulateWithMultiplier_state_03:                ; preds = %AccumulateWithMultiplier_state_02_ready, %AccumulateWithMultiplier_entry
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 1
  %44 = load i64, ptr %43, align 4
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 2
  %46 = load i64, ptr %45, align 4
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 3
  %48 = load i64, ptr %47, align 4
  %49 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 4
  %50 = load i64, ptr %49, align 4
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 5
  %52 = load i64, ptr %51, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 24 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %53 = mul i64 %52, %48
  %54 = add i64 %46, %53
  %55 = mul i64 %48, 2
  %56 = add i64 %50, 1
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 2
  store i64 %54, ptr %57, align 4
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 3
  store i64 %55, ptr %58, align 4
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 4
  store i64 %56, ptr %59, align 4
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %60, align 1
  br label %AccumulateWithMultiplier_state_01

AccumulateWithMultiplier_state_04:                ; preds = %AccumulateWithMultiplier_state_01_false, %AccumulateWithMultiplier_entry
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 1
  %62 = load i64, ptr %61, align 4
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 2
  %64 = load i64, ptr %63, align 4
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 3
  %66 = load i64, ptr %65, align 4
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 4
  %68 = load i64, ptr %67, align 4
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 5
  %70 = load i64, ptr %69, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 24 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 2
  %72 = load i64, ptr %71, align 4
  %73 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %64)
  %74 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %74, 0
  %76 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %75, ptr %73, 1
  %77 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 7
  store i64 %72, ptr %77, align 4
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %78, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 24 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 7
  %80 = load i64, ptr %79, align 4
  %81 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %80, 1
  %82 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %81, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %82

AccumulateWithMultiplier_state_done:              ; preds = %AccumulateWithMultiplier_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 24 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, i1 false, i1 true)
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 7
  %84 = load i64, ptr %83, align 4
  %85 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %84, 1
  %86 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %85, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %86

AccumulateWithMultiplier_state_unreach:           ; preds = %AccumulateWithMultiplier_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_8:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

AccumulateWithMultiplier_state_01_true:           ; preds = %AccumulateWithMultiplier_state_01
  %87 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %87, align 1
  br label %AccumulateWithMultiplier_state_02

AccumulateWithMultiplier_state_01_false:          ; preds = %AccumulateWithMultiplier_state_01
  %88 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %88, align 1
  br label %AccumulateWithMultiplier_state_04

AccumulateWithMultiplier_state_02_init:           ; preds = %AccumulateWithMultiplier_state_02
  %89 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 1
  %90 = load i64, ptr %89, align 4
  %91 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 2
  %92 = load i64, ptr %91, align 4
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 3
  %94 = load i64, ptr %93, align 4
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 4
  %96 = load i64, ptr %95, align 4
  %97 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 5
  %98 = load i64, ptr %97, align 4
  %99 = call ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.Step"(i64 %96)
  store ptr %99, ptr %40, align 8
  br label %AccumulateWithMultiplier_state_02_poll

AccumulateWithMultiplier_state_02_poll:           ; preds = %AccumulateWithMultiplier_state_02_init, %AccumulateWithMultiplier_state_02
  %100 = load ptr, ptr %40, align 8
  %101 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %100, ptr %1)
  %102 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %101, 0
  br i1 %102, label %AccumulateWithMultiplier_state_02_ready, label %AccumulateWithMultiplier_state_02_pending

AccumulateWithMultiplier_state_02_ready:          ; preds = %AccumulateWithMultiplier_state_02_poll
  %103 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %101, 1
  %104 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 5
  store i64 %103, ptr %104, align 4
  store ptr null, ptr %40, align 8
  %105 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %105, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 24 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %AccumulateWithMultiplier_state_03

AccumulateWithMultiplier_state_02_pending:        ; preds = %AccumulateWithMultiplier_state_02_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 24 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

declare void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1, i1)

define ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.Step"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.Step$1", ptr undef }, ptr %2, 1
  %5 = call ptr @"github.com/goplus/llgo/async.Async[int]"({ ptr, ptr } %4)
  ret ptr %5
}

define void @"github.com/goplus/llgo/cl/_testpull/crossvar.Step$1"(ptr %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load i64, ptr %3, align 4
  %5 = extractvalue { ptr, ptr } %1, 1
  %6 = extractvalue { ptr, ptr } %1, 0
  call void %6(ptr %5, i64 %4)
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

define ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 64)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %1, i32 0, i32 3
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %1, i32 0, i32 4
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %1, i32 0, i32 5
  store i64 0, ptr %7, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %1, i32 0, i32 6
  store ptr null, ptr %8, align 8
  ret ptr %1
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define linkonce i64 @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 45 }, ptr %1, align 8
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

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/crossvar.(*IncrementInLoop$State).Poll"(ptr %0, ptr %1) {
IncrementInLoop_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  %4 = sext i8 %3 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 15 }, i64 %4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
  switch i8 %3, label %IncrementInLoop_state_unreach [
    i8 0, label %IncrementInLoop_state_00
    i8 1, label %IncrementInLoop_state_01
    i8 2, label %IncrementInLoop_state_02
    i8 3, label %IncrementInLoop_state_03
    i8 4, label %IncrementInLoop_state_04
    i8 5, label %IncrementInLoop_state_done
  ]

IncrementInLoop_state_00:                         ; preds = %IncrementInLoop_entry
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 2
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 3
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 4
  %12 = load i64, ptr %11, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 15 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 2
  store i64 0, ptr %13, align 4
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 3
  store i64 0, ptr %14, align 4
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %15, align 1
  br label %IncrementInLoop_state_01

IncrementInLoop_state_01:                         ; preds = %IncrementInLoop_state_03, %IncrementInLoop_state_00, %IncrementInLoop_entry
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 1
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 2
  %19 = load i64, ptr %18, align 4
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 3
  %21 = load i64, ptr %20, align 4
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 4
  %23 = load i64, ptr %22, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 15 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %24 = icmp slt i64 %21, %17
  br i1 %24, label %IncrementInLoop_state_01_true, label %IncrementInLoop_state_01_false

IncrementInLoop_state_02:                         ; preds = %IncrementInLoop_state_01_true, %IncrementInLoop_entry
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 1
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 2
  %28 = load i64, ptr %27, align 4
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 3
  %30 = load i64, ptr %29, align 4
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 4
  %32 = load i64, ptr %31, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 15 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 5
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %IncrementInLoop_state_02_init, label %IncrementInLoop_state_02_poll

IncrementInLoop_state_03:                         ; preds = %IncrementInLoop_state_02_ready, %IncrementInLoop_entry
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 1
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 2
  %39 = load i64, ptr %38, align 4
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 3
  %41 = load i64, ptr %40, align 4
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 4
  %43 = load i64, ptr %42, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 15 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %44 = add i64 %39, %43
  %45 = add i64 %44, 1
  %46 = add i64 %41, 1
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 2
  store i64 %45, ptr %47, align 4
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 3
  store i64 %46, ptr %48, align 4
  %49 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %49, align 1
  br label %IncrementInLoop_state_01

IncrementInLoop_state_04:                         ; preds = %IncrementInLoop_state_01_false, %IncrementInLoop_entry
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 1
  %51 = load i64, ptr %50, align 4
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 2
  %53 = load i64, ptr %52, align 4
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 3
  %55 = load i64, ptr %54, align 4
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 4
  %57 = load i64, ptr %56, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 15 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 2
  %59 = load i64, ptr %58, align 4
  %60 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %53)
  %61 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %62 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %61, 0
  %63 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %62, ptr %60, 1
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 6
  store i64 %59, ptr %64, align 4
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %65, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 15 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 6
  %67 = load i64, ptr %66, align 4
  %68 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %67, 1
  %69 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %68, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %69

IncrementInLoop_state_done:                       ; preds = %IncrementInLoop_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 15 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, i1 false, i1 true)
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 6
  %71 = load i64, ptr %70, align 4
  %72 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %71, 1
  %73 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %72, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %73

IncrementInLoop_state_unreach:                    ; preds = %IncrementInLoop_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_8:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

IncrementInLoop_state_01_true:                    ; preds = %IncrementInLoop_state_01
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %74, align 1
  br label %IncrementInLoop_state_02

IncrementInLoop_state_01_false:                   ; preds = %IncrementInLoop_state_01
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %75, align 1
  br label %IncrementInLoop_state_04

IncrementInLoop_state_02_init:                    ; preds = %IncrementInLoop_state_02
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 1
  %77 = load i64, ptr %76, align 4
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 2
  %79 = load i64, ptr %78, align 4
  %80 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 3
  %81 = load i64, ptr %80, align 4
  %82 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 4
  %83 = load i64, ptr %82, align 4
  %84 = call ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.Step"(i64 %81)
  store ptr %84, ptr %33, align 8
  br label %IncrementInLoop_state_02_poll

IncrementInLoop_state_02_poll:                    ; preds = %IncrementInLoop_state_02_init, %IncrementInLoop_state_02
  %85 = load ptr, ptr %33, align 8
  %86 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %85, ptr %1)
  %87 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %86, 0
  br i1 %87, label %IncrementInLoop_state_02_ready, label %IncrementInLoop_state_02_pending

IncrementInLoop_state_02_ready:                   ; preds = %IncrementInLoop_state_02_poll
  %88 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %86, 1
  %89 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 4
  store i64 %88, ptr %89, align 4
  store ptr null, ptr %33, align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %90, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 15 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %IncrementInLoop_state_03

IncrementInLoop_state_02_pending:                 ; preds = %IncrementInLoop_state_02_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 15 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 56)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %1, i32 0, i32 3
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %1, i32 0, i32 4
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %1, i32 0, i32 5
  store ptr null, ptr %7, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/crossvar.(*ModifyBetweenAwaits$State).Poll"(ptr %0, ptr %1) {
ModifyBetweenAwaits_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  %4 = sext i8 %3 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 19 }, i64 %4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
  switch i8 %3, label %ModifyBetweenAwaits_state_unreach [
    i8 0, label %ModifyBetweenAwaits_state_00
    i8 1, label %ModifyBetweenAwaits_state_01
    i8 2, label %ModifyBetweenAwaits_state_02
    i8 3, label %ModifyBetweenAwaits_state_done
  ]

ModifyBetweenAwaits_state_00:                     ; preds = %ModifyBetweenAwaits_entry
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 2
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 4
  %10 = load i64, ptr %9, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 19 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %ModifyBetweenAwaits_state_00_init, label %ModifyBetweenAwaits_state_00_poll

ModifyBetweenAwaits_state_01:                     ; preds = %ModifyBetweenAwaits_state_00_ready, %ModifyBetweenAwaits_entry
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 1
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 2
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 4
  %19 = load i64, ptr %18, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 19 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 6
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %ModifyBetweenAwaits_state_01_init, label %ModifyBetweenAwaits_state_01_poll

ModifyBetweenAwaits_state_02:                     ; preds = %ModifyBetweenAwaits_state_01_ready, %ModifyBetweenAwaits_entry
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 1
  %24 = load i64, ptr %23, align 4
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 2
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 4
  %28 = load i64, ptr %27, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 19 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %29 = add i64 0, %26
  %30 = mul i64 %29, 2
  %31 = add i64 %30, %28
  %32 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %31)
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %33, 0
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %34, ptr %32, 1
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 7
  store i64 %31, ptr %36, align 4
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %37, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 19 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 7
  %39 = load i64, ptr %38, align 4
  %40 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %39, 1
  %41 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %40, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %41

ModifyBetweenAwaits_state_done:                   ; preds = %ModifyBetweenAwaits_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 19 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, i1 false, i1 true)
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 7
  %43 = load i64, ptr %42, align 4
  %44 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %43, 1
  %45 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %44, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %45

ModifyBetweenAwaits_state_unreach:                ; preds = %ModifyBetweenAwaits_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_6:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

ModifyBetweenAwaits_state_00_init:                ; preds = %ModifyBetweenAwaits_state_00
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 1
  %47 = load i64, ptr %46, align 4
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 2
  %49 = load i64, ptr %48, align 4
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 4
  %51 = load i64, ptr %50, align 4
  %52 = call ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.Step"(i64 %47)
  store ptr %52, ptr %11, align 8
  br label %ModifyBetweenAwaits_state_00_poll

ModifyBetweenAwaits_state_00_poll:                ; preds = %ModifyBetweenAwaits_state_00_init, %ModifyBetweenAwaits_state_00
  %53 = load ptr, ptr %11, align 8
  %54 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %53, ptr %1)
  %55 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %54, 0
  br i1 %55, label %ModifyBetweenAwaits_state_00_ready, label %ModifyBetweenAwaits_state_00_pending

ModifyBetweenAwaits_state_00_ready:               ; preds = %ModifyBetweenAwaits_state_00_poll
  %56 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %54, 1
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 2
  store i64 %56, ptr %57, align 4
  store ptr null, ptr %11, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %58, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 19 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %ModifyBetweenAwaits_state_01

ModifyBetweenAwaits_state_00_pending:             ; preds = %ModifyBetweenAwaits_state_00_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 19 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

ModifyBetweenAwaits_state_01_init:                ; preds = %ModifyBetweenAwaits_state_01
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 1
  %60 = load i64, ptr %59, align 4
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 2
  %62 = load i64, ptr %61, align 4
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 4
  %64 = load i64, ptr %63, align 4
  %65 = add i64 0, %62
  %66 = mul i64 %65, 2
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 3
  store i64 %66, ptr %67, align 4
  %68 = call ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.Step"(i64 %66)
  store ptr %68, ptr %20, align 8
  br label %ModifyBetweenAwaits_state_01_poll

ModifyBetweenAwaits_state_01_poll:                ; preds = %ModifyBetweenAwaits_state_01_init, %ModifyBetweenAwaits_state_01
  %69 = load ptr, ptr %20, align 8
  %70 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %69, ptr %1)
  %71 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %70, 0
  br i1 %71, label %ModifyBetweenAwaits_state_01_ready, label %ModifyBetweenAwaits_state_01_pending

ModifyBetweenAwaits_state_01_ready:               ; preds = %ModifyBetweenAwaits_state_01_poll
  %72 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %70, 1
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 4
  store i64 %72, ptr %73, align 4
  store ptr null, ptr %20, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %74, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 19 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %ModifyBetweenAwaits_state_02

ModifyBetweenAwaits_state_01_pending:             ; preds = %ModifyBetweenAwaits_state_01_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 19 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 64)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %1, i32 0, i32 3
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %1, i32 0, i32 4
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %1, i32 0, i32 5
  store ptr null, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %1, i32 0, i32 6
  store ptr null, ptr %8, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/crossvar.(*SwapVariables$State).Poll"(ptr %0, ptr %1) {
SwapVariables_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  %4 = sext i8 %3 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 13 }, i64 %4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
  switch i8 %3, label %SwapVariables_state_unreach [
    i8 0, label %SwapVariables_state_00
    i8 1, label %SwapVariables_state_01
    i8 2, label %SwapVariables_state_02
    i8 3, label %SwapVariables_state_done
  ]

SwapVariables_state_00:                           ; preds = %SwapVariables_entry
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 2
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 3
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 4
  %12 = load i64, ptr %11, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 13 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %SwapVariables_state_00_init, label %SwapVariables_state_00_poll

SwapVariables_state_01:                           ; preds = %SwapVariables_state_00_ready, %SwapVariables_entry
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 1
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 2
  %19 = load i64, ptr %18, align 4
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 3
  %21 = load i64, ptr %20, align 4
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 4
  %23 = load i64, ptr %22, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 13 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 6
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %SwapVariables_state_01_init, label %SwapVariables_state_01_poll

SwapVariables_state_02:                           ; preds = %SwapVariables_state_01_ready, %SwapVariables_entry
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 1
  %28 = load i64, ptr %27, align 4
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 2
  %30 = load i64, ptr %29, align 4
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 3
  %32 = load i64, ptr %31, align 4
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 4
  %34 = load i64, ptr %33, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 13 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 4
  %36 = load i64, ptr %35, align 4
  %37 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %34)
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %38, 0
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %39, ptr %37, 1
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 7
  store i64 %36, ptr %41, align 4
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %42, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 13 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 7
  %44 = load i64, ptr %43, align 4
  %45 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %44, 1
  %46 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %45, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %46

SwapVariables_state_done:                         ; preds = %SwapVariables_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 13 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, i1 false, i1 true)
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 7
  %48 = load i64, ptr %47, align 4
  %49 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %48, 1
  %50 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %49, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %50

SwapVariables_state_unreach:                      ; preds = %SwapVariables_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_6:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

SwapVariables_state_00_init:                      ; preds = %SwapVariables_state_00
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 1
  %52 = load i64, ptr %51, align 4
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 2
  %54 = load i64, ptr %53, align 4
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 3
  %56 = load i64, ptr %55, align 4
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 4
  %58 = load i64, ptr %57, align 4
  %59 = call ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.Step"(i64 %52)
  store ptr %59, ptr %13, align 8
  br label %SwapVariables_state_00_poll

SwapVariables_state_00_poll:                      ; preds = %SwapVariables_state_00_init, %SwapVariables_state_00
  %60 = load ptr, ptr %13, align 8
  %61 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %60, ptr %1)
  %62 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %61, 0
  br i1 %62, label %SwapVariables_state_00_ready, label %SwapVariables_state_00_pending

SwapVariables_state_00_ready:                     ; preds = %SwapVariables_state_00_poll
  %63 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %61, 1
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 3
  store i64 %63, ptr %64, align 4
  store ptr null, ptr %13, align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %65, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 13 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %SwapVariables_state_01

SwapVariables_state_00_pending:                   ; preds = %SwapVariables_state_00_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 13 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

SwapVariables_state_01_init:                      ; preds = %SwapVariables_state_01
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 1
  %67 = load i64, ptr %66, align 4
  %68 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 2
  %69 = load i64, ptr %68, align 4
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 3
  %71 = load i64, ptr %70, align 4
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 4
  %73 = load i64, ptr %72, align 4
  %74 = add i64 %69, %71
  %75 = call ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.Step"(i64 %74)
  store ptr %75, ptr %24, align 8
  br label %SwapVariables_state_01_poll

SwapVariables_state_01_poll:                      ; preds = %SwapVariables_state_01_init, %SwapVariables_state_01
  %76 = load ptr, ptr %24, align 8
  %77 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %76, ptr %1)
  %78 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %77, 0
  br i1 %78, label %SwapVariables_state_01_ready, label %SwapVariables_state_01_pending

SwapVariables_state_01_ready:                     ; preds = %SwapVariables_state_01_poll
  %79 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %77, 1
  %80 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 4
  store i64 %79, ptr %80, align 4
  store ptr null, ptr %24, align 8
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %81, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 13 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %SwapVariables_state_02

SwapVariables_state_01_pending:                   ; preds = %SwapVariables_state_01_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 13 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$Concrete"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 64)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %2, i32 0, i32 0
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %2, i32 0, i32 1
  store i64 %0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %2, i32 0, i32 2
  store i64 %1, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %2, i32 0, i32 3
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %2, i32 0, i32 4
  store i64 0, ptr %7, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %2, i32 0, i32 5
  store ptr null, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %2, i32 0, i32 6
  store ptr null, ptr %9, align 8
  ret ptr %2
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$Concrete"(i64 %0, i64 %1)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State")
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, ptr %2, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5
}

define void @"github.com/goplus/llgo/cl/_testpull/crossvar.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.init$guard", align 1
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

define linkonce %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.Pending[int]"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  call void @llvm.memset(ptr %0, i8 0, i64 32, i1 false)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %0, i32 0, i32 0
  store i1 false, ptr %1, align 1
  %2 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %0, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" %2
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/async.init"()

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
