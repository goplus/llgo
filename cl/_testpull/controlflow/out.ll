; ModuleID = 'github.com/goplus/llgo/cl/_testpull/controlflow'
source_filename = "github.com/goplus/llgo/cl/_testpull/controlflow"

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
%"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State" = type { i8, i64, i64, i1, ptr, i64, ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/async.AsyncFuture[int]" = type { { ptr, ptr }, i1, i1, i64 }
%"github.com/goplus/llgo/async.ReadyFuture[int]" = type { i64 }
%"github.com/goplus/llgo/async.Context" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }
%"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State" = type { i8, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface", i64, i64, i64, i1, i64, i64, i1, ptr, i64, ptr, ptr, i64 }
%"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State" = type { i8, i64, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface", i64, i64, i64, i1, i64, i1, ptr, i64, i64, ptr, ptr, i64 }
%"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State" = type { i8, i64, i64, i64, i64, ptr, ptr, ptr, i64 }

@"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -103283099, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Await", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Poll", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Poll" }] }, align 8
@0 = private unnamed_addr constant [22 x i8] c"async.ReadyFuture[int]", align 1
@"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1814719306, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@1 = private unnamed_addr constant [28 x i8] c"github.com/goplus/llgo/async", align 1
@2 = private unnamed_addr constant [5 x i8] c"value", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr @"*_llgo_int" }, align 8
@3 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"github.com/goplus/llgo/cl/_testpull/controlflow.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
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
@"_llgo_github.com/goplus/llgo/async.Context" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 0, i32 29200871, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Context" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 13 }, ptr @"*_llgo_github.com/goplus/llgo/async.Context" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.struct$Re9uCNpaPdvqJtnZYej5NZ8aMgZjb-_ftN8ogfRqy78$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@9 = private unnamed_addr constant [5 x i8] c"Waker", align 1
@"_llgo_github.com/goplus/llgo/async.Waker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -2133419533, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 11 }, ptr @"*_llgo_github.com/goplus/llgo/async.Waker" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 47 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$5udCHZ6xl-fBE2F9apjWV2qrxMb4_QYfwdoy0QD1D8c$imethods", i64 1, i64 1 } }, align 8
@10 = private unnamed_addr constant [11 x i8] c"async.Waker", align 1
@"*_llgo_github.com/goplus/llgo/async.Waker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 504672852, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 11 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Waker" }, align 8
@11 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/cl/_testpull/controlflow", align 1
@12 = private unnamed_addr constant [4 x i8] c"Wake", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@13 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@"_llgo_iface$5udCHZ6xl-fBE2F9apjWV2qrxMb4_QYfwdoy0QD1D8c$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 4 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }], align 8
@14 = private unnamed_addr constant [8 x i8] c"hasWaker", align 1
@_llgo_bool = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 554183389, i8 12, i8 1, i8 1, i8 33, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 4 }, ptr @"*_llgo_bool" }, align 8
@15 = private unnamed_addr constant [4 x i8] c"bool", align 1
@"*_llgo_bool" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1896950390, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 4 }, ptr null }, ptr @_llgo_bool }, align 8
@"github.com/goplus/llgo/cl/_testpull/controlflow.struct$Re9uCNpaPdvqJtnZYej5NZ8aMgZjb-_ftN8ogfRqy78$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/async.Waker", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 8 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/async.Context"], align 8
@"_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 801809575, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 15 }, ptr @"*_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.struct$M9E5HRdqyc11Zqvq07yhy6frK_fAyRGIc35bZKl9nrs$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error", ptr @"github.com/goplus/llgo/async.Poll[int].Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError", ptr @"github.com/goplus/llgo/async.Poll[int].HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.Poll[int].IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.Poll[int].Value" }] }, align 8
@16 = private unnamed_addr constant [15 x i8] c"async.Poll[int]", align 1
@"*_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -920093333, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 15 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value" }] }, align 8
@17 = private unnamed_addr constant [5 x i8] c"Error", align 1
@"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1398528794, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 19 }, ptr @"*_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8$out", i64 1, i64 1 } }, align 8
@18 = private unnamed_addr constant [19 x i8] c"func() interface {}", align 1
@"*_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1160547289, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 19 }, ptr null }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" }, align 8
@_llgo_any = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1376530322, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 12 }, ptr @"*_llgo_any" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 47 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
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
@"github.com/goplus/llgo/cl/_testpull/controlflow.struct$M9E5HRdqyc11Zqvq07yhy6frK_fAyRGIc35bZKl9nrs$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 5 }, ptr @_llgo_bool, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @_llgo_any, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]"], align 8
@"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 975938808, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 63 }, ptr @"*_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 47 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI$imethods", i64 2, i64 2 } }, align 8
@26 = private unnamed_addr constant [63 x i8] c"interface { Await() int; Poll(*async.Context) async.Poll[int] }", align 1
@"*_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1309347707, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 63 }, ptr null }, ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI" }, align 8
@"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI$imethods" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -763812060, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 23 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 47 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.(*LoopWithBreak$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.(*LoopWithBreak$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.(*LoopWithBreak$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.(*LoopWithBreak$State).Poll" }] }, align 8
@27 = private unnamed_addr constant [23 x i8] c"foo.LoopWithBreak$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 48, i32 -247910958, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 23 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.struct$ayRPl0Y6El8apACKwlDyCE78-yMQBgMRSTEjwPjh5hY$fields", i64 8, i64 8 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 47 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@28 = private unnamed_addr constant [5 x i8] c"state", align 1
@_llgo_int8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 1444672578, i8 12, i8 1, i8 1, i8 35, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 4 }, ptr @"*_llgo_int8" }, align 8
@29 = private unnamed_addr constant [4 x i8] c"int8", align 1
@"*_llgo_int8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1399554408, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 4 }, ptr null }, ptr @_llgo_int8 }, align 8
@30 = private unnamed_addr constant [6 x i8] c"param0", align 1
@31 = private unnamed_addr constant [4 x i8] c"var0", align 1
@32 = private unnamed_addr constant [4 x i8] c"var1", align 1
@33 = private unnamed_addr constant [4 x i8] c"var2", align 1
@"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 964362133, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll" }] }, align 8
@34 = private unnamed_addr constant [22 x i8] c"async.AsyncFuture[int]", align 1
@"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 0, i32 1769159236, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@35 = private unnamed_addr constant [2 x i8] c"fn", align 1
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1213993089, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 87 }, ptr @"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields", i64 2, i64 2 } }, align 8
@36 = private unnamed_addr constant [87 x i8] c"struct { $f func(struct { $f func(int); $data unsafe.Pointer }); $data unsafe.Pointer }", align 1
@"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1666834553, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 87 }, ptr null }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, align 8
@37 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2009615728, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 51 }, ptr @"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@38 = private unnamed_addr constant [51 x i8] c"func(struct { $f func(int); $data unsafe.Pointer })", align 1
@"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1512208703, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 51 }, ptr null }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1556934939, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 45 }, ptr @"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields", i64 2, i64 2 } }, align 8
@39 = private unnamed_addr constant [45 x i8] c"struct { $f func(int); $data unsafe.Pointer }", align 1
@"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 364872269, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 45 }, ptr null }, ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -637187458, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 9 }, ptr @"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@40 = private unnamed_addr constant [9 x i8] c"func(int)", align 1
@"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 735356155, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 9 }, ptr null }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@41 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@42 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 2 }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM"], align 8
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 2 }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@43 = private unnamed_addr constant [7 x i8] c"started", align 1
@"github.com/goplus/llgo/cl/_testpull/controlflow.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 2 }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 7 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 5 }, ptr @_llgo_bool, i64 17, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@44 = private unnamed_addr constant [4 x i8] c"var3", align 1
@45 = private unnamed_addr constant [4 x i8] c"sub0", align 1
@46 = private unnamed_addr constant [11 x i8] c"resultValue", align 1
@"github.com/goplus/llgo/cl/_testpull/controlflow.struct$ayRPl0Y6El8apACKwlDyCE78-yMQBgMRSTEjwPjh5hY$fields" = weak_odr constant [8 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 4 }, ptr @_llgo_bool, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 11 }, ptr @_llgo_int, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -928556538, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 26 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 47 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.(*LoopWithContinue$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.(*LoopWithContinue$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.(*LoopWithContinue$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.(*LoopWithContinue$State).Poll" }] }, align 8
@47 = private unnamed_addr constant [26 x i8] c"foo.LoopWithContinue$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 128, i64 112, i32 -1236307052, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 26 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.struct$bwoNmEh2ylacPfDGNZxnX2gPOe4a9wOywdPXSWdLwxU$fields", i64 15, i64 15 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 47 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"_llgo_github.com/goplus/llgo/async.Future[int]" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1503177044, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 17 }, ptr @"*_llgo_github.com/goplus/llgo/async.Future[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 47 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI$imethods", i64 2, i64 2 } }, align 8
@48 = private unnamed_addr constant [17 x i8] c"async.Future[int]", align 1
@"*_llgo_github.com/goplus/llgo/async.Future[int]" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 934108082, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 17 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]" }, align 8
@49 = private unnamed_addr constant [4 x i8] c"var4", align 1
@50 = private unnamed_addr constant [4 x i8] c"var5", align 1
@51 = private unnamed_addr constant [4 x i8] c"var6", align 1
@52 = private unnamed_addr constant [4 x i8] c"var7", align 1
@53 = private unnamed_addr constant [4 x i8] c"var8", align 1
@54 = private unnamed_addr constant [4 x i8] c"var9", align 1
@55 = private unnamed_addr constant [5 x i8] c"var10", align 1
@"github.com/goplus/llgo/cl/_testpull/controlflow.struct$bwoNmEh2ylacPfDGNZxnX2gPOe4a9wOywdPXSWdLwxU$fields" = weak_odr constant [15 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 4 }, ptr @_llgo_bool, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 4 }, ptr @_llgo_int, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 4 }, ptr @_llgo_int, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 4 }, ptr @_llgo_bool, i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 4 }, ptr @_llgo_int, i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 5 }, ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]", i64 104, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 11 }, ptr @_llgo_int, i64 120, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -274987957, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 20 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 47 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.(*NestedLoop$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.(*NestedLoop$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.(*NestedLoop$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.(*NestedLoop$State).Poll" }] }, align 8
@56 = private unnamed_addr constant [20 x i8] c"foo.NestedLoop$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 136, i64 120, i32 1524647637, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 20 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.struct$EJNzfdyp0wHO8tfeo3VcOYS4WVKBUH15FPPYgbjiWxw$fields", i64 16, i64 16 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 47 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@57 = private unnamed_addr constant [6 x i8] c"param1", align 1
@"github.com/goplus/llgo/cl/_testpull/controlflow.struct$EJNzfdyp0wHO8tfeo3VcOYS4WVKBUH15FPPYgbjiWxw$fields" = weak_odr constant [16 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 6 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr @_llgo_int, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 4 }, ptr @_llgo_bool, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 4 }, ptr @_llgo_int, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 4 }, ptr @_llgo_bool, i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 4 }, ptr @_llgo_int, i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 4 }, ptr @_llgo_int, i64 104, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 5 }, ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]", i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 120, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 11 }, ptr @_llgo_int, i64 128, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -136600484, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 20 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 47 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.(*SwitchCase$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.(*SwitchCase$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.(*SwitchCase$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.(*SwitchCase$State).Poll" }] }, align 8
@58 = private unnamed_addr constant [20 x i8] c"foo.SwitchCase$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 72, i64 56, i32 326863944, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 20 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.struct$x_ELybqexFoPWcY0p_LykhzXv0LKn85ZkJ4kak8Qb4k$fields", i64 9, i64 9 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 47 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@59 = private unnamed_addr constant [4 x i8] c"sub1", align 1
@60 = private unnamed_addr constant [4 x i8] c"sub2", align 1
@"github.com/goplus/llgo/cl/_testpull/controlflow.struct$x_ELybqexFoPWcY0p_LykhzXv0LKn85ZkJ4kak8Qb4k$fields" = weak_odr constant [9 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 11 }, ptr @_llgo_int, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/controlflow.init$guard" = global i1 false, align 1
@61 = private unnamed_addr constant [45 x i8] c"Await() should be transformed by the compiler", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 6 }, ptr @"*_llgo_string" }, align 8
@62 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 6 }, ptr null }, ptr @_llgo_string }, align 8

define i64 @"github.com/goplus/llgo/cl/_testpull/controlflow.(*LoopWithBreak$State).Await"(ptr %0) {
_llgo_0:
  ret i64 undef
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/controlflow.(*LoopWithBreak$State).Poll"(ptr %0, ptr %1) {
LoopWithBreak_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %LoopWithBreak_state_unreach [
    i8 0, label %LoopWithBreak_state_00
    i8 1, label %LoopWithBreak_state_01
    i8 2, label %LoopWithBreak_state_02
    i8 3, label %LoopWithBreak_state_03
    i8 4, label %LoopWithBreak_state_04
    i8 5, label %LoopWithBreak_state_05
    i8 6, label %LoopWithBreak_state_06
    i8 7, label %LoopWithBreak_state_done
  ]

LoopWithBreak_state_00:                           ; preds = %LoopWithBreak_entry
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 3
  %9 = load i1, ptr %8, align 1
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 5
  %13 = load i64, ptr %12, align 4
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 2
  store i64 0, ptr %14, align 4
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %15, align 1
  br label %LoopWithBreak_state_01

LoopWithBreak_state_01:                           ; preds = %LoopWithBreak_state_06, %LoopWithBreak_state_00, %LoopWithBreak_entry
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 1
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 2
  %19 = load i64, ptr %18, align 4
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 4
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 5
  %23 = load i64, ptr %22, align 4
  %24 = icmp slt i64 %19, %17
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 3
  store i1 %24, ptr %25, align 1
  br i1 %24, label %LoopWithBreak_state_01_true, label %LoopWithBreak_state_01_false

LoopWithBreak_state_02:                           ; preds = %LoopWithBreak_state_01_true, %LoopWithBreak_entry
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 1
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 2
  %29 = load i64, ptr %28, align 4
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 3
  %31 = load i1, ptr %30, align 1
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 5
  %33 = load i64, ptr %32, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 6
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %LoopWithBreak_state_02_init, label %LoopWithBreak_state_02_poll

LoopWithBreak_state_03:                           ; preds = %LoopWithBreak_state_02_ready, %LoopWithBreak_entry
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 1
  %38 = load i64, ptr %37, align 4
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 2
  %40 = load i64, ptr %39, align 4
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 3
  %42 = load i1, ptr %41, align 1
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 5
  %44 = load i64, ptr %43, align 4
  %45 = icmp sgt i64 %44, 5
  br i1 %45, label %LoopWithBreak_state_02_true, label %LoopWithBreak_state_02_false

LoopWithBreak_state_04:                           ; preds = %LoopWithBreak_state_01_false, %LoopWithBreak_entry
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 1
  %47 = load i64, ptr %46, align 4
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 2
  %49 = load i64, ptr %48, align 4
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 3
  %51 = load i1, ptr %50, align 1
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 4
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 5
  %55 = load i64, ptr %54, align 4
  %56 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 0)
  %57 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %57, 0
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %58, ptr %56, 1
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 7
  store i64 0, ptr %60, align 4
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %61, align 1
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 7
  %63 = load i64, ptr %62, align 4
  %64 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %63, 1
  %65 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %64, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %65

LoopWithBreak_state_05:                           ; preds = %LoopWithBreak_state_02_true, %LoopWithBreak_entry
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 1
  %67 = load i64, ptr %66, align 4
  %68 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 2
  %69 = load i64, ptr %68, align 4
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 3
  %71 = load i1, ptr %70, align 1
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 4
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 5
  %75 = load i64, ptr %74, align 4
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 5
  %77 = load i64, ptr %76, align 4
  %78 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %75)
  %79 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %80 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %79, 0
  %81 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %80, ptr %78, 1
  %82 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 7
  store i64 %77, ptr %82, align 4
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %83, align 1
  %84 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 7
  %85 = load i64, ptr %84, align 4
  %86 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %85, 1
  %87 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %86, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %87

LoopWithBreak_state_06:                           ; preds = %LoopWithBreak_state_02_false, %LoopWithBreak_entry
  %88 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 1
  %89 = load i64, ptr %88, align 4
  %90 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 2
  %91 = load i64, ptr %90, align 4
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 3
  %93 = load i1, ptr %92, align 1
  %94 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 4
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 5
  %97 = load i64, ptr %96, align 4
  %98 = add i64 %91, 1
  %99 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 2
  store i64 %98, ptr %99, align 4
  %100 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %100, align 1
  br label %LoopWithBreak_state_01

LoopWithBreak_state_done:                         ; preds = %LoopWithBreak_entry
  %101 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 7
  %102 = load i64, ptr %101, align 4
  %103 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %102, 1
  %104 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %103, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %104

LoopWithBreak_state_unreach:                      ; preds = %LoopWithBreak_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_10:                                         ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

LoopWithBreak_state_01_true:                      ; preds = %LoopWithBreak_state_01
  %105 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 3
  store i1 %24, ptr %105, align 1
  %106 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %106, align 1
  br label %LoopWithBreak_state_02

LoopWithBreak_state_01_false:                     ; preds = %LoopWithBreak_state_01
  %107 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 3
  store i1 %24, ptr %107, align 1
  %108 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %108, align 1
  br label %LoopWithBreak_state_04

LoopWithBreak_state_02_init:                      ; preds = %LoopWithBreak_state_02
  %109 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 1
  %110 = load i64, ptr %109, align 4
  %111 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 2
  %112 = load i64, ptr %111, align 4
  %113 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 3
  %114 = load i1, ptr %113, align 1
  %115 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 5
  %116 = load i64, ptr %115, align 4
  %117 = call ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.Step"(i64 %112)
  %118 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 4
  store ptr %117, ptr %118, align 8
  store ptr %117, ptr %34, align 8
  br label %LoopWithBreak_state_02_poll

LoopWithBreak_state_02_poll:                      ; preds = %LoopWithBreak_state_02_init, %LoopWithBreak_state_02
  %119 = load ptr, ptr %34, align 8
  %120 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %119, ptr %1)
  %121 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %120, 0
  br i1 %121, label %LoopWithBreak_state_02_ready, label %LoopWithBreak_state_02_pending

LoopWithBreak_state_02_ready:                     ; preds = %LoopWithBreak_state_02_poll
  %122 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %120, 1
  %123 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 5
  store i64 %122, ptr %123, align 4
  %124 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 2
  store i64 %112, ptr %124, align 4
  %125 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 3
  store i1 %114, ptr %125, align 1
  %126 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 4
  store ptr %117, ptr %126, align 8
  store ptr null, ptr %34, align 8
  %127 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %127, align 1
  br label %LoopWithBreak_state_03

LoopWithBreak_state_02_pending:                   ; preds = %LoopWithBreak_state_02_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

LoopWithBreak_state_02_true:                      ; preds = %LoopWithBreak_state_03
  %128 = call ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.Step"(i64 %40)
  %129 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 4
  store ptr %128, ptr %129, align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 5
  store i64 %44, ptr %130, align 4
  %131 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %131, align 1
  br label %LoopWithBreak_state_05

LoopWithBreak_state_02_false:                     ; preds = %LoopWithBreak_state_03
  %132 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 4
  store ptr %128, ptr %132, align 8
  %133 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 5
  store i64 %44, ptr %133, align 4
  %134 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %134, align 1
  br label %LoopWithBreak_state_06
}

define ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.Step"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.Step$1", ptr undef }, ptr %2, 1
  %5 = call ptr @"github.com/goplus/llgo/async.Async[int]"({ ptr, ptr } %4)
  ret ptr %5
}

define void @"github.com/goplus/llgo/cl/_testpull/controlflow.Step$1"(ptr %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load i64, ptr %3, align 4
  %5 = add i64 %4, 1
  %6 = extractvalue { ptr, ptr } %1, 1
  %7 = extractvalue { ptr, ptr } %1, 0
  call void %7(ptr %6, i64 %5)
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

define ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 64)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %1, i32 0, i32 3
  store i1 false, ptr %5, align 1
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %1, i32 0, i32 4
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %1, i32 0, i32 5
  store i64 0, ptr %7, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %1, i32 0, i32 6
  store ptr null, ptr %8, align 8
  ret ptr %1
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define linkonce i64 @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 45 }, ptr %1, align 8
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

define i64 @"github.com/goplus/llgo/cl/_testpull/controlflow.(*LoopWithContinue$State).Await"(ptr %0) {
_llgo_0:
  ret i64 undef
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/controlflow.(*LoopWithContinue$State).Poll"(ptr %0, ptr %1) {
LoopWithContinue_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %LoopWithContinue_state_unreach [
    i8 0, label %LoopWithContinue_state_00
    i8 1, label %LoopWithContinue_state_01
    i8 2, label %LoopWithContinue_state_02
    i8 3, label %LoopWithContinue_state_03
    i8 4, label %LoopWithContinue_state_04
    i8 5, label %LoopWithContinue_state_05
    i8 6, label %LoopWithContinue_state_06
    i8 7, label %LoopWithContinue_state_done
  ]

LoopWithContinue_state_00:                        ; preds = %LoopWithContinue_entry
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 2
  %7 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %6, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 3
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 4
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 5
  %13 = load i64, ptr %12, align 4
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 6
  %15 = load i1, ptr %14, align 1
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 7
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 8
  %19 = load i64, ptr %18, align 4
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 9
  %21 = load i1, ptr %20, align 1
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 10
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 11
  %25 = load i64, ptr %24, align 4
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 12
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 3
  store i64 0, ptr %28, align 4
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 5
  store i64 0, ptr %29, align 4
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %30, align 1
  br label %LoopWithContinue_state_01

LoopWithContinue_state_01:                        ; preds = %LoopWithContinue_state_03, %LoopWithContinue_state_00, %LoopWithContinue_entry
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 1
  %32 = load i64, ptr %31, align 4
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 2
  %34 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %33, align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 3
  %36 = load i64, ptr %35, align 4
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 4
  %38 = load i64, ptr %37, align 4
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 5
  %40 = load i64, ptr %39, align 4
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 7
  %42 = load i64, ptr %41, align 4
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 8
  %44 = load i64, ptr %43, align 4
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 9
  %46 = load i1, ptr %45, align 1
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 10
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 11
  %50 = load i64, ptr %49, align 4
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 12
  %52 = load ptr, ptr %51, align 8
  %53 = icmp slt i64 %40, %32
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 6
  store i1 %53, ptr %54, align 1
  br i1 %53, label %LoopWithContinue_state_01_true, label %LoopWithContinue_state_01_false

LoopWithContinue_state_02:                        ; preds = %LoopWithContinue_state_01_true, %LoopWithContinue_entry
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 1
  %56 = load i64, ptr %55, align 4
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 2
  %58 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %57, align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 3
  %60 = load i64, ptr %59, align 4
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 4
  %62 = load i64, ptr %61, align 4
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 5
  %64 = load i64, ptr %63, align 4
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 6
  %66 = load i1, ptr %65, align 1
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 7
  %68 = load i64, ptr %67, align 4
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 10
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 11
  %72 = load i64, ptr %71, align 4
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 12
  %74 = load ptr, ptr %73, align 8
  %75 = srem i64 %64, 2
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 8
  store i64 %75, ptr %76, align 4
  %77 = icmp eq i64 %75, 0
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 9
  store i1 %77, ptr %78, align 1
  br i1 %77, label %LoopWithContinue_state_02_true, label %LoopWithContinue_state_02_false

LoopWithContinue_state_03:                        ; preds = %LoopWithContinue_state_06, %LoopWithContinue_state_02_true, %LoopWithContinue_entry
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 1
  %80 = load i64, ptr %79, align 4
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 2
  %82 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %81, align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 3
  %84 = load i64, ptr %83, align 4
  %85 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 4
  %86 = load i64, ptr %85, align 4
  %87 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 5
  %88 = load i64, ptr %87, align 4
  %89 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 6
  %90 = load i1, ptr %89, align 1
  %91 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 8
  %92 = load i64, ptr %91, align 4
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 9
  %94 = load i1, ptr %93, align 1
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 10
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 11
  %98 = load i64, ptr %97, align 4
  %99 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 12
  %100 = load ptr, ptr %99, align 8
  %101 = add i64 %88, 1
  %102 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 7
  store i64 %101, ptr %102, align 4
  %103 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 4
  %104 = load i64, ptr %103, align 4
  %105 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 3
  store i64 %104, ptr %105, align 4
  %106 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 7
  %107 = load i64, ptr %106, align 4
  %108 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 5
  store i64 %107, ptr %108, align 4
  %109 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 7
  store i64 %101, ptr %109, align 4
  %110 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %110, align 1
  br label %LoopWithContinue_state_01

LoopWithContinue_state_04:                        ; preds = %LoopWithContinue_state_01_false, %LoopWithContinue_entry
  %111 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 1
  %112 = load i64, ptr %111, align 4
  %113 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 3
  %114 = load i64, ptr %113, align 4
  %115 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 4
  %116 = load i64, ptr %115, align 4
  %117 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 5
  %118 = load i64, ptr %117, align 4
  %119 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 6
  %120 = load i1, ptr %119, align 1
  %121 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 7
  %122 = load i64, ptr %121, align 4
  %123 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 8
  %124 = load i64, ptr %123, align 4
  %125 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 9
  %126 = load i1, ptr %125, align 1
  %127 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 10
  %128 = load ptr, ptr %127, align 8
  %129 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 11
  %130 = load i64, ptr %129, align 4
  %131 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 3
  %132 = load i64, ptr %131, align 4
  %133 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %114)
  %134 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %135 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %134, 0
  %136 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %135, ptr %133, 1
  %137 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %136, ptr %137, align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 14
  store i64 %132, ptr %138, align 4
  %139 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %139, align 1
  %140 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 14
  %141 = load i64, ptr %140, align 4
  %142 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %141, 1
  %143 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %142, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %143

LoopWithContinue_state_05:                        ; preds = %LoopWithContinue_state_02_false, %LoopWithContinue_entry
  %144 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 1
  %145 = load i64, ptr %144, align 4
  %146 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 2
  %147 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %146, align 8
  %148 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 3
  %149 = load i64, ptr %148, align 4
  %150 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 4
  %151 = load i64, ptr %150, align 4
  %152 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 5
  %153 = load i64, ptr %152, align 4
  %154 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 6
  %155 = load i1, ptr %154, align 1
  %156 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 7
  %157 = load i64, ptr %156, align 4
  %158 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 8
  %159 = load i64, ptr %158, align 4
  %160 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 9
  %161 = load i1, ptr %160, align 1
  %162 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 11
  %163 = load i64, ptr %162, align 4
  %164 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 12
  %165 = load ptr, ptr %164, align 8
  %166 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 13
  %167 = load ptr, ptr %166, align 8
  %168 = icmp eq ptr %167, null
  br i1 %168, label %LoopWithContinue_state_05_init, label %LoopWithContinue_state_05_poll

LoopWithContinue_state_06:                        ; preds = %LoopWithContinue_state_05_ready, %LoopWithContinue_entry
  %169 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 1
  %170 = load i64, ptr %169, align 4
  %171 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 2
  %172 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %171, align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 3
  %174 = load i64, ptr %173, align 4
  %175 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 4
  %176 = load i64, ptr %175, align 4
  %177 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 5
  %178 = load i64, ptr %177, align 4
  %179 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 6
  %180 = load i1, ptr %179, align 1
  %181 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 7
  %182 = load i64, ptr %181, align 4
  %183 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 8
  %184 = load i64, ptr %183, align 4
  %185 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 9
  %186 = load i1, ptr %185, align 1
  %187 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 11
  %188 = load i64, ptr %187, align 4
  %189 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 12
  %190 = load ptr, ptr %189, align 8
  %191 = add i64 %174, %188
  %192 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 4
  store i64 %191, ptr %192, align 4
  %193 = call ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.Step"(i64 %178)
  %194 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 10
  store ptr %193, ptr %194, align 8
  %195 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 11
  store i64 %188, ptr %195, align 4
  %196 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %196, align 1
  br label %LoopWithContinue_state_03

LoopWithContinue_state_done:                      ; preds = %LoopWithContinue_entry
  %197 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 14
  %198 = load i64, ptr %197, align 4
  %199 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %198, 1
  %200 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %199, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %200

LoopWithContinue_state_unreach:                   ; preds = %LoopWithContinue_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_10:                                         ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

LoopWithContinue_state_01_true:                   ; preds = %LoopWithContinue_state_01
  %201 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 6
  store i1 %53, ptr %201, align 1
  %202 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %202, align 1
  br label %LoopWithContinue_state_02

LoopWithContinue_state_01_false:                  ; preds = %LoopWithContinue_state_01
  %203 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 6
  store i1 %53, ptr %203, align 1
  %204 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %204, align 1
  br label %LoopWithContinue_state_04

LoopWithContinue_state_02_true:                   ; preds = %LoopWithContinue_state_02
  %205 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 3
  %206 = load i64, ptr %205, align 4
  %207 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 4
  store i64 %206, ptr %207, align 4
  %208 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 8
  store i64 %75, ptr %208, align 4
  %209 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 9
  store i1 %77, ptr %209, align 1
  %210 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %210, align 1
  br label %LoopWithContinue_state_03

LoopWithContinue_state_02_false:                  ; preds = %LoopWithContinue_state_02
  %211 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 8
  store i64 %75, ptr %211, align 4
  %212 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 9
  store i1 %77, ptr %212, align 1
  %213 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %213, align 1
  br label %LoopWithContinue_state_05

LoopWithContinue_state_05_init:                   ; preds = %LoopWithContinue_state_05
  %214 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 1
  %215 = load i64, ptr %214, align 4
  %216 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 2
  %217 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %216, align 8
  %218 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 3
  %219 = load i64, ptr %218, align 4
  %220 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 4
  %221 = load i64, ptr %220, align 4
  %222 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 5
  %223 = load i64, ptr %222, align 4
  %224 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 6
  %225 = load i1, ptr %224, align 1
  %226 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 7
  %227 = load i64, ptr %226, align 4
  %228 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 8
  %229 = load i64, ptr %228, align 4
  %230 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 9
  %231 = load i1, ptr %230, align 1
  %232 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 11
  %233 = load i64, ptr %232, align 4
  %234 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 12
  %235 = load ptr, ptr %234, align 8
  %236 = call ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.Step"(i64 %223)
  %237 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 10
  store ptr %236, ptr %237, align 8
  store ptr %236, ptr %166, align 8
  br label %LoopWithContinue_state_05_poll

LoopWithContinue_state_05_poll:                   ; preds = %LoopWithContinue_state_05_init, %LoopWithContinue_state_05
  %238 = load ptr, ptr %166, align 8
  %239 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %238, ptr %1)
  %240 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %239, 0
  br i1 %240, label %LoopWithContinue_state_05_ready, label %LoopWithContinue_state_05_pending

LoopWithContinue_state_05_ready:                  ; preds = %LoopWithContinue_state_05_poll
  %241 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %239, 1
  %242 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 11
  store i64 %241, ptr %242, align 4
  %243 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %217, ptr %243, align 8
  %244 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 3
  store i64 %219, ptr %244, align 4
  %245 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 4
  store i64 %221, ptr %245, align 4
  %246 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 5
  store i64 %223, ptr %246, align 4
  %247 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 6
  store i1 %225, ptr %247, align 1
  %248 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 7
  store i64 %227, ptr %248, align 4
  %249 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 8
  store i64 %229, ptr %249, align 4
  %250 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 9
  store i1 %231, ptr %250, align 1
  %251 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 10
  store ptr %236, ptr %251, align 8
  %252 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 12
  store ptr %235, ptr %252, align 8
  store ptr null, ptr %166, align 8
  %253 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %253, align 1
  br label %LoopWithContinue_state_06

LoopWithContinue_state_05_pending:                ; preds = %LoopWithContinue_state_05_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 128)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %1, i32 0, i32 2
  store { ptr, ptr } zeroinitializer, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %1, i32 0, i32 3
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %1, i32 0, i32 4
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %1, i32 0, i32 5
  store i64 0, ptr %7, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %1, i32 0, i32 6
  store i1 false, ptr %8, align 1
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %1, i32 0, i32 7
  store i64 0, ptr %9, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %1, i32 0, i32 8
  store i64 0, ptr %10, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %1, i32 0, i32 9
  store i1 false, ptr %11, align 1
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %1, i32 0, i32 10
  store ptr null, ptr %12, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %1, i32 0, i32 11
  store i64 0, ptr %13, align 4
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %1, i32 0, i32 12
  store ptr null, ptr %14, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %1, i32 0, i32 13
  store ptr null, ptr %15, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define i64 @"github.com/goplus/llgo/cl/_testpull/controlflow.(*NestedLoop$State).Await"(ptr %0) {
_llgo_0:
  ret i64 undef
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/controlflow.(*NestedLoop$State).Poll"(ptr %0, ptr %1) {
NestedLoop_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %NestedLoop_state_unreach [
    i8 0, label %NestedLoop_state_00
    i8 1, label %NestedLoop_state_01
    i8 2, label %NestedLoop_state_02
    i8 3, label %NestedLoop_state_03
    i8 4, label %NestedLoop_state_04
    i8 5, label %NestedLoop_state_05
    i8 6, label %NestedLoop_state_06
    i8 7, label %NestedLoop_state_07
    i8 8, label %NestedLoop_state_done
  ]

NestedLoop_state_00:                              ; preds = %NestedLoop_entry
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 3
  %9 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %8, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 4
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 5
  %13 = load i64, ptr %12, align 4
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 6
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 7
  %17 = load i1, ptr %16, align 1
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 8
  %19 = load i64, ptr %18, align 4
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 9
  %21 = load i1, ptr %20, align 1
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 10
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 11
  %25 = load i64, ptr %24, align 4
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 12
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 13
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 4
  store i64 0, ptr %30, align 4
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 6
  store i64 0, ptr %31, align 4
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %32, align 1
  br label %NestedLoop_state_01

NestedLoop_state_01:                              ; preds = %NestedLoop_state_07, %NestedLoop_state_00, %NestedLoop_entry
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 1
  %34 = load i64, ptr %33, align 4
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 2
  %36 = load i64, ptr %35, align 4
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 3
  %38 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %37, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 4
  %40 = load i64, ptr %39, align 4
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 5
  %42 = load i64, ptr %41, align 4
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 6
  %44 = load i64, ptr %43, align 4
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 8
  %46 = load i64, ptr %45, align 4
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 9
  %48 = load i1, ptr %47, align 1
  %49 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 10
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 11
  %52 = load i64, ptr %51, align 4
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 12
  %54 = load i64, ptr %53, align 4
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 13
  %56 = load ptr, ptr %55, align 8
  %57 = icmp slt i64 %44, %34
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 7
  store i1 %57, ptr %58, align 1
  br i1 %57, label %NestedLoop_state_01_true, label %NestedLoop_state_01_false

NestedLoop_state_02:                              ; preds = %NestedLoop_state_01_true, %NestedLoop_entry
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 1
  %60 = load i64, ptr %59, align 4
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 2
  %62 = load i64, ptr %61, align 4
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 3
  %64 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %63, align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 4
  %66 = load i64, ptr %65, align 4
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 5
  %68 = load i64, ptr %67, align 4
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 6
  %70 = load i64, ptr %69, align 4
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 7
  %72 = load i1, ptr %71, align 1
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 8
  %74 = load i64, ptr %73, align 4
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 9
  %76 = load i1, ptr %75, align 1
  %77 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 10
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 11
  %80 = load i64, ptr %79, align 4
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 12
  %82 = load i64, ptr %81, align 4
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 13
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 4
  %86 = load i64, ptr %85, align 4
  %87 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 5
  store i64 %86, ptr %87, align 4
  %88 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 8
  store i64 0, ptr %88, align 4
  %89 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %89, align 1
  br label %NestedLoop_state_04

NestedLoop_state_03:                              ; preds = %NestedLoop_state_01_false, %NestedLoop_entry
  %90 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 1
  %91 = load i64, ptr %90, align 4
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 2
  %93 = load i64, ptr %92, align 4
  %94 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 4
  %95 = load i64, ptr %94, align 4
  %96 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 5
  %97 = load i64, ptr %96, align 4
  %98 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 6
  %99 = load i64, ptr %98, align 4
  %100 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 7
  %101 = load i1, ptr %100, align 1
  %102 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 8
  %103 = load i64, ptr %102, align 4
  %104 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 9
  %105 = load i1, ptr %104, align 1
  %106 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 10
  %107 = load ptr, ptr %106, align 8
  %108 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 11
  %109 = load i64, ptr %108, align 4
  %110 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 12
  %111 = load i64, ptr %110, align 4
  %112 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 4
  %113 = load i64, ptr %112, align 4
  %114 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %95)
  %115 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %116 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %115, 0
  %117 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %116, ptr %114, 1
  %118 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 3
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %117, ptr %118, align 8
  %119 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 15
  store i64 %113, ptr %119, align 4
  %120 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 0
  store i8 8, ptr %120, align 1
  %121 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 15
  %122 = load i64, ptr %121, align 4
  %123 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %122, 1
  %124 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %123, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %124

NestedLoop_state_04:                              ; preds = %NestedLoop_state_06, %NestedLoop_state_02, %NestedLoop_entry
  %125 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 1
  %126 = load i64, ptr %125, align 4
  %127 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 2
  %128 = load i64, ptr %127, align 4
  %129 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 3
  %130 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %129, align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 4
  %132 = load i64, ptr %131, align 4
  %133 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 5
  %134 = load i64, ptr %133, align 4
  %135 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 6
  %136 = load i64, ptr %135, align 4
  %137 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 7
  %138 = load i1, ptr %137, align 1
  %139 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 8
  %140 = load i64, ptr %139, align 4
  %141 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 10
  %142 = load ptr, ptr %141, align 8
  %143 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 11
  %144 = load i64, ptr %143, align 4
  %145 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 12
  %146 = load i64, ptr %145, align 4
  %147 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 13
  %148 = load ptr, ptr %147, align 8
  %149 = icmp slt i64 %140, %128
  %150 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 9
  store i1 %149, ptr %150, align 1
  br i1 %149, label %NestedLoop_state_04_true, label %NestedLoop_state_04_false

NestedLoop_state_05:                              ; preds = %NestedLoop_state_04_true, %NestedLoop_entry
  %151 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 1
  %152 = load i64, ptr %151, align 4
  %153 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 2
  %154 = load i64, ptr %153, align 4
  %155 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 3
  %156 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %155, align 8
  %157 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 4
  %158 = load i64, ptr %157, align 4
  %159 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 5
  %160 = load i64, ptr %159, align 4
  %161 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 6
  %162 = load i64, ptr %161, align 4
  %163 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 7
  %164 = load i1, ptr %163, align 1
  %165 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 8
  %166 = load i64, ptr %165, align 4
  %167 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 9
  %168 = load i1, ptr %167, align 1
  %169 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 12
  %170 = load i64, ptr %169, align 4
  %171 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 13
  %172 = load ptr, ptr %171, align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 14
  %174 = load ptr, ptr %173, align 8
  %175 = icmp eq ptr %174, null
  br i1 %175, label %NestedLoop_state_05_init, label %NestedLoop_state_05_poll

NestedLoop_state_06:                              ; preds = %NestedLoop_state_05_ready, %NestedLoop_entry
  %176 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 1
  %177 = load i64, ptr %176, align 4
  %178 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 2
  %179 = load i64, ptr %178, align 4
  %180 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 3
  %181 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %180, align 8
  %182 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 4
  %183 = load i64, ptr %182, align 4
  %184 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 5
  %185 = load i64, ptr %184, align 4
  %186 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 6
  %187 = load i64, ptr %186, align 4
  %188 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 7
  %189 = load i1, ptr %188, align 1
  %190 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 8
  %191 = load i64, ptr %190, align 4
  %192 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 9
  %193 = load i1, ptr %192, align 1
  %194 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 12
  %195 = load i64, ptr %194, align 4
  %196 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 13
  %197 = load ptr, ptr %196, align 8
  %198 = add i64 %185, %195
  %199 = add i64 %191, 1
  %200 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 5
  store i64 %198, ptr %200, align 4
  %201 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 8
  store i64 %199, ptr %201, align 4
  %202 = mul i64 %187, %199
  %203 = call ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.Step"(i64 %202)
  %204 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 10
  store ptr %203, ptr %204, align 8
  %205 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 11
  store i64 %202, ptr %205, align 4
  %206 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 12
  store i64 %195, ptr %206, align 4
  %207 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %207, align 1
  br label %NestedLoop_state_04

NestedLoop_state_07:                              ; preds = %NestedLoop_state_04_false, %NestedLoop_entry
  %208 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 1
  %209 = load i64, ptr %208, align 4
  %210 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 2
  %211 = load i64, ptr %210, align 4
  %212 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 3
  %213 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %212, align 8
  %214 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 4
  %215 = load i64, ptr %214, align 4
  %216 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 5
  %217 = load i64, ptr %216, align 4
  %218 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 6
  %219 = load i64, ptr %218, align 4
  %220 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 7
  %221 = load i1, ptr %220, align 1
  %222 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 8
  %223 = load i64, ptr %222, align 4
  %224 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 9
  %225 = load i1, ptr %224, align 1
  %226 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 10
  %227 = load ptr, ptr %226, align 8
  %228 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 11
  %229 = load i64, ptr %228, align 4
  %230 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 12
  %231 = load i64, ptr %230, align 4
  %232 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 13
  %233 = load ptr, ptr %232, align 8
  %234 = add i64 %219, 1
  %235 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 5
  %236 = load i64, ptr %235, align 4
  %237 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 4
  store i64 %236, ptr %237, align 4
  %238 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 6
  store i64 %234, ptr %238, align 4
  %239 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %239, align 1
  br label %NestedLoop_state_01

NestedLoop_state_done:                            ; preds = %NestedLoop_entry
  %240 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 15
  %241 = load i64, ptr %240, align 4
  %242 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %241, 1
  %243 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %242, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %243

NestedLoop_state_unreach:                         ; preds = %NestedLoop_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_11:                                         ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

NestedLoop_state_01_true:                         ; preds = %NestedLoop_state_01
  %244 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 7
  store i1 %57, ptr %244, align 1
  %245 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %245, align 1
  br label %NestedLoop_state_02

NestedLoop_state_01_false:                        ; preds = %NestedLoop_state_01
  %246 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 7
  store i1 %57, ptr %246, align 1
  %247 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %247, align 1
  br label %NestedLoop_state_03

NestedLoop_state_04_true:                         ; preds = %NestedLoop_state_04
  %248 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 9
  store i1 %149, ptr %248, align 1
  %249 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %249, align 1
  br label %NestedLoop_state_05

NestedLoop_state_04_false:                        ; preds = %NestedLoop_state_04
  %250 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 9
  store i1 %149, ptr %250, align 1
  %251 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %251, align 1
  br label %NestedLoop_state_07

NestedLoop_state_05_init:                         ; preds = %NestedLoop_state_05
  %252 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 1
  %253 = load i64, ptr %252, align 4
  %254 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 2
  %255 = load i64, ptr %254, align 4
  %256 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 3
  %257 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %256, align 8
  %258 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 4
  %259 = load i64, ptr %258, align 4
  %260 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 5
  %261 = load i64, ptr %260, align 4
  %262 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 6
  %263 = load i64, ptr %262, align 4
  %264 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 7
  %265 = load i1, ptr %264, align 1
  %266 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 8
  %267 = load i64, ptr %266, align 4
  %268 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 9
  %269 = load i1, ptr %268, align 1
  %270 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 12
  %271 = load i64, ptr %270, align 4
  %272 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 13
  %273 = load ptr, ptr %272, align 8
  %274 = mul i64 %263, %267
  %275 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 11
  store i64 %274, ptr %275, align 4
  %276 = call ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.Step"(i64 %274)
  %277 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 10
  store ptr %276, ptr %277, align 8
  store ptr %276, ptr %173, align 8
  br label %NestedLoop_state_05_poll

NestedLoop_state_05_poll:                         ; preds = %NestedLoop_state_05_init, %NestedLoop_state_05
  %278 = load ptr, ptr %173, align 8
  %279 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %278, ptr %1)
  %280 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %279, 0
  br i1 %280, label %NestedLoop_state_05_ready, label %NestedLoop_state_05_pending

NestedLoop_state_05_ready:                        ; preds = %NestedLoop_state_05_poll
  %281 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %279, 1
  %282 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 12
  store i64 %281, ptr %282, align 4
  %283 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 3
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %257, ptr %283, align 8
  %284 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 4
  store i64 %259, ptr %284, align 4
  %285 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 5
  store i64 %261, ptr %285, align 4
  %286 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 6
  store i64 %263, ptr %286, align 4
  %287 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 7
  store i1 %265, ptr %287, align 1
  %288 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 8
  store i64 %267, ptr %288, align 4
  %289 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 9
  store i1 %269, ptr %289, align 1
  %290 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 10
  store ptr %276, ptr %290, align 8
  %291 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 11
  store i64 %274, ptr %291, align 4
  %292 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 13
  store ptr %273, ptr %292, align 8
  store ptr null, ptr %173, align 8
  %293 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %293, align 1
  br label %NestedLoop_state_06

NestedLoop_state_05_pending:                      ; preds = %NestedLoop_state_05_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$Concrete"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 136)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %2, i32 0, i32 0
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %2, i32 0, i32 1
  store i64 %0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %2, i32 0, i32 2
  store i64 %1, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %2, i32 0, i32 3
  store { ptr, ptr } zeroinitializer, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %2, i32 0, i32 4
  store i64 0, ptr %7, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %2, i32 0, i32 5
  store i64 0, ptr %8, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %2, i32 0, i32 6
  store i64 0, ptr %9, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %2, i32 0, i32 7
  store i1 false, ptr %10, align 1
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %2, i32 0, i32 8
  store i64 0, ptr %11, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %2, i32 0, i32 9
  store i1 false, ptr %12, align 1
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %2, i32 0, i32 10
  store ptr null, ptr %13, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %2, i32 0, i32 11
  store i64 0, ptr %14, align 4
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %2, i32 0, i32 12
  store i64 0, ptr %15, align 4
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %2, i32 0, i32 13
  store ptr null, ptr %16, align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %2, i32 0, i32 14
  store ptr null, ptr %17, align 8
  ret ptr %2
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$Concrete"(i64 %0, i64 %1)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State")
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, ptr %2, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5
}

define i64 @"github.com/goplus/llgo/cl/_testpull/controlflow.(*SwitchCase$State).Await"(ptr %0) {
_llgo_0:
  ret i64 undef
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/controlflow.(*SwitchCase$State).Poll"(ptr %0, ptr %1) {
SwitchCase_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %SwitchCase_state_unreach [
    i8 0, label %SwitchCase_state_00
    i8 1, label %SwitchCase_state_01
    i8 2, label %SwitchCase_state_02
    i8 3, label %SwitchCase_state_03
    i8 4, label %SwitchCase_state_04
    i8 5, label %SwitchCase_state_05
    i8 6, label %SwitchCase_state_06
    i8 7, label %SwitchCase_state_07
    i8 8, label %SwitchCase_state_done
  ]

SwitchCase_state_00:                              ; preds = %SwitchCase_entry
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 3
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 4
  %11 = load i64, ptr %10, align 4
  %12 = icmp eq i64 %5, 1
  br i1 %12, label %SwitchCase_state_00_true, label %SwitchCase_state_00_false

SwitchCase_state_01:                              ; preds = %SwitchCase_state_00_true, %SwitchCase_entry
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 1
  %14 = load i64, ptr %13, align 4
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 2
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 3
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 4
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 5
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %SwitchCase_state_01_init, label %SwitchCase_state_01_poll

SwitchCase_state_02:                              ; preds = %SwitchCase_state_01_ready, %SwitchCase_entry
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 1
  %25 = load i64, ptr %24, align 4
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 2
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 3
  %29 = load i64, ptr %28, align 4
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 4
  %31 = load i64, ptr %30, align 4
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 2
  %33 = load i64, ptr %32, align 4
  %34 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %27)
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %35, 0
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %36, ptr %34, 1
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 8
  store i64 %33, ptr %38, align 4
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 0
  store i8 8, ptr %39, align 1
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 8
  %41 = load i64, ptr %40, align 4
  %42 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %41, 1
  %43 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %42, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %43

SwitchCase_state_03:                              ; preds = %SwitchCase_state_03_true, %SwitchCase_entry
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 1
  %45 = load i64, ptr %44, align 4
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 2
  %47 = load i64, ptr %46, align 4
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 3
  %49 = load i64, ptr %48, align 4
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 4
  %51 = load i64, ptr %50, align 4
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 6
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %SwitchCase_state_03_init, label %SwitchCase_state_03_poll

SwitchCase_state_04:                              ; preds = %SwitchCase_state_03_ready, %SwitchCase_entry
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 1
  %56 = load i64, ptr %55, align 4
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 2
  %58 = load i64, ptr %57, align 4
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 3
  %60 = load i64, ptr %59, align 4
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 4
  %62 = load i64, ptr %61, align 4
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 3
  %64 = load i64, ptr %63, align 4
  %65 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %60)
  %66 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %66, 0
  %68 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %67, ptr %65, 1
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 8
  store i64 %64, ptr %69, align 4
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 0
  store i8 8, ptr %70, align 1
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 8
  %72 = load i64, ptr %71, align 4
  %73 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %72, 1
  %74 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %73, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %74

SwitchCase_state_05:                              ; preds = %SwitchCase_state_00_false, %SwitchCase_entry
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 1
  %76 = load i64, ptr %75, align 4
  %77 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 2
  %78 = load i64, ptr %77, align 4
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 3
  %80 = load i64, ptr %79, align 4
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 4
  %82 = load i64, ptr %81, align 4
  %83 = icmp eq i64 %76, 2
  br i1 %83, label %SwitchCase_state_03_true, label %SwitchCase_state_03_false

SwitchCase_state_06:                              ; preds = %SwitchCase_state_03_false, %SwitchCase_entry
  %84 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 1
  %85 = load i64, ptr %84, align 4
  %86 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 2
  %87 = load i64, ptr %86, align 4
  %88 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 3
  %89 = load i64, ptr %88, align 4
  %90 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 4
  %91 = load i64, ptr %90, align 4
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 7
  %93 = load ptr, ptr %92, align 8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %SwitchCase_state_06_init, label %SwitchCase_state_06_poll

SwitchCase_state_07:                              ; preds = %SwitchCase_state_06_ready, %SwitchCase_entry
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 1
  %96 = load i64, ptr %95, align 4
  %97 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 2
  %98 = load i64, ptr %97, align 4
  %99 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 3
  %100 = load i64, ptr %99, align 4
  %101 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 4
  %102 = load i64, ptr %101, align 4
  %103 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 4
  %104 = load i64, ptr %103, align 4
  %105 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %102)
  %106 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %107 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %106, 0
  %108 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %107, ptr %105, 1
  %109 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 8
  store i64 %104, ptr %109, align 4
  %110 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 0
  store i8 8, ptr %110, align 1
  %111 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 8
  %112 = load i64, ptr %111, align 4
  %113 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %112, 1
  %114 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %113, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %114

SwitchCase_state_done:                            ; preds = %SwitchCase_entry
  %115 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 8
  %116 = load i64, ptr %115, align 4
  %117 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %116, 1
  %118 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %117, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %118

SwitchCase_state_unreach:                         ; preds = %SwitchCase_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_11:                                         ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

SwitchCase_state_00_true:                         ; preds = %SwitchCase_state_00
  %119 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %119, align 1
  br label %SwitchCase_state_01

SwitchCase_state_00_false:                        ; preds = %SwitchCase_state_00
  %120 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %120, align 1
  br label %SwitchCase_state_05

SwitchCase_state_01_init:                         ; preds = %SwitchCase_state_01
  %121 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 1
  %122 = load i64, ptr %121, align 4
  %123 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 2
  %124 = load i64, ptr %123, align 4
  %125 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 3
  %126 = load i64, ptr %125, align 4
  %127 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 4
  %128 = load i64, ptr %127, align 4
  %129 = call ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.Step"(i64 10)
  store ptr %129, ptr %21, align 8
  br label %SwitchCase_state_01_poll

SwitchCase_state_01_poll:                         ; preds = %SwitchCase_state_01_init, %SwitchCase_state_01
  %130 = load ptr, ptr %21, align 8
  %131 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %130, ptr %1)
  %132 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %131, 0
  br i1 %132, label %SwitchCase_state_01_ready, label %SwitchCase_state_01_pending

SwitchCase_state_01_ready:                        ; preds = %SwitchCase_state_01_poll
  %133 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %131, 1
  %134 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 2
  store i64 %133, ptr %134, align 4
  %135 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 3
  store i64 %126, ptr %135, align 4
  %136 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 4
  store i64 %128, ptr %136, align 4
  store ptr null, ptr %21, align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %137, align 1
  br label %SwitchCase_state_02

SwitchCase_state_01_pending:                      ; preds = %SwitchCase_state_01_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

SwitchCase_state_03_init:                         ; preds = %SwitchCase_state_03
  %138 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 1
  %139 = load i64, ptr %138, align 4
  %140 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 2
  %141 = load i64, ptr %140, align 4
  %142 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 3
  %143 = load i64, ptr %142, align 4
  %144 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 4
  %145 = load i64, ptr %144, align 4
  %146 = call ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.Step"(i64 20)
  store ptr %146, ptr %52, align 8
  br label %SwitchCase_state_03_poll

SwitchCase_state_03_poll:                         ; preds = %SwitchCase_state_03_init, %SwitchCase_state_03
  %147 = load ptr, ptr %52, align 8
  %148 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %147, ptr %1)
  %149 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %148, 0
  br i1 %149, label %SwitchCase_state_03_ready, label %SwitchCase_state_03_pending

SwitchCase_state_03_ready:                        ; preds = %SwitchCase_state_03_poll
  %150 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %148, 1
  %151 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 3
  store i64 %150, ptr %151, align 4
  %152 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 2
  store i64 %141, ptr %152, align 4
  %153 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 4
  store i64 %145, ptr %153, align 4
  store ptr null, ptr %52, align 8
  %154 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %154, align 1
  br label %SwitchCase_state_04

SwitchCase_state_03_pending:                      ; preds = %SwitchCase_state_03_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

SwitchCase_state_03_true:                         ; preds = %SwitchCase_state_05
  %155 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %155, align 1
  br label %SwitchCase_state_03

SwitchCase_state_03_false:                        ; preds = %SwitchCase_state_05
  %156 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %156, align 1
  br label %SwitchCase_state_06

SwitchCase_state_06_init:                         ; preds = %SwitchCase_state_06
  %157 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 1
  %158 = load i64, ptr %157, align 4
  %159 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 2
  %160 = load i64, ptr %159, align 4
  %161 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 3
  %162 = load i64, ptr %161, align 4
  %163 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 4
  %164 = load i64, ptr %163, align 4
  %165 = call ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.Step"(i64 30)
  store ptr %165, ptr %92, align 8
  br label %SwitchCase_state_06_poll

SwitchCase_state_06_poll:                         ; preds = %SwitchCase_state_06_init, %SwitchCase_state_06
  %166 = load ptr, ptr %92, align 8
  %167 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %166, ptr %1)
  %168 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %167, 0
  br i1 %168, label %SwitchCase_state_06_ready, label %SwitchCase_state_06_pending

SwitchCase_state_06_ready:                        ; preds = %SwitchCase_state_06_poll
  %169 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %167, 1
  %170 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 4
  store i64 %169, ptr %170, align 4
  %171 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 2
  store i64 %160, ptr %171, align 4
  %172 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 3
  store i64 %162, ptr %172, align 4
  store ptr null, ptr %92, align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %173, align 1
  br label %SwitchCase_state_07

SwitchCase_state_06_pending:                      ; preds = %SwitchCase_state_06_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 72)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %1, i32 0, i32 3
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %1, i32 0, i32 4
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %1, i32 0, i32 5
  store ptr null, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %1, i32 0, i32 6
  store ptr null, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %1, i32 0, i32 7
  store ptr null, ptr %9, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define void @"github.com/goplus/llgo/cl/_testpull/controlflow.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.init$guard", align 1
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
