; ModuleID = 'github.com/goplus/llgo/cl/_testpull/complex'
source_filename = "github.com/goplus/llgo/cl/_testpull/complex"

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
%"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State" = type { i8, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/async.AsyncFuture[int]" = type { { ptr, ptr }, i1, i1, i64 }
%"github.com/goplus/llgo/async.ReadyFuture[int]" = type { i64 }
%"github.com/goplus/llgo/async.Context" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }
%"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State" = type { i8, i64, i64, i64, i64, ptr, ptr, i64 }
%"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State" = type { i8, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface", i64, i64, i64, i64, i64, ptr, i64, ptr, ptr, ptr, ptr, i64 }
%"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State" = type { i8, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface", i64, i64, i64, ptr, ptr, %"github.com/goplus/llgo/async.DeferState", i64 }
%"github.com/goplus/llgo/async.DeferState" = type { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1, i1 }
%"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State" = type { i8, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface", i64, i64, i64, i1, i64, i1, i1, ptr, i64, ptr, ptr, i64 }
%"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State" = type { i8, i64, i64, i64, i1, ptr, i64, ptr, i64 }
%"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State" = type { i8, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, i64 }
%"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State" = type { i8, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface", i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i64 }
%"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State" = type { i8, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface", i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i64 }
%"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State" = type { i8, i64, i64, i64, i1, ptr, i64, i64, i64, i1, ptr, i64, i64, ptr, ptr, i64 }

@"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -103283099, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Await", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Poll", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Poll" }] }, align 8
@0 = private unnamed_addr constant [22 x i8] c"async.ReadyFuture[int]", align 1
@"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1814719306, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@1 = private unnamed_addr constant [28 x i8] c"github.com/goplus/llgo/async", align 1
@2 = private unnamed_addr constant [5 x i8] c"value", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr @"*_llgo_int" }, align 8
@3 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"github.com/goplus/llgo/cl/_testpull/complex.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
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
@"_llgo_github.com/goplus/llgo/async.Context" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 0, i32 29200871, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Context" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 13 }, ptr @"*_llgo_github.com/goplus/llgo/async.Context" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$Re9uCNpaPdvqJtnZYej5NZ8aMgZjb-_ftN8ogfRqy78$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@9 = private unnamed_addr constant [5 x i8] c"Waker", align 1
@"_llgo_github.com/goplus/llgo/async.Waker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -2133419533, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 11 }, ptr @"*_llgo_github.com/goplus/llgo/async.Waker" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$5udCHZ6xl-fBE2F9apjWV2qrxMb4_QYfwdoy0QD1D8c$imethods", i64 1, i64 1 } }, align 8
@10 = private unnamed_addr constant [11 x i8] c"async.Waker", align 1
@"*_llgo_github.com/goplus/llgo/async.Waker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 504672852, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 11 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Waker" }, align 8
@11 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testpull/complex", align 1
@12 = private unnamed_addr constant [4 x i8] c"Wake", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@13 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@"_llgo_iface$5udCHZ6xl-fBE2F9apjWV2qrxMb4_QYfwdoy0QD1D8c$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 4 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }], align 8
@14 = private unnamed_addr constant [8 x i8] c"hasWaker", align 1
@_llgo_bool = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 554183389, i8 12, i8 1, i8 1, i8 33, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 4 }, ptr @"*_llgo_bool" }, align 8
@15 = private unnamed_addr constant [4 x i8] c"bool", align 1
@"*_llgo_bool" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1896950390, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 4 }, ptr null }, ptr @_llgo_bool }, align 8
@"github.com/goplus/llgo/cl/_testpull/complex.struct$Re9uCNpaPdvqJtnZYej5NZ8aMgZjb-_ftN8ogfRqy78$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/async.Waker", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 8 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/async.Context"], align 8
@"_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 801809575, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 15 }, ptr @"*_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$M9E5HRdqyc11Zqvq07yhy6frK_fAyRGIc35bZKl9nrs$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error", ptr @"github.com/goplus/llgo/async.Poll[int].Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError", ptr @"github.com/goplus/llgo/async.Poll[int].HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.Poll[int].IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.Poll[int].Value" }] }, align 8
@16 = private unnamed_addr constant [15 x i8] c"async.Poll[int]", align 1
@"*_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -920093333, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 15 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value" }] }, align 8
@17 = private unnamed_addr constant [5 x i8] c"Error", align 1
@"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1398528794, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 19 }, ptr @"*_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8$out", i64 1, i64 1 } }, align 8
@18 = private unnamed_addr constant [19 x i8] c"func() interface {}", align 1
@"*_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1160547289, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 19 }, ptr null }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" }, align 8
@_llgo_any = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1376530322, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 12 }, ptr @"*_llgo_any" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
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
@"github.com/goplus/llgo/cl/_testpull/complex.struct$M9E5HRdqyc11Zqvq07yhy6frK_fAyRGIc35bZKl9nrs$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 5 }, ptr @_llgo_bool, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @_llgo_any, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]"], align 8
@"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 975938808, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 63 }, ptr @"*_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI$imethods", i64 2, i64 2 } }, align 8
@26 = private unnamed_addr constant [63 x i8] c"interface { Await() int; Poll(*async.Context) async.Poll[int] }", align 1
@"*_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1309347707, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 63 }, ptr null }, ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI" }, align 8
@"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI$imethods" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -250122641, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 27 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 43 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*ChainedAwaits$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*ChainedAwaits$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*ChainedAwaits$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*ChainedAwaits$State).Poll" }] }, align 8
@27 = private unnamed_addr constant [27 x i8] c"complex.ChainedAwaits$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 112, i64 96, i32 1945761659, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 27 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$gmTfi8jVVjV5pTBqyJ2nuRHRhfywKB28vR14R-veOXo$fields", i64 14, i64 14 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
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
@36 = private unnamed_addr constant [4 x i8] c"var5", align 1
@37 = private unnamed_addr constant [4 x i8] c"var6", align 1
@38 = private unnamed_addr constant [4 x i8] c"sub0", align 1
@"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 964362133, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll" }] }, align 8
@39 = private unnamed_addr constant [22 x i8] c"async.AsyncFuture[int]", align 1
@"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 0, i32 1769159236, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@40 = private unnamed_addr constant [2 x i8] c"fn", align 1
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1213993089, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 87 }, ptr @"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields", i64 2, i64 2 } }, align 8
@41 = private unnamed_addr constant [87 x i8] c"struct { $f func(struct { $f func(int); $data unsafe.Pointer }); $data unsafe.Pointer }", align 1
@"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1666834553, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 87 }, ptr null }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, align 8
@42 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2009615728, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 51 }, ptr @"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@43 = private unnamed_addr constant [51 x i8] c"func(struct { $f func(int); $data unsafe.Pointer })", align 1
@"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1512208703, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 51 }, ptr null }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1556934939, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 45 }, ptr @"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields", i64 2, i64 2 } }, align 8
@44 = private unnamed_addr constant [45 x i8] c"struct { $f func(int); $data unsafe.Pointer }", align 1
@"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 364872269, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 45 }, ptr null }, ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -637187458, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 9 }, ptr @"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@45 = private unnamed_addr constant [9 x i8] c"func(int)", align 1
@"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 735356155, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 9 }, ptr null }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@46 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@47 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 2 }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM"], align 8
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 2 }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@48 = private unnamed_addr constant [7 x i8] c"started", align 1
@"github.com/goplus/llgo/cl/_testpull/complex.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 2 }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 7 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 5 }, ptr @_llgo_bool, i64 17, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@49 = private unnamed_addr constant [4 x i8] c"sub1", align 1
@50 = private unnamed_addr constant [4 x i8] c"sub2", align 1
@51 = private unnamed_addr constant [4 x i8] c"sub3", align 1
@52 = private unnamed_addr constant [11 x i8] c"resultValue", align 1
@"github.com/goplus/llgo/cl/_testpull/complex.struct$gmTfi8jVVjV5pTBqyJ2nuRHRhfywKB28vR14R-veOXo$fields" = weak_odr constant [14 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @_llgo_int, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 11 }, ptr @_llgo_int, i64 104, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -967649622, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 28 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 43 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*ClosureCapture$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*ClosureCapture$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*ClosureCapture$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*ClosureCapture$State).Poll" }] }, align 8
@53 = private unnamed_addr constant [28 x i8] c"complex.ClosureCapture$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 48, i32 1492750809, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 28 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$bmjjY3YjvOdlTdD91ol43FDzsybwKJb095PEBP4TI5Y$fields", i64 8, i64 8 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/complex.struct$bmjjY3YjvOdlTdD91ol43FDzsybwKJb095PEBP4TI5Y$fields" = weak_odr constant [8 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 11 }, ptr @_llgo_int, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1236880448, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 30 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 43 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*ConditionalChain$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*ConditionalChain$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*ConditionalChain$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*ConditionalChain$State).Poll" }] }, align 8
@54 = private unnamed_addr constant [30 x i8] c"complex.ConditionalChain$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 128, i64 112, i32 -1742836718, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 30 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$8nhKFVTvwj5bp0fpiZBs9tktflzeYUT7OKRn5SlUHZo$fields", i64 15, i64 15 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"_llgo_github.com/goplus/llgo/async.Future[int]" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1503177044, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 17 }, ptr @"*_llgo_github.com/goplus/llgo/async.Future[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI$imethods", i64 2, i64 2 } }, align 8
@55 = private unnamed_addr constant [17 x i8] c"async.Future[int]", align 1
@"*_llgo_github.com/goplus/llgo/async.Future[int]" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 934108082, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 17 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]" }, align 8
@56 = private unnamed_addr constant [4 x i8] c"var7", align 1
@57 = private unnamed_addr constant [4 x i8] c"var8", align 1
@"github.com/goplus/llgo/cl/_testpull/complex.struct$8nhKFVTvwj5bp0fpiZBs9tktflzeYUT7OKRn5SlUHZo$fields" = weak_odr constant [15 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 4 }, ptr @_llgo_int, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @_llgo_int, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 4 }, ptr @_llgo_int, i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]", i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 104, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 11 }, ptr @_llgo_int, i64 120, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1433977907, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 28 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 43 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*DeferWithAwait$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*DeferWithAwait$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*DeferWithAwait$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*DeferWithAwait$State).Poll" }] }, align 8
@58 = private unnamed_addr constant [28 x i8] c"complex.DeferWithAwait$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 112, i64 72, i32 -1783038012, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 28 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$mGWIpPCnojFv7vD7U7x32EAY6EK6qWcAlphmn0cNYXY$fields", i64 10, i64 10 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@59 = private unnamed_addr constant [10 x i8] c"deferState", align 1
@"_llgo_github.com/goplus/llgo/async.DeferState" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 8, i32 986572485, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.DeferState" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 16 }, ptr @"*_llgo_github.com/goplus/llgo/async.DeferState" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$Td80-BLvbtmjWV_MtKrt1TE6IBW4brip3KX8E1cxLks$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@60 = private unnamed_addr constant [16 x i8] c"async.DeferState", align 1
@"*_llgo_github.com/goplus/llgo/async.DeferState" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1092035480, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 16 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.DeferState" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 7 }, ptr @"_llgo_func$TUWCG8mUhPMa3Uemciu2rP6lY7SbhS3dNyiPALfsZE4", ptr @"github.com/goplus/llgo/async.(*DeferState).DoPanic", ptr @"github.com/goplus/llgo/async.(*DeferState).DoPanic" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 9 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*DeferState).DoRecover", ptr @"github.com/goplus/llgo/async.(*DeferState).DoRecover" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 9 }, ptr @"_llgo_func$AIgmJ1gQ2N3pYn8zY3Ok3J2IF-TrGXGuEAjk99jMqyk", ptr @"github.com/goplus/llgo/async.(*DeferState).PushDefer", ptr @"github.com/goplus/llgo/async.(*DeferState).PushDefer" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 9 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/async.(*DeferState).RunDefers", ptr @"github.com/goplus/llgo/async.(*DeferState).RunDefers" }] }, align 8
@61 = private unnamed_addr constant [7 x i8] c"DoPanic", align 1
@"_llgo_func$TUWCG8mUhPMa3Uemciu2rP6lY7SbhS3dNyiPALfsZE4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1057540033, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 23 }, ptr @"*_llgo_func$TUWCG8mUhPMa3Uemciu2rP6lY7SbhS3dNyiPALfsZE4" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$TUWCG8mUhPMa3Uemciu2rP6lY7SbhS3dNyiPALfsZE4$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$TUWCG8mUhPMa3Uemciu2rP6lY7SbhS3dNyiPALfsZE4$out", i64 1, i64 1 } }, align 8
@62 = private unnamed_addr constant [23 x i8] c"func(interface {}) bool", align 1
@"*_llgo_func$TUWCG8mUhPMa3Uemciu2rP6lY7SbhS3dNyiPALfsZE4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1898502247, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 23 }, ptr null }, ptr @"_llgo_func$TUWCG8mUhPMa3Uemciu2rP6lY7SbhS3dNyiPALfsZE4" }, align 8
@"_llgo_func$TUWCG8mUhPMa3Uemciu2rP6lY7SbhS3dNyiPALfsZE4$in" = weak_odr constant [1 x ptr] [ptr @_llgo_any], align 8
@"_llgo_func$TUWCG8mUhPMa3Uemciu2rP6lY7SbhS3dNyiPALfsZE4$out" = weak_odr constant [1 x ptr] [ptr @_llgo_bool], align 8
@63 = private unnamed_addr constant [9 x i8] c"DoRecover", align 1
@64 = private unnamed_addr constant [9 x i8] c"PushDefer", align 1
@"_llgo_func$AIgmJ1gQ2N3pYn8zY3Ok3J2IF-TrGXGuEAjk99jMqyk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -329630838, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 78 }, ptr @"*_llgo_func$AIgmJ1gQ2N3pYn8zY3Ok3J2IF-TrGXGuEAjk99jMqyk" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$AIgmJ1gQ2N3pYn8zY3Ok3J2IF-TrGXGuEAjk99jMqyk$in", i64 2, i64 2 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@65 = private unnamed_addr constant [78 x i8] c"func(struct { $f func(unsafe.Pointer); $data unsafe.Pointer }, unsafe.Pointer)", align 1
@"*_llgo_func$AIgmJ1gQ2N3pYn8zY3Ok3J2IF-TrGXGuEAjk99jMqyk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2091350364, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 78 }, ptr null }, ptr @"_llgo_func$AIgmJ1gQ2N3pYn8zY3Ok3J2IF-TrGXGuEAjk99jMqyk" }, align 8
@"_llgo_closure$FNB11V1bR1J-X_G8HcXdDp-oak1nhPOBL7Pt6o5nLxs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1271797440, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 56 }, ptr @"*_llgo_closure$FNB11V1bR1J-X_G8HcXdDp-oak1nhPOBL7Pt6o5nLxs" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$FNB11V1bR1J-X_G8HcXdDp-oak1nhPOBL7Pt6o5nLxs$fields", i64 2, i64 2 } }, align 8
@66 = private unnamed_addr constant [56 x i8] c"struct { $f func(unsafe.Pointer); $data unsafe.Pointer }", align 1
@"*_llgo_closure$FNB11V1bR1J-X_G8HcXdDp-oak1nhPOBL7Pt6o5nLxs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 585623024, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 56 }, ptr null }, ptr @"_llgo_closure$FNB11V1bR1J-X_G8HcXdDp-oak1nhPOBL7Pt6o5nLxs" }, align 8
@"_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1235344768, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 20 }, ptr @"*_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@67 = private unnamed_addr constant [20 x i8] c"func(unsafe.Pointer)", align 1
@"*_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 579283862, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 20 }, ptr null }, ptr @"_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30" }, align 8
@"_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30$in" = weak_odr constant [1 x ptr] [ptr @_llgo_Pointer], align 8
@"_llgo_closure$FNB11V1bR1J-X_G8HcXdDp-oak1nhPOBL7Pt6o5nLxs$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 2 }, ptr @"_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$AIgmJ1gQ2N3pYn8zY3Ok3J2IF-TrGXGuEAjk99jMqyk$in" = weak_odr constant [2 x ptr] [ptr @"_llgo_closure$FNB11V1bR1J-X_G8HcXdDp-oak1nhPOBL7Pt6o5nLxs", ptr @_llgo_Pointer], align 8
@68 = private unnamed_addr constant [9 x i8] c"RunDefers", align 1
@69 = private unnamed_addr constant [9 x i8] c"DeferHead", align 1
@70 = private unnamed_addr constant [10 x i8] c"PanicValue", align 1
@71 = private unnamed_addr constant [11 x i8] c"IsPanicking", align 1
@72 = private unnamed_addr constant [9 x i8] c"Recovered", align 1
@"_llgo_struct$Td80-BLvbtmjWV_MtKrt1TE6IBW4brip3KX8E1cxLks$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 9 }, ptr @_llgo_Pointer, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 10 }, ptr @_llgo_any, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 11 }, ptr @_llgo_bool, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 9 }, ptr @_llgo_bool, i64 25, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/complex.struct$mGWIpPCnojFv7vD7U7x32EAY6EK6qWcAlphmn0cNYXY$fields" = weak_odr constant [10 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 10 }, ptr @"_llgo_github.com/goplus/llgo/async.DeferState", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 11 }, ptr @_llgo_int, i64 104, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -712734537, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 31 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 43 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*LoopBreakContinue$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*LoopBreakContinue$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*LoopBreakContinue$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*LoopBreakContinue$State).Poll" }] }, align 8
@73 = private unnamed_addr constant [31 x i8] c"complex.LoopBreakContinue$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 120, i64 104, i32 1831828838, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 31 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$6bcPSYnEJ2eqpnW8ZNCNibBi4mLP1KkZckiqaToYPr0$fields", i64 15, i64 15 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@74 = private unnamed_addr constant [4 x i8] c"var9", align 1
@75 = private unnamed_addr constant [5 x i8] c"var10", align 1
@"github.com/goplus/llgo/cl/_testpull/complex.struct$6bcPSYnEJ2eqpnW8ZNCNibBi4mLP1KkZckiqaToYPr0$fields" = weak_odr constant [15 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 4 }, ptr @_llgo_bool, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @_llgo_int, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_bool, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 4 }, ptr @_llgo_bool, i64 73, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 4 }, ptr @_llgo_int, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 5 }, ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]", i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 104, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 11 }, ptr @_llgo_int, i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1661116055, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 33 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 43 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*LoopWithAccumulator$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*LoopWithAccumulator$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*LoopWithAccumulator$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*LoopWithAccumulator$State).Poll" }] }, align 8
@76 = private unnamed_addr constant [33 x i8] c"complex.LoopWithAccumulator$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 72, i64 56, i32 355462596, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 33 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$VkFWRBwB1JBVPAI58LHbk1BLBO4g_uGoDU0zThnvljE$fields", i64 9, i64 9 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/complex.struct$VkFWRBwB1JBVPAI58LHbk1BLBO4g_uGoDU0zThnvljE$fields" = weak_odr constant [9 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 4 }, ptr @_llgo_bool, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 11 }, ptr @_llgo_int, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1782583083, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 33 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 43 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*MultipleReturnPaths$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*MultipleReturnPaths$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*MultipleReturnPaths$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*MultipleReturnPaths$State).Poll" }] }, align 8
@77 = private unnamed_addr constant [33 x i8] c"complex.MultipleReturnPaths$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 96, i64 80, i32 -1753379399, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 33 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$CXJ83Nu3h9zebD3FPSubjsnxKbMPV-XVP2N0xlx0BL4$fields", i64 12, i64 12 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/complex.struct$CXJ83Nu3h9zebD3FPSubjsnxKbMPV-XVP2N0xlx0BL4$fields" = weak_odr constant [12 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @_llgo_int, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 11 }, ptr @_llgo_int, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1311936890, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 30 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 43 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*NestedConditions$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*NestedConditions$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*NestedConditions$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*NestedConditions$State).Poll" }] }, align 8
@78 = private unnamed_addr constant [30 x i8] c"complex.NestedConditions$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 136, i64 120, i32 1405840390, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 30 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$r0eBlrrFifMc56YEekjU236ylM-dZmVcgSXztG9LOmQ$fields", i64 16, i64 16 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/complex.struct$r0eBlrrFifMc56YEekjU236ylM-dZmVcgSXztG9LOmQ$fields" = weak_odr constant [16 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 4 }, ptr @_llgo_int, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @_llgo_int, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 4 }, ptr @_llgo_int, i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]", i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 104, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 120, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 11 }, ptr @_llgo_int, i64 128, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1711137240, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 35 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 43 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*SwitchWithFallthrough$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*SwitchWithFallthrough$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*SwitchWithFallthrough$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*SwitchWithFallthrough$State).Poll" }] }, align 8
@79 = private unnamed_addr constant [35 x i8] c"complex.SwitchWithFallthrough$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 120, i64 104, i32 184084660, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 35 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$yds4QoHNc6CZhC6kQqmjng8lnKR9tNfoZUb3DTp_DNQ$fields", i64 14, i64 14 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/complex.struct$yds4QoHNc6CZhC6kQqmjng8lnKR9tNfoZUb3DTp_DNQ$fields" = weak_odr constant [14 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 4 }, ptr @_llgo_int, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @_llgo_int, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 104, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 11 }, ptr @_llgo_int, i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 604964660, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 43 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*TwoLoops$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*TwoLoops$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*TwoLoops$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*TwoLoops$State).Poll" }] }, align 8
@80 = private unnamed_addr constant [22 x i8] c"complex.TwoLoops$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 128, i64 112, i32 -1200167787, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$JgIdJ2r-spZ4h4wBXnKBZePLJkIcI_WUYhpy2dMSknA$fields", i64 16, i64 16 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/complex.struct$JgIdJ2r-spZ4h4wBXnKBZePLJkIcI_WUYhpy2dMSknA$fields" = weak_odr constant [16 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 4 }, ptr @_llgo_bool, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @_llgo_int, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 4 }, ptr @_llgo_bool, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 4 }, ptr @_llgo_int, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 5 }, ptr @_llgo_int, i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 104, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 11 }, ptr @_llgo_int, i64 120, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/complex.init$guard" = global i1 false, align 1
@81 = private unnamed_addr constant [45 x i8] c"Await() should be transformed by the compiler", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 6 }, ptr @"*_llgo_string" }, align 8
@82 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 6 }, ptr null }, ptr @_llgo_string }, align 8

define i64 @"github.com/goplus/llgo/cl/_testpull/complex.(*ChainedAwaits$State).Await"(ptr %0) {
_llgo_0:
  ret i64 undef
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/complex.(*ChainedAwaits$State).Poll"(ptr %0, ptr %1) {
ChainedAwaits_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %ChainedAwaits_state_unreach [
    i8 0, label %ChainedAwaits_state_00
    i8 1, label %ChainedAwaits_state_01
    i8 2, label %ChainedAwaits_state_02
    i8 3, label %ChainedAwaits_state_03
    i8 4, label %ChainedAwaits_state_04
    i8 5, label %ChainedAwaits_state_done
  ]

ChainedAwaits_state_00:                           ; preds = %ChainedAwaits_entry
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 4
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 6
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 8
  %13 = load i64, ptr %12, align 4
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 9
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %ChainedAwaits_state_00_init, label %ChainedAwaits_state_00_poll

ChainedAwaits_state_01:                           ; preds = %ChainedAwaits_state_00_ready, %ChainedAwaits_entry
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 1
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 2
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 4
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 6
  %24 = load i64, ptr %23, align 4
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 8
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 10
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %ChainedAwaits_state_01_init, label %ChainedAwaits_state_01_poll

ChainedAwaits_state_02:                           ; preds = %ChainedAwaits_state_01_ready, %ChainedAwaits_entry
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 1
  %31 = load i64, ptr %30, align 4
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 2
  %33 = load i64, ptr %32, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 4
  %35 = load i64, ptr %34, align 4
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 6
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 8
  %39 = load i64, ptr %38, align 4
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 11
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %ChainedAwaits_state_02_init, label %ChainedAwaits_state_02_poll

ChainedAwaits_state_03:                           ; preds = %ChainedAwaits_state_02_ready, %ChainedAwaits_entry
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 1
  %44 = load i64, ptr %43, align 4
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 2
  %46 = load i64, ptr %45, align 4
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 4
  %48 = load i64, ptr %47, align 4
  %49 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 6
  %50 = load i64, ptr %49, align 4
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 8
  %52 = load i64, ptr %51, align 4
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 12
  %54 = load ptr, ptr %53, align 8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %ChainedAwaits_state_03_init, label %ChainedAwaits_state_03_poll

ChainedAwaits_state_04:                           ; preds = %ChainedAwaits_state_03_ready, %ChainedAwaits_entry
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 1
  %57 = load i64, ptr %56, align 4
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 2
  %59 = load i64, ptr %58, align 4
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 4
  %61 = load i64, ptr %60, align 4
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 6
  %63 = load i64, ptr %62, align 4
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 8
  %65 = load i64, ptr %64, align 4
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 8
  %67 = load i64, ptr %66, align 4
  %68 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %65)
  %69 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %70 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %69, 0
  %71 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %70, ptr %68, 1
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 13
  store i64 %67, ptr %72, align 4
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %73, align 1
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 13
  %75 = load i64, ptr %74, align 4
  %76 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %75, 1
  %77 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %76, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %77

ChainedAwaits_state_done:                         ; preds = %ChainedAwaits_entry
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 13
  %79 = load i64, ptr %78, align 4
  %80 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %79, 1
  %81 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %80, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %81

ChainedAwaits_state_unreach:                      ; preds = %ChainedAwaits_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_8:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

ChainedAwaits_state_00_init:                      ; preds = %ChainedAwaits_state_00
  %82 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 1
  %83 = load i64, ptr %82, align 4
  %84 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 2
  %85 = load i64, ptr %84, align 4
  %86 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 4
  %87 = load i64, ptr %86, align 4
  %88 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 6
  %89 = load i64, ptr %88, align 4
  %90 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 8
  %91 = load i64, ptr %90, align 4
  %92 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %83)
  store ptr %92, ptr %14, align 8
  br label %ChainedAwaits_state_00_poll

ChainedAwaits_state_00_poll:                      ; preds = %ChainedAwaits_state_00_init, %ChainedAwaits_state_00
  %93 = load ptr, ptr %14, align 8
  %94 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %93, ptr %1)
  %95 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %94, 0
  br i1 %95, label %ChainedAwaits_state_00_ready, label %ChainedAwaits_state_00_pending

ChainedAwaits_state_00_ready:                     ; preds = %ChainedAwaits_state_00_poll
  %96 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %94, 1
  %97 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 2
  store i64 %96, ptr %97, align 4
  %98 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 3
  %99 = mul i64 %85, 2
  store i64 %99, ptr %98, align 4
  %100 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 4
  store i64 %87, ptr %100, align 4
  %101 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 5
  %102 = add i64 %87, 10
  store i64 %102, ptr %101, align 4
  %103 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 6
  store i64 %89, ptr %103, align 4
  %104 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 7
  %105 = sub i64 %89, 5
  store i64 %105, ptr %104, align 4
  %106 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 8
  store i64 %91, ptr %106, align 4
  store ptr null, ptr %14, align 8
  %107 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %107, align 1
  br label %ChainedAwaits_state_01

ChainedAwaits_state_00_pending:                   ; preds = %ChainedAwaits_state_00_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

ChainedAwaits_state_01_init:                      ; preds = %ChainedAwaits_state_01
  %108 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 1
  %109 = load i64, ptr %108, align 4
  %110 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 2
  %111 = load i64, ptr %110, align 4
  %112 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 4
  %113 = load i64, ptr %112, align 4
  %114 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 6
  %115 = load i64, ptr %114, align 4
  %116 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 8
  %117 = load i64, ptr %116, align 4
  %118 = mul i64 %111, 2
  %119 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 3
  store i64 %118, ptr %119, align 4
  %120 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %118)
  store ptr %120, ptr %27, align 8
  br label %ChainedAwaits_state_01_poll

ChainedAwaits_state_01_poll:                      ; preds = %ChainedAwaits_state_01_init, %ChainedAwaits_state_01
  %121 = load ptr, ptr %27, align 8
  %122 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %121, ptr %1)
  %123 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %122, 0
  br i1 %123, label %ChainedAwaits_state_01_ready, label %ChainedAwaits_state_01_pending

ChainedAwaits_state_01_ready:                     ; preds = %ChainedAwaits_state_01_poll
  %124 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %122, 1
  %125 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 4
  store i64 %124, ptr %125, align 4
  %126 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 2
  store i64 %111, ptr %126, align 4
  %127 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 3
  store i64 %118, ptr %127, align 4
  %128 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 5
  %129 = add i64 %113, 10
  store i64 %129, ptr %128, align 4
  %130 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 6
  store i64 %115, ptr %130, align 4
  %131 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 7
  %132 = sub i64 %115, 5
  store i64 %132, ptr %131, align 4
  %133 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 8
  store i64 %117, ptr %133, align 4
  store ptr null, ptr %27, align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %134, align 1
  br label %ChainedAwaits_state_02

ChainedAwaits_state_01_pending:                   ; preds = %ChainedAwaits_state_01_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

ChainedAwaits_state_02_init:                      ; preds = %ChainedAwaits_state_02
  %135 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 1
  %136 = load i64, ptr %135, align 4
  %137 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 2
  %138 = load i64, ptr %137, align 4
  %139 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 4
  %140 = load i64, ptr %139, align 4
  %141 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 6
  %142 = load i64, ptr %141, align 4
  %143 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 8
  %144 = load i64, ptr %143, align 4
  %145 = add i64 %140, 10
  %146 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 5
  store i64 %145, ptr %146, align 4
  %147 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %145)
  store ptr %147, ptr %40, align 8
  br label %ChainedAwaits_state_02_poll

ChainedAwaits_state_02_poll:                      ; preds = %ChainedAwaits_state_02_init, %ChainedAwaits_state_02
  %148 = load ptr, ptr %40, align 8
  %149 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %148, ptr %1)
  %150 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %149, 0
  br i1 %150, label %ChainedAwaits_state_02_ready, label %ChainedAwaits_state_02_pending

ChainedAwaits_state_02_ready:                     ; preds = %ChainedAwaits_state_02_poll
  %151 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %149, 1
  %152 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 6
  store i64 %151, ptr %152, align 4
  %153 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 2
  store i64 %138, ptr %153, align 4
  %154 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 3
  %155 = mul i64 %138, 2
  store i64 %155, ptr %154, align 4
  %156 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 4
  store i64 %140, ptr %156, align 4
  %157 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 5
  store i64 %145, ptr %157, align 4
  %158 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 7
  %159 = sub i64 %142, 5
  store i64 %159, ptr %158, align 4
  %160 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 8
  store i64 %144, ptr %160, align 4
  store ptr null, ptr %40, align 8
  %161 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %161, align 1
  br label %ChainedAwaits_state_03

ChainedAwaits_state_02_pending:                   ; preds = %ChainedAwaits_state_02_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

ChainedAwaits_state_03_init:                      ; preds = %ChainedAwaits_state_03
  %162 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 1
  %163 = load i64, ptr %162, align 4
  %164 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 2
  %165 = load i64, ptr %164, align 4
  %166 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 4
  %167 = load i64, ptr %166, align 4
  %168 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 6
  %169 = load i64, ptr %168, align 4
  %170 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 8
  %171 = load i64, ptr %170, align 4
  %172 = sub i64 %169, 5
  %173 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 7
  store i64 %172, ptr %173, align 4
  %174 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %172)
  store ptr %174, ptr %53, align 8
  br label %ChainedAwaits_state_03_poll

ChainedAwaits_state_03_poll:                      ; preds = %ChainedAwaits_state_03_init, %ChainedAwaits_state_03
  %175 = load ptr, ptr %53, align 8
  %176 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %175, ptr %1)
  %177 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %176, 0
  br i1 %177, label %ChainedAwaits_state_03_ready, label %ChainedAwaits_state_03_pending

ChainedAwaits_state_03_ready:                     ; preds = %ChainedAwaits_state_03_poll
  %178 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %176, 1
  %179 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 8
  store i64 %178, ptr %179, align 4
  %180 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 2
  store i64 %165, ptr %180, align 4
  %181 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 3
  %182 = mul i64 %165, 2
  store i64 %182, ptr %181, align 4
  %183 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 4
  store i64 %167, ptr %183, align 4
  %184 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 5
  %185 = add i64 %167, 10
  store i64 %185, ptr %184, align 4
  %186 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 6
  store i64 %169, ptr %186, align 4
  %187 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 7
  store i64 %172, ptr %187, align 4
  store ptr null, ptr %53, align 8
  %188 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %188, align 1
  br label %ChainedAwaits_state_04

ChainedAwaits_state_03_pending:                   ; preds = %ChainedAwaits_state_03_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step$1", ptr undef }, ptr %2, 1
  %5 = call ptr @"github.com/goplus/llgo/async.Async[int]"({ ptr, ptr } %4)
  ret ptr %5
}

define void @"github.com/goplus/llgo/cl/_testpull/complex.Step$1"(ptr %0, { ptr, ptr } %1) {
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

define ptr @"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 112)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %1, i32 0, i32 3
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %1, i32 0, i32 4
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %1, i32 0, i32 5
  store i64 0, ptr %7, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %1, i32 0, i32 6
  store i64 0, ptr %8, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %1, i32 0, i32 7
  store i64 0, ptr %9, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %1, i32 0, i32 8
  store i64 0, ptr %10, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %1, i32 0, i32 9
  store ptr null, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %1, i32 0, i32 10
  store ptr null, ptr %12, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %1, i32 0, i32 11
  store ptr null, ptr %13, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %1, i32 0, i32 12
  store ptr null, ptr %14, align 8
  ret ptr %1
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
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

define i64 @"github.com/goplus/llgo/cl/_testpull/complex.(*ClosureCapture$State).Await"(ptr %0) {
_llgo_0:
  ret i64 undef
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/complex.(*ClosureCapture$State).Poll"(ptr %0, ptr %1) {
ClosureCapture_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %ClosureCapture_state_unreach [
    i8 0, label %ClosureCapture_state_00
    i8 1, label %ClosureCapture_state_01
    i8 2, label %ClosureCapture_state_02
    i8 3, label %ClosureCapture_state_done
  ]

ClosureCapture_state_00:                          ; preds = %ClosureCapture_entry
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 4
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %ClosureCapture_state_00_init, label %ClosureCapture_state_00_poll

ClosureCapture_state_01:                          ; preds = %ClosureCapture_state_00_ready, %ClosureCapture_entry
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 1
  %14 = load i64, ptr %13, align 4
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 2
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 4
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 6
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %ClosureCapture_state_01_init, label %ClosureCapture_state_01_poll

ClosureCapture_state_02:                          ; preds = %ClosureCapture_state_01_ready, %ClosureCapture_entry
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 1
  %23 = load i64, ptr %22, align 4
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 2
  %25 = load i64, ptr %24, align 4
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 4
  %27 = load i64, ptr %26, align 4
  %28 = mul i64 %27, 3
  %29 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %28)
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %30, 0
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %31, ptr %29, 1
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 7
  store i64 %28, ptr %33, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %34, align 1
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 7
  %36 = load i64, ptr %35, align 4
  %37 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %36, 1
  %38 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %37, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %38

ClosureCapture_state_done:                        ; preds = %ClosureCapture_entry
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 7
  %40 = load i64, ptr %39, align 4
  %41 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %40, 1
  %42 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %41, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %42

ClosureCapture_state_unreach:                     ; preds = %ClosureCapture_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_6:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

ClosureCapture_state_00_init:                     ; preds = %ClosureCapture_state_00
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 1
  %44 = load i64, ptr %43, align 4
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 2
  %46 = load i64, ptr %45, align 4
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 4
  %48 = load i64, ptr %47, align 4
  %49 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %44)
  store ptr %49, ptr %10, align 8
  br label %ClosureCapture_state_00_poll

ClosureCapture_state_00_poll:                     ; preds = %ClosureCapture_state_00_init, %ClosureCapture_state_00
  %50 = load ptr, ptr %10, align 8
  %51 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %50, ptr %1)
  %52 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %51, 0
  br i1 %52, label %ClosureCapture_state_00_ready, label %ClosureCapture_state_00_pending

ClosureCapture_state_00_ready:                    ; preds = %ClosureCapture_state_00_poll
  %53 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %51, 1
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 2
  store i64 %53, ptr %54, align 4
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 3
  %56 = mul i64 %46, 2
  store i64 %56, ptr %55, align 4
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 4
  store i64 %48, ptr %57, align 4
  store ptr null, ptr %10, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %58, align 1
  br label %ClosureCapture_state_01

ClosureCapture_state_00_pending:                  ; preds = %ClosureCapture_state_00_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

ClosureCapture_state_01_init:                     ; preds = %ClosureCapture_state_01
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 1
  %60 = load i64, ptr %59, align 4
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 2
  %62 = load i64, ptr %61, align 4
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 4
  %64 = load i64, ptr %63, align 4
  %65 = mul i64 %62, 2
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 3
  store i64 %65, ptr %66, align 4
  %67 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %65)
  store ptr %67, ptr %19, align 8
  br label %ClosureCapture_state_01_poll

ClosureCapture_state_01_poll:                     ; preds = %ClosureCapture_state_01_init, %ClosureCapture_state_01
  %68 = load ptr, ptr %19, align 8
  %69 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %68, ptr %1)
  %70 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %69, 0
  br i1 %70, label %ClosureCapture_state_01_ready, label %ClosureCapture_state_01_pending

ClosureCapture_state_01_ready:                    ; preds = %ClosureCapture_state_01_poll
  %71 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %69, 1
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 4
  store i64 %71, ptr %72, align 4
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 2
  store i64 %62, ptr %73, align 4
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 3
  store i64 %65, ptr %74, align 4
  store ptr null, ptr %19, align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %75, align 1
  br label %ClosureCapture_state_02

ClosureCapture_state_01_pending:                  ; preds = %ClosureCapture_state_01_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 64)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %1, i32 0, i32 3
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %1, i32 0, i32 4
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %1, i32 0, i32 5
  store ptr null, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %1, i32 0, i32 6
  store ptr null, ptr %8, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define i64 @"github.com/goplus/llgo/cl/_testpull/complex.(*ConditionalChain$State).Await"(ptr %0) {
_llgo_0:
  ret i64 undef
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/complex.(*ConditionalChain$State).Poll"(ptr %0, ptr %1) {
ConditionalChain_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %ConditionalChain_state_unreach [
    i8 0, label %ConditionalChain_state_00
    i8 1, label %ConditionalChain_state_01
    i8 2, label %ConditionalChain_state_02
    i8 3, label %ConditionalChain_state_03
    i8 4, label %ConditionalChain_state_04
    i8 5, label %ConditionalChain_state_05
    i8 6, label %ConditionalChain_state_06
    i8 7, label %ConditionalChain_state_done
  ]

ConditionalChain_state_00:                        ; preds = %ConditionalChain_entry
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 2
  %7 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %6, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 3
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 4
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 5
  %13 = load i64, ptr %12, align 4
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 6
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 7
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 8
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 9
  %21 = load i64, ptr %20, align 4
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 10
  %23 = load ptr, ptr %22, align 8
  %24 = icmp sgt i64 %5, 0
  br i1 %24, label %ConditionalChain_state_00_true, label %ConditionalChain_state_00_false

ConditionalChain_state_01:                        ; preds = %ConditionalChain_state_00_true, %ConditionalChain_entry
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 1
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 2
  %28 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %27, align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 3
  %30 = load i64, ptr %29, align 4
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 4
  %32 = load i64, ptr %31, align 4
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 6
  %34 = load i64, ptr %33, align 4
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 7
  %36 = load i64, ptr %35, align 4
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 8
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 9
  %40 = load i64, ptr %39, align 4
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 10
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 11
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %ConditionalChain_state_01_init, label %ConditionalChain_state_01_poll

ConditionalChain_state_02:                        ; preds = %ConditionalChain_state_01_ready, %ConditionalChain_entry
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 1
  %47 = load i64, ptr %46, align 4
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 2
  %49 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %48, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 3
  %51 = load i64, ptr %50, align 4
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 4
  %53 = load i64, ptr %52, align 4
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 6
  %55 = load i64, ptr %54, align 4
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 7
  %57 = load i64, ptr %56, align 4
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 8
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 9
  %61 = load i64, ptr %60, align 4
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 10
  %63 = load ptr, ptr %62, align 8
  %64 = mul i64 %53, 2
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 5
  store i64 %64, ptr %65, align 4
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 5
  %67 = load i64, ptr %66, align 4
  %68 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 3
  store i64 %67, ptr %68, align 4
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 4
  store i64 %53, ptr %69, align 4
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 5
  store i64 %64, ptr %70, align 4
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %71, align 1
  br label %ConditionalChain_state_03

ConditionalChain_state_03:                        ; preds = %ConditionalChain_state_06, %ConditionalChain_state_02, %ConditionalChain_entry
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 1
  %73 = load i64, ptr %72, align 4
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 3
  %75 = load i64, ptr %74, align 4
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 4
  %77 = load i64, ptr %76, align 4
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 5
  %79 = load i64, ptr %78, align 4
  %80 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 6
  %81 = load i64, ptr %80, align 4
  %82 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 7
  %83 = load i64, ptr %82, align 4
  %84 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 9
  %85 = load i64, ptr %84, align 4
  %86 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 12
  %87 = load ptr, ptr %86, align 8
  %88 = icmp eq ptr %87, null
  br i1 %88, label %ConditionalChain_state_03_init, label %ConditionalChain_state_03_poll

ConditionalChain_state_04:                        ; preds = %ConditionalChain_state_03_ready, %ConditionalChain_entry
  %89 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 1
  %90 = load i64, ptr %89, align 4
  %91 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 3
  %92 = load i64, ptr %91, align 4
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 4
  %94 = load i64, ptr %93, align 4
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 5
  %96 = load i64, ptr %95, align 4
  %97 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 6
  %98 = load i64, ptr %97, align 4
  %99 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 7
  %100 = load i64, ptr %99, align 4
  %101 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 9
  %102 = load i64, ptr %101, align 4
  %103 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 9
  %104 = load i64, ptr %103, align 4
  %105 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %102)
  %106 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %107 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %106, 0
  %108 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %107, ptr %105, 1
  %109 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %108, ptr %109, align 8
  %110 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 14
  store i64 %104, ptr %110, align 4
  %111 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %111, align 1
  %112 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 14
  %113 = load i64, ptr %112, align 4
  %114 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %113, 1
  %115 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %114, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %115

ConditionalChain_state_05:                        ; preds = %ConditionalChain_state_00_false, %ConditionalChain_entry
  %116 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 1
  %117 = load i64, ptr %116, align 4
  %118 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 2
  %119 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %118, align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 3
  %121 = load i64, ptr %120, align 4
  %122 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 4
  %123 = load i64, ptr %122, align 4
  %124 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 5
  %125 = load i64, ptr %124, align 4
  %126 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 7
  %127 = load i64, ptr %126, align 4
  %128 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 8
  %129 = load ptr, ptr %128, align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 9
  %131 = load i64, ptr %130, align 4
  %132 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 10
  %133 = load ptr, ptr %132, align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 13
  %135 = load ptr, ptr %134, align 8
  %136 = icmp eq ptr %135, null
  br i1 %136, label %ConditionalChain_state_05_init, label %ConditionalChain_state_05_poll

ConditionalChain_state_06:                        ; preds = %ConditionalChain_state_05_ready, %ConditionalChain_entry
  %137 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 1
  %138 = load i64, ptr %137, align 4
  %139 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 2
  %140 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %139, align 8
  %141 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 3
  %142 = load i64, ptr %141, align 4
  %143 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 4
  %144 = load i64, ptr %143, align 4
  %145 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 5
  %146 = load i64, ptr %145, align 4
  %147 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 7
  %148 = load i64, ptr %147, align 4
  %149 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 8
  %150 = load ptr, ptr %149, align 8
  %151 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 9
  %152 = load i64, ptr %151, align 4
  %153 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 10
  %154 = load ptr, ptr %153, align 8
  %155 = add i64 %148, 100
  %156 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 3
  store i64 %155, ptr %156, align 4
  %157 = sub i64 0, %138
  %158 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 6
  store i64 %157, ptr %158, align 4
  %159 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 7
  store i64 %148, ptr %159, align 4
  %160 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %160, align 1
  br label %ConditionalChain_state_03

ConditionalChain_state_done:                      ; preds = %ConditionalChain_entry
  %161 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 14
  %162 = load i64, ptr %161, align 4
  %163 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %162, 1
  %164 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %163, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %164

ConditionalChain_state_unreach:                   ; preds = %ConditionalChain_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_10:                                         ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

ConditionalChain_state_00_true:                   ; preds = %ConditionalChain_state_00
  %165 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %165, align 1
  br label %ConditionalChain_state_01

ConditionalChain_state_00_false:                  ; preds = %ConditionalChain_state_00
  %166 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %166, align 1
  br label %ConditionalChain_state_05

ConditionalChain_state_01_init:                   ; preds = %ConditionalChain_state_01
  %167 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 1
  %168 = load i64, ptr %167, align 4
  %169 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 2
  %170 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %169, align 8
  %171 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 3
  %172 = load i64, ptr %171, align 4
  %173 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 4
  %174 = load i64, ptr %173, align 4
  %175 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 6
  %176 = load i64, ptr %175, align 4
  %177 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 7
  %178 = load i64, ptr %177, align 4
  %179 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 8
  %180 = load ptr, ptr %179, align 8
  %181 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 9
  %182 = load i64, ptr %181, align 4
  %183 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 10
  %184 = load ptr, ptr %183, align 8
  %185 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %168)
  store ptr %185, ptr %43, align 8
  br label %ConditionalChain_state_01_poll

ConditionalChain_state_01_poll:                   ; preds = %ConditionalChain_state_01_init, %ConditionalChain_state_01
  %186 = load ptr, ptr %43, align 8
  %187 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %186, ptr %1)
  %188 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %187, 0
  br i1 %188, label %ConditionalChain_state_01_ready, label %ConditionalChain_state_01_pending

ConditionalChain_state_01_ready:                  ; preds = %ConditionalChain_state_01_poll
  %189 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %187, 1
  %190 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 4
  store i64 %189, ptr %190, align 4
  %191 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %170, ptr %191, align 8
  %192 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 3
  store i64 %172, ptr %192, align 4
  %193 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 5
  %194 = mul i64 %174, 2
  store i64 %194, ptr %193, align 4
  %195 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 6
  store i64 %176, ptr %195, align 4
  %196 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 7
  store i64 %178, ptr %196, align 4
  %197 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 8
  store ptr %180, ptr %197, align 8
  %198 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 9
  store i64 %182, ptr %198, align 4
  %199 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 10
  store ptr %184, ptr %199, align 8
  store ptr null, ptr %43, align 8
  %200 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %200, align 1
  br label %ConditionalChain_state_02

ConditionalChain_state_01_pending:                ; preds = %ConditionalChain_state_01_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

ConditionalChain_state_03_init:                   ; preds = %ConditionalChain_state_03
  %201 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 1
  %202 = load i64, ptr %201, align 4
  %203 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 3
  %204 = load i64, ptr %203, align 4
  %205 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 4
  %206 = load i64, ptr %205, align 4
  %207 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 5
  %208 = load i64, ptr %207, align 4
  %209 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 6
  %210 = load i64, ptr %209, align 4
  %211 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 7
  %212 = load i64, ptr %211, align 4
  %213 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 9
  %214 = load i64, ptr %213, align 4
  %215 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %204)
  %216 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 8
  store ptr %215, ptr %216, align 8
  store ptr %215, ptr %86, align 8
  br label %ConditionalChain_state_03_poll

ConditionalChain_state_03_poll:                   ; preds = %ConditionalChain_state_03_init, %ConditionalChain_state_03
  %217 = load ptr, ptr %86, align 8
  %218 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %217, ptr %1)
  %219 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %218, 0
  br i1 %219, label %ConditionalChain_state_03_ready, label %ConditionalChain_state_03_pending

ConditionalChain_state_03_ready:                  ; preds = %ConditionalChain_state_03_poll
  %220 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %218, 1
  %221 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 9
  store i64 %220, ptr %221, align 4
  %222 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 2
  %223 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %214)
  %224 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %225 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %224, 0
  %226 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %225, ptr %223, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %226, ptr %222, align 8
  %227 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 3
  store i64 %204, ptr %227, align 4
  %228 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 4
  store i64 %206, ptr %228, align 4
  %229 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 5
  store i64 %208, ptr %229, align 4
  %230 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 6
  store i64 %210, ptr %230, align 4
  %231 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 7
  store i64 %212, ptr %231, align 4
  %232 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 8
  store ptr %215, ptr %232, align 8
  %233 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 10
  store ptr %223, ptr %233, align 8
  store ptr null, ptr %86, align 8
  %234 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %234, align 1
  br label %ConditionalChain_state_04

ConditionalChain_state_03_pending:                ; preds = %ConditionalChain_state_03_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

ConditionalChain_state_05_init:                   ; preds = %ConditionalChain_state_05
  %235 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 1
  %236 = load i64, ptr %235, align 4
  %237 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 2
  %238 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %237, align 8
  %239 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 3
  %240 = load i64, ptr %239, align 4
  %241 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 4
  %242 = load i64, ptr %241, align 4
  %243 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 5
  %244 = load i64, ptr %243, align 4
  %245 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 7
  %246 = load i64, ptr %245, align 4
  %247 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 8
  %248 = load ptr, ptr %247, align 8
  %249 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 9
  %250 = load i64, ptr %249, align 4
  %251 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 10
  %252 = load ptr, ptr %251, align 8
  %253 = sub i64 0, %236
  %254 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 6
  store i64 %253, ptr %254, align 4
  %255 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %253)
  store ptr %255, ptr %134, align 8
  br label %ConditionalChain_state_05_poll

ConditionalChain_state_05_poll:                   ; preds = %ConditionalChain_state_05_init, %ConditionalChain_state_05
  %256 = load ptr, ptr %134, align 8
  %257 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %256, ptr %1)
  %258 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %257, 0
  br i1 %258, label %ConditionalChain_state_05_ready, label %ConditionalChain_state_05_pending

ConditionalChain_state_05_ready:                  ; preds = %ConditionalChain_state_05_poll
  %259 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %257, 1
  %260 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 7
  store i64 %259, ptr %260, align 4
  %261 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %238, ptr %261, align 8
  %262 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 3
  store i64 %240, ptr %262, align 4
  %263 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 4
  store i64 %242, ptr %263, align 4
  %264 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 5
  store i64 %244, ptr %264, align 4
  %265 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 6
  store i64 %253, ptr %265, align 4
  %266 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 8
  store ptr %248, ptr %266, align 8
  %267 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 9
  store i64 %250, ptr %267, align 4
  %268 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 10
  store ptr %252, ptr %268, align 8
  store ptr null, ptr %134, align 8
  %269 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %269, align 1
  br label %ConditionalChain_state_06

ConditionalChain_state_05_pending:                ; preds = %ConditionalChain_state_05_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 128)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %1, i32 0, i32 2
  store { ptr, ptr } zeroinitializer, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %1, i32 0, i32 3
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %1, i32 0, i32 4
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %1, i32 0, i32 5
  store i64 0, ptr %7, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %1, i32 0, i32 6
  store i64 0, ptr %8, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %1, i32 0, i32 7
  store i64 0, ptr %9, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %1, i32 0, i32 8
  store ptr null, ptr %10, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %1, i32 0, i32 9
  store i64 0, ptr %11, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %1, i32 0, i32 10
  store ptr null, ptr %12, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %1, i32 0, i32 11
  store ptr null, ptr %13, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %1, i32 0, i32 12
  store ptr null, ptr %14, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %1, i32 0, i32 13
  store ptr null, ptr %15, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define i64 @"github.com/goplus/llgo/cl/_testpull/complex.(*DeferWithAwait$State).Await"(ptr %0) {
_llgo_0:
  ret i64 undef
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/complex.(*DeferWithAwait$State).Poll"(ptr %0, ptr %1) {
DeferWithAwait_entry:
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 0
  %4 = load i8, ptr %3, align 1
  switch i8 %4, label %DeferWithAwait_state_unreach [
    i8 0, label %DeferWithAwait_state_00
    i8 1, label %DeferWithAwait_state_01
    i8 2, label %DeferWithAwait_state_02
    i8 3, label %DeferWithAwait_state_03
    i8 4, label %DeferWithAwait_state_done
  ]

DeferWithAwait_state_00:                          ; preds = %DeferWithAwait_entry
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 2
  %6 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %5, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, ptr %2, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 1
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 3
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 5
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %DeferWithAwait_state_00_init, label %DeferWithAwait_state_00_poll

DeferWithAwait_state_01:                          ; preds = %DeferWithAwait_state_00_ready, %DeferWithAwait_entry
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 2
  %17 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %16, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %17, ptr %2, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 1
  %19 = load i64, ptr %18, align 4
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 3
  %21 = load i64, ptr %20, align 4
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 5
  %23 = load i64, ptr %22, align 4
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 7
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %DeferWithAwait_state_01_init, label %DeferWithAwait_state_01_poll

DeferWithAwait_state_02:                          ; preds = %DeferWithAwait_state_01_ready, %DeferWithAwait_entry
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 2
  %28 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %27, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %28, ptr %2, align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 1
  %30 = load i64, ptr %29, align 4
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 3
  %32 = load i64, ptr %31, align 4
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 5
  %34 = load i64, ptr %33, align 4
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 5
  %36 = load i64, ptr %35, align 4
  %37 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %34)
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %38, 0
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %39, ptr %37, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %40, ptr %2, align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 8
  call void @"github.com/goplus/llgo/async.(*DeferState).RunDefers"(ptr %41)
  %42 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 9
  store i64 %36, ptr %43, align 4
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 2
  %45 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %45, ptr %44, align 8
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %46, align 1
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 9
  %48 = load i64, ptr %47, align 4
  %49 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %48, 1
  %50 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %49, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %50

DeferWithAwait_state_03:                          ; preds = %DeferWithAwait_entry
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 2
  %52 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %51, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %52, ptr %2, align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 1
  %54 = load i64, ptr %53, align 4
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 3
  %56 = load i64, ptr %55, align 4
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 4
  %58 = load i64, ptr %57, align 4
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 5
  %60 = load i64, ptr %59, align 4
  %61 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 2
  %63 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %63, ptr %62, align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %64, align 1
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 9
  %66 = load i64, ptr %65, align 4
  %67 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %66, 1
  %68 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %67, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %68

DeferWithAwait_state_done:                        ; preds = %DeferWithAwait_entry
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 9
  %70 = load i64, ptr %69, align 4
  %71 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %70, 1
  %72 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %71, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %72

DeferWithAwait_state_unreach:                     ; preds = %DeferWithAwait_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_7:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

DeferWithAwait_state_00_init:                     ; preds = %DeferWithAwait_state_00
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 1
  %74 = load i64, ptr %73, align 4
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 2
  %76 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %75, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %76, ptr %2, align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 3
  %78 = load i64, ptr %77, align 4
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 5
  %80 = load i64, ptr %79, align 4
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 8
  %82 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %83 = getelementptr inbounds { { ptr, ptr } }, ptr %82, i32 0, i32 0
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$1", ptr null }, ptr %83, align 8
  call void @"github.com/goplus/llgo/async.(*DeferState).PushDefer"(ptr %81, { ptr, ptr } { ptr @"__llgo_stub.__llgo_defer_wrap$github_com_goplus_llgo_cl__testpull_complex_DeferWithAwait$1", ptr null }, ptr %82)
  %84 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %74)
  store ptr %84, ptr %13, align 8
  br label %DeferWithAwait_state_00_poll

DeferWithAwait_state_00_poll:                     ; preds = %DeferWithAwait_state_00_init, %DeferWithAwait_state_00
  %85 = load ptr, ptr %13, align 8
  %86 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %85, ptr %1)
  %87 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %86, 0
  br i1 %87, label %DeferWithAwait_state_00_ready, label %DeferWithAwait_state_00_pending

DeferWithAwait_state_00_ready:                    ; preds = %DeferWithAwait_state_00_poll
  %88 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %86, 1
  %89 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 3
  store i64 %88, ptr %89, align 4
  %90 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 4
  %91 = add i64 %78, 10
  store i64 %91, ptr %90, align 4
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 5
  store i64 %80, ptr %92, align 4
  store ptr null, ptr %13, align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 2
  %94 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %94, ptr %93, align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %95, align 1
  br label %DeferWithAwait_state_01

DeferWithAwait_state_00_pending:                  ; preds = %DeferWithAwait_state_00_poll
  %96 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 2
  %97 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %97, ptr %96, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

DeferWithAwait_state_01_init:                     ; preds = %DeferWithAwait_state_01
  %98 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 1
  %99 = load i64, ptr %98, align 4
  %100 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 2
  %101 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %100, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %101, ptr %2, align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 3
  %103 = load i64, ptr %102, align 4
  %104 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 5
  %105 = load i64, ptr %104, align 4
  %106 = add i64 %103, 10
  %107 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 4
  store i64 %106, ptr %107, align 4
  %108 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %106)
  store ptr %108, ptr %24, align 8
  br label %DeferWithAwait_state_01_poll

DeferWithAwait_state_01_poll:                     ; preds = %DeferWithAwait_state_01_init, %DeferWithAwait_state_01
  %109 = load ptr, ptr %24, align 8
  %110 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %109, ptr %1)
  %111 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %110, 0
  br i1 %111, label %DeferWithAwait_state_01_ready, label %DeferWithAwait_state_01_pending

DeferWithAwait_state_01_ready:                    ; preds = %DeferWithAwait_state_01_poll
  %112 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %110, 1
  %113 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 5
  store i64 %112, ptr %113, align 4
  %114 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 3
  store i64 %103, ptr %114, align 4
  %115 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 4
  store i64 %106, ptr %115, align 4
  store ptr null, ptr %24, align 8
  %116 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 2
  %117 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %117, ptr %116, align 8
  %118 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %118, align 1
  br label %DeferWithAwait_state_02

DeferWithAwait_state_01_pending:                  ; preds = %DeferWithAwait_state_01_poll
  %119 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 2
  %120 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %120, ptr %119, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

define void @"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$1"() {
_llgo_0:
  ret void
}

define void @"__llgo_defer_wrap$github_com_goplus_llgo_cl__testpull_complex_DeferWithAwait$1"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds { { ptr, ptr } }, ptr %0, i32 0, i32 0
  %2 = load { ptr, ptr }, ptr %1, align 8
  %3 = extractvalue { ptr, ptr } %2, 1
  %4 = extractvalue { ptr, ptr } %2, 0
  call void %4(ptr %3)
  ret void
}

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$1"(ptr %0) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$1"()
  ret void
}

declare void @"github.com/goplus/llgo/async.(*DeferState).PushDefer"(ptr, { ptr, ptr }, ptr)

define linkonce void @"__llgo_stub.__llgo_defer_wrap$github_com_goplus_llgo_cl__testpull_complex_DeferWithAwait$1"(ptr %0, ptr %1) {
_llgo_0:
  tail call void @"__llgo_defer_wrap$github_com_goplus_llgo_cl__testpull_complex_DeferWithAwait$1"(ptr %1)
  ret void
}

declare void @"github.com/goplus/llgo/async.(*DeferState).RunDefers"(ptr)

define ptr @"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 112)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %1, i32 0, i32 2
  store { ptr, ptr } zeroinitializer, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %1, i32 0, i32 3
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %1, i32 0, i32 4
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %1, i32 0, i32 5
  store i64 0, ptr %7, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %1, i32 0, i32 6
  store ptr null, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %1, i32 0, i32 7
  store ptr null, ptr %9, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

declare i1 @"github.com/goplus/llgo/async.(*DeferState).DoPanic"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/async.(*DeferState).DoRecover"(ptr)

define i64 @"github.com/goplus/llgo/cl/_testpull/complex.(*LoopBreakContinue$State).Await"(ptr %0) {
_llgo_0:
  ret i64 undef
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/complex.(*LoopBreakContinue$State).Poll"(ptr %0, ptr %1) {
LoopBreakContinue_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %LoopBreakContinue_state_unreach [
    i8 0, label %LoopBreakContinue_state_00
    i8 1, label %LoopBreakContinue_state_01
    i8 2, label %LoopBreakContinue_state_02
    i8 3, label %LoopBreakContinue_state_03
    i8 4, label %LoopBreakContinue_state_04
    i8 5, label %LoopBreakContinue_state_05
    i8 6, label %LoopBreakContinue_state_06
    i8 7, label %LoopBreakContinue_state_07
    i8 8, label %LoopBreakContinue_state_done
  ]

LoopBreakContinue_state_00:                       ; preds = %LoopBreakContinue_entry
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 2
  %7 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %6, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 3
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 4
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 5
  %13 = load i64, ptr %12, align 4
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 6
  %15 = load i1, ptr %14, align 1
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 7
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 8
  %19 = load i1, ptr %18, align 1
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 9
  %21 = load i1, ptr %20, align 1
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 10
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 11
  %25 = load i64, ptr %24, align 4
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 12
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 3
  store i64 0, ptr %28, align 4
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 5
  store i64 0, ptr %29, align 4
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %30, align 1
  br label %LoopBreakContinue_state_01

LoopBreakContinue_state_01:                       ; preds = %LoopBreakContinue_state_03, %LoopBreakContinue_state_00, %LoopBreakContinue_entry
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 1
  %32 = load i64, ptr %31, align 4
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 2
  %34 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %33, align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 3
  %36 = load i64, ptr %35, align 4
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 4
  %38 = load i64, ptr %37, align 4
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 5
  %40 = load i64, ptr %39, align 4
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 7
  %42 = load i64, ptr %41, align 4
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 8
  %44 = load i1, ptr %43, align 1
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 9
  %46 = load i1, ptr %45, align 1
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 10
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 11
  %50 = load i64, ptr %49, align 4
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 12
  %52 = load ptr, ptr %51, align 8
  %53 = icmp slt i64 %40, %32
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 6
  store i1 %53, ptr %54, align 1
  br i1 %53, label %LoopBreakContinue_state_01_true, label %LoopBreakContinue_state_01_false

LoopBreakContinue_state_02:                       ; preds = %LoopBreakContinue_state_01_true, %LoopBreakContinue_entry
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 1
  %56 = load i64, ptr %55, align 4
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 2
  %58 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %57, align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 3
  %60 = load i64, ptr %59, align 4
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 4
  %62 = load i64, ptr %61, align 4
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 5
  %64 = load i64, ptr %63, align 4
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 6
  %66 = load i1, ptr %65, align 1
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 7
  %68 = load i64, ptr %67, align 4
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 9
  %70 = load i1, ptr %69, align 1
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 10
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 11
  %74 = load i64, ptr %73, align 4
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 12
  %76 = load ptr, ptr %75, align 8
  %77 = icmp eq i64 %64, 3
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 8
  store i1 %77, ptr %78, align 1
  br i1 %77, label %LoopBreakContinue_state_02_true, label %LoopBreakContinue_state_02_false

LoopBreakContinue_state_03:                       ; preds = %LoopBreakContinue_state_07, %LoopBreakContinue_state_02_true, %LoopBreakContinue_entry
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 1
  %80 = load i64, ptr %79, align 4
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 2
  %82 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %81, align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 3
  %84 = load i64, ptr %83, align 4
  %85 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 4
  %86 = load i64, ptr %85, align 4
  %87 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 5
  %88 = load i64, ptr %87, align 4
  %89 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 6
  %90 = load i1, ptr %89, align 1
  %91 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 8
  %92 = load i1, ptr %91, align 1
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 9
  %94 = load i1, ptr %93, align 1
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 10
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 11
  %98 = load i64, ptr %97, align 4
  %99 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 12
  %100 = load ptr, ptr %99, align 8
  %101 = add i64 %88, 1
  %102 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 7
  store i64 %101, ptr %102, align 4
  %103 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 4
  %104 = load i64, ptr %103, align 4
  %105 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 3
  store i64 %104, ptr %105, align 4
  %106 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 7
  %107 = load i64, ptr %106, align 4
  %108 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 5
  store i64 %107, ptr %108, align 4
  %109 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 7
  store i64 %101, ptr %109, align 4
  %110 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %110, align 1
  br label %LoopBreakContinue_state_01

LoopBreakContinue_state_04:                       ; preds = %LoopBreakContinue_state_05_true, %LoopBreakContinue_state_01_false, %LoopBreakContinue_entry
  %111 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 1
  %112 = load i64, ptr %111, align 4
  %113 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 3
  %114 = load i64, ptr %113, align 4
  %115 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 4
  %116 = load i64, ptr %115, align 4
  %117 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 5
  %118 = load i64, ptr %117, align 4
  %119 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 6
  %120 = load i1, ptr %119, align 1
  %121 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 7
  %122 = load i64, ptr %121, align 4
  %123 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 8
  %124 = load i1, ptr %123, align 1
  %125 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 9
  %126 = load i1, ptr %125, align 1
  %127 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 10
  %128 = load ptr, ptr %127, align 8
  %129 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 11
  %130 = load i64, ptr %129, align 4
  %131 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 3
  %132 = load i64, ptr %131, align 4
  %133 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %114)
  %134 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %135 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %134, 0
  %136 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %135, ptr %133, 1
  %137 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %136, ptr %137, align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 14
  store i64 %132, ptr %138, align 4
  %139 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 0
  store i8 8, ptr %139, align 1
  %140 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 14
  %141 = load i64, ptr %140, align 4
  %142 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %141, 1
  %143 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %142, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %143

LoopBreakContinue_state_05:                       ; preds = %LoopBreakContinue_state_02_false, %LoopBreakContinue_entry
  %144 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 1
  %145 = load i64, ptr %144, align 4
  %146 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 2
  %147 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %146, align 8
  %148 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 3
  %149 = load i64, ptr %148, align 4
  %150 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 4
  %151 = load i64, ptr %150, align 4
  %152 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 5
  %153 = load i64, ptr %152, align 4
  %154 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 6
  %155 = load i1, ptr %154, align 1
  %156 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 7
  %157 = load i64, ptr %156, align 4
  %158 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 8
  %159 = load i1, ptr %158, align 1
  %160 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 10
  %161 = load ptr, ptr %160, align 8
  %162 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 11
  %163 = load i64, ptr %162, align 4
  %164 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 12
  %165 = load ptr, ptr %164, align 8
  %166 = icmp eq i64 %153, 7
  %167 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 9
  store i1 %166, ptr %167, align 1
  br i1 %166, label %LoopBreakContinue_state_05_true, label %LoopBreakContinue_state_05_false

LoopBreakContinue_state_06:                       ; preds = %LoopBreakContinue_state_05_false, %LoopBreakContinue_entry
  %168 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 1
  %169 = load i64, ptr %168, align 4
  %170 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 2
  %171 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %170, align 8
  %172 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 3
  %173 = load i64, ptr %172, align 4
  %174 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 4
  %175 = load i64, ptr %174, align 4
  %176 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 5
  %177 = load i64, ptr %176, align 4
  %178 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 6
  %179 = load i1, ptr %178, align 1
  %180 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 7
  %181 = load i64, ptr %180, align 4
  %182 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 8
  %183 = load i1, ptr %182, align 1
  %184 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 9
  %185 = load i1, ptr %184, align 1
  %186 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 11
  %187 = load i64, ptr %186, align 4
  %188 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 12
  %189 = load ptr, ptr %188, align 8
  %190 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 13
  %191 = load ptr, ptr %190, align 8
  %192 = icmp eq ptr %191, null
  br i1 %192, label %LoopBreakContinue_state_06_init, label %LoopBreakContinue_state_06_poll

LoopBreakContinue_state_07:                       ; preds = %LoopBreakContinue_state_06_ready, %LoopBreakContinue_entry
  %193 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 1
  %194 = load i64, ptr %193, align 4
  %195 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 2
  %196 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %195, align 8
  %197 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 3
  %198 = load i64, ptr %197, align 4
  %199 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 4
  %200 = load i64, ptr %199, align 4
  %201 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 5
  %202 = load i64, ptr %201, align 4
  %203 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 6
  %204 = load i1, ptr %203, align 1
  %205 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 7
  %206 = load i64, ptr %205, align 4
  %207 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 8
  %208 = load i1, ptr %207, align 1
  %209 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 9
  %210 = load i1, ptr %209, align 1
  %211 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 11
  %212 = load i64, ptr %211, align 4
  %213 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 12
  %214 = load ptr, ptr %213, align 8
  %215 = add i64 %198, %212
  %216 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 4
  store i64 %215, ptr %216, align 4
  %217 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %202)
  %218 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 10
  store ptr %217, ptr %218, align 8
  %219 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 11
  store i64 %212, ptr %219, align 4
  %220 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %220, align 1
  br label %LoopBreakContinue_state_03

LoopBreakContinue_state_done:                     ; preds = %LoopBreakContinue_entry
  %221 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 14
  %222 = load i64, ptr %221, align 4
  %223 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %222, 1
  %224 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %223, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %224

LoopBreakContinue_state_unreach:                  ; preds = %LoopBreakContinue_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_11:                                         ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

LoopBreakContinue_state_01_true:                  ; preds = %LoopBreakContinue_state_01
  %225 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 6
  store i1 %53, ptr %225, align 1
  %226 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %226, align 1
  br label %LoopBreakContinue_state_02

LoopBreakContinue_state_01_false:                 ; preds = %LoopBreakContinue_state_01
  %227 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 6
  store i1 %53, ptr %227, align 1
  %228 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %228, align 1
  br label %LoopBreakContinue_state_04

LoopBreakContinue_state_02_true:                  ; preds = %LoopBreakContinue_state_02
  %229 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 3
  %230 = load i64, ptr %229, align 4
  %231 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 4
  store i64 %230, ptr %231, align 4
  %232 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 8
  store i1 %77, ptr %232, align 1
  %233 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %233, align 1
  br label %LoopBreakContinue_state_03

LoopBreakContinue_state_02_false:                 ; preds = %LoopBreakContinue_state_02
  %234 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 8
  store i1 %77, ptr %234, align 1
  %235 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %235, align 1
  br label %LoopBreakContinue_state_05

LoopBreakContinue_state_05_true:                  ; preds = %LoopBreakContinue_state_05
  %236 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 9
  store i1 %166, ptr %236, align 1
  %237 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %237, align 1
  br label %LoopBreakContinue_state_04

LoopBreakContinue_state_05_false:                 ; preds = %LoopBreakContinue_state_05
  %238 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 9
  store i1 %166, ptr %238, align 1
  %239 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %239, align 1
  br label %LoopBreakContinue_state_06

LoopBreakContinue_state_06_init:                  ; preds = %LoopBreakContinue_state_06
  %240 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 1
  %241 = load i64, ptr %240, align 4
  %242 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 2
  %243 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %242, align 8
  %244 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 3
  %245 = load i64, ptr %244, align 4
  %246 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 4
  %247 = load i64, ptr %246, align 4
  %248 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 5
  %249 = load i64, ptr %248, align 4
  %250 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 6
  %251 = load i1, ptr %250, align 1
  %252 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 7
  %253 = load i64, ptr %252, align 4
  %254 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 8
  %255 = load i1, ptr %254, align 1
  %256 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 9
  %257 = load i1, ptr %256, align 1
  %258 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 11
  %259 = load i64, ptr %258, align 4
  %260 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 12
  %261 = load ptr, ptr %260, align 8
  %262 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %249)
  %263 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 10
  store ptr %262, ptr %263, align 8
  store ptr %262, ptr %190, align 8
  br label %LoopBreakContinue_state_06_poll

LoopBreakContinue_state_06_poll:                  ; preds = %LoopBreakContinue_state_06_init, %LoopBreakContinue_state_06
  %264 = load ptr, ptr %190, align 8
  %265 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %264, ptr %1)
  %266 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %265, 0
  br i1 %266, label %LoopBreakContinue_state_06_ready, label %LoopBreakContinue_state_06_pending

LoopBreakContinue_state_06_ready:                 ; preds = %LoopBreakContinue_state_06_poll
  %267 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %265, 1
  %268 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 11
  store i64 %267, ptr %268, align 4
  %269 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %243, ptr %269, align 8
  %270 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 3
  store i64 %245, ptr %270, align 4
  %271 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 4
  store i64 %247, ptr %271, align 4
  %272 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 5
  store i64 %249, ptr %272, align 4
  %273 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 6
  store i1 %251, ptr %273, align 1
  %274 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 7
  store i64 %253, ptr %274, align 4
  %275 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 8
  store i1 %255, ptr %275, align 1
  %276 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 9
  store i1 %257, ptr %276, align 1
  %277 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 10
  store ptr %262, ptr %277, align 8
  %278 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 12
  store ptr %261, ptr %278, align 8
  store ptr null, ptr %190, align 8
  %279 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %279, align 1
  br label %LoopBreakContinue_state_07

LoopBreakContinue_state_06_pending:               ; preds = %LoopBreakContinue_state_06_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 120)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %1, i32 0, i32 2
  store { ptr, ptr } zeroinitializer, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %1, i32 0, i32 3
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %1, i32 0, i32 4
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %1, i32 0, i32 5
  store i64 0, ptr %7, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %1, i32 0, i32 6
  store i1 false, ptr %8, align 1
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %1, i32 0, i32 7
  store i64 0, ptr %9, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %1, i32 0, i32 8
  store i1 false, ptr %10, align 1
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %1, i32 0, i32 9
  store i1 false, ptr %11, align 1
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %1, i32 0, i32 10
  store ptr null, ptr %12, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %1, i32 0, i32 11
  store i64 0, ptr %13, align 4
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %1, i32 0, i32 12
  store ptr null, ptr %14, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %1, i32 0, i32 13
  store ptr null, ptr %15, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define i64 @"github.com/goplus/llgo/cl/_testpull/complex.(*LoopWithAccumulator$State).Await"(ptr %0) {
_llgo_0:
  ret i64 undef
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/complex.(*LoopWithAccumulator$State).Poll"(ptr %0, ptr %1) {
LoopWithAccumulator_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %LoopWithAccumulator_state_unreach [
    i8 0, label %LoopWithAccumulator_state_00
    i8 1, label %LoopWithAccumulator_state_01
    i8 2, label %LoopWithAccumulator_state_02
    i8 3, label %LoopWithAccumulator_state_03
    i8 4, label %LoopWithAccumulator_state_04
    i8 5, label %LoopWithAccumulator_state_done
  ]

LoopWithAccumulator_state_00:                     ; preds = %LoopWithAccumulator_entry
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 3
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 4
  %11 = load i1, ptr %10, align 1
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 6
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 2
  store i64 0, ptr %16, align 4
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 3
  store i64 0, ptr %17, align 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %18, align 1
  br label %LoopWithAccumulator_state_01

LoopWithAccumulator_state_01:                     ; preds = %LoopWithAccumulator_state_03, %LoopWithAccumulator_state_00, %LoopWithAccumulator_entry
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 1
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 2
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 3
  %24 = load i64, ptr %23, align 4
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 5
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 6
  %28 = load i64, ptr %27, align 4
  %29 = icmp slt i64 %24, %20
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 4
  store i1 %29, ptr %30, align 1
  br i1 %29, label %LoopWithAccumulator_state_01_true, label %LoopWithAccumulator_state_01_false

LoopWithAccumulator_state_02:                     ; preds = %LoopWithAccumulator_state_01_true, %LoopWithAccumulator_entry
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 1
  %32 = load i64, ptr %31, align 4
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 2
  %34 = load i64, ptr %33, align 4
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 3
  %36 = load i64, ptr %35, align 4
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 4
  %38 = load i1, ptr %37, align 1
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 6
  %40 = load i64, ptr %39, align 4
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 7
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %LoopWithAccumulator_state_02_init, label %LoopWithAccumulator_state_02_poll

LoopWithAccumulator_state_03:                     ; preds = %LoopWithAccumulator_state_02_ready, %LoopWithAccumulator_entry
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 1
  %45 = load i64, ptr %44, align 4
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 2
  %47 = load i64, ptr %46, align 4
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 3
  %49 = load i64, ptr %48, align 4
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 4
  %51 = load i1, ptr %50, align 1
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 6
  %53 = load i64, ptr %52, align 4
  %54 = add i64 %47, %53
  %55 = add i64 %49, 1
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 2
  store i64 %54, ptr %56, align 4
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 3
  store i64 %55, ptr %57, align 4
  %58 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %55)
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 5
  store ptr %58, ptr %59, align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 6
  store i64 %53, ptr %60, align 4
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %61, align 1
  br label %LoopWithAccumulator_state_01

LoopWithAccumulator_state_04:                     ; preds = %LoopWithAccumulator_state_01_false, %LoopWithAccumulator_entry
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 1
  %63 = load i64, ptr %62, align 4
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 2
  %65 = load i64, ptr %64, align 4
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 3
  %67 = load i64, ptr %66, align 4
  %68 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 4
  %69 = load i1, ptr %68, align 1
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 5
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 6
  %73 = load i64, ptr %72, align 4
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 2
  %75 = load i64, ptr %74, align 4
  %76 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %65)
  %77 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %78 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %77, 0
  %79 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %78, ptr %76, 1
  %80 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 8
  store i64 %75, ptr %80, align 4
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %81, align 1
  %82 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 8
  %83 = load i64, ptr %82, align 4
  %84 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %83, 1
  %85 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %84, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %85

LoopWithAccumulator_state_done:                   ; preds = %LoopWithAccumulator_entry
  %86 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 8
  %87 = load i64, ptr %86, align 4
  %88 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %87, 1
  %89 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %88, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %89

LoopWithAccumulator_state_unreach:                ; preds = %LoopWithAccumulator_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_8:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

LoopWithAccumulator_state_01_true:                ; preds = %LoopWithAccumulator_state_01
  %90 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 4
  store i1 %29, ptr %90, align 1
  %91 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %91, align 1
  br label %LoopWithAccumulator_state_02

LoopWithAccumulator_state_01_false:               ; preds = %LoopWithAccumulator_state_01
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 4
  store i1 %29, ptr %92, align 1
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %93, align 1
  br label %LoopWithAccumulator_state_04

LoopWithAccumulator_state_02_init:                ; preds = %LoopWithAccumulator_state_02
  %94 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 1
  %95 = load i64, ptr %94, align 4
  %96 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 2
  %97 = load i64, ptr %96, align 4
  %98 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 3
  %99 = load i64, ptr %98, align 4
  %100 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 4
  %101 = load i1, ptr %100, align 1
  %102 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 6
  %103 = load i64, ptr %102, align 4
  %104 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %99)
  %105 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 5
  store ptr %104, ptr %105, align 8
  store ptr %104, ptr %41, align 8
  br label %LoopWithAccumulator_state_02_poll

LoopWithAccumulator_state_02_poll:                ; preds = %LoopWithAccumulator_state_02_init, %LoopWithAccumulator_state_02
  %106 = load ptr, ptr %41, align 8
  %107 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %106, ptr %1)
  %108 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %107, 0
  br i1 %108, label %LoopWithAccumulator_state_02_ready, label %LoopWithAccumulator_state_02_pending

LoopWithAccumulator_state_02_ready:               ; preds = %LoopWithAccumulator_state_02_poll
  %109 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %107, 1
  %110 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 6
  store i64 %109, ptr %110, align 4
  %111 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 2
  store i64 %97, ptr %111, align 4
  %112 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 3
  store i64 %99, ptr %112, align 4
  %113 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 4
  store i1 %101, ptr %113, align 1
  %114 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 5
  store ptr %104, ptr %114, align 8
  store ptr null, ptr %41, align 8
  %115 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %115, align 1
  br label %LoopWithAccumulator_state_03

LoopWithAccumulator_state_02_pending:             ; preds = %LoopWithAccumulator_state_02_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 72)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %1, i32 0, i32 3
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %1, i32 0, i32 4
  store i1 false, ptr %6, align 1
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %1, i32 0, i32 5
  store ptr null, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %1, i32 0, i32 6
  store i64 0, ptr %8, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %1, i32 0, i32 7
  store ptr null, ptr %9, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define i64 @"github.com/goplus/llgo/cl/_testpull/complex.(*MultipleReturnPaths$State).Await"(ptr %0) {
_llgo_0:
  ret i64 undef
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/complex.(*MultipleReturnPaths$State).Poll"(ptr %0, ptr %1) {
MultipleReturnPaths_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %MultipleReturnPaths_state_unreach [
    i8 0, label %MultipleReturnPaths_state_00
    i8 1, label %MultipleReturnPaths_state_01
    i8 2, label %MultipleReturnPaths_state_02
    i8 3, label %MultipleReturnPaths_state_03
    i8 4, label %MultipleReturnPaths_state_04
    i8 5, label %MultipleReturnPaths_state_05
    i8 6, label %MultipleReturnPaths_state_06
    i8 7, label %MultipleReturnPaths_state_07
    i8 8, label %MultipleReturnPaths_state_08
    i8 9, label %MultipleReturnPaths_state_09
    i8 10, label %MultipleReturnPaths_state_done
  ]

MultipleReturnPaths_state_00:                     ; preds = %MultipleReturnPaths_entry
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 3
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 4
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  %13 = load i64, ptr %12, align 4
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 6
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 7
  %17 = load i64, ptr %16, align 4
  %18 = icmp slt i64 %5, 0
  br i1 %18, label %MultipleReturnPaths_state_00_true, label %MultipleReturnPaths_state_00_false

MultipleReturnPaths_state_01:                     ; preds = %MultipleReturnPaths_state_00_true, %MultipleReturnPaths_entry
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 3
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 4
  %24 = load i64, ptr %23, align 4
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 6
  %28 = load i64, ptr %27, align 4
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 7
  %30 = load i64, ptr %29, align 4
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 8
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %MultipleReturnPaths_state_01_init, label %MultipleReturnPaths_state_01_poll

MultipleReturnPaths_state_02:                     ; preds = %MultipleReturnPaths_state_01_ready, %MultipleReturnPaths_entry
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %35 = load i64, ptr %34, align 4
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 3
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 4
  %39 = load i64, ptr %38, align 4
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  %41 = load i64, ptr %40, align 4
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 6
  %43 = load i64, ptr %42, align 4
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 7
  %45 = load i64, ptr %44, align 4
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 3
  %47 = load i64, ptr %46, align 4
  %48 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %37)
  %49 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %49, 0
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %50, ptr %48, 1
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 11
  store i64 %47, ptr %52, align 4
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 10, ptr %53, align 1
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 11
  %55 = load i64, ptr %54, align 4
  %56 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %55, 1
  %57 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %56, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %57

MultipleReturnPaths_state_03:                     ; preds = %MultipleReturnPaths_state_00_false, %MultipleReturnPaths_entry
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %59 = load i64, ptr %58, align 4
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  %61 = load i64, ptr %60, align 4
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 3
  %63 = load i64, ptr %62, align 4
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 4
  %65 = load i64, ptr %64, align 4
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  %67 = load i64, ptr %66, align 4
  %68 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 6
  %69 = load i64, ptr %68, align 4
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 7
  %71 = load i64, ptr %70, align 4
  %72 = icmp eq i64 %59, 0
  br i1 %72, label %MultipleReturnPaths_state_02_true, label %MultipleReturnPaths_state_02_false

MultipleReturnPaths_state_04:                     ; preds = %MultipleReturnPaths_state_02_true, %MultipleReturnPaths_entry
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %74 = load i64, ptr %73, align 4
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  %76 = load i64, ptr %75, align 4
  %77 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 3
  %78 = load i64, ptr %77, align 4
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 4
  %80 = load i64, ptr %79, align 4
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  %82 = load i64, ptr %81, align 4
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 6
  %84 = load i64, ptr %83, align 4
  %85 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 7
  %86 = load i64, ptr %85, align 4
  %87 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 0)
  %88 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %89 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %88, 0
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %89, ptr %87, 1
  %91 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 11
  store i64 0, ptr %91, align 4
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 10, ptr %92, align 1
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 11
  %94 = load i64, ptr %93, align 4
  %95 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %94, 1
  %96 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %95, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %96

MultipleReturnPaths_state_05:                     ; preds = %MultipleReturnPaths_state_02_false, %MultipleReturnPaths_entry
  %97 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %98 = load i64, ptr %97, align 4
  %99 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  %100 = load i64, ptr %99, align 4
  %101 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 3
  %102 = load i64, ptr %101, align 4
  %103 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  %104 = load i64, ptr %103, align 4
  %105 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 6
  %106 = load i64, ptr %105, align 4
  %107 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 7
  %108 = load i64, ptr %107, align 4
  %109 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 9
  %110 = load ptr, ptr %109, align 8
  %111 = icmp eq ptr %110, null
  br i1 %111, label %MultipleReturnPaths_state_05_init, label %MultipleReturnPaths_state_05_poll

MultipleReturnPaths_state_06:                     ; preds = %MultipleReturnPaths_state_05_ready, %MultipleReturnPaths_entry
  %112 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %113 = load i64, ptr %112, align 4
  %114 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  %115 = load i64, ptr %114, align 4
  %116 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 3
  %117 = load i64, ptr %116, align 4
  %118 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  %119 = load i64, ptr %118, align 4
  %120 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 6
  %121 = load i64, ptr %120, align 4
  %122 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 7
  %123 = load i64, ptr %122, align 4
  %124 = icmp sgt i64 %119, 100
  br i1 %124, label %MultipleReturnPaths_state_04_true, label %MultipleReturnPaths_state_04_false

MultipleReturnPaths_state_07:                     ; preds = %MultipleReturnPaths_state_04_true, %MultipleReturnPaths_entry
  %125 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %126 = load i64, ptr %125, align 4
  %127 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  %128 = load i64, ptr %127, align 4
  %129 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 3
  %130 = load i64, ptr %129, align 4
  %131 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 4
  %132 = load i64, ptr %131, align 4
  %133 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  %134 = load i64, ptr %133, align 4
  %135 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 6
  %136 = load i64, ptr %135, align 4
  %137 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 7
  %138 = load i64, ptr %137, align 4
  %139 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 100)
  %140 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %141 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %140, 0
  %142 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %141, ptr %139, 1
  %143 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 11
  store i64 100, ptr %143, align 4
  %144 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 10, ptr %144, align 1
  %145 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 11
  %146 = load i64, ptr %145, align 4
  %147 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %146, 1
  %148 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %147, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %148

MultipleReturnPaths_state_08:                     ; preds = %MultipleReturnPaths_state_04_false, %MultipleReturnPaths_entry
  %149 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %150 = load i64, ptr %149, align 4
  %151 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  %152 = load i64, ptr %151, align 4
  %153 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 3
  %154 = load i64, ptr %153, align 4
  %155 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 4
  %156 = load i64, ptr %155, align 4
  %157 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  %158 = load i64, ptr %157, align 4
  %159 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 7
  %160 = load i64, ptr %159, align 4
  %161 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 10
  %162 = load ptr, ptr %161, align 8
  %163 = icmp eq ptr %162, null
  br i1 %163, label %MultipleReturnPaths_state_08_init, label %MultipleReturnPaths_state_08_poll

MultipleReturnPaths_state_09:                     ; preds = %MultipleReturnPaths_state_08_ready, %MultipleReturnPaths_entry
  %164 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %165 = load i64, ptr %164, align 4
  %166 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  %167 = load i64, ptr %166, align 4
  %168 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 3
  %169 = load i64, ptr %168, align 4
  %170 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 4
  %171 = load i64, ptr %170, align 4
  %172 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  %173 = load i64, ptr %172, align 4
  %174 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 7
  %175 = load i64, ptr %174, align 4
  %176 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 7
  %177 = load i64, ptr %176, align 4
  %178 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %175)
  %179 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %180 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %179, 0
  %181 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %180, ptr %178, 1
  %182 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 11
  store i64 %177, ptr %182, align 4
  %183 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 10, ptr %183, align 1
  %184 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 11
  %185 = load i64, ptr %184, align 4
  %186 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %185, 1
  %187 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %186, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %187

MultipleReturnPaths_state_done:                   ; preds = %MultipleReturnPaths_entry
  %188 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 11
  %189 = load i64, ptr %188, align 4
  %190 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %189, 1
  %191 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %190, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %191

MultipleReturnPaths_state_unreach:                ; preds = %MultipleReturnPaths_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_13:                                         ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

MultipleReturnPaths_state_00_true:                ; preds = %MultipleReturnPaths_state_00
  %192 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %192, align 1
  br label %MultipleReturnPaths_state_01

MultipleReturnPaths_state_00_false:               ; preds = %MultipleReturnPaths_state_00
  %193 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %193, align 1
  br label %MultipleReturnPaths_state_03

MultipleReturnPaths_state_01_init:                ; preds = %MultipleReturnPaths_state_01
  %194 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %195 = load i64, ptr %194, align 4
  %196 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 3
  %197 = load i64, ptr %196, align 4
  %198 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 4
  %199 = load i64, ptr %198, align 4
  %200 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  %201 = load i64, ptr %200, align 4
  %202 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 6
  %203 = load i64, ptr %202, align 4
  %204 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 7
  %205 = load i64, ptr %204, align 4
  %206 = sub i64 0, %195
  %207 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  store i64 %206, ptr %207, align 4
  %208 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %206)
  store ptr %208, ptr %31, align 8
  br label %MultipleReturnPaths_state_01_poll

MultipleReturnPaths_state_01_poll:                ; preds = %MultipleReturnPaths_state_01_init, %MultipleReturnPaths_state_01
  %209 = load ptr, ptr %31, align 8
  %210 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %209, ptr %1)
  %211 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %210, 0
  br i1 %211, label %MultipleReturnPaths_state_01_ready, label %MultipleReturnPaths_state_01_pending

MultipleReturnPaths_state_01_ready:               ; preds = %MultipleReturnPaths_state_01_poll
  %212 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %210, 1
  %213 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 3
  store i64 %212, ptr %213, align 4
  %214 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  store i64 %206, ptr %214, align 4
  %215 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 4
  store i64 %199, ptr %215, align 4
  %216 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  store i64 %201, ptr %216, align 4
  %217 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 6
  store i64 %203, ptr %217, align 4
  %218 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 7
  store i64 %205, ptr %218, align 4
  store ptr null, ptr %31, align 8
  %219 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %219, align 1
  br label %MultipleReturnPaths_state_02

MultipleReturnPaths_state_01_pending:             ; preds = %MultipleReturnPaths_state_01_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

MultipleReturnPaths_state_02_true:                ; preds = %MultipleReturnPaths_state_03
  %220 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %220, align 1
  br label %MultipleReturnPaths_state_04

MultipleReturnPaths_state_02_false:               ; preds = %MultipleReturnPaths_state_03
  %221 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %221, align 1
  br label %MultipleReturnPaths_state_05

MultipleReturnPaths_state_05_init:                ; preds = %MultipleReturnPaths_state_05
  %222 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %223 = load i64, ptr %222, align 4
  %224 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  %225 = load i64, ptr %224, align 4
  %226 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 3
  %227 = load i64, ptr %226, align 4
  %228 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  %229 = load i64, ptr %228, align 4
  %230 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 6
  %231 = load i64, ptr %230, align 4
  %232 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 7
  %233 = load i64, ptr %232, align 4
  %234 = mul i64 %223, 2
  %235 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 4
  store i64 %234, ptr %235, align 4
  %236 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %234)
  store ptr %236, ptr %109, align 8
  br label %MultipleReturnPaths_state_05_poll

MultipleReturnPaths_state_05_poll:                ; preds = %MultipleReturnPaths_state_05_init, %MultipleReturnPaths_state_05
  %237 = load ptr, ptr %109, align 8
  %238 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %237, ptr %1)
  %239 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %238, 0
  br i1 %239, label %MultipleReturnPaths_state_05_ready, label %MultipleReturnPaths_state_05_pending

MultipleReturnPaths_state_05_ready:               ; preds = %MultipleReturnPaths_state_05_poll
  %240 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %238, 1
  %241 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  store i64 %240, ptr %241, align 4
  %242 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  store i64 %225, ptr %242, align 4
  %243 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 3
  store i64 %227, ptr %243, align 4
  %244 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 4
  store i64 %234, ptr %244, align 4
  %245 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 6
  store i64 %231, ptr %245, align 4
  %246 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 7
  store i64 %233, ptr %246, align 4
  store ptr null, ptr %109, align 8
  %247 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %247, align 1
  br label %MultipleReturnPaths_state_06

MultipleReturnPaths_state_05_pending:             ; preds = %MultipleReturnPaths_state_05_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

MultipleReturnPaths_state_04_true:                ; preds = %MultipleReturnPaths_state_06
  %248 = mul i64 %113, 2
  %249 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 4
  store i64 %248, ptr %249, align 4
  %250 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  store i64 %119, ptr %250, align 4
  %251 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %251, align 1
  br label %MultipleReturnPaths_state_07

MultipleReturnPaths_state_04_false:               ; preds = %MultipleReturnPaths_state_06
  %252 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 4
  store i64 %248, ptr %252, align 4
  %253 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  store i64 %119, ptr %253, align 4
  %254 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 8, ptr %254, align 1
  br label %MultipleReturnPaths_state_08

MultipleReturnPaths_state_08_init:                ; preds = %MultipleReturnPaths_state_08
  %255 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %256 = load i64, ptr %255, align 4
  %257 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  %258 = load i64, ptr %257, align 4
  %259 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 3
  %260 = load i64, ptr %259, align 4
  %261 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 4
  %262 = load i64, ptr %261, align 4
  %263 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  %264 = load i64, ptr %263, align 4
  %265 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 7
  %266 = load i64, ptr %265, align 4
  %267 = add i64 %264, 50
  %268 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 6
  store i64 %267, ptr %268, align 4
  %269 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %267)
  store ptr %269, ptr %161, align 8
  br label %MultipleReturnPaths_state_08_poll

MultipleReturnPaths_state_08_poll:                ; preds = %MultipleReturnPaths_state_08_init, %MultipleReturnPaths_state_08
  %270 = load ptr, ptr %161, align 8
  %271 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %270, ptr %1)
  %272 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %271, 0
  br i1 %272, label %MultipleReturnPaths_state_08_ready, label %MultipleReturnPaths_state_08_pending

MultipleReturnPaths_state_08_ready:               ; preds = %MultipleReturnPaths_state_08_poll
  %273 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %271, 1
  %274 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 7
  store i64 %273, ptr %274, align 4
  %275 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  store i64 %258, ptr %275, align 4
  %276 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 3
  store i64 %260, ptr %276, align 4
  %277 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 4
  store i64 %262, ptr %277, align 4
  %278 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  store i64 %264, ptr %278, align 4
  %279 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 6
  store i64 %267, ptr %279, align 4
  store ptr null, ptr %161, align 8
  %280 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 9, ptr %280, align 1
  br label %MultipleReturnPaths_state_09

MultipleReturnPaths_state_08_pending:             ; preds = %MultipleReturnPaths_state_08_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 96)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %1, i32 0, i32 3
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %1, i32 0, i32 4
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %1, i32 0, i32 5
  store i64 0, ptr %7, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %1, i32 0, i32 6
  store i64 0, ptr %8, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %1, i32 0, i32 7
  store i64 0, ptr %9, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %1, i32 0, i32 8
  store ptr null, ptr %10, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %1, i32 0, i32 9
  store ptr null, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %1, i32 0, i32 10
  store ptr null, ptr %12, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define i64 @"github.com/goplus/llgo/cl/_testpull/complex.(*NestedConditions$State).Await"(ptr %0) {
_llgo_0:
  ret i64 undef
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/complex.(*NestedConditions$State).Poll"(ptr %0, ptr %1) {
NestedConditions_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %NestedConditions_state_unreach [
    i8 0, label %NestedConditions_state_00
    i8 1, label %NestedConditions_state_01
    i8 2, label %NestedConditions_state_02
    i8 3, label %NestedConditions_state_03
    i8 4, label %NestedConditions_state_04
    i8 5, label %NestedConditions_state_05
    i8 6, label %NestedConditions_state_06
    i8 7, label %NestedConditions_state_07
    i8 8, label %NestedConditions_state_08
    i8 9, label %NestedConditions_state_09
    i8 10, label %NestedConditions_state_done
  ]

NestedConditions_state_00:                        ; preds = %NestedConditions_entry
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %7 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %6, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 5
  %13 = load i64, ptr %12, align 4
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 7
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  %19 = load i64, ptr %18, align 4
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  %21 = load i64, ptr %20, align 4
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 10
  %23 = load ptr, ptr %22, align 8
  %24 = icmp sgt i64 %5, 0
  br i1 %24, label %NestedConditions_state_00_true, label %NestedConditions_state_00_false

NestedConditions_state_01:                        ; preds = %NestedConditions_state_00_true, %NestedConditions_entry
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %28 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %27, align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  %30 = load i64, ptr %29, align 4
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  %32 = load i64, ptr %31, align 4
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 5
  %34 = load i64, ptr %33, align 4
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  %36 = load i64, ptr %35, align 4
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 7
  %38 = load i64, ptr %37, align 4
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  %40 = load i64, ptr %39, align 4
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  %42 = load i64, ptr %41, align 4
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 10
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 11
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %NestedConditions_state_01_init, label %NestedConditions_state_01_poll

NestedConditions_state_02:                        ; preds = %NestedConditions_state_01_ready, %NestedConditions_entry
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %49 = load i64, ptr %48, align 4
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %51 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %50, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  %53 = load i64, ptr %52, align 4
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  %55 = load i64, ptr %54, align 4
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 5
  %57 = load i64, ptr %56, align 4
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  %59 = load i64, ptr %58, align 4
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 7
  %61 = load i64, ptr %60, align 4
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  %63 = load i64, ptr %62, align 4
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  %65 = load i64, ptr %64, align 4
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 10
  %67 = load ptr, ptr %66, align 8
  %68 = icmp sgt i64 %55, 10
  br i1 %68, label %NestedConditions_state_01_true, label %NestedConditions_state_01_false

NestedConditions_state_03:                        ; preds = %NestedConditions_state_09, %NestedConditions_state_07, %NestedConditions_state_05, %NestedConditions_entry
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %70 = load i64, ptr %69, align 4
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  %72 = load i64, ptr %71, align 4
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  %74 = load i64, ptr %73, align 4
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 5
  %76 = load i64, ptr %75, align 4
  %77 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  %78 = load i64, ptr %77, align 4
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 7
  %80 = load i64, ptr %79, align 4
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  %82 = load i64, ptr %81, align 4
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  %84 = load i64, ptr %83, align 4
  %85 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  %86 = load i64, ptr %85, align 4
  %87 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %72)
  %88 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %89 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %88, 0
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %89, ptr %87, 1
  %91 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %90, ptr %91, align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 15
  store i64 %86, ptr %92, align 4
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  store i8 10, ptr %93, align 1
  %94 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 15
  %95 = load i64, ptr %94, align 4
  %96 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %95, 1
  %97 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %96, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %97

NestedConditions_state_04:                        ; preds = %NestedConditions_state_00_false, %NestedConditions_entry
  %98 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %99 = load i64, ptr %98, align 4
  %100 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %101 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %100, align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  %103 = load i64, ptr %102, align 4
  %104 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  %105 = load i64, ptr %104, align 4
  %106 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 5
  %107 = load i64, ptr %106, align 4
  %108 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  %109 = load i64, ptr %108, align 4
  %110 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 7
  %111 = load i64, ptr %110, align 4
  %112 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  %113 = load i64, ptr %112, align 4
  %114 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  %115 = load i64, ptr %114, align 4
  %116 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 10
  %117 = load ptr, ptr %116, align 8
  %118 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 12
  %119 = load ptr, ptr %118, align 8
  %120 = icmp eq ptr %119, null
  br i1 %120, label %NestedConditions_state_04_init, label %NestedConditions_state_04_poll

NestedConditions_state_05:                        ; preds = %NestedConditions_state_04_ready, %NestedConditions_entry
  %121 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %122 = load i64, ptr %121, align 4
  %123 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %124 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %123, align 8
  %125 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  %126 = load i64, ptr %125, align 4
  %127 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  %128 = load i64, ptr %127, align 4
  %129 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 5
  %130 = load i64, ptr %129, align 4
  %131 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  %132 = load i64, ptr %131, align 4
  %133 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 7
  %134 = load i64, ptr %133, align 4
  %135 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  %136 = load i64, ptr %135, align 4
  %137 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  %138 = load i64, ptr %137, align 4
  %139 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 10
  %140 = load ptr, ptr %139, align 8
  %141 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  %142 = load i64, ptr %141, align 4
  %143 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  store i64 %142, ptr %143, align 4
  %144 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  store i64 %138, ptr %144, align 4
  %145 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %145, align 1
  br label %NestedConditions_state_03

NestedConditions_state_06:                        ; preds = %NestedConditions_state_01_true, %NestedConditions_entry
  %146 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %147 = load i64, ptr %146, align 4
  %148 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %149 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %148, align 8
  %150 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  %151 = load i64, ptr %150, align 4
  %152 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  %153 = load i64, ptr %152, align 4
  %154 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  %155 = load i64, ptr %154, align 4
  %156 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 7
  %157 = load i64, ptr %156, align 4
  %158 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  %159 = load i64, ptr %158, align 4
  %160 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  %161 = load i64, ptr %160, align 4
  %162 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 10
  %163 = load ptr, ptr %162, align 8
  %164 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 13
  %165 = load ptr, ptr %164, align 8
  %166 = icmp eq ptr %165, null
  br i1 %166, label %NestedConditions_state_06_init, label %NestedConditions_state_06_poll

NestedConditions_state_07:                        ; preds = %NestedConditions_state_06_ready, %NestedConditions_entry
  %167 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %168 = load i64, ptr %167, align 4
  %169 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %170 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %169, align 8
  %171 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  %172 = load i64, ptr %171, align 4
  %173 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  %174 = load i64, ptr %173, align 4
  %175 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  %176 = load i64, ptr %175, align 4
  %177 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 7
  %178 = load i64, ptr %177, align 4
  %179 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  %180 = load i64, ptr %179, align 4
  %181 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  %182 = load i64, ptr %181, align 4
  %183 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 10
  %184 = load ptr, ptr %183, align 8
  %185 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  %186 = load i64, ptr %185, align 4
  %187 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  store i64 %186, ptr %187, align 4
  %188 = mul i64 %174, 2
  %189 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 5
  store i64 %188, ptr %189, align 4
  %190 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  store i64 %176, ptr %190, align 4
  %191 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %191, align 1
  br label %NestedConditions_state_03

NestedConditions_state_08:                        ; preds = %NestedConditions_state_01_false, %NestedConditions_entry
  %192 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %193 = load i64, ptr %192, align 4
  %194 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %195 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %194, align 8
  %196 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  %197 = load i64, ptr %196, align 4
  %198 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  %199 = load i64, ptr %198, align 4
  %200 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 5
  %201 = load i64, ptr %200, align 4
  %202 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  %203 = load i64, ptr %202, align 4
  %204 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  %205 = load i64, ptr %204, align 4
  %206 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  %207 = load i64, ptr %206, align 4
  %208 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 10
  %209 = load ptr, ptr %208, align 8
  %210 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 14
  %211 = load ptr, ptr %210, align 8
  %212 = icmp eq ptr %211, null
  br i1 %212, label %NestedConditions_state_08_init, label %NestedConditions_state_08_poll

NestedConditions_state_09:                        ; preds = %NestedConditions_state_08_ready, %NestedConditions_entry
  %213 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %214 = load i64, ptr %213, align 4
  %215 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %216 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %215, align 8
  %217 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  %218 = load i64, ptr %217, align 4
  %219 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  %220 = load i64, ptr %219, align 4
  %221 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 5
  %222 = load i64, ptr %221, align 4
  %223 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  %224 = load i64, ptr %223, align 4
  %225 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  %226 = load i64, ptr %225, align 4
  %227 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  %228 = load i64, ptr %227, align 4
  %229 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 10
  %230 = load ptr, ptr %229, align 8
  %231 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  %232 = load i64, ptr %231, align 4
  %233 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  store i64 %232, ptr %233, align 4
  %234 = add i64 %220, 5
  %235 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 7
  store i64 %234, ptr %235, align 4
  %236 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  store i64 %226, ptr %236, align 4
  %237 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %237, align 1
  br label %NestedConditions_state_03

NestedConditions_state_done:                      ; preds = %NestedConditions_entry
  %238 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 15
  %239 = load i64, ptr %238, align 4
  %240 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %239, 1
  %241 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %240, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %241

NestedConditions_state_unreach:                   ; preds = %NestedConditions_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_13:                                         ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

NestedConditions_state_00_true:                   ; preds = %NestedConditions_state_00
  %242 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %242, align 1
  br label %NestedConditions_state_01

NestedConditions_state_00_false:                  ; preds = %NestedConditions_state_00
  %243 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %243, align 1
  br label %NestedConditions_state_04

NestedConditions_state_01_init:                   ; preds = %NestedConditions_state_01
  %244 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %245 = load i64, ptr %244, align 4
  %246 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %247 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %246, align 8
  %248 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  %249 = load i64, ptr %248, align 4
  %250 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  %251 = load i64, ptr %250, align 4
  %252 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 5
  %253 = load i64, ptr %252, align 4
  %254 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  %255 = load i64, ptr %254, align 4
  %256 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 7
  %257 = load i64, ptr %256, align 4
  %258 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  %259 = load i64, ptr %258, align 4
  %260 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  %261 = load i64, ptr %260, align 4
  %262 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 10
  %263 = load ptr, ptr %262, align 8
  %264 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %245)
  store ptr %264, ptr %45, align 8
  br label %NestedConditions_state_01_poll

NestedConditions_state_01_poll:                   ; preds = %NestedConditions_state_01_init, %NestedConditions_state_01
  %265 = load ptr, ptr %45, align 8
  %266 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %265, ptr %1)
  %267 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %266, 0
  br i1 %267, label %NestedConditions_state_01_ready, label %NestedConditions_state_01_pending

NestedConditions_state_01_ready:                  ; preds = %NestedConditions_state_01_poll
  %268 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %266, 1
  %269 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  store i64 %268, ptr %269, align 4
  %270 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %247, ptr %270, align 8
  %271 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  store i64 %249, ptr %271, align 4
  %272 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 5
  store i64 %253, ptr %272, align 4
  %273 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  store i64 %255, ptr %273, align 4
  %274 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 7
  store i64 %257, ptr %274, align 4
  %275 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  store i64 %259, ptr %275, align 4
  %276 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  store i64 %261, ptr %276, align 4
  %277 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 10
  store ptr %263, ptr %277, align 8
  store ptr null, ptr %45, align 8
  %278 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %278, align 1
  br label %NestedConditions_state_02

NestedConditions_state_01_pending:                ; preds = %NestedConditions_state_01_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

NestedConditions_state_01_true:                   ; preds = %NestedConditions_state_02
  %279 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  store i64 %55, ptr %279, align 4
  %280 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %280, align 1
  br label %NestedConditions_state_06

NestedConditions_state_01_false:                  ; preds = %NestedConditions_state_02
  %281 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  store i64 %55, ptr %281, align 4
  %282 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  store i8 8, ptr %282, align 1
  br label %NestedConditions_state_08

NestedConditions_state_04_init:                   ; preds = %NestedConditions_state_04
  %283 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %284 = load i64, ptr %283, align 4
  %285 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %286 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %285, align 8
  %287 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  %288 = load i64, ptr %287, align 4
  %289 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  %290 = load i64, ptr %289, align 4
  %291 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 5
  %292 = load i64, ptr %291, align 4
  %293 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  %294 = load i64, ptr %293, align 4
  %295 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 7
  %296 = load i64, ptr %295, align 4
  %297 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  %298 = load i64, ptr %297, align 4
  %299 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  %300 = load i64, ptr %299, align 4
  %301 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 10
  %302 = load ptr, ptr %301, align 8
  %303 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 100)
  store ptr %303, ptr %118, align 8
  br label %NestedConditions_state_04_poll

NestedConditions_state_04_poll:                   ; preds = %NestedConditions_state_04_init, %NestedConditions_state_04
  %304 = load ptr, ptr %118, align 8
  %305 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %304, ptr %1)
  %306 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %305, 0
  br i1 %306, label %NestedConditions_state_04_ready, label %NestedConditions_state_04_pending

NestedConditions_state_04_ready:                  ; preds = %NestedConditions_state_04_poll
  %307 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %305, 1
  %308 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  store i64 %307, ptr %308, align 4
  %309 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %286, ptr %309, align 8
  %310 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  store i64 %288, ptr %310, align 4
  %311 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  store i64 %290, ptr %311, align 4
  %312 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 5
  store i64 %292, ptr %312, align 4
  %313 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  store i64 %294, ptr %313, align 4
  %314 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 7
  store i64 %296, ptr %314, align 4
  %315 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  store i64 %298, ptr %315, align 4
  %316 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 10
  store ptr %302, ptr %316, align 8
  store ptr null, ptr %118, align 8
  %317 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %317, align 1
  br label %NestedConditions_state_05

NestedConditions_state_04_pending:                ; preds = %NestedConditions_state_04_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

NestedConditions_state_06_init:                   ; preds = %NestedConditions_state_06
  %318 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %319 = load i64, ptr %318, align 4
  %320 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %321 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %320, align 8
  %322 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  %323 = load i64, ptr %322, align 4
  %324 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  %325 = load i64, ptr %324, align 4
  %326 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  %327 = load i64, ptr %326, align 4
  %328 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 7
  %329 = load i64, ptr %328, align 4
  %330 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  %331 = load i64, ptr %330, align 4
  %332 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  %333 = load i64, ptr %332, align 4
  %334 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 10
  %335 = load ptr, ptr %334, align 8
  %336 = mul i64 %325, 2
  %337 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 5
  store i64 %336, ptr %337, align 4
  %338 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %336)
  store ptr %338, ptr %164, align 8
  br label %NestedConditions_state_06_poll

NestedConditions_state_06_poll:                   ; preds = %NestedConditions_state_06_init, %NestedConditions_state_06
  %339 = load ptr, ptr %164, align 8
  %340 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %339, ptr %1)
  %341 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %340, 0
  br i1 %341, label %NestedConditions_state_06_ready, label %NestedConditions_state_06_pending

NestedConditions_state_06_ready:                  ; preds = %NestedConditions_state_06_poll
  %342 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %340, 1
  %343 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  store i64 %342, ptr %343, align 4
  %344 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %321, ptr %344, align 8
  %345 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  store i64 %323, ptr %345, align 4
  %346 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  store i64 %325, ptr %346, align 4
  %347 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 5
  store i64 %336, ptr %347, align 4
  %348 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 7
  store i64 %329, ptr %348, align 4
  %349 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  store i64 %331, ptr %349, align 4
  %350 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  store i64 %333, ptr %350, align 4
  %351 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 10
  store ptr %335, ptr %351, align 8
  store ptr null, ptr %164, align 8
  %352 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %352, align 1
  br label %NestedConditions_state_07

NestedConditions_state_06_pending:                ; preds = %NestedConditions_state_06_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

NestedConditions_state_08_init:                   ; preds = %NestedConditions_state_08
  %353 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %354 = load i64, ptr %353, align 4
  %355 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %356 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %355, align 8
  %357 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  %358 = load i64, ptr %357, align 4
  %359 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  %360 = load i64, ptr %359, align 4
  %361 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 5
  %362 = load i64, ptr %361, align 4
  %363 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  %364 = load i64, ptr %363, align 4
  %365 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  %366 = load i64, ptr %365, align 4
  %367 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  %368 = load i64, ptr %367, align 4
  %369 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 10
  %370 = load ptr, ptr %369, align 8
  %371 = add i64 %360, 5
  %372 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 7
  store i64 %371, ptr %372, align 4
  %373 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %371)
  store ptr %373, ptr %210, align 8
  br label %NestedConditions_state_08_poll

NestedConditions_state_08_poll:                   ; preds = %NestedConditions_state_08_init, %NestedConditions_state_08
  %374 = load ptr, ptr %210, align 8
  %375 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %374, ptr %1)
  %376 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %375, 0
  br i1 %376, label %NestedConditions_state_08_ready, label %NestedConditions_state_08_pending

NestedConditions_state_08_ready:                  ; preds = %NestedConditions_state_08_poll
  %377 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %375, 1
  %378 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  store i64 %377, ptr %378, align 4
  %379 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %356, ptr %379, align 8
  %380 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  store i64 %358, ptr %380, align 4
  %381 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  store i64 %360, ptr %381, align 4
  %382 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 5
  store i64 %362, ptr %382, align 4
  %383 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  store i64 %364, ptr %383, align 4
  %384 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 7
  store i64 %371, ptr %384, align 4
  %385 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  store i64 %368, ptr %385, align 4
  %386 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 10
  store ptr %370, ptr %386, align 8
  store ptr null, ptr %210, align 8
  %387 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  store i8 9, ptr %387, align 1
  br label %NestedConditions_state_09

NestedConditions_state_08_pending:                ; preds = %NestedConditions_state_08_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 136)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %1, i32 0, i32 2
  store { ptr, ptr } zeroinitializer, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %1, i32 0, i32 3
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %1, i32 0, i32 4
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %1, i32 0, i32 5
  store i64 0, ptr %7, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %1, i32 0, i32 6
  store i64 0, ptr %8, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %1, i32 0, i32 7
  store i64 0, ptr %9, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %1, i32 0, i32 8
  store i64 0, ptr %10, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %1, i32 0, i32 9
  store i64 0, ptr %11, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %1, i32 0, i32 10
  store ptr null, ptr %12, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %1, i32 0, i32 11
  store ptr null, ptr %13, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %1, i32 0, i32 12
  store ptr null, ptr %14, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %1, i32 0, i32 13
  store ptr null, ptr %15, align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %1, i32 0, i32 14
  store ptr null, ptr %16, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define i64 @"github.com/goplus/llgo/cl/_testpull/complex.(*SwitchWithFallthrough$State).Await"(ptr %0) {
_llgo_0:
  ret i64 undef
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/complex.(*SwitchWithFallthrough$State).Poll"(ptr %0, ptr %1) {
SwitchWithFallthrough_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %SwitchWithFallthrough_state_unreach [
    i8 0, label %SwitchWithFallthrough_state_00
    i8 1, label %SwitchWithFallthrough_state_01
    i8 2, label %SwitchWithFallthrough_state_02
    i8 3, label %SwitchWithFallthrough_state_03
    i8 4, label %SwitchWithFallthrough_state_04
    i8 5, label %SwitchWithFallthrough_state_05
    i8 6, label %SwitchWithFallthrough_state_06
    i8 7, label %SwitchWithFallthrough_state_07
    i8 8, label %SwitchWithFallthrough_state_08
    i8 9, label %SwitchWithFallthrough_state_09
    i8 10, label %SwitchWithFallthrough_state_10
    i8 11, label %SwitchWithFallthrough_state_11
    i8 12, label %SwitchWithFallthrough_state_done
  ]

SwitchWithFallthrough_state_00:                   ; preds = %SwitchWithFallthrough_entry
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %7 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %6, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %13 = load i64, ptr %12, align 4
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq i64 %5, 0
  br i1 %20, label %SwitchWithFallthrough_state_00_true, label %SwitchWithFallthrough_state_00_false

SwitchWithFallthrough_state_01:                   ; preds = %SwitchWithFallthrough_state_11, %SwitchWithFallthrough_state_08, %SwitchWithFallthrough_state_05, %SwitchWithFallthrough_state_03, %SwitchWithFallthrough_entry
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %24 = load i64, ptr %23, align 4
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %28 = load i64, ptr %27, align 4
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %30 = load i64, ptr %29, align 4
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %32 = load i64, ptr %31, align 4
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %34 = load i64, ptr %33, align 4
  %35 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %24)
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %36, 0
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %37, ptr %35, 1
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %38, ptr %39, align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 13
  store i64 %34, ptr %40, align 4
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 12, ptr %41, align 1
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 13
  %43 = load i64, ptr %42, align 4
  %44 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %43, 1
  %45 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %44, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %45

SwitchWithFallthrough_state_02:                   ; preds = %SwitchWithFallthrough_state_00_true, %SwitchWithFallthrough_entry
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %47 = load i64, ptr %46, align 4
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %49 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %48, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %51 = load i64, ptr %50, align 4
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %53 = load i64, ptr %52, align 4
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %55 = load i64, ptr %54, align 4
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %57 = load i64, ptr %56, align 4
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %59 = load i64, ptr %58, align 4
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 9
  %63 = load ptr, ptr %62, align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %SwitchWithFallthrough_state_02_init, label %SwitchWithFallthrough_state_02_poll

SwitchWithFallthrough_state_03:                   ; preds = %SwitchWithFallthrough_state_02_ready, %SwitchWithFallthrough_entry
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %66 = load i64, ptr %65, align 4
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %68 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %67, align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %70 = load i64, ptr %69, align 4
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %72 = load i64, ptr %71, align 4
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %74 = load i64, ptr %73, align 4
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %76 = load i64, ptr %75, align 4
  %77 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %78 = load i64, ptr %77, align 4
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %82 = load i64, ptr %81, align 4
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  store i64 %82, ptr %83, align 4
  %84 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  store i64 %72, ptr %84, align 4
  %85 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %85, align 1
  br label %SwitchWithFallthrough_state_01

SwitchWithFallthrough_state_04:                   ; preds = %SwitchWithFallthrough_state_04_true, %SwitchWithFallthrough_entry
  %86 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %87 = load i64, ptr %86, align 4
  %88 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %89 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %88, align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %91 = load i64, ptr %90, align 4
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %93 = load i64, ptr %92, align 4
  %94 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %95 = load i64, ptr %94, align 4
  %96 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %97 = load i64, ptr %96, align 4
  %98 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %99 = load i64, ptr %98, align 4
  %100 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  %101 = load ptr, ptr %100, align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 10
  %103 = load ptr, ptr %102, align 8
  %104 = icmp eq ptr %103, null
  br i1 %104, label %SwitchWithFallthrough_state_04_init, label %SwitchWithFallthrough_state_04_poll

SwitchWithFallthrough_state_05:                   ; preds = %SwitchWithFallthrough_state_04_ready, %SwitchWithFallthrough_entry
  %105 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %106 = load i64, ptr %105, align 4
  %107 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %108 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %107, align 8
  %109 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %110 = load i64, ptr %109, align 4
  %111 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %112 = load i64, ptr %111, align 4
  %113 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %114 = load i64, ptr %113, align 4
  %115 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %116 = load i64, ptr %115, align 4
  %117 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %118 = load i64, ptr %117, align 4
  %119 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  %120 = load ptr, ptr %119, align 8
  %121 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %122 = load i64, ptr %121, align 4
  %123 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  store i64 %122, ptr %123, align 4
  %124 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  store i64 %114, ptr %124, align 4
  %125 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %125, align 1
  br label %SwitchWithFallthrough_state_01

SwitchWithFallthrough_state_06:                   ; preds = %SwitchWithFallthrough_state_00_false, %SwitchWithFallthrough_entry
  %126 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %127 = load i64, ptr %126, align 4
  %128 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %129 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %128, align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %131 = load i64, ptr %130, align 4
  %132 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %133 = load i64, ptr %132, align 4
  %134 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %135 = load i64, ptr %134, align 4
  %136 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %137 = load i64, ptr %136, align 4
  %138 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %139 = load i64, ptr %138, align 4
  %140 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  %141 = load ptr, ptr %140, align 8
  %142 = icmp eq i64 %127, 1
  br i1 %142, label %SwitchWithFallthrough_state_04_true, label %SwitchWithFallthrough_state_04_false

SwitchWithFallthrough_state_07:                   ; preds = %SwitchWithFallthrough_state_06_true, %SwitchWithFallthrough_entry
  %143 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %144 = load i64, ptr %143, align 4
  %145 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %146 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %145, align 8
  %147 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %148 = load i64, ptr %147, align 4
  %149 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %150 = load i64, ptr %149, align 4
  %151 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %152 = load i64, ptr %151, align 4
  %153 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %154 = load i64, ptr %153, align 4
  %155 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %156 = load i64, ptr %155, align 4
  %157 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  %158 = load ptr, ptr %157, align 8
  %159 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 11
  %160 = load ptr, ptr %159, align 8
  %161 = icmp eq ptr %160, null
  br i1 %161, label %SwitchWithFallthrough_state_07_init, label %SwitchWithFallthrough_state_07_poll

SwitchWithFallthrough_state_08:                   ; preds = %SwitchWithFallthrough_state_07_ready, %SwitchWithFallthrough_entry
  %162 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %163 = load i64, ptr %162, align 4
  %164 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %165 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %164, align 8
  %166 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %167 = load i64, ptr %166, align 4
  %168 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %169 = load i64, ptr %168, align 4
  %170 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %171 = load i64, ptr %170, align 4
  %172 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %173 = load i64, ptr %172, align 4
  %174 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %175 = load i64, ptr %174, align 4
  %176 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  %177 = load ptr, ptr %176, align 8
  %178 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %179 = load i64, ptr %178, align 4
  %180 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  store i64 %179, ptr %180, align 4
  %181 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  store i64 %173, ptr %181, align 4
  %182 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %182, align 1
  br label %SwitchWithFallthrough_state_01

SwitchWithFallthrough_state_09:                   ; preds = %SwitchWithFallthrough_state_04_false, %SwitchWithFallthrough_entry
  %183 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %184 = load i64, ptr %183, align 4
  %185 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %186 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %185, align 8
  %187 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %188 = load i64, ptr %187, align 4
  %189 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %190 = load i64, ptr %189, align 4
  %191 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %192 = load i64, ptr %191, align 4
  %193 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %194 = load i64, ptr %193, align 4
  %195 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %196 = load i64, ptr %195, align 4
  %197 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  %198 = load ptr, ptr %197, align 8
  %199 = icmp eq i64 %184, 2
  br i1 %199, label %SwitchWithFallthrough_state_06_true, label %SwitchWithFallthrough_state_06_false

SwitchWithFallthrough_state_10:                   ; preds = %SwitchWithFallthrough_state_06_false, %SwitchWithFallthrough_entry
  %200 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %201 = load i64, ptr %200, align 4
  %202 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %203 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %202, align 8
  %204 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %205 = load i64, ptr %204, align 4
  %206 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %207 = load i64, ptr %206, align 4
  %208 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %209 = load i64, ptr %208, align 4
  %210 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %211 = load i64, ptr %210, align 4
  %212 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %213 = load i64, ptr %212, align 4
  %214 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  %215 = load ptr, ptr %214, align 8
  %216 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 12
  %217 = load ptr, ptr %216, align 8
  %218 = icmp eq ptr %217, null
  br i1 %218, label %SwitchWithFallthrough_state_10_init, label %SwitchWithFallthrough_state_10_poll

SwitchWithFallthrough_state_11:                   ; preds = %SwitchWithFallthrough_state_10_ready, %SwitchWithFallthrough_entry
  %219 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %220 = load i64, ptr %219, align 4
  %221 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %222 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %221, align 8
  %223 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %224 = load i64, ptr %223, align 4
  %225 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %226 = load i64, ptr %225, align 4
  %227 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %228 = load i64, ptr %227, align 4
  %229 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %230 = load i64, ptr %229, align 4
  %231 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %232 = load i64, ptr %231, align 4
  %233 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  %234 = load ptr, ptr %233, align 8
  %235 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %236 = load i64, ptr %235, align 4
  %237 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  store i64 %236, ptr %237, align 4
  %238 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  store i64 %232, ptr %238, align 4
  %239 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %239, align 1
  br label %SwitchWithFallthrough_state_01

SwitchWithFallthrough_state_done:                 ; preds = %SwitchWithFallthrough_entry
  %240 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 13
  %241 = load i64, ptr %240, align 4
  %242 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %241, 1
  %243 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %242, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %243

SwitchWithFallthrough_state_unreach:              ; preds = %SwitchWithFallthrough_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_15:                                         ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

SwitchWithFallthrough_state_00_true:              ; preds = %SwitchWithFallthrough_state_00
  %244 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %244, align 1
  br label %SwitchWithFallthrough_state_02

SwitchWithFallthrough_state_00_false:             ; preds = %SwitchWithFallthrough_state_00
  %245 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %245, align 1
  br label %SwitchWithFallthrough_state_06

SwitchWithFallthrough_state_02_init:              ; preds = %SwitchWithFallthrough_state_02
  %246 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %247 = load i64, ptr %246, align 4
  %248 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %249 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %248, align 8
  %250 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %251 = load i64, ptr %250, align 4
  %252 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %253 = load i64, ptr %252, align 4
  %254 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %255 = load i64, ptr %254, align 4
  %256 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %257 = load i64, ptr %256, align 4
  %258 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %259 = load i64, ptr %258, align 4
  %260 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  %261 = load ptr, ptr %260, align 8
  %262 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 0)
  store ptr %262, ptr %62, align 8
  br label %SwitchWithFallthrough_state_02_poll

SwitchWithFallthrough_state_02_poll:              ; preds = %SwitchWithFallthrough_state_02_init, %SwitchWithFallthrough_state_02
  %263 = load ptr, ptr %62, align 8
  %264 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %263, ptr %1)
  %265 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %264, 0
  br i1 %265, label %SwitchWithFallthrough_state_02_ready, label %SwitchWithFallthrough_state_02_pending

SwitchWithFallthrough_state_02_ready:             ; preds = %SwitchWithFallthrough_state_02_poll
  %266 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %264, 1
  %267 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  store i64 %266, ptr %267, align 4
  %268 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %249, ptr %268, align 8
  %269 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  store i64 %251, ptr %269, align 4
  %270 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  store i64 %255, ptr %270, align 4
  %271 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  store i64 %257, ptr %271, align 4
  %272 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  store i64 %259, ptr %272, align 4
  %273 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  store ptr %261, ptr %273, align 8
  store ptr null, ptr %62, align 8
  %274 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %274, align 1
  br label %SwitchWithFallthrough_state_03

SwitchWithFallthrough_state_02_pending:           ; preds = %SwitchWithFallthrough_state_02_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

SwitchWithFallthrough_state_04_init:              ; preds = %SwitchWithFallthrough_state_04
  %275 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %276 = load i64, ptr %275, align 4
  %277 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %278 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %277, align 8
  %279 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %280 = load i64, ptr %279, align 4
  %281 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %282 = load i64, ptr %281, align 4
  %283 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %284 = load i64, ptr %283, align 4
  %285 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %286 = load i64, ptr %285, align 4
  %287 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %288 = load i64, ptr %287, align 4
  %289 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  %290 = load ptr, ptr %289, align 8
  %291 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 10)
  store ptr %291, ptr %102, align 8
  br label %SwitchWithFallthrough_state_04_poll

SwitchWithFallthrough_state_04_poll:              ; preds = %SwitchWithFallthrough_state_04_init, %SwitchWithFallthrough_state_04
  %292 = load ptr, ptr %102, align 8
  %293 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %292, ptr %1)
  %294 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %293, 0
  br i1 %294, label %SwitchWithFallthrough_state_04_ready, label %SwitchWithFallthrough_state_04_pending

SwitchWithFallthrough_state_04_ready:             ; preds = %SwitchWithFallthrough_state_04_poll
  %295 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %293, 1
  %296 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  store i64 %295, ptr %296, align 4
  %297 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %278, ptr %297, align 8
  %298 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  store i64 %280, ptr %298, align 4
  %299 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  store i64 %282, ptr %299, align 4
  %300 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  store i64 %286, ptr %300, align 4
  %301 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  store i64 %288, ptr %301, align 4
  %302 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  store ptr %290, ptr %302, align 8
  store ptr null, ptr %102, align 8
  %303 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %303, align 1
  br label %SwitchWithFallthrough_state_05

SwitchWithFallthrough_state_04_pending:           ; preds = %SwitchWithFallthrough_state_04_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

SwitchWithFallthrough_state_04_true:              ; preds = %SwitchWithFallthrough_state_06
  %304 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %304, align 1
  br label %SwitchWithFallthrough_state_04

SwitchWithFallthrough_state_04_false:             ; preds = %SwitchWithFallthrough_state_06
  %305 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 9, ptr %305, align 1
  br label %SwitchWithFallthrough_state_09

SwitchWithFallthrough_state_07_init:              ; preds = %SwitchWithFallthrough_state_07
  %306 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %307 = load i64, ptr %306, align 4
  %308 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %309 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %308, align 8
  %310 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %311 = load i64, ptr %310, align 4
  %312 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %313 = load i64, ptr %312, align 4
  %314 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %315 = load i64, ptr %314, align 4
  %316 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %317 = load i64, ptr %316, align 4
  %318 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %319 = load i64, ptr %318, align 4
  %320 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  %321 = load ptr, ptr %320, align 8
  %322 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 20)
  store ptr %322, ptr %159, align 8
  br label %SwitchWithFallthrough_state_07_poll

SwitchWithFallthrough_state_07_poll:              ; preds = %SwitchWithFallthrough_state_07_init, %SwitchWithFallthrough_state_07
  %323 = load ptr, ptr %159, align 8
  %324 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %323, ptr %1)
  %325 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %324, 0
  br i1 %325, label %SwitchWithFallthrough_state_07_ready, label %SwitchWithFallthrough_state_07_pending

SwitchWithFallthrough_state_07_ready:             ; preds = %SwitchWithFallthrough_state_07_poll
  %326 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %324, 1
  %327 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  store i64 %326, ptr %327, align 4
  %328 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %309, ptr %328, align 8
  %329 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  store i64 %311, ptr %329, align 4
  %330 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  store i64 %313, ptr %330, align 4
  %331 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  store i64 %315, ptr %331, align 4
  %332 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  store i64 %319, ptr %332, align 4
  %333 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  store ptr %321, ptr %333, align 8
  store ptr null, ptr %159, align 8
  %334 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 8, ptr %334, align 1
  br label %SwitchWithFallthrough_state_08

SwitchWithFallthrough_state_07_pending:           ; preds = %SwitchWithFallthrough_state_07_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

SwitchWithFallthrough_state_06_true:              ; preds = %SwitchWithFallthrough_state_09
  %335 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %335, align 1
  br label %SwitchWithFallthrough_state_07

SwitchWithFallthrough_state_06_false:             ; preds = %SwitchWithFallthrough_state_09
  %336 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 10, ptr %336, align 1
  br label %SwitchWithFallthrough_state_10

SwitchWithFallthrough_state_10_init:              ; preds = %SwitchWithFallthrough_state_10
  %337 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %338 = load i64, ptr %337, align 4
  %339 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %340 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %339, align 8
  %341 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %342 = load i64, ptr %341, align 4
  %343 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %344 = load i64, ptr %343, align 4
  %345 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %346 = load i64, ptr %345, align 4
  %347 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %348 = load i64, ptr %347, align 4
  %349 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %350 = load i64, ptr %349, align 4
  %351 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  %352 = load ptr, ptr %351, align 8
  %353 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 100)
  store ptr %353, ptr %216, align 8
  br label %SwitchWithFallthrough_state_10_poll

SwitchWithFallthrough_state_10_poll:              ; preds = %SwitchWithFallthrough_state_10_init, %SwitchWithFallthrough_state_10
  %354 = load ptr, ptr %216, align 8
  %355 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %354, ptr %1)
  %356 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %355, 0
  br i1 %356, label %SwitchWithFallthrough_state_10_ready, label %SwitchWithFallthrough_state_10_pending

SwitchWithFallthrough_state_10_ready:             ; preds = %SwitchWithFallthrough_state_10_poll
  %357 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %355, 1
  %358 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  store i64 %357, ptr %358, align 4
  %359 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %340, ptr %359, align 8
  %360 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  store i64 %342, ptr %360, align 4
  %361 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  store i64 %344, ptr %361, align 4
  %362 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  store i64 %346, ptr %362, align 4
  %363 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  store i64 %348, ptr %363, align 4
  %364 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  store ptr %352, ptr %364, align 8
  store ptr null, ptr %216, align 8
  %365 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 11, ptr %365, align 1
  br label %SwitchWithFallthrough_state_11

SwitchWithFallthrough_state_10_pending:           ; preds = %SwitchWithFallthrough_state_10_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 120)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %1, i32 0, i32 2
  store { ptr, ptr } zeroinitializer, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %1, i32 0, i32 3
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %1, i32 0, i32 4
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %1, i32 0, i32 5
  store i64 0, ptr %7, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %1, i32 0, i32 6
  store i64 0, ptr %8, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %1, i32 0, i32 7
  store i64 0, ptr %9, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %1, i32 0, i32 8
  store ptr null, ptr %10, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %1, i32 0, i32 9
  store ptr null, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %1, i32 0, i32 10
  store ptr null, ptr %12, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %1, i32 0, i32 11
  store ptr null, ptr %13, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %1, i32 0, i32 12
  store ptr null, ptr %14, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define i64 @"github.com/goplus/llgo/cl/_testpull/complex.(*TwoLoops$State).Await"(ptr %0) {
_llgo_0:
  ret i64 undef
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/complex.(*TwoLoops$State).Poll"(ptr %0, ptr %1) {
TwoLoops_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %TwoLoops_state_unreach [
    i8 0, label %TwoLoops_state_00
    i8 1, label %TwoLoops_state_01
    i8 2, label %TwoLoops_state_02
    i8 3, label %TwoLoops_state_03
    i8 4, label %TwoLoops_state_04
    i8 5, label %TwoLoops_state_05
    i8 6, label %TwoLoops_state_06
    i8 7, label %TwoLoops_state_07
    i8 8, label %TwoLoops_state_08
    i8 9, label %TwoLoops_state_done
  ]

TwoLoops_state_00:                                ; preds = %TwoLoops_entry
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  %11 = load i1, ptr %10, align 1
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 7
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 8
  %19 = load i64, ptr %18, align 4
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 9
  %21 = load i1, ptr %20, align 1
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 10
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 11
  %25 = load i64, ptr %24, align 4
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 12
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  store i64 0, ptr %28, align 4
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  store i64 0, ptr %29, align 4
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %30, align 1
  br label %TwoLoops_state_01

TwoLoops_state_01:                                ; preds = %TwoLoops_state_03, %TwoLoops_state_00, %TwoLoops_entry
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 1
  %32 = load i64, ptr %31, align 4
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  %34 = load i64, ptr %33, align 4
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  %36 = load i64, ptr %35, align 4
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 5
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  %40 = load i64, ptr %39, align 4
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 7
  %42 = load i64, ptr %41, align 4
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 8
  %44 = load i64, ptr %43, align 4
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 9
  %46 = load i1, ptr %45, align 1
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 10
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 11
  %50 = load i64, ptr %49, align 4
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 12
  %52 = load i64, ptr %51, align 4
  %53 = icmp slt i64 %36, %32
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  store i1 %53, ptr %54, align 1
  br i1 %53, label %TwoLoops_state_01_true, label %TwoLoops_state_01_false

TwoLoops_state_02:                                ; preds = %TwoLoops_state_01_true, %TwoLoops_entry
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 1
  %56 = load i64, ptr %55, align 4
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  %58 = load i64, ptr %57, align 4
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  %60 = load i64, ptr %59, align 4
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  %62 = load i1, ptr %61, align 1
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  %64 = load i64, ptr %63, align 4
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 7
  %66 = load i64, ptr %65, align 4
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 8
  %68 = load i64, ptr %67, align 4
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 9
  %70 = load i1, ptr %69, align 1
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 10
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 11
  %74 = load i64, ptr %73, align 4
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 12
  %76 = load i64, ptr %75, align 4
  %77 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 13
  %78 = load ptr, ptr %77, align 8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %TwoLoops_state_02_init, label %TwoLoops_state_02_poll

TwoLoops_state_03:                                ; preds = %TwoLoops_state_02_ready, %TwoLoops_entry
  %80 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 1
  %81 = load i64, ptr %80, align 4
  %82 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  %83 = load i64, ptr %82, align 4
  %84 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  %85 = load i64, ptr %84, align 4
  %86 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  %87 = load i1, ptr %86, align 1
  %88 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  %89 = load i64, ptr %88, align 4
  %90 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 7
  %91 = load i64, ptr %90, align 4
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 8
  %93 = load i64, ptr %92, align 4
  %94 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 9
  %95 = load i1, ptr %94, align 1
  %96 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 10
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 11
  %99 = load i64, ptr %98, align 4
  %100 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 12
  %101 = load i64, ptr %100, align 4
  %102 = add i64 %83, %89
  %103 = add i64 %85, 1
  %104 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  store i64 %102, ptr %104, align 4
  %105 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  store i64 %103, ptr %105, align 4
  %106 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %103)
  %107 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 5
  store ptr %106, ptr %107, align 8
  %108 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  store i64 %89, ptr %108, align 4
  %109 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %109, align 1
  br label %TwoLoops_state_01

TwoLoops_state_04:                                ; preds = %TwoLoops_state_01_false, %TwoLoops_entry
  %110 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 1
  %111 = load i64, ptr %110, align 4
  %112 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  %113 = load i64, ptr %112, align 4
  %114 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  %115 = load i64, ptr %114, align 4
  %116 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  %117 = load i1, ptr %116, align 1
  %118 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 5
  %119 = load ptr, ptr %118, align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  %121 = load i64, ptr %120, align 4
  %122 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 7
  %123 = load i64, ptr %122, align 4
  %124 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 8
  %125 = load i64, ptr %124, align 4
  %126 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 9
  %127 = load i1, ptr %126, align 1
  %128 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 10
  %129 = load ptr, ptr %128, align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 11
  %131 = load i64, ptr %130, align 4
  %132 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 12
  %133 = load i64, ptr %132, align 4
  %134 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 7
  store i64 0, ptr %134, align 4
  %135 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 8
  store i64 0, ptr %135, align 4
  %136 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %136, align 1
  br label %TwoLoops_state_05

TwoLoops_state_05:                                ; preds = %TwoLoops_state_07, %TwoLoops_state_04, %TwoLoops_entry
  %137 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 1
  %138 = load i64, ptr %137, align 4
  %139 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  %140 = load i64, ptr %139, align 4
  %141 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  %142 = load i64, ptr %141, align 4
  %143 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  %144 = load i1, ptr %143, align 1
  %145 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 5
  %146 = load ptr, ptr %145, align 8
  %147 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  %148 = load i64, ptr %147, align 4
  %149 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 7
  %150 = load i64, ptr %149, align 4
  %151 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 8
  %152 = load i64, ptr %151, align 4
  %153 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 10
  %154 = load ptr, ptr %153, align 8
  %155 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 11
  %156 = load i64, ptr %155, align 4
  %157 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 12
  %158 = load i64, ptr %157, align 4
  %159 = icmp slt i64 %152, %138
  %160 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 9
  store i1 %159, ptr %160, align 1
  br i1 %159, label %TwoLoops_state_04_true, label %TwoLoops_state_04_false

TwoLoops_state_06:                                ; preds = %TwoLoops_state_04_true, %TwoLoops_entry
  %161 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 1
  %162 = load i64, ptr %161, align 4
  %163 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  %164 = load i64, ptr %163, align 4
  %165 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  %166 = load i64, ptr %165, align 4
  %167 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  %168 = load i1, ptr %167, align 1
  %169 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 5
  %170 = load ptr, ptr %169, align 8
  %171 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  %172 = load i64, ptr %171, align 4
  %173 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 7
  %174 = load i64, ptr %173, align 4
  %175 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 8
  %176 = load i64, ptr %175, align 4
  %177 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 9
  %178 = load i1, ptr %177, align 1
  %179 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 12
  %180 = load i64, ptr %179, align 4
  %181 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 14
  %182 = load ptr, ptr %181, align 8
  %183 = icmp eq ptr %182, null
  br i1 %183, label %TwoLoops_state_06_init, label %TwoLoops_state_06_poll

TwoLoops_state_07:                                ; preds = %TwoLoops_state_06_ready, %TwoLoops_entry
  %184 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 1
  %185 = load i64, ptr %184, align 4
  %186 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  %187 = load i64, ptr %186, align 4
  %188 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  %189 = load i64, ptr %188, align 4
  %190 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  %191 = load i1, ptr %190, align 1
  %192 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 5
  %193 = load ptr, ptr %192, align 8
  %194 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  %195 = load i64, ptr %194, align 4
  %196 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 7
  %197 = load i64, ptr %196, align 4
  %198 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 8
  %199 = load i64, ptr %198, align 4
  %200 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 9
  %201 = load i1, ptr %200, align 1
  %202 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 12
  %203 = load i64, ptr %202, align 4
  %204 = add i64 %197, %203
  %205 = add i64 %199, 1
  %206 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 7
  store i64 %204, ptr %206, align 4
  %207 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 8
  store i64 %205, ptr %207, align 4
  %208 = mul i64 %205, 2
  %209 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %208)
  %210 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 10
  store ptr %209, ptr %210, align 8
  %211 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 11
  store i64 %208, ptr %211, align 4
  %212 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 12
  store i64 %203, ptr %212, align 4
  %213 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %213, align 1
  br label %TwoLoops_state_05

TwoLoops_state_08:                                ; preds = %TwoLoops_state_04_false, %TwoLoops_entry
  %214 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 1
  %215 = load i64, ptr %214, align 4
  %216 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  %217 = load i64, ptr %216, align 4
  %218 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  %219 = load i64, ptr %218, align 4
  %220 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  %221 = load i1, ptr %220, align 1
  %222 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 5
  %223 = load ptr, ptr %222, align 8
  %224 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  %225 = load i64, ptr %224, align 4
  %226 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 7
  %227 = load i64, ptr %226, align 4
  %228 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 8
  %229 = load i64, ptr %228, align 4
  %230 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 9
  %231 = load i1, ptr %230, align 1
  %232 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 10
  %233 = load ptr, ptr %232, align 8
  %234 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 11
  %235 = load i64, ptr %234, align 4
  %236 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 12
  %237 = load i64, ptr %236, align 4
  %238 = add i64 %217, %227
  %239 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %238)
  %240 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %241 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %240, 0
  %242 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %241, ptr %239, 1
  %243 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 15
  store i64 %238, ptr %243, align 4
  %244 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 0
  store i8 9, ptr %244, align 1
  %245 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 15
  %246 = load i64, ptr %245, align 4
  %247 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %246, 1
  %248 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %247, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %248

TwoLoops_state_done:                              ; preds = %TwoLoops_entry
  %249 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 15
  %250 = load i64, ptr %249, align 4
  %251 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %250, 1
  %252 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %251, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %252

TwoLoops_state_unreach:                           ; preds = %TwoLoops_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_12:                                         ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

TwoLoops_state_01_true:                           ; preds = %TwoLoops_state_01
  %253 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  store i1 %53, ptr %253, align 1
  %254 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %254, align 1
  br label %TwoLoops_state_02

TwoLoops_state_01_false:                          ; preds = %TwoLoops_state_01
  %255 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  store i1 %53, ptr %255, align 1
  %256 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %256, align 1
  br label %TwoLoops_state_04

TwoLoops_state_02_init:                           ; preds = %TwoLoops_state_02
  %257 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 1
  %258 = load i64, ptr %257, align 4
  %259 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  %260 = load i64, ptr %259, align 4
  %261 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  %262 = load i64, ptr %261, align 4
  %263 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  %264 = load i1, ptr %263, align 1
  %265 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  %266 = load i64, ptr %265, align 4
  %267 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 7
  %268 = load i64, ptr %267, align 4
  %269 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 8
  %270 = load i64, ptr %269, align 4
  %271 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 9
  %272 = load i1, ptr %271, align 1
  %273 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 10
  %274 = load ptr, ptr %273, align 8
  %275 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 11
  %276 = load i64, ptr %275, align 4
  %277 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 12
  %278 = load i64, ptr %277, align 4
  %279 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %262)
  %280 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 5
  store ptr %279, ptr %280, align 8
  store ptr %279, ptr %77, align 8
  br label %TwoLoops_state_02_poll

TwoLoops_state_02_poll:                           ; preds = %TwoLoops_state_02_init, %TwoLoops_state_02
  %281 = load ptr, ptr %77, align 8
  %282 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %281, ptr %1)
  %283 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %282, 0
  br i1 %283, label %TwoLoops_state_02_ready, label %TwoLoops_state_02_pending

TwoLoops_state_02_ready:                          ; preds = %TwoLoops_state_02_poll
  %284 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %282, 1
  %285 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  store i64 %284, ptr %285, align 4
  %286 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  store i64 %260, ptr %286, align 4
  %287 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  store i64 %262, ptr %287, align 4
  %288 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  store i1 %264, ptr %288, align 1
  %289 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 5
  store ptr %279, ptr %289, align 8
  %290 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 7
  store i64 %268, ptr %290, align 4
  %291 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 8
  store i64 %270, ptr %291, align 4
  %292 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 9
  store i1 %272, ptr %292, align 1
  %293 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 10
  store ptr %274, ptr %293, align 8
  %294 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 11
  store i64 %276, ptr %294, align 4
  %295 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 12
  store i64 %278, ptr %295, align 4
  store ptr null, ptr %77, align 8
  %296 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %296, align 1
  br label %TwoLoops_state_03

TwoLoops_state_02_pending:                        ; preds = %TwoLoops_state_02_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

TwoLoops_state_04_true:                           ; preds = %TwoLoops_state_05
  %297 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 9
  store i1 %159, ptr %297, align 1
  %298 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %298, align 1
  br label %TwoLoops_state_06

TwoLoops_state_04_false:                          ; preds = %TwoLoops_state_05
  %299 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 9
  store i1 %159, ptr %299, align 1
  %300 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 0
  store i8 8, ptr %300, align 1
  br label %TwoLoops_state_08

TwoLoops_state_06_init:                           ; preds = %TwoLoops_state_06
  %301 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 1
  %302 = load i64, ptr %301, align 4
  %303 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  %304 = load i64, ptr %303, align 4
  %305 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  %306 = load i64, ptr %305, align 4
  %307 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  %308 = load i1, ptr %307, align 1
  %309 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 5
  %310 = load ptr, ptr %309, align 8
  %311 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  %312 = load i64, ptr %311, align 4
  %313 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 7
  %314 = load i64, ptr %313, align 4
  %315 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 8
  %316 = load i64, ptr %315, align 4
  %317 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 9
  %318 = load i1, ptr %317, align 1
  %319 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 12
  %320 = load i64, ptr %319, align 4
  %321 = mul i64 %316, 2
  %322 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 11
  store i64 %321, ptr %322, align 4
  %323 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %321)
  %324 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 10
  store ptr %323, ptr %324, align 8
  store ptr %323, ptr %181, align 8
  br label %TwoLoops_state_06_poll

TwoLoops_state_06_poll:                           ; preds = %TwoLoops_state_06_init, %TwoLoops_state_06
  %325 = load ptr, ptr %181, align 8
  %326 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %325, ptr %1)
  %327 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %326, 0
  br i1 %327, label %TwoLoops_state_06_ready, label %TwoLoops_state_06_pending

TwoLoops_state_06_ready:                          ; preds = %TwoLoops_state_06_poll
  %328 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %326, 1
  %329 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 12
  store i64 %328, ptr %329, align 4
  %330 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  store i64 %304, ptr %330, align 4
  %331 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  store i64 %306, ptr %331, align 4
  %332 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  store i1 %308, ptr %332, align 1
  %333 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 5
  store ptr %310, ptr %333, align 8
  %334 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  store i64 %312, ptr %334, align 4
  %335 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 7
  store i64 %314, ptr %335, align 4
  %336 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 8
  store i64 %316, ptr %336, align 4
  %337 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 9
  store i1 %318, ptr %337, align 1
  %338 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 10
  store ptr %323, ptr %338, align 8
  %339 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 11
  store i64 %321, ptr %339, align 4
  store ptr null, ptr %181, align 8
  %340 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %340, align 1
  br label %TwoLoops_state_07

TwoLoops_state_06_pending:                        ; preds = %TwoLoops_state_06_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 128)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %1, i32 0, i32 3
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %1, i32 0, i32 4
  store i1 false, ptr %6, align 1
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %1, i32 0, i32 5
  store ptr null, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %1, i32 0, i32 6
  store i64 0, ptr %8, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %1, i32 0, i32 7
  store i64 0, ptr %9, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %1, i32 0, i32 8
  store i64 0, ptr %10, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %1, i32 0, i32 9
  store i1 false, ptr %11, align 1
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %1, i32 0, i32 10
  store ptr null, ptr %12, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %1, i32 0, i32 11
  store i64 0, ptr %13, align 4
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %1, i32 0, i32 12
  store i64 0, ptr %14, align 4
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %1, i32 0, i32 13
  store ptr null, ptr %15, align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %1, i32 0, i32 14
  store ptr null, ptr %16, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$Concrete"(i64 %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define void @"github.com/goplus/llgo/cl/_testpull/complex.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testpull/complex.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testpull/complex.init$guard", align 1
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
