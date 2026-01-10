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
%"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State" = type { i8, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface", i64, i64, i64, ptr, ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1, i1, i64 }
%"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State" = type { i8, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface", i64, i64, i64, i1, i64, i1, i1, ptr, i64, ptr, ptr, i64 }
%"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State" = type { i8, i64, i64, i64, i1, ptr, i64, ptr, i64 }
%"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State" = type { i8, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, i64 }
%"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State" = type { i8, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface", i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i64 }
%"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State" = type { i8, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface", i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i64 }
%"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State" = type { i8, i64, i64, i64, i1, ptr, i64, i64, i64, i1, ptr, i64, i64, ptr, ptr, i64 }

@0 = private unnamed_addr constant [13 x i8] c"ChainedAwaits", align 1
@1 = private unnamed_addr constant [8 x i8] c"dispatch", align 1
@2 = private unnamed_addr constant [5 x i8] c"enter", align 1
@3 = private unnamed_addr constant [7 x i8] c"pending", align 1
@4 = private unnamed_addr constant [5 x i8] c"ready", align 1
@"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -103283099, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Await", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Poll", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Poll" }] }, align 8
@5 = private unnamed_addr constant [22 x i8] c"async.ReadyFuture[int]", align 1
@"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1814719306, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@6 = private unnamed_addr constant [28 x i8] c"github.com/goplus/llgo/async", align 1
@7 = private unnamed_addr constant [5 x i8] c"value", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 3 }, ptr @"*_llgo_int" }, align 8
@8 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"github.com/goplus/llgo/cl/_testpull/complex.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
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
@"_llgo_github.com/goplus/llgo/async.Context" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 0, i32 29200871, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Context" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 13 }, ptr @"*_llgo_github.com/goplus/llgo/async.Context" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$Re9uCNpaPdvqJtnZYej5NZ8aMgZjb-_ftN8ogfRqy78$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@14 = private unnamed_addr constant [5 x i8] c"Waker", align 1
@"_llgo_github.com/goplus/llgo/async.Waker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -2133419533, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 11 }, ptr @"*_llgo_github.com/goplus/llgo/async.Waker" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$5udCHZ6xl-fBE2F9apjWV2qrxMb4_QYfwdoy0QD1D8c$imethods", i64 1, i64 1 } }, align 8
@15 = private unnamed_addr constant [11 x i8] c"async.Waker", align 1
@"*_llgo_github.com/goplus/llgo/async.Waker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 504672852, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 11 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Waker" }, align 8
@16 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testpull/complex", align 1
@17 = private unnamed_addr constant [4 x i8] c"Wake", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@18 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@"_llgo_iface$5udCHZ6xl-fBE2F9apjWV2qrxMb4_QYfwdoy0QD1D8c$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 4 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }], align 8
@19 = private unnamed_addr constant [8 x i8] c"hasWaker", align 1
@_llgo_bool = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 554183389, i8 12, i8 1, i8 1, i8 33, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 4 }, ptr @"*_llgo_bool" }, align 8
@20 = private unnamed_addr constant [4 x i8] c"bool", align 1
@"*_llgo_bool" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1896950390, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 4 }, ptr null }, ptr @_llgo_bool }, align 8
@"github.com/goplus/llgo/cl/_testpull/complex.struct$Re9uCNpaPdvqJtnZYej5NZ8aMgZjb-_ftN8ogfRqy78$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/async.Waker", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 8 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/async.Context"], align 8
@"_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 801809575, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 15 }, ptr @"*_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$M9E5HRdqyc11Zqvq07yhy6frK_fAyRGIc35bZKl9nrs$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error", ptr @"github.com/goplus/llgo/async.Poll[int].Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError", ptr @"github.com/goplus/llgo/async.Poll[int].HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.Poll[int].IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.Poll[int].Value" }] }, align 8
@21 = private unnamed_addr constant [15 x i8] c"async.Poll[int]", align 1
@"*_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -920093333, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 15 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value" }] }, align 8
@22 = private unnamed_addr constant [5 x i8] c"Error", align 1
@"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1398528794, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 19 }, ptr @"*_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8$out", i64 1, i64 1 } }, align 8
@23 = private unnamed_addr constant [19 x i8] c"func() interface {}", align 1
@"*_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1160547289, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 19 }, ptr null }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" }, align 8
@_llgo_any = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1376530322, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 12 }, ptr @"*_llgo_any" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
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
@"github.com/goplus/llgo/cl/_testpull/complex.struct$M9E5HRdqyc11Zqvq07yhy6frK_fAyRGIc35bZKl9nrs$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @_llgo_bool, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 3 }, ptr @_llgo_any, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]"], align 8
@"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 968294533, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 50 }, ptr @"*_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0$imethods", i64 1, i64 1 } }, align 8
@30 = private unnamed_addr constant [50 x i8] c"interface { Poll(*async.Context) async.Poll[int] }", align 1
@"*_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1655281012, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 50 }, ptr null }, ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" }, align 8
@"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }], align 8
@31 = private unnamed_addr constant [4 x i8] c"done", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -250122641, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 27 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*ChainedAwaits$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*ChainedAwaits$State).Poll" }] }, align 8
@32 = private unnamed_addr constant [27 x i8] c"complex.ChainedAwaits$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 112, i64 96, i32 1945761659, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 27 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$gmTfi8jVVjV5pTBqyJ2nuRHRhfywKB28vR14R-veOXo$fields", i64 14, i64 14 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@33 = private unnamed_addr constant [5 x i8] c"state", align 1
@_llgo_int8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 1444672578, i8 12, i8 1, i8 1, i8 35, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @"*_llgo_int8" }, align 8
@34 = private unnamed_addr constant [4 x i8] c"int8", align 1
@"*_llgo_int8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1399554408, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr null }, ptr @_llgo_int8 }, align 8
@35 = private unnamed_addr constant [6 x i8] c"param0", align 1
@36 = private unnamed_addr constant [4 x i8] c"var0", align 1
@37 = private unnamed_addr constant [4 x i8] c"var1", align 1
@38 = private unnamed_addr constant [4 x i8] c"var2", align 1
@39 = private unnamed_addr constant [4 x i8] c"var3", align 1
@40 = private unnamed_addr constant [4 x i8] c"var4", align 1
@41 = private unnamed_addr constant [4 x i8] c"var5", align 1
@42 = private unnamed_addr constant [4 x i8] c"var6", align 1
@43 = private unnamed_addr constant [4 x i8] c"sub0", align 1
@"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 964362133, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll" }] }, align 8
@44 = private unnamed_addr constant [22 x i8] c"async.AsyncFuture[int]", align 1
@"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 0, i32 1769159236, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@45 = private unnamed_addr constant [2 x i8] c"fn", align 1
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1213993089, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 87 }, ptr @"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields", i64 2, i64 2 } }, align 8
@46 = private unnamed_addr constant [87 x i8] c"struct { $f func(struct { $f func(int); $data unsafe.Pointer }); $data unsafe.Pointer }", align 1
@"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1666834553, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 87 }, ptr null }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, align 8
@47 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2009615728, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 51 }, ptr @"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@48 = private unnamed_addr constant [51 x i8] c"func(struct { $f func(int); $data unsafe.Pointer })", align 1
@"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1512208703, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 51 }, ptr null }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1556934939, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 45 }, ptr @"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields", i64 2, i64 2 } }, align 8
@49 = private unnamed_addr constant [45 x i8] c"struct { $f func(int); $data unsafe.Pointer }", align 1
@"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 364872269, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 45 }, ptr null }, ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -637187458, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 9 }, ptr @"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@50 = private unnamed_addr constant [9 x i8] c"func(int)", align 1
@"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 735356155, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 9 }, ptr null }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@51 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@52 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 2 }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM"], align 8
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 2 }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@53 = private unnamed_addr constant [7 x i8] c"started", align 1
@"github.com/goplus/llgo/cl/_testpull/complex.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 2 }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 7 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @_llgo_bool, i64 17, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@54 = private unnamed_addr constant [4 x i8] c"sub1", align 1
@55 = private unnamed_addr constant [4 x i8] c"sub2", align 1
@56 = private unnamed_addr constant [4 x i8] c"sub3", align 1
@57 = private unnamed_addr constant [11 x i8] c"resultValue", align 1
@"github.com/goplus/llgo/cl/_testpull/complex.struct$gmTfi8jVVjV5pTBqyJ2nuRHRhfywKB28vR14R-veOXo$fields" = weak_odr constant [14 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 4 }, ptr @_llgo_int, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 4 }, ptr @_llgo_int, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 11 }, ptr @_llgo_int, i64 104, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@58 = private unnamed_addr constant [14 x i8] c"ClosureCapture", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -967649622, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 28 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*ClosureCapture$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*ClosureCapture$State).Poll" }] }, align 8
@59 = private unnamed_addr constant [28 x i8] c"complex.ClosureCapture$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 48, i32 1492750809, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 28 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$bmjjY3YjvOdlTdD91ol43FDzsybwKJb095PEBP4TI5Y$fields", i64 8, i64 8 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/complex.struct$bmjjY3YjvOdlTdD91ol43FDzsybwKJb095PEBP4TI5Y$fields" = weak_odr constant [8 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 11 }, ptr @_llgo_int, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@60 = private unnamed_addr constant [16 x i8] c"ConditionalChain", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1236880448, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 30 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*ConditionalChain$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*ConditionalChain$State).Poll" }] }, align 8
@61 = private unnamed_addr constant [30 x i8] c"complex.ConditionalChain$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 128, i64 112, i32 -1742836718, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 30 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$8nhKFVTvwj5bp0fpiZBs9tktflzeYUT7OKRn5SlUHZo$fields", i64 15, i64 15 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"_llgo_github.com/goplus/llgo/async.Future[int]" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1503177044, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 17 }, ptr @"*_llgo_github.com/goplus/llgo/async.Future[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0$imethods", i64 1, i64 1 } }, align 8
@62 = private unnamed_addr constant [17 x i8] c"async.Future[int]", align 1
@"*_llgo_github.com/goplus/llgo/async.Future[int]" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 934108082, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 17 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]" }, align 8
@63 = private unnamed_addr constant [4 x i8] c"var7", align 1
@64 = private unnamed_addr constant [4 x i8] c"var8", align 1
@"github.com/goplus/llgo/cl/_testpull/complex.struct$8nhKFVTvwj5bp0fpiZBs9tktflzeYUT7OKRn5SlUHZo$fields" = weak_odr constant [15 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @_llgo_int, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 4 }, ptr @_llgo_int, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 4 }, ptr @_llgo_int, i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]", i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 104, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 11 }, ptr @_llgo_int, i64 120, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@65 = private unnamed_addr constant [14 x i8] c"DeferWithAwait", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1433977907, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 28 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*DeferWithAwait$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*DeferWithAwait$State).Poll" }] }, align 8
@66 = private unnamed_addr constant [28 x i8] c"complex.DeferWithAwait$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 112, i64 80, i32 -1783038012, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 28 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$-yLePM_7qZ1PFbqHcj-OODYRTlfxJte9bUif1tbBJj0$fields", i64 13, i64 13 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@67 = private unnamed_addr constant [9 x i8] c"deferHead", align 1
@68 = private unnamed_addr constant [10 x i8] c"panicValue", align 1
@69 = private unnamed_addr constant [11 x i8] c"isPanicking", align 1
@70 = private unnamed_addr constant [9 x i8] c"recovered", align 1
@"github.com/goplus/llgo/cl/_testpull/complex.struct$-yLePM_7qZ1PFbqHcj-OODYRTlfxJte9bUif1tbBJj0$fields" = weak_odr constant [13 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 9 }, ptr @_llgo_Pointer, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 10 }, ptr @_llgo_any, i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 11 }, ptr @_llgo_bool, i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 9 }, ptr @_llgo_bool, i64 97, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 11 }, ptr @_llgo_int, i64 104, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@71 = private unnamed_addr constant [17 x i8] c"LoopBreakContinue", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -712734537, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 31 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*LoopBreakContinue$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*LoopBreakContinue$State).Poll" }] }, align 8
@72 = private unnamed_addr constant [31 x i8] c"complex.LoopBreakContinue$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 120, i64 104, i32 1831828838, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 31 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$6bcPSYnEJ2eqpnW8ZNCNibBi4mLP1KkZckiqaToYPr0$fields", i64 15, i64 15 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@73 = private unnamed_addr constant [4 x i8] c"var9", align 1
@74 = private unnamed_addr constant [5 x i8] c"var10", align 1
@"github.com/goplus/llgo/cl/_testpull/complex.struct$6bcPSYnEJ2eqpnW8ZNCNibBi4mLP1KkZckiqaToYPr0$fields" = weak_odr constant [15 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @_llgo_bool, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 4 }, ptr @_llgo_int, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 4 }, ptr @_llgo_bool, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 4 }, ptr @_llgo_bool, i64 73, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 4 }, ptr @_llgo_int, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 5 }, ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]", i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 104, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 11 }, ptr @_llgo_int, i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@75 = private unnamed_addr constant [19 x i8] c"LoopWithAccumulator", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1661116055, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 33 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*LoopWithAccumulator$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*LoopWithAccumulator$State).Poll" }] }, align 8
@76 = private unnamed_addr constant [33 x i8] c"complex.LoopWithAccumulator$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 72, i64 56, i32 355462596, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 33 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$VkFWRBwB1JBVPAI58LHbk1BLBO4g_uGoDU0zThnvljE$fields", i64 9, i64 9 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/complex.struct$VkFWRBwB1JBVPAI58LHbk1BLBO4g_uGoDU0zThnvljE$fields" = weak_odr constant [9 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @_llgo_bool, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 11 }, ptr @_llgo_int, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@77 = private unnamed_addr constant [19 x i8] c"MultipleReturnPaths", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1782583083, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 33 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*MultipleReturnPaths$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*MultipleReturnPaths$State).Poll" }] }, align 8
@78 = private unnamed_addr constant [33 x i8] c"complex.MultipleReturnPaths$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 96, i64 80, i32 -1753379399, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 33 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$CXJ83Nu3h9zebD3FPSubjsnxKbMPV-XVP2N0xlx0BL4$fields", i64 12, i64 12 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/complex.struct$CXJ83Nu3h9zebD3FPSubjsnxKbMPV-XVP2N0xlx0BL4$fields" = weak_odr constant [12 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 4 }, ptr @_llgo_int, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 11 }, ptr @_llgo_int, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@79 = private unnamed_addr constant [16 x i8] c"NestedConditions", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1311936890, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 30 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*NestedConditions$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*NestedConditions$State).Poll" }] }, align 8
@80 = private unnamed_addr constant [30 x i8] c"complex.NestedConditions$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 136, i64 120, i32 1405840390, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 30 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$r0eBlrrFifMc56YEekjU236ylM-dZmVcgSXztG9LOmQ$fields", i64 16, i64 16 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/complex.struct$r0eBlrrFifMc56YEekjU236ylM-dZmVcgSXztG9LOmQ$fields" = weak_odr constant [16 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @_llgo_int, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 4 }, ptr @_llgo_int, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 4 }, ptr @_llgo_int, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 4 }, ptr @_llgo_int, i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]", i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 104, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 120, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 11 }, ptr @_llgo_int, i64 128, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@81 = private unnamed_addr constant [21 x i8] c"SwitchWithFallthrough", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1711137240, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 35 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*SwitchWithFallthrough$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*SwitchWithFallthrough$State).Poll" }] }, align 8
@82 = private unnamed_addr constant [35 x i8] c"complex.SwitchWithFallthrough$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 120, i64 104, i32 184084660, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 35 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$yds4QoHNc6CZhC6kQqmjng8lnKR9tNfoZUb3DTp_DNQ$fields", i64 14, i64 14 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/complex.struct$yds4QoHNc6CZhC6kQqmjng8lnKR9tNfoZUb3DTp_DNQ$fields" = weak_odr constant [14 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @_llgo_int, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 4 }, ptr @_llgo_int, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 104, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 11 }, ptr @_llgo_int, i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@83 = private unnamed_addr constant [8 x i8] c"TwoLoops", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 604964660, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @84, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*TwoLoops$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*TwoLoops$State).Poll" }] }, align 8
@84 = private unnamed_addr constant [22 x i8] c"complex.TwoLoops$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 128, i64 112, i32 -1200167787, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @84, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$JgIdJ2r-spZ4h4wBXnKBZePLJkIcI_WUYhpy2dMSknA$fields", i64 16, i64 16 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/complex.struct$JgIdJ2r-spZ4h4wBXnKBZePLJkIcI_WUYhpy2dMSknA$fields" = weak_odr constant [16 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @_llgo_bool, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 4 }, ptr @_llgo_int, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 4 }, ptr @_llgo_int, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 4 }, ptr @_llgo_bool, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 4 }, ptr @_llgo_int, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 5 }, ptr @_llgo_int, i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 104, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 11 }, ptr @_llgo_int, i64 120, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/complex.init$guard" = global i1 false, align 1
@85 = private unnamed_addr constant [45 x i8] c"Await() should be transformed by the compiler", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 6 }, ptr @"*_llgo_string" }, align 8
@86 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 6 }, ptr null }, ptr @_llgo_string }, align 8

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/complex.(*ChainedAwaits$State).Poll"(ptr %0, ptr %1) {
ChainedAwaits_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  %4 = sext i8 %3 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 }, i64 %4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
  switch i8 %3, label %ChainedAwaits_state_unreach [
    i8 0, label %ChainedAwaits_state_00
    i8 1, label %ChainedAwaits_state_01
    i8 2, label %ChainedAwaits_state_02
    i8 3, label %ChainedAwaits_state_03
    i8 4, label %ChainedAwaits_state_04
    i8 5, label %ChainedAwaits_state_done
  ]

ChainedAwaits_state_00:                           ; preds = %ChainedAwaits_entry
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 2
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 4
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 6
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 8
  %14 = load i64, ptr %13, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 9
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %ChainedAwaits_state_00_init, label %ChainedAwaits_state_00_poll

ChainedAwaits_state_01:                           ; preds = %ChainedAwaits_state_00_ready, %ChainedAwaits_entry
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 1
  %19 = load i64, ptr %18, align 4
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 2
  %21 = load i64, ptr %20, align 4
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 4
  %23 = load i64, ptr %22, align 4
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 6
  %25 = load i64, ptr %24, align 4
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 8
  %27 = load i64, ptr %26, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 10
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %ChainedAwaits_state_01_init, label %ChainedAwaits_state_01_poll

ChainedAwaits_state_02:                           ; preds = %ChainedAwaits_state_01_ready, %ChainedAwaits_entry
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 1
  %32 = load i64, ptr %31, align 4
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 2
  %34 = load i64, ptr %33, align 4
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 4
  %36 = load i64, ptr %35, align 4
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 6
  %38 = load i64, ptr %37, align 4
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 8
  %40 = load i64, ptr %39, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 11
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %ChainedAwaits_state_02_init, label %ChainedAwaits_state_02_poll

ChainedAwaits_state_03:                           ; preds = %ChainedAwaits_state_02_ready, %ChainedAwaits_entry
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 1
  %45 = load i64, ptr %44, align 4
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 2
  %47 = load i64, ptr %46, align 4
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 4
  %49 = load i64, ptr %48, align 4
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 6
  %51 = load i64, ptr %50, align 4
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 8
  %53 = load i64, ptr %52, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 12
  %55 = load ptr, ptr %54, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %ChainedAwaits_state_03_init, label %ChainedAwaits_state_03_poll

ChainedAwaits_state_04:                           ; preds = %ChainedAwaits_state_03_ready, %ChainedAwaits_entry
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 1
  %58 = load i64, ptr %57, align 4
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 2
  %60 = load i64, ptr %59, align 4
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 4
  %62 = load i64, ptr %61, align 4
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 6
  %64 = load i64, ptr %63, align 4
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 8
  %66 = load i64, ptr %65, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 8
  %68 = load i64, ptr %67, align 4
  %69 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %66)
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %71 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %70, 0
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %71, ptr %69, 1
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 13
  store i64 %68, ptr %73, align 4
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %74, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 13
  %76 = load i64, ptr %75, align 4
  %77 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %76, 1
  %78 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %77, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %78

ChainedAwaits_state_done:                         ; preds = %ChainedAwaits_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, i1 false, i1 true)
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 13
  %80 = load i64, ptr %79, align 4
  %81 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %80, 1
  %82 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %81, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %82

ChainedAwaits_state_unreach:                      ; preds = %ChainedAwaits_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_8:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

ChainedAwaits_state_00_init:                      ; preds = %ChainedAwaits_state_00
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 1
  %84 = load i64, ptr %83, align 4
  %85 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 2
  %86 = load i64, ptr %85, align 4
  %87 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 4
  %88 = load i64, ptr %87, align 4
  %89 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 6
  %90 = load i64, ptr %89, align 4
  %91 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 8
  %92 = load i64, ptr %91, align 4
  %93 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %84)
  store ptr %93, ptr %15, align 8
  br label %ChainedAwaits_state_00_poll

ChainedAwaits_state_00_poll:                      ; preds = %ChainedAwaits_state_00_init, %ChainedAwaits_state_00
  %94 = load ptr, ptr %15, align 8
  %95 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %94, ptr %1)
  %96 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %95, 0
  br i1 %96, label %ChainedAwaits_state_00_ready, label %ChainedAwaits_state_00_pending

ChainedAwaits_state_00_ready:                     ; preds = %ChainedAwaits_state_00_poll
  %97 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %95, 1
  %98 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 2
  store i64 %97, ptr %98, align 4
  store ptr null, ptr %15, align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %99, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %ChainedAwaits_state_01

ChainedAwaits_state_00_pending:                   ; preds = %ChainedAwaits_state_00_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

ChainedAwaits_state_01_init:                      ; preds = %ChainedAwaits_state_01
  %100 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 1
  %101 = load i64, ptr %100, align 4
  %102 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 2
  %103 = load i64, ptr %102, align 4
  %104 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 4
  %105 = load i64, ptr %104, align 4
  %106 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 6
  %107 = load i64, ptr %106, align 4
  %108 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 8
  %109 = load i64, ptr %108, align 4
  %110 = mul i64 %103, 2
  %111 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 3
  store i64 %110, ptr %111, align 4
  %112 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %110)
  store ptr %112, ptr %28, align 8
  br label %ChainedAwaits_state_01_poll

ChainedAwaits_state_01_poll:                      ; preds = %ChainedAwaits_state_01_init, %ChainedAwaits_state_01
  %113 = load ptr, ptr %28, align 8
  %114 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %113, ptr %1)
  %115 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %114, 0
  br i1 %115, label %ChainedAwaits_state_01_ready, label %ChainedAwaits_state_01_pending

ChainedAwaits_state_01_ready:                     ; preds = %ChainedAwaits_state_01_poll
  %116 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %114, 1
  %117 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 4
  store i64 %116, ptr %117, align 4
  store ptr null, ptr %28, align 8
  %118 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %118, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %ChainedAwaits_state_02

ChainedAwaits_state_01_pending:                   ; preds = %ChainedAwaits_state_01_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

ChainedAwaits_state_02_init:                      ; preds = %ChainedAwaits_state_02
  %119 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 1
  %120 = load i64, ptr %119, align 4
  %121 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 2
  %122 = load i64, ptr %121, align 4
  %123 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 4
  %124 = load i64, ptr %123, align 4
  %125 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 6
  %126 = load i64, ptr %125, align 4
  %127 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 8
  %128 = load i64, ptr %127, align 4
  %129 = add i64 %124, 10
  %130 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 5
  store i64 %129, ptr %130, align 4
  %131 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %129)
  store ptr %131, ptr %41, align 8
  br label %ChainedAwaits_state_02_poll

ChainedAwaits_state_02_poll:                      ; preds = %ChainedAwaits_state_02_init, %ChainedAwaits_state_02
  %132 = load ptr, ptr %41, align 8
  %133 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %132, ptr %1)
  %134 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %133, 0
  br i1 %134, label %ChainedAwaits_state_02_ready, label %ChainedAwaits_state_02_pending

ChainedAwaits_state_02_ready:                     ; preds = %ChainedAwaits_state_02_poll
  %135 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %133, 1
  %136 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 6
  store i64 %135, ptr %136, align 4
  store ptr null, ptr %41, align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %137, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %ChainedAwaits_state_03

ChainedAwaits_state_02_pending:                   ; preds = %ChainedAwaits_state_02_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

ChainedAwaits_state_03_init:                      ; preds = %ChainedAwaits_state_03
  %138 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 1
  %139 = load i64, ptr %138, align 4
  %140 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 2
  %141 = load i64, ptr %140, align 4
  %142 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 4
  %143 = load i64, ptr %142, align 4
  %144 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 6
  %145 = load i64, ptr %144, align 4
  %146 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 8
  %147 = load i64, ptr %146, align 4
  %148 = sub i64 %145, 5
  %149 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 7
  store i64 %148, ptr %149, align 4
  %150 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %148)
  store ptr %150, ptr %54, align 8
  br label %ChainedAwaits_state_03_poll

ChainedAwaits_state_03_poll:                      ; preds = %ChainedAwaits_state_03_init, %ChainedAwaits_state_03
  %151 = load ptr, ptr %54, align 8
  %152 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %151, ptr %1)
  %153 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %152, 0
  br i1 %153, label %ChainedAwaits_state_03_ready, label %ChainedAwaits_state_03_pending

ChainedAwaits_state_03_ready:                     ; preds = %ChainedAwaits_state_03_poll
  %154 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %152, 1
  %155 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 8
  store i64 %154, ptr %155, align 4
  store ptr null, ptr %54, align 8
  %156 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %156, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %ChainedAwaits_state_04

ChainedAwaits_state_03_pending:                   ; preds = %ChainedAwaits_state_03_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

declare void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1, i1)

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
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define linkonce i64 @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 45 }, ptr %1, align 8
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

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/complex.(*ClosureCapture$State).Poll"(ptr %0, ptr %1) {
ClosureCapture_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  %4 = sext i8 %3 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 14 }, i64 %4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
  switch i8 %3, label %ClosureCapture_state_unreach [
    i8 0, label %ClosureCapture_state_00
    i8 1, label %ClosureCapture_state_01
    i8 2, label %ClosureCapture_state_02
    i8 3, label %ClosureCapture_state_done
  ]

ClosureCapture_state_00:                          ; preds = %ClosureCapture_entry
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 2
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 4
  %10 = load i64, ptr %9, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 14 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %ClosureCapture_state_00_init, label %ClosureCapture_state_00_poll

ClosureCapture_state_01:                          ; preds = %ClosureCapture_state_00_ready, %ClosureCapture_entry
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 1
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 2
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 4
  %19 = load i64, ptr %18, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 14 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 6
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %ClosureCapture_state_01_init, label %ClosureCapture_state_01_poll

ClosureCapture_state_02:                          ; preds = %ClosureCapture_state_01_ready, %ClosureCapture_entry
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 1
  %24 = load i64, ptr %23, align 4
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 2
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 4
  %28 = load i64, ptr %27, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 14 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %29 = mul i64 %28, 3
  %30 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %29)
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %31, 0
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %32, ptr %30, 1
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 7
  store i64 %29, ptr %34, align 4
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %35, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 14 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 7
  %37 = load i64, ptr %36, align 4
  %38 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %37, 1
  %39 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %38, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %39

ClosureCapture_state_done:                        ; preds = %ClosureCapture_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 14 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, i1 false, i1 true)
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 7
  %41 = load i64, ptr %40, align 4
  %42 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %41, 1
  %43 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %42, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %43

ClosureCapture_state_unreach:                     ; preds = %ClosureCapture_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_6:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

ClosureCapture_state_00_init:                     ; preds = %ClosureCapture_state_00
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 1
  %45 = load i64, ptr %44, align 4
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 2
  %47 = load i64, ptr %46, align 4
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 4
  %49 = load i64, ptr %48, align 4
  %50 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %45)
  store ptr %50, ptr %11, align 8
  br label %ClosureCapture_state_00_poll

ClosureCapture_state_00_poll:                     ; preds = %ClosureCapture_state_00_init, %ClosureCapture_state_00
  %51 = load ptr, ptr %11, align 8
  %52 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %51, ptr %1)
  %53 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %52, 0
  br i1 %53, label %ClosureCapture_state_00_ready, label %ClosureCapture_state_00_pending

ClosureCapture_state_00_ready:                    ; preds = %ClosureCapture_state_00_poll
  %54 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %52, 1
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 2
  store i64 %54, ptr %55, align 4
  store ptr null, ptr %11, align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %56, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 14 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %ClosureCapture_state_01

ClosureCapture_state_00_pending:                  ; preds = %ClosureCapture_state_00_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 14 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

ClosureCapture_state_01_init:                     ; preds = %ClosureCapture_state_01
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 1
  %58 = load i64, ptr %57, align 4
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 2
  %60 = load i64, ptr %59, align 4
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 4
  %62 = load i64, ptr %61, align 4
  %63 = mul i64 %60, 2
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 3
  store i64 %63, ptr %64, align 4
  %65 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %63)
  store ptr %65, ptr %20, align 8
  br label %ClosureCapture_state_01_poll

ClosureCapture_state_01_poll:                     ; preds = %ClosureCapture_state_01_init, %ClosureCapture_state_01
  %66 = load ptr, ptr %20, align 8
  %67 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %66, ptr %1)
  %68 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %67, 0
  br i1 %68, label %ClosureCapture_state_01_ready, label %ClosureCapture_state_01_pending

ClosureCapture_state_01_ready:                    ; preds = %ClosureCapture_state_01_poll
  %69 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %67, 1
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 4
  store i64 %69, ptr %70, align 4
  store ptr null, ptr %20, align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %71, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 14 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %ClosureCapture_state_02

ClosureCapture_state_01_pending:                  ; preds = %ClosureCapture_state_01_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 14 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
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
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/complex.(*ConditionalChain$State).Poll"(ptr %0, ptr %1) {
ConditionalChain_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  %4 = sext i8 %3 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 16 }, i64 %4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
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
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 2
  %8 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %7, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 3
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 4
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 5
  %14 = load i64, ptr %13, align 4
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 6
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 7
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 8
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 9
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 10
  %24 = load ptr, ptr %23, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 16 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %25 = icmp sgt i64 %6, 0
  br i1 %25, label %ConditionalChain_state_00_true, label %ConditionalChain_state_00_false

ConditionalChain_state_01:                        ; preds = %ConditionalChain_state_00_true, %ConditionalChain_entry
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 1
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 2
  %29 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %28, align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 3
  %31 = load i64, ptr %30, align 4
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 4
  %33 = load i64, ptr %32, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 6
  %35 = load i64, ptr %34, align 4
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 7
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 8
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 9
  %41 = load i64, ptr %40, align 4
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 10
  %43 = load ptr, ptr %42, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 16 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 11
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %ConditionalChain_state_01_init, label %ConditionalChain_state_01_poll

ConditionalChain_state_02:                        ; preds = %ConditionalChain_state_01_ready, %ConditionalChain_entry
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 1
  %48 = load i64, ptr %47, align 4
  %49 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 2
  %50 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %49, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 3
  %52 = load i64, ptr %51, align 4
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 4
  %54 = load i64, ptr %53, align 4
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 6
  %56 = load i64, ptr %55, align 4
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 7
  %58 = load i64, ptr %57, align 4
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 8
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 9
  %62 = load i64, ptr %61, align 4
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 10
  %64 = load ptr, ptr %63, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 16 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %65 = mul i64 %54, 2
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 5
  store i64 %65, ptr %66, align 4
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 5
  %68 = load i64, ptr %67, align 4
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 3
  store i64 %68, ptr %69, align 4
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 4
  store i64 %54, ptr %70, align 4
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 5
  store i64 %65, ptr %71, align 4
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %72, align 1
  br label %ConditionalChain_state_03

ConditionalChain_state_03:                        ; preds = %ConditionalChain_state_06, %ConditionalChain_state_02, %ConditionalChain_entry
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 1
  %74 = load i64, ptr %73, align 4
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 3
  %76 = load i64, ptr %75, align 4
  %77 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 4
  %78 = load i64, ptr %77, align 4
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 5
  %80 = load i64, ptr %79, align 4
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 6
  %82 = load i64, ptr %81, align 4
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 7
  %84 = load i64, ptr %83, align 4
  %85 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 9
  %86 = load i64, ptr %85, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 16 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %87 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 12
  %88 = load ptr, ptr %87, align 8
  %89 = icmp eq ptr %88, null
  br i1 %89, label %ConditionalChain_state_03_init, label %ConditionalChain_state_03_poll

ConditionalChain_state_04:                        ; preds = %ConditionalChain_state_03_ready, %ConditionalChain_entry
  %90 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 1
  %91 = load i64, ptr %90, align 4
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 3
  %93 = load i64, ptr %92, align 4
  %94 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 4
  %95 = load i64, ptr %94, align 4
  %96 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 5
  %97 = load i64, ptr %96, align 4
  %98 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 6
  %99 = load i64, ptr %98, align 4
  %100 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 7
  %101 = load i64, ptr %100, align 4
  %102 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 9
  %103 = load i64, ptr %102, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 16 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %104 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 9
  %105 = load i64, ptr %104, align 4
  %106 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %103)
  %107 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %108 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %107, 0
  %109 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %108, ptr %106, 1
  %110 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %109, ptr %110, align 8
  %111 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 14
  store i64 %105, ptr %111, align 4
  %112 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %112, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 16 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %113 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 14
  %114 = load i64, ptr %113, align 4
  %115 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %114, 1
  %116 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %115, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %116

ConditionalChain_state_05:                        ; preds = %ConditionalChain_state_00_false, %ConditionalChain_entry
  %117 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 1
  %118 = load i64, ptr %117, align 4
  %119 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 2
  %120 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %119, align 8
  %121 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 3
  %122 = load i64, ptr %121, align 4
  %123 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 4
  %124 = load i64, ptr %123, align 4
  %125 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 5
  %126 = load i64, ptr %125, align 4
  %127 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 7
  %128 = load i64, ptr %127, align 4
  %129 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 8
  %130 = load ptr, ptr %129, align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 9
  %132 = load i64, ptr %131, align 4
  %133 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 10
  %134 = load ptr, ptr %133, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 16 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %135 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 13
  %136 = load ptr, ptr %135, align 8
  %137 = icmp eq ptr %136, null
  br i1 %137, label %ConditionalChain_state_05_init, label %ConditionalChain_state_05_poll

ConditionalChain_state_06:                        ; preds = %ConditionalChain_state_05_ready, %ConditionalChain_entry
  %138 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 1
  %139 = load i64, ptr %138, align 4
  %140 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 2
  %141 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %140, align 8
  %142 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 3
  %143 = load i64, ptr %142, align 4
  %144 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 4
  %145 = load i64, ptr %144, align 4
  %146 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 5
  %147 = load i64, ptr %146, align 4
  %148 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 7
  %149 = load i64, ptr %148, align 4
  %150 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 8
  %151 = load ptr, ptr %150, align 8
  %152 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 9
  %153 = load i64, ptr %152, align 4
  %154 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 10
  %155 = load ptr, ptr %154, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 16 }, i64 6, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %156 = add i64 %149, 100
  %157 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 3
  store i64 %156, ptr %157, align 4
  %158 = sub i64 0, %139
  %159 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 6
  store i64 %158, ptr %159, align 4
  %160 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 7
  store i64 %149, ptr %160, align 4
  %161 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %161, align 1
  br label %ConditionalChain_state_03

ConditionalChain_state_done:                      ; preds = %ConditionalChain_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 16 }, i64 7, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, i1 false, i1 true)
  %162 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 14
  %163 = load i64, ptr %162, align 4
  %164 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %163, 1
  %165 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %164, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %165

ConditionalChain_state_unreach:                   ; preds = %ConditionalChain_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_10:                                         ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

ConditionalChain_state_00_true:                   ; preds = %ConditionalChain_state_00
  %166 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %166, align 1
  br label %ConditionalChain_state_01

ConditionalChain_state_00_false:                  ; preds = %ConditionalChain_state_00
  %167 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %167, align 1
  br label %ConditionalChain_state_05

ConditionalChain_state_01_init:                   ; preds = %ConditionalChain_state_01
  %168 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 1
  %169 = load i64, ptr %168, align 4
  %170 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 2
  %171 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %170, align 8
  %172 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 3
  %173 = load i64, ptr %172, align 4
  %174 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 4
  %175 = load i64, ptr %174, align 4
  %176 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 6
  %177 = load i64, ptr %176, align 4
  %178 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 7
  %179 = load i64, ptr %178, align 4
  %180 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 8
  %181 = load ptr, ptr %180, align 8
  %182 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 9
  %183 = load i64, ptr %182, align 4
  %184 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 10
  %185 = load ptr, ptr %184, align 8
  %186 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %169)
  store ptr %186, ptr %44, align 8
  br label %ConditionalChain_state_01_poll

ConditionalChain_state_01_poll:                   ; preds = %ConditionalChain_state_01_init, %ConditionalChain_state_01
  %187 = load ptr, ptr %44, align 8
  %188 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %187, ptr %1)
  %189 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %188, 0
  br i1 %189, label %ConditionalChain_state_01_ready, label %ConditionalChain_state_01_pending

ConditionalChain_state_01_ready:                  ; preds = %ConditionalChain_state_01_poll
  %190 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %188, 1
  %191 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 4
  store i64 %190, ptr %191, align 4
  store ptr null, ptr %44, align 8
  %192 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %192, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 16 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %ConditionalChain_state_02

ConditionalChain_state_01_pending:                ; preds = %ConditionalChain_state_01_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 16 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

ConditionalChain_state_03_init:                   ; preds = %ConditionalChain_state_03
  %193 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 1
  %194 = load i64, ptr %193, align 4
  %195 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 3
  %196 = load i64, ptr %195, align 4
  %197 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 4
  %198 = load i64, ptr %197, align 4
  %199 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 5
  %200 = load i64, ptr %199, align 4
  %201 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 6
  %202 = load i64, ptr %201, align 4
  %203 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 7
  %204 = load i64, ptr %203, align 4
  %205 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 9
  %206 = load i64, ptr %205, align 4
  %207 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %196)
  %208 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 8
  store ptr %207, ptr %208, align 8
  store ptr %207, ptr %87, align 8
  br label %ConditionalChain_state_03_poll

ConditionalChain_state_03_poll:                   ; preds = %ConditionalChain_state_03_init, %ConditionalChain_state_03
  %209 = load ptr, ptr %87, align 8
  %210 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %209, ptr %1)
  %211 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %210, 0
  br i1 %211, label %ConditionalChain_state_03_ready, label %ConditionalChain_state_03_pending

ConditionalChain_state_03_ready:                  ; preds = %ConditionalChain_state_03_poll
  %212 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %210, 1
  %213 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 9
  store i64 %212, ptr %213, align 4
  store ptr null, ptr %87, align 8
  %214 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %214, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 16 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %ConditionalChain_state_04

ConditionalChain_state_03_pending:                ; preds = %ConditionalChain_state_03_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 16 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

ConditionalChain_state_05_init:                   ; preds = %ConditionalChain_state_05
  %215 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 1
  %216 = load i64, ptr %215, align 4
  %217 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 2
  %218 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %217, align 8
  %219 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 3
  %220 = load i64, ptr %219, align 4
  %221 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 4
  %222 = load i64, ptr %221, align 4
  %223 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 5
  %224 = load i64, ptr %223, align 4
  %225 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 7
  %226 = load i64, ptr %225, align 4
  %227 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 8
  %228 = load ptr, ptr %227, align 8
  %229 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 9
  %230 = load i64, ptr %229, align 4
  %231 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 10
  %232 = load ptr, ptr %231, align 8
  %233 = sub i64 0, %216
  %234 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 6
  store i64 %233, ptr %234, align 4
  %235 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %233)
  store ptr %235, ptr %135, align 8
  br label %ConditionalChain_state_05_poll

ConditionalChain_state_05_poll:                   ; preds = %ConditionalChain_state_05_init, %ConditionalChain_state_05
  %236 = load ptr, ptr %135, align 8
  %237 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %236, ptr %1)
  %238 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %237, 0
  br i1 %238, label %ConditionalChain_state_05_ready, label %ConditionalChain_state_05_pending

ConditionalChain_state_05_ready:                  ; preds = %ConditionalChain_state_05_poll
  %239 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %237, 1
  %240 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 7
  store i64 %239, ptr %240, align 4
  store ptr null, ptr %135, align 8
  %241 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %241, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 16 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %ConditionalChain_state_06

ConditionalChain_state_05_pending:                ; preds = %ConditionalChain_state_05_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 16 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
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
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/complex.(*DeferWithAwait$State).Poll"(ptr %0, ptr %1) {
DeferWithAwait_entry:
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 0
  %4 = load i8, ptr %3, align 1
  %5 = sext i8 %4 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 14 }, i64 %5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
  switch i8 %4, label %DeferWithAwait_state_unreach [
    i8 0, label %DeferWithAwait_state_00
    i8 1, label %DeferWithAwait_state_01
    i8 2, label %DeferWithAwait_state_02
    i8 3, label %DeferWithAwait_state_03
    i8 4, label %DeferWithAwait_state_done
  ]

DeferWithAwait_state_00:                          ; preds = %DeferWithAwait_entry
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 2
  %7 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %6, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, ptr %2, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 1
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 3
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 5
  %13 = load i64, ptr %12, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 14 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 6
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %DeferWithAwait_state_00_init, label %DeferWithAwait_state_00_poll

DeferWithAwait_state_01:                          ; preds = %DeferWithAwait_state_00_ready, %DeferWithAwait_entry
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 2
  %18 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %17, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %18, ptr %2, align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 1
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 3
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 5
  %24 = load i64, ptr %23, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 14 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 7
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %DeferWithAwait_state_01_init, label %DeferWithAwait_state_01_poll

DeferWithAwait_state_02:                          ; preds = %DeferWithAwait_state_01_ready, %DeferWithAwait_entry
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 2
  %29 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %28, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %29, ptr %2, align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 1
  %31 = load i64, ptr %30, align 4
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 3
  %33 = load i64, ptr %32, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 5
  %35 = load i64, ptr %34, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 14 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 5
  %37 = load i64, ptr %36, align 4
  %38 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %35)
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %39, 0
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %40, ptr %38, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %41, ptr %2, align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 8
  call void @"github.com/goplus/llgo/async.(*DeferState).RunDefers"(ptr %42)
  %43 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 12
  store i64 %37, ptr %44, align 4
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 2
  %46 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %46, ptr %45, align 8
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %47, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 14 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 12
  %49 = load i64, ptr %48, align 4
  %50 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %49, 1
  %51 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %50, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %51

DeferWithAwait_state_03:                          ; preds = %DeferWithAwait_entry
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 2
  %53 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %52, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %53, ptr %2, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 1
  %55 = load i64, ptr %54, align 4
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 3
  %57 = load i64, ptr %56, align 4
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 4
  %59 = load i64, ptr %58, align 4
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 5
  %61 = load i64, ptr %60, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 14 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %62 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 2
  %64 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %64, ptr %63, align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %65, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 14 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 12
  %67 = load i64, ptr %66, align 4
  %68 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %67, 1
  %69 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %68, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %69

DeferWithAwait_state_done:                        ; preds = %DeferWithAwait_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 14 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, i1 false, i1 true)
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 12
  %71 = load i64, ptr %70, align 4
  %72 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %71, 1
  %73 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %72, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %73

DeferWithAwait_state_unreach:                     ; preds = %DeferWithAwait_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_7:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

DeferWithAwait_state_00_init:                     ; preds = %DeferWithAwait_state_00
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 1
  %75 = load i64, ptr %74, align 4
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 2
  %77 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %76, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %77, ptr %2, align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 3
  %79 = load i64, ptr %78, align 4
  %80 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 5
  %81 = load i64, ptr %80, align 4
  %82 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 8
  %83 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %84 = getelementptr inbounds { { ptr, ptr } }, ptr %83, i32 0, i32 0
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$1", ptr null }, ptr %84, align 8
  call void @"github.com/goplus/llgo/async.(*DeferState).PushDefer"(ptr %82, { ptr, ptr } { ptr @"__llgo_stub.__llgo_defer_wrap$github_com_goplus_llgo_cl__testpull_complex_DeferWithAwait$1", ptr null }, ptr %83)
  %85 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %75)
  store ptr %85, ptr %14, align 8
  br label %DeferWithAwait_state_00_poll

DeferWithAwait_state_00_poll:                     ; preds = %DeferWithAwait_state_00_init, %DeferWithAwait_state_00
  %86 = load ptr, ptr %14, align 8
  %87 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %86, ptr %1)
  %88 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %87, 0
  br i1 %88, label %DeferWithAwait_state_00_ready, label %DeferWithAwait_state_00_pending

DeferWithAwait_state_00_ready:                    ; preds = %DeferWithAwait_state_00_poll
  %89 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %87, 1
  %90 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 3
  store i64 %89, ptr %90, align 4
  store ptr null, ptr %14, align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 2
  %92 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %92, ptr %91, align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %93, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 14 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %DeferWithAwait_state_01

DeferWithAwait_state_00_pending:                  ; preds = %DeferWithAwait_state_00_poll
  %94 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 2
  %95 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %95, ptr %94, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 14 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

DeferWithAwait_state_01_init:                     ; preds = %DeferWithAwait_state_01
  %96 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 1
  %97 = load i64, ptr %96, align 4
  %98 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 2
  %99 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %98, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %99, ptr %2, align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 3
  %101 = load i64, ptr %100, align 4
  %102 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 5
  %103 = load i64, ptr %102, align 4
  %104 = add i64 %101, 10
  %105 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 4
  store i64 %104, ptr %105, align 4
  %106 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %104)
  store ptr %106, ptr %25, align 8
  br label %DeferWithAwait_state_01_poll

DeferWithAwait_state_01_poll:                     ; preds = %DeferWithAwait_state_01_init, %DeferWithAwait_state_01
  %107 = load ptr, ptr %25, align 8
  %108 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %107, ptr %1)
  %109 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %108, 0
  br i1 %109, label %DeferWithAwait_state_01_ready, label %DeferWithAwait_state_01_pending

DeferWithAwait_state_01_ready:                    ; preds = %DeferWithAwait_state_01_poll
  %110 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %108, 1
  %111 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 5
  store i64 %110, ptr %111, align 4
  store ptr null, ptr %25, align 8
  %112 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 2
  %113 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %113, ptr %112, align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %114, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 14 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %DeferWithAwait_state_02

DeferWithAwait_state_01_pending:                  ; preds = %DeferWithAwait_state_01_poll
  %115 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 2
  %116 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %116, ptr %115, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 14 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
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
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/complex.(*LoopBreakContinue$State).Poll"(ptr %0, ptr %1) {
LoopBreakContinue_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  %4 = sext i8 %3 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 17 }, i64 %4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
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
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 2
  %8 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %7, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 3
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 4
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 5
  %14 = load i64, ptr %13, align 4
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 6
  %16 = load i1, ptr %15, align 1
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 7
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 8
  %20 = load i1, ptr %19, align 1
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 9
  %22 = load i1, ptr %21, align 1
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 10
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 11
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 12
  %28 = load ptr, ptr %27, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 17 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 3
  store i64 0, ptr %29, align 4
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 5
  store i64 0, ptr %30, align 4
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %31, align 1
  br label %LoopBreakContinue_state_01

LoopBreakContinue_state_01:                       ; preds = %LoopBreakContinue_state_03, %LoopBreakContinue_state_00, %LoopBreakContinue_entry
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 1
  %33 = load i64, ptr %32, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 2
  %35 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %34, align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 3
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 4
  %39 = load i64, ptr %38, align 4
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 5
  %41 = load i64, ptr %40, align 4
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 7
  %43 = load i64, ptr %42, align 4
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 8
  %45 = load i1, ptr %44, align 1
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 9
  %47 = load i1, ptr %46, align 1
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 10
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 11
  %51 = load i64, ptr %50, align 4
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 12
  %53 = load ptr, ptr %52, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 17 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %54 = icmp slt i64 %41, %33
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 6
  store i1 %54, ptr %55, align 1
  br i1 %54, label %LoopBreakContinue_state_01_true, label %LoopBreakContinue_state_01_false

LoopBreakContinue_state_02:                       ; preds = %LoopBreakContinue_state_01_true, %LoopBreakContinue_entry
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 1
  %57 = load i64, ptr %56, align 4
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 2
  %59 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %58, align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 3
  %61 = load i64, ptr %60, align 4
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 4
  %63 = load i64, ptr %62, align 4
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 5
  %65 = load i64, ptr %64, align 4
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 6
  %67 = load i1, ptr %66, align 1
  %68 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 7
  %69 = load i64, ptr %68, align 4
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 9
  %71 = load i1, ptr %70, align 1
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 10
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 11
  %75 = load i64, ptr %74, align 4
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 12
  %77 = load ptr, ptr %76, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 17 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %78 = icmp eq i64 %65, 3
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 8
  store i1 %78, ptr %79, align 1
  br i1 %78, label %LoopBreakContinue_state_02_true, label %LoopBreakContinue_state_02_false

LoopBreakContinue_state_03:                       ; preds = %LoopBreakContinue_state_07, %LoopBreakContinue_state_02_true, %LoopBreakContinue_entry
  %80 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 1
  %81 = load i64, ptr %80, align 4
  %82 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 2
  %83 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %82, align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 3
  %85 = load i64, ptr %84, align 4
  %86 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 4
  %87 = load i64, ptr %86, align 4
  %88 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 5
  %89 = load i64, ptr %88, align 4
  %90 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 6
  %91 = load i1, ptr %90, align 1
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 8
  %93 = load i1, ptr %92, align 1
  %94 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 9
  %95 = load i1, ptr %94, align 1
  %96 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 10
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 11
  %99 = load i64, ptr %98, align 4
  %100 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 12
  %101 = load ptr, ptr %100, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 17 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %102 = add i64 %89, 1
  %103 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 7
  store i64 %102, ptr %103, align 4
  %104 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 4
  %105 = load i64, ptr %104, align 4
  %106 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 3
  store i64 %105, ptr %106, align 4
  %107 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 7
  %108 = load i64, ptr %107, align 4
  %109 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 5
  store i64 %108, ptr %109, align 4
  %110 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 7
  store i64 %102, ptr %110, align 4
  %111 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %111, align 1
  br label %LoopBreakContinue_state_01

LoopBreakContinue_state_04:                       ; preds = %LoopBreakContinue_state_05_true, %LoopBreakContinue_state_01_false, %LoopBreakContinue_entry
  %112 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 1
  %113 = load i64, ptr %112, align 4
  %114 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 3
  %115 = load i64, ptr %114, align 4
  %116 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 4
  %117 = load i64, ptr %116, align 4
  %118 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 5
  %119 = load i64, ptr %118, align 4
  %120 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 6
  %121 = load i1, ptr %120, align 1
  %122 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 7
  %123 = load i64, ptr %122, align 4
  %124 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 8
  %125 = load i1, ptr %124, align 1
  %126 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 9
  %127 = load i1, ptr %126, align 1
  %128 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 10
  %129 = load ptr, ptr %128, align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 11
  %131 = load i64, ptr %130, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 17 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %132 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 3
  %133 = load i64, ptr %132, align 4
  %134 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %115)
  %135 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %136 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %135, 0
  %137 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %136, ptr %134, 1
  %138 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %137, ptr %138, align 8
  %139 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 14
  store i64 %133, ptr %139, align 4
  %140 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 0
  store i8 8, ptr %140, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 17 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %141 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 14
  %142 = load i64, ptr %141, align 4
  %143 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %142, 1
  %144 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %143, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %144

LoopBreakContinue_state_05:                       ; preds = %LoopBreakContinue_state_02_false, %LoopBreakContinue_entry
  %145 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 1
  %146 = load i64, ptr %145, align 4
  %147 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 2
  %148 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %147, align 8
  %149 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 3
  %150 = load i64, ptr %149, align 4
  %151 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 4
  %152 = load i64, ptr %151, align 4
  %153 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 5
  %154 = load i64, ptr %153, align 4
  %155 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 6
  %156 = load i1, ptr %155, align 1
  %157 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 7
  %158 = load i64, ptr %157, align 4
  %159 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 8
  %160 = load i1, ptr %159, align 1
  %161 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 10
  %162 = load ptr, ptr %161, align 8
  %163 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 11
  %164 = load i64, ptr %163, align 4
  %165 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 12
  %166 = load ptr, ptr %165, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 17 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %167 = icmp eq i64 %154, 7
  %168 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 9
  store i1 %167, ptr %168, align 1
  br i1 %167, label %LoopBreakContinue_state_05_true, label %LoopBreakContinue_state_05_false

LoopBreakContinue_state_06:                       ; preds = %LoopBreakContinue_state_05_false, %LoopBreakContinue_entry
  %169 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 1
  %170 = load i64, ptr %169, align 4
  %171 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 2
  %172 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %171, align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 3
  %174 = load i64, ptr %173, align 4
  %175 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 4
  %176 = load i64, ptr %175, align 4
  %177 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 5
  %178 = load i64, ptr %177, align 4
  %179 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 6
  %180 = load i1, ptr %179, align 1
  %181 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 7
  %182 = load i64, ptr %181, align 4
  %183 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 8
  %184 = load i1, ptr %183, align 1
  %185 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 9
  %186 = load i1, ptr %185, align 1
  %187 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 11
  %188 = load i64, ptr %187, align 4
  %189 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 12
  %190 = load ptr, ptr %189, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 17 }, i64 6, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %191 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 13
  %192 = load ptr, ptr %191, align 8
  %193 = icmp eq ptr %192, null
  br i1 %193, label %LoopBreakContinue_state_06_init, label %LoopBreakContinue_state_06_poll

LoopBreakContinue_state_07:                       ; preds = %LoopBreakContinue_state_06_ready, %LoopBreakContinue_entry
  %194 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 1
  %195 = load i64, ptr %194, align 4
  %196 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 2
  %197 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %196, align 8
  %198 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 3
  %199 = load i64, ptr %198, align 4
  %200 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 4
  %201 = load i64, ptr %200, align 4
  %202 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 5
  %203 = load i64, ptr %202, align 4
  %204 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 6
  %205 = load i1, ptr %204, align 1
  %206 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 7
  %207 = load i64, ptr %206, align 4
  %208 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 8
  %209 = load i1, ptr %208, align 1
  %210 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 9
  %211 = load i1, ptr %210, align 1
  %212 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 11
  %213 = load i64, ptr %212, align 4
  %214 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 12
  %215 = load ptr, ptr %214, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 17 }, i64 7, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %216 = add i64 %199, %213
  %217 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 4
  store i64 %216, ptr %217, align 4
  %218 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %203)
  %219 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 10
  store ptr %218, ptr %219, align 8
  %220 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 11
  store i64 %213, ptr %220, align 4
  %221 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %221, align 1
  br label %LoopBreakContinue_state_03

LoopBreakContinue_state_done:                     ; preds = %LoopBreakContinue_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 17 }, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, i1 false, i1 true)
  %222 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 14
  %223 = load i64, ptr %222, align 4
  %224 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %223, 1
  %225 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %224, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %225

LoopBreakContinue_state_unreach:                  ; preds = %LoopBreakContinue_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_11:                                         ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

LoopBreakContinue_state_01_true:                  ; preds = %LoopBreakContinue_state_01
  %226 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 6
  store i1 %54, ptr %226, align 1
  %227 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %227, align 1
  br label %LoopBreakContinue_state_02

LoopBreakContinue_state_01_false:                 ; preds = %LoopBreakContinue_state_01
  %228 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 6
  store i1 %54, ptr %228, align 1
  %229 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %229, align 1
  br label %LoopBreakContinue_state_04

LoopBreakContinue_state_02_true:                  ; preds = %LoopBreakContinue_state_02
  %230 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 3
  %231 = load i64, ptr %230, align 4
  %232 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 4
  store i64 %231, ptr %232, align 4
  %233 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 8
  store i1 %78, ptr %233, align 1
  %234 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %234, align 1
  br label %LoopBreakContinue_state_03

LoopBreakContinue_state_02_false:                 ; preds = %LoopBreakContinue_state_02
  %235 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 8
  store i1 %78, ptr %235, align 1
  %236 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %236, align 1
  br label %LoopBreakContinue_state_05

LoopBreakContinue_state_05_true:                  ; preds = %LoopBreakContinue_state_05
  %237 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 9
  store i1 %167, ptr %237, align 1
  %238 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %238, align 1
  br label %LoopBreakContinue_state_04

LoopBreakContinue_state_05_false:                 ; preds = %LoopBreakContinue_state_05
  %239 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 9
  store i1 %167, ptr %239, align 1
  %240 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %240, align 1
  br label %LoopBreakContinue_state_06

LoopBreakContinue_state_06_init:                  ; preds = %LoopBreakContinue_state_06
  %241 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 1
  %242 = load i64, ptr %241, align 4
  %243 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 2
  %244 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %243, align 8
  %245 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 3
  %246 = load i64, ptr %245, align 4
  %247 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 4
  %248 = load i64, ptr %247, align 4
  %249 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 5
  %250 = load i64, ptr %249, align 4
  %251 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 6
  %252 = load i1, ptr %251, align 1
  %253 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 7
  %254 = load i64, ptr %253, align 4
  %255 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 8
  %256 = load i1, ptr %255, align 1
  %257 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 9
  %258 = load i1, ptr %257, align 1
  %259 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 11
  %260 = load i64, ptr %259, align 4
  %261 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 12
  %262 = load ptr, ptr %261, align 8
  %263 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %250)
  %264 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 10
  store ptr %263, ptr %264, align 8
  store ptr %263, ptr %191, align 8
  br label %LoopBreakContinue_state_06_poll

LoopBreakContinue_state_06_poll:                  ; preds = %LoopBreakContinue_state_06_init, %LoopBreakContinue_state_06
  %265 = load ptr, ptr %191, align 8
  %266 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %265, ptr %1)
  %267 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %266, 0
  br i1 %267, label %LoopBreakContinue_state_06_ready, label %LoopBreakContinue_state_06_pending

LoopBreakContinue_state_06_ready:                 ; preds = %LoopBreakContinue_state_06_poll
  %268 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %266, 1
  %269 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 11
  store i64 %268, ptr %269, align 4
  store ptr null, ptr %191, align 8
  %270 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %270, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 17 }, i64 6, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %LoopBreakContinue_state_07

LoopBreakContinue_state_06_pending:               ; preds = %LoopBreakContinue_state_06_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 17 }, i64 6, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
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
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/complex.(*LoopWithAccumulator$State).Poll"(ptr %0, ptr %1) {
LoopWithAccumulator_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  %4 = sext i8 %3 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 19 }, i64 %4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
  switch i8 %3, label %LoopWithAccumulator_state_unreach [
    i8 0, label %LoopWithAccumulator_state_00
    i8 1, label %LoopWithAccumulator_state_01
    i8 2, label %LoopWithAccumulator_state_02
    i8 3, label %LoopWithAccumulator_state_03
    i8 4, label %LoopWithAccumulator_state_04
    i8 5, label %LoopWithAccumulator_state_done
  ]

LoopWithAccumulator_state_00:                     ; preds = %LoopWithAccumulator_entry
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 2
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 3
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 4
  %12 = load i1, ptr %11, align 1
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 6
  %16 = load i64, ptr %15, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 19 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 2
  store i64 0, ptr %17, align 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 3
  store i64 0, ptr %18, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %19, align 1
  br label %LoopWithAccumulator_state_01

LoopWithAccumulator_state_01:                     ; preds = %LoopWithAccumulator_state_03, %LoopWithAccumulator_state_00, %LoopWithAccumulator_entry
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 1
  %21 = load i64, ptr %20, align 4
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 2
  %23 = load i64, ptr %22, align 4
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 3
  %25 = load i64, ptr %24, align 4
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 5
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 6
  %29 = load i64, ptr %28, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 19 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %30 = icmp slt i64 %25, %21
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 4
  store i1 %30, ptr %31, align 1
  br i1 %30, label %LoopWithAccumulator_state_01_true, label %LoopWithAccumulator_state_01_false

LoopWithAccumulator_state_02:                     ; preds = %LoopWithAccumulator_state_01_true, %LoopWithAccumulator_entry
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 1
  %33 = load i64, ptr %32, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 2
  %35 = load i64, ptr %34, align 4
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 3
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 4
  %39 = load i1, ptr %38, align 1
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 6
  %41 = load i64, ptr %40, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 19 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 7
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %LoopWithAccumulator_state_02_init, label %LoopWithAccumulator_state_02_poll

LoopWithAccumulator_state_03:                     ; preds = %LoopWithAccumulator_state_02_ready, %LoopWithAccumulator_entry
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 1
  %46 = load i64, ptr %45, align 4
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 2
  %48 = load i64, ptr %47, align 4
  %49 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 3
  %50 = load i64, ptr %49, align 4
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 4
  %52 = load i1, ptr %51, align 1
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 6
  %54 = load i64, ptr %53, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 19 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %55 = add i64 %48, %54
  %56 = add i64 %50, 1
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 2
  store i64 %55, ptr %57, align 4
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 3
  store i64 %56, ptr %58, align 4
  %59 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %56)
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 5
  store ptr %59, ptr %60, align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 6
  store i64 %54, ptr %61, align 4
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %62, align 1
  br label %LoopWithAccumulator_state_01

LoopWithAccumulator_state_04:                     ; preds = %LoopWithAccumulator_state_01_false, %LoopWithAccumulator_entry
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 1
  %64 = load i64, ptr %63, align 4
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 2
  %66 = load i64, ptr %65, align 4
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 3
  %68 = load i64, ptr %67, align 4
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 4
  %70 = load i1, ptr %69, align 1
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 5
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 6
  %74 = load i64, ptr %73, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 19 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 2
  %76 = load i64, ptr %75, align 4
  %77 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %66)
  %78 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %79 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %78, 0
  %80 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %79, ptr %77, 1
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 8
  store i64 %76, ptr %81, align 4
  %82 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %82, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 19 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 8
  %84 = load i64, ptr %83, align 4
  %85 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %84, 1
  %86 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %85, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %86

LoopWithAccumulator_state_done:                   ; preds = %LoopWithAccumulator_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 19 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, i1 false, i1 true)
  %87 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 8
  %88 = load i64, ptr %87, align 4
  %89 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %88, 1
  %90 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %89, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %90

LoopWithAccumulator_state_unreach:                ; preds = %LoopWithAccumulator_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_8:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

LoopWithAccumulator_state_01_true:                ; preds = %LoopWithAccumulator_state_01
  %91 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 4
  store i1 %30, ptr %91, align 1
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %92, align 1
  br label %LoopWithAccumulator_state_02

LoopWithAccumulator_state_01_false:               ; preds = %LoopWithAccumulator_state_01
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 4
  store i1 %30, ptr %93, align 1
  %94 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %94, align 1
  br label %LoopWithAccumulator_state_04

LoopWithAccumulator_state_02_init:                ; preds = %LoopWithAccumulator_state_02
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 1
  %96 = load i64, ptr %95, align 4
  %97 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 2
  %98 = load i64, ptr %97, align 4
  %99 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 3
  %100 = load i64, ptr %99, align 4
  %101 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 4
  %102 = load i1, ptr %101, align 1
  %103 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 6
  %104 = load i64, ptr %103, align 4
  %105 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %100)
  %106 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 5
  store ptr %105, ptr %106, align 8
  store ptr %105, ptr %42, align 8
  br label %LoopWithAccumulator_state_02_poll

LoopWithAccumulator_state_02_poll:                ; preds = %LoopWithAccumulator_state_02_init, %LoopWithAccumulator_state_02
  %107 = load ptr, ptr %42, align 8
  %108 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %107, ptr %1)
  %109 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %108, 0
  br i1 %109, label %LoopWithAccumulator_state_02_ready, label %LoopWithAccumulator_state_02_pending

LoopWithAccumulator_state_02_ready:               ; preds = %LoopWithAccumulator_state_02_poll
  %110 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %108, 1
  %111 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 6
  store i64 %110, ptr %111, align 4
  store ptr null, ptr %42, align 8
  %112 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %112, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 19 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %LoopWithAccumulator_state_03

LoopWithAccumulator_state_02_pending:             ; preds = %LoopWithAccumulator_state_02_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 19 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
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
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/complex.(*MultipleReturnPaths$State).Poll"(ptr %0, ptr %1) {
MultipleReturnPaths_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  %4 = sext i8 %3 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 19 }, i64 %4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
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
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 3
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 4
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  %14 = load i64, ptr %13, align 4
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 6
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 7
  %18 = load i64, ptr %17, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 19 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %19 = icmp slt i64 %6, 0
  br i1 %19, label %MultipleReturnPaths_state_00_true, label %MultipleReturnPaths_state_00_false

MultipleReturnPaths_state_01:                     ; preds = %MultipleReturnPaths_state_00_true, %MultipleReturnPaths_entry
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %21 = load i64, ptr %20, align 4
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 3
  %23 = load i64, ptr %22, align 4
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 4
  %25 = load i64, ptr %24, align 4
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 6
  %29 = load i64, ptr %28, align 4
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 7
  %31 = load i64, ptr %30, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 19 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 8
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %MultipleReturnPaths_state_01_init, label %MultipleReturnPaths_state_01_poll

MultipleReturnPaths_state_02:                     ; preds = %MultipleReturnPaths_state_01_ready, %MultipleReturnPaths_entry
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %36 = load i64, ptr %35, align 4
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 3
  %38 = load i64, ptr %37, align 4
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 4
  %40 = load i64, ptr %39, align 4
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  %42 = load i64, ptr %41, align 4
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 6
  %44 = load i64, ptr %43, align 4
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 7
  %46 = load i64, ptr %45, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 19 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 3
  %48 = load i64, ptr %47, align 4
  %49 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %38)
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %50, 0
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %51, ptr %49, 1
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 11
  store i64 %48, ptr %53, align 4
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 10, ptr %54, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 19 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 11
  %56 = load i64, ptr %55, align 4
  %57 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %56, 1
  %58 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %57, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %58

MultipleReturnPaths_state_03:                     ; preds = %MultipleReturnPaths_state_00_false, %MultipleReturnPaths_entry
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %60 = load i64, ptr %59, align 4
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  %62 = load i64, ptr %61, align 4
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 3
  %64 = load i64, ptr %63, align 4
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 4
  %66 = load i64, ptr %65, align 4
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  %68 = load i64, ptr %67, align 4
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 6
  %70 = load i64, ptr %69, align 4
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 7
  %72 = load i64, ptr %71, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 19 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %73 = icmp eq i64 %60, 0
  br i1 %73, label %MultipleReturnPaths_state_02_true, label %MultipleReturnPaths_state_02_false

MultipleReturnPaths_state_04:                     ; preds = %MultipleReturnPaths_state_02_true, %MultipleReturnPaths_entry
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %75 = load i64, ptr %74, align 4
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  %77 = load i64, ptr %76, align 4
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 3
  %79 = load i64, ptr %78, align 4
  %80 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 4
  %81 = load i64, ptr %80, align 4
  %82 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  %83 = load i64, ptr %82, align 4
  %84 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 6
  %85 = load i64, ptr %84, align 4
  %86 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 7
  %87 = load i64, ptr %86, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 19 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %88 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 0)
  %89 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %89, 0
  %91 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %90, ptr %88, 1
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 11
  store i64 0, ptr %92, align 4
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 10, ptr %93, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 19 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %94 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 11
  %95 = load i64, ptr %94, align 4
  %96 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %95, 1
  %97 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %96, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %97

MultipleReturnPaths_state_05:                     ; preds = %MultipleReturnPaths_state_02_false, %MultipleReturnPaths_entry
  %98 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %99 = load i64, ptr %98, align 4
  %100 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  %101 = load i64, ptr %100, align 4
  %102 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 3
  %103 = load i64, ptr %102, align 4
  %104 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  %105 = load i64, ptr %104, align 4
  %106 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 6
  %107 = load i64, ptr %106, align 4
  %108 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 7
  %109 = load i64, ptr %108, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 19 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %110 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 9
  %111 = load ptr, ptr %110, align 8
  %112 = icmp eq ptr %111, null
  br i1 %112, label %MultipleReturnPaths_state_05_init, label %MultipleReturnPaths_state_05_poll

MultipleReturnPaths_state_06:                     ; preds = %MultipleReturnPaths_state_05_ready, %MultipleReturnPaths_entry
  %113 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %114 = load i64, ptr %113, align 4
  %115 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  %116 = load i64, ptr %115, align 4
  %117 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 3
  %118 = load i64, ptr %117, align 4
  %119 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  %120 = load i64, ptr %119, align 4
  %121 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 6
  %122 = load i64, ptr %121, align 4
  %123 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 7
  %124 = load i64, ptr %123, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 19 }, i64 6, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %125 = icmp sgt i64 %120, 100
  br i1 %125, label %MultipleReturnPaths_state_04_true, label %MultipleReturnPaths_state_04_false

MultipleReturnPaths_state_07:                     ; preds = %MultipleReturnPaths_state_04_true, %MultipleReturnPaths_entry
  %126 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %127 = load i64, ptr %126, align 4
  %128 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  %129 = load i64, ptr %128, align 4
  %130 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 3
  %131 = load i64, ptr %130, align 4
  %132 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 4
  %133 = load i64, ptr %132, align 4
  %134 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  %135 = load i64, ptr %134, align 4
  %136 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 6
  %137 = load i64, ptr %136, align 4
  %138 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 7
  %139 = load i64, ptr %138, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 19 }, i64 7, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %140 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 100)
  %141 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %142 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %141, 0
  %143 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %142, ptr %140, 1
  %144 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 11
  store i64 100, ptr %144, align 4
  %145 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 10, ptr %145, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 19 }, i64 7, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %146 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 11
  %147 = load i64, ptr %146, align 4
  %148 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %147, 1
  %149 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %148, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %149

MultipleReturnPaths_state_08:                     ; preds = %MultipleReturnPaths_state_04_false, %MultipleReturnPaths_entry
  %150 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %151 = load i64, ptr %150, align 4
  %152 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  %153 = load i64, ptr %152, align 4
  %154 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 3
  %155 = load i64, ptr %154, align 4
  %156 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 4
  %157 = load i64, ptr %156, align 4
  %158 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  %159 = load i64, ptr %158, align 4
  %160 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 7
  %161 = load i64, ptr %160, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 19 }, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %162 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 10
  %163 = load ptr, ptr %162, align 8
  %164 = icmp eq ptr %163, null
  br i1 %164, label %MultipleReturnPaths_state_08_init, label %MultipleReturnPaths_state_08_poll

MultipleReturnPaths_state_09:                     ; preds = %MultipleReturnPaths_state_08_ready, %MultipleReturnPaths_entry
  %165 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %166 = load i64, ptr %165, align 4
  %167 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  %168 = load i64, ptr %167, align 4
  %169 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 3
  %170 = load i64, ptr %169, align 4
  %171 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 4
  %172 = load i64, ptr %171, align 4
  %173 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  %174 = load i64, ptr %173, align 4
  %175 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 7
  %176 = load i64, ptr %175, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 19 }, i64 9, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %177 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 7
  %178 = load i64, ptr %177, align 4
  %179 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %176)
  %180 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %181 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %180, 0
  %182 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %181, ptr %179, 1
  %183 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 11
  store i64 %178, ptr %183, align 4
  %184 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 10, ptr %184, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 19 }, i64 9, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %185 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 11
  %186 = load i64, ptr %185, align 4
  %187 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %186, 1
  %188 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %187, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %188

MultipleReturnPaths_state_done:                   ; preds = %MultipleReturnPaths_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 19 }, i64 10, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, i1 false, i1 true)
  %189 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 11
  %190 = load i64, ptr %189, align 4
  %191 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %190, 1
  %192 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %191, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %192

MultipleReturnPaths_state_unreach:                ; preds = %MultipleReturnPaths_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_13:                                         ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

MultipleReturnPaths_state_00_true:                ; preds = %MultipleReturnPaths_state_00
  %193 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %193, align 1
  br label %MultipleReturnPaths_state_01

MultipleReturnPaths_state_00_false:               ; preds = %MultipleReturnPaths_state_00
  %194 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %194, align 1
  br label %MultipleReturnPaths_state_03

MultipleReturnPaths_state_01_init:                ; preds = %MultipleReturnPaths_state_01
  %195 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %196 = load i64, ptr %195, align 4
  %197 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 3
  %198 = load i64, ptr %197, align 4
  %199 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 4
  %200 = load i64, ptr %199, align 4
  %201 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  %202 = load i64, ptr %201, align 4
  %203 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 6
  %204 = load i64, ptr %203, align 4
  %205 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 7
  %206 = load i64, ptr %205, align 4
  %207 = sub i64 0, %196
  %208 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  store i64 %207, ptr %208, align 4
  %209 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %207)
  store ptr %209, ptr %32, align 8
  br label %MultipleReturnPaths_state_01_poll

MultipleReturnPaths_state_01_poll:                ; preds = %MultipleReturnPaths_state_01_init, %MultipleReturnPaths_state_01
  %210 = load ptr, ptr %32, align 8
  %211 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %210, ptr %1)
  %212 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %211, 0
  br i1 %212, label %MultipleReturnPaths_state_01_ready, label %MultipleReturnPaths_state_01_pending

MultipleReturnPaths_state_01_ready:               ; preds = %MultipleReturnPaths_state_01_poll
  %213 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %211, 1
  %214 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 3
  store i64 %213, ptr %214, align 4
  store ptr null, ptr %32, align 8
  %215 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %215, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 19 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %MultipleReturnPaths_state_02

MultipleReturnPaths_state_01_pending:             ; preds = %MultipleReturnPaths_state_01_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 19 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

MultipleReturnPaths_state_02_true:                ; preds = %MultipleReturnPaths_state_03
  %216 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %216, align 1
  br label %MultipleReturnPaths_state_04

MultipleReturnPaths_state_02_false:               ; preds = %MultipleReturnPaths_state_03
  %217 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %217, align 1
  br label %MultipleReturnPaths_state_05

MultipleReturnPaths_state_05_init:                ; preds = %MultipleReturnPaths_state_05
  %218 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %219 = load i64, ptr %218, align 4
  %220 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  %221 = load i64, ptr %220, align 4
  %222 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 3
  %223 = load i64, ptr %222, align 4
  %224 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  %225 = load i64, ptr %224, align 4
  %226 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 6
  %227 = load i64, ptr %226, align 4
  %228 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 7
  %229 = load i64, ptr %228, align 4
  %230 = mul i64 %219, 2
  %231 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 4
  store i64 %230, ptr %231, align 4
  %232 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %230)
  store ptr %232, ptr %110, align 8
  br label %MultipleReturnPaths_state_05_poll

MultipleReturnPaths_state_05_poll:                ; preds = %MultipleReturnPaths_state_05_init, %MultipleReturnPaths_state_05
  %233 = load ptr, ptr %110, align 8
  %234 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %233, ptr %1)
  %235 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %234, 0
  br i1 %235, label %MultipleReturnPaths_state_05_ready, label %MultipleReturnPaths_state_05_pending

MultipleReturnPaths_state_05_ready:               ; preds = %MultipleReturnPaths_state_05_poll
  %236 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %234, 1
  %237 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  store i64 %236, ptr %237, align 4
  store ptr null, ptr %110, align 8
  %238 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %238, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 19 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %MultipleReturnPaths_state_06

MultipleReturnPaths_state_05_pending:             ; preds = %MultipleReturnPaths_state_05_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 19 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

MultipleReturnPaths_state_04_true:                ; preds = %MultipleReturnPaths_state_06
  %239 = mul i64 %114, 2
  %240 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 4
  store i64 %239, ptr %240, align 4
  %241 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  store i64 %120, ptr %241, align 4
  %242 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %242, align 1
  br label %MultipleReturnPaths_state_07

MultipleReturnPaths_state_04_false:               ; preds = %MultipleReturnPaths_state_06
  %243 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 4
  store i64 %239, ptr %243, align 4
  %244 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  store i64 %120, ptr %244, align 4
  %245 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 8, ptr %245, align 1
  br label %MultipleReturnPaths_state_08

MultipleReturnPaths_state_08_init:                ; preds = %MultipleReturnPaths_state_08
  %246 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %247 = load i64, ptr %246, align 4
  %248 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  %249 = load i64, ptr %248, align 4
  %250 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 3
  %251 = load i64, ptr %250, align 4
  %252 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 4
  %253 = load i64, ptr %252, align 4
  %254 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  %255 = load i64, ptr %254, align 4
  %256 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 7
  %257 = load i64, ptr %256, align 4
  %258 = add i64 %255, 50
  %259 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 6
  store i64 %258, ptr %259, align 4
  %260 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %258)
  store ptr %260, ptr %162, align 8
  br label %MultipleReturnPaths_state_08_poll

MultipleReturnPaths_state_08_poll:                ; preds = %MultipleReturnPaths_state_08_init, %MultipleReturnPaths_state_08
  %261 = load ptr, ptr %162, align 8
  %262 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %261, ptr %1)
  %263 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %262, 0
  br i1 %263, label %MultipleReturnPaths_state_08_ready, label %MultipleReturnPaths_state_08_pending

MultipleReturnPaths_state_08_ready:               ; preds = %MultipleReturnPaths_state_08_poll
  %264 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %262, 1
  %265 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 7
  store i64 %264, ptr %265, align 4
  store ptr null, ptr %162, align 8
  %266 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 9, ptr %266, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 19 }, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %MultipleReturnPaths_state_09

MultipleReturnPaths_state_08_pending:             ; preds = %MultipleReturnPaths_state_08_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 19 }, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
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
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/complex.(*NestedConditions$State).Poll"(ptr %0, ptr %1) {
NestedConditions_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  %4 = sext i8 %3 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 16 }, i64 %4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
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
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %8 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %7, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 5
  %14 = load i64, ptr %13, align 4
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 7
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 10
  %24 = load ptr, ptr %23, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 16 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %25 = icmp sgt i64 %6, 0
  br i1 %25, label %NestedConditions_state_00_true, label %NestedConditions_state_00_false

NestedConditions_state_01:                        ; preds = %NestedConditions_state_00_true, %NestedConditions_entry
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %29 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %28, align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  %31 = load i64, ptr %30, align 4
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  %33 = load i64, ptr %32, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 5
  %35 = load i64, ptr %34, align 4
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 7
  %39 = load i64, ptr %38, align 4
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  %41 = load i64, ptr %40, align 4
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  %43 = load i64, ptr %42, align 4
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 10
  %45 = load ptr, ptr %44, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 16 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 11
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %NestedConditions_state_01_init, label %NestedConditions_state_01_poll

NestedConditions_state_02:                        ; preds = %NestedConditions_state_01_ready, %NestedConditions_entry
  %49 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %50 = load i64, ptr %49, align 4
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %52 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %51, align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  %54 = load i64, ptr %53, align 4
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  %56 = load i64, ptr %55, align 4
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 5
  %58 = load i64, ptr %57, align 4
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  %60 = load i64, ptr %59, align 4
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 7
  %62 = load i64, ptr %61, align 4
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  %64 = load i64, ptr %63, align 4
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  %66 = load i64, ptr %65, align 4
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 10
  %68 = load ptr, ptr %67, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 16 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %69 = icmp sgt i64 %56, 10
  br i1 %69, label %NestedConditions_state_01_true, label %NestedConditions_state_01_false

NestedConditions_state_03:                        ; preds = %NestedConditions_state_09, %NestedConditions_state_07, %NestedConditions_state_05, %NestedConditions_entry
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %71 = load i64, ptr %70, align 4
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  %73 = load i64, ptr %72, align 4
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  %75 = load i64, ptr %74, align 4
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 5
  %77 = load i64, ptr %76, align 4
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  %79 = load i64, ptr %78, align 4
  %80 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 7
  %81 = load i64, ptr %80, align 4
  %82 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  %83 = load i64, ptr %82, align 4
  %84 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  %85 = load i64, ptr %84, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 16 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %86 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  %87 = load i64, ptr %86, align 4
  %88 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %73)
  %89 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %89, 0
  %91 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %90, ptr %88, 1
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %91, ptr %92, align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 15
  store i64 %87, ptr %93, align 4
  %94 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  store i8 10, ptr %94, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 16 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 15
  %96 = load i64, ptr %95, align 4
  %97 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %96, 1
  %98 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %97, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %98

NestedConditions_state_04:                        ; preds = %NestedConditions_state_00_false, %NestedConditions_entry
  %99 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %100 = load i64, ptr %99, align 4
  %101 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %102 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %101, align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  %104 = load i64, ptr %103, align 4
  %105 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  %106 = load i64, ptr %105, align 4
  %107 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 5
  %108 = load i64, ptr %107, align 4
  %109 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  %110 = load i64, ptr %109, align 4
  %111 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 7
  %112 = load i64, ptr %111, align 4
  %113 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  %114 = load i64, ptr %113, align 4
  %115 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  %116 = load i64, ptr %115, align 4
  %117 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 10
  %118 = load ptr, ptr %117, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 16 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %119 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 12
  %120 = load ptr, ptr %119, align 8
  %121 = icmp eq ptr %120, null
  br i1 %121, label %NestedConditions_state_04_init, label %NestedConditions_state_04_poll

NestedConditions_state_05:                        ; preds = %NestedConditions_state_04_ready, %NestedConditions_entry
  %122 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %123 = load i64, ptr %122, align 4
  %124 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %125 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %124, align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  %127 = load i64, ptr %126, align 4
  %128 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  %129 = load i64, ptr %128, align 4
  %130 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 5
  %131 = load i64, ptr %130, align 4
  %132 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  %133 = load i64, ptr %132, align 4
  %134 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 7
  %135 = load i64, ptr %134, align 4
  %136 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  %137 = load i64, ptr %136, align 4
  %138 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  %139 = load i64, ptr %138, align 4
  %140 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 10
  %141 = load ptr, ptr %140, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 16 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %142 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  %143 = load i64, ptr %142, align 4
  %144 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  store i64 %143, ptr %144, align 4
  %145 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  store i64 %139, ptr %145, align 4
  %146 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %146, align 1
  br label %NestedConditions_state_03

NestedConditions_state_06:                        ; preds = %NestedConditions_state_01_true, %NestedConditions_entry
  %147 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %148 = load i64, ptr %147, align 4
  %149 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %150 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %149, align 8
  %151 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  %152 = load i64, ptr %151, align 4
  %153 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  %154 = load i64, ptr %153, align 4
  %155 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  %156 = load i64, ptr %155, align 4
  %157 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 7
  %158 = load i64, ptr %157, align 4
  %159 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  %160 = load i64, ptr %159, align 4
  %161 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  %162 = load i64, ptr %161, align 4
  %163 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 10
  %164 = load ptr, ptr %163, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 16 }, i64 6, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %165 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 13
  %166 = load ptr, ptr %165, align 8
  %167 = icmp eq ptr %166, null
  br i1 %167, label %NestedConditions_state_06_init, label %NestedConditions_state_06_poll

NestedConditions_state_07:                        ; preds = %NestedConditions_state_06_ready, %NestedConditions_entry
  %168 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %169 = load i64, ptr %168, align 4
  %170 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %171 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %170, align 8
  %172 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  %173 = load i64, ptr %172, align 4
  %174 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  %175 = load i64, ptr %174, align 4
  %176 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  %177 = load i64, ptr %176, align 4
  %178 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 7
  %179 = load i64, ptr %178, align 4
  %180 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  %181 = load i64, ptr %180, align 4
  %182 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  %183 = load i64, ptr %182, align 4
  %184 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 10
  %185 = load ptr, ptr %184, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 16 }, i64 7, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %186 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  %187 = load i64, ptr %186, align 4
  %188 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  store i64 %187, ptr %188, align 4
  %189 = mul i64 %175, 2
  %190 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 5
  store i64 %189, ptr %190, align 4
  %191 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  store i64 %177, ptr %191, align 4
  %192 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %192, align 1
  br label %NestedConditions_state_03

NestedConditions_state_08:                        ; preds = %NestedConditions_state_01_false, %NestedConditions_entry
  %193 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %194 = load i64, ptr %193, align 4
  %195 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %196 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %195, align 8
  %197 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  %198 = load i64, ptr %197, align 4
  %199 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  %200 = load i64, ptr %199, align 4
  %201 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 5
  %202 = load i64, ptr %201, align 4
  %203 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  %204 = load i64, ptr %203, align 4
  %205 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  %206 = load i64, ptr %205, align 4
  %207 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  %208 = load i64, ptr %207, align 4
  %209 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 10
  %210 = load ptr, ptr %209, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 16 }, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %211 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 14
  %212 = load ptr, ptr %211, align 8
  %213 = icmp eq ptr %212, null
  br i1 %213, label %NestedConditions_state_08_init, label %NestedConditions_state_08_poll

NestedConditions_state_09:                        ; preds = %NestedConditions_state_08_ready, %NestedConditions_entry
  %214 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %215 = load i64, ptr %214, align 4
  %216 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %217 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %216, align 8
  %218 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  %219 = load i64, ptr %218, align 4
  %220 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  %221 = load i64, ptr %220, align 4
  %222 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 5
  %223 = load i64, ptr %222, align 4
  %224 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  %225 = load i64, ptr %224, align 4
  %226 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  %227 = load i64, ptr %226, align 4
  %228 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  %229 = load i64, ptr %228, align 4
  %230 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 10
  %231 = load ptr, ptr %230, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 16 }, i64 9, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %232 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  %233 = load i64, ptr %232, align 4
  %234 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  store i64 %233, ptr %234, align 4
  %235 = add i64 %221, 5
  %236 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 7
  store i64 %235, ptr %236, align 4
  %237 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  store i64 %227, ptr %237, align 4
  %238 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %238, align 1
  br label %NestedConditions_state_03

NestedConditions_state_done:                      ; preds = %NestedConditions_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 16 }, i64 10, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, i1 false, i1 true)
  %239 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 15
  %240 = load i64, ptr %239, align 4
  %241 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %240, 1
  %242 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %241, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %242

NestedConditions_state_unreach:                   ; preds = %NestedConditions_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_13:                                         ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

NestedConditions_state_00_true:                   ; preds = %NestedConditions_state_00
  %243 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %243, align 1
  br label %NestedConditions_state_01

NestedConditions_state_00_false:                  ; preds = %NestedConditions_state_00
  %244 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %244, align 1
  br label %NestedConditions_state_04

NestedConditions_state_01_init:                   ; preds = %NestedConditions_state_01
  %245 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %246 = load i64, ptr %245, align 4
  %247 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %248 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %247, align 8
  %249 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  %250 = load i64, ptr %249, align 4
  %251 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  %252 = load i64, ptr %251, align 4
  %253 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 5
  %254 = load i64, ptr %253, align 4
  %255 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  %256 = load i64, ptr %255, align 4
  %257 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 7
  %258 = load i64, ptr %257, align 4
  %259 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  %260 = load i64, ptr %259, align 4
  %261 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  %262 = load i64, ptr %261, align 4
  %263 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 10
  %264 = load ptr, ptr %263, align 8
  %265 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %246)
  store ptr %265, ptr %46, align 8
  br label %NestedConditions_state_01_poll

NestedConditions_state_01_poll:                   ; preds = %NestedConditions_state_01_init, %NestedConditions_state_01
  %266 = load ptr, ptr %46, align 8
  %267 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %266, ptr %1)
  %268 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %267, 0
  br i1 %268, label %NestedConditions_state_01_ready, label %NestedConditions_state_01_pending

NestedConditions_state_01_ready:                  ; preds = %NestedConditions_state_01_poll
  %269 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %267, 1
  %270 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  store i64 %269, ptr %270, align 4
  store ptr null, ptr %46, align 8
  %271 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %271, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 16 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %NestedConditions_state_02

NestedConditions_state_01_pending:                ; preds = %NestedConditions_state_01_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 16 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

NestedConditions_state_01_true:                   ; preds = %NestedConditions_state_02
  %272 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  store i64 %56, ptr %272, align 4
  %273 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %273, align 1
  br label %NestedConditions_state_06

NestedConditions_state_01_false:                  ; preds = %NestedConditions_state_02
  %274 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  store i64 %56, ptr %274, align 4
  %275 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  store i8 8, ptr %275, align 1
  br label %NestedConditions_state_08

NestedConditions_state_04_init:                   ; preds = %NestedConditions_state_04
  %276 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %277 = load i64, ptr %276, align 4
  %278 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %279 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %278, align 8
  %280 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  %281 = load i64, ptr %280, align 4
  %282 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  %283 = load i64, ptr %282, align 4
  %284 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 5
  %285 = load i64, ptr %284, align 4
  %286 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  %287 = load i64, ptr %286, align 4
  %288 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 7
  %289 = load i64, ptr %288, align 4
  %290 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  %291 = load i64, ptr %290, align 4
  %292 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  %293 = load i64, ptr %292, align 4
  %294 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 10
  %295 = load ptr, ptr %294, align 8
  %296 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 100)
  store ptr %296, ptr %119, align 8
  br label %NestedConditions_state_04_poll

NestedConditions_state_04_poll:                   ; preds = %NestedConditions_state_04_init, %NestedConditions_state_04
  %297 = load ptr, ptr %119, align 8
  %298 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %297, ptr %1)
  %299 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %298, 0
  br i1 %299, label %NestedConditions_state_04_ready, label %NestedConditions_state_04_pending

NestedConditions_state_04_ready:                  ; preds = %NestedConditions_state_04_poll
  %300 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %298, 1
  %301 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  store i64 %300, ptr %301, align 4
  store ptr null, ptr %119, align 8
  %302 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %302, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 16 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %NestedConditions_state_05

NestedConditions_state_04_pending:                ; preds = %NestedConditions_state_04_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 16 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

NestedConditions_state_06_init:                   ; preds = %NestedConditions_state_06
  %303 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %304 = load i64, ptr %303, align 4
  %305 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %306 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %305, align 8
  %307 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  %308 = load i64, ptr %307, align 4
  %309 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  %310 = load i64, ptr %309, align 4
  %311 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  %312 = load i64, ptr %311, align 4
  %313 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 7
  %314 = load i64, ptr %313, align 4
  %315 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  %316 = load i64, ptr %315, align 4
  %317 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  %318 = load i64, ptr %317, align 4
  %319 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 10
  %320 = load ptr, ptr %319, align 8
  %321 = mul i64 %310, 2
  %322 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 5
  store i64 %321, ptr %322, align 4
  %323 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %321)
  store ptr %323, ptr %165, align 8
  br label %NestedConditions_state_06_poll

NestedConditions_state_06_poll:                   ; preds = %NestedConditions_state_06_init, %NestedConditions_state_06
  %324 = load ptr, ptr %165, align 8
  %325 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %324, ptr %1)
  %326 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %325, 0
  br i1 %326, label %NestedConditions_state_06_ready, label %NestedConditions_state_06_pending

NestedConditions_state_06_ready:                  ; preds = %NestedConditions_state_06_poll
  %327 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %325, 1
  %328 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  store i64 %327, ptr %328, align 4
  store ptr null, ptr %165, align 8
  %329 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %329, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 16 }, i64 6, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %NestedConditions_state_07

NestedConditions_state_06_pending:                ; preds = %NestedConditions_state_06_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 16 }, i64 6, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

NestedConditions_state_08_init:                   ; preds = %NestedConditions_state_08
  %330 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %331 = load i64, ptr %330, align 4
  %332 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %333 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %332, align 8
  %334 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  %335 = load i64, ptr %334, align 4
  %336 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  %337 = load i64, ptr %336, align 4
  %338 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 5
  %339 = load i64, ptr %338, align 4
  %340 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  %341 = load i64, ptr %340, align 4
  %342 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  %343 = load i64, ptr %342, align 4
  %344 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 9
  %345 = load i64, ptr %344, align 4
  %346 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 10
  %347 = load ptr, ptr %346, align 8
  %348 = add i64 %337, 5
  %349 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 7
  store i64 %348, ptr %349, align 4
  %350 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %348)
  store ptr %350, ptr %211, align 8
  br label %NestedConditions_state_08_poll

NestedConditions_state_08_poll:                   ; preds = %NestedConditions_state_08_init, %NestedConditions_state_08
  %351 = load ptr, ptr %211, align 8
  %352 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %351, ptr %1)
  %353 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %352, 0
  br i1 %353, label %NestedConditions_state_08_ready, label %NestedConditions_state_08_pending

NestedConditions_state_08_ready:                  ; preds = %NestedConditions_state_08_poll
  %354 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %352, 1
  %355 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 8
  store i64 %354, ptr %355, align 4
  store ptr null, ptr %211, align 8
  %356 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  store i8 9, ptr %356, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 16 }, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %NestedConditions_state_09

NestedConditions_state_08_pending:                ; preds = %NestedConditions_state_08_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 16 }, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
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
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/complex.(*SwitchWithFallthrough$State).Poll"(ptr %0, ptr %1) {
SwitchWithFallthrough_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  %4 = sext i8 %3 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 21 }, i64 %4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
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
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %8 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %7, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %14 = load i64, ptr %13, align 4
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  %20 = load ptr, ptr %19, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 21 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %21 = icmp eq i64 %6, 0
  br i1 %21, label %SwitchWithFallthrough_state_00_true, label %SwitchWithFallthrough_state_00_false

SwitchWithFallthrough_state_01:                   ; preds = %SwitchWithFallthrough_state_11, %SwitchWithFallthrough_state_08, %SwitchWithFallthrough_state_05, %SwitchWithFallthrough_state_03, %SwitchWithFallthrough_entry
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %23 = load i64, ptr %22, align 4
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %25 = load i64, ptr %24, align 4
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %29 = load i64, ptr %28, align 4
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %31 = load i64, ptr %30, align 4
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %33 = load i64, ptr %32, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 21 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %35 = load i64, ptr %34, align 4
  %36 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %25)
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %37, 0
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %38, ptr %36, 1
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %39, ptr %40, align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 13
  store i64 %35, ptr %41, align 4
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 12, ptr %42, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 21 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 13
  %44 = load i64, ptr %43, align 4
  %45 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %44, 1
  %46 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %45, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %46

SwitchWithFallthrough_state_02:                   ; preds = %SwitchWithFallthrough_state_00_true, %SwitchWithFallthrough_entry
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %48 = load i64, ptr %47, align 4
  %49 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %50 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %49, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %52 = load i64, ptr %51, align 4
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %54 = load i64, ptr %53, align 4
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %56 = load i64, ptr %55, align 4
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %58 = load i64, ptr %57, align 4
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %60 = load i64, ptr %59, align 4
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  %62 = load ptr, ptr %61, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 21 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 9
  %64 = load ptr, ptr %63, align 8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %SwitchWithFallthrough_state_02_init, label %SwitchWithFallthrough_state_02_poll

SwitchWithFallthrough_state_03:                   ; preds = %SwitchWithFallthrough_state_02_ready, %SwitchWithFallthrough_entry
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %67 = load i64, ptr %66, align 4
  %68 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %69 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %68, align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %71 = load i64, ptr %70, align 4
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %73 = load i64, ptr %72, align 4
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %75 = load i64, ptr %74, align 4
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %77 = load i64, ptr %76, align 4
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %79 = load i64, ptr %78, align 4
  %80 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  %81 = load ptr, ptr %80, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 21 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %82 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %83 = load i64, ptr %82, align 4
  %84 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  store i64 %83, ptr %84, align 4
  %85 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  store i64 %73, ptr %85, align 4
  %86 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %86, align 1
  br label %SwitchWithFallthrough_state_01

SwitchWithFallthrough_state_04:                   ; preds = %SwitchWithFallthrough_state_04_true, %SwitchWithFallthrough_entry
  %87 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %88 = load i64, ptr %87, align 4
  %89 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %90 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %89, align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %92 = load i64, ptr %91, align 4
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %94 = load i64, ptr %93, align 4
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %96 = load i64, ptr %95, align 4
  %97 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %98 = load i64, ptr %97, align 4
  %99 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %100 = load i64, ptr %99, align 4
  %101 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  %102 = load ptr, ptr %101, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 21 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %103 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 10
  %104 = load ptr, ptr %103, align 8
  %105 = icmp eq ptr %104, null
  br i1 %105, label %SwitchWithFallthrough_state_04_init, label %SwitchWithFallthrough_state_04_poll

SwitchWithFallthrough_state_05:                   ; preds = %SwitchWithFallthrough_state_04_ready, %SwitchWithFallthrough_entry
  %106 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %107 = load i64, ptr %106, align 4
  %108 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %109 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %108, align 8
  %110 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %111 = load i64, ptr %110, align 4
  %112 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %113 = load i64, ptr %112, align 4
  %114 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %115 = load i64, ptr %114, align 4
  %116 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %117 = load i64, ptr %116, align 4
  %118 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %119 = load i64, ptr %118, align 4
  %120 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  %121 = load ptr, ptr %120, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 21 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %122 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %123 = load i64, ptr %122, align 4
  %124 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  store i64 %123, ptr %124, align 4
  %125 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  store i64 %115, ptr %125, align 4
  %126 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %126, align 1
  br label %SwitchWithFallthrough_state_01

SwitchWithFallthrough_state_06:                   ; preds = %SwitchWithFallthrough_state_00_false, %SwitchWithFallthrough_entry
  %127 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %128 = load i64, ptr %127, align 4
  %129 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %130 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %129, align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %132 = load i64, ptr %131, align 4
  %133 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %134 = load i64, ptr %133, align 4
  %135 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %136 = load i64, ptr %135, align 4
  %137 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %138 = load i64, ptr %137, align 4
  %139 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %140 = load i64, ptr %139, align 4
  %141 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  %142 = load ptr, ptr %141, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 21 }, i64 6, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %143 = icmp eq i64 %128, 1
  br i1 %143, label %SwitchWithFallthrough_state_04_true, label %SwitchWithFallthrough_state_04_false

SwitchWithFallthrough_state_07:                   ; preds = %SwitchWithFallthrough_state_06_true, %SwitchWithFallthrough_entry
  %144 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %145 = load i64, ptr %144, align 4
  %146 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %147 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %146, align 8
  %148 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %149 = load i64, ptr %148, align 4
  %150 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %151 = load i64, ptr %150, align 4
  %152 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %153 = load i64, ptr %152, align 4
  %154 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %155 = load i64, ptr %154, align 4
  %156 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %157 = load i64, ptr %156, align 4
  %158 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  %159 = load ptr, ptr %158, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 21 }, i64 7, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %160 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 11
  %161 = load ptr, ptr %160, align 8
  %162 = icmp eq ptr %161, null
  br i1 %162, label %SwitchWithFallthrough_state_07_init, label %SwitchWithFallthrough_state_07_poll

SwitchWithFallthrough_state_08:                   ; preds = %SwitchWithFallthrough_state_07_ready, %SwitchWithFallthrough_entry
  %163 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %164 = load i64, ptr %163, align 4
  %165 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %166 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %165, align 8
  %167 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %168 = load i64, ptr %167, align 4
  %169 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %170 = load i64, ptr %169, align 4
  %171 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %172 = load i64, ptr %171, align 4
  %173 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %174 = load i64, ptr %173, align 4
  %175 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %176 = load i64, ptr %175, align 4
  %177 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  %178 = load ptr, ptr %177, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 21 }, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %179 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %180 = load i64, ptr %179, align 4
  %181 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  store i64 %180, ptr %181, align 4
  %182 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  store i64 %174, ptr %182, align 4
  %183 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %183, align 1
  br label %SwitchWithFallthrough_state_01

SwitchWithFallthrough_state_09:                   ; preds = %SwitchWithFallthrough_state_04_false, %SwitchWithFallthrough_entry
  %184 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %185 = load i64, ptr %184, align 4
  %186 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %187 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %186, align 8
  %188 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %189 = load i64, ptr %188, align 4
  %190 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %191 = load i64, ptr %190, align 4
  %192 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %193 = load i64, ptr %192, align 4
  %194 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %195 = load i64, ptr %194, align 4
  %196 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %197 = load i64, ptr %196, align 4
  %198 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  %199 = load ptr, ptr %198, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 21 }, i64 9, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %200 = icmp eq i64 %185, 2
  br i1 %200, label %SwitchWithFallthrough_state_06_true, label %SwitchWithFallthrough_state_06_false

SwitchWithFallthrough_state_10:                   ; preds = %SwitchWithFallthrough_state_06_false, %SwitchWithFallthrough_entry
  %201 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %202 = load i64, ptr %201, align 4
  %203 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %204 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %203, align 8
  %205 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %206 = load i64, ptr %205, align 4
  %207 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %208 = load i64, ptr %207, align 4
  %209 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %210 = load i64, ptr %209, align 4
  %211 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %212 = load i64, ptr %211, align 4
  %213 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %214 = load i64, ptr %213, align 4
  %215 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  %216 = load ptr, ptr %215, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 21 }, i64 10, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %217 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 12
  %218 = load ptr, ptr %217, align 8
  %219 = icmp eq ptr %218, null
  br i1 %219, label %SwitchWithFallthrough_state_10_init, label %SwitchWithFallthrough_state_10_poll

SwitchWithFallthrough_state_11:                   ; preds = %SwitchWithFallthrough_state_10_ready, %SwitchWithFallthrough_entry
  %220 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %221 = load i64, ptr %220, align 4
  %222 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %223 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %222, align 8
  %224 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %225 = load i64, ptr %224, align 4
  %226 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %227 = load i64, ptr %226, align 4
  %228 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %229 = load i64, ptr %228, align 4
  %230 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %231 = load i64, ptr %230, align 4
  %232 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %233 = load i64, ptr %232, align 4
  %234 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  %235 = load ptr, ptr %234, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 21 }, i64 11, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %236 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %237 = load i64, ptr %236, align 4
  %238 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  store i64 %237, ptr %238, align 4
  %239 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  store i64 %233, ptr %239, align 4
  %240 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %240, align 1
  br label %SwitchWithFallthrough_state_01

SwitchWithFallthrough_state_done:                 ; preds = %SwitchWithFallthrough_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 21 }, i64 12, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, i1 false, i1 true)
  %241 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 13
  %242 = load i64, ptr %241, align 4
  %243 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %242, 1
  %244 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %243, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %244

SwitchWithFallthrough_state_unreach:              ; preds = %SwitchWithFallthrough_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_15:                                         ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

SwitchWithFallthrough_state_00_true:              ; preds = %SwitchWithFallthrough_state_00
  %245 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %245, align 1
  br label %SwitchWithFallthrough_state_02

SwitchWithFallthrough_state_00_false:             ; preds = %SwitchWithFallthrough_state_00
  %246 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %246, align 1
  br label %SwitchWithFallthrough_state_06

SwitchWithFallthrough_state_02_init:              ; preds = %SwitchWithFallthrough_state_02
  %247 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %248 = load i64, ptr %247, align 4
  %249 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %250 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %249, align 8
  %251 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %252 = load i64, ptr %251, align 4
  %253 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %254 = load i64, ptr %253, align 4
  %255 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %256 = load i64, ptr %255, align 4
  %257 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %258 = load i64, ptr %257, align 4
  %259 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %260 = load i64, ptr %259, align 4
  %261 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  %262 = load ptr, ptr %261, align 8
  %263 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 0)
  store ptr %263, ptr %63, align 8
  br label %SwitchWithFallthrough_state_02_poll

SwitchWithFallthrough_state_02_poll:              ; preds = %SwitchWithFallthrough_state_02_init, %SwitchWithFallthrough_state_02
  %264 = load ptr, ptr %63, align 8
  %265 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %264, ptr %1)
  %266 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %265, 0
  br i1 %266, label %SwitchWithFallthrough_state_02_ready, label %SwitchWithFallthrough_state_02_pending

SwitchWithFallthrough_state_02_ready:             ; preds = %SwitchWithFallthrough_state_02_poll
  %267 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %265, 1
  %268 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  store i64 %267, ptr %268, align 4
  store ptr null, ptr %63, align 8
  %269 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %269, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 21 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %SwitchWithFallthrough_state_03

SwitchWithFallthrough_state_02_pending:           ; preds = %SwitchWithFallthrough_state_02_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 21 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

SwitchWithFallthrough_state_04_init:              ; preds = %SwitchWithFallthrough_state_04
  %270 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %271 = load i64, ptr %270, align 4
  %272 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %273 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %272, align 8
  %274 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %275 = load i64, ptr %274, align 4
  %276 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %277 = load i64, ptr %276, align 4
  %278 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %279 = load i64, ptr %278, align 4
  %280 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %281 = load i64, ptr %280, align 4
  %282 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %283 = load i64, ptr %282, align 4
  %284 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  %285 = load ptr, ptr %284, align 8
  %286 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 10)
  store ptr %286, ptr %103, align 8
  br label %SwitchWithFallthrough_state_04_poll

SwitchWithFallthrough_state_04_poll:              ; preds = %SwitchWithFallthrough_state_04_init, %SwitchWithFallthrough_state_04
  %287 = load ptr, ptr %103, align 8
  %288 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %287, ptr %1)
  %289 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %288, 0
  br i1 %289, label %SwitchWithFallthrough_state_04_ready, label %SwitchWithFallthrough_state_04_pending

SwitchWithFallthrough_state_04_ready:             ; preds = %SwitchWithFallthrough_state_04_poll
  %290 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %288, 1
  %291 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  store i64 %290, ptr %291, align 4
  store ptr null, ptr %103, align 8
  %292 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %292, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 21 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %SwitchWithFallthrough_state_05

SwitchWithFallthrough_state_04_pending:           ; preds = %SwitchWithFallthrough_state_04_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 21 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

SwitchWithFallthrough_state_04_true:              ; preds = %SwitchWithFallthrough_state_06
  %293 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %293, align 1
  br label %SwitchWithFallthrough_state_04

SwitchWithFallthrough_state_04_false:             ; preds = %SwitchWithFallthrough_state_06
  %294 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 9, ptr %294, align 1
  br label %SwitchWithFallthrough_state_09

SwitchWithFallthrough_state_07_init:              ; preds = %SwitchWithFallthrough_state_07
  %295 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %296 = load i64, ptr %295, align 4
  %297 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %298 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %297, align 8
  %299 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %300 = load i64, ptr %299, align 4
  %301 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %302 = load i64, ptr %301, align 4
  %303 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %304 = load i64, ptr %303, align 4
  %305 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %306 = load i64, ptr %305, align 4
  %307 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %308 = load i64, ptr %307, align 4
  %309 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  %310 = load ptr, ptr %309, align 8
  %311 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 20)
  store ptr %311, ptr %160, align 8
  br label %SwitchWithFallthrough_state_07_poll

SwitchWithFallthrough_state_07_poll:              ; preds = %SwitchWithFallthrough_state_07_init, %SwitchWithFallthrough_state_07
  %312 = load ptr, ptr %160, align 8
  %313 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %312, ptr %1)
  %314 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %313, 0
  br i1 %314, label %SwitchWithFallthrough_state_07_ready, label %SwitchWithFallthrough_state_07_pending

SwitchWithFallthrough_state_07_ready:             ; preds = %SwitchWithFallthrough_state_07_poll
  %315 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %313, 1
  %316 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  store i64 %315, ptr %316, align 4
  store ptr null, ptr %160, align 8
  %317 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 8, ptr %317, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 21 }, i64 7, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %SwitchWithFallthrough_state_08

SwitchWithFallthrough_state_07_pending:           ; preds = %SwitchWithFallthrough_state_07_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 21 }, i64 7, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

SwitchWithFallthrough_state_06_true:              ; preds = %SwitchWithFallthrough_state_09
  %318 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %318, align 1
  br label %SwitchWithFallthrough_state_07

SwitchWithFallthrough_state_06_false:             ; preds = %SwitchWithFallthrough_state_09
  %319 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 10, ptr %319, align 1
  br label %SwitchWithFallthrough_state_10

SwitchWithFallthrough_state_10_init:              ; preds = %SwitchWithFallthrough_state_10
  %320 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %321 = load i64, ptr %320, align 4
  %322 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %323 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %322, align 8
  %324 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %325 = load i64, ptr %324, align 4
  %326 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %327 = load i64, ptr %326, align 4
  %328 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %329 = load i64, ptr %328, align 4
  %330 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %331 = load i64, ptr %330, align 4
  %332 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  %333 = load i64, ptr %332, align 4
  %334 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 8
  %335 = load ptr, ptr %334, align 8
  %336 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 100)
  store ptr %336, ptr %217, align 8
  br label %SwitchWithFallthrough_state_10_poll

SwitchWithFallthrough_state_10_poll:              ; preds = %SwitchWithFallthrough_state_10_init, %SwitchWithFallthrough_state_10
  %337 = load ptr, ptr %217, align 8
  %338 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %337, ptr %1)
  %339 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %338, 0
  br i1 %339, label %SwitchWithFallthrough_state_10_ready, label %SwitchWithFallthrough_state_10_pending

SwitchWithFallthrough_state_10_ready:             ; preds = %SwitchWithFallthrough_state_10_poll
  %340 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %338, 1
  %341 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 7
  store i64 %340, ptr %341, align 4
  store ptr null, ptr %217, align 8
  %342 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 11, ptr %342, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 21 }, i64 10, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %SwitchWithFallthrough_state_11

SwitchWithFallthrough_state_10_pending:           ; preds = %SwitchWithFallthrough_state_10_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 21 }, i64 10, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
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
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/complex.(*TwoLoops$State).Poll"(ptr %0, ptr %1) {
TwoLoops_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  %4 = sext i8 %3 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 8 }, i64 %4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
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
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  %12 = load i1, ptr %11, align 1
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 7
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 8
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 9
  %22 = load i1, ptr %21, align 1
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 10
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 11
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 12
  %28 = load i64, ptr %27, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 8 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  store i64 0, ptr %29, align 4
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  store i64 0, ptr %30, align 4
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %31, align 1
  br label %TwoLoops_state_01

TwoLoops_state_01:                                ; preds = %TwoLoops_state_03, %TwoLoops_state_00, %TwoLoops_entry
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 1
  %33 = load i64, ptr %32, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  %35 = load i64, ptr %34, align 4
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 5
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  %41 = load i64, ptr %40, align 4
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 7
  %43 = load i64, ptr %42, align 4
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 8
  %45 = load i64, ptr %44, align 4
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 9
  %47 = load i1, ptr %46, align 1
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 10
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 11
  %51 = load i64, ptr %50, align 4
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 12
  %53 = load i64, ptr %52, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 8 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %54 = icmp slt i64 %37, %33
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  store i1 %54, ptr %55, align 1
  br i1 %54, label %TwoLoops_state_01_true, label %TwoLoops_state_01_false

TwoLoops_state_02:                                ; preds = %TwoLoops_state_01_true, %TwoLoops_entry
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 1
  %57 = load i64, ptr %56, align 4
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  %59 = load i64, ptr %58, align 4
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  %61 = load i64, ptr %60, align 4
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  %63 = load i1, ptr %62, align 1
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  %65 = load i64, ptr %64, align 4
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 7
  %67 = load i64, ptr %66, align 4
  %68 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 8
  %69 = load i64, ptr %68, align 4
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 9
  %71 = load i1, ptr %70, align 1
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 10
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 11
  %75 = load i64, ptr %74, align 4
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 12
  %77 = load i64, ptr %76, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 8 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 13
  %79 = load ptr, ptr %78, align 8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %TwoLoops_state_02_init, label %TwoLoops_state_02_poll

TwoLoops_state_03:                                ; preds = %TwoLoops_state_02_ready, %TwoLoops_entry
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 1
  %82 = load i64, ptr %81, align 4
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  %84 = load i64, ptr %83, align 4
  %85 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  %86 = load i64, ptr %85, align 4
  %87 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  %88 = load i1, ptr %87, align 1
  %89 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  %90 = load i64, ptr %89, align 4
  %91 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 7
  %92 = load i64, ptr %91, align 4
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 8
  %94 = load i64, ptr %93, align 4
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 9
  %96 = load i1, ptr %95, align 1
  %97 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 10
  %98 = load ptr, ptr %97, align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 11
  %100 = load i64, ptr %99, align 4
  %101 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 12
  %102 = load i64, ptr %101, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 8 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %103 = add i64 %84, %90
  %104 = add i64 %86, 1
  %105 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  store i64 %103, ptr %105, align 4
  %106 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  store i64 %104, ptr %106, align 4
  %107 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %104)
  %108 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 5
  store ptr %107, ptr %108, align 8
  %109 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  store i64 %90, ptr %109, align 4
  %110 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %110, align 1
  br label %TwoLoops_state_01

TwoLoops_state_04:                                ; preds = %TwoLoops_state_01_false, %TwoLoops_entry
  %111 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 1
  %112 = load i64, ptr %111, align 4
  %113 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  %114 = load i64, ptr %113, align 4
  %115 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  %116 = load i64, ptr %115, align 4
  %117 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  %118 = load i1, ptr %117, align 1
  %119 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 5
  %120 = load ptr, ptr %119, align 8
  %121 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  %122 = load i64, ptr %121, align 4
  %123 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 7
  %124 = load i64, ptr %123, align 4
  %125 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 8
  %126 = load i64, ptr %125, align 4
  %127 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 9
  %128 = load i1, ptr %127, align 1
  %129 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 10
  %130 = load ptr, ptr %129, align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 11
  %132 = load i64, ptr %131, align 4
  %133 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 12
  %134 = load i64, ptr %133, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 8 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %135 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 7
  store i64 0, ptr %135, align 4
  %136 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 8
  store i64 0, ptr %136, align 4
  %137 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %137, align 1
  br label %TwoLoops_state_05

TwoLoops_state_05:                                ; preds = %TwoLoops_state_07, %TwoLoops_state_04, %TwoLoops_entry
  %138 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 1
  %139 = load i64, ptr %138, align 4
  %140 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  %141 = load i64, ptr %140, align 4
  %142 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  %143 = load i64, ptr %142, align 4
  %144 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  %145 = load i1, ptr %144, align 1
  %146 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 5
  %147 = load ptr, ptr %146, align 8
  %148 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  %149 = load i64, ptr %148, align 4
  %150 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 7
  %151 = load i64, ptr %150, align 4
  %152 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 8
  %153 = load i64, ptr %152, align 4
  %154 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 10
  %155 = load ptr, ptr %154, align 8
  %156 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 11
  %157 = load i64, ptr %156, align 4
  %158 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 12
  %159 = load i64, ptr %158, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 8 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %160 = icmp slt i64 %153, %139
  %161 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 9
  store i1 %160, ptr %161, align 1
  br i1 %160, label %TwoLoops_state_04_true, label %TwoLoops_state_04_false

TwoLoops_state_06:                                ; preds = %TwoLoops_state_04_true, %TwoLoops_entry
  %162 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 1
  %163 = load i64, ptr %162, align 4
  %164 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  %165 = load i64, ptr %164, align 4
  %166 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  %167 = load i64, ptr %166, align 4
  %168 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  %169 = load i1, ptr %168, align 1
  %170 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 5
  %171 = load ptr, ptr %170, align 8
  %172 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  %173 = load i64, ptr %172, align 4
  %174 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 7
  %175 = load i64, ptr %174, align 4
  %176 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 8
  %177 = load i64, ptr %176, align 4
  %178 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 9
  %179 = load i1, ptr %178, align 1
  %180 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 12
  %181 = load i64, ptr %180, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 8 }, i64 6, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %182 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 14
  %183 = load ptr, ptr %182, align 8
  %184 = icmp eq ptr %183, null
  br i1 %184, label %TwoLoops_state_06_init, label %TwoLoops_state_06_poll

TwoLoops_state_07:                                ; preds = %TwoLoops_state_06_ready, %TwoLoops_entry
  %185 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 1
  %186 = load i64, ptr %185, align 4
  %187 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  %188 = load i64, ptr %187, align 4
  %189 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  %190 = load i64, ptr %189, align 4
  %191 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  %192 = load i1, ptr %191, align 1
  %193 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 5
  %194 = load ptr, ptr %193, align 8
  %195 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  %196 = load i64, ptr %195, align 4
  %197 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 7
  %198 = load i64, ptr %197, align 4
  %199 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 8
  %200 = load i64, ptr %199, align 4
  %201 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 9
  %202 = load i1, ptr %201, align 1
  %203 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 12
  %204 = load i64, ptr %203, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 8 }, i64 7, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %205 = add i64 %198, %204
  %206 = add i64 %200, 1
  %207 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 7
  store i64 %205, ptr %207, align 4
  %208 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 8
  store i64 %206, ptr %208, align 4
  %209 = mul i64 %206, 2
  %210 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %209)
  %211 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 10
  store ptr %210, ptr %211, align 8
  %212 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 11
  store i64 %209, ptr %212, align 4
  %213 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 12
  store i64 %204, ptr %213, align 4
  %214 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %214, align 1
  br label %TwoLoops_state_05

TwoLoops_state_08:                                ; preds = %TwoLoops_state_04_false, %TwoLoops_entry
  %215 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 1
  %216 = load i64, ptr %215, align 4
  %217 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  %218 = load i64, ptr %217, align 4
  %219 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  %220 = load i64, ptr %219, align 4
  %221 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  %222 = load i1, ptr %221, align 1
  %223 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 5
  %224 = load ptr, ptr %223, align 8
  %225 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  %226 = load i64, ptr %225, align 4
  %227 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 7
  %228 = load i64, ptr %227, align 4
  %229 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 8
  %230 = load i64, ptr %229, align 4
  %231 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 9
  %232 = load i1, ptr %231, align 1
  %233 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 10
  %234 = load ptr, ptr %233, align 8
  %235 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 11
  %236 = load i64, ptr %235, align 4
  %237 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 12
  %238 = load i64, ptr %237, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 8 }, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %239 = add i64 %218, %228
  %240 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %239)
  %241 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %242 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %241, 0
  %243 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %242, ptr %240, 1
  %244 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 15
  store i64 %239, ptr %244, align 4
  %245 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 0
  store i8 9, ptr %245, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 8 }, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %246 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 15
  %247 = load i64, ptr %246, align 4
  %248 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %247, 1
  %249 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %248, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %249

TwoLoops_state_done:                              ; preds = %TwoLoops_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 8 }, i64 9, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, i1 false, i1 true)
  %250 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 15
  %251 = load i64, ptr %250, align 4
  %252 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %251, 1
  %253 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %252, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %253

TwoLoops_state_unreach:                           ; preds = %TwoLoops_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_12:                                         ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

TwoLoops_state_01_true:                           ; preds = %TwoLoops_state_01
  %254 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  store i1 %54, ptr %254, align 1
  %255 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %255, align 1
  br label %TwoLoops_state_02

TwoLoops_state_01_false:                          ; preds = %TwoLoops_state_01
  %256 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  store i1 %54, ptr %256, align 1
  %257 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %257, align 1
  br label %TwoLoops_state_04

TwoLoops_state_02_init:                           ; preds = %TwoLoops_state_02
  %258 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 1
  %259 = load i64, ptr %258, align 4
  %260 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  %261 = load i64, ptr %260, align 4
  %262 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  %263 = load i64, ptr %262, align 4
  %264 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  %265 = load i1, ptr %264, align 1
  %266 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  %267 = load i64, ptr %266, align 4
  %268 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 7
  %269 = load i64, ptr %268, align 4
  %270 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 8
  %271 = load i64, ptr %270, align 4
  %272 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 9
  %273 = load i1, ptr %272, align 1
  %274 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 10
  %275 = load ptr, ptr %274, align 8
  %276 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 11
  %277 = load i64, ptr %276, align 4
  %278 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 12
  %279 = load i64, ptr %278, align 4
  %280 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %263)
  %281 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 5
  store ptr %280, ptr %281, align 8
  store ptr %280, ptr %78, align 8
  br label %TwoLoops_state_02_poll

TwoLoops_state_02_poll:                           ; preds = %TwoLoops_state_02_init, %TwoLoops_state_02
  %282 = load ptr, ptr %78, align 8
  %283 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %282, ptr %1)
  %284 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %283, 0
  br i1 %284, label %TwoLoops_state_02_ready, label %TwoLoops_state_02_pending

TwoLoops_state_02_ready:                          ; preds = %TwoLoops_state_02_poll
  %285 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %283, 1
  %286 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  store i64 %285, ptr %286, align 4
  store ptr null, ptr %78, align 8
  %287 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %287, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 8 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %TwoLoops_state_03

TwoLoops_state_02_pending:                        ; preds = %TwoLoops_state_02_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 8 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

TwoLoops_state_04_true:                           ; preds = %TwoLoops_state_05
  %288 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 9
  store i1 %160, ptr %288, align 1
  %289 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %289, align 1
  br label %TwoLoops_state_06

TwoLoops_state_04_false:                          ; preds = %TwoLoops_state_05
  %290 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 9
  store i1 %160, ptr %290, align 1
  %291 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 0
  store i8 8, ptr %291, align 1
  br label %TwoLoops_state_08

TwoLoops_state_06_init:                           ; preds = %TwoLoops_state_06
  %292 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 1
  %293 = load i64, ptr %292, align 4
  %294 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  %295 = load i64, ptr %294, align 4
  %296 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  %297 = load i64, ptr %296, align 4
  %298 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  %299 = load i1, ptr %298, align 1
  %300 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 5
  %301 = load ptr, ptr %300, align 8
  %302 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  %303 = load i64, ptr %302, align 4
  %304 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 7
  %305 = load i64, ptr %304, align 4
  %306 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 8
  %307 = load i64, ptr %306, align 4
  %308 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 9
  %309 = load i1, ptr %308, align 1
  %310 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 12
  %311 = load i64, ptr %310, align 4
  %312 = mul i64 %307, 2
  %313 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 11
  store i64 %312, ptr %313, align 4
  %314 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %312)
  %315 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 10
  store ptr %314, ptr %315, align 8
  store ptr %314, ptr %182, align 8
  br label %TwoLoops_state_06_poll

TwoLoops_state_06_poll:                           ; preds = %TwoLoops_state_06_init, %TwoLoops_state_06
  %316 = load ptr, ptr %182, align 8
  %317 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %316, ptr %1)
  %318 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %317, 0
  br i1 %318, label %TwoLoops_state_06_ready, label %TwoLoops_state_06_pending

TwoLoops_state_06_ready:                          ; preds = %TwoLoops_state_06_poll
  %319 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %317, 1
  %320 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 12
  store i64 %319, ptr %320, align 4
  store ptr null, ptr %182, align 8
  %321 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %321, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 8 }, i64 6, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %TwoLoops_state_07

TwoLoops_state_06_pending:                        ; preds = %TwoLoops_state_06_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 8 }, i64 6, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
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
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State")
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
