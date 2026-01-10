; ModuleID = 'github.com/goplus/llgo/cl/_testpull/edgecases'
source_filename = "github.com/goplus/llgo/cl/_testpull/edgecases"

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
%"github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State" = type { i8, i1, i64, ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/async.ReadyFuture[int]" = type { i64 }
%"github.com/goplus/llgo/async.AsyncFuture[int]" = type { { ptr, ptr }, i1, i1, i64 }
%"github.com/goplus/llgo/async.Context" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }
%"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State" = type { i8, i64, i64, i64, ptr, ptr, i64 }
%"github.com/goplus/llgo/cl/_testpull/edgecases.SingleAwait$State" = type { i8, i64, i64, ptr, i64 }

@0 = private unnamed_addr constant [11 x i8] c"EarlyReturn", align 1
@1 = private unnamed_addr constant [8 x i8] c"dispatch", align 1
@2 = private unnamed_addr constant [5 x i8] c"enter", align 1
@"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -103283099, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Await", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Poll", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Poll" }] }, align 8
@3 = private unnamed_addr constant [22 x i8] c"async.ReadyFuture[int]", align 1
@"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1814719306, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/edgecases.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@4 = private unnamed_addr constant [28 x i8] c"github.com/goplus/llgo/async", align 1
@5 = private unnamed_addr constant [5 x i8] c"value", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, ptr @"*_llgo_int" }, align 8
@6 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"github.com/goplus/llgo/cl/_testpull/edgecases.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@7 = private unnamed_addr constant [5 x i8] c"Await", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2131144854, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 10 }, ptr @"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out", i64 1, i64 1 } }, align 8
@8 = private unnamed_addr constant [10 x i8] c"func() int", align 1
@"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1805835775, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 10 }, ptr null }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@9 = private unnamed_addr constant [4 x i8] c"Poll", align 1
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1655717054, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 36 }, ptr @"*_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$out", i64 1, i64 1 } }, align 8
@10 = private unnamed_addr constant [36 x i8] c"func(*async.Context) async.Poll[int]", align 1
@"*_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -62824656, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 36 }, ptr null }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }, align 8
@"*_llgo_github.com/goplus/llgo/async.Context" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -808118033, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 13 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Context" }, align 8
@11 = private unnamed_addr constant [13 x i8] c"async.Context", align 1
@"_llgo_github.com/goplus/llgo/async.Context" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 0, i32 29200871, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Context" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 13 }, ptr @"*_llgo_github.com/goplus/llgo/async.Context" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/edgecases.struct$Re9uCNpaPdvqJtnZYej5NZ8aMgZjb-_ftN8ogfRqy78$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@12 = private unnamed_addr constant [5 x i8] c"Waker", align 1
@"_llgo_github.com/goplus/llgo/async.Waker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -2133419533, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 11 }, ptr @"*_llgo_github.com/goplus/llgo/async.Waker" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 45 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$5udCHZ6xl-fBE2F9apjWV2qrxMb4_QYfwdoy0QD1D8c$imethods", i64 1, i64 1 } }, align 8
@13 = private unnamed_addr constant [11 x i8] c"async.Waker", align 1
@"*_llgo_github.com/goplus/llgo/async.Waker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 504672852, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 11 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Waker" }, align 8
@14 = private unnamed_addr constant [45 x i8] c"github.com/goplus/llgo/cl/_testpull/edgecases", align 1
@15 = private unnamed_addr constant [4 x i8] c"Wake", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@16 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@"_llgo_iface$5udCHZ6xl-fBE2F9apjWV2qrxMb4_QYfwdoy0QD1D8c$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 4 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }], align 8
@17 = private unnamed_addr constant [8 x i8] c"hasWaker", align 1
@_llgo_bool = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 554183389, i8 12, i8 1, i8 1, i8 33, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 4 }, ptr @"*_llgo_bool" }, align 8
@18 = private unnamed_addr constant [4 x i8] c"bool", align 1
@"*_llgo_bool" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1896950390, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 4 }, ptr null }, ptr @_llgo_bool }, align 8
@"github.com/goplus/llgo/cl/_testpull/edgecases.struct$Re9uCNpaPdvqJtnZYej5NZ8aMgZjb-_ftN8ogfRqy78$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/async.Waker", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 8 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/async.Context"], align 8
@"_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 801809575, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 15 }, ptr @"*_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/edgecases.struct$M9E5HRdqyc11Zqvq07yhy6frK_fAyRGIc35bZKl9nrs$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error", ptr @"github.com/goplus/llgo/async.Poll[int].Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError", ptr @"github.com/goplus/llgo/async.Poll[int].HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.Poll[int].IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.Poll[int].Value" }] }, align 8
@19 = private unnamed_addr constant [15 x i8] c"async.Poll[int]", align 1
@"*_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -920093333, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 15 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value" }] }, align 8
@20 = private unnamed_addr constant [5 x i8] c"Error", align 1
@"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1398528794, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 19 }, ptr @"*_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8$out", i64 1, i64 1 } }, align 8
@21 = private unnamed_addr constant [19 x i8] c"func() interface {}", align 1
@"*_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1160547289, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 19 }, ptr null }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" }, align 8
@_llgo_any = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1376530322, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 12 }, ptr @"*_llgo_any" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 45 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@22 = private unnamed_addr constant [12 x i8] c"interface {}", align 1
@"*_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1741196194, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 12 }, ptr null }, ptr @_llgo_any }, align 8
@"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8$out" = weak_odr constant [1 x ptr] [ptr @_llgo_any], align 8
@23 = private unnamed_addr constant [8 x i8] c"HasError", align 1
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -541022001, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 11 }, ptr @"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out", i64 1, i64 1 } }, align 8
@24 = private unnamed_addr constant [11 x i8] c"func() bool", align 1
@"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -367308996, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 11 }, ptr null }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, align 8
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out" = weak_odr constant [1 x ptr] [ptr @_llgo_bool], align 8
@25 = private unnamed_addr constant [7 x i8] c"IsReady", align 1
@26 = private unnamed_addr constant [5 x i8] c"Value", align 1
@27 = private unnamed_addr constant [5 x i8] c"ready", align 1
@28 = private unnamed_addr constant [3 x i8] c"err", align 1
@"github.com/goplus/llgo/cl/_testpull/edgecases.struct$M9E5HRdqyc11Zqvq07yhy6frK_fAyRGIc35bZKl9nrs$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, ptr @_llgo_bool, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 3 }, ptr @_llgo_any, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]"], align 8
@"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 968294533, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 50 }, ptr @"*_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 45 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0$imethods", i64 1, i64 1 } }, align 8
@29 = private unnamed_addr constant [50 x i8] c"interface { Poll(*async.Context) async.Poll[int] }", align 1
@"*_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1655281012, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 50 }, ptr null }, ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" }, align 8
@"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }], align 8
@30 = private unnamed_addr constant [7 x i8] c"pending", align 1
@31 = private unnamed_addr constant [4 x i8] c"done", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1712925197, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 21 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 45 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/edgecases.(*EarlyReturn$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/edgecases.(*EarlyReturn$State).Poll" }] }, align 8
@32 = private unnamed_addr constant [21 x i8] c"foo.EarlyReturn$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 16, i32 -206662863, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 21 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/edgecases.struct$o0x_FEUL0z47iEaAkMUqct0VHAEt6ealNFBcPz0EsxQ$fields", i64 5, i64 5 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 45 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@33 = private unnamed_addr constant [5 x i8] c"state", align 1
@_llgo_int8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 1444672578, i8 12, i8 1, i8 1, i8 35, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @"*_llgo_int8" }, align 8
@34 = private unnamed_addr constant [4 x i8] c"int8", align 1
@"*_llgo_int8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1399554408, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr null }, ptr @_llgo_int8 }, align 8
@35 = private unnamed_addr constant [6 x i8] c"param0", align 1
@36 = private unnamed_addr constant [4 x i8] c"var0", align 1
@37 = private unnamed_addr constant [4 x i8] c"sub0", align 1
@"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 964362133, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll" }] }, align 8
@38 = private unnamed_addr constant [22 x i8] c"async.AsyncFuture[int]", align 1
@"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 0, i32 1769159236, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/edgecases.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@39 = private unnamed_addr constant [2 x i8] c"fn", align 1
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1213993089, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 87 }, ptr @"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields", i64 2, i64 2 } }, align 8
@40 = private unnamed_addr constant [87 x i8] c"struct { $f func(struct { $f func(int); $data unsafe.Pointer }); $data unsafe.Pointer }", align 1
@"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1666834553, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 87 }, ptr null }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, align 8
@41 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2009615728, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 51 }, ptr @"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@42 = private unnamed_addr constant [51 x i8] c"func(struct { $f func(int); $data unsafe.Pointer })", align 1
@"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1512208703, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 51 }, ptr null }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1556934939, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 45 }, ptr @"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields", i64 2, i64 2 } }, align 8
@43 = private unnamed_addr constant [45 x i8] c"struct { $f func(int); $data unsafe.Pointer }", align 1
@"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 364872269, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 45 }, ptr null }, ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -637187458, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 9 }, ptr @"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@44 = private unnamed_addr constant [9 x i8] c"func(int)", align 1
@"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 735356155, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 9 }, ptr null }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@45 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@46 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 2 }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM"], align 8
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 2 }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@47 = private unnamed_addr constant [7 x i8] c"started", align 1
@"github.com/goplus/llgo/cl/_testpull/edgecases.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 2 }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 7 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, ptr @_llgo_bool, i64 17, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@48 = private unnamed_addr constant [11 x i8] c"resultValue", align 1
@"github.com/goplus/llgo/cl/_testpull/edgecases.struct$o0x_FEUL0z47iEaAkMUqct0VHAEt6ealNFBcPz0EsxQ$fields" = weak_odr constant [5 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @_llgo_bool, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 11 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@49 = private unnamed_addr constant [15 x i8] c"MultipleReturns", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1862559379, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 25 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 45 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/edgecases.(*MultipleReturns$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/edgecases.(*MultipleReturns$State).Poll" }] }, align 8
@50 = private unnamed_addr constant [25 x i8] c"foo.MultipleReturns$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 56, i64 40, i32 -1814607494, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 25 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/edgecases.struct$3nq9vfCLhB2FbrWd-0Vy-yEqKMqg5li-gyM2yrr8rzQ$fields", i64 7, i64 7 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 45 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@51 = private unnamed_addr constant [4 x i8] c"var1", align 1
@52 = private unnamed_addr constant [4 x i8] c"sub1", align 1
@"github.com/goplus/llgo/cl/_testpull/edgecases.struct$3nq9vfCLhB2FbrWd-0Vy-yEqKMqg5li-gyM2yrr8rzQ$fields" = weak_odr constant [7 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 11 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@53 = private unnamed_addr constant [11 x i8] c"SingleAwait", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/edgecases.SingleAwait$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1907868256, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 21 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/edgecases.SingleAwait$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 45 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/edgecases.(*SingleAwait$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/edgecases.(*SingleAwait$State).Poll" }] }, align 8
@54 = private unnamed_addr constant [21 x i8] c"foo.SingleAwait$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/edgecases.SingleAwait$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 40, i64 24, i32 1126405194, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/edgecases.SingleAwait$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 21 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/edgecases.SingleAwait$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/edgecases.struct$TlJSwtSEbRmuHtSbRGvkIAKGDH-LolL0Fk8qV-4tu4Y$fields", i64 5, i64 5 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 45 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/edgecases.struct$TlJSwtSEbRmuHtSbRGvkIAKGDH-LolL0Fk8qV-4tu4Y$fields" = weak_odr constant [5 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 11 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/edgecases.init$guard" = global i1 false, align 1
@55 = private unnamed_addr constant [45 x i8] c"Await() should be transformed by the compiler", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 6 }, ptr @"*_llgo_string" }, align 8
@56 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 6 }, ptr null }, ptr @_llgo_string }, align 8

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/edgecases.(*EarlyReturn$State).Poll"(ptr %0, ptr %1) {
EarlyReturn_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  %4 = sext i8 %3 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 11 }, i64 %4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
  switch i8 %3, label %EarlyReturn_state_unreach [
    i8 0, label %EarlyReturn_state_00
    i8 1, label %EarlyReturn_state_01
    i8 2, label %EarlyReturn_state_02
    i8 3, label %EarlyReturn_state_03
    i8 4, label %EarlyReturn_state_done
  ]

EarlyReturn_state_00:                             ; preds = %EarlyReturn_entry
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State", ptr %0, i32 0, i32 1
  %6 = load i1, ptr %5, align 1
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State", ptr %0, i32 0, i32 2
  %8 = load i64, ptr %7, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 11 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  br i1 %6, label %EarlyReturn_state_00_true, label %EarlyReturn_state_00_false

EarlyReturn_state_01:                             ; preds = %EarlyReturn_state_00_true, %EarlyReturn_entry
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State", ptr %0, i32 0, i32 1
  %10 = load i1, ptr %9, align 1
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State", ptr %0, i32 0, i32 2
  %12 = load i64, ptr %11, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 11 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %13 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 0)
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %14, 0
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %15, ptr %13, 1
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State", ptr %0, i32 0, i32 4
  store i64 0, ptr %17, align 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %18, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 11 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, i1 false, i1 true)
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State", ptr %0, i32 0, i32 4
  %20 = load i64, ptr %19, align 4
  %21 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %20, 1
  %22 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %21, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %22

EarlyReturn_state_02:                             ; preds = %EarlyReturn_state_00_false, %EarlyReturn_entry
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State", ptr %0, i32 0, i32 1
  %24 = load i1, ptr %23, align 1
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State", ptr %0, i32 0, i32 2
  %26 = load i64, ptr %25, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 11 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State", ptr %0, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %EarlyReturn_state_02_init, label %EarlyReturn_state_02_poll

EarlyReturn_state_03:                             ; preds = %EarlyReturn_state_02_ready, %EarlyReturn_entry
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State", ptr %0, i32 0, i32 1
  %31 = load i1, ptr %30, align 1
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State", ptr %0, i32 0, i32 2
  %33 = load i64, ptr %32, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 11 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State", ptr %0, i32 0, i32 2
  %35 = load i64, ptr %34, align 4
  %36 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %33)
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %37, 0
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %38, ptr %36, 1
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State", ptr %0, i32 0, i32 4
  store i64 %35, ptr %40, align 4
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %41, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 11 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, i1 false, i1 true)
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State", ptr %0, i32 0, i32 4
  %43 = load i64, ptr %42, align 4
  %44 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %43, 1
  %45 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %44, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %45

EarlyReturn_state_done:                           ; preds = %EarlyReturn_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 11 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, i1 false, i1 true)
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State", ptr %0, i32 0, i32 4
  %47 = load i64, ptr %46, align 4
  %48 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %47, 1
  %49 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %48, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %49

EarlyReturn_state_unreach:                        ; preds = %EarlyReturn_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_7:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

EarlyReturn_state_00_true:                        ; preds = %EarlyReturn_state_00
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %50, align 1
  br label %EarlyReturn_state_01

EarlyReturn_state_00_false:                       ; preds = %EarlyReturn_state_00
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %51, align 1
  br label %EarlyReturn_state_02

EarlyReturn_state_02_init:                        ; preds = %EarlyReturn_state_02
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State", ptr %0, i32 0, i32 1
  %53 = load i1, ptr %52, align 1
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State", ptr %0, i32 0, i32 2
  %55 = load i64, ptr %54, align 4
  %56 = call ptr @"github.com/goplus/llgo/cl/_testpull/edgecases.GetValue"(i64 10)
  store ptr %56, ptr %27, align 8
  br label %EarlyReturn_state_02_poll

EarlyReturn_state_02_poll:                        ; preds = %EarlyReturn_state_02_init, %EarlyReturn_state_02
  %57 = load ptr, ptr %27, align 8
  %58 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %57, ptr %1)
  %59 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %58, 0
  br i1 %59, label %EarlyReturn_state_02_ready, label %EarlyReturn_state_02_pending

EarlyReturn_state_02_ready:                       ; preds = %EarlyReturn_state_02_poll
  %60 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %58, 1
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State", ptr %0, i32 0, i32 2
  store i64 %60, ptr %61, align 4
  store ptr null, ptr %27, align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %62, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 11 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, i1 true, i1 false)
  br label %EarlyReturn_state_03

EarlyReturn_state_02_pending:                     ; preds = %EarlyReturn_state_02_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 11 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

declare void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1, i1)

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

define ptr @"github.com/goplus/llgo/cl/_testpull/edgecases.GetValue"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testpull/edgecases.GetValue$1", ptr undef }, ptr %2, 1
  %5 = call ptr @"github.com/goplus/llgo/async.Async[int]"({ ptr, ptr } %4)
  ret ptr %5
}

define void @"github.com/goplus/llgo/cl/_testpull/edgecases.GetValue$1"(ptr %0, { ptr, ptr } %1) {
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

define ptr @"github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$Concrete"(i1 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State", ptr %1, i32 0, i32 1
  store i1 %0, ptr %3, align 1
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State", ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State", ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
  ret ptr %1
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn"(i1 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$Concrete"(i1 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/edgecases.EarlyReturn$State")
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

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/edgecases.(*MultipleReturns$State).Poll"(ptr %0, ptr %1) {
MultipleReturns_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  %4 = sext i8 %3 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, i64 %4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
  switch i8 %3, label %MultipleReturns_state_unreach [
    i8 0, label %MultipleReturns_state_00
    i8 1, label %MultipleReturns_state_01
    i8 2, label %MultipleReturns_state_02
    i8 3, label %MultipleReturns_state_03
    i8 4, label %MultipleReturns_state_04
    i8 5, label %MultipleReturns_state_05
    i8 6, label %MultipleReturns_state_06
    i8 7, label %MultipleReturns_state_done
  ]

MultipleReturns_state_00:                         ; preds = %MultipleReturns_entry
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 2
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 3
  %10 = load i64, ptr %9, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %11 = icmp slt i64 %6, 0
  br i1 %11, label %MultipleReturns_state_00_true, label %MultipleReturns_state_00_false

MultipleReturns_state_01:                         ; preds = %MultipleReturns_state_00_true, %MultipleReturns_entry
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 1
  %13 = load i64, ptr %12, align 4
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 2
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 3
  %17 = load i64, ptr %16, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %18 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 -1)
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %19, 0
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %20, ptr %18, 1
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 6
  store i64 -1, ptr %22, align 4
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %23, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, i1 false, i1 true)
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 6
  %25 = load i64, ptr %24, align 4
  %26 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %25, 1
  %27 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %26, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %27

MultipleReturns_state_02:                         ; preds = %MultipleReturns_state_00_false, %MultipleReturns_entry
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 1
  %29 = load i64, ptr %28, align 4
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 2
  %31 = load i64, ptr %30, align 4
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 3
  %33 = load i64, ptr %32, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 4
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %MultipleReturns_state_02_init, label %MultipleReturns_state_02_poll

MultipleReturns_state_03:                         ; preds = %MultipleReturns_state_02_ready, %MultipleReturns_entry
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 1
  %38 = load i64, ptr %37, align 4
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 2
  %40 = load i64, ptr %39, align 4
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 3
  %42 = load i64, ptr %41, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %43 = icmp sgt i64 %40, 10
  br i1 %43, label %MultipleReturns_state_02_true, label %MultipleReturns_state_02_false

MultipleReturns_state_04:                         ; preds = %MultipleReturns_state_02_true, %MultipleReturns_entry
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 1
  %45 = load i64, ptr %44, align 4
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 2
  %47 = load i64, ptr %46, align 4
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 3
  %49 = load i64, ptr %48, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %50 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 10)
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %51, 0
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %52, ptr %50, 1
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 6
  store i64 10, ptr %54, align 4
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %55, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, i1 false, i1 true)
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 6
  %57 = load i64, ptr %56, align 4
  %58 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %57, 1
  %59 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %58, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %59

MultipleReturns_state_05:                         ; preds = %MultipleReturns_state_02_false, %MultipleReturns_entry
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 1
  %61 = load i64, ptr %60, align 4
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 2
  %63 = load i64, ptr %62, align 4
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 3
  %65 = load i64, ptr %64, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 5
  %67 = load ptr, ptr %66, align 8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %MultipleReturns_state_05_init, label %MultipleReturns_state_05_poll

MultipleReturns_state_06:                         ; preds = %MultipleReturns_state_05_ready, %MultipleReturns_entry
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 1
  %70 = load i64, ptr %69, align 4
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 2
  %72 = load i64, ptr %71, align 4
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 3
  %74 = load i64, ptr %73, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, i64 6, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 3
  %76 = load i64, ptr %75, align 4
  %77 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %74)
  %78 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %79 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %78, 0
  %80 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %79, ptr %77, 1
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 6
  store i64 %76, ptr %81, align 4
  %82 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %82, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, i64 6, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, i1 false, i1 true)
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 6
  %84 = load i64, ptr %83, align 4
  %85 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %84, 1
  %86 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %85, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %86

MultipleReturns_state_done:                       ; preds = %MultipleReturns_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, i64 7, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, i1 false, i1 true)
  %87 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 6
  %88 = load i64, ptr %87, align 4
  %89 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %88, 1
  %90 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %89, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %90

MultipleReturns_state_unreach:                    ; preds = %MultipleReturns_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_10:                                         ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

MultipleReturns_state_00_true:                    ; preds = %MultipleReturns_state_00
  %91 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %91, align 1
  br label %MultipleReturns_state_01

MultipleReturns_state_00_false:                   ; preds = %MultipleReturns_state_00
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %92, align 1
  br label %MultipleReturns_state_02

MultipleReturns_state_02_init:                    ; preds = %MultipleReturns_state_02
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 1
  %94 = load i64, ptr %93, align 4
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 2
  %96 = load i64, ptr %95, align 4
  %97 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 3
  %98 = load i64, ptr %97, align 4
  %99 = call ptr @"github.com/goplus/llgo/cl/_testpull/edgecases.GetValue"(i64 %94)
  store ptr %99, ptr %34, align 8
  br label %MultipleReturns_state_02_poll

MultipleReturns_state_02_poll:                    ; preds = %MultipleReturns_state_02_init, %MultipleReturns_state_02
  %100 = load ptr, ptr %34, align 8
  %101 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %100, ptr %1)
  %102 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %101, 0
  br i1 %102, label %MultipleReturns_state_02_ready, label %MultipleReturns_state_02_pending

MultipleReturns_state_02_ready:                   ; preds = %MultipleReturns_state_02_poll
  %103 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %101, 1
  %104 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 2
  store i64 %103, ptr %104, align 4
  store ptr null, ptr %34, align 8
  %105 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %105, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, i1 true, i1 false)
  br label %MultipleReturns_state_03

MultipleReturns_state_02_pending:                 ; preds = %MultipleReturns_state_02_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

MultipleReturns_state_02_true:                    ; preds = %MultipleReturns_state_03
  %106 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %106, align 1
  br label %MultipleReturns_state_04

MultipleReturns_state_02_false:                   ; preds = %MultipleReturns_state_03
  %107 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %107, align 1
  br label %MultipleReturns_state_05

MultipleReturns_state_05_init:                    ; preds = %MultipleReturns_state_05
  %108 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 1
  %109 = load i64, ptr %108, align 4
  %110 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 2
  %111 = load i64, ptr %110, align 4
  %112 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 3
  %113 = load i64, ptr %112, align 4
  %114 = call ptr @"github.com/goplus/llgo/cl/_testpull/edgecases.GetValue"(i64 %111)
  store ptr %114, ptr %66, align 8
  br label %MultipleReturns_state_05_poll

MultipleReturns_state_05_poll:                    ; preds = %MultipleReturns_state_05_init, %MultipleReturns_state_05
  %115 = load ptr, ptr %66, align 8
  %116 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %115, ptr %1)
  %117 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %116, 0
  br i1 %117, label %MultipleReturns_state_05_ready, label %MultipleReturns_state_05_pending

MultipleReturns_state_05_ready:                   ; preds = %MultipleReturns_state_05_poll
  %118 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %116, 1
  %119 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 3
  store i64 %118, ptr %119, align 4
  store ptr null, ptr %66, align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %120, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, i1 true, i1 false)
  br label %MultipleReturns_state_06

MultipleReturns_state_05_pending:                 ; preds = %MultipleReturns_state_05_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 56)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %1, i32 0, i32 3
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %1, i32 0, i32 4
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State", ptr %1, i32 0, i32 5
  store ptr null, ptr %7, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/edgecases.MultipleReturns$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/edgecases.NoAwait"(i64 %0) {
_llgo_0:
  %1 = mul i64 %0, 2
  %2 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %1)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, ptr %2, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/edgecases.(*SingleAwait$State).Poll"(ptr %0, ptr %1) {
SingleAwait_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.SingleAwait$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  %4 = sext i8 %3 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 11 }, i64 %4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
  switch i8 %3, label %SingleAwait_state_unreach [
    i8 0, label %SingleAwait_state_00
    i8 1, label %SingleAwait_state_01
    i8 2, label %SingleAwait_state_done
  ]

SingleAwait_state_00:                             ; preds = %SingleAwait_entry
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.SingleAwait$State", ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.SingleAwait$State", ptr %0, i32 0, i32 2
  %8 = load i64, ptr %7, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 11 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.SingleAwait$State", ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %SingleAwait_state_00_init, label %SingleAwait_state_00_poll

SingleAwait_state_01:                             ; preds = %SingleAwait_state_00_ready, %SingleAwait_entry
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.SingleAwait$State", ptr %0, i32 0, i32 1
  %13 = load i64, ptr %12, align 4
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.SingleAwait$State", ptr %0, i32 0, i32 2
  %15 = load i64, ptr %14, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 11 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.SingleAwait$State", ptr %0, i32 0, i32 2
  %17 = load i64, ptr %16, align 4
  %18 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %15)
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %19, 0
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %20, ptr %18, 1
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.SingleAwait$State", ptr %0, i32 0, i32 4
  store i64 %17, ptr %22, align 4
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.SingleAwait$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %23, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 11 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, i1 false, i1 true)
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.SingleAwait$State", ptr %0, i32 0, i32 4
  %25 = load i64, ptr %24, align 4
  %26 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %25, 1
  %27 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %26, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %27

SingleAwait_state_done:                           ; preds = %SingleAwait_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 11 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, i1 false, i1 true)
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.SingleAwait$State", ptr %0, i32 0, i32 4
  %29 = load i64, ptr %28, align 4
  %30 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %29, 1
  %31 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %30, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %31

SingleAwait_state_unreach:                        ; preds = %SingleAwait_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_5:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

SingleAwait_state_00_init:                        ; preds = %SingleAwait_state_00
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.SingleAwait$State", ptr %0, i32 0, i32 1
  %33 = load i64, ptr %32, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.SingleAwait$State", ptr %0, i32 0, i32 2
  %35 = load i64, ptr %34, align 4
  %36 = call ptr @"github.com/goplus/llgo/cl/_testpull/edgecases.GetValue"(i64 %33)
  store ptr %36, ptr %9, align 8
  br label %SingleAwait_state_00_poll

SingleAwait_state_00_poll:                        ; preds = %SingleAwait_state_00_init, %SingleAwait_state_00
  %37 = load ptr, ptr %9, align 8
  %38 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %37, ptr %1)
  %39 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %38, 0
  br i1 %39, label %SingleAwait_state_00_ready, label %SingleAwait_state_00_pending

SingleAwait_state_00_ready:                       ; preds = %SingleAwait_state_00_poll
  %40 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %38, 1
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.SingleAwait$State", ptr %0, i32 0, i32 2
  store i64 %40, ptr %41, align 4
  store ptr null, ptr %9, align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.SingleAwait$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %42, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 11 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, i1 true, i1 false)
  br label %SingleAwait_state_01

SingleAwait_state_00_pending:                     ; preds = %SingleAwait_state_00_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 11 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/edgecases.SingleAwait$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.SingleAwait$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.SingleAwait$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.SingleAwait$State", ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/edgecases.SingleAwait$State", ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/edgecases.SingleAwait"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/edgecases.SingleAwait$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/edgecases.SingleAwait$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define void @"github.com/goplus/llgo/cl/_testpull/edgecases.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testpull/edgecases.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testpull/edgecases.init$guard", align 1
  call void @"github.com/goplus/llgo/async.init"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
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
