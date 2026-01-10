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

@0 = private unnamed_addr constant [13 x i8] c"LoopWithBreak", align 1
@1 = private unnamed_addr constant [8 x i8] c"dispatch", align 1
@2 = private unnamed_addr constant [5 x i8] c"enter", align 1
@3 = private unnamed_addr constant [7 x i8] c"pending", align 1
@4 = private unnamed_addr constant [5 x i8] c"ready", align 1
@"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -103283099, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Await", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Poll", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Poll" }] }, align 8
@5 = private unnamed_addr constant [22 x i8] c"async.ReadyFuture[int]", align 1
@"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1814719306, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@6 = private unnamed_addr constant [28 x i8] c"github.com/goplus/llgo/async", align 1
@7 = private unnamed_addr constant [5 x i8] c"value", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 3 }, ptr @"*_llgo_int" }, align 8
@8 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"github.com/goplus/llgo/cl/_testpull/controlflow.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
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
@"_llgo_github.com/goplus/llgo/async.Context" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 0, i32 29200871, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Context" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 13 }, ptr @"*_llgo_github.com/goplus/llgo/async.Context" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.struct$Re9uCNpaPdvqJtnZYej5NZ8aMgZjb-_ftN8ogfRqy78$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@14 = private unnamed_addr constant [5 x i8] c"Waker", align 1
@"_llgo_github.com/goplus/llgo/async.Waker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -2133419533, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 11 }, ptr @"*_llgo_github.com/goplus/llgo/async.Waker" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 47 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$5udCHZ6xl-fBE2F9apjWV2qrxMb4_QYfwdoy0QD1D8c$imethods", i64 1, i64 1 } }, align 8
@15 = private unnamed_addr constant [11 x i8] c"async.Waker", align 1
@"*_llgo_github.com/goplus/llgo/async.Waker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 504672852, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 11 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Waker" }, align 8
@16 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/cl/_testpull/controlflow", align 1
@17 = private unnamed_addr constant [4 x i8] c"Wake", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@18 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@"_llgo_iface$5udCHZ6xl-fBE2F9apjWV2qrxMb4_QYfwdoy0QD1D8c$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 4 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }], align 8
@19 = private unnamed_addr constant [8 x i8] c"hasWaker", align 1
@_llgo_bool = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 554183389, i8 12, i8 1, i8 1, i8 33, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 4 }, ptr @"*_llgo_bool" }, align 8
@20 = private unnamed_addr constant [4 x i8] c"bool", align 1
@"*_llgo_bool" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1896950390, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 4 }, ptr null }, ptr @_llgo_bool }, align 8
@"github.com/goplus/llgo/cl/_testpull/controlflow.struct$Re9uCNpaPdvqJtnZYej5NZ8aMgZjb-_ftN8ogfRqy78$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/async.Waker", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 8 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/async.Context"], align 8
@"_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 801809575, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 15 }, ptr @"*_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.struct$M9E5HRdqyc11Zqvq07yhy6frK_fAyRGIc35bZKl9nrs$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error", ptr @"github.com/goplus/llgo/async.Poll[int].Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError", ptr @"github.com/goplus/llgo/async.Poll[int].HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.Poll[int].IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.Poll[int].Value" }] }, align 8
@21 = private unnamed_addr constant [15 x i8] c"async.Poll[int]", align 1
@"*_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -920093333, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 15 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value" }] }, align 8
@22 = private unnamed_addr constant [5 x i8] c"Error", align 1
@"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1398528794, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 19 }, ptr @"*_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8$out", i64 1, i64 1 } }, align 8
@23 = private unnamed_addr constant [19 x i8] c"func() interface {}", align 1
@"*_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1160547289, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 19 }, ptr null }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" }, align 8
@_llgo_any = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1376530322, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 12 }, ptr @"*_llgo_any" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 47 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
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
@"github.com/goplus/llgo/cl/_testpull/controlflow.struct$M9E5HRdqyc11Zqvq07yhy6frK_fAyRGIc35bZKl9nrs$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @_llgo_bool, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 3 }, ptr @_llgo_any, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]"], align 8
@"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 968294533, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 50 }, ptr @"*_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 47 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0$imethods", i64 1, i64 1 } }, align 8
@30 = private unnamed_addr constant [50 x i8] c"interface { Poll(*async.Context) async.Poll[int] }", align 1
@"*_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1655281012, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 50 }, ptr null }, ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" }, align 8
@"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }], align 8
@31 = private unnamed_addr constant [4 x i8] c"done", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -763812060, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 23 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 47 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.(*LoopWithBreak$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.(*LoopWithBreak$State).Poll" }] }, align 8
@32 = private unnamed_addr constant [23 x i8] c"foo.LoopWithBreak$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 48, i32 -247910958, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 23 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.struct$ayRPl0Y6El8apACKwlDyCE78-yMQBgMRSTEjwPjh5hY$fields", i64 8, i64 8 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 47 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@33 = private unnamed_addr constant [5 x i8] c"state", align 1
@_llgo_int8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 1444672578, i8 12, i8 1, i8 1, i8 35, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @"*_llgo_int8" }, align 8
@34 = private unnamed_addr constant [4 x i8] c"int8", align 1
@"*_llgo_int8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1399554408, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr null }, ptr @_llgo_int8 }, align 8
@35 = private unnamed_addr constant [6 x i8] c"param0", align 1
@36 = private unnamed_addr constant [4 x i8] c"var0", align 1
@37 = private unnamed_addr constant [4 x i8] c"var1", align 1
@38 = private unnamed_addr constant [4 x i8] c"var2", align 1
@"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 964362133, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll" }] }, align 8
@39 = private unnamed_addr constant [22 x i8] c"async.AsyncFuture[int]", align 1
@"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 0, i32 1769159236, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
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
@"github.com/goplus/llgo/cl/_testpull/controlflow.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 2 }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 7 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @_llgo_bool, i64 17, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@49 = private unnamed_addr constant [4 x i8] c"var3", align 1
@50 = private unnamed_addr constant [4 x i8] c"sub0", align 1
@51 = private unnamed_addr constant [11 x i8] c"resultValue", align 1
@"github.com/goplus/llgo/cl/_testpull/controlflow.struct$ayRPl0Y6El8apACKwlDyCE78-yMQBgMRSTEjwPjh5hY$fields" = weak_odr constant [8 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_bool, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 11 }, ptr @_llgo_int, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@52 = private unnamed_addr constant [16 x i8] c"LoopWithContinue", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -928556538, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 26 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 47 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.(*LoopWithContinue$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.(*LoopWithContinue$State).Poll" }] }, align 8
@53 = private unnamed_addr constant [26 x i8] c"foo.LoopWithContinue$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 128, i64 112, i32 -1236307052, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 26 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.struct$bwoNmEh2ylacPfDGNZxnX2gPOe4a9wOywdPXSWdLwxU$fields", i64 15, i64 15 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 47 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"_llgo_github.com/goplus/llgo/async.Future[int]" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1503177044, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 17 }, ptr @"*_llgo_github.com/goplus/llgo/async.Future[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 47 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0$imethods", i64 1, i64 1 } }, align 8
@54 = private unnamed_addr constant [17 x i8] c"async.Future[int]", align 1
@"*_llgo_github.com/goplus/llgo/async.Future[int]" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 934108082, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 17 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]" }, align 8
@55 = private unnamed_addr constant [4 x i8] c"var4", align 1
@56 = private unnamed_addr constant [4 x i8] c"var5", align 1
@57 = private unnamed_addr constant [4 x i8] c"var6", align 1
@58 = private unnamed_addr constant [4 x i8] c"var7", align 1
@59 = private unnamed_addr constant [4 x i8] c"var8", align 1
@60 = private unnamed_addr constant [4 x i8] c"var9", align 1
@61 = private unnamed_addr constant [5 x i8] c"var10", align 1
@"github.com/goplus/llgo/cl/_testpull/controlflow.struct$bwoNmEh2ylacPfDGNZxnX2gPOe4a9wOywdPXSWdLwxU$fields" = weak_odr constant [15 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 4 }, ptr @_llgo_bool, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 4 }, ptr @_llgo_int, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 4 }, ptr @_llgo_int, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 4 }, ptr @_llgo_bool, i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr @_llgo_int, i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 5 }, ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]", i64 104, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 11 }, ptr @_llgo_int, i64 120, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@62 = private unnamed_addr constant [10 x i8] c"NestedLoop", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -274987957, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 20 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 47 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.(*NestedLoop$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.(*NestedLoop$State).Poll" }] }, align 8
@63 = private unnamed_addr constant [20 x i8] c"foo.NestedLoop$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 136, i64 120, i32 1524647637, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 20 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.struct$EJNzfdyp0wHO8tfeo3VcOYS4WVKBUH15FPPYgbjiWxw$fields", i64 16, i64 16 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 47 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@64 = private unnamed_addr constant [6 x i8] c"param1", align 1
@"github.com/goplus/llgo/cl/_testpull/controlflow.struct$EJNzfdyp0wHO8tfeo3VcOYS4WVKBUH15FPPYgbjiWxw$fields" = weak_odr constant [16 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 6 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 4 }, ptr @_llgo_int, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 4 }, ptr @_llgo_bool, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 4 }, ptr @_llgo_int, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 4 }, ptr @_llgo_bool, i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 4 }, ptr @_llgo_int, i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr @_llgo_int, i64 104, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 5 }, ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]", i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 120, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 11 }, ptr @_llgo_int, i64 128, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@65 = private unnamed_addr constant [10 x i8] c"SwitchCase", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -136600484, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 20 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 47 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.(*SwitchCase$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.(*SwitchCase$State).Poll" }] }, align 8
@66 = private unnamed_addr constant [20 x i8] c"foo.SwitchCase$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 72, i64 56, i32 326863944, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 20 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.struct$x_ELybqexFoPWcY0p_LykhzXv0LKn85ZkJ4kak8Qb4k$fields", i64 9, i64 9 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 47 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@67 = private unnamed_addr constant [4 x i8] c"sub1", align 1
@68 = private unnamed_addr constant [4 x i8] c"sub2", align 1
@"github.com/goplus/llgo/cl/_testpull/controlflow.struct$x_ELybqexFoPWcY0p_LykhzXv0LKn85ZkJ4kak8Qb4k$fields" = weak_odr constant [9 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 11 }, ptr @_llgo_int, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/controlflow.init$guard" = global i1 false, align 1
@69 = private unnamed_addr constant [45 x i8] c"Await() should be transformed by the compiler", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 6 }, ptr @"*_llgo_string" }, align 8
@70 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 6 }, ptr null }, ptr @_llgo_string }, align 8

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/controlflow.(*LoopWithBreak$State).Poll"(ptr %0, ptr %1) {
LoopWithBreak_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  %4 = sext i8 %3 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 }, i64 %4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
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
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 2
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 3
  %10 = load i1, ptr %9, align 1
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 5
  %14 = load i64, ptr %13, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 2
  store i64 0, ptr %15, align 4
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %16, align 1
  br label %LoopWithBreak_state_01

LoopWithBreak_state_01:                           ; preds = %LoopWithBreak_state_06, %LoopWithBreak_state_00, %LoopWithBreak_entry
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 1
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 2
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 4
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 5
  %24 = load i64, ptr %23, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %25 = icmp slt i64 %20, %18
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 3
  store i1 %25, ptr %26, align 1
  br i1 %25, label %LoopWithBreak_state_01_true, label %LoopWithBreak_state_01_false

LoopWithBreak_state_02:                           ; preds = %LoopWithBreak_state_01_true, %LoopWithBreak_entry
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 1
  %28 = load i64, ptr %27, align 4
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 2
  %30 = load i64, ptr %29, align 4
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 3
  %32 = load i1, ptr %31, align 1
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 5
  %34 = load i64, ptr %33, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 6
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %LoopWithBreak_state_02_init, label %LoopWithBreak_state_02_poll

LoopWithBreak_state_03:                           ; preds = %LoopWithBreak_state_02_ready, %LoopWithBreak_entry
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 1
  %39 = load i64, ptr %38, align 4
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 2
  %41 = load i64, ptr %40, align 4
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 3
  %43 = load i1, ptr %42, align 1
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 5
  %45 = load i64, ptr %44, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %46 = icmp sgt i64 %45, 5
  br i1 %46, label %LoopWithBreak_state_02_true, label %LoopWithBreak_state_02_false

LoopWithBreak_state_04:                           ; preds = %LoopWithBreak_state_01_false, %LoopWithBreak_entry
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 1
  %48 = load i64, ptr %47, align 4
  %49 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 2
  %50 = load i64, ptr %49, align 4
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 3
  %52 = load i1, ptr %51, align 1
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 4
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 5
  %56 = load i64, ptr %55, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %57 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 0)
  %58 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %58, 0
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %59, ptr %57, 1
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 7
  store i64 0, ptr %61, align 4
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %62, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 7
  %64 = load i64, ptr %63, align 4
  %65 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %64, 1
  %66 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %65, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %66

LoopWithBreak_state_05:                           ; preds = %LoopWithBreak_state_02_true, %LoopWithBreak_entry
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 1
  %68 = load i64, ptr %67, align 4
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 2
  %70 = load i64, ptr %69, align 4
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 3
  %72 = load i1, ptr %71, align 1
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 4
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 5
  %76 = load i64, ptr %75, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %77 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 5
  %78 = load i64, ptr %77, align 4
  %79 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %76)
  %80 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %81 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %80, 0
  %82 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %81, ptr %79, 1
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 7
  store i64 %78, ptr %83, align 4
  %84 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %84, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %85 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 7
  %86 = load i64, ptr %85, align 4
  %87 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %86, 1
  %88 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %87, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %88

LoopWithBreak_state_06:                           ; preds = %LoopWithBreak_state_02_false, %LoopWithBreak_entry
  %89 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 1
  %90 = load i64, ptr %89, align 4
  %91 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 2
  %92 = load i64, ptr %91, align 4
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 3
  %94 = load i1, ptr %93, align 1
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 4
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 5
  %98 = load i64, ptr %97, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 }, i64 6, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %99 = add i64 %92, 1
  %100 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 2
  store i64 %99, ptr %100, align 4
  %101 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %101, align 1
  br label %LoopWithBreak_state_01

LoopWithBreak_state_done:                         ; preds = %LoopWithBreak_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 }, i64 7, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, i1 false, i1 true)
  %102 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 7
  %103 = load i64, ptr %102, align 4
  %104 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %103, 1
  %105 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %104, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %105

LoopWithBreak_state_unreach:                      ; preds = %LoopWithBreak_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_10:                                         ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

LoopWithBreak_state_01_true:                      ; preds = %LoopWithBreak_state_01
  %106 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 3
  store i1 %25, ptr %106, align 1
  %107 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %107, align 1
  br label %LoopWithBreak_state_02

LoopWithBreak_state_01_false:                     ; preds = %LoopWithBreak_state_01
  %108 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 3
  store i1 %25, ptr %108, align 1
  %109 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %109, align 1
  br label %LoopWithBreak_state_04

LoopWithBreak_state_02_init:                      ; preds = %LoopWithBreak_state_02
  %110 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 1
  %111 = load i64, ptr %110, align 4
  %112 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 2
  %113 = load i64, ptr %112, align 4
  %114 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 3
  %115 = load i1, ptr %114, align 1
  %116 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 5
  %117 = load i64, ptr %116, align 4
  %118 = call ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.Step"(i64 %113)
  %119 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 4
  store ptr %118, ptr %119, align 8
  store ptr %118, ptr %35, align 8
  br label %LoopWithBreak_state_02_poll

LoopWithBreak_state_02_poll:                      ; preds = %LoopWithBreak_state_02_init, %LoopWithBreak_state_02
  %120 = load ptr, ptr %35, align 8
  %121 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %120, ptr %1)
  %122 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %121, 0
  br i1 %122, label %LoopWithBreak_state_02_ready, label %LoopWithBreak_state_02_pending

LoopWithBreak_state_02_ready:                     ; preds = %LoopWithBreak_state_02_poll
  %123 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %121, 1
  %124 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 5
  store i64 %123, ptr %124, align 4
  store ptr null, ptr %35, align 8
  %125 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %125, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %LoopWithBreak_state_03

LoopWithBreak_state_02_pending:                   ; preds = %LoopWithBreak_state_02_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

LoopWithBreak_state_02_true:                      ; preds = %LoopWithBreak_state_03
  %126 = call ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.Step"(i64 %41)
  %127 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 4
  store ptr %126, ptr %127, align 8
  %128 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 5
  store i64 %45, ptr %128, align 4
  %129 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %129, align 1
  br label %LoopWithBreak_state_05

LoopWithBreak_state_02_false:                     ; preds = %LoopWithBreak_state_03
  %130 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 4
  store ptr %126, ptr %130, align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 5
  store i64 %45, ptr %131, align 4
  %132 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %132, align 1
  br label %LoopWithBreak_state_06
}

declare void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1, i1)

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
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithBreak$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define linkonce i64 @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 45 }, ptr %1, align 8
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

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/controlflow.(*LoopWithContinue$State).Poll"(ptr %0, ptr %1) {
LoopWithContinue_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  %4 = sext i8 %3 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 16 }, i64 %4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
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
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 2
  %8 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %7, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 3
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 4
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 5
  %14 = load i64, ptr %13, align 4
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 6
  %16 = load i1, ptr %15, align 1
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 7
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 8
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 9
  %22 = load i1, ptr %21, align 1
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 10
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 11
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 12
  %28 = load ptr, ptr %27, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 16 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 3
  store i64 0, ptr %29, align 4
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 5
  store i64 0, ptr %30, align 4
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %31, align 1
  br label %LoopWithContinue_state_01

LoopWithContinue_state_01:                        ; preds = %LoopWithContinue_state_03, %LoopWithContinue_state_00, %LoopWithContinue_entry
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 1
  %33 = load i64, ptr %32, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 2
  %35 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %34, align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 3
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 4
  %39 = load i64, ptr %38, align 4
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 5
  %41 = load i64, ptr %40, align 4
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 7
  %43 = load i64, ptr %42, align 4
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 8
  %45 = load i64, ptr %44, align 4
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 9
  %47 = load i1, ptr %46, align 1
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 10
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 11
  %51 = load i64, ptr %50, align 4
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 12
  %53 = load ptr, ptr %52, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 16 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %54 = icmp slt i64 %41, %33
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 6
  store i1 %54, ptr %55, align 1
  br i1 %54, label %LoopWithContinue_state_01_true, label %LoopWithContinue_state_01_false

LoopWithContinue_state_02:                        ; preds = %LoopWithContinue_state_01_true, %LoopWithContinue_entry
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 1
  %57 = load i64, ptr %56, align 4
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 2
  %59 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %58, align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 3
  %61 = load i64, ptr %60, align 4
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 4
  %63 = load i64, ptr %62, align 4
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 5
  %65 = load i64, ptr %64, align 4
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 6
  %67 = load i1, ptr %66, align 1
  %68 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 7
  %69 = load i64, ptr %68, align 4
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 10
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 11
  %73 = load i64, ptr %72, align 4
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 12
  %75 = load ptr, ptr %74, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 16 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %76 = srem i64 %65, 2
  %77 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 8
  store i64 %76, ptr %77, align 4
  %78 = icmp eq i64 %76, 0
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 9
  store i1 %78, ptr %79, align 1
  br i1 %78, label %LoopWithContinue_state_02_true, label %LoopWithContinue_state_02_false

LoopWithContinue_state_03:                        ; preds = %LoopWithContinue_state_06, %LoopWithContinue_state_02_true, %LoopWithContinue_entry
  %80 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 1
  %81 = load i64, ptr %80, align 4
  %82 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 2
  %83 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %82, align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 3
  %85 = load i64, ptr %84, align 4
  %86 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 4
  %87 = load i64, ptr %86, align 4
  %88 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 5
  %89 = load i64, ptr %88, align 4
  %90 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 6
  %91 = load i1, ptr %90, align 1
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 8
  %93 = load i64, ptr %92, align 4
  %94 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 9
  %95 = load i1, ptr %94, align 1
  %96 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 10
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 11
  %99 = load i64, ptr %98, align 4
  %100 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 12
  %101 = load ptr, ptr %100, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 16 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %102 = add i64 %89, 1
  %103 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 7
  store i64 %102, ptr %103, align 4
  %104 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 4
  %105 = load i64, ptr %104, align 4
  %106 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 3
  store i64 %105, ptr %106, align 4
  %107 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 7
  %108 = load i64, ptr %107, align 4
  %109 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 5
  store i64 %108, ptr %109, align 4
  %110 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 7
  store i64 %102, ptr %110, align 4
  %111 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %111, align 1
  br label %LoopWithContinue_state_01

LoopWithContinue_state_04:                        ; preds = %LoopWithContinue_state_01_false, %LoopWithContinue_entry
  %112 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 1
  %113 = load i64, ptr %112, align 4
  %114 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 3
  %115 = load i64, ptr %114, align 4
  %116 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 4
  %117 = load i64, ptr %116, align 4
  %118 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 5
  %119 = load i64, ptr %118, align 4
  %120 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 6
  %121 = load i1, ptr %120, align 1
  %122 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 7
  %123 = load i64, ptr %122, align 4
  %124 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 8
  %125 = load i64, ptr %124, align 4
  %126 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 9
  %127 = load i1, ptr %126, align 1
  %128 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 10
  %129 = load ptr, ptr %128, align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 11
  %131 = load i64, ptr %130, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 16 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %132 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 3
  %133 = load i64, ptr %132, align 4
  %134 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %115)
  %135 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %136 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %135, 0
  %137 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %136, ptr %134, 1
  %138 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %137, ptr %138, align 8
  %139 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 14
  store i64 %133, ptr %139, align 4
  %140 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %140, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 16 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %141 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 14
  %142 = load i64, ptr %141, align 4
  %143 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %142, 1
  %144 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %143, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %144

LoopWithContinue_state_05:                        ; preds = %LoopWithContinue_state_02_false, %LoopWithContinue_entry
  %145 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 1
  %146 = load i64, ptr %145, align 4
  %147 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 2
  %148 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %147, align 8
  %149 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 3
  %150 = load i64, ptr %149, align 4
  %151 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 4
  %152 = load i64, ptr %151, align 4
  %153 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 5
  %154 = load i64, ptr %153, align 4
  %155 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 6
  %156 = load i1, ptr %155, align 1
  %157 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 7
  %158 = load i64, ptr %157, align 4
  %159 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 8
  %160 = load i64, ptr %159, align 4
  %161 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 9
  %162 = load i1, ptr %161, align 1
  %163 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 11
  %164 = load i64, ptr %163, align 4
  %165 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 12
  %166 = load ptr, ptr %165, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 16 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %167 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 13
  %168 = load ptr, ptr %167, align 8
  %169 = icmp eq ptr %168, null
  br i1 %169, label %LoopWithContinue_state_05_init, label %LoopWithContinue_state_05_poll

LoopWithContinue_state_06:                        ; preds = %LoopWithContinue_state_05_ready, %LoopWithContinue_entry
  %170 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 1
  %171 = load i64, ptr %170, align 4
  %172 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 2
  %173 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %172, align 8
  %174 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 3
  %175 = load i64, ptr %174, align 4
  %176 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 4
  %177 = load i64, ptr %176, align 4
  %178 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 5
  %179 = load i64, ptr %178, align 4
  %180 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 6
  %181 = load i1, ptr %180, align 1
  %182 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 7
  %183 = load i64, ptr %182, align 4
  %184 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 8
  %185 = load i64, ptr %184, align 4
  %186 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 9
  %187 = load i1, ptr %186, align 1
  %188 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 11
  %189 = load i64, ptr %188, align 4
  %190 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 12
  %191 = load ptr, ptr %190, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 16 }, i64 6, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %192 = add i64 %175, %189
  %193 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 4
  store i64 %192, ptr %193, align 4
  %194 = call ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.Step"(i64 %179)
  %195 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 10
  store ptr %194, ptr %195, align 8
  %196 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 11
  store i64 %189, ptr %196, align 4
  %197 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %197, align 1
  br label %LoopWithContinue_state_03

LoopWithContinue_state_done:                      ; preds = %LoopWithContinue_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 16 }, i64 7, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, i1 false, i1 true)
  %198 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 14
  %199 = load i64, ptr %198, align 4
  %200 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %199, 1
  %201 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %200, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %201

LoopWithContinue_state_unreach:                   ; preds = %LoopWithContinue_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_10:                                         ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

LoopWithContinue_state_01_true:                   ; preds = %LoopWithContinue_state_01
  %202 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 6
  store i1 %54, ptr %202, align 1
  %203 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %203, align 1
  br label %LoopWithContinue_state_02

LoopWithContinue_state_01_false:                  ; preds = %LoopWithContinue_state_01
  %204 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 6
  store i1 %54, ptr %204, align 1
  %205 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %205, align 1
  br label %LoopWithContinue_state_04

LoopWithContinue_state_02_true:                   ; preds = %LoopWithContinue_state_02
  %206 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 3
  %207 = load i64, ptr %206, align 4
  %208 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 4
  store i64 %207, ptr %208, align 4
  %209 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 8
  store i64 %76, ptr %209, align 4
  %210 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 9
  store i1 %78, ptr %210, align 1
  %211 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %211, align 1
  br label %LoopWithContinue_state_03

LoopWithContinue_state_02_false:                  ; preds = %LoopWithContinue_state_02
  %212 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 8
  store i64 %76, ptr %212, align 4
  %213 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 9
  store i1 %78, ptr %213, align 1
  %214 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %214, align 1
  br label %LoopWithContinue_state_05

LoopWithContinue_state_05_init:                   ; preds = %LoopWithContinue_state_05
  %215 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 1
  %216 = load i64, ptr %215, align 4
  %217 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 2
  %218 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %217, align 8
  %219 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 3
  %220 = load i64, ptr %219, align 4
  %221 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 4
  %222 = load i64, ptr %221, align 4
  %223 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 5
  %224 = load i64, ptr %223, align 4
  %225 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 6
  %226 = load i1, ptr %225, align 1
  %227 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 7
  %228 = load i64, ptr %227, align 4
  %229 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 8
  %230 = load i64, ptr %229, align 4
  %231 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 9
  %232 = load i1, ptr %231, align 1
  %233 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 11
  %234 = load i64, ptr %233, align 4
  %235 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 12
  %236 = load ptr, ptr %235, align 8
  %237 = call ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.Step"(i64 %224)
  %238 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 10
  store ptr %237, ptr %238, align 8
  store ptr %237, ptr %167, align 8
  br label %LoopWithContinue_state_05_poll

LoopWithContinue_state_05_poll:                   ; preds = %LoopWithContinue_state_05_init, %LoopWithContinue_state_05
  %239 = load ptr, ptr %167, align 8
  %240 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %239, ptr %1)
  %241 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %240, 0
  br i1 %241, label %LoopWithContinue_state_05_ready, label %LoopWithContinue_state_05_pending

LoopWithContinue_state_05_ready:                  ; preds = %LoopWithContinue_state_05_poll
  %242 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %240, 1
  %243 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 11
  store i64 %242, ptr %243, align 4
  store ptr null, ptr %167, align 8
  %244 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %244, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 16 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %LoopWithContinue_state_06

LoopWithContinue_state_05_pending:                ; preds = %LoopWithContinue_state_05_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 16 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
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
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.LoopWithContinue$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/controlflow.(*NestedLoop$State).Poll"(ptr %0, ptr %1) {
NestedLoop_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  %4 = sext i8 %3 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 10 }, i64 %4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
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
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 2
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 3
  %10 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %9, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 4
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 5
  %14 = load i64, ptr %13, align 4
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 6
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 7
  %18 = load i1, ptr %17, align 1
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 8
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 9
  %22 = load i1, ptr %21, align 1
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 10
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 11
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 12
  %28 = load i64, ptr %27, align 4
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 13
  %30 = load ptr, ptr %29, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 10 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 4
  store i64 0, ptr %31, align 4
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 6
  store i64 0, ptr %32, align 4
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %33, align 1
  br label %NestedLoop_state_01

NestedLoop_state_01:                              ; preds = %NestedLoop_state_07, %NestedLoop_state_00, %NestedLoop_entry
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 1
  %35 = load i64, ptr %34, align 4
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 2
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 3
  %39 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %38, align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 4
  %41 = load i64, ptr %40, align 4
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 5
  %43 = load i64, ptr %42, align 4
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 6
  %45 = load i64, ptr %44, align 4
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 8
  %47 = load i64, ptr %46, align 4
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 9
  %49 = load i1, ptr %48, align 1
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 10
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 11
  %53 = load i64, ptr %52, align 4
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 12
  %55 = load i64, ptr %54, align 4
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 13
  %57 = load ptr, ptr %56, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 10 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %58 = icmp slt i64 %45, %35
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 7
  store i1 %58, ptr %59, align 1
  br i1 %58, label %NestedLoop_state_01_true, label %NestedLoop_state_01_false

NestedLoop_state_02:                              ; preds = %NestedLoop_state_01_true, %NestedLoop_entry
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 1
  %61 = load i64, ptr %60, align 4
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 2
  %63 = load i64, ptr %62, align 4
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 3
  %65 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %64, align 8
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 4
  %67 = load i64, ptr %66, align 4
  %68 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 5
  %69 = load i64, ptr %68, align 4
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 6
  %71 = load i64, ptr %70, align 4
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 7
  %73 = load i1, ptr %72, align 1
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 8
  %75 = load i64, ptr %74, align 4
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 9
  %77 = load i1, ptr %76, align 1
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 10
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 11
  %81 = load i64, ptr %80, align 4
  %82 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 12
  %83 = load i64, ptr %82, align 4
  %84 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 13
  %85 = load ptr, ptr %84, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 10 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %86 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 4
  %87 = load i64, ptr %86, align 4
  %88 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 5
  store i64 %87, ptr %88, align 4
  %89 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 8
  store i64 0, ptr %89, align 4
  %90 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %90, align 1
  br label %NestedLoop_state_04

NestedLoop_state_03:                              ; preds = %NestedLoop_state_01_false, %NestedLoop_entry
  %91 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 1
  %92 = load i64, ptr %91, align 4
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 2
  %94 = load i64, ptr %93, align 4
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 4
  %96 = load i64, ptr %95, align 4
  %97 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 5
  %98 = load i64, ptr %97, align 4
  %99 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 6
  %100 = load i64, ptr %99, align 4
  %101 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 7
  %102 = load i1, ptr %101, align 1
  %103 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 8
  %104 = load i64, ptr %103, align 4
  %105 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 9
  %106 = load i1, ptr %105, align 1
  %107 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 10
  %108 = load ptr, ptr %107, align 8
  %109 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 11
  %110 = load i64, ptr %109, align 4
  %111 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 12
  %112 = load i64, ptr %111, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 10 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %113 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 4
  %114 = load i64, ptr %113, align 4
  %115 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %96)
  %116 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %117 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %116, 0
  %118 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %117, ptr %115, 1
  %119 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 3
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %118, ptr %119, align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 15
  store i64 %114, ptr %120, align 4
  %121 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 0
  store i8 8, ptr %121, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 10 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %122 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 15
  %123 = load i64, ptr %122, align 4
  %124 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %123, 1
  %125 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %124, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %125

NestedLoop_state_04:                              ; preds = %NestedLoop_state_06, %NestedLoop_state_02, %NestedLoop_entry
  %126 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 1
  %127 = load i64, ptr %126, align 4
  %128 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 2
  %129 = load i64, ptr %128, align 4
  %130 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 3
  %131 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %130, align 8
  %132 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 4
  %133 = load i64, ptr %132, align 4
  %134 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 5
  %135 = load i64, ptr %134, align 4
  %136 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 6
  %137 = load i64, ptr %136, align 4
  %138 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 7
  %139 = load i1, ptr %138, align 1
  %140 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 8
  %141 = load i64, ptr %140, align 4
  %142 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 10
  %143 = load ptr, ptr %142, align 8
  %144 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 11
  %145 = load i64, ptr %144, align 4
  %146 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 12
  %147 = load i64, ptr %146, align 4
  %148 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 13
  %149 = load ptr, ptr %148, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 10 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %150 = icmp slt i64 %141, %129
  %151 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 9
  store i1 %150, ptr %151, align 1
  br i1 %150, label %NestedLoop_state_04_true, label %NestedLoop_state_04_false

NestedLoop_state_05:                              ; preds = %NestedLoop_state_04_true, %NestedLoop_entry
  %152 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 1
  %153 = load i64, ptr %152, align 4
  %154 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 2
  %155 = load i64, ptr %154, align 4
  %156 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 3
  %157 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %156, align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 4
  %159 = load i64, ptr %158, align 4
  %160 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 5
  %161 = load i64, ptr %160, align 4
  %162 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 6
  %163 = load i64, ptr %162, align 4
  %164 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 7
  %165 = load i1, ptr %164, align 1
  %166 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 8
  %167 = load i64, ptr %166, align 4
  %168 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 9
  %169 = load i1, ptr %168, align 1
  %170 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 12
  %171 = load i64, ptr %170, align 4
  %172 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 13
  %173 = load ptr, ptr %172, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 10 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %174 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 14
  %175 = load ptr, ptr %174, align 8
  %176 = icmp eq ptr %175, null
  br i1 %176, label %NestedLoop_state_05_init, label %NestedLoop_state_05_poll

NestedLoop_state_06:                              ; preds = %NestedLoop_state_05_ready, %NestedLoop_entry
  %177 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 1
  %178 = load i64, ptr %177, align 4
  %179 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 2
  %180 = load i64, ptr %179, align 4
  %181 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 3
  %182 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %181, align 8
  %183 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 4
  %184 = load i64, ptr %183, align 4
  %185 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 5
  %186 = load i64, ptr %185, align 4
  %187 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 6
  %188 = load i64, ptr %187, align 4
  %189 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 7
  %190 = load i1, ptr %189, align 1
  %191 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 8
  %192 = load i64, ptr %191, align 4
  %193 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 9
  %194 = load i1, ptr %193, align 1
  %195 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 12
  %196 = load i64, ptr %195, align 4
  %197 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 13
  %198 = load ptr, ptr %197, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 10 }, i64 6, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %199 = add i64 %186, %196
  %200 = add i64 %192, 1
  %201 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 5
  store i64 %199, ptr %201, align 4
  %202 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 8
  store i64 %200, ptr %202, align 4
  %203 = mul i64 %188, %200
  %204 = call ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.Step"(i64 %203)
  %205 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 10
  store ptr %204, ptr %205, align 8
  %206 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 11
  store i64 %203, ptr %206, align 4
  %207 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 12
  store i64 %196, ptr %207, align 4
  %208 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %208, align 1
  br label %NestedLoop_state_04

NestedLoop_state_07:                              ; preds = %NestedLoop_state_04_false, %NestedLoop_entry
  %209 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 1
  %210 = load i64, ptr %209, align 4
  %211 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 2
  %212 = load i64, ptr %211, align 4
  %213 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 3
  %214 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %213, align 8
  %215 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 4
  %216 = load i64, ptr %215, align 4
  %217 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 5
  %218 = load i64, ptr %217, align 4
  %219 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 6
  %220 = load i64, ptr %219, align 4
  %221 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 7
  %222 = load i1, ptr %221, align 1
  %223 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 8
  %224 = load i64, ptr %223, align 4
  %225 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 9
  %226 = load i1, ptr %225, align 1
  %227 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 10
  %228 = load ptr, ptr %227, align 8
  %229 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 11
  %230 = load i64, ptr %229, align 4
  %231 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 12
  %232 = load i64, ptr %231, align 4
  %233 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 13
  %234 = load ptr, ptr %233, align 8
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 10 }, i64 7, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %235 = add i64 %220, 1
  %236 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 5
  %237 = load i64, ptr %236, align 4
  %238 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 4
  store i64 %237, ptr %238, align 4
  %239 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 6
  store i64 %235, ptr %239, align 4
  %240 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %240, align 1
  br label %NestedLoop_state_01

NestedLoop_state_done:                            ; preds = %NestedLoop_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 10 }, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, i1 false, i1 true)
  %241 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 15
  %242 = load i64, ptr %241, align 4
  %243 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %242, 1
  %244 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %243, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %244

NestedLoop_state_unreach:                         ; preds = %NestedLoop_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_11:                                         ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

NestedLoop_state_01_true:                         ; preds = %NestedLoop_state_01
  %245 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 7
  store i1 %58, ptr %245, align 1
  %246 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %246, align 1
  br label %NestedLoop_state_02

NestedLoop_state_01_false:                        ; preds = %NestedLoop_state_01
  %247 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 7
  store i1 %58, ptr %247, align 1
  %248 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %248, align 1
  br label %NestedLoop_state_03

NestedLoop_state_04_true:                         ; preds = %NestedLoop_state_04
  %249 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 9
  store i1 %150, ptr %249, align 1
  %250 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %250, align 1
  br label %NestedLoop_state_05

NestedLoop_state_04_false:                        ; preds = %NestedLoop_state_04
  %251 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 9
  store i1 %150, ptr %251, align 1
  %252 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %252, align 1
  br label %NestedLoop_state_07

NestedLoop_state_05_init:                         ; preds = %NestedLoop_state_05
  %253 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 1
  %254 = load i64, ptr %253, align 4
  %255 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 2
  %256 = load i64, ptr %255, align 4
  %257 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 3
  %258 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %257, align 8
  %259 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 4
  %260 = load i64, ptr %259, align 4
  %261 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 5
  %262 = load i64, ptr %261, align 4
  %263 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 6
  %264 = load i64, ptr %263, align 4
  %265 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 7
  %266 = load i1, ptr %265, align 1
  %267 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 8
  %268 = load i64, ptr %267, align 4
  %269 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 9
  %270 = load i1, ptr %269, align 1
  %271 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 12
  %272 = load i64, ptr %271, align 4
  %273 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 13
  %274 = load ptr, ptr %273, align 8
  %275 = mul i64 %264, %268
  %276 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 11
  store i64 %275, ptr %276, align 4
  %277 = call ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.Step"(i64 %275)
  %278 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 10
  store ptr %277, ptr %278, align 8
  store ptr %277, ptr %174, align 8
  br label %NestedLoop_state_05_poll

NestedLoop_state_05_poll:                         ; preds = %NestedLoop_state_05_init, %NestedLoop_state_05
  %279 = load ptr, ptr %174, align 8
  %280 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %279, ptr %1)
  %281 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %280, 0
  br i1 %281, label %NestedLoop_state_05_ready, label %NestedLoop_state_05_pending

NestedLoop_state_05_ready:                        ; preds = %NestedLoop_state_05_poll
  %282 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %280, 1
  %283 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 12
  store i64 %282, ptr %283, align 4
  store ptr null, ptr %174, align 8
  %284 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %284, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 10 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %NestedLoop_state_06

NestedLoop_state_05_pending:                      ; preds = %NestedLoop_state_05_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 10 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
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
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.NestedLoop$State")
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, ptr %2, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/controlflow.(*SwitchCase$State).Poll"(ptr %0, ptr %1) {
SwitchCase_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  %4 = sext i8 %3 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 10 }, i64 %4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
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
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 2
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 3
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 4
  %12 = load i64, ptr %11, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 10 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %13 = icmp eq i64 %6, 1
  br i1 %13, label %SwitchCase_state_00_true, label %SwitchCase_state_00_false

SwitchCase_state_01:                              ; preds = %SwitchCase_state_00_true, %SwitchCase_entry
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 1
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 2
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 3
  %19 = load i64, ptr %18, align 4
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 4
  %21 = load i64, ptr %20, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 10 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 5
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %SwitchCase_state_01_init, label %SwitchCase_state_01_poll

SwitchCase_state_02:                              ; preds = %SwitchCase_state_01_ready, %SwitchCase_entry
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 1
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 2
  %28 = load i64, ptr %27, align 4
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 3
  %30 = load i64, ptr %29, align 4
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 4
  %32 = load i64, ptr %31, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 10 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 2
  %34 = load i64, ptr %33, align 4
  %35 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %28)
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %36, 0
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %37, ptr %35, 1
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 8
  store i64 %34, ptr %39, align 4
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 0
  store i8 8, ptr %40, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 10 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 8
  %42 = load i64, ptr %41, align 4
  %43 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %42, 1
  %44 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %43, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %44

SwitchCase_state_03:                              ; preds = %SwitchCase_state_03_true, %SwitchCase_entry
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 1
  %46 = load i64, ptr %45, align 4
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 2
  %48 = load i64, ptr %47, align 4
  %49 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 3
  %50 = load i64, ptr %49, align 4
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 4
  %52 = load i64, ptr %51, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 10 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 6
  %54 = load ptr, ptr %53, align 8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %SwitchCase_state_03_init, label %SwitchCase_state_03_poll

SwitchCase_state_04:                              ; preds = %SwitchCase_state_03_ready, %SwitchCase_entry
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 1
  %57 = load i64, ptr %56, align 4
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 2
  %59 = load i64, ptr %58, align 4
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 3
  %61 = load i64, ptr %60, align 4
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 4
  %63 = load i64, ptr %62, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 10 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 3
  %65 = load i64, ptr %64, align 4
  %66 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %61)
  %67 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %68 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %67, 0
  %69 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %68, ptr %66, 1
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 8
  store i64 %65, ptr %70, align 4
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 0
  store i8 8, ptr %71, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 10 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 8
  %73 = load i64, ptr %72, align 4
  %74 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %73, 1
  %75 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %74, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %75

SwitchCase_state_05:                              ; preds = %SwitchCase_state_00_false, %SwitchCase_entry
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 1
  %77 = load i64, ptr %76, align 4
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 2
  %79 = load i64, ptr %78, align 4
  %80 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 3
  %81 = load i64, ptr %80, align 4
  %82 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 4
  %83 = load i64, ptr %82, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 10 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %84 = icmp eq i64 %77, 2
  br i1 %84, label %SwitchCase_state_03_true, label %SwitchCase_state_03_false

SwitchCase_state_06:                              ; preds = %SwitchCase_state_03_false, %SwitchCase_entry
  %85 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 1
  %86 = load i64, ptr %85, align 4
  %87 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 2
  %88 = load i64, ptr %87, align 4
  %89 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 3
  %90 = load i64, ptr %89, align 4
  %91 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 4
  %92 = load i64, ptr %91, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 10 }, i64 6, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 7
  %94 = load ptr, ptr %93, align 8
  %95 = icmp eq ptr %94, null
  br i1 %95, label %SwitchCase_state_06_init, label %SwitchCase_state_06_poll

SwitchCase_state_07:                              ; preds = %SwitchCase_state_06_ready, %SwitchCase_entry
  %96 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 1
  %97 = load i64, ptr %96, align 4
  %98 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 2
  %99 = load i64, ptr %98, align 4
  %100 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 3
  %101 = load i64, ptr %100, align 4
  %102 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 4
  %103 = load i64, ptr %102, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 10 }, i64 7, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %104 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 4
  %105 = load i64, ptr %104, align 4
  %106 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %103)
  %107 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %108 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %107, 0
  %109 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %108, ptr %106, 1
  %110 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 8
  store i64 %105, ptr %110, align 4
  %111 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 0
  store i8 8, ptr %111, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 10 }, i64 7, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %112 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 8
  %113 = load i64, ptr %112, align 4
  %114 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %113, 1
  %115 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %114, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %115

SwitchCase_state_done:                            ; preds = %SwitchCase_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 10 }, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 4 }, i1 false, i1 true)
  %116 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 8
  %117 = load i64, ptr %116, align 4
  %118 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %117, 1
  %119 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %118, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %119

SwitchCase_state_unreach:                         ; preds = %SwitchCase_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_11:                                         ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

SwitchCase_state_00_true:                         ; preds = %SwitchCase_state_00
  %120 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %120, align 1
  br label %SwitchCase_state_01

SwitchCase_state_00_false:                        ; preds = %SwitchCase_state_00
  %121 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %121, align 1
  br label %SwitchCase_state_05

SwitchCase_state_01_init:                         ; preds = %SwitchCase_state_01
  %122 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 1
  %123 = load i64, ptr %122, align 4
  %124 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 2
  %125 = load i64, ptr %124, align 4
  %126 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 3
  %127 = load i64, ptr %126, align 4
  %128 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 4
  %129 = load i64, ptr %128, align 4
  %130 = call ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.Step"(i64 10)
  store ptr %130, ptr %22, align 8
  br label %SwitchCase_state_01_poll

SwitchCase_state_01_poll:                         ; preds = %SwitchCase_state_01_init, %SwitchCase_state_01
  %131 = load ptr, ptr %22, align 8
  %132 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %131, ptr %1)
  %133 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %132, 0
  br i1 %133, label %SwitchCase_state_01_ready, label %SwitchCase_state_01_pending

SwitchCase_state_01_ready:                        ; preds = %SwitchCase_state_01_poll
  %134 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %132, 1
  %135 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 2
  store i64 %134, ptr %135, align 4
  store ptr null, ptr %22, align 8
  %136 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %136, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 10 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %SwitchCase_state_02

SwitchCase_state_01_pending:                      ; preds = %SwitchCase_state_01_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 10 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

SwitchCase_state_03_init:                         ; preds = %SwitchCase_state_03
  %137 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 1
  %138 = load i64, ptr %137, align 4
  %139 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 2
  %140 = load i64, ptr %139, align 4
  %141 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 3
  %142 = load i64, ptr %141, align 4
  %143 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 4
  %144 = load i64, ptr %143, align 4
  %145 = call ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.Step"(i64 20)
  store ptr %145, ptr %53, align 8
  br label %SwitchCase_state_03_poll

SwitchCase_state_03_poll:                         ; preds = %SwitchCase_state_03_init, %SwitchCase_state_03
  %146 = load ptr, ptr %53, align 8
  %147 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %146, ptr %1)
  %148 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %147, 0
  br i1 %148, label %SwitchCase_state_03_ready, label %SwitchCase_state_03_pending

SwitchCase_state_03_ready:                        ; preds = %SwitchCase_state_03_poll
  %149 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %147, 1
  %150 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 3
  store i64 %149, ptr %150, align 4
  store ptr null, ptr %53, align 8
  %151 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %151, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 10 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %SwitchCase_state_04

SwitchCase_state_03_pending:                      ; preds = %SwitchCase_state_03_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 10 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

SwitchCase_state_03_true:                         ; preds = %SwitchCase_state_05
  %152 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %152, align 1
  br label %SwitchCase_state_03

SwitchCase_state_03_false:                        ; preds = %SwitchCase_state_05
  %153 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %153, align 1
  br label %SwitchCase_state_06

SwitchCase_state_06_init:                         ; preds = %SwitchCase_state_06
  %154 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 1
  %155 = load i64, ptr %154, align 4
  %156 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 2
  %157 = load i64, ptr %156, align 4
  %158 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 3
  %159 = load i64, ptr %158, align 4
  %160 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 4
  %161 = load i64, ptr %160, align 4
  %162 = call ptr @"github.com/goplus/llgo/cl/_testpull/controlflow.Step"(i64 30)
  store ptr %162, ptr %93, align 8
  br label %SwitchCase_state_06_poll

SwitchCase_state_06_poll:                         ; preds = %SwitchCase_state_06_init, %SwitchCase_state_06
  %163 = load ptr, ptr %93, align 8
  %164 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %163, ptr %1)
  %165 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %164, 0
  br i1 %165, label %SwitchCase_state_06_ready, label %SwitchCase_state_06_pending

SwitchCase_state_06_ready:                        ; preds = %SwitchCase_state_06_poll
  %166 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %164, 1
  %167 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 4
  store i64 %166, ptr %167, align 4
  store ptr null, ptr %93, align 8
  %168 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %168, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 10 }, i64 6, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %SwitchCase_state_07

SwitchCase_state_06_pending:                      ; preds = %SwitchCase_state_06_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 10 }, i64 6, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
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
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/controlflow.SwitchCase$State")
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
