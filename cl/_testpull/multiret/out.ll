; ModuleID = 'github.com/goplus/llgo/cl/_testpull/multiret'
source_filename = "github.com/goplus/llgo/cl/_testpull/multiret"

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
%"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State" = type { i8, i64, i64, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/async.ReadyFuture[int]" = type { i64 }
%"github.com/goplus/llgo/async.AsyncFuture[int]" = type { { ptr, ptr }, i1, i1, i64 }
%"github.com/goplus/llgo/async.Context" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }
%"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State" = type { i8, i64, i64, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 }
%"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State" = type { i8, i64, i64, i64, i64, ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 }
%"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State" = type { i8, i64, i64, i1, ptr, i64, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 }

@"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -103283099, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Await", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Poll", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Poll" }] }, align 8
@0 = private unnamed_addr constant [22 x i8] c"async.ReadyFuture[int]", align 1
@"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1814719306, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/multiret.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@1 = private unnamed_addr constant [28 x i8] c"github.com/goplus/llgo/async", align 1
@2 = private unnamed_addr constant [5 x i8] c"value", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr @"*_llgo_int" }, align 8
@3 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"github.com/goplus/llgo/cl/_testpull/multiret.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
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
@"_llgo_github.com/goplus/llgo/async.Context" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 0, i32 29200871, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Context" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 13 }, ptr @"*_llgo_github.com/goplus/llgo/async.Context" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/multiret.struct$Re9uCNpaPdvqJtnZYej5NZ8aMgZjb-_ftN8ogfRqy78$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@9 = private unnamed_addr constant [5 x i8] c"Waker", align 1
@"_llgo_github.com/goplus/llgo/async.Waker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -2133419533, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 11 }, ptr @"*_llgo_github.com/goplus/llgo/async.Waker" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$5udCHZ6xl-fBE2F9apjWV2qrxMb4_QYfwdoy0QD1D8c$imethods", i64 1, i64 1 } }, align 8
@10 = private unnamed_addr constant [11 x i8] c"async.Waker", align 1
@"*_llgo_github.com/goplus/llgo/async.Waker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 504672852, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 11 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Waker" }, align 8
@11 = private unnamed_addr constant [44 x i8] c"github.com/goplus/llgo/cl/_testpull/multiret", align 1
@12 = private unnamed_addr constant [4 x i8] c"Wake", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@13 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@"_llgo_iface$5udCHZ6xl-fBE2F9apjWV2qrxMb4_QYfwdoy0QD1D8c$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 4 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }], align 8
@14 = private unnamed_addr constant [8 x i8] c"hasWaker", align 1
@_llgo_bool = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 554183389, i8 12, i8 1, i8 1, i8 33, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 4 }, ptr @"*_llgo_bool" }, align 8
@15 = private unnamed_addr constant [4 x i8] c"bool", align 1
@"*_llgo_bool" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1896950390, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 4 }, ptr null }, ptr @_llgo_bool }, align 8
@"github.com/goplus/llgo/cl/_testpull/multiret.struct$Re9uCNpaPdvqJtnZYej5NZ8aMgZjb-_ftN8ogfRqy78$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/async.Waker", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 8 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/async.Context"], align 8
@"_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 801809575, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 15 }, ptr @"*_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/multiret.struct$M9E5HRdqyc11Zqvq07yhy6frK_fAyRGIc35bZKl9nrs$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error", ptr @"github.com/goplus/llgo/async.Poll[int].Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError", ptr @"github.com/goplus/llgo/async.Poll[int].HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.Poll[int].IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.Poll[int].Value" }] }, align 8
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
@"github.com/goplus/llgo/cl/_testpull/multiret.struct$M9E5HRdqyc11Zqvq07yhy6frK_fAyRGIc35bZKl9nrs$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 5 }, ptr @_llgo_bool, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @_llgo_any, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]"], align 8
@"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 975938808, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 63 }, ptr @"*_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI$imethods", i64 2, i64 2 } }, align 8
@26 = private unnamed_addr constant [63 x i8] c"interface { Await() int; Poll(*async.Context) async.Poll[int] }", align 1
@"*_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1309347707, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 63 }, ptr null }, ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI" }, align 8
@"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI$imethods" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1611081629, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 26 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 44 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/multiret.(*EarlyReturn$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/multiret.(*EarlyReturn$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/multiret.(*EarlyReturn$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/multiret.(*EarlyReturn$State).Poll" }] }, align 8
@27 = private unnamed_addr constant [26 x i8] c"multiret.EarlyReturn$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 56, i64 32, i32 -768035575, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 26 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/multiret.struct$8AZPFeG2g5qW9F2_gWc7OjYkOVyrWj3xeNJGyyiyg80$fields", i64 6, i64 6 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 44 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@28 = private unnamed_addr constant [5 x i8] c"state", align 1
@_llgo_int8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 1444672578, i8 12, i8 1, i8 1, i8 35, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 4 }, ptr @"*_llgo_int8" }, align 8
@29 = private unnamed_addr constant [4 x i8] c"int8", align 1
@"*_llgo_int8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1399554408, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 4 }, ptr null }, ptr @_llgo_int8 }, align 8
@30 = private unnamed_addr constant [6 x i8] c"param0", align 1
@31 = private unnamed_addr constant [4 x i8] c"var0", align 1
@32 = private unnamed_addr constant [4 x i8] c"sub0", align 1
@"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 964362133, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll" }] }, align 8
@33 = private unnamed_addr constant [22 x i8] c"async.AsyncFuture[int]", align 1
@"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 0, i32 1769159236, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/multiret.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@34 = private unnamed_addr constant [2 x i8] c"fn", align 1
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1213993089, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 87 }, ptr @"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields", i64 2, i64 2 } }, align 8
@35 = private unnamed_addr constant [87 x i8] c"struct { $f func(struct { $f func(int); $data unsafe.Pointer }); $data unsafe.Pointer }", align 1
@"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1666834553, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 87 }, ptr null }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, align 8
@36 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2009615728, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 51 }, ptr @"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@37 = private unnamed_addr constant [51 x i8] c"func(struct { $f func(int); $data unsafe.Pointer })", align 1
@"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1512208703, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 51 }, ptr null }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1556934939, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 45 }, ptr @"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields", i64 2, i64 2 } }, align 8
@38 = private unnamed_addr constant [45 x i8] c"struct { $f func(int); $data unsafe.Pointer }", align 1
@"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 364872269, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 45 }, ptr null }, ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -637187458, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 9 }, ptr @"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@39 = private unnamed_addr constant [9 x i8] c"func(int)", align 1
@"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 735356155, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 9 }, ptr null }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@40 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@41 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 2 }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM"], align 8
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 2 }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@42 = private unnamed_addr constant [7 x i8] c"started", align 1
@"github.com/goplus/llgo/cl/_testpull/multiret.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 2 }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 7 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 5 }, ptr @_llgo_bool, i64 17, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@43 = private unnamed_addr constant [8 x i8] c"panicErr", align 1
@44 = private unnamed_addr constant [11 x i8] c"resultValue", align 1
@"github.com/goplus/llgo/cl/_testpull/multiret.struct$8AZPFeG2g5qW9F2_gWc7OjYkOVyrWj3xeNJGyyiyg80$fields" = weak_odr constant [6 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 8 }, ptr @_llgo_any, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 11 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1608189218, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 30 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 44 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/multiret.(*MultipleReturns$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/multiret.(*MultipleReturns$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/multiret.(*MultipleReturns$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/multiret.(*MultipleReturns$State).Poll" }] }, align 8
@45 = private unnamed_addr constant [30 x i8] c"multiret.MultipleReturns$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 56, i64 32, i32 81262879, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 30 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/multiret.struct$8AZPFeG2g5qW9F2_gWc7OjYkOVyrWj3xeNJGyyiyg80$fields", i64 6, i64 6 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 44 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1226237647, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 32 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 44 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/multiret.(*NestedReturnPaths$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/multiret.(*NestedReturnPaths$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/multiret.(*NestedReturnPaths$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/multiret.(*NestedReturnPaths$State).Poll" }] }, align 8
@46 = private unnamed_addr constant [32 x i8] c"multiret.NestedReturnPaths$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 80, i64 56, i32 -1393420628, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 32 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/multiret.struct$rmRuLyt6cKUrp_GB3YbJKdJ4_yT58-HcqRtdg4O6mG0$fields", i64 9, i64 9 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 44 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@47 = private unnamed_addr constant [6 x i8] c"param1", align 1
@48 = private unnamed_addr constant [4 x i8] c"var1", align 1
@49 = private unnamed_addr constant [4 x i8] c"sub1", align 1
@"github.com/goplus/llgo/cl/_testpull/multiret.struct$rmRuLyt6cKUrp_GB3YbJKdJ4_yT58-HcqRtdg4O6mG0$fields" = weak_odr constant [9 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 6 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 8 }, ptr @_llgo_any, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 11 }, ptr @_llgo_int, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 60406001, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 27 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 44 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/multiret.(*ReturnInLoop$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/multiret.(*ReturnInLoop$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/multiret.(*ReturnInLoop$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/multiret.(*ReturnInLoop$State).Poll" }] }, align 8
@50 = private unnamed_addr constant [27 x i8] c"multiret.ReturnInLoop$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 80, i64 56, i32 882565835, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 27 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/multiret.struct$z-MRk3hHVAYcIWkKf0sEBUuXqZLLUEZ2IsKWlvLrIrg$fields", i64 9, i64 9 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 44 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@51 = private unnamed_addr constant [4 x i8] c"var2", align 1
@52 = private unnamed_addr constant [4 x i8] c"var3", align 1
@"github.com/goplus/llgo/cl/_testpull/multiret.struct$z-MRk3hHVAYcIWkKf0sEBUuXqZLLUEZ2IsKWlvLrIrg$fields" = weak_odr constant [9 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 4 }, ptr @_llgo_bool, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 8 }, ptr @_llgo_any, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 11 }, ptr @_llgo_int, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/multiret.init$guard" = global i1 false, align 1
@53 = private unnamed_addr constant [45 x i8] c"Await() should be transformed by the compiler", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 6 }, ptr @"*_llgo_string" }, align 8
@54 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 6 }, ptr null }, ptr @_llgo_string }, align 8

define i64 @"github.com/goplus/llgo/cl/_testpull/multiret.(*EarlyReturn$State).Await"(ptr %0) {
_llgo_0:
  ret i64 undef
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/multiret.(*EarlyReturn$State).Poll"(ptr %0, ptr %1) {
EarlyReturn_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %EarlyReturn_state_unreach [
    i8 0, label %EarlyReturn_state_00
    i8 1, label %EarlyReturn_state_01
    i8 2, label %EarlyReturn_state_02
    i8 3, label %EarlyReturn_state_03
    i8 4, label %EarlyReturn_state_done
  ]

EarlyReturn_state_00:                             ; preds = %EarlyReturn_entry
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State", ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = icmp slt i64 %5, 0
  br i1 %8, label %EarlyReturn_state_00_true, label %EarlyReturn_state_00_false

EarlyReturn_state_01:                             ; preds = %EarlyReturn_state_00_true, %EarlyReturn_entry
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State", ptr %0, i32 0, i32 1
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State", ptr %0, i32 0, i32 2
  %12 = load i64, ptr %11, align 4
  %13 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 -1)
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %14, 0
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %15, ptr %13, 1
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State", ptr %0, i32 0, i32 5
  store i64 -1, ptr %17, align 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State", ptr %0, i32 0, i32 4
  %19 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %18, align 8
  store { ptr, ptr } zeroinitializer, ptr %18, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %20, align 1
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State", ptr %0, i32 0, i32 5
  %22 = load i64, ptr %21, align 4
  %23 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %22, 1
  %24 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %23, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %24

EarlyReturn_state_02:                             ; preds = %EarlyReturn_state_00_false, %EarlyReturn_entry
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State", ptr %0, i32 0, i32 1
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State", ptr %0, i32 0, i32 2
  %28 = load i64, ptr %27, align 4
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State", ptr %0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %EarlyReturn_state_02_init, label %EarlyReturn_state_02_poll

EarlyReturn_state_03:                             ; preds = %EarlyReturn_state_02_ready_cont, %EarlyReturn_entry
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State", ptr %0, i32 0, i32 1
  %33 = load i64, ptr %32, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State", ptr %0, i32 0, i32 2
  %35 = load i64, ptr %34, align 4
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State", ptr %0, i32 0, i32 2
  %37 = load i64, ptr %36, align 4
  %38 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %35)
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %39, 0
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %40, ptr %38, 1
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State", ptr %0, i32 0, i32 5
  store i64 %37, ptr %42, align 4
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State", ptr %0, i32 0, i32 4
  %44 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %43, align 8
  store { ptr, ptr } zeroinitializer, ptr %43, align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %45, align 1
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State", ptr %0, i32 0, i32 5
  %47 = load i64, ptr %46, align 4
  %48 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %47, 1
  %49 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %48, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %49

EarlyReturn_state_done:                           ; preds = %EarlyReturn_entry
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State", ptr %0, i32 0, i32 4
  %51 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %50, align 8
  %52 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %51, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %52

EarlyReturn_state_unreach:                        ; preds = %EarlyReturn_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_7:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

EarlyReturn_state_00_true:                        ; preds = %EarlyReturn_state_00
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %53, align 1
  br label %EarlyReturn_state_01

EarlyReturn_state_00_false:                       ; preds = %EarlyReturn_state_00
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %54, align 1
  br label %EarlyReturn_state_02

EarlyReturn_state_02_init:                        ; preds = %EarlyReturn_state_02
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State", ptr %0, i32 0, i32 1
  %56 = load i64, ptr %55, align 4
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State", ptr %0, i32 0, i32 2
  %58 = load i64, ptr %57, align 4
  %59 = call ptr @"github.com/goplus/llgo/cl/_testpull/multiret.Step"(i64 %56)
  store ptr %59, ptr %29, align 8
  br label %EarlyReturn_state_02_poll

EarlyReturn_state_02_poll:                        ; preds = %EarlyReturn_state_02_init, %EarlyReturn_state_02
  %60 = load ptr, ptr %29, align 8
  %61 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %60, ptr %1)
  %62 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %61, 0
  br i1 %62, label %EarlyReturn_state_02_ready, label %EarlyReturn_state_02_pending

EarlyReturn_state_02_ready:                       ; preds = %EarlyReturn_state_02_poll
  %63 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %61, 2
  %64 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %63, { ptr, ptr } zeroinitializer)
  %65 = xor i1 %64, true
  br i1 %65, label %EarlyReturn_state_02_err, label %EarlyReturn_state_02_ready_cont

EarlyReturn_state_02_pending:                     ; preds = %EarlyReturn_state_02_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

EarlyReturn_state_02_err:                         ; preds = %EarlyReturn_state_02_ready
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %66, align 1
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State", ptr %0, i32 0, i32 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %63, ptr %67, align 8
  %68 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %63, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %68

EarlyReturn_state_02_ready_cont:                  ; preds = %EarlyReturn_state_02_ready
  %69 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %61, 1
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State", ptr %0, i32 0, i32 2
  store i64 %69, ptr %70, align 4
  store ptr null, ptr %29, align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %71, align 1
  br label %EarlyReturn_state_03
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

define ptr @"github.com/goplus/llgo/cl/_testpull/multiret.Step"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testpull/multiret.Step$1", ptr undef }, ptr %2, 1
  %5 = call ptr @"github.com/goplus/llgo/async.Async[int]"({ ptr, ptr } %4)
  ret ptr %5
}

define void @"github.com/goplus/llgo/cl/_testpull/multiret.Step$1"(ptr %0, { ptr, ptr } %1) {
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

define ptr @"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 56)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State", ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State", ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
  ret ptr %1
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/multiret.EarlyReturn$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define linkonce i64 @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 45 }, ptr %1, align 8
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

define i64 @"github.com/goplus/llgo/cl/_testpull/multiret.(*MultipleReturns$State).Await"(ptr %0) {
_llgo_0:
  ret i64 undef
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/multiret.(*MultipleReturns$State).Poll"(ptr %0, ptr %1) {
MultipleReturns_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %MultipleReturns_state_unreach [
    i8 0, label %MultipleReturns_state_00
    i8 1, label %MultipleReturns_state_01
    i8 2, label %MultipleReturns_state_02
    i8 3, label %MultipleReturns_state_03
    i8 4, label %MultipleReturns_state_04
    i8 5, label %MultipleReturns_state_05
    i8 6, label %MultipleReturns_state_06
    i8 7, label %MultipleReturns_state_07
    i8 8, label %MultipleReturns_state_done
  ]

MultipleReturns_state_00:                         ; preds = %MultipleReturns_entry
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = icmp slt i64 %5, 0
  br i1 %8, label %MultipleReturns_state_00_true, label %MultipleReturns_state_00_false

MultipleReturns_state_01:                         ; preds = %MultipleReturns_state_00_true, %MultipleReturns_entry
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 1
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 2
  %12 = load i64, ptr %11, align 4
  %13 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 -1)
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %14, 0
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %15, ptr %13, 1
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 5
  store i64 -1, ptr %17, align 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 4
  %19 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %18, align 8
  store { ptr, ptr } zeroinitializer, ptr %18, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 0
  store i8 8, ptr %20, align 1
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 5
  %22 = load i64, ptr %21, align 4
  %23 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %22, 1
  %24 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %23, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %24

MultipleReturns_state_02:                         ; preds = %MultipleReturns_state_00_false, %MultipleReturns_entry
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 1
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 2
  %28 = load i64, ptr %27, align 4
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %MultipleReturns_state_02_init, label %MultipleReturns_state_02_poll

MultipleReturns_state_03:                         ; preds = %MultipleReturns_state_02_ready_cont, %MultipleReturns_entry
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 1
  %33 = load i64, ptr %32, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 2
  %35 = load i64, ptr %34, align 4
  %36 = icmp sgt i64 %35, 100
  br i1 %36, label %MultipleReturns_state_02_true, label %MultipleReturns_state_02_false

MultipleReturns_state_04:                         ; preds = %MultipleReturns_state_02_true, %MultipleReturns_entry
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 1
  %38 = load i64, ptr %37, align 4
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 2
  %40 = load i64, ptr %39, align 4
  %41 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 100)
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %42, 0
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %43, ptr %41, 1
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 5
  store i64 100, ptr %45, align 4
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 4
  %47 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %46, align 8
  store { ptr, ptr } zeroinitializer, ptr %46, align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 0
  store i8 8, ptr %48, align 1
  %49 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 5
  %50 = load i64, ptr %49, align 4
  %51 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %50, 1
  %52 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %51, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %52

MultipleReturns_state_05:                         ; preds = %MultipleReturns_state_02_false, %MultipleReturns_entry
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 1
  %54 = load i64, ptr %53, align 4
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 2
  %56 = load i64, ptr %55, align 4
  %57 = icmp slt i64 %56, 10
  br i1 %57, label %MultipleReturns_state_04_true, label %MultipleReturns_state_04_false

MultipleReturns_state_06:                         ; preds = %MultipleReturns_state_04_true, %MultipleReturns_entry
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 1
  %59 = load i64, ptr %58, align 4
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 2
  %61 = load i64, ptr %60, align 4
  %62 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 0)
  %63 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %64 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %63, 0
  %65 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %64, ptr %62, 1
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 5
  store i64 0, ptr %66, align 4
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 4
  %68 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %67, align 8
  store { ptr, ptr } zeroinitializer, ptr %67, align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 0
  store i8 8, ptr %69, align 1
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 5
  %71 = load i64, ptr %70, align 4
  %72 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %71, 1
  %73 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %72, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %73

MultipleReturns_state_07:                         ; preds = %MultipleReturns_state_04_false, %MultipleReturns_entry
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 1
  %75 = load i64, ptr %74, align 4
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 2
  %77 = load i64, ptr %76, align 4
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 2
  %79 = load i64, ptr %78, align 4
  %80 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %77)
  %81 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %82 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %81, 0
  %83 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %82, ptr %80, 1
  %84 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 5
  store i64 %79, ptr %84, align 4
  %85 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 4
  %86 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %85, align 8
  store { ptr, ptr } zeroinitializer, ptr %85, align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 0
  store i8 8, ptr %87, align 1
  %88 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 5
  %89 = load i64, ptr %88, align 4
  %90 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %89, 1
  %91 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %90, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %91

MultipleReturns_state_done:                       ; preds = %MultipleReturns_entry
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 4
  %93 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %92, align 8
  %94 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %93, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %94

MultipleReturns_state_unreach:                    ; preds = %MultipleReturns_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_11:                                         ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

MultipleReturns_state_00_true:                    ; preds = %MultipleReturns_state_00
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %95, align 1
  br label %MultipleReturns_state_01

MultipleReturns_state_00_false:                   ; preds = %MultipleReturns_state_00
  %96 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %96, align 1
  br label %MultipleReturns_state_02

MultipleReturns_state_02_init:                    ; preds = %MultipleReturns_state_02
  %97 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 1
  %98 = load i64, ptr %97, align 4
  %99 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 2
  %100 = load i64, ptr %99, align 4
  %101 = call ptr @"github.com/goplus/llgo/cl/_testpull/multiret.Step"(i64 %98)
  store ptr %101, ptr %29, align 8
  br label %MultipleReturns_state_02_poll

MultipleReturns_state_02_poll:                    ; preds = %MultipleReturns_state_02_init, %MultipleReturns_state_02
  %102 = load ptr, ptr %29, align 8
  %103 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %102, ptr %1)
  %104 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %103, 0
  br i1 %104, label %MultipleReturns_state_02_ready, label %MultipleReturns_state_02_pending

MultipleReturns_state_02_ready:                   ; preds = %MultipleReturns_state_02_poll
  %105 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %103, 2
  %106 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %105, { ptr, ptr } zeroinitializer)
  %107 = xor i1 %106, true
  br i1 %107, label %MultipleReturns_state_02_err, label %MultipleReturns_state_02_ready_cont

MultipleReturns_state_02_pending:                 ; preds = %MultipleReturns_state_02_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

MultipleReturns_state_02_err:                     ; preds = %MultipleReturns_state_02_ready
  %108 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 0
  store i8 8, ptr %108, align 1
  %109 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %105, ptr %109, align 8
  %110 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %105, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %110

MultipleReturns_state_02_ready_cont:              ; preds = %MultipleReturns_state_02_ready
  %111 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %103, 1
  %112 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 2
  store i64 %111, ptr %112, align 4
  store ptr null, ptr %29, align 8
  %113 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %113, align 1
  br label %MultipleReturns_state_03

MultipleReturns_state_02_true:                    ; preds = %MultipleReturns_state_03
  %114 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 2
  store i64 %35, ptr %114, align 4
  %115 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %115, align 1
  br label %MultipleReturns_state_04

MultipleReturns_state_02_false:                   ; preds = %MultipleReturns_state_03
  %116 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 2
  store i64 %35, ptr %116, align 4
  %117 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %117, align 1
  br label %MultipleReturns_state_05

MultipleReturns_state_04_true:                    ; preds = %MultipleReturns_state_05
  %118 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %118, align 1
  br label %MultipleReturns_state_06

MultipleReturns_state_04_false:                   ; preds = %MultipleReturns_state_05
  %119 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %119, align 1
  br label %MultipleReturns_state_07
}

define ptr @"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 56)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State", ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/multiret.MultipleReturns$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define i64 @"github.com/goplus/llgo/cl/_testpull/multiret.(*NestedReturnPaths$State).Await"(ptr %0) {
_llgo_0:
  ret i64 undef
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/multiret.(*NestedReturnPaths$State).Poll"(ptr %0, ptr %1) {
NestedReturnPaths_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %NestedReturnPaths_state_unreach [
    i8 0, label %NestedReturnPaths_state_00
    i8 1, label %NestedReturnPaths_state_01
    i8 2, label %NestedReturnPaths_state_02
    i8 3, label %NestedReturnPaths_state_03
    i8 4, label %NestedReturnPaths_state_04
    i8 5, label %NestedReturnPaths_state_05
    i8 6, label %NestedReturnPaths_state_06
    i8 7, label %NestedReturnPaths_state_done
  ]

NestedReturnPaths_state_00:                       ; preds = %NestedReturnPaths_entry
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 3
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 4
  %11 = load i64, ptr %10, align 4
  %12 = icmp sgt i64 %5, 0
  br i1 %12, label %NestedReturnPaths_state_00_true, label %NestedReturnPaths_state_00_false

NestedReturnPaths_state_01:                       ; preds = %NestedReturnPaths_state_00_true, %NestedReturnPaths_entry
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 1
  %14 = load i64, ptr %13, align 4
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 2
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 3
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 4
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 5
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %NestedReturnPaths_state_01_init, label %NestedReturnPaths_state_01_poll

NestedReturnPaths_state_02:                       ; preds = %NestedReturnPaths_state_01_ready_cont, %NestedReturnPaths_entry
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 1
  %25 = load i64, ptr %24, align 4
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 2
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 3
  %29 = load i64, ptr %28, align 4
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 4
  %31 = load i64, ptr %30, align 4
  %32 = icmp sgt i64 %29, %27
  br i1 %32, label %NestedReturnPaths_state_01_true, label %NestedReturnPaths_state_01_false

NestedReturnPaths_state_03:                       ; preds = %NestedReturnPaths_state_00_false, %NestedReturnPaths_entry
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 1
  %34 = load i64, ptr %33, align 4
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 2
  %36 = load i64, ptr %35, align 4
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 3
  %38 = load i64, ptr %37, align 4
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 4
  %40 = load i64, ptr %39, align 4
  %41 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 0)
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %42, 0
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %43, ptr %41, 1
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 8
  store i64 0, ptr %45, align 4
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 7
  %47 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %46, align 8
  store { ptr, ptr } zeroinitializer, ptr %46, align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %48, align 1
  %49 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 8
  %50 = load i64, ptr %49, align 4
  %51 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %50, 1
  %52 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %51, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %52

NestedReturnPaths_state_04:                       ; preds = %NestedReturnPaths_state_01_true, %NestedReturnPaths_entry
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 1
  %54 = load i64, ptr %53, align 4
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 2
  %56 = load i64, ptr %55, align 4
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 3
  %58 = load i64, ptr %57, align 4
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 4
  %60 = load i64, ptr %59, align 4
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 3
  %62 = load i64, ptr %61, align 4
  %63 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %58)
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %65 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %64, 0
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %65, ptr %63, 1
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 8
  store i64 %62, ptr %67, align 4
  %68 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 7
  %69 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %68, align 8
  store { ptr, ptr } zeroinitializer, ptr %68, align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %70, align 1
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 8
  %72 = load i64, ptr %71, align 4
  %73 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %72, 1
  %74 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %73, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %74

NestedReturnPaths_state_05:                       ; preds = %NestedReturnPaths_state_01_false, %NestedReturnPaths_entry
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 1
  %76 = load i64, ptr %75, align 4
  %77 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 2
  %78 = load i64, ptr %77, align 4
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 3
  %80 = load i64, ptr %79, align 4
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 4
  %82 = load i64, ptr %81, align 4
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 6
  %84 = load ptr, ptr %83, align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %NestedReturnPaths_state_05_init, label %NestedReturnPaths_state_05_poll

NestedReturnPaths_state_06:                       ; preds = %NestedReturnPaths_state_05_ready_cont, %NestedReturnPaths_entry
  %86 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 1
  %87 = load i64, ptr %86, align 4
  %88 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 2
  %89 = load i64, ptr %88, align 4
  %90 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 3
  %91 = load i64, ptr %90, align 4
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 4
  %93 = load i64, ptr %92, align 4
  %94 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 4
  %95 = load i64, ptr %94, align 4
  %96 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %93)
  %97 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %98 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %97, 0
  %99 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %98, ptr %96, 1
  %100 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 8
  store i64 %95, ptr %100, align 4
  %101 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 7
  %102 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %101, align 8
  store { ptr, ptr } zeroinitializer, ptr %101, align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %103, align 1
  %104 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 8
  %105 = load i64, ptr %104, align 4
  %106 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %105, 1
  %107 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %106, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %107

NestedReturnPaths_state_done:                     ; preds = %NestedReturnPaths_entry
  %108 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 7
  %109 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %108, align 8
  %110 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %109, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %110

NestedReturnPaths_state_unreach:                  ; preds = %NestedReturnPaths_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_10:                                         ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

NestedReturnPaths_state_00_true:                  ; preds = %NestedReturnPaths_state_00
  %111 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %111, align 1
  br label %NestedReturnPaths_state_01

NestedReturnPaths_state_00_false:                 ; preds = %NestedReturnPaths_state_00
  %112 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %112, align 1
  br label %NestedReturnPaths_state_03

NestedReturnPaths_state_01_init:                  ; preds = %NestedReturnPaths_state_01
  %113 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 1
  %114 = load i64, ptr %113, align 4
  %115 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 2
  %116 = load i64, ptr %115, align 4
  %117 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 3
  %118 = load i64, ptr %117, align 4
  %119 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 4
  %120 = load i64, ptr %119, align 4
  %121 = call ptr @"github.com/goplus/llgo/cl/_testpull/multiret.Step"(i64 %114)
  store ptr %121, ptr %21, align 8
  br label %NestedReturnPaths_state_01_poll

NestedReturnPaths_state_01_poll:                  ; preds = %NestedReturnPaths_state_01_init, %NestedReturnPaths_state_01
  %122 = load ptr, ptr %21, align 8
  %123 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %122, ptr %1)
  %124 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %123, 0
  br i1 %124, label %NestedReturnPaths_state_01_ready, label %NestedReturnPaths_state_01_pending

NestedReturnPaths_state_01_ready:                 ; preds = %NestedReturnPaths_state_01_poll
  %125 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %123, 2
  %126 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %125, { ptr, ptr } zeroinitializer)
  %127 = xor i1 %126, true
  br i1 %127, label %NestedReturnPaths_state_01_err, label %NestedReturnPaths_state_01_ready_cont

NestedReturnPaths_state_01_pending:               ; preds = %NestedReturnPaths_state_01_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

NestedReturnPaths_state_01_err:                   ; preds = %NestedReturnPaths_state_01_ready
  %128 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %128, align 1
  %129 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 7
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %125, ptr %129, align 8
  %130 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %125, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %130

NestedReturnPaths_state_01_ready_cont:            ; preds = %NestedReturnPaths_state_01_ready
  %131 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %123, 1
  %132 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 3
  store i64 %131, ptr %132, align 4
  store ptr null, ptr %21, align 8
  %133 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %133, align 1
  br label %NestedReturnPaths_state_02

NestedReturnPaths_state_01_true:                  ; preds = %NestedReturnPaths_state_02
  %134 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 3
  store i64 %29, ptr %134, align 4
  %135 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %135, align 1
  br label %NestedReturnPaths_state_04

NestedReturnPaths_state_01_false:                 ; preds = %NestedReturnPaths_state_02
  %136 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 3
  store i64 %29, ptr %136, align 4
  %137 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %137, align 1
  br label %NestedReturnPaths_state_05

NestedReturnPaths_state_05_init:                  ; preds = %NestedReturnPaths_state_05
  %138 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 1
  %139 = load i64, ptr %138, align 4
  %140 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 2
  %141 = load i64, ptr %140, align 4
  %142 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 3
  %143 = load i64, ptr %142, align 4
  %144 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 4
  %145 = load i64, ptr %144, align 4
  %146 = call ptr @"github.com/goplus/llgo/cl/_testpull/multiret.Step"(i64 %141)
  store ptr %146, ptr %83, align 8
  br label %NestedReturnPaths_state_05_poll

NestedReturnPaths_state_05_poll:                  ; preds = %NestedReturnPaths_state_05_init, %NestedReturnPaths_state_05
  %147 = load ptr, ptr %83, align 8
  %148 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %147, ptr %1)
  %149 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %148, 0
  br i1 %149, label %NestedReturnPaths_state_05_ready, label %NestedReturnPaths_state_05_pending

NestedReturnPaths_state_05_ready:                 ; preds = %NestedReturnPaths_state_05_poll
  %150 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %148, 2
  %151 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %150, { ptr, ptr } zeroinitializer)
  %152 = xor i1 %151, true
  br i1 %152, label %NestedReturnPaths_state_05_err, label %NestedReturnPaths_state_05_ready_cont

NestedReturnPaths_state_05_pending:               ; preds = %NestedReturnPaths_state_05_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

NestedReturnPaths_state_05_err:                   ; preds = %NestedReturnPaths_state_05_ready
  %153 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %153, align 1
  %154 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 7
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %150, ptr %154, align 8
  %155 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %150, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %155

NestedReturnPaths_state_05_ready_cont:            ; preds = %NestedReturnPaths_state_05_ready
  %156 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %148, 1
  %157 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 4
  store i64 %156, ptr %157, align 4
  store ptr null, ptr %83, align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %158, align 1
  br label %NestedReturnPaths_state_06
}

define ptr @"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$Concrete"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 80)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %2, i32 0, i32 0
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %2, i32 0, i32 1
  store i64 %0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %2, i32 0, i32 2
  store i64 %1, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %2, i32 0, i32 3
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %2, i32 0, i32 4
  store i64 0, ptr %7, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %2, i32 0, i32 5
  store ptr null, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State", ptr %2, i32 0, i32 6
  store ptr null, ptr %9, align 8
  ret ptr %2
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$Concrete"(i64 %0, i64 %1)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/multiret.NestedReturnPaths$State")
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, ptr %2, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5
}

define i64 @"github.com/goplus/llgo/cl/_testpull/multiret.(*ReturnInLoop$State).Await"(ptr %0) {
_llgo_0:
  ret i64 undef
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/multiret.(*ReturnInLoop$State).Poll"(ptr %0, ptr %1) {
ReturnInLoop_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %ReturnInLoop_state_unreach [
    i8 0, label %ReturnInLoop_state_00
    i8 1, label %ReturnInLoop_state_01
    i8 2, label %ReturnInLoop_state_02
    i8 3, label %ReturnInLoop_state_03
    i8 4, label %ReturnInLoop_state_04
    i8 5, label %ReturnInLoop_state_05
    i8 6, label %ReturnInLoop_state_06
    i8 7, label %ReturnInLoop_state_done
  ]

ReturnInLoop_state_00:                            ; preds = %ReturnInLoop_entry
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 3
  %9 = load i1, ptr %8, align 1
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 5
  %13 = load i64, ptr %12, align 4
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 2
  store i64 0, ptr %14, align 4
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %15, align 1
  br label %ReturnInLoop_state_01

ReturnInLoop_state_01:                            ; preds = %ReturnInLoop_state_06, %ReturnInLoop_state_00, %ReturnInLoop_entry
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 1
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 2
  %19 = load i64, ptr %18, align 4
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 4
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 5
  %23 = load i64, ptr %22, align 4
  %24 = icmp slt i64 %19, %17
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 3
  store i1 %24, ptr %25, align 1
  br i1 %24, label %ReturnInLoop_state_01_true, label %ReturnInLoop_state_01_false

ReturnInLoop_state_02:                            ; preds = %ReturnInLoop_state_01_true, %ReturnInLoop_entry
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 1
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 2
  %29 = load i64, ptr %28, align 4
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 3
  %31 = load i1, ptr %30, align 1
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 5
  %33 = load i64, ptr %32, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 6
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %ReturnInLoop_state_02_init, label %ReturnInLoop_state_02_poll

ReturnInLoop_state_03:                            ; preds = %ReturnInLoop_state_02_ready_cont, %ReturnInLoop_entry
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 1
  %38 = load i64, ptr %37, align 4
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 2
  %40 = load i64, ptr %39, align 4
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 3
  %42 = load i1, ptr %41, align 1
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 5
  %44 = load i64, ptr %43, align 4
  %45 = icmp sgt i64 %44, 5
  br i1 %45, label %ReturnInLoop_state_02_true, label %ReturnInLoop_state_02_false

ReturnInLoop_state_04:                            ; preds = %ReturnInLoop_state_01_false, %ReturnInLoop_entry
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 1
  %47 = load i64, ptr %46, align 4
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 2
  %49 = load i64, ptr %48, align 4
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 3
  %51 = load i1, ptr %50, align 1
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 4
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 5
  %55 = load i64, ptr %54, align 4
  %56 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 -1)
  %57 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %57, 0
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %58, ptr %56, 1
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 8
  store i64 -1, ptr %60, align 4
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 7
  %62 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %61, align 8
  store { ptr, ptr } zeroinitializer, ptr %61, align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %63, align 1
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 8
  %65 = load i64, ptr %64, align 4
  %66 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %65, 1
  %67 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %66, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %67

ReturnInLoop_state_05:                            ; preds = %ReturnInLoop_state_02_true, %ReturnInLoop_entry
  %68 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 1
  %69 = load i64, ptr %68, align 4
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 2
  %71 = load i64, ptr %70, align 4
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 3
  %73 = load i1, ptr %72, align 1
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 4
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 5
  %77 = load i64, ptr %76, align 4
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 5
  %79 = load i64, ptr %78, align 4
  %80 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %77)
  %81 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %82 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %81, 0
  %83 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %82, ptr %80, 1
  %84 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 8
  store i64 %79, ptr %84, align 4
  %85 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 7
  %86 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %85, align 8
  store { ptr, ptr } zeroinitializer, ptr %85, align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %87, align 1
  %88 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 8
  %89 = load i64, ptr %88, align 4
  %90 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %89, 1
  %91 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %90, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %91

ReturnInLoop_state_06:                            ; preds = %ReturnInLoop_state_02_false, %ReturnInLoop_entry
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 1
  %93 = load i64, ptr %92, align 4
  %94 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 2
  %95 = load i64, ptr %94, align 4
  %96 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 3
  %97 = load i1, ptr %96, align 1
  %98 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 4
  %99 = load ptr, ptr %98, align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 5
  %101 = load i64, ptr %100, align 4
  %102 = add i64 %95, 1
  %103 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 2
  store i64 %102, ptr %103, align 4
  %104 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %104, align 1
  br label %ReturnInLoop_state_01

ReturnInLoop_state_done:                          ; preds = %ReturnInLoop_entry
  %105 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 7
  %106 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %105, align 8
  %107 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %106, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %107

ReturnInLoop_state_unreach:                       ; preds = %ReturnInLoop_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_10:                                         ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

ReturnInLoop_state_01_true:                       ; preds = %ReturnInLoop_state_01
  %108 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 3
  store i1 %24, ptr %108, align 1
  %109 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %109, align 1
  br label %ReturnInLoop_state_02

ReturnInLoop_state_01_false:                      ; preds = %ReturnInLoop_state_01
  %110 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 3
  store i1 %24, ptr %110, align 1
  %111 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %111, align 1
  br label %ReturnInLoop_state_04

ReturnInLoop_state_02_init:                       ; preds = %ReturnInLoop_state_02
  %112 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 1
  %113 = load i64, ptr %112, align 4
  %114 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 2
  %115 = load i64, ptr %114, align 4
  %116 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 3
  %117 = load i1, ptr %116, align 1
  %118 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 5
  %119 = load i64, ptr %118, align 4
  %120 = call ptr @"github.com/goplus/llgo/cl/_testpull/multiret.Step"(i64 %115)
  %121 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 4
  store ptr %120, ptr %121, align 8
  store ptr %120, ptr %34, align 8
  br label %ReturnInLoop_state_02_poll

ReturnInLoop_state_02_poll:                       ; preds = %ReturnInLoop_state_02_init, %ReturnInLoop_state_02
  %122 = load ptr, ptr %34, align 8
  %123 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %122, ptr %1)
  %124 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %123, 0
  br i1 %124, label %ReturnInLoop_state_02_ready, label %ReturnInLoop_state_02_pending

ReturnInLoop_state_02_ready:                      ; preds = %ReturnInLoop_state_02_poll
  %125 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %123, 2
  %126 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %125, { ptr, ptr } zeroinitializer)
  %127 = xor i1 %126, true
  br i1 %127, label %ReturnInLoop_state_02_err, label %ReturnInLoop_state_02_ready_cont

ReturnInLoop_state_02_pending:                    ; preds = %ReturnInLoop_state_02_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

ReturnInLoop_state_02_err:                        ; preds = %ReturnInLoop_state_02_ready
  %128 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %128, align 1
  %129 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 7
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %125, ptr %129, align 8
  %130 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %125, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %130

ReturnInLoop_state_02_ready_cont:                 ; preds = %ReturnInLoop_state_02_ready
  %131 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %123, 1
  %132 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 5
  store i64 %131, ptr %132, align 4
  %133 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 4
  store ptr %120, ptr %133, align 8
  store ptr null, ptr %34, align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %134, align 1
  br label %ReturnInLoop_state_03

ReturnInLoop_state_02_true:                       ; preds = %ReturnInLoop_state_03
  %135 = call ptr @"github.com/goplus/llgo/cl/_testpull/multiret.Step"(i64 %40)
  %136 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 4
  store ptr %135, ptr %136, align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 5
  store i64 %44, ptr %137, align 4
  %138 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %138, align 1
  br label %ReturnInLoop_state_05

ReturnInLoop_state_02_false:                      ; preds = %ReturnInLoop_state_03
  %139 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 4
  store ptr %135, ptr %139, align 8
  %140 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 5
  store i64 %44, ptr %140, align 4
  %141 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %141, align 1
  br label %ReturnInLoop_state_06
}

define ptr @"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 80)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %1, i32 0, i32 3
  store i1 false, ptr %5, align 1
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %1, i32 0, i32 4
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %1, i32 0, i32 5
  store i64 0, ptr %7, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State", ptr %1, i32 0, i32 6
  store ptr null, ptr %8, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/multiret.ReturnInLoop$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define void @"github.com/goplus/llgo/cl/_testpull/multiret.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testpull/multiret.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testpull/multiret.init$guard", align 1
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
