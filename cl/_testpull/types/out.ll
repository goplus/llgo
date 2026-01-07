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
%"github.com/goplus/llgo/cl/_testpull/types.Divmod$State" = type { i8, i64, i64, i64, i64, i64, ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/async.Poll[int]" = type { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.eface" }
%"github.com/goplus/llgo/async.AsyncFuture[int]" = type { { ptr, ptr }, i1, i1, i64 }
%"github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]" = type { %"github.com/goplus/llgo/async.Tuple2[int,int]" }
%"github.com/goplus/llgo/async.Context" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }
%"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State" = type { i8, i64, i64, i64, i64, ptr, ptr }
%"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" = type { i1, %"github.com/goplus/llgo/async.Result[int]", %"github.com/goplus/llgo/runtime/internal/runtime.eface" }
%"github.com/goplus/llgo/async.Result[int]" = type { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }
%"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State" = type { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]" = type { %"github.com/goplus/llgo/async.Result[int]" }
%"github.com/goplus/llgo/cl/_testpull/types.MapParam$State" = type { i8, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/async.ReadyFuture[int]" = type { i64 }
%"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State" = type { i8, ptr, ptr }
%"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State" = type { i8, i64, i64, ptr }
%"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State" = type { i8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i64, ptr }
%"github.com/goplus/llgo/cl/_testpull/types.StringParam$State" = type { i8, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State" = type { i8, %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr, i64, ptr, ptr }
%"github.com/goplus/llgo/cl/_testpull/types.Point" = type { i64, i64 }

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
@"_llgo_github.com/goplus/llgo/async.Context" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 29200871, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Context" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 13 }, ptr @"*_llgo_github.com/goplus/llgo/async.Context" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$RRVsRJkYHdoR-mI2_FrzGPRXwNM5u9bW2w1hN455sNs$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
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
@"_llgo_struct$RRVsRJkYHdoR-mI2_FrzGPRXwNM5u9bW2w1hN455sNs$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/async.Waker", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/async.Context"], align 8
@"_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 40, i64 40, i32 97944769, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 57 }, ptr @"*_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$X3pV_NpeB76qE-5DoDuuwD4_ZYrxCpyTVVq7NkDM6NE$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).Error", ptr @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]].Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).HasError", ptr @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]].HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).IsReady", ptr @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]].IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, ptr @"_llgo_func$nToCCYBH4T19EsKF-IRXpBfaubZ2qtPBnGpgE2882a4", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).Value", ptr @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]].Value" }] }, align 8
@19 = private unnamed_addr constant [57 x i8] c"async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", align 1
@"*_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1490419624, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 57 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).Error", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).HasError", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).IsReady", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, ptr @"_llgo_func$nToCCYBH4T19EsKF-IRXpBfaubZ2qtPBnGpgE2882a4", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).Value", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Tuple2[int, int]]).Value" }] }, align 8
@20 = private unnamed_addr constant [5 x i8] c"Error", align 1
@"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1398528794, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 19 }, ptr @"*_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8$out", i64 1, i64 1 } }, align 8
@21 = private unnamed_addr constant [19 x i8] c"func() interface {}", align 1
@"*_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1160547289, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 19 }, ptr null }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8" }, align 8
@_llgo_any = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1376530322, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 12 }, ptr @"*_llgo_any" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
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
@"github.com/goplus/llgo/cl/_testpull/types.struct$X3pV_NpeB76qE-5DoDuuwD4_ZYrxCpyTVVq7NkDM6NE$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @_llgo_bool, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/async.Tuple2[int,int]", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 3 }, ptr @_llgo_any, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]"], align 8
@"_llgo_iface$UF-K7t4EfagXSm-WTaHawm21nnTgf-85MVOaez9AbyQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1918491914, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 92 }, ptr @"*_llgo_iface$UF-K7t4EfagXSm-WTaHawm21nnTgf-85MVOaez9AbyQ" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$UF-K7t4EfagXSm-WTaHawm21nnTgf-85MVOaez9AbyQ$imethods", i64 1, i64 1 } }, align 8
@30 = private unnamed_addr constant [92 x i8] c"interface { Poll(*async.Context) async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]] }", align 1
@"*_llgo_iface$UF-K7t4EfagXSm-WTaHawm21nnTgf-85MVOaez9AbyQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1236006575, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 92 }, ptr null }, ptr @"_llgo_iface$UF-K7t4EfagXSm-WTaHawm21nnTgf-85MVOaez9AbyQ" }, align 8
@"_llgo_iface$UF-K7t4EfagXSm-WTaHawm21nnTgf-85MVOaez9AbyQ$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU" }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/types.Divmod$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1135343364, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 18 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.Divmod$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*Divmod$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*Divmod$State).Poll" }] }, align 8
@31 = private unnamed_addr constant [18 x i8] c"types.Divmod$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/types.Divmod$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 64, i32 -429288470, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.Divmod$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 18 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.Divmod$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$p8PWNqIFpSLO-TQtjkmWeeb8m8krwca1XSyeHbuE1T4$fields", i64 8, i64 8 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
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
@"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 0, i32 1769159236, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
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
@"github.com/goplus/llgo/cl/_testpull/types.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 2 }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 7 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @_llgo_bool, i64 17, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2131144854, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 10 }, ptr @"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out", i64 1, i64 1 } }, align 8
@50 = private unnamed_addr constant [10 x i8] c"func() int", align 1
@"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1805835775, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 10 }, ptr null }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1655717054, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 36 }, ptr @"*_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$out", i64 1, i64 1 } }, align 8
@51 = private unnamed_addr constant [36 x i8] c"func(*async.Context) async.Poll[int]", align 1
@"*_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -62824656, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 36 }, ptr null }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }, align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/async.Context"], align 8
@"_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 801809575, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 15 }, ptr @"*_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$M9E5HRdqyc11Zqvq07yhy6frK_fAyRGIc35bZKl9nrs$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error", ptr @"github.com/goplus/llgo/async.Poll[int].Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError", ptr @"github.com/goplus/llgo/async.Poll[int].HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.Poll[int].IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.Poll[int].Value" }] }, align 8
@52 = private unnamed_addr constant [15 x i8] c"async.Poll[int]", align 1
@"*_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -920093333, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 15 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError", ptr @"github.com/goplus/llgo/async.(*Poll[int]).HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value" }] }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$M9E5HRdqyc11Zqvq07yhy6frK_fAyRGIc35bZKl9nrs$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @_llgo_bool, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 3 }, ptr @_llgo_any, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]"], align 8
@53 = private unnamed_addr constant [4 x i8] c"sub1", align 1
@"github.com/goplus/llgo/cl/_testpull/types.struct$p8PWNqIFpSLO-TQtjkmWeeb8m8krwca1XSyeHbuE1T4$fields" = weak_odr constant [8 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 66007552, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 21 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$9R5L_lh66CDHzCqrYvgjs-i0n0AUq8aeFIZkZuYQUMU", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*GetMinMax$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*GetMinMax$State).Poll" }] }, align 8
@54 = private unnamed_addr constant [21 x i8] c"types.GetMinMax$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 56, i64 56, i32 -386873785, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 21 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$vX2WonqsfAV-7j_XNKTvcjfsYGDmBxejBzfX4zwl_6s$fields", i64 7, i64 7 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$vX2WonqsfAV-7j_XNKTvcjfsYGDmBxejBzfX4zwl_6s$fields" = weak_odr constant [7 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"map[_llgo_string]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1641501154, i8 0, i8 8, i8 8, i8 53, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 14 }, ptr @"*map[_llgo_string]_llgo_int" }, ptr @_llgo_string, ptr @_llgo_int, ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc", { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehash", ptr @_llgo_string }, i8 16, i8 8, i16 208, i32 12 }, align 8
@55 = private unnamed_addr constant [14 x i8] c"map[string]int", align 1
@"*map[_llgo_string]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 762774621, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 14 }, ptr null }, ptr @"map[_llgo_string]_llgo_int" }, align 8
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 6 }, ptr @"*_llgo_string" }, align 8
@56 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 208, i64 208, i32 -2085301039, i8 0, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 82 }, ptr @"*github.com/goplus/llgo/cl/_testpull/types.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc$fields", i64 4, i64 4 } }, align 8
@57 = private unnamed_addr constant [82 x i8] c"struct { topbits [8]uint8; keys [8]string; elems [8]int; overflow unsafe.Pointer }", align 1
@"*github.com/goplus/llgo/cl/_testpull/types.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 3417020, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 82 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc" }, align 8
@58 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@"[8]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 307038632, i8 8, i8 1, i8 1, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_uint8" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 8 }, ptr @"*[8]_llgo_uint8" }, ptr @_llgo_uint8, ptr @"[]_llgo_uint8", i64 8 }, align 8
@59 = private unnamed_addr constant [8 x i8] c"[8]uint8", align 1
@"*[8]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -566230779, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 8 }, ptr null }, ptr @"[8]_llgo_uint8" }, align 8
@_llgo_uint8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 269156761, i8 12, i8 1, i8 1, i8 40, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 5 }, ptr @"*_llgo_uint8" }, align 8
@60 = private unnamed_addr constant [5 x i8] c"uint8", align 1
@"*_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1277858201, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 5 }, ptr null }, ptr @_llgo_uint8 }, align 8
@"[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 370346748, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 7 }, ptr @"*[]_llgo_uint8" }, ptr @_llgo_uint8 }, align 8
@61 = private unnamed_addr constant [7 x i8] c"[]uint8", align 1
@"*[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2143776929, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 7 }, ptr null }, ptr @"[]_llgo_uint8" }, align 8
@62 = private unnamed_addr constant [4 x i8] c"keys", align 1
@"[8]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 128, i64 120, i32 460245566, i8 0, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_string" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 9 }, ptr @"*[8]_llgo_string" }, ptr @_llgo_string, ptr @"[]_llgo_string", i64 8 }, align 8
@63 = private unnamed_addr constant [9 x i8] c"[8]string", align 1
@"*[8]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 368026044, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 9 }, ptr null }, ptr @"[8]_llgo_string" }, align 8
@"[]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 608974920, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 8 }, ptr @"*[]_llgo_string" }, ptr @_llgo_string }, align 8
@64 = private unnamed_addr constant [8 x i8] c"[]string", align 1
@"*[]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -157880218, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 8 }, ptr null }, ptr @"[]_llgo_string" }, align 8
@65 = private unnamed_addr constant [5 x i8] c"elems", align 1
@"[8]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 0, i32 -1310855284, i8 8, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_int" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 6 }, ptr @"*[8]_llgo_int" }, ptr @_llgo_int, ptr @"[]_llgo_int", i64 8 }, align 8
@66 = private unnamed_addr constant [6 x i8] c"[8]int", align 1
@"*[8]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1841254256, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 6 }, ptr null }, ptr @"[8]_llgo_int" }, align 8
@"[]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -1129561019, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 5 }, ptr @"*[]_llgo_int" }, ptr @_llgo_int }, align 8
@67 = private unnamed_addr constant [5 x i8] c"[]int", align 1
@"*[]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1428175521, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 5 }, ptr null }, ptr @"[]_llgo_int" }, align 8
@68 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@"github.com/goplus/llgo/cl/_testpull/types.struct$Zjz3Xuhag4fhTrc62mjJpFnVpx-gapi2RlFUTxk7rTc$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 7 }, ptr @"[8]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 4 }, ptr @"[8]_llgo_string", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 5 }, ptr @"[8]_llgo_int", i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 8 }, ptr @_llgo_Pointer, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1485110546, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 59 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_func$18IbIdsW5s12z12VYvKfPxtB_5lqm5yDNtFMb3Hjozw", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[github.com/goplus/llgo/async.Result[int]]).Await", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[github.com/goplus/llgo/async.Result[int]]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[github.com/goplus/llgo/async.Result[int]]).Poll", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[github.com/goplus/llgo/async.Result[int]]).Poll" }] }, align 8
@69 = private unnamed_addr constant [59 x i8] c"async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]", align 1
@"_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 24, i32 504401203, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 59 }, ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$a2kIjmWEj4soAG8ikWLa-WCoYk4eoItgOcUmPZ-eQNY$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"_llgo_github.com/goplus/llgo/async.Result[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 24, i32 411841992, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Result[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 17 }, ptr @"*_llgo_github.com/goplus/llgo/async.Result[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$oLcYhpB3wDWLnk5tkoUFCV4RjUr6h9SZHyPCuMxeWiQ$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 5 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Result[int]).IsErr", ptr @"github.com/goplus/llgo/async.Result[int].IsErr" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 4 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Result[int]).IsOk", ptr @"github.com/goplus/llgo/async.Result[int].IsOk" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Result[int]).Unwrap", ptr @"github.com/goplus/llgo/async.Result[int].Unwrap" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 8 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr @"github.com/goplus/llgo/async.(*Result[int]).UnwrapOr", ptr @"github.com/goplus/llgo/async.Result[int].UnwrapOr" }] }, align 8
@70 = private unnamed_addr constant [17 x i8] c"async.Result[int]", align 1
@"*_llgo_github.com/goplus/llgo/async.Result[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1214561949, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 17 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Result[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 5 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Result[int]).IsErr", ptr @"github.com/goplus/llgo/async.(*Result[int]).IsErr" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 4 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Result[int]).IsOk", ptr @"github.com/goplus/llgo/async.(*Result[int]).IsOk" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 6 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Result[int]).Unwrap", ptr @"github.com/goplus/llgo/async.(*Result[int]).Unwrap" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 8 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr @"github.com/goplus/llgo/async.(*Result[int]).UnwrapOr", ptr @"github.com/goplus/llgo/async.(*Result[int]).UnwrapOr" }] }, align 8
@71 = private unnamed_addr constant [5 x i8] c"IsErr", align 1
@72 = private unnamed_addr constant [4 x i8] c"IsOk", align 1
@73 = private unnamed_addr constant [6 x i8] c"Unwrap", align 1
@74 = private unnamed_addr constant [8 x i8] c"UnwrapOr", align 1
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134531106, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 13 }, ptr @"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out", i64 1, i64 1 } }, align 8
@75 = private unnamed_addr constant [13 x i8] c"func(int) int", align 1
@"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1763581361, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 13 }, ptr null }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@76 = private unnamed_addr constant [3 x i8] c"Err", align 1
@_llgo_error = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1462738452, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 5 }, ptr @"*_llgo_error" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU$imethods", i64 1, i64 1 } }, align 8
@77 = private unnamed_addr constant [5 x i8] c"error", align 1
@"*_llgo_error" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1621558991, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 5 }, ptr null }, ptr @_llgo_error }, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1419376263, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 13 }, ptr @"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out", i64 1, i64 1 } }, align 8
@78 = private unnamed_addr constant [13 x i8] c"func() string", align 1
@"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1900367307, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 13 }, ptr null }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 5 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }], align 8
@"_llgo_struct$oLcYhpB3wDWLnk5tkoUFCV4RjUr6h9SZHyPCuMxeWiQ$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 3 }, ptr @_llgo_error, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$a2kIjmWEj4soAG8ikWLa-WCoYk4eoItgOcUmPZ-eQNY$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/async.Result[int]", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$18IbIdsW5s12z12VYvKfPxtB_5lqm5yDNtFMb3Hjozw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1921098413, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 24 }, ptr @"*_llgo_func$18IbIdsW5s12z12VYvKfPxtB_5lqm5yDNtFMb3Hjozw" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$18IbIdsW5s12z12VYvKfPxtB_5lqm5yDNtFMb3Hjozw$out", i64 1, i64 1 } }, align 8
@79 = private unnamed_addr constant [24 x i8] c"func() async.Result[int]", align 1
@"*_llgo_func$18IbIdsW5s12z12VYvKfPxtB_5lqm5yDNtFMb3Hjozw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2077550105, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 24 }, ptr null }, ptr @"_llgo_func$18IbIdsW5s12z12VYvKfPxtB_5lqm5yDNtFMb3Hjozw" }, align 8
@"_llgo_func$18IbIdsW5s12z12VYvKfPxtB_5lqm5yDNtFMb3Hjozw$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Result[int]"], align 8
@"_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323037639, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 73 }, ptr @"*_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8$out", i64 1, i64 1 } }, align 8
@80 = private unnamed_addr constant [73 x i8] c"func(*async.Context) async.Poll[github.com/goplus/llgo/async.Result[int]]", align 1
@"*_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 118515476, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 73 }, ptr null }, ptr @"_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8" }, align 8
@"_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/async.Context"], align 8
@"_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 48, i64 48, i32 -925489224, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 52 }, ptr @"*_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$XLym_Z3pAbGOnuZ91-hGXV_6lqLr_myTctbTNGwH_0k$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).Error", ptr @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]].Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).HasError", ptr @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]].HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).IsReady", ptr @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]].IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, ptr @"_llgo_func$18IbIdsW5s12z12VYvKfPxtB_5lqm5yDNtFMb3Hjozw", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).Value", ptr @"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]].Value" }] }, align 8
@81 = private unnamed_addr constant [52 x i8] c"async.Poll[github.com/goplus/llgo/async.Result[int]]", align 1
@"*_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 605867178, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 52 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 5 }, ptr @"_llgo_func$qr5k1qEWsN-DT0K_2GdiJjFmaF5XRqCiKsG-CTPmlC8", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).Error", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).HasError", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).HasError" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).IsReady", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, ptr @"_llgo_func$18IbIdsW5s12z12VYvKfPxtB_5lqm5yDNtFMb3Hjozw", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).Value", ptr @"github.com/goplus/llgo/async.(*Poll[github.com/goplus/llgo/async.Result[int]]).Value" }] }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$XLym_Z3pAbGOnuZ91-hGXV_6lqLr_myTctbTNGwH_0k$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 5 }, ptr @_llgo_bool, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/async.Result[int]", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 3 }, ptr @_llgo_any, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]"], align 8
@"_llgo_iface$XGb4EXxXWKV-dYcJTsDF_8cRVN34b3GvQfT6bkSD8WU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1994897336, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 87 }, ptr @"*_llgo_iface$XGb4EXxXWKV-dYcJTsDF_8cRVN34b3GvQfT6bkSD8WU" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$XGb4EXxXWKV-dYcJTsDF_8cRVN34b3GvQfT6bkSD8WU$imethods", i64 1, i64 1 } }, align 8
@82 = private unnamed_addr constant [87 x i8] c"interface { Poll(*async.Context) async.Poll[github.com/goplus/llgo/async.Result[int]] }", align 1
@"*_llgo_iface$XGb4EXxXWKV-dYcJTsDF_8cRVN34b3GvQfT6bkSD8WU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 901209326, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 87 }, ptr null }, ptr @"_llgo_iface$XGb4EXxXWKV-dYcJTsDF_8cRVN34b3GvQfT6bkSD8WU" }, align 8
@"_llgo_iface$XGb4EXxXWKV-dYcJTsDF_8cRVN34b3GvQfT6bkSD8WU$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8" }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1638217846, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 27 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*LookupAndDouble$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*LookupAndDouble$State).Poll" }] }, align 8
@83 = private unnamed_addr constant [27 x i8] c"types.LookupAndDouble$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 40, i64 40, i32 -1147440325, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 27 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$qvYYY5L6Ilf08BgesN9y8STiwIV0uZOdenU30-hIfaE$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$qvYYY5L6Ilf08BgesN9y8STiwIV0uZOdenU30-hIfaE$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 6 }, ptr @"map[_llgo_string]_llgo_int", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @_llgo_string, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -103283099, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @84, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Await", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Poll", ptr @"github.com/goplus/llgo/async.(*ReadyFuture[int]).Poll" }] }, align 8
@84 = private unnamed_addr constant [22 x i8] c"async.ReadyFuture[int]", align 1
@"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1814719306, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @84, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 968294533, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 50 }, ptr @"*_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0$imethods", i64 1, i64 1 } }, align 8
@85 = private unnamed_addr constant [50 x i8] c"interface { Poll(*async.Context) async.Poll[int] }", align 1
@"*_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1655281012, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 50 }, ptr null }, ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" }, align 8
@"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/types.MapParam$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -856744270, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 20 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.MapParam$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*MapParam$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*MapParam$State).Poll" }] }, align 8
@86 = private unnamed_addr constant [20 x i8] c"types.MapParam$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/types.MapParam$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 40, i64 40, i32 54765331, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 20 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.MapParam$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$qvYYY5L6Ilf08BgesN9y8STiwIV0uZOdenU30-hIfaE$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/types.PointerParam$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1890127781, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @87, i64 24 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.PointerParam$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*PointerParam$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*PointerParam$State).Poll" }] }, align 8
@87 = private unnamed_addr constant [24 x i8] c"types.PointerParam$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/types.PointerParam$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 24, i32 -1176857743, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.PointerParam$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @87, i64 24 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.PointerParam$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$z7_EEL7pElETele540-SrMJjZtWZzc-cqgcxKYwL5vE$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$z7_EEL7pElETele540-SrMJjZtWZzc-cqgcxKYwL5vE$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 6 }, ptr @"*_llgo_int", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 133054281, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @88, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$xJd8_BZL-CZgWSAVNkVU-LaqaPCvrR9gYJzwD1J-GP8", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*SafeDivide$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*SafeDivide$State).Poll" }] }, align 8
@88 = private unnamed_addr constant [22 x i8] c"types.SafeDivide$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 688455267, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @88, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$DREZ6m4ylB-dgAW6-cyngcrB3F9NDNoQbyf-nfV0XeE$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$DREZ6m4ylB-dgAW6-cyngcrB3F9NDNoQbyf-nfV0XeE$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/types.SliceParam$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 343692552, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @89, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.SliceParam$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*SliceParam$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*SliceParam$State).Poll" }] }, align 8
@89 = private unnamed_addr constant [22 x i8] c"types.SliceParam$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/types.SliceParam$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 48, i64 48, i32 1393606221, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @89, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.SliceParam$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$cnpjwEx9_n89Ta3Tgwc66tBCUKyvolVl1vnksKomy54$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$cnpjwEx9_n89Ta3Tgwc66tBCUKyvolVl1vnksKomy54$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 6 }, ptr @"[]_llgo_int", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/types.StringParam$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -58551321, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @90, i64 23 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.StringParam$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*StringParam$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*StringParam$State).Poll" }] }, align 8
@90 = private unnamed_addr constant [23 x i8] c"types.StringParam$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/types.StringParam$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 273925782, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.StringParam$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @90, i64 23 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.StringParam$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$jjXIarK1UadPBzU1w9EG_XGWTKpkatItaWoq1qofu2A$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$jjXIarK1UadPBzU1w9EG_XGWTKpkatItaWoq1qofu2A$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 6 }, ptr @_llgo_string, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -68901220, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @91, i64 29 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*StructFieldAccess$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/types.(*StructFieldAccess$State).Poll" }] }, align 8
@91 = private unnamed_addr constant [29 x i8] c"types.StructFieldAccess$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 56, i64 56, i32 -1506970905, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @91, i64 29 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/types.struct$gyxm1-Af--qEf0SVzfYdmrk7zE2Ji2RdscdbHWdke3U$fields", i64 6, i64 6 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testpull/types.Point" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 -1984961403, i8 13, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.Point" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @92, i64 11 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.Point" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$EoN-2WQQZyu0WCtjjPX5UG3yM-s2ruKwcqP-tpve-Q8$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@92 = private unnamed_addr constant [11 x i8] c"types.Point", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testpull/types.Point" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -38123231, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @92, i64 11 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.Point" }, align 8
@93 = private unnamed_addr constant [1 x i8] c"X", align 1
@94 = private unnamed_addr constant [1 x i8] c"Y", align 1
@"_llgo_struct$EoN-2WQQZyu0WCtjjPX5UG3yM-s2ruKwcqP-tpve-Q8$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @93, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @94, i64 1 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/types.struct$gyxm1-Af--qEf0SVzfYdmrk7zE2Ji2RdscdbHWdke3U$fields" = weak_odr constant [6 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 6 }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/types.Point", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/types.Point", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/types.init$guard" = global i1 false, align 1
@95 = private unnamed_addr constant [45 x i8] c"Await() should be transformed by the compiler", align 1

define %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" @"github.com/goplus/llgo/cl/_testpull/types.(*Divmod$State).Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_5 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 3
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 4
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 5
  %13 = load i64, ptr %12, align 4
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 6
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %_llgo_7, label %_llgo_8

_llgo_2:                                          ; preds = %_llgo_9, %_llgo_0
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 1
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 2
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 3
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 4
  %24 = load i64, ptr %23, align 4
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 5
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 7
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %_llgo_11, label %_llgo_12

_llgo_3:                                          ; preds = %_llgo_13, %_llgo_0
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 1
  %31 = load i64, ptr %30, align 4
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 2
  %33 = load i64, ptr %32, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 3
  %35 = load i64, ptr %34, align 4
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 4
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 5
  %39 = load i64, ptr %38, align 4
  %40 = call %"github.com/goplus/llgo/async.Tuple2[int,int]" @"github.com/goplus/llgo/async.MakeTuple2[int,int]"(i64 %39, i64 %93)
  %41 = call ptr @"github.com/goplus/llgo/async.Return[github.com/goplus/llgo/async.Tuple2[int, int]]"(%"github.com/goplus/llgo/async.Tuple2[int,int]" %40)
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$UF-K7t4EfagXSm-WTaHawm21nnTgf-85MVOaez9AbyQ", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]")
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %42, 0
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %43, ptr %41, 1
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 0
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
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 1
  %55 = load i64, ptr %54, align 4
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 2
  %57 = load i64, ptr %56, align 4
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 3
  %59 = load i64, ptr %58, align 4
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 4
  %61 = load i64, ptr %60, align 4
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 5
  %63 = load i64, ptr %62, align 4
  %64 = sdiv i64 %59, %61
  %65 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %64)
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
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 5
  store i64 %72, ptr %73, align 4
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %74, align 1
  br label %_llgo_2

_llgo_10:                                         ; preds = %_llgo_8
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" zeroinitializer

_llgo_11:                                         ; preds = %_llgo_2
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 1
  %76 = load i64, ptr %75, align 4
  %77 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 2
  %78 = load i64, ptr %77, align 4
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 3
  %80 = load i64, ptr %79, align 4
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 4
  %82 = load i64, ptr %81, align 4
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 5
  %84 = load i64, ptr %83, align 4
  %85 = srem i64 %80, %82
  %86 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %85)
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
  %94 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %94, align 1
  br label %_llgo_3

_llgo_14:                                         ; preds = %_llgo_12
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

define ptr @"github.com/goplus/llgo/cl/_testpull/types.Divmod$Concrete"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 64)
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
  store ptr null, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Divmod$State", ptr %2, i32 0, i32 7
  store ptr null, ptr %10, align 8
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
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @95, i64 45 }, ptr %1, align 8
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

define %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" @"github.com/goplus/llgo/cl/_testpull/types.(*GetMinMax$State).Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_7 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
    i8 5, label %_llgo_6
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 3
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 4
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %_llgo_9, label %_llgo_10

_llgo_2:                                          ; preds = %_llgo_11, %_llgo_0
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 1
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 2
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 3
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 4
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 6
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %_llgo_13, label %_llgo_14

_llgo_3:                                          ; preds = %_llgo_15, %_llgo_0
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 1
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 2
  %29 = load i64, ptr %28, align 4
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 3
  %31 = load i64, ptr %30, align 4
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 4
  %33 = load i64, ptr %32, align 4
  %34 = icmp slt i64 %33, %114
  br i1 %34, label %_llgo_17, label %_llgo_18

_llgo_4:                                          ; preds = %_llgo_17, %_llgo_0
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 1
  %36 = load i64, ptr %35, align 4
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 2
  %38 = load i64, ptr %37, align 4
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 3
  %40 = load i64, ptr %39, align 4
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 4
  %42 = load i64, ptr %41, align 4
  %43 = alloca %"github.com/goplus/llgo/async.Tuple2[int,int]", align 8
  call void @llvm.memset(ptr %43, i8 0, i64 16, i1 false)
  %44 = getelementptr inbounds %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %43, i32 0, i32 0
  %45 = getelementptr inbounds %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %43, i32 0, i32 1
  store i64 %42, ptr %44, align 4
  store i64 %114, ptr %45, align 4
  %46 = load %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %43, align 4
  %47 = call ptr @"github.com/goplus/llgo/async.Return[github.com/goplus/llgo/async.Tuple2[int, int]]"(%"github.com/goplus/llgo/async.Tuple2[int,int]" %46)
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$UF-K7t4EfagXSm-WTaHawm21nnTgf-85MVOaez9AbyQ", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]")
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %48, 0
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %49, ptr %47, 1
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %51, align 1
  %52 = alloca %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", ptr %52, i32 0, i32 0
  store i1 true, ptr %53, align 1
  %54 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", ptr %52, i32 0, i32 1
  store { i64, i64 } zeroinitializer, ptr %54, align 4
  %55 = load %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", ptr %52, align 8
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %55

_llgo_5:                                          ; preds = %_llgo_18, %_llgo_0
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 1
  %57 = load i64, ptr %56, align 4
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 2
  %59 = load i64, ptr %58, align 4
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 3
  %61 = load i64, ptr %60, align 4
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 4
  %63 = load i64, ptr %62, align 4
  %64 = alloca %"github.com/goplus/llgo/async.Tuple2[int,int]", align 8
  call void @llvm.memset(ptr %64, i8 0, i64 16, i1 false)
  %65 = getelementptr inbounds %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %64, i32 0, i32 0
  %66 = getelementptr inbounds %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %64, i32 0, i32 1
  store i64 %114, ptr %65, align 4
  store i64 %63, ptr %66, align 4
  %67 = load %"github.com/goplus/llgo/async.Tuple2[int,int]", ptr %64, align 4
  %68 = call ptr @"github.com/goplus/llgo/async.Return[github.com/goplus/llgo/async.Tuple2[int, int]]"(%"github.com/goplus/llgo/async.Tuple2[int,int]" %67)
  %69 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$UF-K7t4EfagXSm-WTaHawm21nnTgf-85MVOaez9AbyQ", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Tuple2[int, int]]")
  %70 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %69, 0
  %71 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %70, ptr %68, 1
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %72, align 1
  %73 = alloca %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", ptr %73, i32 0, i32 0
  store i1 true, ptr %74, align 1
  %75 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", ptr %73, i32 0, i32 1
  store { i64, i64 } zeroinitializer, ptr %75, align 4
  %76 = load %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", ptr %73, align 8
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %76

_llgo_6:                                          ; preds = %_llgo_0
  %77 = alloca %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", ptr %77, i32 0, i32 0
  store i1 true, ptr %78, align 1
  %79 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", ptr %77, i32 0, i32 1
  store { i64, i64 } zeroinitializer, ptr %79, align 4
  %80 = load %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]", ptr %77, align 8
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" %80

_llgo_7:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" zeroinitializer

_llgo_8:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" zeroinitializer

_llgo_9:                                          ; preds = %_llgo_1
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 1
  %82 = load i64, ptr %81, align 4
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 2
  %84 = load i64, ptr %83, align 4
  %85 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 3
  %86 = load i64, ptr %85, align 4
  %87 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 4
  %88 = load i64, ptr %87, align 4
  %89 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %82)
  store ptr %89, ptr %12, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_1
  %90 = load ptr, ptr %12, align 8
  %91 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %90, ptr %1)
  %92 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %91, ptr %92, align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %92, i32 0, i32 0
  %94 = load i1, ptr %93, align 1
  br i1 %94, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %95 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %92, i32 0, i32 1
  %96 = load i64, ptr %95, align 4
  %97 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 4
  store i64 %96, ptr %97, align 4
  %98 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %98, align 1
  br label %_llgo_2

_llgo_12:                                         ; preds = %_llgo_10
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" zeroinitializer

_llgo_13:                                         ; preds = %_llgo_2
  %99 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 1
  %100 = load i64, ptr %99, align 4
  %101 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 2
  %102 = load i64, ptr %101, align 4
  %103 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 3
  %104 = load i64, ptr %103, align 4
  %105 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 4
  %106 = load i64, ptr %105, align 4
  %107 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %104)
  store ptr %107, ptr %23, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_2
  %108 = load ptr, ptr %23, align 8
  %109 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %108, ptr %1)
  %110 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %109, ptr %110, align 8
  %111 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %110, i32 0, i32 0
  %112 = load i1, ptr %111, align 1
  br i1 %112, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %113 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %110, i32 0, i32 1
  %114 = load i64, ptr %113, align 4
  %115 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %115, align 1
  br label %_llgo_3

_llgo_16:                                         ; preds = %_llgo_14
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Tuple2[int, int]]" zeroinitializer

_llgo_17:                                         ; preds = %_llgo_3
  %116 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %116, align 1
  br label %_llgo_4

_llgo_18:                                         ; preds = %_llgo_3
  %117 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %117, align 1
  br label %_llgo_5
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

define ptr @"github.com/goplus/llgo/cl/_testpull/types.GetMinMax$Concrete"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 56)
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
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_6 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 2
  %7 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %6, align 8
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %7, ptr %8, align 8
  %9 = call { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr @"map[_llgo_string]_llgo_int", ptr %5, ptr %8)
  %10 = extractvalue { ptr, i1 } %9, 0
  %11 = load i64, ptr %10, align 4
  %12 = extractvalue { ptr, i1 } %9, 1
  %13 = insertvalue { i64, i1 } undef, i64 %11, 0
  %14 = insertvalue { i64, i1 } %13, i1 %12, 1
  %15 = extractvalue { i64, i1 } %14, 1
  br i1 %15, label %_llgo_8, label %_llgo_9

_llgo_2:                                          ; preds = %_llgo_9, %_llgo_0
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 2
  %19 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %18, align 8
  %20 = call %"github.com/goplus/llgo/async.Result[int]" @"github.com/goplus/llgo/async.Err[int]"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %21 = call ptr @"github.com/goplus/llgo/async.Return[github.com/goplus/llgo/async.Result[int]]"(%"github.com/goplus/llgo/async.Result[int]" %20)
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$XGb4EXxXWKV-dYcJTsDF_8cRVN34b3GvQfT6bkSD8WU", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]")
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %22, 0
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %23, ptr %21, 1
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %25, align 1
  %26 = alloca %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", ptr %26, i32 0, i32 0
  store i1 true, ptr %27, align 1
  %28 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", ptr %26, i32 0, i32 1
  store { i64, { ptr, ptr } } zeroinitializer, ptr %28, align 8
  %29 = load %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", ptr %26, align 8
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %29

_llgo_3:                                          ; preds = %_llgo_8, %_llgo_0
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 2
  %33 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %32, align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 3
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %_llgo_10, label %_llgo_11

_llgo_4:                                          ; preds = %_llgo_12, %_llgo_0
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 2
  %40 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %39, align 8
  %41 = call %"github.com/goplus/llgo/async.Result[int]" @"github.com/goplus/llgo/async.Ok[int]"(i64 %70)
  %42 = call ptr @"github.com/goplus/llgo/async.Return[github.com/goplus/llgo/async.Result[int]]"(%"github.com/goplus/llgo/async.Result[int]" %41)
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$XGb4EXxXWKV-dYcJTsDF_8cRVN34b3GvQfT6bkSD8WU", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]")
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %43, 0
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %44, ptr %42, 1
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %46, align 1
  %47 = alloca %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", ptr %47, i32 0, i32 0
  store i1 true, ptr %48, align 1
  %49 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", ptr %47, i32 0, i32 1
  store { i64, { ptr, ptr } } zeroinitializer, ptr %49, align 8
  %50 = load %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", ptr %47, align 8
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %50

_llgo_5:                                          ; preds = %_llgo_0
  %51 = alloca %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", ptr %51, i32 0, i32 0
  store i1 true, ptr %52, align 1
  %53 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", ptr %51, i32 0, i32 1
  store { i64, { ptr, ptr } } zeroinitializer, ptr %53, align 8
  %54 = load %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", ptr %51, align 8
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %54

_llgo_6:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" zeroinitializer

_llgo_7:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" zeroinitializer

_llgo_8:                                          ; preds = %_llgo_1
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %55, align 1
  br label %_llgo_3

_llgo_9:                                          ; preds = %_llgo_1
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %56, align 1
  br label %_llgo_2

_llgo_10:                                         ; preds = %_llgo_3
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 1
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 2
  %60 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %59, align 8
  %61 = extractvalue { i64, i1 } %14, 0
  %62 = mul i64 %61, 2
  %63 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %62)
  store ptr %63, ptr %34, align 8
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_3
  %64 = load ptr, ptr %34, align 8
  %65 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %64, ptr %1)
  %66 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %65, ptr %66, align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %66, i32 0, i32 0
  %68 = load i1, ptr %67, align 1
  br i1 %68, label %_llgo_12, label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_11
  %69 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %66, i32 0, i32 1
  %70 = load i64, ptr %69, align 4
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %71, align 1
  br label %_llgo_4

_llgo_13:                                         ; preds = %_llgo_11
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
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %2, i32 0, i32 0
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %2, i32 0, i32 1
  store ptr %0, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %2, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %1, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.LookupAndDouble$State", ptr %2, i32 0, i32 3
  store ptr null, ptr %6, align 8
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
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_6 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 2
  %7 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %6, align 8
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %7, ptr %8, align 8
  %9 = call { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr @"map[_llgo_string]_llgo_int", ptr %5, ptr %8)
  %10 = extractvalue { ptr, i1 } %9, 0
  %11 = load i64, ptr %10, align 4
  %12 = extractvalue { ptr, i1 } %9, 1
  %13 = insertvalue { i64, i1 } undef, i64 %11, 0
  %14 = insertvalue { i64, i1 } %13, i1 %12, 1
  %15 = extractvalue { i64, i1 } %14, 1
  br i1 %15, label %_llgo_8, label %_llgo_9

_llgo_2:                                          ; preds = %_llgo_9, %_llgo_0
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 2
  %19 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %18, align 8
  %20 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 -1)
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %21, 0
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %22, ptr %20, 1
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %24, align 1
  %25 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %25, i32 0, i32 0
  store i1 true, ptr %26, align 1
  %27 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %25, i32 0, i32 1
  store i64 0, ptr %27, align 4
  %28 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %25, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" %28

_llgo_3:                                          ; preds = %_llgo_8, %_llgo_0
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 2
  %32 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %31, align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 3
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %_llgo_10, label %_llgo_11

_llgo_4:                                          ; preds = %_llgo_12, %_llgo_0
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 2
  %39 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %38, align 8
  %40 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %67)
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %41, 0
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %42, ptr %40, 1
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %44, align 1
  %45 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %46 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %45, i32 0, i32 0
  store i1 true, ptr %46, align 1
  %47 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %45, i32 0, i32 1
  store i64 0, ptr %47, align 4
  %48 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %45, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" %48

_llgo_5:                                          ; preds = %_llgo_0
  %49 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %49, i32 0, i32 0
  store i1 true, ptr %50, align 1
  %51 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %49, i32 0, i32 1
  store i64 0, ptr %51, align 4
  %52 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %49, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" %52

_llgo_6:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_7:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_8:                                          ; preds = %_llgo_1
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %53, align 1
  br label %_llgo_3

_llgo_9:                                          ; preds = %_llgo_1
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %54, align 1
  br label %_llgo_2

_llgo_10:                                         ; preds = %_llgo_3
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 1
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 2
  %58 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %57, align 8
  %59 = extractvalue { i64, i1 } %14, 0
  %60 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %59)
  store ptr %60, ptr %33, align 8
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_3
  %61 = load ptr, ptr %33, align 8
  %62 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %61, ptr %1)
  %63 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %62, ptr %63, align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %63, i32 0, i32 0
  %65 = load i1, ptr %64, align 1
  br i1 %65, label %_llgo_12, label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_11
  %66 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %63, i32 0, i32 1
  %67 = load i64, ptr %66, align 4
  %68 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %68, align 1
  br label %_llgo_4

_llgo_13:                                         ; preds = %_llgo_11
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
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %2, i32 0, i32 0
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %2, i32 0, i32 1
  store ptr %0, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %2, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %1, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.MapParam$State", ptr %2, i32 0, i32 3
  store ptr null, ptr %6, align 8
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
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_6 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_8, label %_llgo_9

_llgo_2:                                          ; preds = %_llgo_8, %_llgo_0
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 -1)
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %10, 0
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %11, ptr %9, 1
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %13, align 1
  %14 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %14, i32 0, i32 0
  store i1 true, ptr %15, align 1
  %16 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %14, i32 0, i32 1
  store i64 0, ptr %16, align 4
  %17 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %14, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" %17

_llgo_3:                                          ; preds = %_llgo_9, %_llgo_0
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %_llgo_10, label %_llgo_11

_llgo_4:                                          ; preds = %_llgo_12, %_llgo_0
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %50)
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %26, 0
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %27, ptr %25, 1
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %29, align 1
  %30 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %30, i32 0, i32 0
  store i1 true, ptr %31, align 1
  %32 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %30, i32 0, i32 1
  store i64 0, ptr %32, align 4
  %33 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %30, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" %33

_llgo_5:                                          ; preds = %_llgo_0
  %34 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %34, i32 0, i32 0
  store i1 true, ptr %35, align 1
  %36 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %34, i32 0, i32 1
  store i64 0, ptr %36, align 4
  %37 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %34, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" %37

_llgo_6:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_7:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_8:                                          ; preds = %_llgo_1
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %38, align 1
  br label %_llgo_2

_llgo_9:                                          ; preds = %_llgo_1
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %39, align 1
  br label %_llgo_3

_llgo_10:                                         ; preds = %_llgo_3
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = load i64, ptr %41, align 4
  %43 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %42)
  store ptr %43, ptr %20, align 8
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_3
  %44 = load ptr, ptr %20, align 8
  %45 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %44, ptr %1)
  %46 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %45, ptr %46, align 8
  %47 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %46, i32 0, i32 0
  %48 = load i1, ptr %47, align 1
  br i1 %48, label %_llgo_12, label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_11
  %49 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %46, i32 0, i32 1
  %50 = load i64, ptr %49, align 4
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %51, align 1
  br label %_llgo_4

_llgo_13:                                         ; preds = %_llgo_11
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/types.PointerParam$Concrete"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %1, i32 0, i32 1
  store ptr %0, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.PointerParam$State", ptr %1, i32 0, i32 2
  store ptr null, ptr %4, align 8
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
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_6 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %_llgo_8, label %_llgo_9

_llgo_2:                                          ; preds = %_llgo_8, %_llgo_0
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 1
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 2
  %12 = load i64, ptr %11, align 4
  %13 = call %"github.com/goplus/llgo/async.Result[int]" @"github.com/goplus/llgo/async.Err[int]"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %14 = call ptr @"github.com/goplus/llgo/async.Return[github.com/goplus/llgo/async.Result[int]]"(%"github.com/goplus/llgo/async.Result[int]" %13)
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$XGb4EXxXWKV-dYcJTsDF_8cRVN34b3GvQfT6bkSD8WU", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]")
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %15, 0
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %16, ptr %14, 1
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %18, align 1
  %19 = alloca %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", ptr %19, i32 0, i32 0
  store i1 true, ptr %20, align 1
  %21 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", ptr %19, i32 0, i32 1
  store { i64, { ptr, ptr } } zeroinitializer, ptr %21, align 8
  %22 = load %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", ptr %19, align 8
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %22

_llgo_3:                                          ; preds = %_llgo_9, %_llgo_0
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 1
  %24 = load i64, ptr %23, align 4
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 2
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %_llgo_10, label %_llgo_11

_llgo_4:                                          ; preds = %_llgo_12, %_llgo_0
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 1
  %31 = load i64, ptr %30, align 4
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 2
  %33 = load i64, ptr %32, align 4
  %34 = call %"github.com/goplus/llgo/async.Result[int]" @"github.com/goplus/llgo/async.Ok[int]"(i64 %62)
  %35 = call ptr @"github.com/goplus/llgo/async.Return[github.com/goplus/llgo/async.Result[int]]"(%"github.com/goplus/llgo/async.Result[int]" %34)
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$XGb4EXxXWKV-dYcJTsDF_8cRVN34b3GvQfT6bkSD8WU", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[github.com/goplus/llgo/async.Result[int]]")
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %36, 0
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %37, ptr %35, 1
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %39, align 1
  %40 = alloca %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", ptr %40, i32 0, i32 0
  store i1 true, ptr %41, align 1
  %42 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", ptr %40, i32 0, i32 1
  store { i64, { ptr, ptr } } zeroinitializer, ptr %42, align 8
  %43 = load %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", ptr %40, align 8
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %43

_llgo_5:                                          ; preds = %_llgo_0
  %44 = alloca %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", ptr %44, i32 0, i32 0
  store i1 true, ptr %45, align 1
  %46 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", ptr %44, i32 0, i32 1
  store { i64, { ptr, ptr } } zeroinitializer, ptr %46, align 8
  %47 = load %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]", ptr %44, align 8
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" %47

_llgo_6:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" zeroinitializer

_llgo_7:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" zeroinitializer

_llgo_8:                                          ; preds = %_llgo_1
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %48, align 1
  br label %_llgo_2

_llgo_9:                                          ; preds = %_llgo_1
  %49 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %49, align 1
  br label %_llgo_3

_llgo_10:                                         ; preds = %_llgo_3
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 1
  %51 = load i64, ptr %50, align 4
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 2
  %53 = load i64, ptr %52, align 4
  %54 = sdiv i64 %51, %53
  %55 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %54)
  store ptr %55, ptr %27, align 8
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_3
  %56 = load ptr, ptr %27, align 8
  %57 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %56, ptr %1)
  %58 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %57, ptr %58, align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %58, i32 0, i32 0
  %60 = load i1, ptr %59, align 1
  br i1 %60, label %_llgo_12, label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_11
  %61 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %58, i32 0, i32 1
  %62 = load i64, ptr %61, align 4
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %63, align 1
  br label %_llgo_4

_llgo_13:                                         ; preds = %_llgo_11
  ret %"github.com/goplus/llgo/async.Poll[github.com/goplus/llgo/async.Result[int]]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$Concrete"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %2, i32 0, i32 0
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %2, i32 0, i32 1
  store i64 %0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %2, i32 0, i32 2
  store i64 %1, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SafeDivide$State", ptr %2, i32 0, i32 3
  store ptr null, ptr %6, align 8
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
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_7 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
    i8 5, label %_llgo_6
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 1
  %5 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %4, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %8, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_4, %_llgo_1, %_llgo_0
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 1
  %10 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %9, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 2
  %12 = load i64, ptr %11, align 4
  %13 = phi i64 
  %14 = add i64 %13, 1
  %15 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, 1
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %_llgo_9, label %_llgo_10

_llgo_3:                                          ; preds = %_llgo_9, %_llgo_0
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 1
  %18 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %17, align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 2
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %_llgo_11, label %_llgo_12

_llgo_4:                                          ; preds = %_llgo_13, %_llgo_0
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 1
  %25 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %24, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 2
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %28, align 1
  br label %_llgo_2

_llgo_5:                                          ; preds = %_llgo_10, %_llgo_0
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 1
  %30 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %29, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 2
  %32 = load i64, ptr %31, align 4
  %33 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %32)
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %34, 0
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %35, ptr %33, 1
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %37, align 1
  %38 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %38, i32 0, i32 0
  store i1 true, ptr %39, align 1
  %40 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %38, i32 0, i32 1
  store i64 0, ptr %40, align 4
  %41 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %38, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" %41

_llgo_6:                                          ; preds = %_llgo_0
  %42 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %42, i32 0, i32 0
  store i1 true, ptr %43, align 1
  %44 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %42, i32 0, i32 1
  store i64 0, ptr %44, align 4
  %45 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %42, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" %45

_llgo_7:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_8:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_9:                                          ; preds = %_llgo_2
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %46, align 1
  br label %_llgo_3

_llgo_10:                                         ; preds = %_llgo_2
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %47, align 1
  br label %_llgo_5

_llgo_11:                                         ; preds = %_llgo_3
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 1
  %49 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %48, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 2
  %51 = load i64, ptr %50, align 4
  %52 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %49, 0
  %53 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %49, 1
  %54 = icmp slt i64 %14, 0
  %55 = icmp sge i64 %14, %53
  %56 = or i1 %55, %54
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %56)
  %57 = getelementptr inbounds i64, ptr %52, i64 %14
  %58 = load i64, ptr %57, align 4
  %59 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %58)
  store ptr %59, ptr %21, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_3
  %60 = load ptr, ptr %21, align 8
  %61 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %60, ptr %1)
  %62 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %61, ptr %62, align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %62, i32 0, i32 0
  %64 = load i1, ptr %63, align 1
  br i1 %64, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %65 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %62, i32 0, i32 1
  %66 = load i64, ptr %65, align 4
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %67, align 1
  br label %_llgo_4

_llgo_14:                                         ; preds = %_llgo_12
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

define ptr @"github.com/goplus/llgo/cl/_testpull/types.SliceParam$Concrete"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 48)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %1, i32 0, i32 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.SliceParam$State", ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
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
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_4 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 1
  %5 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %4, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %_llgo_6, label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_8, %_llgo_0
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 1
  %10 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %9, align 8
  %11 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %34)
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %12, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %13, ptr %11, 1
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %15, align 1
  %16 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %16, i32 0, i32 0
  store i1 true, ptr %17, align 1
  %18 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %16, i32 0, i32 1
  store i64 0, ptr %18, align 4
  %19 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %16, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" %19

_llgo_3:                                          ; preds = %_llgo_0
  %20 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %20, i32 0, i32 0
  store i1 true, ptr %21, align 1
  %22 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %20, i32 0, i32 1
  store i64 0, ptr %22, align 4
  %23 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %20, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" %23

_llgo_4:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_5:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_6:                                          ; preds = %_llgo_1
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 1
  %25 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %24, align 8
  %26 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %25, 1
  %27 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %26)
  store ptr %27, ptr %6, align 8
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_1
  %28 = load ptr, ptr %6, align 8
  %29 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %28, ptr %1)
  %30 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %29, ptr %30, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %30, i32 0, i32 0
  %32 = load i1, ptr %31, align 1
  br i1 %32, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  %33 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %30, i32 0, i32 1
  %34 = load i64, ptr %33, align 4
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %35, align 1
  br label %_llgo_2

_llgo_9:                                          ; preds = %_llgo_7
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/types.StringParam$Concrete"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %1, i32 0, i32 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %0, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StringParam$State", ptr %1, i32 0, i32 2
  store ptr null, ptr %4, align 8
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
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_5 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 1
  %5 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 3
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %_llgo_7, label %_llgo_8

_llgo_2:                                          ; preds = %_llgo_9, %_llgo_0
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 1
  %14 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %13, align 4
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 3
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 5
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %_llgo_11, label %_llgo_12

_llgo_3:                                          ; preds = %_llgo_13, %_llgo_0
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 1
  %23 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %22, align 4
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 3
  %27 = load i64, ptr %26, align 4
  %28 = add i64 %27, %78
  %29 = call ptr @"github.com/goplus/llgo/async.Return[int]"(i64 %28)
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0", ptr @"*_llgo_github.com/goplus/llgo/async.ReadyFuture[int]")
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %30, 0
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %31, ptr %29, 1
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %33, align 1
  %34 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %34, i32 0, i32 0
  store i1 true, ptr %35, align 1
  %36 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %34, i32 0, i32 1
  store i64 0, ptr %36, align 4
  %37 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %34, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" %37

_llgo_4:                                          ; preds = %_llgo_0
  %38 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %38, i32 0, i32 0
  store i1 true, ptr %39, align 1
  %40 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %38, i32 0, i32 1
  store i64 0, ptr %40, align 4
  %41 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %38, align 8
  ret %"github.com/goplus/llgo/async.Poll[int]" %41

_llgo_5:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_6:                                          ; No predecessors!
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_7:                                          ; preds = %_llgo_1
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 1
  %43 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %42, align 4
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 3
  %47 = load i64, ptr %46, align 4
  %48 = alloca %"github.com/goplus/llgo/cl/_testpull/types.Point", align 8
  call void @llvm.memset(ptr %48, i8 0, i64 16, i1 false)
  %49 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 2
  store ptr %48, ptr %49, align 8
  %50 = alloca %"github.com/goplus/llgo/cl/_testpull/types.Point", align 8
  call void @llvm.memset(ptr %50, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/cl/_testpull/types.Point" %43, ptr %50, align 4
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %50, i32 0, i32 0
  %52 = load i64, ptr %51, align 4
  %53 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %52)
  store ptr %53, ptr %10, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_1
  %54 = load ptr, ptr %10, align 8
  %55 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %54, ptr %1)
  %56 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %55, ptr %56, align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %56, i32 0, i32 0
  %58 = load i1, ptr %57, align 1
  br i1 %58, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %56, i32 0, i32 1
  %60 = load i64, ptr %59, align 4
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 3
  store i64 %60, ptr %61, align 4
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %62, align 1
  br label %_llgo_2

_llgo_10:                                         ; preds = %_llgo_8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_11:                                         ; preds = %_llgo_2
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 1
  %64 = load %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %63, align 4
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 2
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 3
  %68 = load i64, ptr %67, align 4
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.Point", ptr %66, i32 0, i32 1
  %70 = load i64, ptr %69, align 4
  %71 = call ptr @"github.com/goplus/llgo/cl/_testpull/types.StepInt"(i64 %70)
  store ptr %71, ptr %19, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_2
  %72 = load ptr, ptr %19, align 8
  %73 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %72, ptr %1)
  %74 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %73, ptr %74, align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %74, i32 0, i32 0
  %76 = load i1, ptr %75, align 1
  br i1 %76, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %77 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %74, i32 0, i32 1
  %78 = load i64, ptr %77, align 4
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %79, align 1
  br label %_llgo_3

_llgo_14:                                         ; preds = %_llgo_12
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$Concrete"(%"github.com/goplus/llgo/cl/_testpull/types.Point" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 56)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %1, i32 0, i32 1
  store %"github.com/goplus/llgo/cl/_testpull/types.Point" %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %1, i32 0, i32 2
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %1, i32 0, i32 3
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %1, i32 0, i32 4
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/types.StructFieldAccess$State", ptr %1, i32 0, i32 5
  store ptr null, ptr %7, align 8
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

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

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

declare void @"github.com/goplus/llgo/async.init"()

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
