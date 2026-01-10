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
%"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" = type { i1, %"github.com/goplus/llgo/async.Tuple2[int,int]", %"github.com/goplus/llgo/runtime/internal/runtime.eface" }
%"github.com/goplus/llgo/async.Tuple2[int,int]" = type { i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testpull/types.Divmod$State" = type { i8, i64, i64, i64, i64, i64, i64, ptr, ptr, %"github.com/goplus/llgo/async.Tuple2[int,int]" }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/async.Poll[int]" = type { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.eface" }
%"github.com/goplus/llgo/async.AsyncFuture[int]" = type { { ptr, ptr }, i1, i1, i64 }
%"github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]" = type { %"github.com/goplus/llgo/async.Tuple2[int,int]" }
%"github.com/goplus/llgo/async.Context" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }
%"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State" = type { i8, i64, i64, i64, i64, ptr, ptr, %"github.com/goplus/llgo/async.Tuple2[int,int]" }
%"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" = type { i1, %"github.com/goplus/llgo/async.Result[int]", %"github.com/goplus/llgo/runtime/internal/runtime.eface" }
%"github.com/goplus/llgo/async.Result[int]" = type { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }
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

@0 = private unnamed_addr constant [6 x i8] c"Divmod", align 1
@1 = private unnamed_addr constant [8 x i8] c"dispatch", align 1
@2 = private unnamed_addr constant [5 x i8] c"enter", align 1
@3 = private unnamed_addr constant [7 x i8] c"pending", align 1
@4 = private unnamed_addr constant [5 x i8] c"ready", align 1
@"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1221110233, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 64 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 5 }, ptr @"_llgo_func$nToCCYBH4T19EsKF-IRXpBfaubZ2qtPBnGpgE2882a4", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]).Await", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 4 }, ptr @"_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]).Poll", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]).Poll" }] }, align 8
@5 = private unnamed_addr constant [64 x i8] c"async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]", align 1
@"_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 -1406013884, i8 13, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 64 }, ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$Nm6lm2j6ef0PShmQPMibOvRBBa-SfmlevY-m5BSN4qU$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@6 = private unnamed_addr constant [28 x i8] c"github.com/goplus/llgo/async", align 1
@7 = private unnamed_addr constant [5 x i8] c"value", align 1
@"_llgo_github.com/goplus/llgo/async.Tuple2[int,int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 1215525453, i8 13, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Tuple2[int,int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 21 }, ptr @"*_llgo_github.com/goplus/llgo/async.Tuple2[int,int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$dEz5S6rx1Cms9pht3bLxWSZsAGFwnjyc_2jiUkBMS5w$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 3 }, ptr @"_llgo_func$x17VVIetzGwbk32tQOJbqcANRLHkKpNHRXr8XcFcmjM", ptr @"github.com/goplus/llgo/async.(*Tuple2[int,int]).Get", ptr @"github.com/goplus/llgo/async.Tuple2[int,int].Get" }] }, align 8
@8 = private unnamed_addr constant [21 x i8] c"async.Tuple2[int,int]", align 1
@"*_llgo_github.com/goplus/llgo/async.Tuple2[int,int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1453173179, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 21 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Tuple2[int,int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 3 }, ptr @"_llgo_func$x17VVIetzGwbk32tQOJbqcANRLHkKpNHRXr8XcFcmjM", ptr @"github.com/goplus/llgo/async.(*Tuple2[int,int]).Get", ptr @"github.com/goplus/llgo/async.(*Tuple2[int,int]).Get" }] }, align 8
@9 = private unnamed_addr constant [3 x i8] c"Get", align 1
@"_llgo_func$x17VVIetzGwbk32tQOJbqcANRLHkKpNHRXr8XcFcmjM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2055817247, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 17 }, ptr @"*_llgo_func$x17VVIetzGwbk32tQOJbqcANRLHkKpNHRXr8XcFcmjM" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$x17VVIetzGwbk32tQOJbqcANRLHkKpNHRXr8XcFcmjM$out", i64 2, i64 2 } }, align 8
@10 = private unnamed_addr constant [17 x i8] c"func() (int, int)", align 1
@"*_llgo_func$x17VVIetzGwbk32tQOJbqcANRLHkKpNHRXr8XcFcmjM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 659081009, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 17 }, ptr null }, ptr @"_llgo_func$x17VVIetzGwbk32tQOJbqcANRLHkKpNHRXr8XcFcmjM" }, align 8
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 3 }, ptr @"*_llgo_int" }, align 8
@11 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"_llgo_func$x17VVIetzGwbk32tQOJbqcANRLHkKpNHRXr8XcFcmjM$out" = weak_odr constant [2 x ptr] [ptr @_llgo_int, ptr @_llgo_int], align 8
@12 = private unnamed_addr constant [2 x i8] c"V1", align 1
@13 = private unnamed_addr constant [2 x i8] c"V2", align 1
@"_llgo_struct$dEz5S6rx1Cms9pht3bLxWSZsAGFwnjyc_2jiUkBMS5w$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 2 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 2 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$Nm6lm2j6ef0PShmQPMibOvRBBa-SfmlevY-m5BSN4qU$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/async.Tuple2[int,int]", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@14 = private unnamed_addr constant [5 x i8] c"Await", align 1
@"_llgo_func$nToCCYBH4T19EsKF-IRXpBfaubZ2qtPBnGpgE2882a4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1607562537, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 28 }, ptr @"*_llgo_func$nToCCYBH4T19EsKF-IRXpBfaubZ2qtPBnGpgE2882a4" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$nToCCYBH4T19EsKF-IRXpBfaubZ2qtPBnGpgE2882a4$out", i64 1, i64 1 } }, align 8
@15 = private unnamed_addr constant [28 x i8] c"func() async.Tuple2[int,int]", align 1
@"*_llgo_func$nToCCYBH4T19EsKF-IRXpBfaubZ2qtPBnGpgE2882a4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 161356626, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 28 }, ptr null }, ptr @"_llgo_func$nToCCYBH4T19EsKF-IRXpBfaubZ2qtPBnGpgE2882a4" }, align 8
@"_llgo_func$nToCCYBH4T19EsKF-IRXpBfaubZ2qtPBnGpgE2882a4$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Tuple2[int,int]"], align 8
@16 = private unnamed_addr constant [4 x i8] c"Poll", align 1
@"_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 454956163, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 78 }, ptr @"*_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU$out", i64 1, i64 1 } }, align 8
@17 = private unnamed_addr constant [78 x i8] c"func(*async.Context) async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", align 1
@"*_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 220446337, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 78 }, ptr null }, ptr @"_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU" }, align 8
@"*_llgo_github.com/goplus/llgo/async.Context" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -808118033, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 13 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Context" }, align 8
@18 = private unnamed_addr constant [13 x i8] c"async.Context", align 1
@"_llgo_github.com/goplus/llgo/async.Context" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 0, i32 29200871, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Context" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 13 }, ptr @"*_llgo_github.com/goplus/llgo/async.Context" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$Re9uCNpaPdvqJtnZYej5NZ8aMgZjb-_ftN8ogfRqy78$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@19 = private unnamed_addr constant [5 x i8] c"Waker", align 1
@"_llgo_github.com/goplus/llgo/async.Waker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -2133419533, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 11 }, ptr @"*_llgo_github.com/goplus/llgo/async.Waker" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$5udCHZ6xl-fBE2F9apjWV2qrxMb4_QYfwdoy0QD1D8c$imethods", i64 1, i64 1 } }, align 8
@20 = private unnamed_addr constant [11 x i8] c"async.Waker", align 1
@"*_llgo_github.com/goplus/llgo/async.Waker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 504672852, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 11 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Waker" }, align 8
@21 = private unnamed_addr constant [41 x i8] c"github.com/goplus/llgo/cl/_testpull/types", align 1
@22 = private unnamed_addr constant [4 x i8] c"Wake", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@23 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@"_llgo_iface$5udCHZ6xl-fBE2F9apjWV2qrxMb4_QYfwdoy0QD1D8c$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 4 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }], align 8
@24 = private unnamed_addr constant [8 x i8] c"hasWaker", align 1
@_llgo_bool = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 554183389, i8 12, i8 1, i8 1, i8 33, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 4 }, ptr @"*_llgo_bool" }, align 8
@25 = private unnamed_addr constant [4 x i8] c"bool", align 1
@"*_llgo_bool" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1896950390, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 4 }, ptr null }, ptr @_llgo_bool }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$Re9uCNpaPdvqJtnZYej5NZ8aMgZjb-_ftN8ogfRqy78$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/async.Waker", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 8 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/async.Context"], align 8
@"_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 40, i64 40, i32 97944769, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 57 }, ptr @"*_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$X3pV_NpeB76qE-5DoDuuwD4_ZYrxCpyTVVq7NkDM6NE$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).Error", ptr @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]].Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).HasError", ptr @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]].HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).IsReady", ptr @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]].IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @"_llgo_func$nToCCYBH4T19EsKF-IRXpBfaubZ2qtPBnGpgE2882a4", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).Value", ptr @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]].Value" }] }, align 8
@26 = private unnamed_addr constant [57 x i8] c"async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", align 1
@"*_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1490419624, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 57 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).Error", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).HasError", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).IsReady", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @"_llgo_func$nToCCYBH4T19EsKF-IRXpBfaubZ2qtPBnGpgE2882a4", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).Value", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).Value" }] }, align 8
@27 = private unnamed_addr constant [5 x i8] c"Error", align 1
@"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1398528794, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 19 }, ptr @"*_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8$out", i64 1, i64 1 } }, align 8
@28 = private unnamed_addr constant [19 x i8] c"func() interface {}", align 1
@"*_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1160547289, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 19 }, ptr null }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" }, align 8
@_llgo_any = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1376530322, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 12 }, ptr @"*_llgo_any" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@29 = private unnamed_addr constant [12 x i8] c"interface {}", align 1
@"*_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1741196194, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 12 }, ptr null }, ptr @_llgo_any }, align 8
@"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8$out" = weak_odr constant [1 x ptr] [ptr @_llgo_any], align 8
@30 = private unnamed_addr constant [8 x i8] c"HasError", align 1
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -541022001, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 11 }, ptr @"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out", i64 1, i64 1 } }, align 8
@31 = private unnamed_addr constant [11 x i8] c"func() bool", align 1
@"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -367308996, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 11 }, ptr null }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, align 8
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out" = weak_odr constant [1 x ptr] [ptr @_llgo_bool], align 8
@32 = private unnamed_addr constant [7 x i8] c"IsReady", align 1
@33 = private unnamed_addr constant [5 x i8] c"Value", align 1
@34 = private unnamed_addr constant [3 x i8] c"err", align 1
@"github.com/goplus/llgo/cl/_testpull/types.struct$X3pV_NpeB76qE-5DoDuuwD4_ZYrxCpyTVVq7NkDM6NE$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @_llgo_bool, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/async.Tuple2[int,int]", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 3 }, ptr @_llgo_any, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]"], align 8
@"_llgo_iface$UF-K7t4EfagXSm-WTaHawm21nnTgf-85MVOaez9AbyQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1918491914, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 92 }, ptr @"*_llgo_iface$UF-K7t4EfagXSm-WTaHawm21nnTgf-85MVOaez9AbyQ" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$UF-K7t4EfagXSm-WTaHawm21nnTgf-85MVOaez9AbyQ$imethods", i64 1, i64 1 } }, align 8
@35 = private unnamed_addr constant [92 x i8] c"interface { Poll(*async.Context) async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]] }", align 1
@"*_llgo_iface$UF-K7t4EfagXSm-WTaHawm21nnTgf-85MVOaez9AbyQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1236006575, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 92 }, ptr null }, ptr @"_llgo_iface$UF-K7t4EfagXSm-WTaHawm21nnTgf-85MVOaez9AbyQ" }, align 8
@"_llgo_iface$UF-K7t4EfagXSm-WTaHawm21nnTgf-85MVOaez9AbyQ$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 4 }, ptr @"_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU" }], align 8
@36 = private unnamed_addr constant [4 x i8] c"done", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/types.Divmod$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1135343364, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 18 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.Divmod$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 4 }, ptr @"_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*Divmod$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*Divmod$State).Poll" }] }, align 8
@37 = private unnamed_addr constant [18 x i8] c"types.Divmod$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/types.Divmod$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 88, i64 64, i32 -429288470, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.Divmod$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 18 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.Divmod$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$CtX3aegFxXLvP2SyYdiPQP0fuxkPEYWSVYpE1_i3gbY$fields", i64 10, i64 10 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@38 = private unnamed_addr constant [5 x i8] c"state", align 1
@_llgo_int8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 1444672578, i8 12, i8 1, i8 1, i8 35, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 4 }, ptr @"*_llgo_int8" }, align 8
@39 = private unnamed_addr constant [4 x i8] c"int8", align 1
@"*_llgo_int8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1399554408, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 4 }, ptr null }, ptr @_llgo_int8 }, align 8
@40 = private unnamed_addr constant [6 x i8] c"param0", align 1
@41 = private unnamed_addr constant [6 x i8] c"param1", align 1
@42 = private unnamed_addr constant [4 x i8] c"var0", align 1
@43 = private unnamed_addr constant [4 x i8] c"var1", align 1
@44 = private unnamed_addr constant [4 x i8] c"var2", align 1
@45 = private unnamed_addr constant [4 x i8] c"var3", align 1
@46 = private unnamed_addr constant [4 x i8] c"sub0", align 1
@"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 964362133, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll" }] }, align 8
@47 = private unnamed_addr constant [22 x i8] c"async.AsyncFuture[int]", align 1
@"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 0, i32 1769159236, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@48 = private unnamed_addr constant [2 x i8] c"fn", align 1
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1213993089, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 87 }, ptr @"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields", i64 2, i64 2 } }, align 8
@49 = private unnamed_addr constant [87 x i8] c"struct { $f func(struct { $f func(int); $data unsafe.Pointer }); $data unsafe.Pointer }", align 1
@"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1666834553, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 87 }, ptr null }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, align 8
@50 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2009615728, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 51 }, ptr @"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@51 = private unnamed_addr constant [51 x i8] c"func(struct { $f func(int); $data unsafe.Pointer })", align 1
@"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1512208703, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 51 }, ptr null }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1556934939, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 45 }, ptr @"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields", i64 2, i64 2 } }, align 8
@52 = private unnamed_addr constant [45 x i8] c"struct { $f func(int); $data unsafe.Pointer }", align 1
@"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 364872269, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 45 }, ptr null }, ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -637187458, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 9 }, ptr @"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@53 = private unnamed_addr constant [9 x i8] c"func(int)", align 1
@"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 735356155, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 9 }, ptr null }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@54 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@55 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 2 }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM"], align 8
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 2 }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@56 = private unnamed_addr constant [7 x i8] c"started", align 1
@"github.com/goplus/llgo/cl/_testpull/types.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 2 }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 7 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @_llgo_bool, i64 17, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2131144854, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 10 }, ptr @"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out", i64 1, i64 1 } }, align 8
@57 = private unnamed_addr constant [10 x i8] c"func() int", align 1
@"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1805835775, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 10 }, ptr null }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1655717054, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 36 }, ptr @"*_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$out", i64 1, i64 1 } }, align 8
@58 = private unnamed_addr constant [36 x i8] c"func(*async.Context) async.Poll[int]", align 1
@"*_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -62824656, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 36 }, ptr null }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }, align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/async.Context"], align 8
@"_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 801809575, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 15 }, ptr @"*_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$M9E5HRdqyc11Zqvq07yhy6frK_fAyRGIc35bZKl9nrs$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error", ptr @"github.com/goplus/llgo/async.Poll[int].Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError", ptr @"github.com/goplus/llgo/async.Poll[int].HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.Poll[int].IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.Poll[int].Value" }] }, align 8
@59 = private unnamed_addr constant [15 x i8] c"async.Poll[int]", align 1
@"*_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -920093333, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 15 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value" }] }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$M9E5HRdqyc11Zqvq07yhy6frK_fAyRGIc35bZKl9nrs$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @_llgo_bool, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 3 }, ptr @_llgo_any, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]"], align 8
@60 = private unnamed_addr constant [4 x i8] c"sub1", align 1
@61 = private unnamed_addr constant [11 x i8] c"resultValue", align 1
@"github.com/goplus/llgo/cl/_testpull/types.struct$CtX3aegFxXLvP2SyYdiPQP0fuxkPEYWSVYpE1_i3gbY$fields" = weak_odr constant [10 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 6 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 11 }, ptr @"_llgo_github.com/goplus/llgo/async.Tuple2[int,int]", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@62 = private unnamed_addr constant [9 x i8] c"GetMinMax", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 66007552, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 21 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 4 }, ptr @"_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*GetMinMax$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*GetMinMax$State).Poll" }] }, align 8
@63 = private unnamed_addr constant [21 x i8] c"types.GetMinMax$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 72, i64 48, i32 -386873785, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 21 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$myBcW0XAiS4Bmhqhjqr-rt4UJuToIDwhdPP4bGeGKWw$fields", i64 8, i64 8 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$myBcW0XAiS4Bmhqhjqr-rt4UJuToIDwhdPP4bGeGKWw$fields" = weak_odr constant [8 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 6 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 11 }, ptr @"_llgo_github.com/goplus/llgo/async.Tuple2[int,int]", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@64 = private unnamed_addr constant [15 x i8] c"LookupAndDouble", align 1
@"map[_llgo_string]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1641501154, i8 0, i8 8, i8 8, i8 53, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 14 }, ptr @"*map[_llgo_string]_llgo_int" }, ptr @_llgo_string, ptr @_llgo_int, ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc", { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehash", ptr @_llgo_string }, i8 16, i8 8, i16 208, i32 12 }, align 8
@65 = private unnamed_addr constant [14 x i8] c"map[string]int", align 1
@"*map[_llgo_string]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 762774621, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 14 }, ptr null }, ptr @"map[_llgo_string]_llgo_int" }, align 8
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 6 }, ptr @"*_llgo_string" }, align 8
@66 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 208, i64 208, i32 -2085301039, i8 0, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 82 }, ptr @"*github.com/goplus/llgo/cl/_testpull/types.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc$fields", i64 4, i64 4 } }, align 8
@67 = private unnamed_addr constant [82 x i8] c"struct { topbits [8]uint8; keys [8]string; elems [8]int; overflow unsafe.Pointer }", align 1
@"*github.com/goplus/llgo/cl/_testpull/types.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 3417020, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 82 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" }, align 8
@68 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@"[8]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 307038632, i8 8, i8 1, i8 1, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_uint8" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr @"*[8]_llgo_uint8" }, ptr @_llgo_uint8, ptr @"[]_llgo_uint8", i64 8 }, align 8
@69 = private unnamed_addr constant [8 x i8] c"[8]uint8", align 1
@"*[8]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -566230779, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr null }, ptr @"[8]_llgo_uint8" }, align 8
@_llgo_uint8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 269156761, i8 12, i8 1, i8 1, i8 40, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 5 }, ptr @"*_llgo_uint8" }, align 8
@70 = private unnamed_addr constant [5 x i8] c"uint8", align 1
@"*_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1277858201, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 5 }, ptr null }, ptr @_llgo_uint8 }, align 8
@"[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 370346748, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 7 }, ptr @"*[]_llgo_uint8" }, ptr @_llgo_uint8 }, align 8
@71 = private unnamed_addr constant [7 x i8] c"[]uint8", align 1
@"*[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2143776929, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 7 }, ptr null }, ptr @"[]_llgo_uint8" }, align 8
@72 = private unnamed_addr constant [4 x i8] c"keys", align 1
@"[8]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 128, i64 120, i32 460245566, i8 0, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_string" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 9 }, ptr @"*[8]_llgo_string" }, ptr @_llgo_string, ptr @"[]_llgo_string", i64 8 }, align 8
@73 = private unnamed_addr constant [9 x i8] c"[8]string", align 1
@"*[8]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 368026044, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 9 }, ptr null }, ptr @"[8]_llgo_string" }, align 8
@"[]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 608974920, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 8 }, ptr @"*[]_llgo_string" }, ptr @_llgo_string }, align 8
@74 = private unnamed_addr constant [8 x i8] c"[]string", align 1
@"*[]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -157880218, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 8 }, ptr null }, ptr @"[]_llgo_string" }, align 8
@75 = private unnamed_addr constant [5 x i8] c"elems", align 1
@"[8]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 0, i32 -1310855284, i8 8, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_int" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 6 }, ptr @"*[8]_llgo_int" }, ptr @_llgo_int, ptr @"[]_llgo_int", i64 8 }, align 8
@76 = private unnamed_addr constant [6 x i8] c"[8]int", align 1
@"*[8]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1841254256, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 6 }, ptr null }, ptr @"[8]_llgo_int" }, align 8
@"[]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -1129561019, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 5 }, ptr @"*[]_llgo_int" }, ptr @_llgo_int }, align 8
@77 = private unnamed_addr constant [5 x i8] c"[]int", align 1
@"*[]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1428175521, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 5 }, ptr null }, ptr @"[]_llgo_int" }, align 8
@78 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@"github.com/goplus/llgo/cl/_testpull/types.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 7 }, ptr @"[8]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 4 }, ptr @"[8]_llgo_string", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 5 }, ptr @"[8]_llgo_int", i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 8 }, ptr @_llgo_Pointer, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1485110546, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 59 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 5 }, ptr @"_llgo_func$18IbIdsW5s12z12VYvKfPxtB_5lqm5yDNtFMb3Hjozw", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[github.com/goplus/llgo/async.Result[int]]).Await", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[github.com/goplus/llgo/async.Result[int]]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 4 }, ptr @"_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[github.com/goplus/llgo/async.Result[int]]).Poll", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[github.com/goplus/llgo/async.Result[int]]).Poll" }] }, align 8
@79 = private unnamed_addr constant [59 x i8] c"async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]", align 1
@"_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 24, i32 504401203, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 59 }, ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$a2kIjmWEj4soAG8ikWLa-WCoYk4eoItgOcUmPZ-eQNY$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"_llgo_github.com/goplus/llgo/async.Result[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 24, i32 411841992, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Result[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 17 }, ptr @"*_llgo_github.com/goplus/llgo/async.Result[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$oLcYhpB3wDWLnk5tkoUFCV4RjUr6h9SZHyPCuMxeWiQ$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 5 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Result[int]).IsErr", ptr @"github.com/goplus/llgo/async.Result[int].IsErr" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 4 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Result[int]).IsOk", ptr @"github.com/goplus/llgo/async.Result[int].IsOk" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Result[int]).Unwrap", ptr @"github.com/goplus/llgo/async.Result[int].Unwrap" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @84, i64 8 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr @"github.com/goplus/llgo/async.(*Result[int]).UnwrapOr", ptr @"github.com/goplus/llgo/async.Result[int].UnwrapOr" }] }, align 8
@80 = private unnamed_addr constant [17 x i8] c"async.Result[int]", align 1
@"*_llgo_github.com/goplus/llgo/async.Result[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1214561949, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 17 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Result[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 5 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Result[int]).IsErr", ptr @"github.com/goplus/llgo/async.(*Result[int]).IsErr" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 4 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Result[int]).IsOk", ptr @"github.com/goplus/llgo/async.(*Result[int]).IsOk" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Result[int]).Unwrap", ptr @"github.com/goplus/llgo/async.(*Result[int]).Unwrap" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @84, i64 8 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr @"github.com/goplus/llgo/async.(*Result[int]).UnwrapOr", ptr @"github.com/goplus/llgo/async.(*Result[int]).UnwrapOr" }] }, align 8
@81 = private unnamed_addr constant [5 x i8] c"IsErr", align 1
@82 = private unnamed_addr constant [4 x i8] c"IsOk", align 1
@83 = private unnamed_addr constant [6 x i8] c"Unwrap", align 1
@84 = private unnamed_addr constant [8 x i8] c"UnwrapOr", align 1
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134531106, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 13 }, ptr @"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out", i64 1, i64 1 } }, align 8
@85 = private unnamed_addr constant [13 x i8] c"func(int) int", align 1
@"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1763581361, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 13 }, ptr null }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@86 = private unnamed_addr constant [3 x i8] c"Err", align 1
@_llgo_error = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1462738452, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @87, i64 5 }, ptr @"*_llgo_error" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU$imethods", i64 1, i64 1 } }, align 8
@87 = private unnamed_addr constant [5 x i8] c"error", align 1
@"*_llgo_error" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1621558991, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @87, i64 5 }, ptr null }, ptr @_llgo_error }, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1419376263, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @88, i64 13 }, ptr @"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out", i64 1, i64 1 } }, align 8
@88 = private unnamed_addr constant [13 x i8] c"func() string", align 1
@"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1900367307, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @88, i64 13 }, ptr null }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }], align 8
@"_llgo_struct$oLcYhpB3wDWLnk5tkoUFCV4RjUr6h9SZHyPCuMxeWiQ$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 3 }, ptr @_llgo_error, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$a2kIjmWEj4soAG8ikWLa-WCoYk4eoItgOcUmPZ-eQNY$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/async.Result[int]", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$18IbIdsW5s12z12VYvKfPxtB_5lqm5yDNtFMb3Hjozw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1921098413, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @89, i64 24 }, ptr @"*_llgo_func$18IbIdsW5s12z12VYvKfPxtB_5lqm5yDNtFMb3Hjozw" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$18IbIdsW5s12z12VYvKfPxtB_5lqm5yDNtFMb3Hjozw$out", i64 1, i64 1 } }, align 8
@89 = private unnamed_addr constant [24 x i8] c"func() async.Result[int]", align 1
@"*_llgo_func$18IbIdsW5s12z12VYvKfPxtB_5lqm5yDNtFMb3Hjozw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2077550105, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @89, i64 24 }, ptr null }, ptr @"_llgo_func$18IbIdsW5s12z12VYvKfPxtB_5lqm5yDNtFMb3Hjozw" }, align 8
@"_llgo_func$18IbIdsW5s12z12VYvKfPxtB_5lqm5yDNtFMb3Hjozw$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Result[int]"], align 8
@"_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323037639, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @90, i64 73 }, ptr @"*_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8$out", i64 1, i64 1 } }, align 8
@90 = private unnamed_addr constant [73 x i8] c"func(*async.Context) async.Poll[github.com/goplus/llgo/async.Result[int]]", align 1
@"*_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 118515476, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @90, i64 73 }, ptr null }, ptr @"_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8" }, align 8
@"_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/async.Context"], align 8
@"_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 48, i64 48, i32 -925489224, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @91, i64 52 }, ptr @"*_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$XLym_Z3pAbGOnuZ91-hGXV_6lqLr_myTctbTNGwH_0k$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).Error", ptr @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]].Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).HasError", ptr @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]].HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).IsReady", ptr @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]].IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @"_llgo_func$18IbIdsW5s12z12VYvKfPxtB_5lqm5yDNtFMb3Hjozw", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).Value", ptr @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]].Value" }] }, align 8
@91 = private unnamed_addr constant [52 x i8] c"async.Poll[github.com/goplus/llgo/async.Result[int]]", align 1
@"*_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 605867178, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @91, i64 52 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).Error", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).HasError", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).IsReady", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @"_llgo_func$18IbIdsW5s12z12VYvKfPxtB_5lqm5yDNtFMb3Hjozw", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).Value", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).Value" }] }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$XLym_Z3pAbGOnuZ91-hGXV_6lqLr_myTctbTNGwH_0k$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @_llgo_bool, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/async.Result[int]", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 3 }, ptr @_llgo_any, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]"], align 8
@"_llgo_iface$XGb4EXxXWKV-dYcJTsDF_8cRVN34b3GvQfT6bkSD8WU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1994897336, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @92, i64 87 }, ptr @"*_llgo_iface$XGb4EXxXWKV-dYcJTsDF_8cRVN34b3GvQfT6bkSD8WU" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$XGb4EXxXWKV-dYcJTsDF_8cRVN34b3GvQfT6bkSD8WU$imethods", i64 1, i64 1 } }, align 8
@92 = private unnamed_addr constant [87 x i8] c"interface { Poll(*async.Context) async.Poll[github.com/goplus/llgo/async.Result[int]] }", align 1
@"*_llgo_iface$XGb4EXxXWKV-dYcJTsDF_8cRVN34b3GvQfT6bkSD8WU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 901209326, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @92, i64 87 }, ptr null }, ptr @"_llgo_iface$XGb4EXxXWKV-dYcJTsDF_8cRVN34b3GvQfT6bkSD8WU" }, align 8
@"_llgo_iface$XGb4EXxXWKV-dYcJTsDF_8cRVN34b3GvQfT6bkSD8WU$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 4 }, ptr @"_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8" }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1638217846, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @93, i64 27 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 4 }, ptr @"_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*LookupAndDouble$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*LookupAndDouble$State).Poll" }] }, align 8
@93 = private unnamed_addr constant [27 x i8] c"types.LookupAndDouble$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 80, i64 80, i32 -1147440325, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @93, i64 27 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$AgMsuEphgvOoEzVjWTPY4iSp9v_kz4CaGd07c5YyRYQ$fields", i64 7, i64 7 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$AgMsuEphgvOoEzVjWTPY4iSp9v_kz4CaGd07c5YyRYQ$fields" = weak_odr constant [7 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 6 }, ptr @"map[_llgo_string]_llgo_int", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 6 }, ptr @_llgo_string, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 11 }, ptr @"_llgo_github.com/goplus/llgo/async.Result[int]", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@94 = private unnamed_addr constant [8 x i8] c"MapParam", align 1
@"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -103283099, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @95, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Await", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Poll", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Poll" }] }, align 8
@95 = private unnamed_addr constant [22 x i8] c"async.ReadyFuture[int]", align 1
@"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1814719306, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @95, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 968294533, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @96, i64 50 }, ptr @"*_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0$imethods", i64 1, i64 1 } }, align 8
@96 = private unnamed_addr constant [50 x i8] c"interface { Poll(*async.Context) async.Poll[int] }", align 1
@"*_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1655281012, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @96, i64 50 }, ptr null }, ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" }, align 8
@"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/types.MapParam$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -856744270, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @97, i64 20 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.MapParam$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*MapParam$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*MapParam$State).Poll" }] }, align 8
@97 = private unnamed_addr constant [20 x i8] c"types.MapParam$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/types.MapParam$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 48, i32 54765331, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @97, i64 20 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.MapParam$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$3chN6_C0a8rWgebAuL0hqhMg5NvGSkX_2OnXHQjMoRk$fields", i64 7, i64 7 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$3chN6_C0a8rWgebAuL0hqhMg5NvGSkX_2OnXHQjMoRk$fields" = weak_odr constant [7 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 6 }, ptr @"map[_llgo_string]_llgo_int", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 6 }, ptr @_llgo_string, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 11 }, ptr @_llgo_int, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@98 = private unnamed_addr constant [12 x i8] c"PointerParam", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/types.PointerParam$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1890127781, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @99, i64 24 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.PointerParam$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*PointerParam$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*PointerParam$State).Poll" }] }, align 8
@99 = private unnamed_addr constant [24 x i8] c"types.PointerParam$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/types.PointerParam$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 48, i64 32, i32 -1176857743, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.PointerParam$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @99, i64 24 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.PointerParam$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$yvkKnCkq7ReUegJhcVdBJXnsvg0SuX72NI7eqkR9Bmk$fields", i64 6, i64 6 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$yvkKnCkq7ReUegJhcVdBJXnsvg0SuX72NI7eqkR9Bmk$fields" = weak_odr constant [6 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 6 }, ptr @"*_llgo_int", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 11 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@100 = private unnamed_addr constant [10 x i8] c"SafeDivide", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 133054281, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @101, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 4 }, ptr @"_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*SafeDivide$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*SafeDivide$State).Poll" }] }, align 8
@101 = private unnamed_addr constant [22 x i8] c"types.SafeDivide$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 72, i64 72, i32 688455267, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @101, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$Oj-xn9h_eCTusVdyMugYTBtBstd0X-upyn4E7HhVW1Q$fields", i64 7, i64 7 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$Oj-xn9h_eCTusVdyMugYTBtBstd0X-upyn4E7HhVW1Q$fields" = weak_odr constant [7 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 6 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 11 }, ptr @"_llgo_github.com/goplus/llgo/async.Result[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@102 = private unnamed_addr constant [10 x i8] c"SliceParam", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/types.SliceParam$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 343692552, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @103, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.SliceParam$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*SliceParam$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*SliceParam$State).Poll" }] }, align 8
@103 = private unnamed_addr constant [22 x i8] c"types.SliceParam$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/types.SliceParam$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 120, i64 104, i32 1393606221, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @103, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.SliceParam$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$xE5aDFGIsZ4Vp9JRdX2RMvuVU4uQoZJmu0A5SYHuHik$fields", i64 13, i64 13 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@104 = private unnamed_addr constant [4 x i8] c"var4", align 1
@105 = private unnamed_addr constant [4 x i8] c"var5", align 1
@106 = private unnamed_addr constant [4 x i8] c"var6", align 1
@107 = private unnamed_addr constant [4 x i8] c"var7", align 1
@108 = private unnamed_addr constant [4 x i8] c"var8", align 1
@"github.com/goplus/llgo/cl/_testpull/types.struct$xE5aDFGIsZ4Vp9JRdX2RMvuVU4uQoZJmu0A5SYHuHik$fields" = weak_odr constant [13 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 6 }, ptr @"[]_llgo_int", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 4 }, ptr @_llgo_int, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @104, i64 4 }, ptr @_llgo_bool, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @105, i64 4 }, ptr @_llgo_int, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @106, i64 4 }, ptr @"*_llgo_int", i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @107, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @108, i64 4 }, ptr @_llgo_int, i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 104, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 11 }, ptr @_llgo_int, i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@109 = private unnamed_addr constant [11 x i8] c"StringParam", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/types.StringParam$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -58551321, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @110, i64 23 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.StringParam$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*StringParam$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*StringParam$State).Poll" }] }, align 8
@110 = private unnamed_addr constant [23 x i8] c"types.StringParam$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/types.StringParam$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 48, i64 32, i32 273925782, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.StringParam$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @110, i64 23 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.StringParam$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$JUUi4X543N8d7ao6q1EBByPS5pRnVLT449SfWxoPGL8$fields", i64 5, i64 5 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$JUUi4X543N8d7ao6q1EBByPS5pRnVLT449SfWxoPGL8$fields" = weak_odr constant [5 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 6 }, ptr @_llgo_string, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 11 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@111 = private unnamed_addr constant [17 x i8] c"StructFieldAccess", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -68901220, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @112, i64 29 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*StructFieldAccess$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*StructFieldAccess$State).Poll" }] }, align 8
@112 = private unnamed_addr constant [29 x i8] c"types.StructFieldAccess$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 96, i64 80, i32 -1506970905, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @112, i64 29 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$cRcss-Vzlg_sdlfiLkD8tg9wOaY8yTlndFkGJI9k8MA$fields", i64 10, i64 10 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testpull/types.Point" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 -1984961403, i8 13, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.Point" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @113, i64 11 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.Point" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$EoN-2WQQZyu0WCtjjPX5UG3yM-s2ruKwcqP-tpve-Q8$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@113 = private unnamed_addr constant [11 x i8] c"types.Point", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/types.Point" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -38123231, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @113, i64 11 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.Point" }, align 8
@114 = private unnamed_addr constant [1 x i8] c"X", align 1
@115 = private unnamed_addr constant [1 x i8] c"Y", align 1
@"_llgo_struct$EoN-2WQQZyu0WCtjjPX5UG3yM-s2ruKwcqP-tpve-Q8$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @114, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @115, i64 1 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$cRcss-Vzlg_sdlfiLkD8tg9wOaY8yTlndFkGJI9k8MA$fields" = weak_odr constant [10 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 6 }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.Point", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.Point", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 4 }, ptr @_llgo_int, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @104, i64 4 }, ptr @_llgo_int, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 11 }, ptr @_llgo_int, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/types.init$guard" = global i1 false, align 1
@116 = private unnamed_addr constant [45 x i8] c"Await() should be transformed by the compiler", align 1

define %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" @"github.com/goplus/llgo/cl/_testpull/types.(*Divmod$State).Poll"(ptr %0, ptr %1) {
Divmod_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  %4 = sext i8 %3 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, i64 %4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
  switch i8 %3, label %Divmod_state_unreach [
    i8 0, label %Divmod_state_00
    i8 1, label %Divmod_state_01
    i8 2, label %Divmod_state_02
    i8 3, label %Divmod_state_done
  ]

Divmod_state_00:                                  ; preds = %Divmod_entry
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 2
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 4
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 6
  %12 = load i64, ptr %11, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 7
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %Divmod_state_00_init, label %Divmod_state_00_poll

Divmod_state_01:                                  ; preds = %Divmod_state_00_ready, %Divmod_entry
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 1
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 2
  %19 = load i64, ptr %18, align 4
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 4
  %21 = load i64, ptr %20, align 4
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 6
  %23 = load i64, ptr %22, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 8
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %Divmod_state_01_init, label %Divmod_state_01_poll

Divmod_state_02:                                  ; preds = %Divmod_state_01_ready, %Divmod_entry
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 1
  %28 = load i64, ptr %27, align 4
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 2
  %30 = load i64, ptr %29, align 4
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 4
  %32 = load i64, ptr %31, align 4
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 6
  %34 = load i64, ptr %33, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %35 = call %"github.com/goplus/llgo/async.Tuple2[int,int]" @"github.com/goplus/llgo/async.MakeTuple2[int,int]"(i64 %32, i64 %34)
  %36 = call ptr @"github.com/goplus/llgo/async.Return[github.com/goplus/llgo/async.Tuple2[int, int]]"(%"github.com/goplus/llgo/async.Tuple2[int,int]" %35)
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$UF-K7t4EfagXSm-WTaHawm21nnTgf-85MVOaez9AbyQ", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]")
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %37, 0
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %38, ptr %36, 1
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 9
  store %"github.com/goplus/llgo/async.Tuple2[int,int]" %35, ptr %40, align 4
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %41, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 9
  %43 = load %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %42, align 4
  %44 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" { i1 true, %"github.com/goplus/llgo/async.Tuple2[int,int]" undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/async.Tuple2[int,int]" %43, 1
  %45 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %44, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %45

Divmod_state_done:                                ; preds = %Divmod_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, i1 false, i1 true)
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 9
  %47 = load %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %46, align 4
  %48 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" { i1 true, %"github.com/goplus/llgo/async.Tuple2[int,int]" undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/async.Tuple2[int,int]" %47, 1
  %49 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %48, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %49

Divmod_state_unreach:                             ; preds = %Divmod_entry
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" zeroinitializer

_llgo_6:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" zeroinitializer

Divmod_state_00_init:                             ; preds = %Divmod_state_00
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 1
  %51 = load i64, ptr %50, align 4
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 2
  %53 = load i64, ptr %52, align 4
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 4
  %55 = load i64, ptr %54, align 4
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 6
  %57 = load i64, ptr %56, align 4
  %58 = sdiv i64 %51, %53
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 3
  store i64 %58, ptr %59, align 4
  %60 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %58)
  store ptr %60, ptr %13, align 8
  br label %Divmod_state_00_poll

Divmod_state_00_poll:                             ; preds = %Divmod_state_00_init, %Divmod_state_00
  %61 = load ptr, ptr %13, align 8
  %62 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %61, ptr %1)
  %63 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %62, 0
  br i1 %63, label %Divmod_state_00_ready, label %Divmod_state_00_pending

Divmod_state_00_ready:                            ; preds = %Divmod_state_00_poll
  %64 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %62, 1
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 4
  store i64 %64, ptr %65, align 4
  store ptr null, ptr %13, align 8
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %66, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %Divmod_state_01

Divmod_state_00_pending:                          ; preds = %Divmod_state_00_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" zeroinitializer

Divmod_state_01_init:                             ; preds = %Divmod_state_01
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 1
  %68 = load i64, ptr %67, align 4
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 2
  %70 = load i64, ptr %69, align 4
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 4
  %72 = load i64, ptr %71, align 4
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 6
  %74 = load i64, ptr %73, align 4
  %75 = srem i64 %68, %70
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 5
  store i64 %75, ptr %76, align 4
  %77 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %75)
  store ptr %77, ptr %24, align 8
  br label %Divmod_state_01_poll

Divmod_state_01_poll:                             ; preds = %Divmod_state_01_init, %Divmod_state_01
  %78 = load ptr, ptr %24, align 8
  %79 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %78, ptr %1)
  %80 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %79, 0
  br i1 %80, label %Divmod_state_01_ready, label %Divmod_state_01_pending

Divmod_state_01_ready:                            ; preds = %Divmod_state_01_poll
  %81 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %79, 1
  %82 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 6
  store i64 %81, ptr %82, align 4
  store ptr null, ptr %24, align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %83, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %Divmod_state_02

Divmod_state_01_pending:                          ; preds = %Divmod_state_01_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" zeroinitializer
}

declare void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1, i1)

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
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$UF-K7t4EfagXSm-WTaHawm21nnTgf-85MVOaez9AbyQ", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.Divmod$State")
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, ptr %2, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5
}

define linkonce i64 @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @116, i64 45 }, ptr %1, align 8
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

define %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" @"github.com/goplus/llgo/cl/_testpull/types.(*GetMinMax$State).Poll"(ptr %0, ptr %1) {
GetMinMax_entry:
  %2 = alloca %"github.com/goplus/llgo/async.Tuple2[int,int]", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  %3 = alloca %"github.com/goplus/llgo/async.Tuple2[int,int]", align 8
  call void @llvm.memset(ptr %3, i8 0, i64 16, i1 false)
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 0
  %5 = load i8, ptr %4, align 1
  %6 = sext i8 %5 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 9 }, i64 %6, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
  switch i8 %5, label %GetMinMax_state_unreach [
    i8 0, label %GetMinMax_state_00
    i8 1, label %GetMinMax_state_01
    i8 2, label %GetMinMax_state_02
    i8 3, label %GetMinMax_state_03
    i8 4, label %GetMinMax_state_04
    i8 5, label %GetMinMax_state_done
  ]

GetMinMax_state_00:                               ; preds = %GetMinMax_entry
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 1
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 2
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 3
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 4
  %14 = load i64, ptr %13, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 9 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 5
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %GetMinMax_state_00_init, label %GetMinMax_state_00_poll

GetMinMax_state_01:                               ; preds = %GetMinMax_state_00_ready, %GetMinMax_entry
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 1
  %19 = load i64, ptr %18, align 4
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 2
  %21 = load i64, ptr %20, align 4
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 3
  %23 = load i64, ptr %22, align 4
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 4
  %25 = load i64, ptr %24, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 9 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 6
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %GetMinMax_state_01_init, label %GetMinMax_state_01_poll

GetMinMax_state_02:                               ; preds = %GetMinMax_state_01_ready, %GetMinMax_entry
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 1
  %30 = load i64, ptr %29, align 4
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 2
  %32 = load i64, ptr %31, align 4
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 3
  %34 = load i64, ptr %33, align 4
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 4
  %36 = load i64, ptr %35, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 9 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %GetMinMax_state_00_true, label %GetMinMax_state_00_false

GetMinMax_state_03:                               ; preds = %GetMinMax_state_00_true, %GetMinMax_entry
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 1
  %39 = load i64, ptr %38, align 4
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 2
  %41 = load i64, ptr %40, align 4
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 3
  %43 = load i64, ptr %42, align 4
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 4
  %45 = load i64, ptr %44, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 9 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %46 = getelementptr inbounds %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %2, i32 0, i32 0
  %47 = getelementptr inbounds %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %2, i32 0, i32 1
  store i64 %43, ptr %46, align 4
  store i64 %45, ptr %47, align 4
  %48 = load %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %2, align 4
  %49 = call ptr @"github.com/goplus/llgo/async.Return[github.com/goplus/llgo/async.Tuple2[int, int]]"(%"github.com/goplus/llgo/async.Tuple2[int,int]" %48)
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$UF-K7t4EfagXSm-WTaHawm21nnTgf-85MVOaez9AbyQ", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]")
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %50, 0
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %51, ptr %49, 1
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 7
  store %"github.com/goplus/llgo/async.Tuple2[int,int]" %48, ptr %53, align 4
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %54, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 9 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 7
  %56 = load %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %55, align 4
  %57 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" { i1 true, %"github.com/goplus/llgo/async.Tuple2[int,int]" undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/async.Tuple2[int,int]" %56, 1
  %58 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %57, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %58

GetMinMax_state_04:                               ; preds = %GetMinMax_state_00_false, %GetMinMax_entry
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 1
  %60 = load i64, ptr %59, align 4
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 2
  %62 = load i64, ptr %61, align 4
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 3
  %64 = load i64, ptr %63, align 4
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 4
  %66 = load i64, ptr %65, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 9 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %67 = getelementptr inbounds %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %3, i32 0, i32 0
  %68 = getelementptr inbounds %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %3, i32 0, i32 1
  store i64 %66, ptr %67, align 4
  store i64 %64, ptr %68, align 4
  %69 = load %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %3, align 4
  %70 = call ptr @"github.com/goplus/llgo/async.Return[github.com/goplus/llgo/async.Tuple2[int, int]]"(%"github.com/goplus/llgo/async.Tuple2[int,int]" %69)
  %71 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$UF-K7t4EfagXSm-WTaHawm21nnTgf-85MVOaez9AbyQ", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]")
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %71, 0
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %72, ptr %70, 1
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 7
  store %"github.com/goplus/llgo/async.Tuple2[int,int]" %69, ptr %74, align 4
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %75, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 9 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 7
  %77 = load %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %76, align 4
  %78 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" { i1 true, %"github.com/goplus/llgo/async.Tuple2[int,int]" undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/async.Tuple2[int,int]" %77, 1
  %79 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %78, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %79

GetMinMax_state_done:                             ; preds = %GetMinMax_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 9 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, i1 false, i1 true)
  %80 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 7
  %81 = load %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %80, align 4
  %82 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" { i1 true, %"github.com/goplus/llgo/async.Tuple2[int,int]" undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/async.Tuple2[int,int]" %81, 1
  %83 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %82, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %83

GetMinMax_state_unreach:                          ; preds = %GetMinMax_entry
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" zeroinitializer

_llgo_8:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" zeroinitializer

GetMinMax_state_00_init:                          ; preds = %GetMinMax_state_00
  %84 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 1
  %85 = load i64, ptr %84, align 4
  %86 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 2
  %87 = load i64, ptr %86, align 4
  %88 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 3
  %89 = load i64, ptr %88, align 4
  %90 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 4
  %91 = load i64, ptr %90, align 4
  %92 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %85)
  store ptr %92, ptr %15, align 8
  br label %GetMinMax_state_00_poll

GetMinMax_state_00_poll:                          ; preds = %GetMinMax_state_00_init, %GetMinMax_state_00
  %93 = load ptr, ptr %15, align 8
  %94 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %93, ptr %1)
  %95 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %94, 0
  br i1 %95, label %GetMinMax_state_00_ready, label %GetMinMax_state_00_pending

GetMinMax_state_00_ready:                         ; preds = %GetMinMax_state_00_poll
  %96 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %94, 1
  %97 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 3
  store i64 %96, ptr %97, align 4
  store ptr null, ptr %15, align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %98, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 9 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %GetMinMax_state_01

GetMinMax_state_00_pending:                       ; preds = %GetMinMax_state_00_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 9 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
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
  store ptr %107, ptr %26, align 8
  br label %GetMinMax_state_01_poll

GetMinMax_state_01_poll:                          ; preds = %GetMinMax_state_01_init, %GetMinMax_state_01
  %108 = load ptr, ptr %26, align 8
  %109 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %108, ptr %1)
  %110 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %109, 0
  br i1 %110, label %GetMinMax_state_01_ready, label %GetMinMax_state_01_pending

GetMinMax_state_01_ready:                         ; preds = %GetMinMax_state_01_poll
  %111 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %109, 1
  %112 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 4
  store i64 %111, ptr %112, align 4
  store ptr null, ptr %26, align 8
  %113 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %113, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 9 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %GetMinMax_state_02

GetMinMax_state_01_pending:                       ; preds = %GetMinMax_state_01_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 9 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" zeroinitializer

GetMinMax_state_00_true:                          ; preds = %GetMinMax_state_02
  %114 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 3
  store i64 %34, ptr %114, align 4
  %115 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 4
  store i64 %36, ptr %115, align 4
  %116 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %116, align 1
  br label %GetMinMax_state_03

GetMinMax_state_00_false:                         ; preds = %GetMinMax_state_02
  %117 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 3
  store i64 %34, ptr %117, align 4
  %118 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 4
  store i64 %36, ptr %118, align 4
  %119 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %119, align 1
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
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$UF-K7t4EfagXSm-WTaHawm21nnTgf-85MVOaez9AbyQ", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State")
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, ptr %2, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5
}

define %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" @"github.com/goplus/llgo/cl/_testpull/types.(*LookupAndDouble$State).Poll"(ptr %0, ptr %1) {
LookupAndDouble_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  %4 = sext i8 %3 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 15 }, i64 %4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
  switch i8 %3, label %LookupAndDouble_state_unreach [
    i8 0, label %LookupAndDouble_state_00
    i8 1, label %LookupAndDouble_state_01
    i8 2, label %LookupAndDouble_state_02
    i8 3, label %LookupAndDouble_state_03
    i8 4, label %LookupAndDouble_state_done
  ]

LookupAndDouble_state_00:                         ; preds = %LookupAndDouble_entry
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 2
  %8 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %7, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 3
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 4
  %12 = load i64, ptr %11, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 15 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %8, ptr %13, align 8
  %14 = call { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr @"map[_llgo_string]_llgo_int", ptr %6, ptr %13)
  %15 = extractvalue { ptr, i1 } %14, 0
  %16 = load i64, ptr %15, align 4
  %17 = extractvalue { ptr, i1 } %14, 1
  %18 = insertvalue { i64, i1 } undef, i64 %16, 0
  %19 = insertvalue { i64, i1 } %18, i1 %17, 1
  %20 = extractvalue { i64, i1 } %19, 0
  %21 = extractvalue { i64, i1 } %19, 1
  br i1 %21, label %LookupAndDouble_state_00_true, label %LookupAndDouble_state_00_false

LookupAndDouble_state_01:                         ; preds = %LookupAndDouble_state_00_false, %LookupAndDouble_entry
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 2
  %25 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %24, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 3
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 4
  %29 = load i64, ptr %28, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 15 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %30 = call %"github.com/goplus/llgo/async.Result[int]" @"github.com/goplus/llgo/async.Err[int]"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %31 = call ptr @"github.com/goplus/llgo/async.Return[github.com/goplus/llgo/async.Result[int]]"(%"github.com/goplus/llgo/async.Result[int]" %30)
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$XGb4EXxXWKV-dYcJTsDF_8cRVN34b3GvQfT6bkSD8WU", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]")
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %32, 0
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %33, ptr %31, 1
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 6
  store %"github.com/goplus/llgo/async.Result[int]" %30, ptr %35, align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %36, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 15 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 6
  %38 = load %"github.com/goplus/llgo/async.Result[int]", ptr %37, align 8
  %39 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" { i1 true, %"github.com/goplus/llgo/async.Result[int]" undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/async.Result[int]" %38, 1
  %40 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %39, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %40

LookupAndDouble_state_02:                         ; preds = %LookupAndDouble_state_00_true, %LookupAndDouble_entry
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 2
  %44 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %43, align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 4
  %46 = load i64, ptr %45, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 15 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 5
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %LookupAndDouble_state_02_init, label %LookupAndDouble_state_02_poll

LookupAndDouble_state_03:                         ; preds = %LookupAndDouble_state_02_ready, %LookupAndDouble_entry
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 2
  %53 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %52, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 4
  %55 = load i64, ptr %54, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 15 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %56 = call %"github.com/goplus/llgo/async.Result[int]" @"github.com/goplus/llgo/async.Ok[int]"(i64 %55)
  %57 = call ptr @"github.com/goplus/llgo/async.Return[github.com/goplus/llgo/async.Result[int]]"(%"github.com/goplus/llgo/async.Result[int]" %56)
  %58 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$XGb4EXxXWKV-dYcJTsDF_8cRVN34b3GvQfT6bkSD8WU", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]")
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %58, 0
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %59, ptr %57, 1
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 6
  store %"github.com/goplus/llgo/async.Result[int]" %56, ptr %61, align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %62, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 15 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 6
  %64 = load %"github.com/goplus/llgo/async.Result[int]", ptr %63, align 8
  %65 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" { i1 true, %"github.com/goplus/llgo/async.Result[int]" undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/async.Result[int]" %64, 1
  %66 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %65, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %66

LookupAndDouble_state_done:                       ; preds = %LookupAndDouble_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 15 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, i1 false, i1 true)
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 6
  %68 = load %"github.com/goplus/llgo/async.Result[int]", ptr %67, align 8
  %69 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" { i1 true, %"github.com/goplus/llgo/async.Result[int]" undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/async.Result[int]" %68, 1
  %70 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %69, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %70

LookupAndDouble_state_unreach:                    ; preds = %LookupAndDouble_entry
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" zeroinitializer

_llgo_7:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" zeroinitializer

LookupAndDouble_state_00_true:                    ; preds = %LookupAndDouble_state_00
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %71, align 1
  br label %LookupAndDouble_state_02

LookupAndDouble_state_00_false:                   ; preds = %LookupAndDouble_state_00
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %72, align 1
  br label %LookupAndDouble_state_01

LookupAndDouble_state_02_init:                    ; preds = %LookupAndDouble_state_02
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 1
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 2
  %76 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %75, align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 4
  %78 = load i64, ptr %77, align 4
  %79 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %76, ptr %79, align 8
  %80 = call { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr @"map[_llgo_string]_llgo_int", ptr %74, ptr %79)
  %81 = extractvalue { ptr, i1 } %80, 0
  %82 = load i64, ptr %81, align 4
  %83 = extractvalue { ptr, i1 } %80, 1
  %84 = insertvalue { i64, i1 } undef, i64 %82, 0
  %85 = insertvalue { i64, i1 } %84, i1 %83, 1
  %86 = extractvalue { i64, i1 } %85, 0
  %87 = mul i64 %86, 2
  %88 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 3
  store i64 %87, ptr %88, align 4
  %89 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %87)
  store ptr %89, ptr %47, align 8
  br label %LookupAndDouble_state_02_poll

LookupAndDouble_state_02_poll:                    ; preds = %LookupAndDouble_state_02_init, %LookupAndDouble_state_02
  %90 = load ptr, ptr %47, align 8
  %91 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %90, ptr %1)
  %92 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %91, 0
  br i1 %92, label %LookupAndDouble_state_02_ready, label %LookupAndDouble_state_02_pending

LookupAndDouble_state_02_ready:                   ; preds = %LookupAndDouble_state_02_poll
  %93 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %91, 1
  %94 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 4
  store i64 %93, ptr %94, align 4
  store ptr null, ptr %47, align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %95, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 15 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %LookupAndDouble_state_03

LookupAndDouble_state_02_pending:                 ; preds = %LookupAndDouble_state_02_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 15 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
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
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$XGb4EXxXWKV-dYcJTsDF_8cRVN34b3GvQfT6bkSD8WU", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State")
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, ptr %2, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/types.(*MapParam$State).Poll"(ptr %0, ptr %1) {
MapParam_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  %4 = sext i8 %3 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @94, i64 8 }, i64 %4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
  switch i8 %3, label %MapParam_state_unreach [
    i8 0, label %MapParam_state_00
    i8 1, label %MapParam_state_01
    i8 2, label %MapParam_state_02
    i8 3, label %MapParam_state_03
    i8 4, label %MapParam_state_done
  ]

MapParam_state_00:                                ; preds = %MapParam_entry
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 2
  %8 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %7, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 4
  %10 = load i64, ptr %9, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @94, i64 8 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %8, ptr %11, align 8
  %12 = call { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr @"map[_llgo_string]_llgo_int", ptr %6, ptr %11)
  %13 = extractvalue { ptr, i1 } %12, 0
  %14 = load i64, ptr %13, align 4
  %15 = extractvalue { ptr, i1 } %12, 1
  %16 = insertvalue { i64, i1 } undef, i64 %14, 0
  %17 = insertvalue { i64, i1 } %16, i1 %15, 1
  %18 = extractvalue { i64, i1 } %17, 0
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 3
  store i64 %18, ptr %19, align 4
  %20 = extractvalue { i64, i1 } %17, 1
  br i1 %20, label %MapParam_state_00_true, label %MapParam_state_00_false

MapParam_state_01:                                ; preds = %MapParam_state_00_false, %MapParam_entry
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 2
  %24 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %23, align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 3
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 4
  %28 = load i64, ptr %27, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @94, i64 8 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %29 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 -1)
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %30, 0
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %31, ptr %29, 1
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 6
  store i64 -1, ptr %33, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %34, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @94, i64 8 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 6
  %36 = load i64, ptr %35, align 4
  %37 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %36, 1
  %38 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %37, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %38

MapParam_state_02:                                ; preds = %MapParam_state_00_true, %MapParam_entry
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 2
  %42 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %41, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 3
  %44 = load i64, ptr %43, align 4
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 4
  %46 = load i64, ptr %45, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @94, i64 8 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 5
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %MapParam_state_02_init, label %MapParam_state_02_poll

MapParam_state_03:                                ; preds = %MapParam_state_02_ready, %MapParam_entry
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 2
  %53 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %52, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 3
  %55 = load i64, ptr %54, align 4
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 4
  %57 = load i64, ptr %56, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @94, i64 8 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 4
  %59 = load i64, ptr %58, align 4
  %60 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %57)
  %61 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %62 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %61, 0
  %63 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %62, ptr %60, 1
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 6
  store i64 %59, ptr %64, align 4
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %65, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @94, i64 8 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 6
  %67 = load i64, ptr %66, align 4
  %68 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %67, 1
  %69 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %68, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %69

MapParam_state_done:                              ; preds = %MapParam_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @94, i64 8 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, i1 false, i1 true)
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 6
  %71 = load i64, ptr %70, align 4
  %72 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %71, 1
  %73 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %72, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %73

MapParam_state_unreach:                           ; preds = %MapParam_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_7:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

MapParam_state_00_true:                           ; preds = %MapParam_state_00
  %74 = extractvalue { i64, i1 } %17, 0
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 3
  store i64 %74, ptr %75, align 4
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %76, align 1
  br label %MapParam_state_02

MapParam_state_00_false:                          ; preds = %MapParam_state_00
  %77 = extractvalue { i64, i1 } %17, 0
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 3
  store i64 %77, ptr %78, align 4
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %79, align 1
  br label %MapParam_state_01

MapParam_state_02_init:                           ; preds = %MapParam_state_02
  %80 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 1
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 2
  %83 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %82, align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 3
  %85 = load i64, ptr %84, align 4
  %86 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 4
  %87 = load i64, ptr %86, align 4
  %88 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %85)
  store ptr %88, ptr %47, align 8
  br label %MapParam_state_02_poll

MapParam_state_02_poll:                           ; preds = %MapParam_state_02_init, %MapParam_state_02
  %89 = load ptr, ptr %47, align 8
  %90 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %89, ptr %1)
  %91 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %90, 0
  br i1 %91, label %MapParam_state_02_ready, label %MapParam_state_02_pending

MapParam_state_02_ready:                          ; preds = %MapParam_state_02_poll
  %92 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %90, 1
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 4
  store i64 %92, ptr %93, align 4
  store ptr null, ptr %47, align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %94, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @94, i64 8 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %MapParam_state_03

MapParam_state_02_pending:                        ; preds = %MapParam_state_02_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @94, i64 8 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
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
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.MapParam$State")
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, ptr %2, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/types.(*PointerParam$State).Poll"(ptr %0, ptr %1) {
PointerParam_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  %4 = sext i8 %3 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @98, i64 12 }, i64 %4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
  switch i8 %3, label %PointerParam_state_unreach [
    i8 0, label %PointerParam_state_00
    i8 1, label %PointerParam_state_01
    i8 2, label %PointerParam_state_02
    i8 3, label %PointerParam_state_03
    i8 4, label %PointerParam_state_done
  ]

PointerParam_state_00:                            ; preds = %PointerParam_entry
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 2
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 3
  %10 = load i64, ptr %9, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @98, i64 12 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %11 = icmp eq ptr %6, null
  br i1 %11, label %PointerParam_state_00_true, label %PointerParam_state_00_false

PointerParam_state_01:                            ; preds = %PointerParam_state_00_true, %PointerParam_entry
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 2
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 3
  %17 = load i64, ptr %16, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @98, i64 12 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %18 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 -1)
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %19, 0
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %20, ptr %18, 1
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 5
  store i64 -1, ptr %22, align 4
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %23, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @98, i64 12 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 5
  %25 = load i64, ptr %24, align 4
  %26 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %25, 1
  %27 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %26, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %27

PointerParam_state_02:                            ; preds = %PointerParam_state_00_false, %PointerParam_entry
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 3
  %31 = load i64, ptr %30, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @98, i64 12 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 4
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %PointerParam_state_02_init, label %PointerParam_state_02_poll

PointerParam_state_03:                            ; preds = %PointerParam_state_02_ready, %PointerParam_entry
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 3
  %38 = load i64, ptr %37, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @98, i64 12 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 3
  %40 = load i64, ptr %39, align 4
  %41 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %38)
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %42, 0
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %43, ptr %41, 1
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 5
  store i64 %40, ptr %45, align 4
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %46, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @98, i64 12 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 5
  %48 = load i64, ptr %47, align 4
  %49 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %48, 1
  %50 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %49, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %50

PointerParam_state_done:                          ; preds = %PointerParam_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @98, i64 12 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, i1 false, i1 true)
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 5
  %52 = load i64, ptr %51, align 4
  %53 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %52, 1
  %54 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %53, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %54

PointerParam_state_unreach:                       ; preds = %PointerParam_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_7:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

PointerParam_state_00_true:                       ; preds = %PointerParam_state_00
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %55, align 1
  br label %PointerParam_state_01

PointerParam_state_00_false:                      ; preds = %PointerParam_state_00
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %56, align 1
  br label %PointerParam_state_02

PointerParam_state_02_init:                       ; preds = %PointerParam_state_02
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 1
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 3
  %60 = load i64, ptr %59, align 4
  %61 = load i64, ptr %58, align 4
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 2
  store i64 %61, ptr %62, align 4
  %63 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %61)
  store ptr %63, ptr %32, align 8
  br label %PointerParam_state_02_poll

PointerParam_state_02_poll:                       ; preds = %PointerParam_state_02_init, %PointerParam_state_02
  %64 = load ptr, ptr %32, align 8
  %65 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %64, ptr %1)
  %66 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %65, 0
  br i1 %66, label %PointerParam_state_02_ready, label %PointerParam_state_02_pending

PointerParam_state_02_ready:                      ; preds = %PointerParam_state_02_poll
  %67 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %65, 1
  %68 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 3
  store i64 %67, ptr %68, align 4
  store ptr null, ptr %32, align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %69, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @98, i64 12 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %PointerParam_state_03

PointerParam_state_02_pending:                    ; preds = %PointerParam_state_02_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @98, i64 12 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
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
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.PointerParam$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" @"github.com/goplus/llgo/cl/_testpull/types.(*SafeDivide$State).Poll"(ptr %0, ptr %1) {
SafeDivide_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  %4 = sext i8 %3 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @100, i64 10 }, i64 %4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
  switch i8 %3, label %SafeDivide_state_unreach [
    i8 0, label %SafeDivide_state_00
    i8 1, label %SafeDivide_state_01
    i8 2, label %SafeDivide_state_02
    i8 3, label %SafeDivide_state_03
    i8 4, label %SafeDivide_state_done
  ]

SafeDivide_state_00:                              ; preds = %SafeDivide_entry
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 2
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 3
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 4
  %12 = load i64, ptr %11, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @100, i64 10 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %13 = icmp eq i64 %8, 0
  br i1 %13, label %SafeDivide_state_00_true, label %SafeDivide_state_00_false

SafeDivide_state_01:                              ; preds = %SafeDivide_state_00_true, %SafeDivide_entry
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 1
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 2
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 3
  %19 = load i64, ptr %18, align 4
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 4
  %21 = load i64, ptr %20, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @100, i64 10 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %22 = call %"github.com/goplus/llgo/async.Result[int]" @"github.com/goplus/llgo/async.Err[int]"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %23 = call ptr @"github.com/goplus/llgo/async.Return[github.com/goplus/llgo/async.Result[int]]"(%"github.com/goplus/llgo/async.Result[int]" %22)
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$XGb4EXxXWKV-dYcJTsDF_8cRVN34b3GvQfT6bkSD8WU", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]")
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %24, 0
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %25, ptr %23, 1
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 6
  store %"github.com/goplus/llgo/async.Result[int]" %22, ptr %27, align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %28, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @100, i64 10 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 6
  %30 = load %"github.com/goplus/llgo/async.Result[int]", ptr %29, align 8
  %31 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" { i1 true, %"github.com/goplus/llgo/async.Result[int]" undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/async.Result[int]" %30, 1
  %32 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %31, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %32

SafeDivide_state_02:                              ; preds = %SafeDivide_state_00_false, %SafeDivide_entry
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 1
  %34 = load i64, ptr %33, align 4
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 2
  %36 = load i64, ptr %35, align 4
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 4
  %38 = load i64, ptr %37, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @100, i64 10 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 5
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %SafeDivide_state_02_init, label %SafeDivide_state_02_poll

SafeDivide_state_03:                              ; preds = %SafeDivide_state_02_ready, %SafeDivide_entry
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 1
  %43 = load i64, ptr %42, align 4
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 2
  %45 = load i64, ptr %44, align 4
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 4
  %47 = load i64, ptr %46, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @100, i64 10 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %48 = call %"github.com/goplus/llgo/async.Result[int]" @"github.com/goplus/llgo/async.Ok[int]"(i64 %47)
  %49 = call ptr @"github.com/goplus/llgo/async.Return[github.com/goplus/llgo/async.Result[int]]"(%"github.com/goplus/llgo/async.Result[int]" %48)
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$XGb4EXxXWKV-dYcJTsDF_8cRVN34b3GvQfT6bkSD8WU", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]")
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %50, 0
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %51, ptr %49, 1
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 6
  store %"github.com/goplus/llgo/async.Result[int]" %48, ptr %53, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %54, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @100, i64 10 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 6
  %56 = load %"github.com/goplus/llgo/async.Result[int]", ptr %55, align 8
  %57 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" { i1 true, %"github.com/goplus/llgo/async.Result[int]" undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/async.Result[int]" %56, 1
  %58 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %57, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %58

SafeDivide_state_done:                            ; preds = %SafeDivide_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @100, i64 10 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, i1 false, i1 true)
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 6
  %60 = load %"github.com/goplus/llgo/async.Result[int]", ptr %59, align 8
  %61 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" { i1 true, %"github.com/goplus/llgo/async.Result[int]" undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, %"github.com/goplus/llgo/async.Result[int]" %60, 1
  %62 = insertvalue %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %61, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %62

SafeDivide_state_unreach:                         ; preds = %SafeDivide_entry
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" zeroinitializer

_llgo_7:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" zeroinitializer

SafeDivide_state_00_true:                         ; preds = %SafeDivide_state_00
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %63, align 1
  br label %SafeDivide_state_01

SafeDivide_state_00_false:                        ; preds = %SafeDivide_state_00
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %64, align 1
  br label %SafeDivide_state_02

SafeDivide_state_02_init:                         ; preds = %SafeDivide_state_02
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 1
  %66 = load i64, ptr %65, align 4
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 2
  %68 = load i64, ptr %67, align 4
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 4
  %70 = load i64, ptr %69, align 4
  %71 = sdiv i64 %66, %68
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 3
  store i64 %71, ptr %72, align 4
  %73 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %71)
  store ptr %73, ptr %39, align 8
  br label %SafeDivide_state_02_poll

SafeDivide_state_02_poll:                         ; preds = %SafeDivide_state_02_init, %SafeDivide_state_02
  %74 = load ptr, ptr %39, align 8
  %75 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %74, ptr %1)
  %76 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %75, 0
  br i1 %76, label %SafeDivide_state_02_ready, label %SafeDivide_state_02_pending

SafeDivide_state_02_ready:                        ; preds = %SafeDivide_state_02_poll
  %77 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %75, 1
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 4
  store i64 %77, ptr %78, align 4
  store ptr null, ptr %39, align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %79, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @100, i64 10 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %SafeDivide_state_03

SafeDivide_state_02_pending:                      ; preds = %SafeDivide_state_02_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @100, i64 10 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
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
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$XGb4EXxXWKV-dYcJTsDF_8cRVN34b3GvQfT6bkSD8WU", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State")
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, ptr %2, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/types.(*SliceParam$State).Poll"(ptr %0, ptr %1) {
SliceParam_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  %4 = sext i8 %3 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @102, i64 10 }, i64 %4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
  switch i8 %3, label %SliceParam_state_unreach [
    i8 0, label %SliceParam_state_00
    i8 1, label %SliceParam_state_01
    i8 2, label %SliceParam_state_02
    i8 3, label %SliceParam_state_03
    i8 4, label %SliceParam_state_04
    i8 5, label %SliceParam_state_done
  ]

SliceParam_state_00:                              ; preds = %SliceParam_entry
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 1
  %6 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %5, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 2
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 4
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 5
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 6
  %14 = load i1, ptr %13, align 1
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 7
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 8
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 9
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 10
  %22 = load i64, ptr %21, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @102, i64 10 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %23 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, 1
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 3
  store i64 %23, ptr %24, align 4
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 7
  store i64 0, ptr %25, align 4
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 4
  store i64 -1, ptr %26, align 4
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 3
  store i64 %23, ptr %27, align 4
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %28, align 1
  br label %SliceParam_state_01

SliceParam_state_01:                              ; preds = %SliceParam_state_03, %SliceParam_state_00, %SliceParam_entry
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 1
  %30 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %29, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 2
  %32 = load i64, ptr %31, align 4
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 3
  %34 = load i64, ptr %33, align 4
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 4
  %36 = load i64, ptr %35, align 4
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 7
  %38 = load i64, ptr %37, align 4
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 8
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 9
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 10
  %44 = load i64, ptr %43, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @102, i64 10 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %45 = add i64 %36, 1
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 5
  store i64 %45, ptr %46, align 4
  %47 = icmp slt i64 %45, %34
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 6
  store i1 %47, ptr %48, align 1
  br i1 %47, label %SliceParam_state_01_true, label %SliceParam_state_01_false

SliceParam_state_02:                              ; preds = %SliceParam_state_01_true, %SliceParam_entry
  %49 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 1
  %50 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %49, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 3
  %52 = load i64, ptr %51, align 4
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 4
  %54 = load i64, ptr %53, align 4
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 5
  %56 = load i64, ptr %55, align 4
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 6
  %58 = load i1, ptr %57, align 1
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 7
  %60 = load i64, ptr %59, align 4
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 10
  %62 = load i64, ptr %61, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @102, i64 10 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 11
  %64 = load ptr, ptr %63, align 8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %SliceParam_state_02_init, label %SliceParam_state_02_poll

SliceParam_state_03:                              ; preds = %SliceParam_state_02_ready, %SliceParam_entry
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 1
  %67 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %66, align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 3
  %69 = load i64, ptr %68, align 4
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 4
  %71 = load i64, ptr %70, align 4
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 5
  %73 = load i64, ptr %72, align 4
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 6
  %75 = load i1, ptr %74, align 1
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 7
  %77 = load i64, ptr %76, align 4
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 10
  %79 = load i64, ptr %78, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @102, i64 10 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 false)
  %80 = add i64 %77, %79
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 7
  store i64 %80, ptr %81, align 4
  %82 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 5
  %83 = load i64, ptr %82, align 4
  %84 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 4
  store i64 %83, ptr %84, align 4
  %85 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, 0
  %86 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, 1
  %87 = icmp slt i64 %73, 0
  %88 = icmp sge i64 %73, %86
  %89 = or i1 %88, %87
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %89)
  %90 = getelementptr inbounds i64, ptr %85, i64 %73
  %91 = load i64, ptr %90, align 4
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 2
  store i64 %91, ptr %92, align 4
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 8
  store ptr %90, ptr %93, align 8
  %94 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %91)
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 9
  store ptr %94, ptr %95, align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 10
  store i64 %79, ptr %96, align 4
  %97 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %97, align 1
  br label %SliceParam_state_01

SliceParam_state_04:                              ; preds = %SliceParam_state_01_false, %SliceParam_entry
  %98 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 1
  %99 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %98, align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 2
  %101 = load i64, ptr %100, align 4
  %102 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 3
  %103 = load i64, ptr %102, align 4
  %104 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 4
  %105 = load i64, ptr %104, align 4
  %106 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 5
  %107 = load i64, ptr %106, align 4
  %108 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 6
  %109 = load i1, ptr %108, align 1
  %110 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 7
  %111 = load i64, ptr %110, align 4
  %112 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 8
  %113 = load ptr, ptr %112, align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 9
  %115 = load ptr, ptr %114, align 8
  %116 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 10
  %117 = load i64, ptr %116, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @102, i64 10 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %118 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 7
  %119 = load i64, ptr %118, align 4
  %120 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %111)
  %121 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %122 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %121, 0
  %123 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %122, ptr %120, 1
  %124 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 12
  store i64 %119, ptr %124, align 4
  %125 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %125, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @102, i64 10 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %126 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 12
  %127 = load i64, ptr %126, align 4
  %128 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %127, 1
  %129 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %128, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %129

SliceParam_state_done:                            ; preds = %SliceParam_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @102, i64 10 }, i64 5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, i1 false, i1 true)
  %130 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 12
  %131 = load i64, ptr %130, align 4
  %132 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %131, 1
  %133 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %132, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %133

SliceParam_state_unreach:                         ; preds = %SliceParam_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_8:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

SliceParam_state_01_true:                         ; preds = %SliceParam_state_01
  %134 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 5
  store i64 %45, ptr %134, align 4
  %135 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 6
  store i1 %47, ptr %135, align 1
  %136 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %136, align 1
  br label %SliceParam_state_02

SliceParam_state_01_false:                        ; preds = %SliceParam_state_01
  %137 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 5
  store i64 %45, ptr %137, align 4
  %138 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 6
  store i1 %47, ptr %138, align 1
  %139 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %139, align 1
  br label %SliceParam_state_04

SliceParam_state_02_init:                         ; preds = %SliceParam_state_02
  %140 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 1
  %141 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %140, align 8
  %142 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 3
  %143 = load i64, ptr %142, align 4
  %144 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 4
  %145 = load i64, ptr %144, align 4
  %146 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 5
  %147 = load i64, ptr %146, align 4
  %148 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 6
  %149 = load i1, ptr %148, align 1
  %150 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 7
  %151 = load i64, ptr %150, align 4
  %152 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 10
  %153 = load i64, ptr %152, align 4
  %154 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %141, 0
  %155 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %141, 1
  %156 = icmp slt i64 %147, 0
  %157 = icmp sge i64 %147, %155
  %158 = or i1 %157, %156
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %158)
  %159 = getelementptr inbounds i64, ptr %154, i64 %147
  %160 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 8
  store ptr %159, ptr %160, align 8
  %161 = load i64, ptr %159, align 4
  %162 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 2
  store i64 %161, ptr %162, align 4
  %163 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %161)
  %164 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 9
  store ptr %163, ptr %164, align 8
  store ptr %163, ptr %63, align 8
  br label %SliceParam_state_02_poll

SliceParam_state_02_poll:                         ; preds = %SliceParam_state_02_init, %SliceParam_state_02
  %165 = load ptr, ptr %63, align 8
  %166 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %165, ptr %1)
  %167 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %166, 0
  br i1 %167, label %SliceParam_state_02_ready, label %SliceParam_state_02_pending

SliceParam_state_02_ready:                        ; preds = %SliceParam_state_02_poll
  %168 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %166, 1
  %169 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 10
  store i64 %168, ptr %169, align 4
  store ptr null, ptr %63, align 8
  %170 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %170, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @102, i64 10 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %SliceParam_state_03

SliceParam_state_02_pending:                      ; preds = %SliceParam_state_02_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @102, i64 10 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
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
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.SliceParam$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/types.(*StringParam$State).Poll"(ptr %0, ptr %1) {
StringParam_entry:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  %4 = sext i8 %3 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @109, i64 11 }, i64 %4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
  switch i8 %3, label %StringParam_state_unreach [
    i8 0, label %StringParam_state_00
    i8 1, label %StringParam_state_01
    i8 2, label %StringParam_state_done
  ]

StringParam_state_00:                             ; preds = %StringParam_entry
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 1
  %6 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %5, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 2
  %8 = load i64, ptr %7, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @109, i64 11 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %StringParam_state_00_init, label %StringParam_state_00_poll

StringParam_state_01:                             ; preds = %StringParam_state_00_ready, %StringParam_entry
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 1
  %13 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %12, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 2
  %15 = load i64, ptr %14, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @109, i64 11 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 2
  %17 = load i64, ptr %16, align 4
  %18 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %15)
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %19, 0
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %20, ptr %18, 1
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 4
  store i64 %17, ptr %22, align 4
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %23, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @109, i64 11 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 4
  %25 = load i64, ptr %24, align 4
  %26 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %25, 1
  %27 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %26, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %27

StringParam_state_done:                           ; preds = %StringParam_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @109, i64 11 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, i1 false, i1 true)
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 4
  %29 = load i64, ptr %28, align 4
  %30 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %29, 1
  %31 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %30, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %31

StringParam_state_unreach:                        ; preds = %StringParam_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_5:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

StringParam_state_00_init:                        ; preds = %StringParam_state_00
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 1
  %33 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %32, align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 2
  %35 = load i64, ptr %34, align 4
  %36 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %33, 1
  %37 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %36)
  store ptr %37, ptr %9, align 8
  br label %StringParam_state_00_poll

StringParam_state_00_poll:                        ; preds = %StringParam_state_00_init, %StringParam_state_00
  %38 = load ptr, ptr %9, align 8
  %39 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %38, ptr %1)
  %40 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %39, 0
  br i1 %40, label %StringParam_state_00_ready, label %StringParam_state_00_pending

StringParam_state_00_ready:                       ; preds = %StringParam_state_00_poll
  %41 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %39, 1
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 2
  store i64 %41, ptr %42, align 4
  store ptr null, ptr %9, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %43, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @109, i64 11 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %StringParam_state_01

StringParam_state_00_pending:                     ; preds = %StringParam_state_00_poll
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @109, i64 11 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
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
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.StringParam$State")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4
}

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/types.(*StructFieldAccess$State).Poll"(ptr %0, ptr %1) {
StructFieldAccess_entry:
  %2 = alloca %"github.com/goplus/llgo/cl/_testpull/types.Point", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 0
  %4 = load i8, ptr %3, align 1
  %5 = sext i8 %4 to i64
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @111, i64 17 }, i64 %5, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i1 false, i1 false)
  switch i8 %4, label %StructFieldAccess_state_unreach [
    i8 0, label %StructFieldAccess_state_00
    i8 1, label %StructFieldAccess_state_01
    i8 2, label %StructFieldAccess_state_02
    i8 3, label %StructFieldAccess_state_done
  ]

StructFieldAccess_state_00:                       ; preds = %StructFieldAccess_entry
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 2
  %7 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %6, align 4
  store %"github.com/goplus/llgo/cl/_testpull/types.Point" %7, ptr %2, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 1
  %9 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 4
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 6
  %13 = load i64, ptr %12, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @111, i64 17 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 7
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %StructFieldAccess_state_00_init, label %StructFieldAccess_state_00_poll

StructFieldAccess_state_01:                       ; preds = %StructFieldAccess_state_00_ready, %StructFieldAccess_entry
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 2
  %18 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %17, align 4
  store %"github.com/goplus/llgo/cl/_testpull/types.Point" %18, ptr %2, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 1
  %20 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %19, align 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 4
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 6
  %24 = load i64, ptr %23, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @111, i64 17 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 true, i1 false)
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 8
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %StructFieldAccess_state_01_init, label %StructFieldAccess_state_01_poll

StructFieldAccess_state_02:                       ; preds = %StructFieldAccess_state_01_ready, %StructFieldAccess_entry
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 2
  %29 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %28, align 4
  store %"github.com/goplus/llgo/cl/_testpull/types.Point" %29, ptr %2, align 4
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 1
  %31 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %30, align 4
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 4
  %33 = load i64, ptr %32, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 6
  %35 = load i64, ptr %34, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @111, i64 17 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i1 false, i1 true)
  %36 = add i64 %33, %35
  %37 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %36)
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %38, 0
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %39, ptr %37, 1
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 9
  store i64 %36, ptr %41, align 4
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 2
  %43 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %2, align 4
  store %"github.com/goplus/llgo/cl/_testpull/types.Point" %43, ptr %42, align 4
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %44, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @111, i64 17 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 false, i1 true)
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 9
  %46 = load i64, ptr %45, align 4
  %47 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %46, 1
  %48 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %47, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %48

StructFieldAccess_state_done:                     ; preds = %StructFieldAccess_entry
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @111, i64 17 }, i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, i1 false, i1 true)
  %49 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 9
  %50 = load i64, ptr %49, align 4
  %51 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef }, i64 %50, 1
  %52 = insertvalue %"github.com/goplus/llgo/async.Poll[int]" %51, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, 2
  ret %"github.com/goplus/llgo/async.Poll[int]" %52

StructFieldAccess_state_unreach:                  ; preds = %StructFieldAccess_entry
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_6:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

StructFieldAccess_state_00_init:                  ; preds = %StructFieldAccess_state_00
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 1
  %54 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %53, align 4
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 2
  %56 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %55, align 4
  store %"github.com/goplus/llgo/cl/_testpull/types.Point" %56, ptr %2, align 4
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 4
  %58 = load i64, ptr %57, align 4
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 6
  %60 = load i64, ptr %59, align 4
  store %"github.com/goplus/llgo/cl/_testpull/types.Point" %54, ptr %2, align 4
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %2, i32 0, i32 0
  %62 = load i64, ptr %61, align 4
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 3
  store i64 %62, ptr %63, align 4
  %64 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %62)
  store ptr %64, ptr %14, align 8
  br label %StructFieldAccess_state_00_poll

StructFieldAccess_state_00_poll:                  ; preds = %StructFieldAccess_state_00_init, %StructFieldAccess_state_00
  %65 = load ptr, ptr %14, align 8
  %66 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %65, ptr %1)
  %67 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %66, 0
  br i1 %67, label %StructFieldAccess_state_00_ready, label %StructFieldAccess_state_00_pending

StructFieldAccess_state_00_ready:                 ; preds = %StructFieldAccess_state_00_poll
  %68 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %66, 1
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 4
  store i64 %68, ptr %69, align 4
  store ptr null, ptr %14, align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 2
  %71 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %2, align 4
  store %"github.com/goplus/llgo/cl/_testpull/types.Point" %71, ptr %70, align 4
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %72, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @111, i64 17 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %StructFieldAccess_state_01

StructFieldAccess_state_00_pending:               ; preds = %StructFieldAccess_state_00_poll
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 2
  %74 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %2, align 4
  store %"github.com/goplus/llgo/cl/_testpull/types.Point" %74, ptr %73, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @111, i64 17 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

StructFieldAccess_state_01_init:                  ; preds = %StructFieldAccess_state_01
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 1
  %76 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %75, align 4
  %77 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 2
  %78 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %77, align 4
  store %"github.com/goplus/llgo/cl/_testpull/types.Point" %78, ptr %2, align 4
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 4
  %80 = load i64, ptr %79, align 4
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 6
  %82 = load i64, ptr %81, align 4
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %2, i32 0, i32 1
  %84 = load i64, ptr %83, align 4
  %85 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 5
  store i64 %84, ptr %85, align 4
  %86 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %84)
  store ptr %86, ptr %25, align 8
  br label %StructFieldAccess_state_01_poll

StructFieldAccess_state_01_poll:                  ; preds = %StructFieldAccess_state_01_init, %StructFieldAccess_state_01
  %87 = load ptr, ptr %25, align 8
  %88 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %87, ptr %1)
  %89 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %88, 0
  br i1 %89, label %StructFieldAccess_state_01_ready, label %StructFieldAccess_state_01_pending

StructFieldAccess_state_01_ready:                 ; preds = %StructFieldAccess_state_01_poll
  %90 = extractvalue %"github.com/goplus/llgo/async.Poll[int]" %88, 1
  %91 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 6
  store i64 %90, ptr %91, align 4
  store ptr null, ptr %25, align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 2
  %93 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %2, align 4
  store %"github.com/goplus/llgo/cl/_testpull/types.Point" %93, ptr %92, align 4
  %94 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %94, align 1
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @111, i64 17 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i1 true, i1 false)
  br label %StructFieldAccess_state_02

StructFieldAccess_state_01_pending:               ; preds = %StructFieldAccess_state_01_poll
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 2
  %96 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %2, align 4
  store %"github.com/goplus/llgo/cl/_testpull/types.Point" %96, ptr %95, align 4
  call void @"github.com/goplus/llgo/async.PullDebugState"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @111, i64 17 }, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, i1 true, i1 false)
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
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State")
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
