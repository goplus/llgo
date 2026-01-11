; ModuleID = 'github.com/goplus/llgo/cl/_testpull/types'
source_filename = "github.com/goplus/llgo/cl/_testpull/types"

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
%"github.com/goplus/llgo/runtime/abi.MapType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, ptr, ptr, { ptr, ptr }, i8, i8, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.ArrayType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.SliceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/async.Tuple2[int,int]" = type { i64, i64 }
%"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" = type { i1, %"github.com/goplus/llgo/async.Tuple2[int,int]", %"github.com/goplus/llgo/runtime/internal/runtime.eface" }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testpull/types.Divmod$State" = type { i8, i64, i64, i64, i64, i64, i64, ptr, ptr, %"github.com/goplus/llgo/async.Tuple2[int,int]" }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/async.Poll[int]" = type { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.eface" }
%"github.com/goplus/llgo/async.AsyncFuture[int]" = type { { ptr, ptr }, i1, i1, i64 }
%"github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]" = type { %"github.com/goplus/llgo/async.Tuple2[int,int]" }
%"github.com/goplus/llgo/async.Context" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }
%"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State" = type { i8, i64, i64, i64, i64, ptr, ptr, %"github.com/goplus/llgo/async.Tuple2[int,int]" }
%"github.com/goplus/llgo/async.Result[int]" = type { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }
%"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" = type { i1, %"github.com/goplus/llgo/async.Result[int]", %"github.com/goplus/llgo/runtime/internal/runtime.eface" }
%"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State" = type { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, ptr, %"github.com/goplus/llgo/async.Result[int]" }
%"github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]" = type { %"github.com/goplus/llgo/async.Result[int]" }
%"github.com/goplus/llgo/cl/_testpull/types.MapParam$State" = type { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, ptr, i64 }
%"github.com/goplus/llgo/async.ReadyFuture[int]" = type { i64 }
%"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State" = type { i8, ptr, i64, i64, ptr, i64 }
%"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State" = type { i8, i64, i64, i64, i64, ptr, %"github.com/goplus/llgo/async.Result[int]" }
%"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State" = type { i8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i64, i64, i64, i64, i1, i64, ptr, ptr, i64, ptr, i64 }
%"github.com/goplus/llgo/cl/_testpull/types.StringParam$State" = type { i8, %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, ptr, i64 }
%"github.com/goplus/llgo/cl/_testpull/types.Point" = type { i64, i64 }
%"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State" = type { i8, %"github.com/goplus/llgo/cl/_testpull/types.Point", %"github.com/goplus/llgo/cl/_testpull/types.Point", i64, i64, i64, i64, ptr, ptr, i64 }

@"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1221110233, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 64 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_func$nToCCYBH4T19EsKF-IRXpBfaubZ2qtPBnGpgE2882a4", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]).Await", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]).Poll", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]).Poll" }] }, align 8
@0 = private unnamed_addr constant [64 x i8] c"async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]", align 1
@"_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 -1406013884, i8 13, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 64 }, ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$Nm6lm2j6ef0PShmQPMibOvRBBa-SfmlevY-m5BSN4qU$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
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
@"github.com/goplus/llgo/cl/_testpull/types.struct$Nm6lm2j6ef0PShmQPMibOvRBBa-SfmlevY-m5BSN4qU$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/async.Tuple2[int,int]", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
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
@"_llgo_github.com/goplus/llgo/async.Context" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 0, i32 29200871, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Context" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 13 }, ptr @"*_llgo_github.com/goplus/llgo/async.Context" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$Re9uCNpaPdvqJtnZYej5NZ8aMgZjb-_ftN8ogfRqy78$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@14 = private unnamed_addr constant [5 x i8] c"Waker", align 1
@"_llgo_github.com/goplus/llgo/async.Waker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -2133419533, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 11 }, ptr @"*_llgo_github.com/goplus/llgo/async.Waker" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$5udCHZ6xl-fBE2F9apjWV2qrxMb4_QYfwdoy0QD1D8c$imethods", i64 1, i64 1 } }, align 8
@15 = private unnamed_addr constant [11 x i8] c"async.Waker", align 1
@"*_llgo_github.com/goplus/llgo/async.Waker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 504672852, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 11 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Waker" }, align 8
@16 = private unnamed_addr constant [41 x i8] c"github.com/goplus/llgo/cl/_testpull/types", align 1
@17 = private unnamed_addr constant [4 x i8] c"Wake", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@18 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@"_llgo_iface$5udCHZ6xl-fBE2F9apjWV2qrxMb4_QYfwdoy0QD1D8c$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 4 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }], align 8
@19 = private unnamed_addr constant [8 x i8] c"hasWaker", align 1
@_llgo_bool = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 554183389, i8 12, i8 1, i8 1, i8 33, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 4 }, ptr @"*_llgo_bool" }, align 8
@20 = private unnamed_addr constant [4 x i8] c"bool", align 1
@"*_llgo_bool" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1896950390, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 4 }, ptr null }, ptr @_llgo_bool }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$Re9uCNpaPdvqJtnZYej5NZ8aMgZjb-_ftN8ogfRqy78$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/async.Waker", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 8 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/async.Context"], align 8
@"_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 40, i64 40, i32 97944769, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 57 }, ptr @"*_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$X3pV_NpeB76qE-5DoDuuwD4_ZYrxCpyTVVq7NkDM6NE$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).Error", ptr @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]].Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).HasError", ptr @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]].HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).IsReady", ptr @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]].IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @"_llgo_func$nToCCYBH4T19EsKF-IRXpBfaubZ2qtPBnGpgE2882a4", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).Value", ptr @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]].Value" }] }, align 8
@21 = private unnamed_addr constant [57 x i8] c"async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", align 1
@"*_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1490419624, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 57 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).Error", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).HasError", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).IsReady", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @"_llgo_func$nToCCYBH4T19EsKF-IRXpBfaubZ2qtPBnGpgE2882a4", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).Value", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).Value" }] }, align 8
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
@29 = private unnamed_addr constant [5 x i8] c"ready", align 1
@30 = private unnamed_addr constant [3 x i8] c"err", align 1
@"github.com/goplus/llgo/cl/_testpull/types.struct$X3pV_NpeB76qE-5DoDuuwD4_ZYrxCpyTVVq7NkDM6NE$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 5 }, ptr @_llgo_bool, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/async.Tuple2[int,int]", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 3 }, ptr @_llgo_any, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]"], align 8
@"_llgo_iface$JUoXkwpyN4rTSTT_NnAgTEgTKBELlGnXKsPeHB_9_t8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 571269865, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 123 }, ptr @"*_llgo_iface$JUoXkwpyN4rTSTT_NnAgTEgTKBELlGnXKsPeHB_9_t8" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$JUoXkwpyN4rTSTT_NnAgTEgTKBELlGnXKsPeHB_9_t8$imethods", i64 2, i64 2 } }, align 8
@31 = private unnamed_addr constant [123 x i8] c"interface { Await() async.Tuple2[int,int]; Poll(*async.Context) async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]] }", align 1
@"*_llgo_iface$JUoXkwpyN4rTSTT_NnAgTEgTKBELlGnXKsPeHB_9_t8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -702935602, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 123 }, ptr null }, ptr @"_llgo_iface$JUoXkwpyN4rTSTT_NnAgTEgTKBELlGnXKsPeHB_9_t8" }, align 8
@"_llgo_iface$JUoXkwpyN4rTSTT_NnAgTEgTKBELlGnXKsPeHB_9_t8$imethods" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_func$nToCCYBH4T19EsKF-IRXpBfaubZ2qtPBnGpgE2882a4" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU" }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/types.Divmod$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1135343364, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 18 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.Divmod$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_func$nToCCYBH4T19EsKF-IRXpBfaubZ2qtPBnGpgE2882a4", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*Divmod$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*Divmod$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*Divmod$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*Divmod$State).Poll" }] }, align 8
@32 = private unnamed_addr constant [18 x i8] c"types.Divmod$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/types.Divmod$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 88, i64 64, i32 -429288470, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.Divmod$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 18 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.Divmod$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$CtX3aegFxXLvP2SyYdiPQP0fuxkPEYWSVYpE1_i3gbY$fields", i64 10, i64 10 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@33 = private unnamed_addr constant [5 x i8] c"state", align 1
@_llgo_int8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 1444672578, i8 12, i8 1, i8 1, i8 35, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @"*_llgo_int8" }, align 8
@34 = private unnamed_addr constant [4 x i8] c"int8", align 1
@"*_llgo_int8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1399554408, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr null }, ptr @_llgo_int8 }, align 8
@35 = private unnamed_addr constant [6 x i8] c"param0", align 1
@36 = private unnamed_addr constant [6 x i8] c"param1", align 1
@37 = private unnamed_addr constant [4 x i8] c"var0", align 1
@38 = private unnamed_addr constant [4 x i8] c"var1", align 1
@39 = private unnamed_addr constant [4 x i8] c"var2", align 1
@40 = private unnamed_addr constant [4 x i8] c"var3", align 1
@41 = private unnamed_addr constant [4 x i8] c"sub0", align 1
@"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 964362133, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll" }] }, align 8
@42 = private unnamed_addr constant [22 x i8] c"async.AsyncFuture[int]", align 1
@"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 0, i32 1769159236, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@43 = private unnamed_addr constant [2 x i8] c"fn", align 1
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1213993089, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 87 }, ptr @"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields", i64 2, i64 2 } }, align 8
@44 = private unnamed_addr constant [87 x i8] c"struct { $f func(struct { $f func(int); $data unsafe.Pointer }); $data unsafe.Pointer }", align 1
@"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1666834553, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 87 }, ptr null }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, align 8
@45 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2009615728, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 51 }, ptr @"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@46 = private unnamed_addr constant [51 x i8] c"func(struct { $f func(int); $data unsafe.Pointer })", align 1
@"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1512208703, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 51 }, ptr null }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1556934939, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 45 }, ptr @"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields", i64 2, i64 2 } }, align 8
@47 = private unnamed_addr constant [45 x i8] c"struct { $f func(int); $data unsafe.Pointer }", align 1
@"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 364872269, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 45 }, ptr null }, ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -637187458, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 9 }, ptr @"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@48 = private unnamed_addr constant [9 x i8] c"func(int)", align 1
@"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 735356155, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 9 }, ptr null }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@49 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@50 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 2 }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM"], align 8
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 2 }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@51 = private unnamed_addr constant [7 x i8] c"started", align 1
@"github.com/goplus/llgo/cl/_testpull/types.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 2 }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 7 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 5 }, ptr @_llgo_bool, i64 17, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2131144854, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 10 }, ptr @"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out", i64 1, i64 1 } }, align 8
@52 = private unnamed_addr constant [10 x i8] c"func() int", align 1
@"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1805835775, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 10 }, ptr null }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1655717054, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 36 }, ptr @"*_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$out", i64 1, i64 1 } }, align 8
@53 = private unnamed_addr constant [36 x i8] c"func(*async.Context) async.Poll[int]", align 1
@"*_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -62824656, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 36 }, ptr null }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }, align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/async.Context"], align 8
@"_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 801809575, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 15 }, ptr @"*_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$M9E5HRdqyc11Zqvq07yhy6frK_fAyRGIc35bZKl9nrs$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error", ptr @"github.com/goplus/llgo/async.Poll[int].Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError", ptr @"github.com/goplus/llgo/async.Poll[int].HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.Poll[int].IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.Poll[int].Value" }] }, align 8
@54 = private unnamed_addr constant [15 x i8] c"async.Poll[int]", align 1
@"*_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -920093333, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 15 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value" }] }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$M9E5HRdqyc11Zqvq07yhy6frK_fAyRGIc35bZKl9nrs$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 5 }, ptr @_llgo_bool, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 3 }, ptr @_llgo_any, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]"], align 8
@55 = private unnamed_addr constant [4 x i8] c"sub1", align 1
@56 = private unnamed_addr constant [11 x i8] c"resultValue", align 1
@"github.com/goplus/llgo/cl/_testpull/types.struct$CtX3aegFxXLvP2SyYdiPQP0fuxkPEYWSVYpE1_i3gbY$fields" = weak_odr constant [10 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 6 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 11 }, ptr @"_llgo_github.com/goplus/llgo/async.Tuple2[int,int]", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 66007552, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 21 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_func$nToCCYBH4T19EsKF-IRXpBfaubZ2qtPBnGpgE2882a4", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*GetMinMax$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*GetMinMax$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*GetMinMax$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*GetMinMax$State).Poll" }] }, align 8
@57 = private unnamed_addr constant [21 x i8] c"types.GetMinMax$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 72, i64 48, i32 -386873785, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 21 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$myBcW0XAiS4Bmhqhjqr-rt4UJuToIDwhdPP4bGeGKWw$fields", i64 8, i64 8 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$myBcW0XAiS4Bmhqhjqr-rt4UJuToIDwhdPP4bGeGKWw$fields" = weak_odr constant [8 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 6 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 11 }, ptr @"_llgo_github.com/goplus/llgo/async.Tuple2[int,int]", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"map[_llgo_string]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1641501154, i8 0, i8 8, i8 8, i8 53, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 14 }, ptr @"*map[_llgo_string]_llgo_int" }, ptr @_llgo_string, ptr @_llgo_int, ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc", { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehash", ptr @_llgo_string }, i8 16, i8 8, i16 208, i32 12 }, align 8
@58 = private unnamed_addr constant [14 x i8] c"map[string]int", align 1
@"*map[_llgo_string]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 762774621, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 14 }, ptr null }, ptr @"map[_llgo_string]_llgo_int" }, align 8
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 6 }, ptr @"*_llgo_string" }, align 8
@59 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 208, i64 208, i32 -2085301039, i8 0, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 82 }, ptr @"*github.com/goplus/llgo/cl/_testpull/types.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc$fields", i64 4, i64 4 } }, align 8
@60 = private unnamed_addr constant [82 x i8] c"struct { topbits [8]uint8; keys [8]string; elems [8]int; overflow unsafe.Pointer }", align 1
@"*github.com/goplus/llgo/cl/_testpull/types.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 3417020, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 82 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" }, align 8
@61 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@"[8]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 307038632, i8 8, i8 1, i8 1, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_uint8" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 8 }, ptr @"*[8]_llgo_uint8" }, ptr @_llgo_uint8, ptr @"[]_llgo_uint8", i64 8 }, align 8
@62 = private unnamed_addr constant [8 x i8] c"[8]uint8", align 1
@"*[8]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -566230779, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 8 }, ptr null }, ptr @"[8]_llgo_uint8" }, align 8
@_llgo_uint8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 269156761, i8 12, i8 1, i8 1, i8 40, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 5 }, ptr @"*_llgo_uint8" }, align 8
@63 = private unnamed_addr constant [5 x i8] c"uint8", align 1
@"*_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1277858201, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 5 }, ptr null }, ptr @_llgo_uint8 }, align 8
@"[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 370346748, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 7 }, ptr @"*[]_llgo_uint8" }, ptr @_llgo_uint8 }, align 8
@64 = private unnamed_addr constant [7 x i8] c"[]uint8", align 1
@"*[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2143776929, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 7 }, ptr null }, ptr @"[]_llgo_uint8" }, align 8
@65 = private unnamed_addr constant [4 x i8] c"keys", align 1
@"[8]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 128, i64 120, i32 460245566, i8 0, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_string" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 9 }, ptr @"*[8]_llgo_string" }, ptr @_llgo_string, ptr @"[]_llgo_string", i64 8 }, align 8
@66 = private unnamed_addr constant [9 x i8] c"[8]string", align 1
@"*[8]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 368026044, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 9 }, ptr null }, ptr @"[8]_llgo_string" }, align 8
@"[]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 608974920, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 8 }, ptr @"*[]_llgo_string" }, ptr @_llgo_string }, align 8
@67 = private unnamed_addr constant [8 x i8] c"[]string", align 1
@"*[]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -157880218, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 8 }, ptr null }, ptr @"[]_llgo_string" }, align 8
@68 = private unnamed_addr constant [5 x i8] c"elems", align 1
@"[8]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 0, i32 -1310855284, i8 8, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_int" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 6 }, ptr @"*[8]_llgo_int" }, ptr @_llgo_int, ptr @"[]_llgo_int", i64 8 }, align 8
@69 = private unnamed_addr constant [6 x i8] c"[8]int", align 1
@"*[8]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1841254256, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 6 }, ptr null }, ptr @"[8]_llgo_int" }, align 8
@"[]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -1129561019, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 5 }, ptr @"*[]_llgo_int" }, ptr @_llgo_int }, align 8
@70 = private unnamed_addr constant [5 x i8] c"[]int", align 1
@"*[]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1428175521, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 5 }, ptr null }, ptr @"[]_llgo_int" }, align 8
@71 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@"github.com/goplus/llgo/cl/_testpull/types.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 7 }, ptr @"[8]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 4 }, ptr @"[8]_llgo_string", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 5 }, ptr @"[8]_llgo_int", i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 8 }, ptr @_llgo_Pointer, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1485110546, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 59 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_func$18IbIdsW5s12z12VYvKfPxtB_5lqm5yDNtFMb3Hjozw", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[github.com/goplus/llgo/async.Result[int]]).Await", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[github.com/goplus/llgo/async.Result[int]]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[github.com/goplus/llgo/async.Result[int]]).Poll", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[github.com/goplus/llgo/async.Result[int]]).Poll" }] }, align 8
@72 = private unnamed_addr constant [59 x i8] c"async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]", align 1
@"_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 24, i32 504401203, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 59 }, ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$a2kIjmWEj4soAG8ikWLa-WCoYk4eoItgOcUmPZ-eQNY$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"_llgo_github.com/goplus/llgo/async.Result[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 24, i32 411841992, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Result[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 17 }, ptr @"*_llgo_github.com/goplus/llgo/async.Result[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$oLcYhpB3wDWLnk5tkoUFCV4RjUr6h9SZHyPCuMxeWiQ$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 5 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Result[int]).IsErr", ptr @"github.com/goplus/llgo/async.Result[int].IsErr" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 4 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Result[int]).IsOk", ptr @"github.com/goplus/llgo/async.Result[int].IsOk" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Result[int]).Unwrap", ptr @"github.com/goplus/llgo/async.Result[int].Unwrap" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 8 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr @"github.com/goplus/llgo/async.(*Result[int]).UnwrapOr", ptr @"github.com/goplus/llgo/async.Result[int].UnwrapOr" }] }, align 8
@73 = private unnamed_addr constant [17 x i8] c"async.Result[int]", align 1
@"*_llgo_github.com/goplus/llgo/async.Result[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1214561949, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 17 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Result[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 5 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Result[int]).IsErr", ptr @"github.com/goplus/llgo/async.(*Result[int]).IsErr" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 4 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Result[int]).IsOk", ptr @"github.com/goplus/llgo/async.(*Result[int]).IsOk" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Result[int]).Unwrap", ptr @"github.com/goplus/llgo/async.(*Result[int]).Unwrap" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 8 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr @"github.com/goplus/llgo/async.(*Result[int]).UnwrapOr", ptr @"github.com/goplus/llgo/async.(*Result[int]).UnwrapOr" }] }, align 8
@74 = private unnamed_addr constant [5 x i8] c"IsErr", align 1
@75 = private unnamed_addr constant [4 x i8] c"IsOk", align 1
@76 = private unnamed_addr constant [6 x i8] c"Unwrap", align 1
@77 = private unnamed_addr constant [8 x i8] c"UnwrapOr", align 1
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134531106, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 13 }, ptr @"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out", i64 1, i64 1 } }, align 8
@78 = private unnamed_addr constant [13 x i8] c"func(int) int", align 1
@"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1763581361, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 13 }, ptr null }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@79 = private unnamed_addr constant [3 x i8] c"Err", align 1
@_llgo_error = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1462738452, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 5 }, ptr @"*_llgo_error" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU$imethods", i64 1, i64 1 } }, align 8
@80 = private unnamed_addr constant [5 x i8] c"error", align 1
@"*_llgo_error" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1621558991, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 5 }, ptr null }, ptr @_llgo_error }, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1419376263, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 13 }, ptr @"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out", i64 1, i64 1 } }, align 8
@81 = private unnamed_addr constant [13 x i8] c"func() string", align 1
@"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1900367307, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 13 }, ptr null }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }], align 8
@"_llgo_struct$oLcYhpB3wDWLnk5tkoUFCV4RjUr6h9SZHyPCuMxeWiQ$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 3 }, ptr @_llgo_error, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$a2kIjmWEj4soAG8ikWLa-WCoYk4eoItgOcUmPZ-eQNY$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/async.Result[int]", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$18IbIdsW5s12z12VYvKfPxtB_5lqm5yDNtFMb3Hjozw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1921098413, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 24 }, ptr @"*_llgo_func$18IbIdsW5s12z12VYvKfPxtB_5lqm5yDNtFMb3Hjozw" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$18IbIdsW5s12z12VYvKfPxtB_5lqm5yDNtFMb3Hjozw$out", i64 1, i64 1 } }, align 8
@82 = private unnamed_addr constant [24 x i8] c"func() async.Result[int]", align 1
@"*_llgo_func$18IbIdsW5s12z12VYvKfPxtB_5lqm5yDNtFMb3Hjozw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2077550105, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 24 }, ptr null }, ptr @"_llgo_func$18IbIdsW5s12z12VYvKfPxtB_5lqm5yDNtFMb3Hjozw" }, align 8
@"_llgo_func$18IbIdsW5s12z12VYvKfPxtB_5lqm5yDNtFMb3Hjozw$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Result[int]"], align 8
@"_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323037639, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 73 }, ptr @"*_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8$out", i64 1, i64 1 } }, align 8
@83 = private unnamed_addr constant [73 x i8] c"func(*async.Context) async.Poll[github.com/goplus/llgo/async.Result[int]]", align 1
@"*_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 118515476, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 73 }, ptr null }, ptr @"_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8" }, align 8
@"_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/async.Context"], align 8
@"_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 48, i64 48, i32 -925489224, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @84, i64 52 }, ptr @"*_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$XLym_Z3pAbGOnuZ91-hGXV_6lqLr_myTctbTNGwH_0k$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).Error", ptr @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]].Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).HasError", ptr @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]].HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).IsReady", ptr @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]].IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @"_llgo_func$18IbIdsW5s12z12VYvKfPxtB_5lqm5yDNtFMb3Hjozw", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).Value", ptr @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]].Value" }] }, align 8
@84 = private unnamed_addr constant [52 x i8] c"async.Poll[github.com/goplus/llgo/async.Result[int]]", align 1
@"*_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 605867178, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @84, i64 52 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).Error", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).HasError", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).IsReady", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @"_llgo_func$18IbIdsW5s12z12VYvKfPxtB_5lqm5yDNtFMb3Hjozw", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).Value", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).Value" }] }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$XLym_Z3pAbGOnuZ91-hGXV_6lqLr_myTctbTNGwH_0k$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 5 }, ptr @_llgo_bool, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/async.Result[int]", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 3 }, ptr @_llgo_any, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]"], align 8
@"_llgo_iface$JYl-RTkRbuhs_5E_B2SRSB6glH2MFQQrwsjoVoLKA1o" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1471138865, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 114 }, ptr @"*_llgo_iface$JYl-RTkRbuhs_5E_B2SRSB6glH2MFQQrwsjoVoLKA1o" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$JYl-RTkRbuhs_5E_B2SRSB6glH2MFQQrwsjoVoLKA1o$imethods", i64 2, i64 2 } }, align 8
@85 = private unnamed_addr constant [114 x i8] c"interface { Await() async.Result[int]; Poll(*async.Context) async.Poll[github.com/goplus/llgo/async.Result[int]] }", align 1
@"*_llgo_iface$JYl-RTkRbuhs_5E_B2SRSB6glH2MFQQrwsjoVoLKA1o" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1193322272, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 114 }, ptr null }, ptr @"_llgo_iface$JYl-RTkRbuhs_5E_B2SRSB6glH2MFQQrwsjoVoLKA1o" }, align 8
@"_llgo_iface$JYl-RTkRbuhs_5E_B2SRSB6glH2MFQQrwsjoVoLKA1o$imethods" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_func$18IbIdsW5s12z12VYvKfPxtB_5lqm5yDNtFMb3Hjozw" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8" }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1638217846, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 27 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_func$18IbIdsW5s12z12VYvKfPxtB_5lqm5yDNtFMb3Hjozw", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*LookupAndDouble$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*LookupAndDouble$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*LookupAndDouble$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*LookupAndDouble$State).Poll" }] }, align 8
@86 = private unnamed_addr constant [27 x i8] c"types.LookupAndDouble$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 80, i64 80, i32 -1147440325, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 27 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$AgMsuEphgvOoEzVjWTPY4iSp9v_kz4CaGd07c5YyRYQ$fields", i64 7, i64 7 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$AgMsuEphgvOoEzVjWTPY4iSp9v_kz4CaGd07c5YyRYQ$fields" = weak_odr constant [7 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @"map[_llgo_string]_llgo_int", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 6 }, ptr @_llgo_string, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 11 }, ptr @"_llgo_github.com/goplus/llgo/async.Result[int]", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -103283099, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @87, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Await", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Poll", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Poll" }] }, align 8
@87 = private unnamed_addr constant [22 x i8] c"async.ReadyFuture[int]", align 1
@"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1814719306, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @87, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 975938808, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @88, i64 63 }, ptr @"*_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI$imethods", i64 2, i64 2 } }, align 8
@88 = private unnamed_addr constant [63 x i8] c"interface { Await() int; Poll(*async.Context) async.Poll[int] }", align 1
@"*_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1309347707, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @88, i64 63 }, ptr null }, ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI" }, align 8
@"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI$imethods" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/types.MapParam$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -856744270, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @89, i64 20 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.MapParam$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*MapParam$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*MapParam$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*MapParam$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*MapParam$State).Poll" }] }, align 8
@89 = private unnamed_addr constant [20 x i8] c"types.MapParam$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/types.MapParam$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 48, i32 54765331, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @89, i64 20 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.MapParam$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$3chN6_C0a8rWgebAuL0hqhMg5NvGSkX_2OnXHQjMoRk$fields", i64 7, i64 7 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$3chN6_C0a8rWgebAuL0hqhMg5NvGSkX_2OnXHQjMoRk$fields" = weak_odr constant [7 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @"map[_llgo_string]_llgo_int", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 6 }, ptr @_llgo_string, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 11 }, ptr @_llgo_int, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/types.PointerParam$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1890127781, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @90, i64 24 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.PointerParam$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*PointerParam$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*PointerParam$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*PointerParam$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*PointerParam$State).Poll" }] }, align 8
@90 = private unnamed_addr constant [24 x i8] c"types.PointerParam$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/types.PointerParam$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 48, i64 32, i32 -1176857743, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.PointerParam$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @90, i64 24 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.PointerParam$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$yvkKnCkq7ReUegJhcVdBJXnsvg0SuX72NI7eqkR9Bmk$fields", i64 6, i64 6 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$yvkKnCkq7ReUegJhcVdBJXnsvg0SuX72NI7eqkR9Bmk$fields" = weak_odr constant [6 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @"*_llgo_int", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 11 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 133054281, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @91, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_func$18IbIdsW5s12z12VYvKfPxtB_5lqm5yDNtFMb3Hjozw", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*SafeDivide$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*SafeDivide$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*SafeDivide$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*SafeDivide$State).Poll" }] }, align 8
@91 = private unnamed_addr constant [22 x i8] c"types.SafeDivide$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 72, i64 72, i32 688455267, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @91, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$Oj-xn9h_eCTusVdyMugYTBtBstd0X-upyn4E7HhVW1Q$fields", i64 7, i64 7 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$Oj-xn9h_eCTusVdyMugYTBtBstd0X-upyn4E7HhVW1Q$fields" = weak_odr constant [7 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 6 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 11 }, ptr @"_llgo_github.com/goplus/llgo/async.Result[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/types.SliceParam$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 343692552, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @92, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.SliceParam$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*SliceParam$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*SliceParam$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*SliceParam$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*SliceParam$State).Poll" }] }, align 8
@92 = private unnamed_addr constant [22 x i8] c"types.SliceParam$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/types.SliceParam$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 120, i64 104, i32 1393606221, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @92, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.SliceParam$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$xE5aDFGIsZ4Vp9JRdX2RMvuVU4uQoZJmu0A5SYHuHik$fields", i64 13, i64 13 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@93 = private unnamed_addr constant [4 x i8] c"var4", align 1
@94 = private unnamed_addr constant [4 x i8] c"var5", align 1
@95 = private unnamed_addr constant [4 x i8] c"var6", align 1
@96 = private unnamed_addr constant [4 x i8] c"var7", align 1
@97 = private unnamed_addr constant [4 x i8] c"var8", align 1
@"github.com/goplus/llgo/cl/_testpull/types.struct$xE5aDFGIsZ4Vp9JRdX2RMvuVU4uQoZJmu0A5SYHuHik$fields" = weak_odr constant [13 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @"[]_llgo_int", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @_llgo_int, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @93, i64 4 }, ptr @_llgo_bool, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @94, i64 4 }, ptr @_llgo_int, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @95, i64 4 }, ptr @"*_llgo_int", i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @96, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @97, i64 4 }, ptr @_llgo_int, i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 104, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 11 }, ptr @_llgo_int, i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/types.StringParam$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -58551321, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @98, i64 23 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.StringParam$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*StringParam$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*StringParam$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*StringParam$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*StringParam$State).Poll" }] }, align 8
@98 = private unnamed_addr constant [23 x i8] c"types.StringParam$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/types.StringParam$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 48, i64 32, i32 273925782, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.StringParam$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @98, i64 23 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.StringParam$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$JUUi4X543N8d7ao6q1EBByPS5pRnVLT449SfWxoPGL8$fields", i64 5, i64 5 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$JUUi4X543N8d7ao6q1EBByPS5pRnVLT449SfWxoPGL8$fields" = weak_odr constant [5 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @_llgo_string, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 11 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -68901220, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @99, i64 29 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*StructFieldAccess$State).Await", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*StructFieldAccess$State).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*StructFieldAccess$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*StructFieldAccess$State).Poll" }] }, align 8
@99 = private unnamed_addr constant [29 x i8] c"types.StructFieldAccess$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 96, i64 80, i32 -1506970905, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @99, i64 29 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$cRcss-Vzlg_sdlfiLkD8tg9wOaY8yTlndFkGJI9k8MA$fields", i64 10, i64 10 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testpull/types.Point" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 -1984961403, i8 13, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.Point" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @100, i64 11 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.Point" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$EoN-2WQQZyu0WCtjjPX5UG3yM-s2ruKwcqP-tpve-Q8$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@100 = private unnamed_addr constant [11 x i8] c"types.Point", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/types.Point" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -38123231, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @100, i64 11 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.Point" }, align 8
@101 = private unnamed_addr constant [1 x i8] c"X", align 1
@102 = private unnamed_addr constant [1 x i8] c"Y", align 1
@"_llgo_struct$EoN-2WQQZyu0WCtjjPX5UG3yM-s2ruKwcqP-tpve-Q8$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @101, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @102, i64 1 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$cRcss-Vzlg_sdlfiLkD8tg9wOaY8yTlndFkGJI9k8MA$fields" = weak_odr constant [10 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.Point", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.Point", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @_llgo_int, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @93, i64 4 }, ptr @_llgo_int, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 11 }, ptr @_llgo_int, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/types.init$guard" = global i1 false, align 1
@103 = private unnamed_addr constant [45 x i8] c"Await() should be transformed by the compiler", align 1

define %"github.com/goplus/llgo/async.Tuple2[int,int]" @"github.com/goplus/llgo/cl/_testpull/types.(*Divmod$State).Await"(ptr %0) {
_llgo_0:
  ret %"github.com/goplus/llgo/async.Tuple2[int,int]" undef
}

define %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" @"github.com/goplus/llgo/cl/_testpull/types.(*Divmod$State).Poll"(ptr %0, ptr %1) {
Divmod_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %Divmod_state_unreach [
    i8 0, label %Divmod_state_00
    i8 1, label %Divmod_state_01
    i8 2, label %Divmod_state_02
    i8 3, label %Divmod_state_done
  ]

Divmod_state_00:                                  ; preds = %Divmod_entry
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 4
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 6
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 7
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %Divmod_state_00_init, label %Divmod_state_00_poll

Divmod_state_01:                                  ; preds = %Divmod_state_00_ready, %Divmod_entry
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 1
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 2
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 4
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 6
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 8
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %Divmod_state_01_init, label %Divmod_state_01_poll

Divmod_state_02:                                  ; preds = %Divmod_state_01_ready, %Divmod_entry
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 1
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 2
  %29 = load i64, ptr %28, align 4
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 4
  %31 = load i64, ptr %30, align 4
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 6
  %33 = load i64, ptr %32, align 4
  %34 = call %"github.com/goplus/llgo/async.Tuple2[int,int]" @"github.com/goplus/llgo/async.MakeTuple2[int,int]"(i64 %31, i64 %33)
  %35 = call ptr @"github.com/goplus/llgo/async.Return[github.com/goplus/llgo/async.Tuple2[int, int]]"(%"github.com/goplus/llgo/async.Tuple2[int,int]" %34)
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$JUoXkwpyN4rTSTT_NnAgTEgTKBELlGnXKsPeHB_9_t8", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]")
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %36, 0
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %37, ptr %35, 1
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 9
  store %"github.com/goplus/llgo/async.Tuple2[int,int]" %34, ptr %39, align 4
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %40, align 1
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 9
  %42 = load %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %41, align 4
  %43 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" { i1 true, %"github.com/goplus/llgo/async.Tuple2[int,int]" undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/async.Tuple2[int,int]" %42, 1
  %44 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %43, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %44

Divmod_state_done:                                ; preds = %Divmod_entry
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 9
  %46 = load %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %45, align 4
  %47 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" { i1 true, %"github.com/goplus/llgo/async.Tuple2[int,int]" undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/async.Tuple2[int,int]" %46, 1
  %48 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %47, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %48

Divmod_state_unreach:                             ; preds = %Divmod_entry
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" zeroinitializer

_llgo_6:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" zeroinitializer

Divmod_state_00_init:                             ; preds = %Divmod_state_00
  %49 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 1
  %50 = load i64, ptr %49, align 4
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 2
  %52 = load i64, ptr %51, align 4
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 4
  %54 = load i64, ptr %53, align 4
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 6
  %56 = load i64, ptr %55, align 4
  %57 = sdiv i64 %50, %52
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 3
  store i64 %57, ptr %58, align 4
  %59 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %57)
  store ptr %59, ptr %12, align 8
  br label %Divmod_state_00_poll

Divmod_state_00_poll:                             ; preds = %Divmod_state_00_init, %Divmod_state_00
  %60 = load ptr, ptr %12, align 8
  %61 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %60, ptr %1)
  %62 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %61, 0
  br i1 %62, label %Divmod_state_00_ready, label %Divmod_state_00_pending

Divmod_state_00_ready:                            ; preds = %Divmod_state_00_poll
  %63 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %61, 1
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 4
  store i64 %63, ptr %64, align 4
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 3
  store i64 %57, ptr %65, align 4
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 5
  %67 = srem i64 %50, %52
  store i64 %67, ptr %66, align 4
  %68 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 6
  store i64 %56, ptr %68, align 4
  store ptr null, ptr %12, align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %69, align 1
  br label %Divmod_state_01

Divmod_state_00_pending:                          ; preds = %Divmod_state_00_poll
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" zeroinitializer

Divmod_state_01_init:                             ; preds = %Divmod_state_01
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 1
  %71 = load i64, ptr %70, align 4
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 2
  %73 = load i64, ptr %72, align 4
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 4
  %75 = load i64, ptr %74, align 4
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 6
  %77 = load i64, ptr %76, align 4
  %78 = srem i64 %71, %73
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 5
  store i64 %78, ptr %79, align 4
  %80 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %78)
  store ptr %80, ptr %23, align 8
  br label %Divmod_state_01_poll

Divmod_state_01_poll:                             ; preds = %Divmod_state_01_init, %Divmod_state_01
  %81 = load ptr, ptr %23, align 8
  %82 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %81, ptr %1)
  %83 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %82, 0
  br i1 %83, label %Divmod_state_01_ready, label %Divmod_state_01_pending

Divmod_state_01_ready:                            ; preds = %Divmod_state_01_poll
  %84 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %82, 1
  %85 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 6
  store i64 %84, ptr %85, align 4
  %86 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 3
  %87 = sdiv i64 %71, %73
  store i64 %87, ptr %86, align 4
  %88 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 4
  store i64 %75, ptr %88, align 4
  %89 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 5
  store i64 %78, ptr %89, align 4
  store ptr null, ptr %23, align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %90, align 1
  br label %Divmod_state_02

Divmod_state_01_pending:                          ; preds = %Divmod_state_01_poll
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt$1", ptr undef }, ptr %2, 1
  %5 = call ptr @"github.com/goplus/llgo/async.Async[int]"({ ptr, ptr } %4)
  ret ptr %5
}

define void @"github.com/goplus/llgo/cl/_testpull/types.StepInt$1"(ptr %0, { ptr, ptr } %1) {
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

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
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

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

define ptr @"github.com/goplus/llgo/cl/_testpull/types.Divmod$Concrete"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 88)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %2, i32 0, i32 0
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %2, i32 0, i32 1
  store i64 %0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %2, i32 0, i32 2
  store i64 %1, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %2, i32 0, i32 3
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %2, i32 0, i32 4
  store i64 0, ptr %7, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %2, i32 0, i32 5
  store i64 0, ptr %8, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %2, i32 0, i32 6
  store i64 0, ptr %9, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %2, i32 0, i32 7
  store ptr null, ptr %10, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %2, i32 0, i32 8
  store ptr null, ptr %11, align 8
  ret ptr %2
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/types.Divmod"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.Divmod$Concrete"(i64 %0, i64 %1)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$JUoXkwpyN4rTSTT_NnAgTEgTKBELlGnXKsPeHB_9_t8", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.Divmod$State")
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, ptr %2, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5
}

define linkonce i64 @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @103, i64 45 }, ptr %1, align 8
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

define %"github.com/goplus/llgo/async.Tuple2[int,int]" @"github.com/goplus/llgo/cl/_testpull/types.(*GetMinMax$State).Await"(ptr %0) {
_llgo_0:
  ret %"github.com/goplus/llgo/async.Tuple2[int,int]" undef
}

define %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" @"github.com/goplus/llgo/cl/_testpull/types.(*GetMinMax$State).Poll"(ptr %0, ptr %1) {
GetMinMax_entry:
  %2 = alloca %"github.com/goplus/llgo/async.Tuple2[int,int]", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  %3 = alloca %"github.com/goplus/llgo/async.Tuple2[int,int]", align 8
  call void @llvm.memset(ptr %3, i8 0, i64 16, i1 false)
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 0
  %5 = load i8, ptr %4, align 1
  switch i8 %5, label %GetMinMax_state_unreach [
    i8 0, label %GetMinMax_state_00
    i8 1, label %GetMinMax_state_01
    i8 2, label %GetMinMax_state_02
    i8 3, label %GetMinMax_state_03
    i8 4, label %GetMinMax_state_04
    i8 5, label %GetMinMax_state_done
  ]

GetMinMax_state_00:                               ; preds = %GetMinMax_entry
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 2
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 3
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 4
  %13 = load i64, ptr %12, align 4
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 5
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %GetMinMax_state_00_init, label %GetMinMax_state_00_poll

GetMinMax_state_01:                               ; preds = %GetMinMax_state_00_ready, %GetMinMax_entry
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 1
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 2
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 3
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 4
  %24 = load i64, ptr %23, align 4
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 6
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %GetMinMax_state_01_init, label %GetMinMax_state_01_poll

GetMinMax_state_02:                               ; preds = %GetMinMax_state_01_ready, %GetMinMax_entry
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 1
  %29 = load i64, ptr %28, align 4
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 2
  %31 = load i64, ptr %30, align 4
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 3
  %33 = load i64, ptr %32, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 4
  %35 = load i64, ptr %34, align 4
  %36 = icmp slt i64 %33, %35
  br i1 %36, label %GetMinMax_state_00_true, label %GetMinMax_state_00_false

GetMinMax_state_03:                               ; preds = %GetMinMax_state_00_true, %GetMinMax_entry
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 1
  %38 = load i64, ptr %37, align 4
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 2
  %40 = load i64, ptr %39, align 4
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 3
  %42 = load i64, ptr %41, align 4
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 4
  %44 = load i64, ptr %43, align 4
  %45 = getelementptr inbounds %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %2, i32 0, i32 0
  %46 = getelementptr inbounds %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %2, i32 0, i32 1
  store i64 %42, ptr %45, align 4
  store i64 %44, ptr %46, align 4
  %47 = load %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %2, align 4
  %48 = call ptr @"github.com/goplus/llgo/async.Return[github.com/goplus/llgo/async.Tuple2[int, int]]"(%"github.com/goplus/llgo/async.Tuple2[int,int]" %47)
  %49 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$JUoXkwpyN4rTSTT_NnAgTEgTKBELlGnXKsPeHB_9_t8", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]")
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %49, 0
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %50, ptr %48, 1
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 7
  store %"github.com/goplus/llgo/async.Tuple2[int,int]" %47, ptr %52, align 4
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %53, align 1
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 7
  %55 = load %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %54, align 4
  %56 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" { i1 true, %"github.com/goplus/llgo/async.Tuple2[int,int]" undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/async.Tuple2[int,int]" %55, 1
  %57 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %56, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %57

GetMinMax_state_04:                               ; preds = %GetMinMax_state_00_false, %GetMinMax_entry
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 1
  %59 = load i64, ptr %58, align 4
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 2
  %61 = load i64, ptr %60, align 4
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 3
  %63 = load i64, ptr %62, align 4
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 4
  %65 = load i64, ptr %64, align 4
  %66 = getelementptr inbounds %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %3, i32 0, i32 0
  %67 = getelementptr inbounds %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %3, i32 0, i32 1
  store i64 %65, ptr %66, align 4
  store i64 %63, ptr %67, align 4
  %68 = load %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %3, align 4
  %69 = call ptr @"github.com/goplus/llgo/async.Return[github.com/goplus/llgo/async.Tuple2[int, int]]"(%"github.com/goplus/llgo/async.Tuple2[int,int]" %68)
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$JUoXkwpyN4rTSTT_NnAgTEgTKBELlGnXKsPeHB_9_t8", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]")
  %71 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %70, 0
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %71, ptr %69, 1
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 7
  store %"github.com/goplus/llgo/async.Tuple2[int,int]" %68, ptr %73, align 4
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %74, align 1
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 7
  %76 = load %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %75, align 4
  %77 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" { i1 true, %"github.com/goplus/llgo/async.Tuple2[int,int]" undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/async.Tuple2[int,int]" %76, 1
  %78 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %77, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %78

GetMinMax_state_done:                             ; preds = %GetMinMax_entry
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 7
  %80 = load %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %79, align 4
  %81 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" { i1 true, %"github.com/goplus/llgo/async.Tuple2[int,int]" undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/async.Tuple2[int,int]" %80, 1
  %82 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %81, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %82

GetMinMax_state_unreach:                          ; preds = %GetMinMax_entry
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" zeroinitializer

_llgo_8:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" zeroinitializer

GetMinMax_state_00_init:                          ; preds = %GetMinMax_state_00
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 1
  %84 = load i64, ptr %83, align 4
  %85 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 2
  %86 = load i64, ptr %85, align 4
  %87 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 3
  %88 = load i64, ptr %87, align 4
  %89 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 4
  %90 = load i64, ptr %89, align 4
  %91 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %84)
  store ptr %91, ptr %14, align 8
  br label %GetMinMax_state_00_poll

GetMinMax_state_00_poll:                          ; preds = %GetMinMax_state_00_init, %GetMinMax_state_00
  %92 = load ptr, ptr %14, align 8
  %93 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %92, ptr %1)
  %94 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %93, 0
  br i1 %94, label %GetMinMax_state_00_ready, label %GetMinMax_state_00_pending

GetMinMax_state_00_ready:                         ; preds = %GetMinMax_state_00_poll
  %95 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %93, 1
  %96 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 3
  store i64 %95, ptr %96, align 4
  %97 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 4
  store i64 %90, ptr %97, align 4
  store ptr null, ptr %14, align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %98, align 1
  br label %GetMinMax_state_01

GetMinMax_state_00_pending:                       ; preds = %GetMinMax_state_00_poll
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" zeroinitializer

GetMinMax_state_01_init:                          ; preds = %GetMinMax_state_01
  %99 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 1
  %100 = load i64, ptr %99, align 4
  %101 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 2
  %102 = load i64, ptr %101, align 4
  %103 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 3
  %104 = load i64, ptr %103, align 4
  %105 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 4
  %106 = load i64, ptr %105, align 4
  %107 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %102)
  store ptr %107, ptr %25, align 8
  br label %GetMinMax_state_01_poll

GetMinMax_state_01_poll:                          ; preds = %GetMinMax_state_01_init, %GetMinMax_state_01
  %108 = load ptr, ptr %25, align 8
  %109 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %108, ptr %1)
  %110 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %109, 0
  br i1 %110, label %GetMinMax_state_01_ready, label %GetMinMax_state_01_pending

GetMinMax_state_01_ready:                         ; preds = %GetMinMax_state_01_poll
  %111 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %109, 1
  %112 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 4
  store i64 %111, ptr %112, align 4
  %113 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 3
  store i64 %104, ptr %113, align 4
  store ptr null, ptr %25, align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %114, align 1
  br label %GetMinMax_state_02

GetMinMax_state_01_pending:                       ; preds = %GetMinMax_state_01_poll
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" zeroinitializer

GetMinMax_state_00_true:                          ; preds = %GetMinMax_state_02
  %115 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 3
  store i64 %33, ptr %115, align 4
  %116 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 4
  store i64 %35, ptr %116, align 4
  %117 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %117, align 1
  br label %GetMinMax_state_03

GetMinMax_state_00_false:                         ; preds = %GetMinMax_state_02
  %118 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 3
  store i64 %33, ptr %118, align 4
  %119 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 4
  store i64 %35, ptr %119, align 4
  %120 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %120, align 1
  br label %GetMinMax_state_04
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

define ptr @"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$Concrete"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 72)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %2, i32 0, i32 0
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %2, i32 0, i32 1
  store i64 %0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %2, i32 0, i32 2
  store i64 %1, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %2, i32 0, i32 3
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %2, i32 0, i32 4
  store i64 0, ptr %7, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %2, i32 0, i32 5
  store ptr null, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %2, i32 0, i32 6
  store ptr null, ptr %9, align 8
  ret ptr %2
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/types.GetMinMax"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$Concrete"(i64 %0, i64 %1)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$JUoXkwpyN4rTSTT_NnAgTEgTKBELlGnXKsPeHB_9_t8", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State")
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, ptr %2, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5
}

define %"github.com/goplus/llgo/async.Result[int]" @"github.com/goplus/llgo/cl/_testpull/types.(*LookupAndDouble$State).Await"(ptr %0) {
_llgo_0:
  ret %"github.com/goplus/llgo/async.Result[int]" undef
}

define %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" @"github.com/goplus/llgo/cl/_testpull/types.(*LookupAndDouble$State).Poll"(ptr %0, ptr %1) {
LookupAndDouble_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %LookupAndDouble_state_unreach [
    i8 0, label %LookupAndDouble_state_00
    i8 1, label %LookupAndDouble_state_01
    i8 2, label %LookupAndDouble_state_02
    i8 3, label %LookupAndDouble_state_03
    i8 4, label %LookupAndDouble_state_done
  ]

LookupAndDouble_state_00:                         ; preds = %LookupAndDouble_entry
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 2
  %7 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %6, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 3
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 4
  %11 = load i64, ptr %10, align 4
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %7, ptr %12, align 8
  %13 = call { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr @"map[_llgo_string]_llgo_int", ptr %5, ptr %12)
  %14 = extractvalue { ptr, i1 } %13, 0
  %15 = load i64, ptr %14, align 4
  %16 = extractvalue { ptr, i1 } %13, 1
  %17 = insertvalue { i64, i1 } undef, i64 %15, 0
  %18 = insertvalue { i64, i1 } %17, i1 %16, 1
  %19 = extractvalue { i64, i1 } %18, 0
  %20 = extractvalue { i64, i1 } %18, 1
  br i1 %20, label %LookupAndDouble_state_00_true, label %LookupAndDouble_state_00_false

LookupAndDouble_state_01:                         ; preds = %LookupAndDouble_state_00_false, %LookupAndDouble_entry
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 2
  %24 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %23, align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 3
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 4
  %28 = load i64, ptr %27, align 4
  %29 = call %"github.com/goplus/llgo/async.Result[int]" @"github.com/goplus/llgo/async.Err[int]"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %30 = call ptr @"github.com/goplus/llgo/async.Return[github.com/goplus/llgo/async.Result[int]]"(%"github.com/goplus/llgo/async.Result[int]" %29)
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$JYl-RTkRbuhs_5E_B2SRSB6glH2MFQQrwsjoVoLKA1o", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]")
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %31, 0
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %32, ptr %30, 1
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 6
  store %"github.com/goplus/llgo/async.Result[int]" %29, ptr %34, align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %35, align 1
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 6
  %37 = load %"github.com/goplus/llgo/async.Result[int]", ptr %36, align 8
  %38 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" { i1 true, %"github.com/goplus/llgo/async.Result[int]" undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/async.Result[int]" %37, 1
  %39 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %38, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %39

LookupAndDouble_state_02:                         ; preds = %LookupAndDouble_state_00_true, %LookupAndDouble_entry
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 2
  %43 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %42, align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 4
  %45 = load i64, ptr %44, align 4
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 5
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %LookupAndDouble_state_02_init, label %LookupAndDouble_state_02_poll

LookupAndDouble_state_03:                         ; preds = %LookupAndDouble_state_02_ready, %LookupAndDouble_entry
  %49 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 2
  %52 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %51, align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 4
  %54 = load i64, ptr %53, align 4
  %55 = call %"github.com/goplus/llgo/async.Result[int]" @"github.com/goplus/llgo/async.Ok[int]"(i64 %54)
  %56 = call ptr @"github.com/goplus/llgo/async.Return[github.com/goplus/llgo/async.Result[int]]"(%"github.com/goplus/llgo/async.Result[int]" %55)
  %57 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$JYl-RTkRbuhs_5E_B2SRSB6glH2MFQQrwsjoVoLKA1o", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]")
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %57, 0
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %58, ptr %56, 1
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 6
  store %"github.com/goplus/llgo/async.Result[int]" %55, ptr %60, align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %61, align 1
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 6
  %63 = load %"github.com/goplus/llgo/async.Result[int]", ptr %62, align 8
  %64 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" { i1 true, %"github.com/goplus/llgo/async.Result[int]" undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/async.Result[int]" %63, 1
  %65 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %64, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %65

LookupAndDouble_state_done:                       ; preds = %LookupAndDouble_entry
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 6
  %67 = load %"github.com/goplus/llgo/async.Result[int]", ptr %66, align 8
  %68 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" { i1 true, %"github.com/goplus/llgo/async.Result[int]" undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/async.Result[int]" %67, 1
  %69 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %68, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %69

LookupAndDouble_state_unreach:                    ; preds = %LookupAndDouble_entry
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" zeroinitializer

_llgo_7:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" zeroinitializer

LookupAndDouble_state_00_true:                    ; preds = %LookupAndDouble_state_00
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %70, align 1
  br label %LookupAndDouble_state_02

LookupAndDouble_state_00_false:                   ; preds = %LookupAndDouble_state_00
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %71, align 1
  br label %LookupAndDouble_state_01

LookupAndDouble_state_02_init:                    ; preds = %LookupAndDouble_state_02
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 1
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 2
  %75 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %74, align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 4
  %77 = load i64, ptr %76, align 4
  %78 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %75, ptr %78, align 8
  %79 = call { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr @"map[_llgo_string]_llgo_int", ptr %73, ptr %78)
  %80 = extractvalue { ptr, i1 } %79, 0
  %81 = load i64, ptr %80, align 4
  %82 = extractvalue { ptr, i1 } %79, 1
  %83 = insertvalue { i64, i1 } undef, i64 %81, 0
  %84 = insertvalue { i64, i1 } %83, i1 %82, 1
  %85 = extractvalue { i64, i1 } %84, 0
  %86 = mul i64 %85, 2
  %87 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 3
  store i64 %86, ptr %87, align 4
  %88 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %86)
  store ptr %88, ptr %46, align 8
  br label %LookupAndDouble_state_02_poll

LookupAndDouble_state_02_poll:                    ; preds = %LookupAndDouble_state_02_init, %LookupAndDouble_state_02
  %89 = load ptr, ptr %46, align 8
  %90 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %89, ptr %1)
  %91 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %90, 0
  br i1 %91, label %LookupAndDouble_state_02_ready, label %LookupAndDouble_state_02_pending

LookupAndDouble_state_02_ready:                   ; preds = %LookupAndDouble_state_02_poll
  %92 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %90, 1
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 4
  store i64 %92, ptr %93, align 4
  %94 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 3
  store i64 %86, ptr %94, align 4
  store ptr null, ptr %46, align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %95, align 1
  br label %LookupAndDouble_state_03

LookupAndDouble_state_02_pending:                 ; preds = %LookupAndDouble_state_02_poll
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" zeroinitializer
}

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.typehash"(ptr, ptr, i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal"(ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr, ptr, ptr)

define linkonce %"github.com/goplus/llgo/async.Result[int]" @"github.com/goplus/llgo/async.Err[int]"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/async.Result[int]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 24, i1 false)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Result[int]", ptr %1, i32 0, i32 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, ptr %2, align 8
  %3 = load %"github.com/goplus/llgo/async.Result[int]", ptr %1, align 8
  ret %"github.com/goplus/llgo/async.Result[int]" %3
}

define linkonce ptr @"github.com/goplus/llgo/async.Return[github.com/goplus/llgo/async.Result[int]]"(%"github.com/goplus/llgo/async.Result[int]" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]", ptr %1, i32 0, i32 0
  store %"github.com/goplus/llgo/async.Result[int]" %0, ptr %2, align 8
  ret ptr %1
}

define linkonce %"github.com/goplus/llgo/async.Result[int]" @"github.com/goplus/llgo/async.(*ReadyFuture[github.com/goplus/llgo/async.Result[int]]).Await"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]", ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/async.Result[int]", ptr %1, align 8
  ret %"github.com/goplus/llgo/async.Result[int]" %2
}

define linkonce %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" @"github.com/goplus/llgo/async.(*ReadyFuture[github.com/goplus/llgo/async.Result[int]]).Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]", ptr %0, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/async.Result[int]", ptr %2, align 8
  %4 = call %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" @"github.com/goplus/llgo/async.Ready[github.com/goplus/llgo/async.Result[int]]"(%"github.com/goplus/llgo/async.Result[int]" %3)
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %4
}

define linkonce i1 @"github.com/goplus/llgo/async.Result[int].IsErr"(%"github.com/goplus/llgo/async.Result[int]" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/async.Result[int]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 24, i1 false)
  store %"github.com/goplus/llgo/async.Result[int]" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Result[int]", ptr %1, i32 0, i32 1
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %3)
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %4, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, ptr %5, 1
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %8, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, ptr null, 1
  %11 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %10)
  %12 = xor i1 %11, true
  ret i1 %12
}

define linkonce i1 @"github.com/goplus/llgo/async.Result[int].IsOk"(%"github.com/goplus/llgo/async.Result[int]" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/async.Result[int]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 24, i1 false)
  store %"github.com/goplus/llgo/async.Result[int]" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Result[int]", ptr %1, i32 0, i32 1
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %3)
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %4, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, ptr %5, 1
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %8, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, ptr null, 1
  %11 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %10)
  ret i1 %11
}

define linkonce i64 @"github.com/goplus/llgo/async.Result[int].Unwrap"(%"github.com/goplus/llgo/async.Result[int]" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/async.Result[int]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 24, i1 false)
  store %"github.com/goplus/llgo/async.Result[int]" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Result[int]", ptr %1, i32 0, i32 1
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %3)
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %4, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, ptr %5, 1
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %8, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, ptr null, 1
  %11 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %10)
  %12 = xor i1 %11, true
  br i1 %12, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %13 = getelementptr inbounds %"github.com/goplus/llgo/async.Result[int]", ptr %1, i32 0, i32 1
  %14 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %13, align 8
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %14)
  %16 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %14, 1
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %15, 0
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %17, ptr %16, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %18)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %19 = getelementptr inbounds %"github.com/goplus/llgo/async.Result[int]", ptr %1, i32 0, i32 0
  %20 = load i64, ptr %19, align 4
  ret i64 %20
}

define linkonce i64 @"github.com/goplus/llgo/async.Result[int].UnwrapOr"(%"github.com/goplus/llgo/async.Result[int]" %0, i64 %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/async.Result[int]", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 24, i1 false)
  store %"github.com/goplus/llgo/async.Result[int]" %0, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/async.Result[int]", ptr %2, i32 0, i32 1
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %3, align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %4)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, 1
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %5, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, ptr %6, 1
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %9, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %10, ptr null, 1
  %12 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %8, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %11)
  %13 = xor i1 %12, true
  br i1 %13, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret i64 %1

_llgo_2:                                          ; preds = %_llgo_0
  %14 = getelementptr inbounds %"github.com/goplus/llgo/async.Result[int]", ptr %2, i32 0, i32 0
  %15 = load i64, ptr %14, align 4
  ret i64 %15
}

define linkonce i1 @"github.com/goplus/llgo/async.(*Result[int]).IsErr"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/async.Result[int]", ptr %0, align 8
  %2 = call i1 @"github.com/goplus/llgo/async.Result[int].IsErr"(%"github.com/goplus/llgo/async.Result[int]" %1)
  ret i1 %2
}

define linkonce i1 @"github.com/goplus/llgo/async.(*Result[int]).IsOk"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/async.Result[int]", ptr %0, align 8
  %2 = call i1 @"github.com/goplus/llgo/async.Result[int].IsOk"(%"github.com/goplus/llgo/async.Result[int]" %1)
  ret i1 %2
}

define linkonce i64 @"github.com/goplus/llgo/async.(*Result[int]).Unwrap"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/async.Result[int]", ptr %0, align 8
  %2 = call i64 @"github.com/goplus/llgo/async.Result[int].Unwrap"(%"github.com/goplus/llgo/async.Result[int]" %1)
  ret i64 %2
}

define linkonce i64 @"github.com/goplus/llgo/async.(*Result[int]).UnwrapOr"(ptr %0, i64 %1) {
_llgo_0:
  %2 = load %"github.com/goplus/llgo/async.Result[int]", ptr %0, align 8
  %3 = call i64 @"github.com/goplus/llgo/async.Result[int].UnwrapOr"(%"github.com/goplus/llgo/async.Result[int]" %2, i64 %1)
  ret i64 %3
}

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]].Error"(%"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 48, i1 false)
  store %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", ptr %1, i32 0, i32 2
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %2, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3
}

define linkonce i1 @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]].HasError"(%"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 48, i1 false)
  store %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", ptr %1, i32 0, i32 2
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %2, align 8
  %4 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer)
  %5 = xor i1 %4, true
  ret i1 %5
}

define linkonce i1 @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]].IsReady"(%"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 48, i1 false)
  store %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", ptr %1, i32 0, i32 0
  %3 = load i1, ptr %2, align 1
  ret i1 %3
}

define linkonce %"github.com/goplus/llgo/async.Result[int]" @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]].Value"(%"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 48, i1 false)
  store %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", ptr %1, i32 0, i32 1
  %3 = load %"github.com/goplus/llgo/async.Result[int]", ptr %2, align 8
  ret %"github.com/goplus/llgo/async.Result[int]" %3
}

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).Error"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", ptr %0, align 8
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]].Error"(%"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %1)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.eface" %2
}

define linkonce i1 @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).HasError"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", ptr %0, align 8
  %2 = call i1 @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]].HasError"(%"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %1)
  ret i1 %2
}

define linkonce i1 @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).IsReady"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", ptr %0, align 8
  %2 = call i1 @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]].IsReady"(%"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %1)
  ret i1 %2
}

define linkonce %"github.com/goplus/llgo/async.Result[int]" @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).Value"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", ptr %0, align 8
  %2 = call %"github.com/goplus/llgo/async.Result[int]" @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]].Value"(%"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %1)
  ret %"github.com/goplus/llgo/async.Result[int]" %2
}

define linkonce %"github.com/goplus/llgo/async.Result[int]" @"github.com/goplus/llgo/async.Ok[int]"(i64 %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/async.Result[int]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 24, i1 false)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Result[int]", ptr %1, i32 0, i32 0
  store i64 %0, ptr %2, align 4
  %3 = load %"github.com/goplus/llgo/async.Result[int]", ptr %1, align 8
  ret %"github.com/goplus/llgo/async.Result[int]" %3
}

define ptr @"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$Concrete"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 80)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %2, i32 0, i32 0
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %2, i32 0, i32 1
  store ptr %0, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %2, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %1, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %2, i32 0, i32 3
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %2, i32 0, i32 4
  store i64 0, ptr %7, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %2, i32 0, i32 5
  store ptr null, ptr %8, align 8
  ret ptr %2
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$Concrete"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$JYl-RTkRbuhs_5E_B2SRSB6glH2MFQQrwsjoVoLKA1o", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State")
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, ptr %2, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5
}

define i64 @"github.com/goplus/llgo/cl/_testpull/types.(*MapParam$State).Await"(ptr %0) {
_llgo_0:
  ret i64 undef
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/types.(*MapParam$State).Poll"(ptr %0, ptr %1) {
MapParam_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %MapParam_state_unreach [
    i8 0, label %MapParam_state_00
    i8 1, label %MapParam_state_01
    i8 2, label %MapParam_state_02
    i8 3, label %MapParam_state_03
    i8 4, label %MapParam_state_done
  ]

MapParam_state_00:                                ; preds = %MapParam_entry
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 2
  %7 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %6, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 4
  %9 = load i64, ptr %8, align 4
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %7, ptr %10, align 8
  %11 = call { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr @"map[_llgo_string]_llgo_int", ptr %5, ptr %10)
  %12 = extractvalue { ptr, i1 } %11, 0
  %13 = load i64, ptr %12, align 4
  %14 = extractvalue { ptr, i1 } %11, 1
  %15 = insertvalue { i64, i1 } undef, i64 %13, 0
  %16 = insertvalue { i64, i1 } %15, i1 %14, 1
  %17 = extractvalue { i64, i1 } %16, 0
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 3
  store i64 %17, ptr %18, align 4
  %19 = extractvalue { i64, i1 } %16, 1
  br i1 %19, label %MapParam_state_00_true, label %MapParam_state_00_false

MapParam_state_01:                                ; preds = %MapParam_state_00_false, %MapParam_entry
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 2
  %23 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %22, align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 3
  %25 = load i64, ptr %24, align 4
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 4
  %27 = load i64, ptr %26, align 4
  %28 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 -1)
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %29, 0
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %30, ptr %28, 1
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 6
  store i64 -1, ptr %32, align 4
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %33, align 1
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 6
  %35 = load i64, ptr %34, align 4
  %36 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %35, 1
  %37 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %36, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %37

MapParam_state_02:                                ; preds = %MapParam_state_00_true, %MapParam_entry
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 2
  %41 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %40, align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 3
  %43 = load i64, ptr %42, align 4
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 4
  %45 = load i64, ptr %44, align 4
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 5
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %MapParam_state_02_init, label %MapParam_state_02_poll

MapParam_state_03:                                ; preds = %MapParam_state_02_ready, %MapParam_entry
  %49 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 2
  %52 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %51, align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 3
  %54 = load i64, ptr %53, align 4
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 4
  %56 = load i64, ptr %55, align 4
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 4
  %58 = load i64, ptr %57, align 4
  %59 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %56)
  %60 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %60, 0
  %62 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %61, ptr %59, 1
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 6
  store i64 %58, ptr %63, align 4
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %64, align 1
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 6
  %66 = load i64, ptr %65, align 4
  %67 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %66, 1
  %68 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %67, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %68

MapParam_state_done:                              ; preds = %MapParam_entry
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 6
  %70 = load i64, ptr %69, align 4
  %71 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %70, 1
  %72 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %71, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %72

MapParam_state_unreach:                           ; preds = %MapParam_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_7:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

MapParam_state_00_true:                           ; preds = %MapParam_state_00
  %73 = extractvalue { i64, i1 } %16, 0
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 3
  store i64 %73, ptr %74, align 4
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %75, align 1
  br label %MapParam_state_02

MapParam_state_00_false:                          ; preds = %MapParam_state_00
  %76 = extractvalue { i64, i1 } %16, 0
  %77 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 3
  store i64 %76, ptr %77, align 4
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %78, align 1
  br label %MapParam_state_01

MapParam_state_02_init:                           ; preds = %MapParam_state_02
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 1
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 2
  %82 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %81, align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 3
  %84 = load i64, ptr %83, align 4
  %85 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 4
  %86 = load i64, ptr %85, align 4
  %87 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %84)
  store ptr %87, ptr %46, align 8
  br label %MapParam_state_02_poll

MapParam_state_02_poll:                           ; preds = %MapParam_state_02_init, %MapParam_state_02
  %88 = load ptr, ptr %46, align 8
  %89 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %88, ptr %1)
  %90 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %89, 0
  br i1 %90, label %MapParam_state_02_ready, label %MapParam_state_02_pending

MapParam_state_02_ready:                          ; preds = %MapParam_state_02_poll
  %91 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %89, 1
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 4
  store i64 %91, ptr %92, align 4
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 3
  store i64 %84, ptr %93, align 4
  store ptr null, ptr %46, align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %94, align 1
  br label %MapParam_state_03

MapParam_state_02_pending:                        ; preds = %MapParam_state_02_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
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

define ptr @"github.com/goplus/llgo/cl/_testpull/types.MapParam$Concrete"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 64)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %2, i32 0, i32 0
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %2, i32 0, i32 1
  store ptr %0, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %2, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %1, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %2, i32 0, i32 3
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %2, i32 0, i32 4
  store i64 0, ptr %7, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %2, i32 0, i32 5
  store ptr null, ptr %8, align 8
  ret ptr %2
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/types.MapParam"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.MapParam$Concrete"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.MapParam$State")
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, ptr %2, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5
}

define i64 @"github.com/goplus/llgo/cl/_testpull/types.(*PointerParam$State).Await"(ptr %0) {
_llgo_0:
  ret i64 undef
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/types.(*PointerParam$State).Poll"(ptr %0, ptr %1) {
PointerParam_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %PointerParam_state_unreach [
    i8 0, label %PointerParam_state_00
    i8 1, label %PointerParam_state_01
    i8 2, label %PointerParam_state_02
    i8 3, label %PointerParam_state_03
    i8 4, label %PointerParam_state_done
  ]

PointerParam_state_00:                            ; preds = %PointerParam_entry
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 3
  %9 = load i64, ptr %8, align 4
  %10 = icmp eq ptr %5, null
  br i1 %10, label %PointerParam_state_00_true, label %PointerParam_state_00_false

PointerParam_state_01:                            ; preds = %PointerParam_state_00_true, %PointerParam_entry
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 2
  %14 = load i64, ptr %13, align 4
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 3
  %16 = load i64, ptr %15, align 4
  %17 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 -1)
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %18, 0
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %19, ptr %17, 1
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 5
  store i64 -1, ptr %21, align 4
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %22, align 1
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 5
  %24 = load i64, ptr %23, align 4
  %25 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %24, 1
  %26 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %25, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %26

PointerParam_state_02:                            ; preds = %PointerParam_state_00_false, %PointerParam_entry
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 3
  %30 = load i64, ptr %29, align 4
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 4
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %PointerParam_state_02_init, label %PointerParam_state_02_poll

PointerParam_state_03:                            ; preds = %PointerParam_state_02_ready, %PointerParam_entry
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 3
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 3
  %39 = load i64, ptr %38, align 4
  %40 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %37)
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %41, 0
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %42, ptr %40, 1
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 5
  store i64 %39, ptr %44, align 4
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %45, align 1
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 5
  %47 = load i64, ptr %46, align 4
  %48 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %47, 1
  %49 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %48, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %49

PointerParam_state_done:                          ; preds = %PointerParam_entry
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 5
  %51 = load i64, ptr %50, align 4
  %52 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %51, 1
  %53 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %52, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %53

PointerParam_state_unreach:                       ; preds = %PointerParam_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_7:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

PointerParam_state_00_true:                       ; preds = %PointerParam_state_00
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %54, align 1
  br label %PointerParam_state_01

PointerParam_state_00_false:                      ; preds = %PointerParam_state_00
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %55, align 1
  br label %PointerParam_state_02

PointerParam_state_02_init:                       ; preds = %PointerParam_state_02
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 1
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 3
  %59 = load i64, ptr %58, align 4
  %60 = load i64, ptr %57, align 4
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 2
  store i64 %60, ptr %61, align 4
  %62 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %60)
  store ptr %62, ptr %31, align 8
  br label %PointerParam_state_02_poll

PointerParam_state_02_poll:                       ; preds = %PointerParam_state_02_init, %PointerParam_state_02
  %63 = load ptr, ptr %31, align 8
  %64 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %63, ptr %1)
  %65 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %64, 0
  br i1 %65, label %PointerParam_state_02_ready, label %PointerParam_state_02_pending

PointerParam_state_02_ready:                      ; preds = %PointerParam_state_02_poll
  %66 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %64, 1
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 3
  store i64 %66, ptr %67, align 4
  %68 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 2
  store i64 %60, ptr %68, align 4
  store ptr null, ptr %31, align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %69, align 1
  br label %PointerParam_state_03

PointerParam_state_02_pending:                    ; preds = %PointerParam_state_02_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/types.PointerParam$Concrete"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 48)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %1, i32 0, i32 1
  store ptr %0, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %1, i32 0, i32 3
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %1, i32 0, i32 4
  store ptr null, ptr %6, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/types.PointerParam"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.PointerParam$Concrete"(ptr %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.PointerParam$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define %"github.com/goplus/llgo/async.Result[int]" @"github.com/goplus/llgo/cl/_testpull/types.(*SafeDivide$State).Await"(ptr %0) {
_llgo_0:
  ret %"github.com/goplus/llgo/async.Result[int]" undef
}

define %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" @"github.com/goplus/llgo/cl/_testpull/types.(*SafeDivide$State).Poll"(ptr %0, ptr %1) {
SafeDivide_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %SafeDivide_state_unreach [
    i8 0, label %SafeDivide_state_00
    i8 1, label %SafeDivide_state_01
    i8 2, label %SafeDivide_state_02
    i8 3, label %SafeDivide_state_03
    i8 4, label %SafeDivide_state_done
  ]

SafeDivide_state_00:                              ; preds = %SafeDivide_entry
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 3
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 4
  %11 = load i64, ptr %10, align 4
  %12 = icmp eq i64 %7, 0
  br i1 %12, label %SafeDivide_state_00_true, label %SafeDivide_state_00_false

SafeDivide_state_01:                              ; preds = %SafeDivide_state_00_true, %SafeDivide_entry
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 1
  %14 = load i64, ptr %13, align 4
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 2
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 3
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 4
  %20 = load i64, ptr %19, align 4
  %21 = call %"github.com/goplus/llgo/async.Result[int]" @"github.com/goplus/llgo/async.Err[int]"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %22 = call ptr @"github.com/goplus/llgo/async.Return[github.com/goplus/llgo/async.Result[int]]"(%"github.com/goplus/llgo/async.Result[int]" %21)
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$JYl-RTkRbuhs_5E_B2SRSB6glH2MFQQrwsjoVoLKA1o", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]")
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %23, 0
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %24, ptr %22, 1
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 6
  store %"github.com/goplus/llgo/async.Result[int]" %21, ptr %26, align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %27, align 1
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 6
  %29 = load %"github.com/goplus/llgo/async.Result[int]", ptr %28, align 8
  %30 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" { i1 true, %"github.com/goplus/llgo/async.Result[int]" undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/async.Result[int]" %29, 1
  %31 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %30, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %31

SafeDivide_state_02:                              ; preds = %SafeDivide_state_00_false, %SafeDivide_entry
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 1
  %33 = load i64, ptr %32, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 2
  %35 = load i64, ptr %34, align 4
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 4
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 5
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %SafeDivide_state_02_init, label %SafeDivide_state_02_poll

SafeDivide_state_03:                              ; preds = %SafeDivide_state_02_ready, %SafeDivide_entry
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 1
  %42 = load i64, ptr %41, align 4
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 2
  %44 = load i64, ptr %43, align 4
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 4
  %46 = load i64, ptr %45, align 4
  %47 = call %"github.com/goplus/llgo/async.Result[int]" @"github.com/goplus/llgo/async.Ok[int]"(i64 %46)
  %48 = call ptr @"github.com/goplus/llgo/async.Return[github.com/goplus/llgo/async.Result[int]]"(%"github.com/goplus/llgo/async.Result[int]" %47)
  %49 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$JYl-RTkRbuhs_5E_B2SRSB6glH2MFQQrwsjoVoLKA1o", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]")
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %49, 0
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %50, ptr %48, 1
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 6
  store %"github.com/goplus/llgo/async.Result[int]" %47, ptr %52, align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %53, align 1
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 6
  %55 = load %"github.com/goplus/llgo/async.Result[int]", ptr %54, align 8
  %56 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" { i1 true, %"github.com/goplus/llgo/async.Result[int]" undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/async.Result[int]" %55, 1
  %57 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %56, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %57

SafeDivide_state_done:                            ; preds = %SafeDivide_entry
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 6
  %59 = load %"github.com/goplus/llgo/async.Result[int]", ptr %58, align 8
  %60 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" { i1 true, %"github.com/goplus/llgo/async.Result[int]" undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/async.Result[int]" %59, 1
  %61 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %60, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %61

SafeDivide_state_unreach:                         ; preds = %SafeDivide_entry
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" zeroinitializer

_llgo_7:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" zeroinitializer

SafeDivide_state_00_true:                         ; preds = %SafeDivide_state_00
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %62, align 1
  br label %SafeDivide_state_01

SafeDivide_state_00_false:                        ; preds = %SafeDivide_state_00
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %63, align 1
  br label %SafeDivide_state_02

SafeDivide_state_02_init:                         ; preds = %SafeDivide_state_02
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 1
  %65 = load i64, ptr %64, align 4
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 2
  %67 = load i64, ptr %66, align 4
  %68 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 4
  %69 = load i64, ptr %68, align 4
  %70 = sdiv i64 %65, %67
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 3
  store i64 %70, ptr %71, align 4
  %72 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %70)
  store ptr %72, ptr %38, align 8
  br label %SafeDivide_state_02_poll

SafeDivide_state_02_poll:                         ; preds = %SafeDivide_state_02_init, %SafeDivide_state_02
  %73 = load ptr, ptr %38, align 8
  %74 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %73, ptr %1)
  %75 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %74, 0
  br i1 %75, label %SafeDivide_state_02_ready, label %SafeDivide_state_02_pending

SafeDivide_state_02_ready:                        ; preds = %SafeDivide_state_02_poll
  %76 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %74, 1
  %77 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 4
  store i64 %76, ptr %77, align 4
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 3
  store i64 %70, ptr %78, align 4
  store ptr null, ptr %38, align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %79, align 1
  br label %SafeDivide_state_03

SafeDivide_state_02_pending:                      ; preds = %SafeDivide_state_02_poll
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$Concrete"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 72)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %2, i32 0, i32 0
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %2, i32 0, i32 1
  store i64 %0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %2, i32 0, i32 2
  store i64 %1, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %2, i32 0, i32 3
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %2, i32 0, i32 4
  store i64 0, ptr %7, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %2, i32 0, i32 5
  store ptr null, ptr %8, align 8
  ret ptr %2
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/types.SafeDivide"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$Concrete"(i64 %0, i64 %1)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$JYl-RTkRbuhs_5E_B2SRSB6glH2MFQQrwsjoVoLKA1o", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State")
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, ptr %2, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5
}

define i64 @"github.com/goplus/llgo/cl/_testpull/types.(*SliceParam$State).Await"(ptr %0) {
_llgo_0:
  ret i64 undef
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/types.(*SliceParam$State).Poll"(ptr %0, ptr %1) {
SliceParam_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %SliceParam_state_unreach [
    i8 0, label %SliceParam_state_00
    i8 1, label %SliceParam_state_01
    i8 2, label %SliceParam_state_02
    i8 3, label %SliceParam_state_03
    i8 4, label %SliceParam_state_04
    i8 5, label %SliceParam_state_done
  ]

SliceParam_state_00:                              ; preds = %SliceParam_entry
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 1
  %5 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %4, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 4
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 5
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 6
  %13 = load i1, ptr %12, align 1
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 7
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 8
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 9
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 10
  %21 = load i64, ptr %20, align 4
  %22 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, 1
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 3
  store i64 %22, ptr %23, align 4
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 7
  store i64 0, ptr %24, align 4
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 4
  store i64 -1, ptr %25, align 4
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 3
  store i64 %22, ptr %26, align 4
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %27, align 1
  br label %SliceParam_state_01

SliceParam_state_01:                              ; preds = %SliceParam_state_03, %SliceParam_state_00, %SliceParam_entry
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 1
  %29 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %28, align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 2
  %31 = load i64, ptr %30, align 4
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 3
  %33 = load i64, ptr %32, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 4
  %35 = load i64, ptr %34, align 4
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 7
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 8
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 9
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 10
  %43 = load i64, ptr %42, align 4
  %44 = add i64 %35, 1
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 5
  store i64 %44, ptr %45, align 4
  %46 = icmp slt i64 %44, %33
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 6
  store i1 %46, ptr %47, align 1
  br i1 %46, label %SliceParam_state_01_true, label %SliceParam_state_01_false

SliceParam_state_02:                              ; preds = %SliceParam_state_01_true, %SliceParam_entry
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 1
  %49 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %48, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 3
  %51 = load i64, ptr %50, align 4
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 4
  %53 = load i64, ptr %52, align 4
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 5
  %55 = load i64, ptr %54, align 4
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 6
  %57 = load i1, ptr %56, align 1
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 7
  %59 = load i64, ptr %58, align 4
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 10
  %61 = load i64, ptr %60, align 4
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 11
  %63 = load ptr, ptr %62, align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %SliceParam_state_02_init, label %SliceParam_state_02_poll

SliceParam_state_03:                              ; preds = %SliceParam_state_02_ready, %SliceParam_entry
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 1
  %66 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %65, align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 3
  %68 = load i64, ptr %67, align 4
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 4
  %70 = load i64, ptr %69, align 4
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 5
  %72 = load i64, ptr %71, align 4
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 6
  %74 = load i1, ptr %73, align 1
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 7
  %76 = load i64, ptr %75, align 4
  %77 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 10
  %78 = load i64, ptr %77, align 4
  %79 = add i64 %76, %78
  %80 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 7
  store i64 %79, ptr %80, align 4
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 5
  %82 = load i64, ptr %81, align 4
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 4
  store i64 %82, ptr %83, align 4
  %84 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %66, 0
  %85 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %66, 1
  %86 = icmp slt i64 %72, 0
  %87 = icmp sge i64 %72, %85
  %88 = or i1 %87, %86
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %88)
  %89 = getelementptr inbounds i64, ptr %84, i64 %72
  %90 = load i64, ptr %89, align 4
  %91 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 2
  store i64 %90, ptr %91, align 4
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 8
  store ptr %89, ptr %92, align 8
  %93 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %90)
  %94 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 9
  store ptr %93, ptr %94, align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 10
  store i64 %78, ptr %95, align 4
  %96 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %96, align 1
  br label %SliceParam_state_01

SliceParam_state_04:                              ; preds = %SliceParam_state_01_false, %SliceParam_entry
  %97 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 1
  %98 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %97, align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 2
  %100 = load i64, ptr %99, align 4
  %101 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 3
  %102 = load i64, ptr %101, align 4
  %103 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 4
  %104 = load i64, ptr %103, align 4
  %105 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 5
  %106 = load i64, ptr %105, align 4
  %107 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 6
  %108 = load i1, ptr %107, align 1
  %109 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 7
  %110 = load i64, ptr %109, align 4
  %111 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 8
  %112 = load ptr, ptr %111, align 8
  %113 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 9
  %114 = load ptr, ptr %113, align 8
  %115 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 10
  %116 = load i64, ptr %115, align 4
  %117 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 7
  %118 = load i64, ptr %117, align 4
  %119 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %110)
  %120 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %121 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %120, 0
  %122 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %121, ptr %119, 1
  %123 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 12
  store i64 %118, ptr %123, align 4
  %124 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %124, align 1
  %125 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 12
  %126 = load i64, ptr %125, align 4
  %127 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %126, 1
  %128 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %127, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %128

SliceParam_state_done:                            ; preds = %SliceParam_entry
  %129 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 12
  %130 = load i64, ptr %129, align 4
  %131 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %130, 1
  %132 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %131, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %132

SliceParam_state_unreach:                         ; preds = %SliceParam_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_8:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

SliceParam_state_01_true:                         ; preds = %SliceParam_state_01
  %133 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 5
  store i64 %44, ptr %133, align 4
  %134 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 6
  store i1 %46, ptr %134, align 1
  %135 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %135, align 1
  br label %SliceParam_state_02

SliceParam_state_01_false:                        ; preds = %SliceParam_state_01
  %136 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 5
  store i64 %44, ptr %136, align 4
  %137 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 6
  store i1 %46, ptr %137, align 1
  %138 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %138, align 1
  br label %SliceParam_state_04

SliceParam_state_02_init:                         ; preds = %SliceParam_state_02
  %139 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 1
  %140 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %139, align 8
  %141 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 3
  %142 = load i64, ptr %141, align 4
  %143 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 4
  %144 = load i64, ptr %143, align 4
  %145 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 5
  %146 = load i64, ptr %145, align 4
  %147 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 6
  %148 = load i1, ptr %147, align 1
  %149 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 7
  %150 = load i64, ptr %149, align 4
  %151 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 10
  %152 = load i64, ptr %151, align 4
  %153 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %140, 0
  %154 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %140, 1
  %155 = icmp slt i64 %146, 0
  %156 = icmp sge i64 %146, %154
  %157 = or i1 %156, %155
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %157)
  %158 = getelementptr inbounds i64, ptr %153, i64 %146
  %159 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 8
  store ptr %158, ptr %159, align 8
  %160 = load i64, ptr %158, align 4
  %161 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 2
  store i64 %160, ptr %161, align 4
  %162 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %160)
  %163 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 9
  store ptr %162, ptr %163, align 8
  store ptr %162, ptr %62, align 8
  br label %SliceParam_state_02_poll

SliceParam_state_02_poll:                         ; preds = %SliceParam_state_02_init, %SliceParam_state_02
  %164 = load ptr, ptr %62, align 8
  %165 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %164, ptr %1)
  %166 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %165, 0
  br i1 %166, label %SliceParam_state_02_ready, label %SliceParam_state_02_pending

SliceParam_state_02_ready:                        ; preds = %SliceParam_state_02_poll
  %167 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %165, 1
  %168 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 10
  store i64 %167, ptr %168, align 4
  %169 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 2
  store i64 %160, ptr %169, align 4
  %170 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 3
  store i64 %142, ptr %170, align 4
  %171 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 4
  store i64 %144, ptr %171, align 4
  %172 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 5
  store i64 %146, ptr %172, align 4
  %173 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 6
  store i1 %148, ptr %173, align 1
  %174 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 7
  store i64 %150, ptr %174, align 4
  %175 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 8
  store ptr %158, ptr %175, align 8
  %176 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 9
  store ptr %162, ptr %176, align 8
  store ptr null, ptr %62, align 8
  %177 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %177, align 1
  br label %SliceParam_state_03

SliceParam_state_02_pending:                      ; preds = %SliceParam_state_02_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

define ptr @"github.com/goplus/llgo/cl/_testpull/types.SliceParam$Concrete"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 120)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %1, i32 0, i32 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %1, i32 0, i32 3
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %1, i32 0, i32 4
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %1, i32 0, i32 5
  store i64 0, ptr %7, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %1, i32 0, i32 6
  store i1 false, ptr %8, align 1
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %1, i32 0, i32 7
  store i64 0, ptr %9, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %1, i32 0, i32 8
  store ptr null, ptr %10, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %1, i32 0, i32 9
  store ptr null, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %1, i32 0, i32 10
  store i64 0, ptr %12, align 4
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %1, i32 0, i32 11
  store ptr null, ptr %13, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/types.SliceParam"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.SliceParam$Concrete"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.SliceParam$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define i64 @"github.com/goplus/llgo/cl/_testpull/types.(*StringParam$State).Await"(ptr %0) {
_llgo_0:
  ret i64 undef
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/types.(*StringParam$State).Poll"(ptr %0, ptr %1) {
StringParam_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %StringParam_state_unreach [
    i8 0, label %StringParam_state_00
    i8 1, label %StringParam_state_01
    i8 2, label %StringParam_state_done
  ]

StringParam_state_00:                             ; preds = %StringParam_entry
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 1
  %5 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %4, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %StringParam_state_00_init, label %StringParam_state_00_poll

StringParam_state_01:                             ; preds = %StringParam_state_00_ready, %StringParam_entry
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 1
  %12 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %11, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 2
  %14 = load i64, ptr %13, align 4
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 2
  %16 = load i64, ptr %15, align 4
  %17 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %14)
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %18, 0
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %19, ptr %17, 1
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 4
  store i64 %16, ptr %21, align 4
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %22, align 1
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 4
  %24 = load i64, ptr %23, align 4
  %25 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %24, 1
  %26 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %25, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %26

StringParam_state_done:                           ; preds = %StringParam_entry
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 4
  %28 = load i64, ptr %27, align 4
  %29 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %28, 1
  %30 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %29, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %30

StringParam_state_unreach:                        ; preds = %StringParam_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_5:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

StringParam_state_00_init:                        ; preds = %StringParam_state_00
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 1
  %32 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %31, align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 2
  %34 = load i64, ptr %33, align 4
  %35 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %32, 1
  %36 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %35)
  store ptr %36, ptr %8, align 8
  br label %StringParam_state_00_poll

StringParam_state_00_poll:                        ; preds = %StringParam_state_00_init, %StringParam_state_00
  %37 = load ptr, ptr %8, align 8
  %38 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %37, ptr %1)
  %39 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %38, 0
  br i1 %39, label %StringParam_state_00_ready, label %StringParam_state_00_pending

StringParam_state_00_ready:                       ; preds = %StringParam_state_00_poll
  %40 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %38, 1
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 2
  store i64 %40, ptr %41, align 4
  store ptr null, ptr %8, align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %42, align 1
  br label %StringParam_state_01

StringParam_state_00_pending:                     ; preds = %StringParam_state_00_poll
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/types.StringParam$Concrete"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 48)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %1, i32 0, i32 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %0, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/types.StringParam"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StringParam$Concrete"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.StringParam$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define i64 @"github.com/goplus/llgo/cl/_testpull/types.(*StructFieldAccess$State).Await"(ptr %0) {
_llgo_0:
  ret i64 undef
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/types.(*StructFieldAccess$State).Poll"(ptr %0, ptr %1) {
StructFieldAccess_entry:
  %2 = alloca %"github.com/goplus/llgo/cl/_testpull/types.Point", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 0
  %4 = load i8, ptr %3, align 1
  switch i8 %4, label %StructFieldAccess_state_unreach [
    i8 0, label %StructFieldAccess_state_00
    i8 1, label %StructFieldAccess_state_01
    i8 2, label %StructFieldAccess_state_02
    i8 3, label %StructFieldAccess_state_done
  ]

StructFieldAccess_state_00:                       ; preds = %StructFieldAccess_entry
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 2
  %6 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %5, align 4
  store %"github.com/goplus/llgo/cl/_testpull/types.Point" %6, ptr %2, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 1
  %8 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %7, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 4
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 6
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 7
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %StructFieldAccess_state_00_init, label %StructFieldAccess_state_00_poll

StructFieldAccess_state_01:                       ; preds = %StructFieldAccess_state_00_ready, %StructFieldAccess_entry
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 2
  %17 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %16, align 4
  store %"github.com/goplus/llgo/cl/_testpull/types.Point" %17, ptr %2, align 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 1
  %19 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %18, align 4
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 4
  %21 = load i64, ptr %20, align 4
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 6
  %23 = load i64, ptr %22, align 4
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 8
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %StructFieldAccess_state_01_init, label %StructFieldAccess_state_01_poll

StructFieldAccess_state_02:                       ; preds = %StructFieldAccess_state_01_ready, %StructFieldAccess_entry
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 2
  %28 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %27, align 4
  store %"github.com/goplus/llgo/cl/_testpull/types.Point" %28, ptr %2, align 4
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 1
  %30 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %29, align 4
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 4
  %32 = load i64, ptr %31, align 4
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 6
  %34 = load i64, ptr %33, align 4
  %35 = add i64 %32, %34
  %36 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %35)
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %37, 0
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %38, ptr %36, 1
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 9
  store i64 %35, ptr %40, align 4
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 2
  %42 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %2, align 4
  store %"github.com/goplus/llgo/cl/_testpull/types.Point" %42, ptr %41, align 4
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %43, align 1
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 9
  %45 = load i64, ptr %44, align 4
  %46 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %45, 1
  %47 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %46, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %47

StructFieldAccess_state_done:                     ; preds = %StructFieldAccess_entry
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 9
  %49 = load i64, ptr %48, align 4
  %50 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %49, 1
  %51 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %50, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %51

StructFieldAccess_state_unreach:                  ; preds = %StructFieldAccess_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_6:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

StructFieldAccess_state_00_init:                  ; preds = %StructFieldAccess_state_00
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 1
  %53 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %52, align 4
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 2
  %55 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %54, align 4
  store %"github.com/goplus/llgo/cl/_testpull/types.Point" %55, ptr %2, align 4
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 4
  %57 = load i64, ptr %56, align 4
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 6
  %59 = load i64, ptr %58, align 4
  store %"github.com/goplus/llgo/cl/_testpull/types.Point" %53, ptr %2, align 4
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %2, i32 0, i32 0
  %61 = load i64, ptr %60, align 4
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 3
  store i64 %61, ptr %62, align 4
  %63 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %61)
  store ptr %63, ptr %13, align 8
  br label %StructFieldAccess_state_00_poll

StructFieldAccess_state_00_poll:                  ; preds = %StructFieldAccess_state_00_init, %StructFieldAccess_state_00
  %64 = load ptr, ptr %13, align 8
  %65 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %64, ptr %1)
  %66 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %65, 0
  br i1 %66, label %StructFieldAccess_state_00_ready, label %StructFieldAccess_state_00_pending

StructFieldAccess_state_00_ready:                 ; preds = %StructFieldAccess_state_00_poll
  %67 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %65, 1
  %68 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 4
  store i64 %67, ptr %68, align 4
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 3
  store i64 %61, ptr %69, align 4
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 5
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %2, i32 0, i32 1
  %72 = load i64, ptr %71, align 4
  store i64 %72, ptr %70, align 4
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 6
  store i64 %59, ptr %73, align 4
  store ptr null, ptr %13, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 2
  %75 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %2, align 4
  store %"github.com/goplus/llgo/cl/_testpull/types.Point" %75, ptr %74, align 4
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %76, align 1
  br label %StructFieldAccess_state_01

StructFieldAccess_state_00_pending:               ; preds = %StructFieldAccess_state_00_poll
  %77 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 2
  %78 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %2, align 4
  store %"github.com/goplus/llgo/cl/_testpull/types.Point" %78, ptr %77, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

StructFieldAccess_state_01_init:                  ; preds = %StructFieldAccess_state_01
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 1
  %80 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %79, align 4
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 2
  %82 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %81, align 4
  store %"github.com/goplus/llgo/cl/_testpull/types.Point" %82, ptr %2, align 4
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 4
  %84 = load i64, ptr %83, align 4
  %85 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 6
  %86 = load i64, ptr %85, align 4
  %87 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %2, i32 0, i32 1
  %88 = load i64, ptr %87, align 4
  %89 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 5
  store i64 %88, ptr %89, align 4
  %90 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %88)
  store ptr %90, ptr %24, align 8
  br label %StructFieldAccess_state_01_poll

StructFieldAccess_state_01_poll:                  ; preds = %StructFieldAccess_state_01_init, %StructFieldAccess_state_01
  %91 = load ptr, ptr %24, align 8
  %92 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %91, ptr %1)
  %93 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %92, 0
  br i1 %93, label %StructFieldAccess_state_01_ready, label %StructFieldAccess_state_01_pending

StructFieldAccess_state_01_ready:                 ; preds = %StructFieldAccess_state_01_poll
  %94 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %92, 1
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 6
  store i64 %94, ptr %95, align 4
  %96 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 3
  %97 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %2, i32 0, i32 0
  %98 = load i64, ptr %97, align 4
  store i64 %98, ptr %96, align 4
  %99 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 4
  store i64 %84, ptr %99, align 4
  %100 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 5
  store i64 %88, ptr %100, align 4
  store ptr null, ptr %24, align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 2
  %102 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %2, align 4
  store %"github.com/goplus/llgo/cl/_testpull/types.Point" %102, ptr %101, align 4
  %103 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %103, align 1
  br label %StructFieldAccess_state_02

StructFieldAccess_state_01_pending:               ; preds = %StructFieldAccess_state_01_poll
  %104 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 2
  %105 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %2, align 4
  store %"github.com/goplus/llgo/cl/_testpull/types.Point" %105, ptr %104, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$Concrete"(%"github.com/goplus/llgo/cl/_testpull/types.Point" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 96)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %1, i32 0, i32 1
  store %"github.com/goplus/llgo/cl/_testpull/types.Point" %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %1, i32 0, i32 2
  store { i64, i64 } zeroinitializer, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %1, i32 0, i32 3
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %1, i32 0, i32 4
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %1, i32 0, i32 5
  store i64 0, ptr %7, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %1, i32 0, i32 6
  store i64 0, ptr %8, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %1, i32 0, i32 7
  store ptr null, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %1, i32 0, i32 8
  store ptr null, ptr %10, align 8
  ret ptr %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess"(%"github.com/goplus/llgo/cl/_testpull/types.Point" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$Concrete"(%"github.com/goplus/llgo/cl/_testpull/types.Point" %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$7f5uMumaCY5YvN8nAe4LstMjKIincDo_4fAZYbFMlbI", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define void @"github.com/goplus/llgo/cl/_testpull/types.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testpull/types.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testpull/types.init$guard", align 1
  call void @"github.com/goplus/llgo/async.init"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define linkonce ptr @"github.com/goplus/llgo/async.Async[int]"({ ptr, ptr } %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %1, i32 0, i32 0
  store { ptr, ptr } %0, ptr %2, align 8
  ret ptr %1
}

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

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

define linkonce %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" @"github.com/goplus/llgo/async.Ready[github.com/goplus/llgo/async.Result[int]]"(%"github.com/goplus/llgo/async.Result[int]" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 48, i1 false)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", ptr %1, i32 0, i32 0
  %3 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", ptr %1, i32 0, i32 1
  store i1 true, ptr %2, align 1
  store %"github.com/goplus/llgo/async.Result[int]" %0, ptr %3, align 8
  %4 = load %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", ptr %1, align 8
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/async.init"()

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
