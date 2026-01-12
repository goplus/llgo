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
%"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State" = type { i8, i64, i64, i64, i64, i1, ptr, i64, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/async.AsyncFuture[int]" = type { { ptr, ptr }, i1, i1, i64 }
%"github.com/goplus/llgo/async.ReadyFuture[int]" = type { i64 }
%"github.com/goplus/llgo/async.Context" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }
%"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State" = type { i8, i64, i64, i64, i1, ptr, i64, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 }
%"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State" = type { i8, i64, i64, i64, i64, ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 }
%"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State" = type { i8, i64, i64, i64, i64, i64, ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 }

@"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -103283099, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Await", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Poll", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Poll" }] }, align 8
@0 = private unnamed_addr constant [22 x i8] c"async.ReadyFuture[int]", align 1
@"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1814719306, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@1 = private unnamed_addr constant [28 x i8] c"github.com/goplus/llgo/async", align 1
@2 = private unnamed_addr constant [5 x i8] c"value", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr @"*_llgo_int" }, align 8
@3 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"github.com/goplus/llgo/cl/_testpull/crossvar.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
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
@"_llgo_github.com/goplus/llgo/async.Context" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 0, i32 29200871, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Context" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 13 }, ptr @"*_llgo_github.com/goplus/llgo/async.Context" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.struct$Re9uCNpaPdvqJtnZYej5NZ8aMgZjb-_ftN8ogfRqy78$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@9 = private unnamed_addr constant [5 x i8] c"Waker", align 1
@"_llgo_github.com/goplus/llgo/async.Waker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -2133419533, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 11 }, ptr @"*_llgo_github.com/goplus/llgo/async.Waker" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$5udCHZ6xl-fBE2F9apjWV2qrxMb4_QYfwdoy0QD1D8c$imethods", i64 1, i64 1 } }, align 8
@10 = private unnamed_addr constant [11 x i8] c"async.Waker", align 1
@"*_llgo_github.com/goplus/llgo/async.Waker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 504672852, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 11 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Waker" }, align 8
@11 = private unnamed_addr constant [44 x i8] c"github.com/goplus/llgo/cl/_testpull/crossvar", align 1
@12 = private unnamed_addr constant [4 x i8] c"Wake", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@13 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@"_llgo_iface$5udCHZ6xl-fBE2F9apjWV2qrxMb4_QYfwdoy0QD1D8c$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 4 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }], align 8
@14 = private unnamed_addr constant [8 x i8] c"hasWaker", align 1
@_llgo_bool = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 554183389, i8 12, i8 1, i8 1, i8 33, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 4 }, ptr @"*_llgo_bool" }, align 8
@15 = private unnamed_addr constant [4 x i8] c"bool", align 1
@"*_llgo_bool" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1896950390, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 4 }, ptr null }, ptr @_llgo_bool }, align 8
@"github.com/goplus/llgo/cl/_testpull/crossvar.struct$Re9uCNpaPdvqJtnZYej5NZ8aMgZjb-_ftN8ogfRqy78$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/async.Waker", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 8 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/async.Context"], align 8
@"_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 801809575, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 15 }, ptr @"*_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.struct$M9E5HRdqyc11Zqvq07yhy6frK_fAyRGIc35bZKl9nrs$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error", ptr @"github.com/goplus/llgo/async.Poll[int].Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError", ptr @"github.com/goplus/llgo/async.Poll[int].HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.Poll[int].IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.Poll[int].Value" }] }, align 8
@16 = private unnamed_addr constant [15 x i8] c"async.Poll[int]", align 1
@"*_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -920093333, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 15 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value" }] }, align 8
@17 = private unnamed_addr constant [5 x i8] c"Error", align 1
@"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1398528794, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 19 }, ptr @"*_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8$out", i64 1, i64 1 } }, align 8
@18 = private unnamed_addr constant [19 x i8] c"func() interface {}", align 1
@"*_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1160547289, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 19 }, ptr null }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" }, align 8
@_llgo_any = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1376530322, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 12 }, ptr @"*_llgo_any" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
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
@"github.com/goplus/llgo/cl/_testpull/crossvar.struct$M9E5HRdqyc11Zqvq07yhy6frK_fAyRGIc35bZKl9nrs$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 5 }, ptr @_llgo_bool, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @_llgo_any, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]"], align 8
@"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 975938808, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 63 }, ptr @"*_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI$imethods", i64 2, i64 2 } }, align 8
@26 = private unnamed_addr constant [63 x i8] c"interface { Await() int; Poll(*async.Context) async.Poll[int] }", align 1
@"*_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1309347707, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 63 }, ptr null }, ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI" }, align 8
@"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI$imethods" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1136102875, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 39 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 44 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.(*AccumulateWithMultiplier$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.(*AccumulateWithMultiplier$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.(*AccumulateWithMultiplier$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.(*AccumulateWithMultiplier$State).Poll" }] }, align 8
@27 = private unnamed_addr constant [39 x i8] c"crossvar.AccumulateWithMultiplier$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 96, i64 72, i32 -775893706, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 39 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.struct$yMyHudmh3v4_1PnazWTYcjG9pkPlZwYFTLx-0z5dcjQ$fields", i64 11, i64 11 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 44 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@28 = private unnamed_addr constant [5 x i8] c"state", align 1
@_llgo_int8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 1444672578, i8 12, i8 1, i8 1, i8 35, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 4 }, ptr @"*_llgo_int8" }, align 8
@29 = private unnamed_addr constant [4 x i8] c"int8", align 1
@"*_llgo_int8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1399554408, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 4 }, ptr null }, ptr @_llgo_int8 }, align 8
@30 = private unnamed_addr constant [6 x i8] c"param0", align 1
@31 = private unnamed_addr constant [4 x i8] c"var0", align 1
@32 = private unnamed_addr constant [4 x i8] c"var1", align 1
@33 = private unnamed_addr constant [4 x i8] c"var2", align 1
@34 = private unnamed_addr constant [4 x i8] c"var3", align 1
@35 = private unnamed_addr constant [4 x i8] c"var4", align 1
@"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 964362133, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll" }] }, align 8
@36 = private unnamed_addr constant [22 x i8] c"async.AsyncFuture[int]", align 1
@"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 0, i32 1769159236, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@37 = private unnamed_addr constant [2 x i8] c"fn", align 1
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1213993089, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 87 }, ptr @"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields", i64 2, i64 2 } }, align 8
@38 = private unnamed_addr constant [87 x i8] c"struct { $f func(struct { $f func(int); $data unsafe.Pointer }); $data unsafe.Pointer }", align 1
@"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1666834553, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 87 }, ptr null }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, align 8
@39 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2009615728, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 51 }, ptr @"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@40 = private unnamed_addr constant [51 x i8] c"func(struct { $f func(int); $data unsafe.Pointer })", align 1
@"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1512208703, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 51 }, ptr null }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1556934939, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 45 }, ptr @"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields", i64 2, i64 2 } }, align 8
@41 = private unnamed_addr constant [45 x i8] c"struct { $f func(int); $data unsafe.Pointer }", align 1
@"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 364872269, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 45 }, ptr null }, ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -637187458, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 9 }, ptr @"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@42 = private unnamed_addr constant [9 x i8] c"func(int)", align 1
@"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 735356155, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 9 }, ptr null }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@43 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@44 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 2 }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM"], align 8
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 2 }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@45 = private unnamed_addr constant [7 x i8] c"started", align 1
@"github.com/goplus/llgo/cl/_testpull/crossvar.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 2 }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 7 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 5 }, ptr @_llgo_bool, i64 17, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@46 = private unnamed_addr constant [4 x i8] c"var5", align 1
@47 = private unnamed_addr constant [4 x i8] c"sub0", align 1
@48 = private unnamed_addr constant [8 x i8] c"panicErr", align 1
@49 = private unnamed_addr constant [11 x i8] c"resultValue", align 1
@"github.com/goplus/llgo/cl/_testpull/crossvar.struct$yMyHudmh3v4_1PnazWTYcjG9pkPlZwYFTLx-0z5dcjQ$fields" = weak_odr constant [11 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @_llgo_bool, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 4 }, ptr @_llgo_int, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 8 }, ptr @_llgo_any, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 11 }, ptr @_llgo_int, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1151257552, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 30 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 44 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.(*IncrementInLoop$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.(*IncrementInLoop$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.(*IncrementInLoop$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.(*IncrementInLoop$State).Poll" }] }, align 8
@50 = private unnamed_addr constant [30 x i8] c"crossvar.IncrementInLoop$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 88, i64 64, i32 -1381468253, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 30 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.struct$SDqlpUYrywvHkSdG4Wytp9jWs2Kf_R9sLoCgmAhVa-I$fields", i64 10, i64 10 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 44 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/crossvar.struct$SDqlpUYrywvHkSdG4Wytp9jWs2Kf_R9sLoCgmAhVa-I$fields" = weak_odr constant [10 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 4 }, ptr @_llgo_bool, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 8 }, ptr @_llgo_any, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 11 }, ptr @_llgo_int, i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1289674255, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 34 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 44 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.(*ModifyBetweenAwaits$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.(*ModifyBetweenAwaits$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.(*ModifyBetweenAwaits$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.(*ModifyBetweenAwaits$State).Poll" }] }, align 8
@51 = private unnamed_addr constant [34 x i8] c"crossvar.ModifyBetweenAwaits$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 80, i64 56, i32 -1656447495, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 34 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.struct$2K69yrNHRRTDNqH6WoBpzNks5kWZ418TlnrJr2wX2Ns$fields", i64 9, i64 9 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 44 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@52 = private unnamed_addr constant [4 x i8] c"sub1", align 1
@"github.com/goplus/llgo/cl/_testpull/crossvar.struct$2K69yrNHRRTDNqH6WoBpzNks5kWZ418TlnrJr2wX2Ns$fields" = weak_odr constant [9 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 8 }, ptr @_llgo_any, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 11 }, ptr @_llgo_int, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -581387861, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 28 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 44 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.(*SwapVariables$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.(*SwapVariables$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.(*SwapVariables$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.(*SwapVariables$State).Poll" }] }, align 8
@53 = private unnamed_addr constant [28 x i8] c"crossvar.SwapVariables$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 88, i64 64, i32 1630639055, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 28 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.struct$TQgV6Jk7cWI8b-mhQ3eyD4sI59-_DG7sc_SvtWlzcRk$fields", i64 10, i64 10 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 44 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@54 = private unnamed_addr constant [6 x i8] c"param1", align 1
@"github.com/goplus/llgo/cl/_testpull/crossvar.struct$TQgV6Jk7cWI8b-mhQ3eyD4sI59-_DG7sc_SvtWlzcRk$fields" = weak_odr constant [10 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 6 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 8 }, ptr @_llgo_any, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 11 }, ptr @_llgo_int, i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/crossvar.init$guard" = global i1 false, align 1
@55 = private unnamed_addr constant [45 x i8] c"Await() should be transformed by the compiler", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 6 }, ptr @"*_llgo_string" }, align 8
@56 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 6 }, ptr null }, ptr @_llgo_string }, align 8

define i64 @"github.com/goplus/llgo/cl/_testpull/crossvar.(*AccumulateWithMultiplier$State).Await"(ptr %0) {
_llgo_0:
  ret i64 undef
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/crossvar.(*AccumulateWithMultiplier$State).Poll"(ptr %0, ptr %1) {
AccumulateWithMultiplier_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %AccumulateWithMultiplier_state_unreach [
    i8 0, label %AccumulateWithMultiplier_state_00
    i8 1, label %AccumulateWithMultiplier_state_01
    i8 2, label %AccumulateWithMultiplier_state_02
    i8 3, label %AccumulateWithMultiplier_state_03
    i8 4, label %AccumulateWithMultiplier_state_04
    i8 5, label %AccumulateWithMultiplier_state_done
  ]

AccumulateWithMultiplier_state_00:                ; preds = %AccumulateWithMultiplier_entry
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 3
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 4
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 5
  %13 = load i1, ptr %12, align 1
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 6
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 7
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 2
  store i64 0, ptr %18, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 3
  store i64 1, ptr %19, align 4
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 4
  store i64 0, ptr %20, align 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %21, align 1
  br label %AccumulateWithMultiplier_state_01

AccumulateWithMultiplier_state_01:                ; preds = %AccumulateWithMultiplier_state_03, %AccumulateWithMultiplier_state_00, %AccumulateWithMultiplier_entry
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 1
  %23 = load i64, ptr %22, align 4
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 2
  %25 = load i64, ptr %24, align 4
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 3
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 4
  %29 = load i64, ptr %28, align 4
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 6
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 7
  %33 = load i64, ptr %32, align 4
  %34 = icmp slt i64 %29, %23
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 5
  store i1 %34, ptr %35, align 1
  br i1 %34, label %AccumulateWithMultiplier_state_01_true, label %AccumulateWithMultiplier_state_01_false

AccumulateWithMultiplier_state_02:                ; preds = %AccumulateWithMultiplier_state_01_true, %AccumulateWithMultiplier_entry
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 1
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 2
  %39 = load i64, ptr %38, align 4
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 3
  %41 = load i64, ptr %40, align 4
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 4
  %43 = load i64, ptr %42, align 4
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 5
  %45 = load i1, ptr %44, align 1
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 7
  %47 = load i64, ptr %46, align 4
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 8
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %AccumulateWithMultiplier_state_02_init, label %AccumulateWithMultiplier_state_02_poll

AccumulateWithMultiplier_state_03:                ; preds = %AccumulateWithMultiplier_state_02_ready_cont, %AccumulateWithMultiplier_entry
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 1
  %52 = load i64, ptr %51, align 4
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 2
  %54 = load i64, ptr %53, align 4
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 3
  %56 = load i64, ptr %55, align 4
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 4
  %58 = load i64, ptr %57, align 4
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 5
  %60 = load i1, ptr %59, align 1
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 7
  %62 = load i64, ptr %61, align 4
  %63 = mul i64 %62, %56
  %64 = add i64 %54, %63
  %65 = mul i64 %56, 2
  %66 = add i64 %58, 1
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 2
  store i64 %64, ptr %67, align 4
  %68 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 3
  store i64 %65, ptr %68, align 4
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 4
  store i64 %66, ptr %69, align 4
  %70 = call ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.Step"(i64 %66)
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 6
  store ptr %70, ptr %71, align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 7
  store i64 %62, ptr %72, align 4
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %73, align 1
  br label %AccumulateWithMultiplier_state_01

AccumulateWithMultiplier_state_04:                ; preds = %AccumulateWithMultiplier_state_01_false, %AccumulateWithMultiplier_entry
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 1
  %75 = load i64, ptr %74, align 4
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 2
  %77 = load i64, ptr %76, align 4
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 3
  %79 = load i64, ptr %78, align 4
  %80 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 4
  %81 = load i64, ptr %80, align 4
  %82 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 5
  %83 = load i1, ptr %82, align 1
  %84 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 6
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 7
  %87 = load i64, ptr %86, align 4
  %88 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 2
  %89 = load i64, ptr %88, align 4
  %90 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %77)
  %91 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %92 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %91, 0
  %93 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %92, ptr %90, 1
  %94 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 10
  store i64 %89, ptr %94, align 4
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 9
  %96 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %95, align 8
  store { ptr, ptr } zeroinitializer, ptr %95, align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %97, align 1
  %98 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 10
  %99 = load i64, ptr %98, align 4
  %100 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %99, 1
  %101 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %100, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %101

AccumulateWithMultiplier_state_done:              ; preds = %AccumulateWithMultiplier_entry
  %102 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 9
  %103 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %102, align 8
  %104 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %103, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %104

AccumulateWithMultiplier_state_unreach:           ; preds = %AccumulateWithMultiplier_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_8:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

AccumulateWithMultiplier_state_01_true:           ; preds = %AccumulateWithMultiplier_state_01
  %105 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 5
  store i1 %34, ptr %105, align 1
  %106 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %106, align 1
  br label %AccumulateWithMultiplier_state_02

AccumulateWithMultiplier_state_01_false:          ; preds = %AccumulateWithMultiplier_state_01
  %107 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 5
  store i1 %34, ptr %107, align 1
  %108 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %108, align 1
  br label %AccumulateWithMultiplier_state_04

AccumulateWithMultiplier_state_02_init:           ; preds = %AccumulateWithMultiplier_state_02
  %109 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 1
  %110 = load i64, ptr %109, align 4
  %111 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 2
  %112 = load i64, ptr %111, align 4
  %113 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 3
  %114 = load i64, ptr %113, align 4
  %115 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 4
  %116 = load i64, ptr %115, align 4
  %117 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 5
  %118 = load i1, ptr %117, align 1
  %119 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 7
  %120 = load i64, ptr %119, align 4
  %121 = call ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.Step"(i64 %116)
  %122 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 6
  store ptr %121, ptr %122, align 8
  store ptr %121, ptr %48, align 8
  br label %AccumulateWithMultiplier_state_02_poll

AccumulateWithMultiplier_state_02_poll:           ; preds = %AccumulateWithMultiplier_state_02_init, %AccumulateWithMultiplier_state_02
  %123 = load ptr, ptr %48, align 8
  %124 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %123, ptr %1)
  %125 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %124, 0
  br i1 %125, label %AccumulateWithMultiplier_state_02_ready, label %AccumulateWithMultiplier_state_02_pending

AccumulateWithMultiplier_state_02_ready:          ; preds = %AccumulateWithMultiplier_state_02_poll
  %126 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %124, 2
  %127 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %126, { ptr, ptr } zeroinitializer)
  %128 = xor i1 %127, true
  br i1 %128, label %AccumulateWithMultiplier_state_02_err, label %AccumulateWithMultiplier_state_02_ready_cont

AccumulateWithMultiplier_state_02_pending:        ; preds = %AccumulateWithMultiplier_state_02_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

AccumulateWithMultiplier_state_02_err:            ; preds = %AccumulateWithMultiplier_state_02_ready
  %129 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %129, align 1
  %130 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 9
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %126, ptr %130, align 8
  %131 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %126, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %131

AccumulateWithMultiplier_state_02_ready_cont:     ; preds = %AccumulateWithMultiplier_state_02_ready
  %132 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %124, 1
  %133 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 7
  store i64 %132, ptr %133, align 4
  %134 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 6
  store ptr %121, ptr %134, align 8
  store ptr null, ptr %48, align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %135, align 1
  br label %AccumulateWithMultiplier_state_03
}

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

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

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
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 96)
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
  store i1 false, ptr %7, align 1
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %1, i32 0, i32 6
  store ptr null, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %1, i32 0, i32 7
  store i64 0, ptr %9, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State", ptr %1, i32 0, i32 8
  store ptr null, ptr %10, align 8
  ret ptr %1
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.AccumulateWithMultiplier$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define linkonce i64 @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 45 }, ptr %1, align 8
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

define i64 @"github.com/goplus/llgo/cl/_testpull/crossvar.(*IncrementInLoop$State).Await"(ptr %0) {
_llgo_0:
  ret i64 undef
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/crossvar.(*IncrementInLoop$State).Poll"(ptr %0, ptr %1) {
IncrementInLoop_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %IncrementInLoop_state_unreach [
    i8 0, label %IncrementInLoop_state_00
    i8 1, label %IncrementInLoop_state_01
    i8 2, label %IncrementInLoop_state_02
    i8 3, label %IncrementInLoop_state_03
    i8 4, label %IncrementInLoop_state_04
    i8 5, label %IncrementInLoop_state_done
  ]

IncrementInLoop_state_00:                         ; preds = %IncrementInLoop_entry
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 3
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 4
  %11 = load i1, ptr %10, align 1
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 6
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 2
  store i64 0, ptr %16, align 4
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 3
  store i64 0, ptr %17, align 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %18, align 1
  br label %IncrementInLoop_state_01

IncrementInLoop_state_01:                         ; preds = %IncrementInLoop_state_03, %IncrementInLoop_state_00, %IncrementInLoop_entry
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 1
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 2
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 3
  %24 = load i64, ptr %23, align 4
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 5
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 6
  %28 = load i64, ptr %27, align 4
  %29 = icmp slt i64 %24, %20
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 4
  store i1 %29, ptr %30, align 1
  br i1 %29, label %IncrementInLoop_state_01_true, label %IncrementInLoop_state_01_false

IncrementInLoop_state_02:                         ; preds = %IncrementInLoop_state_01_true, %IncrementInLoop_entry
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 1
  %32 = load i64, ptr %31, align 4
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 2
  %34 = load i64, ptr %33, align 4
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 3
  %36 = load i64, ptr %35, align 4
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 4
  %38 = load i1, ptr %37, align 1
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 6
  %40 = load i64, ptr %39, align 4
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 7
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %IncrementInLoop_state_02_init, label %IncrementInLoop_state_02_poll

IncrementInLoop_state_03:                         ; preds = %IncrementInLoop_state_02_ready_cont, %IncrementInLoop_entry
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 1
  %45 = load i64, ptr %44, align 4
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 2
  %47 = load i64, ptr %46, align 4
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 3
  %49 = load i64, ptr %48, align 4
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 4
  %51 = load i1, ptr %50, align 1
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 6
  %53 = load i64, ptr %52, align 4
  %54 = add i64 %47, %53
  %55 = add i64 %54, 1
  %56 = add i64 %49, 1
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 2
  store i64 %55, ptr %57, align 4
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 3
  store i64 %56, ptr %58, align 4
  %59 = call ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.Step"(i64 %56)
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 5
  store ptr %59, ptr %60, align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 6
  store i64 %53, ptr %61, align 4
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %62, align 1
  br label %IncrementInLoop_state_01

IncrementInLoop_state_04:                         ; preds = %IncrementInLoop_state_01_false, %IncrementInLoop_entry
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 1
  %64 = load i64, ptr %63, align 4
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 2
  %66 = load i64, ptr %65, align 4
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 3
  %68 = load i64, ptr %67, align 4
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 4
  %70 = load i1, ptr %69, align 1
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 5
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 6
  %74 = load i64, ptr %73, align 4
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 2
  %76 = load i64, ptr %75, align 4
  %77 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %66)
  %78 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %79 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %78, 0
  %80 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %79, ptr %77, 1
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 9
  store i64 %76, ptr %81, align 4
  %82 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 8
  %83 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %82, align 8
  store { ptr, ptr } zeroinitializer, ptr %82, align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %84, align 1
  %85 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 9
  %86 = load i64, ptr %85, align 4
  %87 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %86, 1
  %88 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %87, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %88

IncrementInLoop_state_done:                       ; preds = %IncrementInLoop_entry
  %89 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 8
  %90 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %89, align 8
  %91 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %90, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %91

IncrementInLoop_state_unreach:                    ; preds = %IncrementInLoop_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_8:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

IncrementInLoop_state_01_true:                    ; preds = %IncrementInLoop_state_01
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 4
  store i1 %29, ptr %92, align 1
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %93, align 1
  br label %IncrementInLoop_state_02

IncrementInLoop_state_01_false:                   ; preds = %IncrementInLoop_state_01
  %94 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 4
  store i1 %29, ptr %94, align 1
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %95, align 1
  br label %IncrementInLoop_state_04

IncrementInLoop_state_02_init:                    ; preds = %IncrementInLoop_state_02
  %96 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 1
  %97 = load i64, ptr %96, align 4
  %98 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 2
  %99 = load i64, ptr %98, align 4
  %100 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 3
  %101 = load i64, ptr %100, align 4
  %102 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 4
  %103 = load i1, ptr %102, align 1
  %104 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 6
  %105 = load i64, ptr %104, align 4
  %106 = call ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.Step"(i64 %101)
  %107 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 5
  store ptr %106, ptr %107, align 8
  store ptr %106, ptr %41, align 8
  br label %IncrementInLoop_state_02_poll

IncrementInLoop_state_02_poll:                    ; preds = %IncrementInLoop_state_02_init, %IncrementInLoop_state_02
  %108 = load ptr, ptr %41, align 8
  %109 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %108, ptr %1)
  %110 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %109, 0
  br i1 %110, label %IncrementInLoop_state_02_ready, label %IncrementInLoop_state_02_pending

IncrementInLoop_state_02_ready:                   ; preds = %IncrementInLoop_state_02_poll
  %111 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %109, 2
  %112 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %111, { ptr, ptr } zeroinitializer)
  %113 = xor i1 %112, true
  br i1 %113, label %IncrementInLoop_state_02_err, label %IncrementInLoop_state_02_ready_cont

IncrementInLoop_state_02_pending:                 ; preds = %IncrementInLoop_state_02_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

IncrementInLoop_state_02_err:                     ; preds = %IncrementInLoop_state_02_ready
  %114 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %114, align 1
  %115 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %111, ptr %115, align 8
  %116 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %111, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %116

IncrementInLoop_state_02_ready_cont:              ; preds = %IncrementInLoop_state_02_ready
  %117 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %109, 1
  %118 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 6
  store i64 %117, ptr %118, align 4
  %119 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 5
  store ptr %106, ptr %119, align 8
  store ptr null, ptr %41, align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %120, align 1
  br label %IncrementInLoop_state_03
}

define ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 88)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %1, i32 0, i32 3
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %1, i32 0, i32 4
  store i1 false, ptr %6, align 1
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %1, i32 0, i32 5
  store ptr null, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %1, i32 0, i32 6
  store i64 0, ptr %8, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State", ptr %1, i32 0, i32 7
  store ptr null, ptr %9, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.IncrementInLoop$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define i64 @"github.com/goplus/llgo/cl/_testpull/crossvar.(*ModifyBetweenAwaits$State).Await"(ptr %0) {
_llgo_0:
  ret i64 undef
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/crossvar.(*ModifyBetweenAwaits$State).Poll"(ptr %0, ptr %1) {
ModifyBetweenAwaits_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %ModifyBetweenAwaits_state_unreach [
    i8 0, label %ModifyBetweenAwaits_state_00
    i8 1, label %ModifyBetweenAwaits_state_01
    i8 2, label %ModifyBetweenAwaits_state_02
    i8 3, label %ModifyBetweenAwaits_state_done
  ]

ModifyBetweenAwaits_state_00:                     ; preds = %ModifyBetweenAwaits_entry
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 4
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %ModifyBetweenAwaits_state_00_init, label %ModifyBetweenAwaits_state_00_poll

ModifyBetweenAwaits_state_01:                     ; preds = %ModifyBetweenAwaits_state_00_ready_cont, %ModifyBetweenAwaits_entry
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 1
  %14 = load i64, ptr %13, align 4
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 2
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 4
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 6
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %ModifyBetweenAwaits_state_01_init, label %ModifyBetweenAwaits_state_01_poll

ModifyBetweenAwaits_state_02:                     ; preds = %ModifyBetweenAwaits_state_01_ready_cont, %ModifyBetweenAwaits_entry
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 1
  %23 = load i64, ptr %22, align 4
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 2
  %25 = load i64, ptr %24, align 4
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 4
  %27 = load i64, ptr %26, align 4
  %28 = add i64 0, %25
  %29 = mul i64 %28, 2
  %30 = add i64 %29, %27
  %31 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %30)
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %32, 0
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %33, ptr %31, 1
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 8
  store i64 %30, ptr %35, align 4
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 7
  %37 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %36, align 8
  store { ptr, ptr } zeroinitializer, ptr %36, align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %38, align 1
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 8
  %40 = load i64, ptr %39, align 4
  %41 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %40, 1
  %42 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %41, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %42

ModifyBetweenAwaits_state_done:                   ; preds = %ModifyBetweenAwaits_entry
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 7
  %44 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %43, align 8
  %45 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %44, 2
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
  store ptr %52, ptr %10, align 8
  br label %ModifyBetweenAwaits_state_00_poll

ModifyBetweenAwaits_state_00_poll:                ; preds = %ModifyBetweenAwaits_state_00_init, %ModifyBetweenAwaits_state_00
  %53 = load ptr, ptr %10, align 8
  %54 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %53, ptr %1)
  %55 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %54, 0
  br i1 %55, label %ModifyBetweenAwaits_state_00_ready, label %ModifyBetweenAwaits_state_00_pending

ModifyBetweenAwaits_state_00_ready:               ; preds = %ModifyBetweenAwaits_state_00_poll
  %56 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %54, 2
  %57 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %56, { ptr, ptr } zeroinitializer)
  %58 = xor i1 %57, true
  br i1 %58, label %ModifyBetweenAwaits_state_00_err, label %ModifyBetweenAwaits_state_00_ready_cont

ModifyBetweenAwaits_state_00_pending:             ; preds = %ModifyBetweenAwaits_state_00_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

ModifyBetweenAwaits_state_00_err:                 ; preds = %ModifyBetweenAwaits_state_00_ready
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %59, align 1
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 7
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %56, ptr %60, align 8
  %61 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %56, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %61

ModifyBetweenAwaits_state_00_ready_cont:          ; preds = %ModifyBetweenAwaits_state_00_ready
  %62 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %54, 1
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 2
  store i64 %62, ptr %63, align 4
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 3
  %65 = add i64 0, %49
  %66 = mul i64 %65, 2
  store i64 %66, ptr %64, align 4
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 4
  store i64 %51, ptr %67, align 4
  store ptr null, ptr %10, align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %68, align 1
  br label %ModifyBetweenAwaits_state_01

ModifyBetweenAwaits_state_01_init:                ; preds = %ModifyBetweenAwaits_state_01
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 1
  %70 = load i64, ptr %69, align 4
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 2
  %72 = load i64, ptr %71, align 4
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 4
  %74 = load i64, ptr %73, align 4
  %75 = add i64 0, %72
  %76 = mul i64 %75, 2
  %77 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 3
  store i64 %76, ptr %77, align 4
  %78 = call ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.Step"(i64 %76)
  store ptr %78, ptr %19, align 8
  br label %ModifyBetweenAwaits_state_01_poll

ModifyBetweenAwaits_state_01_poll:                ; preds = %ModifyBetweenAwaits_state_01_init, %ModifyBetweenAwaits_state_01
  %79 = load ptr, ptr %19, align 8
  %80 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %79, ptr %1)
  %81 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %80, 0
  br i1 %81, label %ModifyBetweenAwaits_state_01_ready, label %ModifyBetweenAwaits_state_01_pending

ModifyBetweenAwaits_state_01_ready:               ; preds = %ModifyBetweenAwaits_state_01_poll
  %82 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %80, 2
  %83 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %82, { ptr, ptr } zeroinitializer)
  %84 = xor i1 %83, true
  br i1 %84, label %ModifyBetweenAwaits_state_01_err, label %ModifyBetweenAwaits_state_01_ready_cont

ModifyBetweenAwaits_state_01_pending:             ; preds = %ModifyBetweenAwaits_state_01_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

ModifyBetweenAwaits_state_01_err:                 ; preds = %ModifyBetweenAwaits_state_01_ready
  %85 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %85, align 1
  %86 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 7
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %82, ptr %86, align 8
  %87 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %82, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %87

ModifyBetweenAwaits_state_01_ready_cont:          ; preds = %ModifyBetweenAwaits_state_01_ready
  %88 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %80, 1
  %89 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 4
  store i64 %88, ptr %89, align 4
  %90 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 2
  store i64 %72, ptr %90, align 4
  %91 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 3
  store i64 %76, ptr %91, align 4
  store ptr null, ptr %19, align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %92, align 1
  br label %ModifyBetweenAwaits_state_02
}

define ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 80)
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
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.ModifyBetweenAwaits$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define i64 @"github.com/goplus/llgo/cl/_testpull/crossvar.(*SwapVariables$State).Await"(ptr %0) {
_llgo_0:
  ret i64 undef
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/crossvar.(*SwapVariables$State).Poll"(ptr %0, ptr %1) {
SwapVariables_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %SwapVariables_state_unreach [
    i8 0, label %SwapVariables_state_00
    i8 1, label %SwapVariables_state_01
    i8 2, label %SwapVariables_state_02
    i8 3, label %SwapVariables_state_done
  ]

SwapVariables_state_00:                           ; preds = %SwapVariables_entry
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 3
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 5
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %SwapVariables_state_00_init, label %SwapVariables_state_00_poll

SwapVariables_state_01:                           ; preds = %SwapVariables_state_00_ready_cont, %SwapVariables_entry
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 1
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 2
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 3
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 5
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 7
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %SwapVariables_state_01_init, label %SwapVariables_state_01_poll

SwapVariables_state_02:                           ; preds = %SwapVariables_state_01_ready_cont, %SwapVariables_entry
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 1
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 2
  %29 = load i64, ptr %28, align 4
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 3
  %31 = load i64, ptr %30, align 4
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 5
  %33 = load i64, ptr %32, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 5
  %35 = load i64, ptr %34, align 4
  %36 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %33)
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %37, 0
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %38, ptr %36, 1
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 9
  store i64 %35, ptr %40, align 4
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 8
  %42 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %41, align 8
  store { ptr, ptr } zeroinitializer, ptr %41, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %43, align 1
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 9
  %45 = load i64, ptr %44, align 4
  %46 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %45, 1
  %47 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %46, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %47

SwapVariables_state_done:                         ; preds = %SwapVariables_entry
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 8
  %49 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %48, align 8
  %50 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %49, 2
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
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 5
  %58 = load i64, ptr %57, align 4
  %59 = call ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.Step"(i64 %52)
  store ptr %59, ptr %12, align 8
  br label %SwapVariables_state_00_poll

SwapVariables_state_00_poll:                      ; preds = %SwapVariables_state_00_init, %SwapVariables_state_00
  %60 = load ptr, ptr %12, align 8
  %61 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %60, ptr %1)
  %62 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %61, 0
  br i1 %62, label %SwapVariables_state_00_ready, label %SwapVariables_state_00_pending

SwapVariables_state_00_ready:                     ; preds = %SwapVariables_state_00_poll
  %63 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %61, 2
  %64 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %63, { ptr, ptr } zeroinitializer)
  %65 = xor i1 %64, true
  br i1 %65, label %SwapVariables_state_00_err, label %SwapVariables_state_00_ready_cont

SwapVariables_state_00_pending:                   ; preds = %SwapVariables_state_00_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

SwapVariables_state_00_err:                       ; preds = %SwapVariables_state_00_ready
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %66, align 1
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %63, ptr %67, align 8
  %68 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %63, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %68

SwapVariables_state_00_ready_cont:                ; preds = %SwapVariables_state_00_ready
  %69 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %61, 1
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 3
  store i64 %69, ptr %70, align 4
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 4
  %72 = add i64 %54, %56
  store i64 %72, ptr %71, align 4
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 5
  store i64 %58, ptr %73, align 4
  store ptr null, ptr %12, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %74, align 1
  br label %SwapVariables_state_01

SwapVariables_state_01_init:                      ; preds = %SwapVariables_state_01
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 1
  %76 = load i64, ptr %75, align 4
  %77 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 2
  %78 = load i64, ptr %77, align 4
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 3
  %80 = load i64, ptr %79, align 4
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 5
  %82 = load i64, ptr %81, align 4
  %83 = add i64 %78, %80
  %84 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 4
  store i64 %83, ptr %84, align 4
  %85 = call ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.Step"(i64 %83)
  store ptr %85, ptr %23, align 8
  br label %SwapVariables_state_01_poll

SwapVariables_state_01_poll:                      ; preds = %SwapVariables_state_01_init, %SwapVariables_state_01
  %86 = load ptr, ptr %23, align 8
  %87 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %86, ptr %1)
  %88 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %87, 0
  br i1 %88, label %SwapVariables_state_01_ready, label %SwapVariables_state_01_pending

SwapVariables_state_01_ready:                     ; preds = %SwapVariables_state_01_poll
  %89 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %87, 2
  %90 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %89, { ptr, ptr } zeroinitializer)
  %91 = xor i1 %90, true
  br i1 %91, label %SwapVariables_state_01_err, label %SwapVariables_state_01_ready_cont

SwapVariables_state_01_pending:                   ; preds = %SwapVariables_state_01_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

SwapVariables_state_01_err:                       ; preds = %SwapVariables_state_01_ready
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %92, align 1
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %89, ptr %93, align 8
  %94 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %89, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %94

SwapVariables_state_01_ready_cont:                ; preds = %SwapVariables_state_01_ready
  %95 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %87, 1
  %96 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 5
  store i64 %95, ptr %96, align 4
  %97 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 3
  store i64 %80, ptr %97, align 4
  %98 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 4
  store i64 %83, ptr %98, align 4
  store ptr null, ptr %23, align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %99, align 1
  br label %SwapVariables_state_02
}

define ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$Concrete"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 88)
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
  store i64 0, ptr %8, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %2, i32 0, i32 6
  store ptr null, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State", ptr %2, i32 0, i32 7
  store ptr null, ptr %10, align 8
  ret ptr %2
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$Concrete"(i64 %0, i64 %1)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/crossvar.SwapVariables$State")
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
