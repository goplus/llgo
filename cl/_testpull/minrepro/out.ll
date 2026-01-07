; ModuleID = 'github.com/goplus/llgo/cl/_testpull/minrepro'
source_filename = "github.com/goplus/llgo/cl/_testpull/minrepro"

%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.InterfaceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" = type { i1, %"github.com/goplus/llgo/async.Tuple2[int,int]", %"github.com/goplus/llgo/runtime/internal/runtime.eface" }
%"github.com/goplus/llgo/async.Tuple2[int,int]" = type { i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State" = type { i8, i64, i64, i64, i64, i64, ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/async.Poll[int]" = type { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.eface" }
%"github.com/goplus/llgo/async.AsyncFuture[int]" = type { { ptr, ptr }, i1, i1, i64 }
%"github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]" = type { %"github.com/goplus/llgo/async.Tuple2[int,int]" }
%"github.com/goplus/llgo/async.Context" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }

@"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1221110233, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 64 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_func$nToCCYBH4T19EsKF-IRXpBfaubZ2qtPBnGpgE2882a4", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]).Await", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]).Poll", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]).Poll" }] }, align 8
@0 = private unnamed_addr constant [64 x i8] c"async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]", align 1
@"_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 -1406013884, i8 13, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 64 }, ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/minrepro.struct$Nm6lm2j6ef0PShmQPMibOvRBBa-SfmlevY-m5BSN4qU$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@1 = private unnamed_addr constant [28 x i8] c"github.com/goplus/llgo/async", align 1
@2 = private unnamed_addr constant [5 x i8] c"value", align 1
@"_llgo_github.com/goplus/llgo/async.Tuple2[int,int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 1215525453, i8 13, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Tuple2[int,int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 21 }, ptr @"*_llgo_github.com/goplus/llgo/async.Tuple2[int,int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$dEz5S6rx1Cms9pht3bLxWSZsAGFwnjyc_2jiUkBMS5w$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, ptr @"_llgo_func$x17VVIetzGwbk32tQOJbqcANRLHkKpNHRXr8XcFcmjM", ptr @"github.com/goplus/llgo/async.(*Tuple2[int,int]).Get", ptr @"github.com/goplus/llgo/async.Tuple2[int,int].Get" }] }, align 8
@3 = private unnamed_addr constant [21 x i8] c"async.Tuple2[int,int]", align 1
@"*_llgo_github.com/goplus/llgo/async.Tuple2[int,int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1453173179, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 21 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Tuple2[int,int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, ptr @"_llgo_func$x17VVIetzGwbk32tQOJbqcANRLHkKpNHRXr8XcFcmjM", ptr @"github.com/goplus/llgo/async.(*Tuple2[int,int]).Get", ptr @"github.com/goplus/llgo/async.(*Tuple2[int,int]).Get" }] }, align 8
@4 = private unnamed_addr constant [3 x i8] c"Get", align 1
@"_llgo_func$x17VVIetzGwbk32tQOJbqcANRLHkKpNHRXr8XcFcmjM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2055817247, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 17 }, ptr @"*_llgo_func$x17VVIetzGwbk32tQOJbqcANRLHkKpNHRXr8XcFcmjM" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$x17VVIetzGwbk32tQOJbqcANRLHkKpNHRXr8XcFcmjM$out", i64 2, i64 2 } }, align 8
@5 = private unnamed_addr constant [17 x i8] c"func() (int, int)", align 1
@"*_llgo_func$x17VVIetzGwbk32tQOJbqcANRLHkKpNHRXr8XcFcmjM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 659081009, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 17 }, ptr null }, ptr @"_llgo_func$x17VVIetzGwbk32tQOJbqcANRLHkKpNHRXr8XcFcmjM" }, align 8
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, ptr @"*_llgo_int" }, align 8
@6 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"_llgo_func$x17VVIetzGwbk32tQOJbqcANRLHkKpNHRXr8XcFcmjM$out" = weak_odr constant [2 x ptr] [ptr @_llgo_int, ptr @_llgo_int], align 8
@7 = private unnamed_addr constant [2 x i8] c"V1", align 1
@8 = private unnamed_addr constant [2 x i8] c"V2", align 1
@"_llgo_struct$dEz5S6rx1Cms9pht3bLxWSZsAGFwnjyc_2jiUkBMS5w$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 2 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 2 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/minrepro.struct$Nm6lm2j6ef0PShmQPMibOvRBBa-SfmlevY-m5BSN4qU$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/async.Tuple2[int,int]", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@9 = private unnamed_addr constant [5 x i8] c"Await", align 1
@"_llgo_func$nToCCYBH4T19EsKF-IRXpBfaubZ2qtPBnGpgE2882a4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1607562537, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 28 }, ptr @"*_llgo_func$nToCCYBH4T19EsKF-IRXpBfaubZ2qtPBnGpgE2882a4" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$nToCCYBH4T19EsKF-IRXpBfaubZ2qtPBnGpgE2882a4$out", i64 1, i64 1 } }, align 8
@10 = private unnamed_addr constant [28 x i8] c"func() async.Tuple2[int,int]", align 1
@"*_llgo_func$nToCCYBH4T19EsKF-IRXpBfaubZ2qtPBnGpgE2882a4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 161356626, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 28 }, ptr null }, ptr @"_llgo_func$nToCCYBH4T19EsKF-IRXpBfaubZ2qtPBnGpgE2882a4" }, align 8
@"_llgo_func$nToCCYBH4T19EsKF-IRXpBfaubZ2qtPBnGpgE2882a4$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Tuple2[int,int]"], align 8
@11 = private unnamed_addr constant [4 x i8] c"Poll", align 1
@"_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 454956163, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 78 }, ptr @"*_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU$out", i64 1, i64 1 } }, align 8
@12 = private unnamed_addr constant [78 x i8] c"func(*async.Context) async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", align 1
@"*_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 220446337, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 78 }, ptr null }, ptr @"_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU" }, align 8
@"*_llgo_github.com/goplus/llgo/async.Context" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -808118033, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 13 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Context" }, align 8
@13 = private unnamed_addr constant [13 x i8] c"async.Context", align 1
@"_llgo_github.com/goplus/llgo/async.Context" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 29200871, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Context" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 13 }, ptr @"*_llgo_github.com/goplus/llgo/async.Context" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$RRVsRJkYHdoR-mI2_FrzGPRXwNM5u9bW2w1hN455sNs$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@14 = private unnamed_addr constant [5 x i8] c"Waker", align 1
@"_llgo_github.com/goplus/llgo/async.Waker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -2133419533, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 11 }, ptr @"*_llgo_github.com/goplus/llgo/async.Waker" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$5udCHZ6xl-fBE2F9apjWV2qrxMb4_QYfwdoy0QD1D8c$imethods", i64 1, i64 1 } }, align 8
@15 = private unnamed_addr constant [11 x i8] c"async.Waker", align 1
@"*_llgo_github.com/goplus/llgo/async.Waker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 504672852, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 11 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Waker" }, align 8
@16 = private unnamed_addr constant [44 x i8] c"github.com/goplus/llgo/cl/_testpull/minrepro", align 1
@17 = private unnamed_addr constant [4 x i8] c"Wake", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@18 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@"_llgo_iface$5udCHZ6xl-fBE2F9apjWV2qrxMb4_QYfwdoy0QD1D8c$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 4 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }], align 8
@"_llgo_struct$RRVsRJkYHdoR-mI2_FrzGPRXwNM5u9bW2w1hN455sNs$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/async.Waker", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/async.Context"], align 8
@"_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 40, i64 40, i32 97944769, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 57 }, ptr @"*_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/minrepro.struct$X3pV_NpeB76qE-5DoDuuwD4_ZYrxCpyTVVq7NkDM6NE$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).Error", ptr @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]].Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).HasError", ptr @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]].HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).IsReady", ptr @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]].IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, ptr @"_llgo_func$nToCCYBH4T19EsKF-IRXpBfaubZ2qtPBnGpgE2882a4", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).Value", ptr @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]].Value" }] }, align 8
@19 = private unnamed_addr constant [57 x i8] c"async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", align 1
@"*_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1490419624, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 57 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).Error", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).HasError", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).IsReady", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, ptr @"_llgo_func$nToCCYBH4T19EsKF-IRXpBfaubZ2qtPBnGpgE2882a4", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).Value", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).Value" }] }, align 8
@20 = private unnamed_addr constant [5 x i8] c"Error", align 1
@"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1398528794, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 19 }, ptr @"*_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8$out", i64 1, i64 1 } }, align 8
@21 = private unnamed_addr constant [19 x i8] c"func() interface {}", align 1
@"*_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1160547289, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 19 }, ptr null }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" }, align 8
@_llgo_any = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1376530322, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 12 }, ptr @"*_llgo_any" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@22 = private unnamed_addr constant [12 x i8] c"interface {}", align 1
@"*_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1741196194, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 12 }, ptr null }, ptr @_llgo_any }, align 8
@"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8$out" = weak_odr constant [1 x ptr] [ptr @_llgo_any], align 8
@23 = private unnamed_addr constant [8 x i8] c"HasError", align 1
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -541022001, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 11 }, ptr @"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out", i64 1, i64 1 } }, align 8
@24 = private unnamed_addr constant [11 x i8] c"func() bool", align 1
@"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -367308996, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 11 }, ptr null }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, align 8
@_llgo_bool = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 554183389, i8 12, i8 1, i8 1, i8 33, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 4 }, ptr @"*_llgo_bool" }, align 8
@25 = private unnamed_addr constant [4 x i8] c"bool", align 1
@"*_llgo_bool" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1896950390, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 4 }, ptr null }, ptr @_llgo_bool }, align 8
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out" = weak_odr constant [1 x ptr] [ptr @_llgo_bool], align 8
@26 = private unnamed_addr constant [7 x i8] c"IsReady", align 1
@27 = private unnamed_addr constant [5 x i8] c"Value", align 1
@28 = private unnamed_addr constant [5 x i8] c"ready", align 1
@29 = private unnamed_addr constant [3 x i8] c"err", align 1
@"github.com/goplus/llgo/cl/_testpull/minrepro.struct$X3pV_NpeB76qE-5DoDuuwD4_ZYrxCpyTVVq7NkDM6NE$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @_llgo_bool, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/async.Tuple2[int,int]", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 3 }, ptr @_llgo_any, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]"], align 8
@"_llgo_iface$UF-K7t4EfagXSm-WTaHawm21nnTgf-85MVOaez9AbyQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1918491914, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 92 }, ptr @"*_llgo_iface$UF-K7t4EfagXSm-WTaHawm21nnTgf-85MVOaez9AbyQ" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$UF-K7t4EfagXSm-WTaHawm21nnTgf-85MVOaez9AbyQ$imethods", i64 1, i64 1 } }, align 8
@30 = private unnamed_addr constant [92 x i8] c"interface { Poll(*async.Context) async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]] }", align 1
@"*_llgo_iface$UF-K7t4EfagXSm-WTaHawm21nnTgf-85MVOaez9AbyQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1236006575, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 92 }, ptr null }, ptr @"_llgo_iface$UF-K7t4EfagXSm-WTaHawm21nnTgf-85MVOaez9AbyQ" }, align 8
@"_llgo_iface$UF-K7t4EfagXSm-WTaHawm21nnTgf-85MVOaez9AbyQ$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU" }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1275124037, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 21 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 44 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU", ptr @"github.com/goplus/llgo/cl/_testpull/minrepro.(*Divmod$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/minrepro.(*Divmod$State).Poll" }] }, align 8
@31 = private unnamed_addr constant [21 x i8] c"minrepro.Divmod$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 64, i32 -980559202, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 21 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/minrepro.struct$p8PWNqIFpSLO-TQtjkmWeeb8m8krwca1XSyeHbuE1T4$fields", i64 8, i64 8 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 44 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@32 = private unnamed_addr constant [5 x i8] c"state", align 1
@_llgo_int8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 1444672578, i8 12, i8 1, i8 1, i8 35, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 4 }, ptr @"*_llgo_int8" }, align 8
@33 = private unnamed_addr constant [4 x i8] c"int8", align 1
@"*_llgo_int8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1399554408, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 4 }, ptr null }, ptr @_llgo_int8 }, align 8
@34 = private unnamed_addr constant [6 x i8] c"param0", align 1
@35 = private unnamed_addr constant [6 x i8] c"param1", align 1
@36 = private unnamed_addr constant [4 x i8] c"var0", align 1
@37 = private unnamed_addr constant [4 x i8] c"var1", align 1
@38 = private unnamed_addr constant [4 x i8] c"var2", align 1
@39 = private unnamed_addr constant [4 x i8] c"sub0", align 1
@"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 964362133, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll" }] }, align 8
@40 = private unnamed_addr constant [22 x i8] c"async.AsyncFuture[int]", align 1
@"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 0, i32 1769159236, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/minrepro.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@41 = private unnamed_addr constant [2 x i8] c"fn", align 1
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1213993089, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 87 }, ptr @"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields", i64 2, i64 2 } }, align 8
@42 = private unnamed_addr constant [87 x i8] c"struct { $f func(struct { $f func(int); $data unsafe.Pointer }); $data unsafe.Pointer }", align 1
@"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1666834553, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 87 }, ptr null }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, align 8
@43 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2009615728, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 51 }, ptr @"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@44 = private unnamed_addr constant [51 x i8] c"func(struct { $f func(int); $data unsafe.Pointer })", align 1
@"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1512208703, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 51 }, ptr null }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1556934939, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 45 }, ptr @"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields", i64 2, i64 2 } }, align 8
@45 = private unnamed_addr constant [45 x i8] c"struct { $f func(int); $data unsafe.Pointer }", align 1
@"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 364872269, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 45 }, ptr null }, ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -637187458, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 9 }, ptr @"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@46 = private unnamed_addr constant [9 x i8] c"func(int)", align 1
@"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 735356155, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 9 }, ptr null }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@47 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@48 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 2 }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM"], align 8
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 2 }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@49 = private unnamed_addr constant [7 x i8] c"started", align 1
@"github.com/goplus/llgo/cl/_testpull/minrepro.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 2 }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 7 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @_llgo_bool, i64 17, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2131144854, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 10 }, ptr @"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out", i64 1, i64 1 } }, align 8
@50 = private unnamed_addr constant [10 x i8] c"func() int", align 1
@"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1805835775, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 10 }, ptr null }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1655717054, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 36 }, ptr @"*_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$out", i64 1, i64 1 } }, align 8
@51 = private unnamed_addr constant [36 x i8] c"func(*async.Context) async.Poll[int]", align 1
@"*_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -62824656, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 36 }, ptr null }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }, align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/async.Context"], align 8
@"_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 801809575, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 15 }, ptr @"*_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/minrepro.struct$M9E5HRdqyc11Zqvq07yhy6frK_fAyRGIc35bZKl9nrs$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error", ptr @"github.com/goplus/llgo/async.Poll[int].Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError", ptr @"github.com/goplus/llgo/async.Poll[int].HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.Poll[int].IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.Poll[int].Value" }] }, align 8
@52 = private unnamed_addr constant [15 x i8] c"async.Poll[int]", align 1
@"*_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -920093333, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 15 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value" }] }, align 8
@"github.com/goplus/llgo/cl/_testpull/minrepro.struct$M9E5HRdqyc11Zqvq07yhy6frK_fAyRGIc35bZKl9nrs$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @_llgo_bool, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 3 }, ptr @_llgo_any, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]"], align 8
@53 = private unnamed_addr constant [4 x i8] c"sub1", align 1
@"github.com/goplus/llgo/cl/_testpull/minrepro.struct$p8PWNqIFpSLO-TQtjkmWeeb8m8krwca1XSyeHbuE1T4$fields" = weak_odr constant [8 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/minrepro.init$guard" = global i1 false, align 1
@54 = private unnamed_addr constant [45 x i8] c"Await() should be transformed by the compiler", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 6 }, ptr @"*_llgo_string" }, align 8
@55 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 6 }, ptr null }, ptr @_llgo_string }, align 8

define %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" @"github.com/goplus/llgo/cl/_testpull/minrepro.(*Divmod$State).Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_5 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %0, i32 0, i32 3
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %0, i32 0, i32 4
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %0, i32 0, i32 5
  %13 = load i64, ptr %12, align 4
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %0, i32 0, i32 6
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %_llgo_7, label %_llgo_8

_llgo_2:                                          ; preds = %_llgo_9, %_llgo_0
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %0, i32 0, i32 1
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %0, i32 0, i32 2
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %0, i32 0, i32 3
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %0, i32 0, i32 4
  %24 = load i64, ptr %23, align 4
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %0, i32 0, i32 5
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %0, i32 0, i32 7
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %_llgo_11, label %_llgo_12

_llgo_3:                                          ; preds = %_llgo_13, %_llgo_0
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %0, i32 0, i32 1
  %31 = load i64, ptr %30, align 4
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %0, i32 0, i32 2
  %33 = load i64, ptr %32, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %0, i32 0, i32 3
  %35 = load i64, ptr %34, align 4
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %0, i32 0, i32 4
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %0, i32 0, i32 5
  %39 = load i64, ptr %38, align 4
  %40 = call %"github.com/goplus/llgo/async.Tuple2[int,int]" @"github.com/goplus/llgo/async.MakeTuple2[int,int]"(i64 %39, i64 %93)
  %41 = call ptr @"github.com/goplus/llgo/async.Return[github.com/goplus/llgo/async.Tuple2[int, int]]"(%"github.com/goplus/llgo/async.Tuple2[int,int]" %40)
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$UF-K7t4EfagXSm-WTaHawm21nnTgf-85MVOaez9AbyQ", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]")
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %42, 0
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %43, ptr %41, 1
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %45, align 1
  %46 = alloca %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", align 8
  %47 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", ptr %46, i32 0, i32 0
  store i1 true, ptr %47, align 1
  %48 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", ptr %46, i32 0, i32 1
  store { i64, i64 } zeroinitializer, ptr %48, align 4
  %49 = load %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", ptr %46, align 8
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %49

_llgo_4:                                          ; preds = %_llgo_0
  %50 = alloca %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", ptr %50, i32 0, i32 0
  store i1 true, ptr %51, align 1
  %52 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", ptr %50, i32 0, i32 1
  store { i64, i64 } zeroinitializer, ptr %52, align 4
  %53 = load %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", ptr %50, align 8
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %53

_llgo_5:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" zeroinitializer

_llgo_6:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" zeroinitializer

_llgo_7:                                          ; preds = %_llgo_1
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %0, i32 0, i32 1
  %55 = load i64, ptr %54, align 4
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %0, i32 0, i32 2
  %57 = load i64, ptr %56, align 4
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %0, i32 0, i32 3
  %59 = load i64, ptr %58, align 4
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %0, i32 0, i32 4
  %61 = load i64, ptr %60, align 4
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %0, i32 0, i32 5
  %63 = load i64, ptr %62, align 4
  %64 = sdiv i64 %59, %61
  %65 = call ptr @"github.com/goplus/llgo/cl/_testpull/minrepro.StepInt"(i64 %64)
  store ptr %65, ptr %14, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_1
  %66 = load ptr, ptr %14, align 8
  %67 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %66, ptr %1)
  %68 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %67, ptr %68, align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %68, i32 0, i32 0
  %70 = load i1, ptr %69, align 1
  br i1 %70, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %68, i32 0, i32 1
  %72 = load i64, ptr %71, align 4
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %0, i32 0, i32 5
  store i64 %72, ptr %73, align 4
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %74, align 1
  br label %_llgo_2

_llgo_10:                                         ; preds = %_llgo_8
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" zeroinitializer

_llgo_11:                                         ; preds = %_llgo_2
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %0, i32 0, i32 1
  %76 = load i64, ptr %75, align 4
  %77 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %0, i32 0, i32 2
  %78 = load i64, ptr %77, align 4
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %0, i32 0, i32 3
  %80 = load i64, ptr %79, align 4
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %0, i32 0, i32 4
  %82 = load i64, ptr %81, align 4
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %0, i32 0, i32 5
  %84 = load i64, ptr %83, align 4
  %85 = srem i64 %80, %82
  %86 = call ptr @"github.com/goplus/llgo/cl/_testpull/minrepro.StepInt"(i64 %85)
  store ptr %86, ptr %27, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_2
  %87 = load ptr, ptr %27, align 8
  %88 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %87, ptr %1)
  %89 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %88, ptr %89, align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %89, i32 0, i32 0
  %91 = load i1, ptr %90, align 1
  br i1 %91, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %92 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %89, i32 0, i32 1
  %93 = load i64, ptr %92, align 4
  %94 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %94, align 1
  br label %_llgo_3

_llgo_14:                                         ; preds = %_llgo_12
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/minrepro.StepInt"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testpull/minrepro.StepInt$1", ptr undef }, ptr %2, 1
  %5 = call ptr @"github.com/goplus/llgo/async.Async[int]"({ ptr, ptr } %4)
  ret ptr %5
}

define void @"github.com/goplus/llgo/cl/_testpull/minrepro.StepInt$1"(ptr %0, { ptr, ptr } %1) {
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

define linkonce %"github.com/goplus/llgo/async.Tuple2[int,int]" @"github.com/goplus/llgo/async.MakeTuple2[int,int]"(i64 %0, i64 %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/async.Tuple2[int,int]", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %2, i32 0, i32 0
  %4 = getelementptr inbounds %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %2, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  store i64 %1, ptr %4, align 4
  %5 = load %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %2, align 4
  ret %"github.com/goplus/llgo/async.Tuple2[int,int]" %5
}

define linkonce ptr @"github.com/goplus/llgo/async.Return[github.com/goplus/llgo/async.Tuple2[int, int]]"(%"github.com/goplus/llgo/async.Tuple2[int,int]" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]", ptr %1, i32 0, i32 0
  store %"github.com/goplus/llgo/async.Tuple2[int,int]" %0, ptr %2, align 4
  ret ptr %1
}

define linkonce %"github.com/goplus/llgo/async.Tuple2[int,int]" @"github.com/goplus/llgo/async.(*ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]).Await"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]", ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %1, align 4
  ret %"github.com/goplus/llgo/async.Tuple2[int,int]" %2
}

define linkonce %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" @"github.com/goplus/llgo/async.(*ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]).Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]", ptr %0, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %2, align 4
  %4 = call %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" @"github.com/goplus/llgo/async.Ready[github.com/goplus/llgo/async.Tuple2[int, int]]"(%"github.com/goplus/llgo/async.Tuple2[int,int]" %3)
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

define linkonce { i64, i64 } @"github.com/goplus/llgo/async.Tuple2[int,int].Get"(%"github.com/goplus/llgo/async.Tuple2[int,int]" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/async.Tuple2[int,int]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/async.Tuple2[int,int]" %0, ptr %1, align 4
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %1, i32 0, i32 0
  %3 = load i64, ptr %2, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %1, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = insertvalue { i64, i64 } undef, i64 %3, 0
  %7 = insertvalue { i64, i64 } %6, i64 %5, 1
  ret { i64, i64 } %7
}

define linkonce { i64, i64 } @"github.com/goplus/llgo/async.(*Tuple2[int,int]).Get"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %0, align 4
  %2 = call { i64, i64 } @"github.com/goplus/llgo/async.Tuple2[int,int].Get"(%"github.com/goplus/llgo/async.Tuple2[int,int]" %1)
  %3 = extractvalue { i64, i64 } %2, 0
  %4 = extractvalue { i64, i64 } %2, 1
  %5 = insertvalue { i64, i64 } undef, i64 %3, 0
  %6 = insertvalue { i64, i64 } %5, i64 %4, 1
  ret { i64, i64 } %6
}

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

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]].Error"(%"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 40, i1 false)
  store %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", ptr %1, i32 0, i32 2
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %2, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3
}

define linkonce i1 @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]].HasError"(%"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 40, i1 false)
  store %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", ptr %1, i32 0, i32 2
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %2, align 8
  %4 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer)
  %5 = xor i1 %4, true
  ret i1 %5
}

define linkonce i1 @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]].IsReady"(%"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 40, i1 false)
  store %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", ptr %1, i32 0, i32 0
  %3 = load i1, ptr %2, align 1
  ret i1 %3
}

define linkonce %"github.com/goplus/llgo/async.Tuple2[int,int]" @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]].Value"(%"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 40, i1 false)
  store %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", ptr %1, i32 0, i32 1
  %3 = load %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %2, align 4
  ret %"github.com/goplus/llgo/async.Tuple2[int,int]" %3
}

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).Error"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", ptr %0, align 8
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]].Error"(%"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %1)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.eface" %2
}

define linkonce i1 @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).HasError"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", ptr %0, align 8
  %2 = call i1 @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]].HasError"(%"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %1)
  ret i1 %2
}

define linkonce i1 @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).IsReady"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", ptr %0, align 8
  %2 = call i1 @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]].IsReady"(%"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %1)
  ret i1 %2
}

define linkonce %"github.com/goplus/llgo/async.Tuple2[int,int]" @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).Value"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", ptr %0, align 8
  %2 = call %"github.com/goplus/llgo/async.Tuple2[int,int]" @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]].Value"(%"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %1)
  ret %"github.com/goplus/llgo/async.Tuple2[int,int]" %2
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

define ptr @"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$Concrete"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 64)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %2, i32 0, i32 0
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %2, i32 0, i32 1
  store i64 %0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %2, i32 0, i32 2
  store i64 %1, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %2, i32 0, i32 3
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %2, i32 0, i32 4
  store i64 0, ptr %7, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %2, i32 0, i32 5
  store i64 0, ptr %8, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %2, i32 0, i32 6
  store ptr null, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State", ptr %2, i32 0, i32 7
  store ptr null, ptr %10, align 8
  ret ptr %2
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$Concrete"(i64 %0, i64 %1)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$UF-K7t4EfagXSm-WTaHawm21nnTgf-85MVOaez9AbyQ", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/minrepro.Divmod$State")
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, ptr %2, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5
}

define linkonce i64 @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 45 }, ptr %1, align 8
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
  %11 = getelementptr inbounds %"github.com/goplus/llgo/async.Context", ptr %10, i32 0, i32 0
  %12 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %11, align 8
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %12)
  %14 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %12, 1
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %13, 0
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %15, ptr %14, 1
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %17, 0
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %18, ptr null, 1
  %20 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %16, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %19)
  %21 = xor i1 %20, true
  br i1 %21, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %22 = extractvalue { ptr, ptr } %2, 1
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/async.Context", ptr %23, i32 0, i32 0
  %25 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %24, align 8
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %25)
  %27 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %25, 0
  %28 = getelementptr ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  %30 = insertvalue { ptr, ptr } undef, ptr %29, 0
  %31 = insertvalue { ptr, ptr } %30, ptr %26, 1
  %32 = extractvalue { ptr, ptr } %31, 1
  %33 = extractvalue { ptr, ptr } %31, 0
  call void %33(ptr %32)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
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

define void @"github.com/goplus/llgo/cl/_testpull/minrepro.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testpull/minrepro.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testpull/minrepro.init$guard", align 1
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

define linkonce %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" @"github.com/goplus/llgo/async.Ready[github.com/goplus/llgo/async.Tuple2[int, int]]"(%"github.com/goplus/llgo/async.Tuple2[int,int]" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 40, i1 false)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", ptr %1, i32 0, i32 0
  %3 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", ptr %1, i32 0, i32 1
  store i1 true, ptr %2, align 1
  store %"github.com/goplus/llgo/async.Tuple2[int,int]" %0, ptr %3, align 4
  %4 = load %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", ptr %1, align 8
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

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

define linkonce %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.Pending[int]"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  call void @llvm.memset(ptr %0, i8 0, i64 32, i1 false)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %0, i32 0, i32 0
  store i1 false, ptr %1, align 1
  %2 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %0, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" %2
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/async.init"()

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
